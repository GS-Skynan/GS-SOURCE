#include "readcurrent.h"
#include "nfc.h"
#include "EEPROM_driver.h"
#include "stdio.h"
#include "string.h"
#include "crc.h"


uint8_t UART_REG1 = 0X00, UART_REG2 = 0X00;
uint16_t power_time = 1;
uint16_t g_uPower1, g_uPower2;
uint8_t I2C_receiveData[72];

int8_t CalibrationBuff[3];

void ReadCurrentInit(uint8_t* nfcData)
{
    uint16_t power_Hold_1, power_Hold_2;
    /*1通道*/
    power_Hold_1 = extractAndCombineEEPROMData(nfcData[2], nfcData[3]); // 从I2C接收数据的第2和第3字节提取并组合成16位功率保持值
    if (power_Hold_1 >= 1000) power_Hold_1 = 1000; // 限幅处理：功率保持值不能超过3500
    if (power_Hold_1 < 500) power_Hold_1 = 500; // 限幅处理：功率保持值小于2300时视为无效值，置为0
    g_uPower1 = power_Hold_1; // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG1 = nfcData[0]; // 从I2C接收数据的第0字节获取UART寄存器值，并保存当前值和前值
    if (UART_REG1 >= 0x64)UART_REG1 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)

    /*2通道*/
    power_Hold_2 = extractAndCombineEEPROMData(nfcData[6], nfcData[7]); // 从I2C接收数据的第6和第7字节提取并组合成16位功率保持值
    if (power_Hold_2 >= 300) power_Hold_2 = 300; // 限幅处理：功率保持值不能超过1200
    if (power_Hold_2 < 100) power_Hold_2 = 100; // 限幅处理：功率保持值小于700时视为无效值，置为0
    g_uPower2 = power_Hold_2; // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG2 = nfcData[4]; // 从I2C接收数据的第4字节获取UART寄存器值，并保存当前值和前值
    if (UART_REG2 >= 0x64)UART_REG2 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    // 直接使用功率时间值作为time2  
}

void PowerCompensationTime(uint8_t* nfcData)
{
    uint8_t time_H, time_L;
    /*时间初始化*/
    time_H = (((nfcData[64] >> 4) * 10) + (nfcData[64] & 0x0F)); // 从I2C接收数据的第64字节提取时间的高位
    time_L = (((nfcData[65] >> 4) * 10) + (nfcData[65] & 0x0F)); // 从I2C接收数据的第65字节提取时间的低位
    power_time = ((time_H * 100) + time_L);
    power_time = power_time * 1000;
}

void WriteCalibrationSingleChannel(uint8_t *w_eeprom)
{
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_eeprom, 17);

    if (write_buffer[7] == 0x01)
    {
        EepromWriteByte(0x0004, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[0] = EepromReadByte(0x0004);
    }

    else if (write_buffer[7] == 0x02)
    {
        EepromWriteByte(0x0004, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[0] = -EepromReadByte(0x0004);
    }

    if (write_buffer[9] == 0x01)
    {
        EepromWriteByte(0x0005, write_buffer[10]);
        __delay_ms(1);
        CalibrationBuff[1] = EepromReadByte(0x0005);
    }

    else if (write_buffer[9] == 0x02)
    {
        EepromWriteByte(0x0005, write_buffer[10]);
        __delay_ms(1);
        CalibrationBuff[1] = -EepromReadByte(0x0005);
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
        EepromWriteByte(0x0006, write_buffer[8]);
        __delay_ms(1);
        CalibrationBuff[2] = -EepromReadByte(0x0006);
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
    CalibrationBuff[0] = EepromReadByte(0x0004);
    CalibrationBuff[1] = EepromReadByte(0x0005);
    CalibrationBuff[2] = EepromReadByte(0x0006);
}

void NFCRead_APPInit(void)
{
    READ_NFC_SET_START();
    Read_NFC_Data(0x0000, I2C_receiveData, MAX_NFC_DATA_LENGTH);
    __delay_ms(10); // 必须有延时 
    ReadCurrentInit(I2C_receiveData);
    PowerCompensationTime(I2C_receiveData);
    ReadCalibration();
}





uint16_t g_uChanne1Power;
uint16_t g_uTargetPower;
uint16_t g_uChanne2Power; // 保持uint16_t，外部使用
uint16_t g_Pzong;

uint16_t Power_Compensation(void)
{
    int32_t temp; // 用32位有符号计算，避免溢出
    uint16_t setPower = g_uPower1;


    temp = ((int32_t) g_uPower1 * UART_REG1 / 100) - (0XFF - (0XFF - CalibrationBuff[0]));
    if (temp < 20) temp = 20;
    if (temp > g_uPower1) temp = g_uPower1;
    g_uChanne1Power = (uint16_t) temp;

    temp = ((int32_t) g_uPower2 * UART_REG2 / 100) - (0XFF - (0XFF - CalibrationBuff[1]));
    if (temp < 20)temp = 20;
    if (temp > g_uPower2)temp = g_uPower2;
    g_uChanne2Power = (uint16_t) temp;

    g_Pzong = g_uChanne1Power + g_uChanne2Power;

    if (g_Pzong > setPower)
    {
        temp = (int32_t) setPower - (g_Pzong - g_uChanne1Power) - (0XFF - (0XFF - CalibrationBuff[2]));
    }
    else
    {
        temp = (int32_t) g_uChanne1Power;
    }

    if (temp < 20) temp = 20;
    if (temp > setPower) temp = setPower;

    g_uTargetPower = (uint16_t) temp;
    return g_uTargetPower;
}
