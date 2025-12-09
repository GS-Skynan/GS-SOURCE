#include "adc_driver.h"
#include "out_protected.h"
#include "readcurrent.h"
#include "ticktime.h"
#include "dimming.h"
#include "closeled.h"
#include "GPIO_driver.h"

#include "stdio.h"

//uint16_t buck_open=0;       //无用的变量
uint8_t PFC_Flag1 = 0; //关闭标志（全部都保护时候的标志）
uint8_t PFC_Flag2 = 0;
uint16_t V_Ret1 = 0, V_Ret2 = 0; //保护标识，在输出保护说明
extern uint16_t flag_close1, flag_close2; //输出保护关闭标识
int lock_flag = 0; // 0: 未锁定, 1: 锁定(保护触发)
uint16_t adc_value[2]; //ADC采集值，在time0里面定时采集

uint16_t g_VoltageProtect1;
uint16_t g_VoltageProtect2;

//获取硬件电压（此时灯板电压）

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
    float V_out;

    // 根据选择的通道读取ADC值并计算实际电压
    if (channel == Output1_voltage_ADC)
    {
        // 读取通道1的ADC原始值（0-4095）
        V_Out1_ADC = ADC_Result2(Output1_voltage_ADC);
        // 电压计算步骤：
        // 1. V_Out1_ADC / 4095.0：将ADC值归一化到0.0-1.0
        // 2. * 4.096：乘以参考电压，得到采样电压
        // 3. /18 * 3018：除以采样电阻值，乘以总电阻值（分压电路倍率）
        V_out = ((V_Out1_ADC / 4095.0 * 4.096) / 18 * (3018));
    }

    else if (channel == Output2_voltage_ADC)
    {
        // 读取通道2的ADC原始值（0-4095）
        V_Out2_ADC = ADC_Result2(Output2_voltage_ADC);
        // 与通道1相同的电压计算逻辑
        V_out = ((V_Out2_ADC / 4095.0 * 4.096) / 18 * (3018));
    }
    return V_out; // 返回计算后的实际电压值
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
//
//uint16_t Voltage_Judgment(adc_channel_t channel)
//{  
//    /*红光通道电压判断*/
//    if(channel == Output1_voltage_ADC) 
//    {
//        // 动态计算过压阈值（单位：mV）
//        // 公式推导：
//        //   1. 目标功率 = 1200W
//        //   2. 目标电压 = 功率 / 电流 = 1200 / (CURRENT_1/1000) （单位：V）
//        //   3. 考虑10%的过压裕量：* 1.10
//        //   4. 分压电路转换：实际ADC值 = 目标电压 * (18/3018)
//        //   5. 转换为mV单位：* 1000
//        float Channel_1_Over_Volate = (float)(RED_POWER/(2000.0f/1000.0f)*1.10/3018.0f*18)*1000;        
// 
//        // 读取当前通道的ADC值
//        adc_value[0] = ADC_Result2(channel);       
//        // 判断过压、开路或欠压状态（主路欠压：100V）
//        if(adc_value[0] >= Channel_1_Over_Volate || (adc_value[0] > RED_UNDERVOLATGE_LEFT && adc_value[0] <= RED_UNDERVOLATGE_RUGHT))
//        {    
//            return 1;  // 过压或特定区间内的异常值（可能表示开路或欠压）      
//        }
//        // 判断短路状态：短路：小于80V
//        else if(adc_value[0] < RED_UNDERVOLATGE_LEFT)      
//        {
//            return 2;  // ADC值过低，可能表示短路
//        }
//        else 
//        { 
//            return 0;  // 正常状态
//        }
//    }
//    
//    /*红外光通道电压判断*/
//    if(channel == Output2_voltage_ADC) 
//    {
//        // 动态计算过压阈值（单位：mV）
//        // 与通道1类似，但目标功率为153W
//        float Channel_2_Over_Volate = (float)(INFRARED_POWER/(750.0f/1000.0f)*1.15/3018.0f*18)*1000;       
//        // 读取当前通道的ADC值
//        adc_value[1] = ADC_Result2(channel);       
//        // 判断过压、开路或欠压状态(欠压：80V)
//           
//        if(adc_value[1] >= Channel_2_Over_Volate || (adc_value[1] > INFRARED_UNDERVOLATGE_LEFT && adc_value[1] < INFRARED_UNDERVOLATGE_RUGHT))         
//        {
//            return 1;  // 过压或特定区间内的异常值   
//        }
//        // 判断短路状态(短路：50V)
//        else if(adc_value[1] <= INFRARED_UNDERVOLATGE_LEFT)
//        {
//            return 2;  // ADC值过低，可能表示短路   
//        }
//        else 
//        {
//            return 0;  // 正常状态       
//        }
//    }  
//    
//    return 0;  // 默认返回正常（实际代码应处理无效通道的情况）
//}

