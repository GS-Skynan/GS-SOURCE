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
uint16_t g_PoweProtect1;
uint16_t g_PoweProtect2;

uint8_t g_uFaultCode = 0;



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
        g_VoltageProtect1 = ((float) ADC_Result2(Output1_voltage_ADC) / 1000.0f) * (1087.5f / 7.5f);
        g_PoweProtect1 = (float) get_current(OUT_CURRENT1) * g_VoltageProtect1 / 1000.0f;

        if (g_VoltageProtect1 >= 550 || (g_VoltageProtect1 <= 150))
        {
            g_uFaultCode = 1;
            return 1;
        }

        else if (g_VoltageProtect1 <= 30)
        {
            g_uFaultCode = 2;
            return 2;
        }

        else if (g_PoweProtect1 > ((float) g_uPower1 * 1.10f))
        {
            g_uFaultCode = 3;
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
        g_VoltageProtect2 = ((float) ADC_Result2(Output2_voltage_ADC) / 1000.0f) * (U1_R1 / U1_R2);
        g_PoweProtect2 = (float) get_current(OUT_CURRENT2) * g_VoltageProtect2 / 1000.0f;

        if (g_VoltageProtect2 >= 300)
        {
            g_uFaultCode = 4;
            return 1;
        }

        else if (g_VoltageProtect2 <= 15)
        {
            g_uFaultCode = 5;
            return 2;
        }
        else if (g_PoweProtect2 > ((float) g_uPower2 * 1.10f))
        {
            g_uFaultCode = 6;
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