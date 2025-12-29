#ifndef _TICKTIME_H
#define _TICKTIME_H

#include "../../mcc_generated_files/system/../system/system.h"


volatile uint32_t system_tick;


uint32_t get_elapsed_since(uint32_t since_time);
uint32_t get_systemtick_time(void);

void Time0_AppInit(void);
void TaskScheduleCbReg(void (*pFunc)(void));


#endif 

