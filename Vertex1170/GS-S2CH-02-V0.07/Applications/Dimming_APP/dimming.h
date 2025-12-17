#ifndef _DIMMING_H
#define _DIMMING_H

#include "../../mcc_generated_files/system/system.h"


extern uint8_t  Default_flag; 
extern uint8_t start_flag ; 
extern uint8_t pfc_flag ; 
extern volatile uint8_t buck_flag ;   
extern uint8_t buck_ok1 ,buck_ok2 ;  
extern uint8_t mode_flag;  

float get_current(adc_channel_t channel);

/*函数定义*/
void DimmingControlTask(void);              //数据处理函数
uint8_t ProtectionCheck(void);
void DimmingStart(void);
//uint16_t PID_Control(void);

extern volatile uint8_t PIDflag1;

extern float power_pwm;
float simple_regulator(float new_target, uint32_t time_ms) ;
void regulator_clear(void);
extern float current_value;

void ClearPwm(uint8_t ch);


#endif 


