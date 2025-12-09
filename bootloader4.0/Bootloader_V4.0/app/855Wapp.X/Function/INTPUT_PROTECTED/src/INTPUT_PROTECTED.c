#include <stdint.h>
#include <stdio.h>
#include "../scl/INTPUT_PROTECTED.h"
#include "../../PID/scl/pid.h"
#include "../../TEMP_PROTECTED/scl/TEMP_PROTECTED.h"
/**
 * @brief 输入保护功能
 * @Function：
 * 1. 小于280V灭灯
 * 2. 【280,310】：开灯但是降一半功率
 * 3. 310以上恢复功率
 * 实际测量：  280V灯亮时候   ADC采集值区间 【1683,1740】            
 *             280灯不亮时候  ADC采集值区间 【1931,1986】
 *             310V灯亮时候   ADC采集值区间 【1871,1935】
 * @note    应在系统启动时调用一次，之后在PID执行过程中调用，确保迅速反应
 * @warning 调用前需确保相关硬件（如ADC、传感器）已上电稳定
 */
// 默认满功率值（0x64=100）
unsigned char target_power2;
void Input_Protected(void) 
{
    uint16_t Input_result = ADC_Result2(Input_V);               // 读取输入电压的ADC结果
    switch (state) {
        case 0:
            // 未启动状态(灯灭)
            if (Input_result > 1900 && start_flag == 0) {                            // 如果输入电压大于启动阈值
                state = 1;     
            } 
            if (Input_result < 1685 && start_flag == 0) {                           // 如果输入电压小于关闭阈值
                start_flag = 0; 
                Temp_Flag = 1;
                // 清除启动标志
                return ;
            }
            break;
        case 1:                                                                 // 启动中状态
            if (Input_result > 2100) {                          // 如果输入电压大于高启动阈值
                start_flag = 1;                                                 // 设置启动成功标志
                state = 3;           
                if(target_power){
//                    UART_REG1/=2;
                    CLOSE_DA1[3]=UART_REG3_Pre;
                    CLOSE_DA1[5]=UART_REG4_Pre;
                    for (int i = 0; i < 9; i++) {                        
                        while (!UART2_IsTxReady());                     
                        UART2_Write(CLOSE_DA1[i]);                       
                        while (!UART2_IsTxDone());                      
                    }
                    target_power = 0;
                    target_power2 = 1;
                }
                Temp_Flag = 0;   // 切换到运行中状态
            }
            if (Input_result <= 1780) {                          // 如果输入电压小于低启动阈值 ,1680              
                ResetPWMAndGPIO();                                              // 重置PWM和GPIO
                state = 0;                                                      // 返回未启动状态
                Temp_Flag = 1;
                start_flag = 0;                                                 // 清除启动标志
                buck_open = 0;                               
            }
            break;
        case 2:   
            if (Input_result <= 1780) {                          // 如果输入电压小于低启动阈值               
                ResetPWMAndGPIO();                                              // 重置PWM和GPIO
                state = 0;                                                      // 返回未启动状态
                start_flag = 0;                                                 // 清除启动标志
                buck_open = 0;                  
                UART_REG1 *= 2;
                target_power =1;
                Temp_Flag = 1;
                power_reduced = 0; 
            }           
            if (Input_result >= 2000 && power_reduced){         //恢复,1900
                /*此处应该所用通道都降功率*/
                UART_REG1 *= 2;                                                 // 恢复功率
                power_reduced = 0;       
                target_power2 = 0;// 重置功率降低标记
                start_flag = 1;                                                 // 设置启动成功标志
                Temp_Flag = 1;
                state = 1;                                                      // 切换到启动中状态
            }
            break;
        case 3:
            if (Input_result > 1760 && Input_result < 1890 && !power_reduced) { // 如果输入电压在305-310V范围内且未降低功率,1740-1840
                /*此处应该所用通道都降功率*/
                if(target_power2){
                    power_reduced = 1;                                              // 标记功率已降低
                    start_flag = 1;                                                 // 设置启动成功标志
                    buck_open = 1;
                    state = 2;
                    target_power2 = 0;
                }
                if(!target_power2){
                    UART_REG1 = UART_REG1 / 2;                                      // 降低功率
                    power_reduced = 1;                                              // 标记功率已降低
                    start_flag = 1;                                                 // 设置启动成功标志
                    buck_open = 1;
                    state = 2;
                    target_power2 = 1;
                }
            }            
            break;        
        default:
            state = 0;                                                          // 意外情况重置状态
            break;
    }
}
/* 输入保护的关灯操作 */
void ResetPWMAndGPIO(void) 
{
    PFC_SetLow();                                       // 关闭 PFC（功率因数校正）
//    __delay_ms(100);                                    // 延时 200ms，确保 PFC 完全关闭
    /* 数字关灯时需要将一些 PID 参数清零 */
    PWM_Pre_data_1 = 0;                                 // 清零通道 1 的 PWM 先前值
    pid1.PWM_duty_cycle = 0;                            // 清零通道 1 的 PWM 占空比
    pid1.integral = 0.0f;                               // 清零通道 1 的积分项
    pid1.prev_error = 0.0f;                             // 清零通道 1 的上一次误差
    PWM_Pre_data_2 = 0;                                 // 清零通道 2 的 PWM 先前值
    pid2.PWM_duty_cycle = 0;                            // 清零通道 2 的 PWM 占空比
    pid2.integral = 0.0f;                               // 清零通道 2 的积分项
    pid2.prev_error = 0.0f;                             // 清零通道 2 的上一次误差
    target_duty_cycle_Out1 = 0;                         // 清零通道 1 的目标占空比
    target_duty_cycle_Out2 = 0;                         // 清零通道 2 的目标占空比
    /* 关闭 3、4 通道，通过发送关灯指令，变相保护 */ 
    PWM2_16BIT_SetSlice1Output1DutyCycleRegister(0);    // 设置通道 1 的 PWM 占空比为 0
    PWM2_16BIT_LoadBufferRegisters();                   // 加载 PWM 寄存器，确保 PWM 输出更新
    PWM3_16BIT_SetSlice1Output1DutyCycleRegister(0);    // 设置通道 2 的 PWM 占空比为 0
    PWM3_16BIT_LoadBufferRegisters();                   // 加载 PWM 寄存器，确保 PWM 输出更新
    L6562_SetHigh();                                    // 关闭通道 1 的 L6562（PFC 控制器）
    L6562_2_SetHigh();                                  // 关闭通道 2 的 L6562（PFC 控制器）
    PWM_Pre_data_1 = 0;                                 // 清零通道 1 的 PWM 先前值
    PWM_Pre_data_2 = 0;                                 // 清零通道 2 的 PWM 先前值
    __delay_ms(100);                                    // 确保硬件完全关闭
    JDQ_1_SetLow();                                     // 关闭通道 1 的继电器
    JDQ_2_SetLow();                                     // 关闭通道 2 的继电器
    pfc_flag = 1;
    for (int i = 0; i < 9; i++) {                       
        while (!UART2_IsTxReady());                     
        UART2_Write(CLOSE_DA[i]);                       
        while (!UART2_IsTxDone());                      
    }
}



