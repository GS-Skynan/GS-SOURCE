#ifndef _OUT_PROTECTED_H
#define _OUT_PROTECTED_H


#include "../../mcc_generated_files/system/system.h"


//功率给标记是实际值，电压点标记是ADC值，具体保护点在相应 .c 文件里面有说明
#define RED_POWER        833                  //红光功率
#define RED_UNDERVOLATGE_LEFT     480         //红光欠压左值（也是短路电压点）
#define RED_UNDERVOLATGE_RUGHT    600         //红光欠压右值

#define INFRARED_POWER   115                 //红外光功率
#define INFRARED_UNDERVOLATGE_LEFT     300    //红外光欠压左值（也是短路电压点）      
#define INFRARED_UNDERVOLATGE_RUGHT    480    //红外光欠压右值


extern uint16_t adc_value[2];    



extern uint16_t g_VoltageProtect1;
extern uint16_t g_VoltageProtect2;
extern int lock_flag;  
extern uint16_t  buck_open;
extern uint8_t out_flag1,out_flag2;
extern uint16_t V_Ret1 ,V_Ret2 ;        //保护标识，在输出保护说明
float get_voltage(adc_channel_t channel);                   
uint16_t Voltage_Judgment(adc_channel_t channel);
void Out_Protect(void);
void Out_Protected(void);
void OutProtectedTask(void);
#endif 

