#ifndef PWM_CHANGE_H
#define PWM_CHANGE_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>


int  PWM_Pre_data_1;    //PWMœ»«∞÷µ
int  PWM_Pre_data_2;   
int Pwm_flag_1,Pwm_flag_2=0;



void dynamic_delay_ms(unsigned int delay_time_ms);
void PWM_Change_1(unsigned char data,unsigned int Change_Time);
void PWM_Change_2(unsigned char data,unsigned int Change_Time);



#endif 

