#ifndef _TICKTIME_H
#define _TICKTIME_H

#include "../../mcc_generated_files/system/../system/system.h"


void TaskScheduleCbReg(void (*pFunc)(void));

void Time0_AppInit(void);
void Time2_AppInit(void);
void PIDDimming_Init(void);

uint32_t get_elapsed_since(uint32_t since_time);
uint32_t get_systemtick_time(void);
void Dimming_Pid(void);
void LED_Task(void);

extern uint16_t Close1_time1,Close_Count1 ,Close_Count2;
extern uint16_t reply_flag,reply_ok,reply_time;
extern uint16_t pidpwm;
extern uint8_t timepwm;
extern uint16_t pwm;

volatile uint32_t system_tick;
extern uint8_t  pidtime;

extern uint16_t pwm1, pwm2;
extern float pwm_output1,pwm_output2;
extern float g_Voltage1,g_Voltage2;
extern float powernum1,powernum2;

extern uint16_t g_uRs485TimeOut;
extern bool g_bRs485Flag;

extern bool g_bInputActiveTime;

#endif 

