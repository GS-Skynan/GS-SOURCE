#ifndef _TEMP_PROTECTED_H
#define _TEMP_PROTECTED_H

#include "../../mcc_generated_files/system/system.h"

extern uint8_t Temp_protected_flag;
extern float Temp_Res;
void Temp_Protected(void);
void TemapProtectedTask(void);

#endif 

