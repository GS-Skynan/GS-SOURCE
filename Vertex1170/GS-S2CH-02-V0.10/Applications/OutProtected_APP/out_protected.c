#include "adc_driver.h"
#include "out_protected.h"
#include "readcurrent.h"
#include "ticktime.h"
#include "dimming.h"
#include "inprotectedapp.h"
#include "closeled.h"
#include "GPIO_driver.h"
#include "stdio.h"
#include "temp_protected.h"
#include "Bootloader.h"
#include "../App_config/config.h"



uint16_t g_uOutputProtectionTypeChannel1 = 0;
uint16_t g_uOutputProtectionTypeChannel2 = 0; //保护标识，在输出保护说明

uint8_t g_uFaultCode = 0;

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

uint16_t GetChannelVoltageValue(adc_channel_t channel)
{
    /*CH1通道电压判断*/

    if (channel == Output1_voltage_ADC)
    {
        // 动态计算过压阈值（单位：mV）
        // 公式推导：
        //   1. 目标功率 = 1200W
        //   2. 目标电压 = 功率 / 电流 = 1200 / (CURRENT_1/1000) （单位：V）
        //   3. 考虑10%的过压裕量：* 1.10
        //   4. 分压电路转换：实际ADC值 = 目标电压 * (18/3018)
        //   5. 转换为mV单位：* 1000

        float g_VoltageProtect1 = ((float) ADC_Result2(Output1_voltage_ADC) / 1000.0f) * (VOLTAGE_CH1_R1 / VOLTAGE_CH1_R2);
        float g_PoweProtect1 = (float) GetChannelCurrentValue(OUT_CURRENT1) * g_VoltageProtect1 / 1000.0f;

        if (g_VoltageProtect1 <= SHORT_CIRCUIT_CHANNEL1)
        {
            g_uFaultCode = 1;
            return 2;
        }

        else if (g_VoltageProtect1 >= OVER_VOLTAGE_CHANNEL1 || (g_VoltageProtect1 <= UNDER_VOLTAGE_CHANNEL1))
        {
            g_uFaultCode = 2;
            return 1;
        }

        else if (g_PoweProtect1 > OVER_POWER_CHANNEL1(g_uTargetPowerChannel1))
        {
            g_uFaultCode = 3;
            return 2;
        }

        else
        {
            return 0; // 正常状态
        }
    }

    /*CH2通道电压判断*/
    if (channel == Output2_voltage_ADC)
    {
        float g_VoltageProtect2 = ((float) ADC_Result2(Output2_voltage_ADC) / 1000.0f) * (VOLTAGE_CH2_R1 / VOLTAGE_CH2_R2);
        float g_PoweProtect2 = (float) GetChannelCurrentValue(OUT_CURRENT2) * g_VoltageProtect2 / 1000.0f;


        if (g_VoltageProtect2 <= SHORT_CIRCUIT_CHANNEL2)
        {
            g_uFaultCode = 4;
            return 2;
        }

        else if (g_VoltageProtect2 >= OVER_VOLTAGE_CHANNEL2 || (g_VoltageProtect2 <= UNDER_VOLTAGE_CHANNEL2))
        {
            g_uFaultCode = 5;
            return 1;
        }

        else if (g_PoweProtect2 > OVER_POWER_CHANNEL2(g_uTargetPowerChannel2))
        {
            g_uFaultCode = 6;
            return 2;
        }
        else
        {
            return 0;
        }
    }

    return 0;
}

