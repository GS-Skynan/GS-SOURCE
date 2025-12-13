#ifndef _PWM_DR_H
#define _PWM_DR_H

#include "../../mcc_generated_files/system/system.h"

typedef enum {
    PWM_CHANNEL_1=1,
    PWM_CHANNEL_2,
    PWM_CHANNEL_3,
    PWM_CHANNEL_4,
    PWM_ALLOFF,      
} PWM_Channel_t;

void PWM_Set_Direct(PWM_Channel_t channel,uint16_t duty_cycle);
void PWM_Off_CHANNEL(PWM_Channel_t channel);

#endif 

