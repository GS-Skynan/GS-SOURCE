#ifndef  __LEDPROCESS_H_
#define  __LEDPROCESS_H_	

#include "../../mcc_generated_files/mcc.h"



extern uint16_t g_uDimmingLevel;
extern uint16_t g_uPwmDimmingValue;
extern uint16_t g_uPwmOut;


extern bool g_bPowerOnFlag; 
extern bool g_bPwrStableFlag;

void DimmingAction(void);
void DimmingValueDutyCycle(uint16_t dimmingValue);
#endif

