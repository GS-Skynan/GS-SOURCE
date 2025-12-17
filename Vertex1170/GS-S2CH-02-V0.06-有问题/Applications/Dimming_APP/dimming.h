#ifndef _DIMMING_H
#define _DIMMING_H

#include "../../mcc_generated_files/system/system.h"



float get_current(adc_channel_t channel);
void DimmingControlTask(void);              //数据处理函数
uint8_t ProtectionCheck(void);
void DimmingStart(void);

void ClearPwm(uint8_t ch);

extern volatile uint8_t PID_CH;

void Display(void);
#endif 


