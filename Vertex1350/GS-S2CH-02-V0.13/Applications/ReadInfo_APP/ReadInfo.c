#include "ReadInfo.h"
#include "nfc.h"
#include "EEPROM_driver.h"
#include "stdio.h"
#include "string.h"
#include "crc.h"
#include "command.h"
#include "../App_config/config.h"
#include "worktime.h"

uint8_t g_uDimmingLevelChannel1 = 0X00, g_uDimmingLevelChannel2 = 0X00;
uint16_t g_uTargetPowerChannel1, g_uTargetPowerChannel2;
float g_fOverTemperatureProtection = TEMP_PROTECTION_RESTORE;

uint16_t power_time = 1;

uint8_t I2C_receiveData[72];
int8_t  CalibrationBuff[3];



void ReadTargetPower(uint8_t* NfcPowerBuff)
{
    uint16_t TargetPowerCH1, TargetPowerCH2;
    /*1通道*/
    TargetPowerCH1 = extractAndCombineEEPROMData(NfcPowerBuff[2], NfcPowerBuff[3]); // 从I2C接收数据的第2和第3字节提取并组合成16位功率保持值
    if (TargetPowerCH1 >= TARGET_POWER_CHANNEL1_MAX) TargetPowerCH1 = TARGET_POWER_CHANNEL1_MAX;
    if (TargetPowerCH1 < TARGET_POWER_CHANNEL1_MIN) TargetPowerCH1 = TARGET_POWER_CHANNEL1_MIN;
    g_uTargetPowerChannel1 = TargetPowerCH1;

    /*2通道*/
    TargetPowerCH2 = extractAndCombineEEPROMData(NfcPowerBuff[6], NfcPowerBuff[7]); // 从I2C接收数据的第6和第7字节提取并组合成16位功率保持值
    if (TargetPowerCH2 >= TARGET_POWER_CHANNEL2_MAX) TargetPowerCH2 = TARGET_POWER_CHANNEL2_MAX;
    if (TargetPowerCH2 < TARGET_POWER_CHANNEL2_MIN)  TargetPowerCH2 = TARGET_POWER_CHANNEL2_MIN;
    g_uTargetPowerChannel2 = TargetPowerCH2;


}

void ReadDimmingLevel(uint8_t* NfcDimmingBuff)
{

    g_uDimmingLevelChannel1 = NfcDimmingBuff[0];
    if (g_uDimmingLevelChannel1 != 0x00)
    {
        if (g_uDimmingLevelChannel1 <= 0x14)g_uDimmingLevelChannel1 = 0x14;
        if (g_uDimmingLevelChannel1 >= 0x64)g_uDimmingLevelChannel1 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    }
    g_uDimmingLevelChannel2 = NfcDimmingBuff[4];
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

void ReadCalibration(void)
{
    CalibrationBuff[0] = (int8_t) EepromReadByte(0x0001);
    CalibrationBuff[1] = (int8_t) EepromReadByte(0x0003);
}

void ReadTemperaturParameters(void)
{
    if (EepromReadByte(0x002E) == 0XFF)
    {
        EepromWriteByte(0x002E, (uint8_t) TEMP_PROTECTION_RESTORE);
        g_fOverTemperatureProtection = TEMP_PROTECTION_RESTORE;
    }
    else
    {
        g_fOverTemperatureProtection = (float)EepromReadByte(0x002E);
    }
}

void NFCRead_APPInit(void)
{
    READ_NFC_SET_START();
    Read_NFC_Data(0x0000, I2C_receiveData, MAX_NFC_DATA_LENGTH);
    __delay_ms(10); // 必须有延时 

    ReadTargetPower(I2C_receiveData);
    ReadDimmingLevel(I2C_receiveData);
    //ActualPowerTime(I2C_receiveData);
    ReadCalibration();
    ReadTemperaturParameters();
}


