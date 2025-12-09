#include <stdint.h>
#include <stdio.h>
#include "../scl/CLOSE_LED.h"
#include "../../PID/scl/pid.h"

/*全部关闭时候*/
void ALL_Closed(void)
{
        // 检查所有通道（1、2、3、4）的值是否都小于 1
    if ((UART_REG1 < 0x01 && UART_REG2 < 0x01 && UART_REG3 < 0x01 && UART_REG4 < 0x01)) {
        // 关闭 PFC（功率因数校正）
        PFC_SetLow();
        /* 数字关灯时需要将一些 PID 参数清零 */
        PWM_Pre_data_1 = 0;               // 清零通道 1 的 PWM 先前值
        pid1.PWM_duty_cycle = 0;          // 清零通道 1 的 PWM 占空比
        pid1.integral = 0.0f;             // 清零通道 1 的积分项
        pid1.prev_error = 0.0f;           // 清零通道 1 的上一次误差
        PWM_Pre_data_2 = 0;               // 清零通道 2 的 PWM 先前值
        pid2.PWM_duty_cycle = 0;          // 清零通道 2 的 PWM 占空比
        pid2.integral = 0.0f;             // 清零通道 2 的积分项
        pid2.prev_error = 0.0f;           // 清零通道 2 的上一次误差
        target_duty_cycle_Out1 = 0;       // 清零通道 1 的目标占空比
        target_duty_cycle_Out2 = 0;       // 清零通道 2 的目标占空比
        ALL_CLOSE = 1;                    // 设置 ALL_CLOSE 标志为 1，表示所有通道已关闭
        buck_open = 0;                    // 设置 buck_open 标志为 0，表示 Buck 电路已关闭
        // 关闭通道 1 的 PWM
        PWM2_16BIT_SetSlice1Output1DutyCycleRegister(0);  
        PWM2_16BIT_LoadBufferRegisters();//加载 PWM 寄存器
        // 关闭通道 2 的 PWM
        PWM3_16BIT_SetSlice1Output1DutyCycleRegister(0);  
        PWM3_16BIT_LoadBufferRegisters();                 
        // 关闭 L6562（PFC 控制器）
        L6562_SetHigh();                // 关闭通道 1 的 L6562
        L6562_2_SetHigh();              // 关闭通道 2 的 L6562
        // 再次清零 PWM 先前值（确保完全关闭）
        PWM_Pre_data_1 = 0;             // 清零通道 1 的 PWM 先前值
        PWM_Pre_data_2 = 0;             // 清零通道 2 的 PWM 先前值
        __delay_ms(100);        
        JDQ_1_SetLow();                 // 关闭通道 1 的继电器
        JDQ_2_SetLow();                 // 关闭通道 2 的继电器
        pfc_flag = 1;
    } else ALL_CLOSE = 0;               // 如果有任意通道开启，设置 ALL_CLOSE 标志为 0
}
/*关闭1通道
 *ALL_CLOSE：确保不是全部关闭的情况
 */
void LED1_Close(void)
{
    PWM_Pre_data_1 = 0;                               // 清零通道 1 的 PWM 先前值     
    pid1.PWM_duty_cycle = 0;                          // 清零 PWM 占空比
    pid1.integral = 0.0f;                             // 清零积分项
    pid1.prev_error = 0.0f;                           // 清零上一次误差        
    target_duty_cycle_Out1 = 0;                       // 清零通道 1 的目标占空比       
    PWM2_16BIT_SetSlice1Output1DutyCycleRegister(0);  // 关闭通道 1 的 PWM 输出
    PWM2_16BIT_LoadBufferRegisters();                 // 加载 PWM 寄存器
    __delay_ms(100);                                  // 延时 100ms，确保 PWM 完全关闭      
    L6562_SetHigh();                                  // 关闭通道 1 的 L6562（PFC 控制器）
    __delay_ms(100);                                  // 延时 100ms，确保 L6562 完全关闭      
    JDQ_1_SetLow();                                   // 关闭通道 1 的继电器    
}
void LED2_Close(void)
{
    PWM_Pre_data_2 = 0;                              // 清零通道 2 的 PWM 先前值
    pid2.PWM_duty_cycle = 0;                         // 清零通道 2 的 PWM 占空比
    pid2.integral = 0.0f;                            // 清零通道 2 的积分项
    pid2.prev_error = 0.0f;                          // 清零通道 2 的上一次误差
    target_duty_cycle_Out2 = 0;                      // 清零通道 2 的目标占空比
    PWM3_16BIT_SetSlice1Output1DutyCycleRegister(0); // 设置通道 2 的 PWM 占空比为 0
    PWM3_16BIT_LoadBufferRegisters();                // 加载 PWM 寄存器，确保 PWM 输出更新
    __delay_ms(100);                                 // 延时 100ms，确保 PWM 完全关闭
    L6562_2_SetHigh();                               // 关闭通道 2 的 L6562（PFC 控制器）
    __delay_ms(100);                                 // 延时 100ms，确保 L6562 完全关闭
    JDQ_2_SetLow();                                  // 关闭通道 2 的继电器
}
void Close_1(void)
{
    // 检查通道 1 的值是否为 0，并且系统未完全关闭（ALL_CLOSE == 0）
    if (UART_REG1 == 0x00 && ALL_CLOSE == 0) {       
        LED1_Close();
        CLOSE1 = 1;
    }
}
/*关闭2通道*/
void Close_2(void)
{
     // 检查通道 2 的值是否为 0，并且系统未完全关闭（ALL_CLOSE == 0）
    if (UART_REG2 == 0x00 && ALL_CLOSE == 0) {
        LED2_Close();
        CLOSE2 = 1;                                   // 设置 CLOSE2 标志为 1，表示通道 2 已关闭
    }      
}