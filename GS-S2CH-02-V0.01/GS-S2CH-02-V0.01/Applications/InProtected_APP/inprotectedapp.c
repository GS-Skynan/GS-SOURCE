#include "inprotectedapp.h"
#include "nfc.h"
#include "TEMP_PROTECTED.h"
#include "nfcapp.h"
#include "adc_driver.h"
#include "closeled.h"
#include "readcurrent.h"
#include "dimming.h"
#include "out_protected.h"
#include "usbcom.h"

/*变量定义*/
static uint16_t state = 0;                                                         // 状态变量：0=未启动，1=启动中，2=运行中
uint8_t power_reduced = 0;                                                      // 标记是否已经降低功率
uint16_t target_power;  // 全局变量，保存目标功率

uint8_t target_power2;

/**
 * @brief 输入保护功能
 * @Function：
 * 1. 小于280V灭灯
 * 2. 【280,310】：开灯但是降一半功率
 * 3. 310以上恢复功率
 * 实际测量：   280V灯亮时候  ADC采集值区间 【1683,1740】            
 *             280灯不亮时候  ADC采集值区间 【1931,1986】
 *             310V灯亮时候   ADC采集值区间 【1871,1935】
 * @note    应在系统启动时调用一次，之后在PID执行过程中调用，确保迅速反应
 * @warning 调用前需确保相关硬件（如ADC、传感器）已上电稳定
 */
// 默认满功率值（0x64=100）

void Input_Protected(void) 
{
    uint16_t Input_result = ADC_Result2(Input_voltage_ADC);               // 读取输入电压的ADC结果
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
            if (Input_result > 2100) {                                        // 如果输入电压大于高启动阈值
                start_flag = 1;                                                 // 设置启动成功标志
                state = 3;           
                if(target_power){
//                    UART_REG1/=2;

//                    for (int i = 0; i < 9; i++) {                        
//                        while (!UART2_IsTxReady());                     
//                        UART2_Write(CLOSE_DA1[i]);                       
//                        while (!UART2_IsTxDone());                      
//                    }
                    target_power = 0;
                    target_power2 = 1;
                }
                Temp_Flag = 0;   // 切换到运行中状态
            }
            if (Input_result <= 1780) {                          // 如果输入电压小于低启动阈值 ,1680              
//                ResetPWMAndGPIO();                                              // 重置PWM和GPIO
                     LightPowerOff(LED_ALL_OFF);
                state = 0;                                                      // 返回未启动状态
                Temp_Flag = 1;
                start_flag = 0;                                                 // 清除启动标志                          
            }
            break;
        case 2:   
            if (Input_result <= 1780) {                          // 如果输入电压小于低启动阈值               
     //           ResetPWMAndGPIO();                                              // 重置PWM和GPIO
                 LightPowerOff(LED_ALL_OFF);
                state = 0;                                                      // 返回未启动状态
                start_flag = 0;                                                 // 清除启动标志
              
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

                    state = 2;
                    target_power2 = 0;
                }
                if(!target_power2){
                    UART_REG1 = UART_REG1 / 2;                                      // 降低功率
                    power_reduced = 1;                                              // 标记功率已降低
                    start_flag = 1;                                                 // 设置启动成功标志

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



void IntProtectedTask(void)
{
         if(Port_3_4_GetValue() == HIGH)
        {   
            Input_Protected();
        }
        else if(Port_3_4_GetValue() == LOW){
           
            start_flag = 1;
            UART_REG1_Pre = UART_REG1 = 0x64;
            UART_REG2_Pre = UART_REG2 = 0x64;
        }
}

