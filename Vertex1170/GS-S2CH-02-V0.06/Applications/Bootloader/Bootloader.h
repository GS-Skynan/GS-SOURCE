#ifndef _BOOTLODER_H
#define _BOOTLODER_H


#include "../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>



extern uint8_t start_flag;   
extern bool g_uBootUpgradeFlag;

void Close_ALL_LED(void);
bool BootFlagIsValid(void);
void BootFlagSetJump(void);
void Access_Bootloder(uint8_t *boot_ack);
uint16_t BootCalculateChecksum(const uint8_t *data, uint8_t len);

#endif 

