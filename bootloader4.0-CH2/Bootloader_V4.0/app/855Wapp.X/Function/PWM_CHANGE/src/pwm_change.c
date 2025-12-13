#include <stdint.h>
#include <stdio.h>
#include "../scl/pwm_change.h"
#include "../../PID/scl/pid.h"

/**
 * 动态延时函数（毫秒级）
 * @param delay_time_ms 延时时间（毫秒）
 */
void dynamic_delay_ms(unsigned int delay_time_ms) 
{
    for (unsigned int i = 0; i < delay_time_ms; i++) {
        __delay_ms(1);  // 每次延时 1ms
    }
}

extern unsigned char UART_REG1,UART_REG2;

/**
 * 通道1 PWM渐变控制函数
 * @param data 控制命令（用于条件判断）
 * @param Change_Time 每次PWM调整的延时时间（毫秒）
 */
void PWM_Change_1(unsigned char data, unsigned int Change_Time)
{
    unsigned int i;
    
    // 仅当PWM标志允许修改且命令匹配时执行
    if (Pwm_flag_1 == 0 && UART_REG1 == data) {
        // 根据当前占空比和目标占空比调整PWM
        if (PWM_Pre_data_1 < pid1.PWM_duty_cycle) {
            // 增加占空比（平滑上升）
            for (i = PWM_Pre_data_1; i <= pid1.PWM_duty_cycle; i += 1) {
                PWM2_16BIT_SetSlice1Output1DutyCycleRegister(i);  // 设置PWM占空比
                PWM2_16BIT_LoadBufferRegisters();                   // 加载新的PWM配置
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }         
        } else if (PWM_Pre_data_1 > pid1.PWM_duty_cycle) {
            // 减少占空比（平滑下降）
            for (i = PWM_Pre_data_1; i >= pid1.PWM_duty_cycle; i -= 1) {
                PWM2_16BIT_SetSlice1Output1DutyCycleRegister(i);  // 设置PWM占空比
                PWM2_16BIT_LoadBufferRegisters();                   // 加载新的PWM配置
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }
        } else {
            // 当前占空比等于目标值，直接设置
            PWM2_16BIT_SetSlice1Output1DutyCycleRegister(PWM_Pre_data_1);
            PWM2_16BIT_LoadBufferRegisters();
        }
        
        // 更新前一占空比值，记录当前状态
        PWM_Pre_data_1 = pid1.PWM_duty_cycle;
    }
}

/**
 * 通道2 PWM渐变控制函数
 * @param data 控制命令（用于条件判断）
 * @param Change_Time 每次PWM调整的延时时间（毫秒）
 */
void PWM_Change_2(unsigned char data, unsigned int Change_Time)
{
    // 目标占空比计算    
    if (Pwm_flag_2 == 0 && UART_REG2 == data) { // 检查PWM标志是否允许修改
        if (PWM_Pre_data_2 < pid2.PWM_duty_cycle) { // 如果目标值比当前值大
            // 增加占空比（平滑上升）
            for (float j = PWM_Pre_data_2; j <= pid2.PWM_duty_cycle; j += 1) {
                PWM3_16BIT_SetSlice1Output1DutyCycleRegister(j);  // 设置PWM占空比
                PWM3_16BIT_LoadBufferRegisters();                   // 加载新的PWM配置
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }                
        }          
        else if (PWM_Pre_data_2 > pid2.PWM_duty_cycle) { // 如果目标值比当前值小
            // 减小占空比（平滑下降）
            for (float j = PWM_Pre_data_2; j >= pid2.PWM_duty_cycle; j -= 1) {
                PWM3_16BIT_SetSlice1Output1DutyCycleRegister(j);  // 设置PWM占空比
                PWM3_16BIT_LoadBufferRegisters();                   // 加载新的PWM配置
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }
        }           
        else { // 如果目标值等于当前值
            PWM3_16BIT_SetSlice1Output1DutyCycleRegister(PWM_Pre_data_2);
            PWM3_16BIT_LoadBufferRegisters();
        }
        
        // 更新前一占空比值，记录当前状态
        PWM_Pre_data_2 = pid2.PWM_duty_cycle;
    }
}