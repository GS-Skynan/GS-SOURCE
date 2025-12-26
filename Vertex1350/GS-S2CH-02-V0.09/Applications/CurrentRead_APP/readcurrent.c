#include "readcurrent.h"
#include "nfc.h"
#include "EEPROM_driver.h"
#include "stdio.h"
#include "string.h"
#include "crc.h"

#define TARGET_POWER_CHANNEL1_MAX 1350
#define TARGET_POWER_CHANNEL1_MIN 600

#define TARGET_POWER_CHANNEL2_MAX 150
#define TARGET_POWER_CHANNEL2_MIN 60

uint8_t g_uDimmingLevelChannel1 = 0X00, g_uDimmingLevelChannel2 = 0X00;

uint16_t g_uTargetPowerChannel1, g_uTargetPowerChannel2;


uint16_t power_time = 1;
uint8_t I2C_receiveData[72];
int8_t CalibrationBuff[3];

void ReadTargetPower(uint8_t* NfcPowerBuff)
{
    uint16_t TargetPowerCH1, TargetPowerCH2;
    /*1通道*/
    TargetPowerCH1 = extractAndCombineEEPROMData(NfcPowerBuff[2], NfcPowerBuff[3]); // 从I2C接收数据的第2和第3字节提取并组合成16位功率保持值
    if (TargetPowerCH1 >= TARGET_POWER_CHANNEL1_MAX) TargetPowerCH1 = TARGET_POWER_CHANNEL1_MAX;
    if (TargetPowerCH1 < TARGET_POWER_CHANNEL1_MIN) TargetPowerCH1 = TARGET_POWER_CHANNEL1_MIN;
    g_uTargetPowerChannel1 = TargetPowerCH1;

    g_uDimmingLevelChannel1 = NfcPowerBuff[0];
    if (g_uDimmingLevelChannel1 != 0x00)
    {
        if (g_uDimmingLevelChannel1 <= 0x14)g_uDimmingLevelChannel1 = 0x14;
        if (g_uDimmingLevelChannel1 >= 0x64)g_uDimmingLevelChannel1 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    }
    /*2通道*/
    TargetPowerCH2 = extractAndCombineEEPROMData(NfcPowerBuff[6], NfcPowerBuff[7]); // 从I2C接收数据的第6和第7字节提取并组合成16位功率保持值
    if (TargetPowerCH2 >= TARGET_POWER_CHANNEL2_MAX) TargetPowerCH2 = TARGET_POWER_CHANNEL2_MAX;
    if (TargetPowerCH2 < TARGET_POWER_CHANNEL2_MIN) TargetPowerCH2 = TARGET_POWER_CHANNEL2_MIN;
    g_uTargetPowerChannel2 = TargetPowerCH2;

    g_uDimmingLevelChannel2 = NfcPowerBuff[4];
    if (g_uDimmingLevelChannel2 != 0x00)
    {
        if (g_uDimmingLevelChannel2 <= 0x1E)g_uDimmingLevelChannel2 = 0x1E;
        if (g_uDimmingLevelChannel2 >= 0x64)g_uDimmingLevelChannel2 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    }
}

void ActualPowerTime(uint8_t* NfcTimeBuff)
{
    uint8_t time_H, time_L;
    /*时间初始化*/
    time_H = (((NfcTimeBuff[64] >> 4) * 10) + (NfcTimeBuff[64] & 0x0F)); // 从I2C接收数据的第64字节提取时间的高位
    time_L = (((NfcTimeBuff[65] >> 4) * 10) + (NfcTimeBuff[65] & 0x0F)); // 从I2C接收数据的第65字节提取时间的低位
    power_time = ((time_H * 100) + time_L);
    power_time = power_time * 1000;
}

