#ifndef _DIMMING_H
#define _DIMMING_H

#include "../../mcc_generated_files/system/system.h"



typedef struct {
    float targetPower;    // 目标功率
    float actualPower;    // 实际功率
    float voltage;        // 电压
    uint16_t pwmValue;       // PWM值
} tPidDimming;


float GetChannelCurrentValue(adc_channel_t channel);

void DimmingControlTask(void);             

extern uint8_t g_uPowerOnOutputStart;

extern float g_fPowerOutputValue;

void ClearChannelValue(uint8_t ch);
void GetDimmingValue(uint8_t *r_dimming);

void LightOnChannel1(void);
void LightOnLogic(void);

void Display(void);




#endif 


