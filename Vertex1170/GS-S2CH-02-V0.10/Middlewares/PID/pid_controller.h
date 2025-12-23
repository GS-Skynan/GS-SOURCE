#ifndef __CONTROLLER_INTERFACE_H
#define __CONTROLLER_INTERFACE_H


#include "../../mcc_generated_files/system/system.h"



void dynamic_delay_ms(unsigned int delay_time_ms);
void PWM_Change_1(unsigned char data,unsigned int Change_Time);
void PWM_Change_2(unsigned char data,unsigned int Change_Time);
void PID_Init_Parameters(void);
/*PID初始化函数
 *pid:结构体  Kp:比列环节  Ki：积分环节 Kd：微分环节  output_max，output_min：输出上下限
 */
// PID 初始化函数

extern int target_duty_cycle_Out1,target_duty_cycle_Out2;
extern uint8_t return_flag1 ,return_flag2;

typedef struct {
    unsigned char Channel_Flag;
    float Kp;          // 比例增益
    float Ki;          // 积分增益
    float Kd;          // 微分增益
    float integral_max;    // 积分项最大值限制
    float integral_min;    // 积分项最小值限制
    float output_max;  // 输出上限
    float output_min;  // 输出下限
    float integral;    // 积分累积值
    float prev_error;  // 上一次的误差
    int PWM_duty_cycle; //pwm值：PID计算通过改变这个值来实现恒流     
} PIDController;

PIDController pid1, pid2;
/*传入PWM执行函数的参数，这个值可加可减，需要有负数*/


void PID_Init(PIDController *pid, unsigned char flag, float Kp, float Ki, float Kd, float output_max, float output_min, uint16_t PWM_duty_cycle);
void PID_Init_Parameters();
//void PID_Compute(PIDController *pid, float setpoint, float measured_value);

uint16_t PID_Compute(PIDController *pid, float setpoint, float measured_value);
void Clear_pid(uint8_t ch);
#endif 

