#ifndef OUT_PROTECTED_H
#define OUT_PROTECTED_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../../DATA_DEAL/scl/DATA_DEAL.h"
#include "../../CLOSE_LED/scl/CLOSE_LED.h"

//功率给标记是实际值，电压点标记是ADC值，具体保护点在相应 .c 文件里面有说明
#define RED_POWER        833                 //红光功率
#define RED_UNDERVOLATGE_LEFT     480         //红光欠压左值（也是短路电压点）
#define RED_UNDERVOLATGE_RUGHT    600         //红光欠压右值

#define INFRARED_POWER   115                 //红外光功率
#define INFRARED_UNDERVOLATGE_LEFT     300    //红外光欠压左值（也是短路电压点）      
#define INFRARED_UNDERVOLATGE_RUGHT    480    //红外光欠压右值

unsigned int  buck_open=0;       //无用的变量
unsigned char PFC_Flag1 = 0;     //关闭标志（全部都保护时候的标志）
unsigned char PFC_Flag2 = 0;    
extern unsigned int Close_Count1,Close_Count2;     //关闭次数记录
extern unsigned int flag_close1,flag_close2;       //输出保护关闭标识
int lock_flag = 0;                                 // 0: 未锁定, 1: 锁定(保护触发)
unsigned int adc_value[2];                         //ADC采集值，在time0里面定时采集
unsigned char out_flag1 = 1,out_flag2 = 1;
//获取硬件电压（此时灯板电压）

float get_voltage(adc_channel_t channel);                   
unsigned int Voltage_Judgment(adc_channel_t channel);
void Out_Protect(void);
void Out_Protected(void);

#endif 

