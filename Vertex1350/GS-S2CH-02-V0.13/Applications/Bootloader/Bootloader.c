#include "Bootloader.h"
#include "EEPROM_driver.h"
#include "crc.h"


/*
 AA 5A 02 17 00 04 08 AA 55 AA 55 AA 55 00 00
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

static uint16_t BootCalculateChecksum(const uint8_t *data, uint8_t len)
{
    uint32_t sum = 0;

    for (uint8_t i = 0; i < len; i++)
    {
        sum += data[i];
    }

    return (uint16_t) (sum & 0xFFFF);
}

static bool BootFlagIsValid(void)
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

static void BootFlagSetJump(void)
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

void Access_Bootloder(uint8_t *boot_ack)
{
    //存入标志数据
    BootFlagSetJump();
    __delay_ms(100);
    //应答
    if (BootFlagIsValid() == true)
    {
        g_uBootUpgradeFlag = 1;
        //       IO_RF3_SetHigh();
        //        __delay_ms(50);
        //        Boot_Buffer[0] = EepromReadByte(1016);
        //        Boot_Buffer[1] = EepromReadByte(1017);
        //        Boot_Buffer[2] = EepromReadByte(1018);
        //        Boot_Buffer[3] = EepromReadByte(1019);
        //        Boot_Buffer[4] = EepromReadByte(1020);
        //        Boot_Buffer[5] = EepromReadByte(1021);

        //  memcpy(write_buffer, w_data, 17);

        boot_ack[0] = 0x55;
        
        uint16_t wcrc = CRC16(boot_ack, 15);
        boot_ack[16] = wcrc & 0xFF;
        boot_ack[15] = (wcrc >> 8) & 0xFF;
        for (uint8_t j = 0; j < 17; j++)
        {
            printf("%02X", boot_ack[j]);
            if (j < 16) printf(" "); //最后一个字节后不加空格
        }
        memset(boot_ack, 0, 17);
        RESET(); //复位
    }
}






