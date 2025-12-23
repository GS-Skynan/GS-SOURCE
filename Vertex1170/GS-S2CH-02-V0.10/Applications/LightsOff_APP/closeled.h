#ifndef _LIGHTS_OFF_H
#define _LIGHTS_OFF_H


#include "../../mcc_generated_files/system/system.h"
typedef enum
{
    LED_CHANNEL1_OFF = 1,
    LED_CHANNEL2_OFF,
    LED_ALL_OFF
} eLedClose;


void LightOffLogic(eLedClose ledsta);
extern uint8_t g_uOffChannel1;
extern uint8_t g_uOffChannel2;
#endif 

