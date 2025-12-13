#include <stdint.h>
#include <stdio.h>
#include "../scl/out_protected.h"
#include "../../PID/scl/pid.h"

/*
 * 获取指定通道的电压值（单位：V）
 * 
 * @param channel 要读取的ADC通道（V_Out1或V_Out2）
 * @return 计算后的实际电压值
 * 
 * 电压计算原理：
 * 1. ADC采样值范围：0-4095（12位ADC）
 * 2. ADC参考电压：4.096V
 * 3. 采样电压 = ADC值 / 4095.0 * 4.096V
 * 4. 实际电压 = 采样电压 * (分压电路总电阻 / 采样电阻)
 *    此处分压比为3018/18（假设分压电路由3000Ω和18Ω电阻组成）
 */
float get_voltage(adc_channel_t channel) 
{
    // 定义ADC采样结果变量和计算后的电压值
    adc_result_t V_Out1_ADC, V_Out2_ADC;    
    float  V_out;
    
    // 根据选择的通道读取ADC值并计算实际电压
    if(channel == V_Out1) {
        // 读取通道1的ADC原始值（0-4095）
        V_Out1_ADC = ADC_Result2(V_Out1);       
        // 电压计算步骤：
        // 1. V_Out1_ADC / 4095.0：将ADC值归一化到0.0-1.0
        // 2. * 4.096：乘以参考电压，得到采样电压
        // 3. /18 * 3018：除以采样电阻值，乘以总电阻值（分压电路倍率）
        V_out = ((V_Out1_ADC / 4095.0 * 4.096) / 18 * (3018));
          
    }
    else if(channel == V_Out2) {
        // 读取通道2的ADC原始值（0-4095）
        V_Out2_ADC = ADC_Result2(V_Out2);    
        // 与通道1相同的电压计算逻辑
        V_out = ((V_Out2_ADC / 4095.0 * 4.096) / 18 * (3018));    
    }
   
    return V_out;  // 返回计算后的实际电压值
}

/**
 * 电压状态判断函数
 * @param channel 要检测的ADC通道（V_Out1或V_Out2）
 * @return 状态码：
 *         0 - 正常
 *         1 - 开路、过压或欠压（根据通道不同有不同判断标准）
 *         2 - 短路
 * 判断逻辑说明：
 * - 过压阈值动态计算：基于当前电流和参考值，考虑10%裕量
 * - 欠压/开路判断：基于ADC值的特定区间
 * - 短路判断：基于ADC值低于特定阈值
 */
unsigned int Voltage_Judgment(adc_channel_t channel)
{  
    /*红光通道电压判断*/
    if(channel == V_Out1) {
        // 动态计算过压阈值（单位：mV）
        // 公式推导：
        //   1. 目标功率 = 1200W
        //   2. 目标电压 = 功率 / 电流 = 1200 / (CURRENT_1/1000) （单位：V）
        //   3. 考虑10%的过压裕量：* 1.10
        //   4. 分压电路转换：实际ADC值 = 目标电压 * (18/3018)
        //   5. 转换为mV单位：* 1000
        float Channel_1_Over_Volate = (float)(RED_POWER/(CURRENT_1/1000.0f)*1.10/3018.0f*18)*1000;        
        // 读取当前通道的ADC值
        adc_value[0] = ADC_Result2(channel);       

        // 判断过压、开路或欠压状态（主路欠压：100V）
        if(adc_value[0] >= Channel_1_Over_Volate || (adc_value[0] > RED_UNDERVOLATGE_LEFT && adc_value[0] <= RED_UNDERVOLATGE_RUGHT))
        {    
            return 1;  // 过压或特定区间内的异常值（可能表示开路或欠压）      
        }
        // 判断短路状态：短路：小于80V
        if(adc_value[0] < RED_UNDERVOLATGE_LEFT)      
            return 2;  // ADC值过低，可能表示短路    
        return 0;  // 正常状态
    }
    
    /*红外光通道电压判断*/
    if(channel == V_Out2) {
        // 动态计算过压阈值（单位：mV）
        // 与通道1类似，但目标功率为153W
        float Channel_2_Over_Volate = (float)(INFRARED_POWER/(CURRENT_2/1000.0f)*1.15/3018.0f*18)*1000;       
        // 读取当前通道的ADC值
        adc_value[1] = ADC_Result2(channel);       
        // 判断过压、开路或欠压状态(欠压：80V)
           
        if(adc_value[1] >= Channel_2_Over_Volate || (adc_value[1] > INFRARED_UNDERVOLATGE_LEFT && adc_value[1] < INFRARED_UNDERVOLATGE_RUGHT))
            return 1;  // 过压或特定区间内的异常值       
        // 判断短路状态(短路：50V)
        if(adc_value[1] <= INFRARED_UNDERVOLATGE_LEFT)
            return 2;  // ADC值过低，可能表示短路      
        return 0;  // 正常状态
    }  
    return 0;  // 默认返回正常（实际代码应处理无效通道的情况）
}

