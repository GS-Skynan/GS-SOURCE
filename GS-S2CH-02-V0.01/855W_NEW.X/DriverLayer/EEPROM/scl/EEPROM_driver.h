#ifndef _EEPROM_DR_H
#define _EEPROM_DR_H
#include "../../../mcc_generated_files/system/system.h"


#define MAX_WRITE_SIZE 32  // 根据需求调整最大写入长度

//void WriteToEEPROM(uint24_t offset, uint8_t data);
//eeprom_data_t ReadEEPROMData(uint24_t offset);


uint8_t EepromReadByte(uint24_t offset);
void EepromWriteByte(uint24_t offset, uint8_t data);

#endif 

