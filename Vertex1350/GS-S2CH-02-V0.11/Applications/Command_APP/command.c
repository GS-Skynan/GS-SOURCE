#include "crc.h"
#include "command.h"
#include "nfc.h"
#include <string.h>
#include <stdio.h>
#include "EEPROM_driver.h"
#include "temp_protected.h"
#include "../App_config/config.h"


/**
 ****************************************************************
 * @brief   写入NFC值
 * @param   address,     写入的地址
 * @param   version_str, 写入的版本号
 * @param   len,         写入长度
 ****************************************************************
 */
void WriteNFCInfo(uint8_t address, uint8_t *data, uint8_t len)
{
    uint8_t eeprom_data[10];
    Write_NFC_Data(address, data, len);
    __delay_ms(10);
}

/**
 ****************************************************************
 * @brief   读取NFC值
 * @param   address, 写入要读取的地址
 * @param   len, 写入长度
 * @return  读取NFC数的地址
 ****************************************************************
 */
uint8_t *ReadNFCInfo(uint8_t address, uint8_t len)
{
    static uint8_t eeprom_data[8];

    Read_NFC_Data(address, eeprom_data, len);
    __delay_ms(5);
    return eeprom_data;
}

void CommandErrorAck(void)
{
    // 创建错误应答指令的固定数据
    uint8_t error_response[17] = {
        0xAA, 0x5A, 0x01, 0xFF, 0x00, 0x04, 0x08, 0x02,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    };

    // 计算CRC（前15个字节）
    uint16_t wcrc = CRC16(error_response, 15);

    // 填入CRC（大端序：高位在前，低位在后）
    error_response[15] = (wcrc >> 8) & 0xFF; // CRC高字节
    error_response[16] = wcrc & 0xFF; // CRC低字节

    // 简洁的循环打印方式
    for (uint8_t i = 0; i < 17; i++)
    {
        printf("%02X", error_response[i]);
        if (i < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(error_response, 0, 17);
}

/**
 ****************************************************************
 * @brief   打印读取的版本信息
 * @param   ack_data：接收数据的地址
 * @return  NULL
 ****************************************************************
 */

#define I2C_HARDWARE_VERSION_ADDR  0X0054
#define I2C_SOFTWARE_VERSION_ADDR  0X005C

uint8_t version[3] = {0x00, 0x00, MAIN_VERSION}; //版本号

void Readhandle_version(uint8_t *ack_data)
{
    // 初始化缓冲区并复制数据
    uint8_t read_buffer[17] = {0};
    memcpy(read_buffer, ack_data, 17);

    // 设置固定值
    read_buffer[0] = 0x55;

    // 读取版本号
    uint8_t *numb = ReadNFCInfo(I2C_HARDWARE_VERSION_ADDR, 4);
    memcpy(read_buffer + 7, numb, 4);

    // 读取版本信息
    uint8_t *ver = ReadNFCInfo(I2C_SOFTWARE_VERSION_ADDR, 3);
    read_buffer[11] = ver[2];

    // 计算CRC
    uint16_t wcrc = CRC16(read_buffer, 15);
    read_buffer[16] = wcrc & 0xFF;
    read_buffer[15] = (wcrc >> 8) & 0xFF;

    // 简洁的循环打印方式
    for (uint8_t i = 0; i < 17; i++)
    {
        printf("%02X", read_buffer[i]);
        if (i < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(read_buffer, 0, 17);
}

/**
 ****************************************************************
 * @brief   更改硬件版本信息并打印消息
 * @param   ack_data：接收数据的地址
 * @return  NULL
 ****************************************************************
 */
void Writehandle_version(uint8_t *w_data)
{
    uint8_t eeprom_write[4] = {0};
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_data, 17);

    // 提取EEPROM写入数据
    for (uint8_t i = 0; i < 4; i++)
    {
        eeprom_write[i] = write_buffer[i + 7];
        __delay_ms(1);
    }

    // 写入版本号到EEPROM
    WriteNFCInfo(I2C_HARDWARE_VERSION_ADDR, eeprom_write, 4);
    __delay_ms(10);

    // 设置固定值
    write_buffer[0] = 0x55;

    // 读取版本号 - 使用memcpy
    uint8_t *numb = ReadNFCInfo(I2C_HARDWARE_VERSION_ADDR, 4);
    memcpy(write_buffer + 7, numb, 4);

    // 读取版本信息
    uint8_t *ver = ReadNFCInfo(I2C_SOFTWARE_VERSION_ADDR, 3);
    write_buffer[11] = ver[2];

    // 计算CRC
    uint16_t wcrc = CRC16(write_buffer, 15);
    write_buffer[16] = wcrc & 0xFF;
    write_buffer[15] = (wcrc >> 8) & 0xFF;

    // 一次性打印所有数据
    for (uint8_t j = 0; j < 17; j++)
    {
        printf("%02X", write_buffer[j]);
        if (j < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(write_buffer, 0, 17);
}

/**
 *******************************************************************************
 * @brief 写入版本信息
 * @note 判断版本信息是否跟程序版本一致，不一致写入版本号
 * @param NULL
 * @return NULL
 *******************************************************************************
 */

void VersionStore(void)
{
    if (memcmp(ReadNFCInfo(I2C_SOFTWARE_VERSION_ADDR, 3), version, 3) != 0)
    {
        WriteNFCInfo(I2C_SOFTWARE_VERSION_ADDR, version, 3);
    }
}


#define POWER_VALUE_CHANNEL1 0x0002
#define POWER_VALUE_CHANNEL2 0x0006

void ReadChannelPowerValue(uint8_t *ack_data)
{
    // 初始化缓冲区并复制数据
    uint8_t read_buffer[17] = {0};
    memcpy(read_buffer, ack_data, 17);

    // 设置固定值
    read_buffer[0] = 0x55;

    uint8_t *channel1 = ReadNFCInfo(POWER_VALUE_CHANNEL1, 2);
    memcpy(read_buffer + 7, channel1, 2);

    uint8_t *channel2 = ReadNFCInfo(POWER_VALUE_CHANNEL2, 2);
    memcpy(read_buffer + 9, channel2, 2);
    // 计算CRC
    uint16_t wcrc = CRC16(read_buffer, 15);
    read_buffer[16] = wcrc & 0xFF;
    read_buffer[15] = (wcrc >> 8) & 0xFF;

    // 简洁的循环打印方式
    for (uint8_t i = 0; i < 17; i++)
    {
        printf("%02X", read_buffer[i]);
        if (i < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(read_buffer, 0, 17);
}

void WriteChannelPowerValue(uint8_t *w_data)
{
    uint8_t eeprom_write[4] = {0};
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_data, 17);

    // 提取EEPROM写入数据
    for (uint8_t i = 0; i < 4; i++)
    {
        eeprom_write[i] = write_buffer[i + 7];
        __delay_ms(1);
    }
    uint16_t TargetPowerCH1 = extractAndCombineEEPROMData(eeprom_write[0], eeprom_write[1]);
    uint16_t TargetPowerCH2 = extractAndCombineEEPROMData(eeprom_write[2], eeprom_write[3]);
    if (TargetPowerCH1 < 600 || TargetPowerCH1 > 1350)
    {
        CommandErrorAck();
        return;
    }

    if (TargetPowerCH2 < 60 || TargetPowerCH2 > 150)
    {
        CommandErrorAck();
        return;
    }

    WriteNFCInfo(POWER_VALUE_CHANNEL1, eeprom_write, 4);
    WriteNFCInfo(POWER_VALUE_CHANNEL2, eeprom_write + 2, 4);
    __delay_ms(10);

    // 设置固定值
    write_buffer[0] = 0x55;

    uint8_t *channel1 = ReadNFCInfo(POWER_VALUE_CHANNEL1, 2);
    memcpy(write_buffer + 7, channel1, 2);

    uint8_t *channel2 = ReadNFCInfo(POWER_VALUE_CHANNEL2, 2);
    memcpy(write_buffer + 9, channel2, 2);
    // 计算CRC
    uint16_t wcrc = CRC16(write_buffer, 15);
    write_buffer[16] = wcrc & 0xFF;
    write_buffer[15] = (wcrc >> 8) & 0xFF;

    // 一次性打印所有数据
    for (uint8_t j = 0; j < 17; j++)
    {
        printf("%02X", write_buffer[j]);
        if (j < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(write_buffer, 0, 17);
}

void WriteCalibrationSingleChannel(uint8_t *w_eeprom)
{
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_eeprom, 17);

    if (write_buffer[7] == 0x01) //减功率
    {
        EepromWriteByte(0x0001, write_buffer[8]); //写入正数就是-
    }

    else if (write_buffer[7] == 0x02)//加功率
    {
        EepromWriteInt8(0x0001, write_buffer[8]); //写入负数就是+
    }

    if (write_buffer[9] == 0x01)
    {
        EepromWriteByte(0x0003, write_buffer[10]);
    }

    else if (write_buffer[9] == 0x02)
    {
        EepromWriteInt8(0x0003, write_buffer[8]);
    }

    ReadCalibration();
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

void WriteTemperatureCalibration(uint8_t *w_data)
{
    uint8_t write_buffer[17] = {0};

    // 复制数据到缓冲区
    memcpy(write_buffer, w_data, 17);

    if (write_buffer[7] > 0X64 || write_buffer[7] < 0X32)
    {
        CommandErrorAck();
        return;
    }

    EepromWriteByte(0x002E, write_buffer[7]);

    // 设置固定值
    write_buffer[0] = 0x55;

    write_buffer[7] = EepromReadByte(0x002E);

    // 计算CRC
    uint16_t wcrc = CRC16(write_buffer, 15);
    write_buffer[16] = wcrc & 0xFF;
    write_buffer[15] = (wcrc >> 8) & 0xFF;

    // 一次性打印所有数据
    for (uint8_t j = 0; j < 17; j++)
    {
        printf("%02X", write_buffer[j]);
        if (j < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(write_buffer, 0, 17);
}

void ReadActualTemperatureValue(uint8_t *ack_data)
{
    // 初始化缓冲区并复制数据
    uint8_t read_buffer[17] = {0};
    memcpy(read_buffer, ack_data, 17);

    // 设置固定值
    read_buffer[0] = 0x55;

    read_buffer[7] = EepromReadByte(0x002E);
    read_buffer[9] = (uint8_t)g_fActualTemperature;

    // 计算CRC
    uint16_t wcrc = CRC16(read_buffer, 15);
    read_buffer[16] = wcrc & 0xFF;
    read_buffer[15] = (wcrc >> 8) & 0xFF;

    // 简洁的循环打印方式
    for (uint8_t i = 0; i < 17; i++)
    {
        printf("%02X", read_buffer[i]);
        if (i < 16) printf(" "); // 最后一个字节后不加空格
    }
    memset(read_buffer, 0, 17);
}





