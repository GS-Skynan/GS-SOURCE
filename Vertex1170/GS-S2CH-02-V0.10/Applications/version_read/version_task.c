#include "crc.h"
#include "version_task.h"
#include "nfc.h"
#include <string.h>
#include <stdio.h>


#define I2C_HARDWARE_VERSION_ADDR  0X0054
#define I2C_SOFTWARE_VERSION_ADDR  0X005C


/*******************修改版本号************************/

uint8_t version[3] = {0x00, 0x00, 0x02}; //版本号

/****************************************************/

/**
 ****************************************************************
 * @brief   写入NFC值
 * @param   address,     写入的地址
 * @param   version_str, 写入的版本号
 * @param   len,         写入长度
 ****************************************************************
 */
void Write_Versions(uint8_t address, uint8_t *version_str, uint8_t len)
{
    uint8_t eeprom_data[10];
    Write_NFC_Data(address, version_str, len);
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
uint8_t *Read_Versions(uint8_t address, uint8_t len)
{
    static uint8_t eeprom_data[5];

    Read_NFC_Data(address, eeprom_data, len);
    __delay_ms(5);
    return eeprom_data;
}

/**
 ****************************************************************
 * @brief   打印读取的版本信息
 * @param   ack_data：接收数据的地址
 * @return  NULL
 ****************************************************************
 */
void Readhandle_version(uint8_t *ack_data)
{
    // 初始化缓冲区并复制数据
    uint8_t read_buffer[17] = {0};
    memcpy(read_buffer, ack_data, 17);

    // 设置固定值
    read_buffer[0] = 0x55;

    // 读取版本号
    uint8_t *numb = Read_Versions(I2C_HARDWARE_VERSION_ADDR, 4);
    memcpy(read_buffer + 7, numb, 4);

    // 读取版本信息
    uint8_t *ver = Read_Versions(I2C_SOFTWARE_VERSION_ADDR, 3);
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
    Write_Versions(I2C_HARDWARE_VERSION_ADDR, eeprom_write, 4);
    __delay_ms(10);

    // 设置固定值
    write_buffer[0] = 0x55;

    // 读取版本号 - 使用memcpy
    uint8_t *numb = Read_Versions(I2C_HARDWARE_VERSION_ADDR, 4);
    memcpy(write_buffer + 7, numb, 4);

    // 读取版本信息
    uint8_t *ver = Read_Versions(I2C_SOFTWARE_VERSION_ADDR, 3);
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
    if (memcmp(Read_Versions(I2C_SOFTWARE_VERSION_ADDR, 3), version, 3) != 0)
    {
        Write_Versions(I2C_SOFTWARE_VERSION_ADDR, version, 3);
    }
}