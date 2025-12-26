#ifndef _BOOTLODER_H
#define _BOOTLODER_H


#include "../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>


extern bool g_uBootUpgradeFlag;
void Access_Bootloder(uint8_t *boot_ack);


#endif 

