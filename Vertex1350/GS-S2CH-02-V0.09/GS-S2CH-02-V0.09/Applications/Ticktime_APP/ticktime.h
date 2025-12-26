#ifndef _TICKTIME_H
#define _TICKTIME_H

#include "../../mcc_generated_files/system/../system/system.h"


void TaskScheduleCbReg(void (*pFunc)(void));

void Time0_AppInit(void);
void Time2_AppInit(void);
void PIDDimming_Init(void);

uint32_t get_elapsed_since(uint32_t since_time);
uint32_t get_systemtick_time(void);
void LED_Task(void);




volatile uint32_t system_tick;

#endif 

