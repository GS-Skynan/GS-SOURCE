#include "../EEPROM/EEPROM_driver.h"

#define EEPROM_SIZE_MAX (256U)
#define EEPROM_START_ADDRESS (0XF000U)

/**
*******************************************************************************
 * @brief 从EEPROM读取单个字节
 * @param offset：EEPROM内部偏移地址（输入，0~EEPROM_SIZE_MAX-1）
 * @return uint8_t：读取到的字节数据（返回0表示读取失败或偏移超限）
 * @note 如果偏移地址超出范围，函数将返回0
 ******************************************************************************
*/
void EepromWriteByte(uint16_t offset, uint8_t data)
{
    if(offset >= EEPROM_SIZE_MAX)
    {
        return;
    }
    
    uint16_t address = EEPROM_START_ADDRESS + offset;
    DATAEE_WriteByte(address, data);
}
/**
*******************************************************************************
 * @brief 从EEPROM读取单个字节
 * @param offset：EEPROM内部偏移地址（输入，0~EEPROM_SIZE_MAX-1）
 * @return uint8_t：读取到的字节数据（返回0表示读取失败或偏移超限）
 * @note 如果偏移地址超出范围，函数将返回0
 ******************************************************************************
*/
uint8_t EepromReadByte(uint16_t offset)
{
    if(offset >= EEPROM_SIZE_MAX)
    {
        return 0;
    }
    
    uint16_t address = EEPROM_START_ADDRESS + offset;
    return DATAEE_ReadByte(address);
}

/**
*******************************************************************************
 * @brief 向EEPROM写入数据缓冲区
 * @param offset：EEPROM起始偏移地址（输入）
 * @param data：要写入的数据缓冲区指针（输入，非NULL）
 * @param length：要写入的数据长度（输入）
 * @note 如果偏移+长度超出EEPROM范围，函数将直接返回不执行操作
 *       每次写入字节后延迟5ms，确保EEPROM写入完成
 ******************************************************************************
*/
void EepromWriteBuffer(uint16_t offset, uint8_t *data, uint16_t length)
{
    if((offset + length) > EEPROM_SIZE_MAX)
    {
        return;
    }
    
    for(uint16_t i = 0; i < length; i++)
    {
        EepromWriteByte(offset + i, data[i]);
         __delay_ms(5);
    }
}

/**
*******************************************************************************
 * @brief 从EEPROM读取数据到缓冲区
 * @param offset：EEPROM起始偏移地址（输入）
 * @param buffer：接收数据的缓冲区指针（输出，非NULL）
 * @param length：要读取的数据长度（输入）
 * @note 如果偏移+长度超出EEPROM范围，函数将直接返回不执行操作
 ******************************************************************************
*/
void EepromReadBuffer(uint16_t offset, uint8_t *buffer, uint16_t length)
{
    if((offset + length) > EEPROM_SIZE_MAX)
    {
        return;
    }
    
    for(uint16_t i = 0; i < length; i++)
    {
        buffer[i] = EepromReadByte(offset + i);
    }
}