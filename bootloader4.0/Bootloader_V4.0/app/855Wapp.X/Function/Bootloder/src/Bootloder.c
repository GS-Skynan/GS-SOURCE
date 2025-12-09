#include <stdint.h>
#include <stdio.h>
#include "../../Bootloder/scl/Bootloder.h"

/*
 AA F1 00 0E 00 04 08 00 5A 00 A5 00 C3 00 3C 13 02
 */

#define BOOTLOADER_MAGIC_OFFSET_ADDR (1018U)

#define BOOT_MAGIC_1 0x5A   
#define BOOT_MAGIC_2 0xA5   
#define BOOT_MAGIC_3 0xC3    
#define BOOT_MAGIC_4 0x3C    

uint8_t Boot_Buffer[6];

void EepromWriteByte(uint24_t offset, uint8_t data)
{
    if(offset>=EEPROM_SIZE)
    {
        return;
    }
    NVM_UnlockKeySet(UNLOCK_KEY);
    EEPROM_Write(EEPROM_START_ADDRESS+offset,data);
    while(NVM_IsBusy());
    if(NVM_StatusGet()==NVM_ERROR)
    {
        NVM_StatusClear();
    }
    NVM_UnlockKeyClear();        
}

uint16_t BootCalculateChecksum(const uint8_t *data, uint8_t len) {
    uint32_t sum = 0;
    
    for (uint8_t i = 0; i < len; i++) {
        sum += data[i];
    }
    

    return (uint16_t)(sum & 0xFFFF);
}

uint8_t EepromReadByte(uint24_t offset)
{
    uint8_t data;
    uint24_t address;
    if(offset >=EEPROM_SIZE)
    {
        return 0;
    }
    
   address = EEPROM_START_ADDRESS + offset;
   data = EEPROM_Read(address);
   
   return data;        
}

bool BootFlagIsValid(void) 
{
    uint8_t magic_data[4];
    
    magic_data[0] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR);
    magic_data[1] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR+1);
    magic_data[2] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR+2);
    magic_data[3] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR+3);
    
    if (magic_data[0] != BOOT_MAGIC_1 || 
        magic_data[1] != BOOT_MAGIC_2 ||
        magic_data[2] != BOOT_MAGIC_3 || 
        magic_data[3] != BOOT_MAGIC_4)
        { 
            return false;
         }

    uint8_t checksum_high = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR+4);
    uint8_t checksum_low = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR+5);
    uint16_t stored_checksum = (checksum_high << 8) | checksum_low;
    

    uint16_t calculated_checksum = BootCalculateChecksum(magic_data, 4);
    

     if(stored_checksum == calculated_checksum)
         return true;
     else 
     {
         return false;
     }
}

void Rs485_DataSend(uint8_t *data, uint8_t dataLength)
{
    uint8_t commWriteDataCount;
    commWriteDataCount = 0;

     IO_RF3_SetHigh(); 
    __delay_ms(10);
    while (commWriteDataCount < dataLength)
    {
        if (UART1_IsTxReady())
        {
            UART1_Write(*data);
            commWriteDataCount++;
            data++;
        }          
    }
    __delay_ms(10);
    IO_RF3_SetLow(); 
}

void BootFlagSetJump(void) {
    uint8_t magic_data[4] = {
        BOOT_MAGIC_1, 
        BOOT_MAGIC_2, 
        BOOT_MAGIC_3, 
        BOOT_MAGIC_4
    };
    
    uint16_t checksum_value = BootCalculateChecksum(magic_data, 4);
   
    uint8_t checksum_high = (uint8_t)((checksum_value >> 8) & 0xFF);
    uint8_t checksum_low = (uint8_t)(checksum_value & 0xFF);
   
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR, magic_data[0]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR+1, magic_data[1]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR+2, magic_data[2]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR+3, magic_data[3]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR+4, checksum_high);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR+5, checksum_low);
}

void Access_Bootloder(void)
{
    //关闭输出
    Close_ALL_LED();
    //存入E2标志数据
    BootFlagSetJump();
     __delay_ms(100); 
    //应答
    if(BootFlagIsValid()==true)  
     {
        IO_RF3_SetHigh();
        __delay_ms(50);
        Boot_Buffer[0] = EepromReadByte(1018);
        Boot_Buffer[1] = EepromReadByte(1019);
        Boot_Buffer[2] = EepromReadByte(1020);
        Boot_Buffer[3] = EepromReadByte(1021);
        Boot_Buffer[4] = EepromReadByte(1022);
        Boot_Buffer[5] = EepromReadByte(1023);
        Rs485_DataSend(Boot_Buffer,sizeof(Boot_Buffer));
        __delay_ms(100);
        //复位
        RESET();
      }  
}


void Close_ALL_LED(void)
{
    start_flag=0;
    ResetPWMAndGPIO();
}