///*
// * 输出保护函数
// * 监测通道电压状态，在异常时执行保护动作（如关闭输出、设置标志位）
// */
//void OutProtected_CH1(void)
//{
//    static uint32_t timesys1 = 0;
//    uint32_t protect1time = get_elapsed_since(timesys1);
//    static bool is_protecting1 = false;
//    static bool is_protecting2 = false;
//
//    static bool in_protection_period = false; // 是否在保护期内
//    static bool permanent_protection = false; // 是否永久保护
//    static uint8_t protection_count = 0; // 保护次数计数
//
//    uint8_t outprotect = GetChannelVoltageValue(Output1_voltage_ADC);
//
//    if (in_protection_period)
//    {
//        if (protect1time >= 5000)// 30秒保护期结束
//        {
//            in_protection_period = false;
//            g_uOutputProtectionTypeChannel1 = 0;
//            g_uOnChannel1 = 1;
//        }
//        return; // 在保护期内，不进行新的检测
//    }
//
//    if (permanent_protection)
//    {
//        g_uOutputProtectionTypeChannel1 = 1; // 永久保持保护状态
//        return;
//    }
//
//
//    if (outprotect == 1) // 电压异常
//    {
//        if (!is_protecting1)
//        {
//            // 第一次检测到异常，开始计时
//            timesys1 = get_systemtick_time();
//            is_protecting1 = true;
//        }
//        else
//        {
//            if (protect1time > 1000)
//            {
//                // 保护时间到，执行动作
//                g_uOutputProtectionTypeChannel1 = 1;
//                in_protection_period = true;
//                timesys1 = get_systemtick_time();
//                is_protecting1 = false;
//
//                protection_count++;
//                if (protection_count >= 5)
//                {
//                    permanent_protection = true;
//                }
//            }
//        }
//    }
//    else if (outprotect == 2)
//    {
//        if (!is_protecting2)
//        {
//            // 第一次检测到异常，开始计时
//            timesys1 = get_systemtick_time();
//            is_protecting2 = true;
//        }
//        else
//        {
//            if (protect1time > 200)
//            {
//
//                g_uOutputProtectionTypeChannel1 = 1;
//                 permanent_protection = true;
//                is_protecting2 = false;
//            }
//        }
//
//    }
//
//    else
//    {
//        g_uOutputProtectionTypeChannel1 = 0;
//        // 电压正常，重置保护状态
//        is_protecting1 = false;
//        is_protecting2 = false;
//    }
//}
//
//void OutProtected_CH2(void)
//{
//
//    static uint32_t timesys2 = 0;
//    uint32_t protect2time = get_elapsed_since(timesys2);
//    static bool is_protecting3 = false;
//    static bool is_protecting4 = false;
//
//    static bool in_protection_period = false; // 是否在保护期内
//    static bool permanent_protection = false; // 是否永久保护
//    static uint8_t protection_count = 0; // 保护次数计数
//
//    uint16_t outprotect2 = GetChannelVoltageValue(Output2_voltage_ADC);
//
//    if (in_protection_period)
//    {
//        if (protect2time >= 5000)// 30秒保护期结束
//        {
//            in_protection_period = false;
//            g_uOutputProtectionTypeChannel2 = 0;
//            g_uOnChannel2 = 1;
//        }
//        return; // 在保护期内，不进行新的检测
//    }
//
//    if (permanent_protection)
//    {
//        g_uOutputProtectionTypeChannel2 = 1; // 永久保持保护状态
//        return;
//    }
//
//    if (outprotect2 == 1) // 电压异常
//    {
//        if (!is_protecting3)
//        {
//            // 第一次检测到异常，开始计时
//            timesys2 = get_systemtick_time();
//            is_protecting3 = true;
//        }
//        else
//        {
//            if (protect2time > 1000)
//            {
//                // 保护时间到，执行动作
//                g_uOutputProtectionTypeChannel2 = 1;
//                in_protection_period = true;
//                timesys2 = get_systemtick_time();
//                is_protecting3 = false;
//
//                protection_count++;
//                if (protection_count >= 5)
//                {
//                    permanent_protection = true;
//                }
//            }
//        }
//    }
//    else if (outprotect2 == 2)
//    {
//        if (!is_protecting4)
//        {
//            // 第一次检测到异常，开始计时
//            timesys2 = get_systemtick_time();
//            is_protecting4 = true;
//        }
//        else
//        {
//            if (protect2time > 200)
//            {
//                // 保护时间到，执行动作
//                g_uOutputProtectionTypeChannel2 = 2;
//                permanent_protection = true;
//                is_protecting4 = false;
//            }
//        }
//    }
//
//    else
//    {
//        g_uOutputProtectionTypeChannel2 = 0;
//        // 电压正常，重置保护状态
//        is_protecting3 = false;
//        is_protecting4 = false;
//    }
//}

/*
 * 输出保护函数（通用版本）
 * @param voltage_adc 电压ADC值
 * @param state 保护状态结构体指针（静态变量地址）
 * @param protect_type_ptr 保护类型指针（如&g_uOutputProtectionTypeChannel1）
 * @param enable_ptr 输出使能指针（如&g_uOnChannel1）
 */
