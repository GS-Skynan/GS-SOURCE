#ifndef _OUT_PROTECTED_H
#define _OUT_PROTECTED_H


#include "../../mcc_generated_files/system/system.h"





#define U1_R1 1095.0f
#define U1_R2 15.0f


extern uint16_t adc_value[2];    


extern uint8_t g_uFaultCode;
extern uint16_t g_VoltageProtect1;
extern uint16_t g_VoltageProtect2;
extern int lock_flag;  
extern uint16_t  buck_open;
extern uint16_t V_Ret1 ,V_Ret2 ;        //保护标识，在输出保护说明
float get_voltage(adc_channel_t channel);                   
uint16_t Voltage_Judgment(adc_channel_t channel);
void Out_Protect(void);
void Out_Protected(void);
void OutProtectedTask(void);
#endif 

