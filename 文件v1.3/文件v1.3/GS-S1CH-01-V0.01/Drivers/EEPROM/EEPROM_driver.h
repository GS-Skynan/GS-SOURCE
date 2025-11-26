#ifndef _EEPROM_DR_H
#define _EEPROM_DR_H

#include "../../mcc_generated_files/mcc.h"

uint8_t EepromReadByte(uint16_t offset);
void EepromWriteByte(uint16_t offset, uint8_t data);

void EepromWriteBuffer(uint16_t offset, uint8_t *data, uint16_t length);
void EepromReadBuffer(uint16_t offset, uint8_t *buffer, uint16_t length);

#endif 