/*
 * 输出保护函数
 * 监测通道电压状态，在异常时执行保护动作（如关闭输出、设置标志位）
 */
void Out_Protect(void)
{
    // 仅在Buck电路就绪且系统已启动时执行保护逻辑
    if(buck_ok1 == 1 || buck_ok2 == 1){
        if(out_flag1){     
            if(V_Ret1 == 1 && UART_REG1 >  0x1  && Close_Count1 <= 5){    //通道1                           
                out_flag1 = 0;       //关闭通道1，30s后定时器值1（使得1通道重新启动）
                PFC_Flag1 = 1;       //设置通道1保护标志（全部短路）
                LED1_Close();        //关闭通道1输出
                flag_close1 = 1;     //启用通道1关闭定时器
            }
            else{
                //
                lock_flag = 0;
                buck_open = 0;
            }
            //V_Ret1 == 2 ;表示短路
            if(V_Ret1 == 2 && UART_REG1 > 0x1 ){
                out_flag1 = 0;       //关闭通道1；30s后定时器值1（使得1通道重新启动）
                PFC_Flag1 = 1;       //设置通道1保护标志
                LED1_Close();        //关闭通道1输出
                flag_close1 = 0;     //禁用通道1关闭定时器（可能立即保护，使得只触发一次）
            }           
            // 通道1连续多次触发保护时，强制关闭输出
            if(Close_Count1 > 5){
                LED1_Close();                  
                out_flag1 = 0;       //关闭通道1，30s后定时器值1                
                Close_Count1 = 6;    //锁定保护状态
            }
        }
        if(out_flag2){     
            if(V_Ret2 == 1 && UART_REG2 > 0x1 && Close_Count2 <= 5){
                out_flag2 = 0;
                PFC_Flag2 = 2;       //设置通道2保护标志（全部短路）
                LED2_Close();        //关闭通道2输出
                flag_close2 = 1;     //启用通道2关闭定时器
            }else{ 
                // 清除锁定和Buck电路打开标志
                lock_flag = 0;
                buck_open = 0;
            }          
            if(V_Ret2 == 2 && UART_REG2 > 0x1){          //短路
                out_flag2 = 0;
                PFC_Flag2 = 2;       //设置通道2保护标志
                LED2_Close();        //关闭通道2输出
                flag_close2 = 1;     //启用通道2关闭定时器
            }            
            // 通道2连续多次触发保护时，强制关闭输出
            if(Close_Count2 > 5){
                LED2_Close();                  
                out_flag2 = 0;
                Close_Count2 = 6;    //锁定保护状态
            }
        }
    }
}
void Out_Protected(void)
{
//    RF3 = 1;       
    uint8_t buffer[2] = {0x00};
//    Receive_Data_From_MCU2(buffer,2);
    if(PFC_Flag1 == 1 && PFC_Flag2 == 2 && buffer[0] == 0x04 && buffer[1] == 0x03) {PFC_SetLow();}
}