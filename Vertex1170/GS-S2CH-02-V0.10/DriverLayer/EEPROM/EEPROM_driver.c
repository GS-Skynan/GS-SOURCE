#include "EEPROM_driver.h"

/*写ERROM，但注意此ERROM需要解锁*/
void EepromWriteByte(uint24_t offset, uint8_t data)
{
    if(offset>=EEPROM_SIZE)
    {
        return;
    }
    NVM_UnlockKeySet(UNLOCK_KEY);
    EEPROM_Write(EEPROM_START_ADDRESS+offset,data);
    while(NVM_IsBusy());                    // 等待写入完成
    if(NVM_StatusGet()==NVM_ERROR)
    {
        NVM_StatusClear();        // 处理错误（如重试或日志记录）
    }
    NVM_UnlockKeyClear();     // 清除密钥（）     
}


uint8_t EepromReadByte(uint24_t offset)
{
    uint8_t data;
    uint24_t address;
    if(offset >=EEPROM_SIZE)                // 检查地址是否有效
    {
        return 0;
    }
    
   address = EEPROM_START_ADDRESS + offset;
   data = EEPROM_Read(address);
   
   return data;        
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
    if((offset + length) > EEPROM_SIZE)
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
    if((offset + length) > EEPROM_SIZE)
    {
        return;
    }
    
    for(uint16_t i = 0; i < length; i++)
    {
        buffer[i] = EepromReadByte(offset + i);
    }
}

// 写入有符号数
void EepromWriteInt8(uint24_t addr, int8_t absolute_value)
{

    int8_t signed_value;
    
    if (absolute_value > 128) {    
        // 将绝对值转为负数
        signed_value = -128;
    } else {
        // 正常转换：绝对值转为负数
        signed_value = -(int8_t)absolute_value;
    }
    
    // 存储
    uint8_t data = (uint8_t)signed_value;
    EepromWriteByte(addr, data);
}

// 读取有符号数
int8_t EepromReadInt8(uint24_t addr)
{
    uint8_t data = EepromReadByte(addr);
    return (int8_t)data;  // 关键转换
}
