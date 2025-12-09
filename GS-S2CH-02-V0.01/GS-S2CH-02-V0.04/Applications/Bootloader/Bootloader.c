#include "Bootloader.h"
#include "inprotectedapp.h"
#include "closeled.h"
#include "RS485_DATA.h"
#include "EEPROM_driver.h"


/*
 AA 5A 01 17 00 04 08 AA 55 AA 55 AA 55 00 00
 */

#define BOOTLOADER_MAGIC_OFFSET_ADDR (1016U)


#define BOOT_MAGIC_1 0x06
#define BOOT_MAGIC_2 0x05   
#define BOOT_MAGIC_3 0x04    
#define BOOT_MAGIC_4 0x03    
#define BOOT_MAGIC_5 0x02
#define BOOT_MAGIC_6 0x01 


uint8_t Boot_Buffer[8];
bool g_uBootUpgradeFlag = 0;

uint16_t BootCalculateChecksum(const uint8_t *data, uint8_t len)
{
    uint32_t sum = 0;

    for (uint8_t i = 0; i < len; i++)
    {
        sum += data[i];
    }

    return (uint16_t) (sum & 0xFFFF);
}

bool BootFlagIsValid(void)
{
    uint8_t magic_data[6];

    magic_data[0] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR);
    magic_data[1] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 1);
    magic_data[2] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 2);
    magic_data[3] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 3);
    magic_data[4] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 4);
    magic_data[5] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 5);
    if (magic_data[0] != BOOT_MAGIC_1 ||
        magic_data[1] != BOOT_MAGIC_2 ||
        magic_data[2] != BOOT_MAGIC_3 ||
        magic_data[3] != BOOT_MAGIC_4 ||
        magic_data[4] != BOOT_MAGIC_5 ||
        magic_data[5] != BOOT_MAGIC_6)
    {
        return false;
    }

    uint8_t checksum_high = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 6);
    uint8_t checksum_low = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 7);
    uint16_t stored_checksum = (checksum_high << 8) | checksum_low;


    uint16_t calculated_checksum = BootCalculateChecksum(magic_data, 6);


    if (stored_checksum == calculated_checksum)
        return true;
    else
    {
        return false;
    }
}

void BootFlagSetJump(void)
{
    uint8_t magic_data[6] = {
        BOOT_MAGIC_1,
        BOOT_MAGIC_2,
        BOOT_MAGIC_3,
        BOOT_MAGIC_4,
        BOOT_MAGIC_5,
        BOOT_MAGIC_6,
    };

    uint16_t checksum_value = BootCalculateChecksum(magic_data, 6);

    uint8_t checksum_high = (uint8_t) ((checksum_value >> 8) & 0xFF);
    uint8_t checksum_low = (uint8_t) (checksum_value & 0xFF);

    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR, magic_data[0]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 1, magic_data[1]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 2, magic_data[2]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 3, magic_data[3]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 4, magic_data[4]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 5, magic_data[5]);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 6, checksum_high);
    EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 7, checksum_low);
}

void Access_Bootloder(void)
{
    //关闭输出
 
    //存入E2标志数据
    BootFlagSetJump();
    __delay_ms(100);
    //应答
    if (BootFlagIsValid() == true)
    {
         g_uBootUpgradeFlag = 1;
        IO_RF3_SetHigh();
        __delay_ms(50);
        Boot_Buffer[0] = EepromReadByte(1016);
        Boot_Buffer[1] = EepromReadByte(1017);
        Boot_Buffer[2] = EepromReadByte(1018);
        Boot_Buffer[3] = EepromReadByte(1019);
        Boot_Buffer[4] = EepromReadByte(1020);
        Boot_Buffer[5] = EepromReadByte(1021);
        Rs485_DataSend(Boot_Buffer, sizeof (Boot_Buffer));
//      printf("%02X", Boot_Buffer[j]);
        __delay_ms(100);
        //复位
        RESET();
    }
}






