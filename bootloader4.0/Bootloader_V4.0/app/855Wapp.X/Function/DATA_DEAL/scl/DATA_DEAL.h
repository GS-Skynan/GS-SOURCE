#ifndef DATA_DEAL_H
#define DATA_DEAL_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "../../CLOSE_LED/scl/CLOSE_LED.h"
#include "../../../NFC/scl/nfc.h"
#include "../../PID/scl/pid.h"
#include "../../PWM_CHANGE/scl/pwm_change.h"
#include "../../RS485_DATA/scl/RS485_DATA.h"
#include "../../OUT_PROTECTED/scl/out_protected.h"
#include "../../INTPUT_PROTECTED/scl/INTPUT_PROTECTED.h"

/*变量定义*/
unsigned int  Default_flag;                //
unsigned char start_flag = 0;              //注意,启动标识，1：表示系统启动
unsigned char pfc_flag = 1;                //PFC执行一次
volatile unsigned char buck_flag = 0;               
unsigned char buck_ok1 = 0,buck_ok2 = 0;   //保护判断标识，中断置1
unsigned char current_control_mode_1 = 0;  // 1 通道恒流模式标志：0-恒功率，1-恒流
unsigned char current_control_mode_2 = 0;  // 2 通道恒流模式标志：0-恒功率，1-恒流
unsigned int V_Ret1 = 0,V_Ret2 = 0;        //保护标识，在输出保护说明
unsigned char mode_flag;                   //启动模式，确保通道切换时候是先关后开


/*函数定义*/
void Data_Processing(void);              //数据处理函数
float get_current(adc_channel_t channel);//电流获取计算函数
adc_result_t ADC_Result2(adc_channel_t channel);
adc_result_t ADC_Result(adc_channel_t channel);
#endif 

