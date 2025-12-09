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