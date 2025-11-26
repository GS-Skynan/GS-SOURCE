#ifndef _LIGHTS_OFF_H
#define _LIGHTS_OFF_H


#include "../../mcc_generated_files/system/system.h"



void ResetPWMAndGPIO(void);

void ALL_Closed(void);
void LED1_Close(void);
void LED2_Close(void);
void Close_1(void);
void Close_2(void);

void LightsOffTask(void);

#endif 

