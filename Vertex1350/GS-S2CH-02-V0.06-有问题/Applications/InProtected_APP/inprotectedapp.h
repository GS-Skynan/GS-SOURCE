#ifndef _IN_PROTECTED_APP_H
#define _IN_PROTECTED_APP_H


#include "../../mcc_generated_files/system/system.h"



void Input_Protected(void);
void IntProtectedTask(void);

extern bool g_bLowVoltageFlag;
extern bool g_bPowerDownFlag;

extern uint8_t start_flag;

#endif 

