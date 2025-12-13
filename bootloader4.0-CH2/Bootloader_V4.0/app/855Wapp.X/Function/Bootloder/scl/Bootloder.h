#ifndef BOOTLODER_H
#define CLOSE_LED_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../../INTPUT_PROTECTED/scl/INTPUT_PROTECTED.h"


extern unsigned char start_flag;   


void Close_ALL_LED(void);
bool BootFlagIsValid(void);
void BootFlagSetJump(void);
void Access_Bootloder(void);
uint8_t EepromReadByte(uint24_t offset);
void EepromWriteByte(uint24_t offset, uint8_t data);
void Rs485_DataSend(uint8_t *data, uint8_t dataLength);
uint16_t BootCalculateChecksum(const uint8_t *data, uint8_t len);

#endif 