uint16_t Voltage_Judgment(adc_channel_t channel)
{
    /*红光通道电压判断*/
    if (channel == Output1_voltage_ADC)
    {
        // 动态计算过压阈值（单位：mV）
        // 公式推导：
        //   1. 目标功率 = 1200W
        //   2. 目标电压 = 功率 / 电流 = 1200 / (CURRENT_1/1000) （单位：V）
        //   3. 考虑10%的过压裕量：* 1.10
        //   4. 分压电路转换：实际ADC值 = 目标电压 * (18/3018)
        //   5. 转换为mV单位：* 1000
        g_VoltageProtect1 = ((float) ADC_Result2(Output1_voltage_ADC) / 1000.0f) * (3018.0f / 18.0f);

        if (g_VoltageProtect1 >= 550||(g_VoltageProtect1 <= 150))
        {
            return 1;
        }

        else if (g_VoltageProtect1 <= 30)
        {
            return 2;
        }
        else
        {
            return 0; // 正常状态
        }

    }

    /*红外光通道电压判断*/
    if (channel == Output2_voltage_ADC)
    {

        g_VoltageProtect2 = ((float) ADC_Result2(Output2_voltage_ADC) / 1000.0f) * (3018.0f / 18.0f);


        if (g_VoltageProtect2 >= 300)
        {
            return 1;
        }

        else if (g_VoltageProtect2 <= 20)
        {
            return 2;
        }
        else
        {
            return 0; // 正常状态       
        }
    }

    return 0; // 默认返回正常（实际代码应处理无效通道的情况）
}

/*
 * 输出保护函数
 * 监测通道电压状态，在异常时执行保护动作（如关闭输出、设置标志位）
 */
void Out_Protect(void)
{
    if (start_flag != 1)return;
    if (PIDflag1 == 0)
    {
        return;
    }
    static uint32_t timesys1 = 0;
    static uint32_t timesys2 = 0;
    uint32_t protect1time = get_elapsed_since(timesys1);
    uint32_t protect2time = get_elapsed_since(timesys2);
    static bool is_protecting1 = false;
    static bool is_protecting2 = false;

    static bool is_protecting3 = false;
    static bool is_protecting4 = false;

    if (UART_REG1 > 0x00)
    {
        uint8_t outprotect = Voltage_Judgment(Output1_voltage_ADC);
        if (outprotect == 1) // 电压异常
        {
            if (!is_protecting1)
            {
                // 第一次检测到异常，开始计时
                timesys1 = get_systemtick_time();
                is_protecting1 = true;
            }
            else
            {
                if (protect1time > 1000)
                {
                    // 保护时间到，执行动作
                    V_Ret1 = 1;
                    is_protecting1 = false;
                }
            }
        }
        else if (outprotect == 2)
        {
            if (!is_protecting2)
            {
                // 第一次检测到异常，开始计时
                timesys1 = get_systemtick_time();
                is_protecting2 = true;
            }
            else
            {
                if (protect1time > 200)
                {
                
                        V_Ret1 = 2;
                        is_protecting2 = false;
                    
                }
            }

        }

        else if (V_Ret1 == 0)
        {
            V_Ret1 = 0;
            // 电压正常，重置保护状态
            is_protecting1 = false;
            is_protecting2 = false;
        }
    }

    /**************************************************************************/

    if (UART_REG2 > 0x00)
    {
        uint16_t outprotect2 = Voltage_Judgment(Output2_voltage_ADC);

        if (outprotect2 == 1) // 电压异常
        {
            if (!is_protecting3)
            {
                // 第一次检测到异常，开始计时
                timesys2 = get_systemtick_time();
                is_protecting3 = true;
            }
            else
            {
                if (protect2time > 1000)
                {
                    // 保护时间到，执行动作
                    V_Ret2 = 1;
                    is_protecting3 = false;
                }
            }
        }
        else if (outprotect2 == 2)
        {
            if (!is_protecting4)
            {
                // 第一次检测到异常，开始计时
                timesys2 = get_systemtick_time();
                is_protecting4 = true;
            }
            else
            {
                if (protect2time > 200)
                {
                    // 保护时间到，执行动作
                    V_Ret2 = 2;
                    is_protecting4 = false;
                }
            }

        }

        else if (V_Ret2 == 0)
        {
            V_Ret2 = 0;
            // 电压正常，重置保护状态
            is_protecting3 = false;
            is_protecting4 = false;
        }
    }
}

void OutProtectedTask(void)
{
    Out_Protect();
}