void OutProtected_Channel(uint8_t voltage_adc,
                          ChannelProtectState* state,
                          uint8_t* protect_type_ptr,
                          uint8_t* enable_ptr)
{
    uint32_t current_time = get_systemtick_time();
    uint32_t elapsed_time = 0;

    if (state->in_protection_period)
    {
        elapsed_time = get_elapsed_since(state->protect_start_time);
        if (elapsed_time >= 5000) // 30秒保护期结束
        {
            state->in_protection_period = false;
            *protect_type_ptr = 0;
            *enable_ptr = 1;
        }
        return; // 在保护期内，不进行新的检测
    }

    if (state->permanent_protection)
    {
        *protect_type_ptr = 1; // 永久保持保护状态
        return;
    }

    uint8_t outprotect = GetChannelVoltageValue(voltage_adc);

    if (outprotect == 1) // 电压异常类型1
    {
        if (!state->is_protecting1)
        {
            // 第一次检测到异常，开始计时
            state->last_detect_time = current_time;
            state->is_protecting1 = true;
        }
        else
        {
            elapsed_time = get_elapsed_since(state->last_detect_time);
            if (elapsed_time > 1000)
            {
                // 保护时间到，执行动作
                *protect_type_ptr = 1;
                *enable_ptr = 0;
                state->in_protection_period = true;
                state->protect_start_time = current_time;
                state->is_protecting1 = false;

                state->protection_count++;
                if (state->protection_count >= 5)
                {
                    state->permanent_protection = true;
                }
            }
        }
    }
    else if (outprotect == 2) // 电压异常类型2
    {
        if (!state->is_protecting2)
        {
            state->last_detect_time = current_time;
            state->is_protecting2 = true;
        }
        else
        {
            elapsed_time = get_elapsed_since(state->last_detect_time);
            if (elapsed_time > 200)
            {
                *protect_type_ptr = 2;
                state->permanent_protection = true;
                state->is_protecting2 = false;

            }
        }
    }
    else // 电压正常
    {
        *protect_type_ptr = 0;
        state->is_protecting1 = false;
        state->is_protecting2 = false;
    }
}

void OutProtected_CH1(void)
{
    static ChannelProtectState state_ch1 = {0}; // 静态变量，保持状态

    OutProtected_Channel(Output1_voltage_ADC,
                         &state_ch1,
                         &g_uOutputProtectionTypeChannel1,
                         &g_uOnChannel1);
}

void OutProtected_CH2(void)
{
    static ChannelProtectState state_ch2 = {0};

    OutProtected_Channel(Output2_voltage_ADC,
                         &state_ch2,
                         &g_uOutputProtectionTypeChannel2,
                         &g_uOnChannel2);
}



/*1关全部  2 关1  3关2*/
uint8_t ProtectionCheck(void)
{
    if (g_uInputVoltageFlag != 1)
    {
        return (uint8_t) PROTECTION_CHANNEL1_ALL;
    }

    if (g_uBootUpgradeFlag == 1)
    {
        return (uint8_t) PROTECTION_CHANNEL1_ALL;
    }

    if (g_uTemperatureProtection == 2)
    {
        return (uint8_t) PROTECTION_CHANNEL1_ALL;
    }

    if (g_uDimmingLevelChannel1 < 0x01 && g_uDimmingLevelChannel2 < 0x01)
    {
        return (uint8_t) PROTECTION_CHANNEL1_ALL;
    }

    if ((g_uOutputProtectionTypeChannel1 != 0)&&(g_uOutputProtectionTypeChannel2 != 0))
    {
        return (uint8_t) PROTECTION_CHANNEL1_ALL;
    }

    if (g_uOutputProtectionTypeChannel1 != 0)
    {
        return (uint8_t) PROTECTION_CHANNEL1_OFF;
    }

    if (g_uOutputProtectionTypeChannel2 != 0)
    {
        return (uint8_t) PROTECTION_CHANNEL2_OFF;
    }

    return PROTECTION_CHANNEL1_NOL;
}

void OutProtectedTask(void)
{
    if (g_uInputVoltageFlag != 1) return;
    if (g_uPowerOnOutputStart != 1)return;
    OutProtected_CH1();
    OutProtected_CH2();
}