void WriteCalibrationSingleChannel(uint8_t *w_eeprom)
{
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_eeprom, 17);

    if (write_buffer[7] == 0x01) //减功率
    {
        EepromWriteByte(0x0004, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[0] = EepromReadByte(0x0004);
    }

    else if (write_buffer[7] == 0x02)//加功率
    {
        EepromWriteInt8(0x0004, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[0] = EepromReadInt8(0x0004);
    }

    if (write_buffer[9] == 0x01)
    {
        EepromWriteByte(0x0005, write_buffer[10]);
        __delay_ms(1);
        CalibrationBuff[1] = EepromReadByte(0x0005);
    }

    else if (write_buffer[9] == 0x02)
    {
        EepromWriteInt8(0x0005, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[1] = EepromReadInt8(0x0005);
    }

    write_buffer[0] = 0x55;
    // 计算CRC
    uint16_t wcrc = CRC16(write_buffer, 15);
    write_buffer[16] = wcrc & 0xFF;
    write_buffer[15] = (wcrc >> 8) & 0xFF;
    //    一次性打印所有数据
    for (uint8_t j = 0; j < 17; j++)
    {
        printf("%02X", write_buffer[j]);
        if (j < 16) printf(" "); // 最后一个字节后不加空格
    }
    memcpy(write_buffer, 0, 17);
}

void WriteCalibrationMultiChannel(uint8_t *w_eeprom)
{
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_eeprom, 17);

    if (write_buffer[7] == 0x01)
    {
        EepromWriteByte(0x0006, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[2] = EepromReadByte(0x0006);
    }

    else if (write_buffer[7] == 0x02)
    {
        EepromWriteInt8(0x0006, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[2] = EepromReadInt8(0x0006); //(int8_t) EepromReadByte(0x0006);
    }

    write_buffer[0] = 0x55;
    // 计算CRC
    uint16_t wcrc = CRC16(write_buffer, 15);
    write_buffer[16] = wcrc & 0xFF;
    write_buffer[15] = (wcrc >> 8) & 0xFF;
    //    一次性打印所有数据
    for (uint8_t j = 0; j < 17; j++)
    {
        printf("%02X", write_buffer[j]);
        if (j < 16) printf(" "); // 最后一个字节后不加空格
    }
    memcpy(write_buffer, 0, 17);
}

void ReadCalibration(void)
{
    CalibrationBuff[0] = (int8_t) EepromReadByte(0x0004);
    CalibrationBuff[1] = (int8_t) EepromReadByte(0x0005);
    CalibrationBuff[2] = (int8_t) EepromReadByte(0x0006);
}

void NFCRead_APPInit(void)
{
    READ_NFC_SET_START();
    Read_NFC_Data(0x0000, I2C_receiveData, MAX_NFC_DATA_LENGTH);
    __delay_ms(10); // 必须有延时 

    ReadTargetPower(I2C_receiveData);
    ActualPowerTime(I2C_receiveData);
    ReadCalibration();
}




uint16_t g_uChanne1Power;
uint16_t g_uChanne2Power;

uint16_t Power_Compensation(void)
{
    int32_t temp; // 用32位有符号计算，避免溢出
    uint16_t SetPowerValue = g_uTargetPowerChannel1;

    temp = ((int32_t) g_uTargetPowerChannel1 * g_uDimmingLevelChannel1 / 100) -(CalibrationBuff[0]);//(0XFF - (0XFF - CalibrationBuff[0]));
    if (temp < 0) temp = 0;
    if (temp > g_uTargetPowerChannel1) temp = g_uTargetPowerChannel1;
    g_uChanne1Power = (uint16_t) temp;

    temp = ((int32_t) g_uTargetPowerChannel2 * g_uDimmingLevelChannel2 / 100) -(CalibrationBuff[1]); //(0XFF - (0XFF - CalibrationBuff[1]));
    if (temp < 0)temp = 0;
    if (temp > g_uTargetPowerChannel2)temp = g_uTargetPowerChannel2;
    g_uChanne2Power = (uint16_t) temp;

    uint16_t g_uTotalPower = g_uChanne1Power + g_uChanne2Power;

    if (g_uTotalPower > SetPowerValue)
    {
        temp = (int32_t) SetPowerValue - (g_uTotalPower - g_uChanne1Power) - (CalibrationBuff[2]);//(0XFF - (0XFF - CalibrationBuff[2]));
    }
    else
    {
        temp = (int32_t) g_uChanne1Power;
    }

    if (temp < 0) temp = 0;
    if (temp > SetPowerValue) temp = SetPowerValue;

    uint16_t g_uTargetPower = (uint16_t) temp;
    return g_uTargetPower;
}
