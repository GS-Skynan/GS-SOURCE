#ifndef _DIMMING_H
#define _DIMMING_H

#include "../../mcc_generated_files/system/system.h"



typedef struct {
    float targetPower;    // 目标功率
    float actualPower;    // 实际功率
    float voltage;        // 电压
    uint16_t pwmValue;       // PWM值
} tPidDimming;


extern uint8_t  Default_flag; 

extern uint8_t g_bPfcRunFlag ; 
extern volatile uint8_t buck_flag ;   
extern uint8_t buck_ok1 ,buck_ok2 ;  
extern uint8_t mode_flag;  

float GetChannelCurrentValue(adc_channel_t channel);

/*函数定义*/
void DimmingControlTask(void);              //数据处理函数
uint8_t ProtectionCheck(void);
void LightOnLogic(void);
//uint16_t PID_Control(void);

extern volatile uint8_t g_uPidRunChannel;

extern float g_u8PowerOutputValue;
float simple_regulator(float new_target, uint32_t time_ms) ;
void regulator_clear(void);
extern float current_value;

void ClearChannelValue(uint8_t ch);


void Display(void);
#endif 


