#include "../nfc_read/nfc_read_task.h"

#include "../../mcc_generated_files/examples/i2c_simple_example.h"
#include "../../mcc_generated_files/examples/i2c1_master_example.h"

#define MAX_NFC_DATA_LENGTH 70

uint8_t I2C_sendAdd[3] = {0x00, 0x00, 0xC0};
uint8_t I2C_System_Config_Data[1];
uint8_t I2C_Password_Add[19] = {0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
static uint8_t g_uGPOConfigValue;


uint8_t I2C_ReceiveBuffer[8];
uint16_t g_uNfcCurreValue;
uint16_t g_nfcDimmingVal = 0;


/**
 *******************************************************************************
 * ----------Enable ST25DV04K GPO password------DIVECE-0X57---
 * @brief NFC初始化配置解密 
 * @note  上电需要向NFC写入密码 才能读写
 * @param NULL
 * @return NULL
 *******************************************************************************
 */
void StartReadNFC(void)
{
    I2C1_WriteNBytes(0x57, I2C_sendAdd, 2); //write system configuration //0x0000
    I2C1_ReadNBytes(0x57, I2C_System_Config_Data, sizeof (I2C_System_Config_Data)); //read system configuration //0x0000
    __delay_ms(5);
    g_uGPOConfigValue = I2C_System_Config_Data[0];
    __delay_ms(5);
    if (g_uGPOConfigValue == 0XC0)
    {
        NOP();
    }
    else
    {
        NOP();
        I2C1_WriteNBytes(0x57, I2C_Password_Add, 19);
        __delay_ms(5); //0//5
        I2C1_WriteNBytes(0x57, I2C_sendAdd, 3);
        __delay_ms(5); //1
    }
    __delay_ms(10);
}

/**
 *******************************************************************************
 * @brief 读取NFC值 
 * @note  读取对应地址的数据
 * @param nfc_dataAdd ：nfc地址
 * @param *nfcdata ：   nfc数据
 * @param *dataLength ：nfc数据长度
 * @return NULL
 *******************************************************************************
 */
void ReadDataNFC(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength)
{
    uint8_t address_buffer[2];

    address_buffer[0] = (nfc_dataAdd >> 8) & 0xFF; // 地址高字节
    address_buffer[1] = nfc_dataAdd & 0xFF; // 地址低字节

    // 发送要读取的地址
    I2C1_WriteNBytes(0x53, address_buffer, 2);
    __delay_ms(1);

    // 读取数据
    I2C1_ReadNBytes(0x53, nfcdata, 2 + dataLength);
    __delay_ms(10);
}


/**
 *******************************************************************************
 * @brief 写入NFC值 
 * @note  向对应地址写数据
 * @param nfc_dataAdd ：nfc地址
 * @param *nfcdata ：   nfc数据
 * @param *dataLength ：nfc数据长度
 * @return NULL
 *******************************************************************************
 */
void WriteDataNFC(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength)
{
    // 创建合并的缓冲区：地址(2字节) + 数据(dataLength字节)
    uint8_t combined_buffer[2 + MAX_NFC_DATA_LENGTH ];

    combined_buffer[0] = (nfc_dataAdd >> 8) & 0xFF; // 地址高字节
    combined_buffer[1] = nfc_dataAdd & 0xFF; // 地址低字节

    // 复制数据到缓冲区后面的位置
    for (uint8_t i = 0; i < dataLength; i++)
    {
        combined_buffer[i + 2] = nfcdata[i];
    }
    // 一次性发送地址和数据
    I2C1_WriteNBytes(0x53, combined_buffer, 2 + dataLength);
    __delay_ms(10);
}

/**
 *******************************************************************************
 * @brief 将十六进制的高低位提取，转换成整数 
 * @param read_eeprom_H1 ：高字节
 * @param read_eeprom_L1 ：低字节
 * @return NULL
 *******************************************************************************
 */
uint16_t ExtractCombineEEPROM(uint8_t read_eeprom_H1, uint8_t read_eeprom_L1)
{
    uint8_t first_num = read_eeprom_H1 >> 4;         // 提取高4位
    uint8_t second_num = (read_eeprom_H1 & 0x0F);    // 提取低4位
    uint8_t third_num = read_eeprom_L1 >> 4;         // 提取高4位
    uint8_t fourth_num = (read_eeprom_L1 & 0x0F);    // 提取低4位

    //将提取出的数字合并成一个整数（如2960）
    uint16_t num = first_num * 1000 + second_num * 100 + third_num * 10 + fourth_num;
    return num;
}

/**
 *******************************************************************************
 * @brief 读取NFC内容
 * @param NULL
 * @param NULL
 * @return NULL
 *******************************************************************************
 */
void ReadI2C1Current(void)
{
    ReadDataNFC(0x0000, I2C_ReceiveBuffer, 8);
    __delay_ms(5);
  
    //将16进制的NFC值转换成10进制的值，1通道NFC档位转电流
    g_uNfcCurreValue = ExtractCombineEEPROM(I2C_ReceiveBuffer[2], I2C_ReceiveBuffer[3]);
    g_nfcDimmingVal = (3 * g_uNfcCurreValue) / 10 + g_uNfcCurreValue / 50 + g_uNfcCurreValue / 200; //根据NFC档位计算电流

}
