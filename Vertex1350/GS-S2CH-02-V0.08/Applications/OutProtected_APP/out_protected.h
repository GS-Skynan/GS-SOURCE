#ifndef _OUT_PROTECTED_H
#define _OUT_PROTECTED_H


#include "../../mcc_generated_files/system/system.h"



#define VOLTAGE_CH1_R1 1087.5f
#define VOLTAGE_CH1_R2 7.5f

#define VOLTAGE_CH2_R1 1087.5f
#define VOLTAGE_CH2_R2 7.5f


uint8_t ProtectionCheck(void);
extern uint8_t g_uStateChannel1;
extern float g_PoweProtect2;
extern uint8_t g_uFaultCode;

extern uint16_t g_uOutputProtectionTypeChannel1 ,g_uOutputProtectionTypeChannel2 ;        //保护标识，在输出保护说明
float get_voltage(adc_channel_t channel);                   
uint16_t Voltage_Judgment(adc_channel_t channel);
void Out_Protect(void);
void Out_Protected(void);
void OutProtectedTask(void);
#endif 

