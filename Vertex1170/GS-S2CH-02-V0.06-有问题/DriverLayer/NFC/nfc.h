#ifndef _NFC_DR_H
#define _NFC_DR_H

#include "../../mcc_generated_files//system/system.h"



#define I2C_TIMEOUT_MS 200  // 超时时间（毫秒）
#define MAX_NFC_DATA_LENGTH 70  // 根据你的需求定义最大长度


typedef enum {
    I2C_SUCCESS = 0,
    I2C_ERROR_TIMEOUT,
    I2C_ERROR_WRITE_FAILED,
    I2C_ERROR_READ_FAILED
} I2C_Status_t;


I2C_Status_t Read_NFC_Data(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength);
I2C_Status_t Write_NFC_Data(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength);

/* NFC初始化设置 */
void READ_NFC_SET_START(void);

uint16_t extractAndCombineEEPROMData(uint8_t read_eeprom_H, uint8_t read_eeprom_L);
/* 函数：读取EEPROM数据并拆分为高字节和低字节 */
void readEEPROMData(uint8_t *data, uint8_t *highByte, uint8_t *lowByte);
/* 函数：将高字节和低字节合并为16位数据 */
uint16_t combineEEPROMData(uint8_t highByte, uint8_t lowByte);

#endif 

