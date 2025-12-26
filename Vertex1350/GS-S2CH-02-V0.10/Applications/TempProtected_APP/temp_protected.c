#include "temp_protected.h"
#include "adc_driver.h"
#include "ticktime.h"
#include "math.h"
#include "../App_config/config.h"

uint8_t g_uTemperatureProtection = 0;
float Temp_Res;

float calc_temp_with_10k_fixed(adc_result_t adc_val)
{
    //T(℃) = 1 / ( 1/298.15 + (1/4000) × ln(R/100000) ) - 273.15
    //R_ntc = 10000 × ( (5.0 × 4095) / (4.096 × ADC_Value) - 1 )
    const float VCC = 5.0;
    const float VREF = 4.096;
    const float R_FIXED = 10000.0; // 10kΩ
    const float R0 = 100000.0; // 100kΩ @ 25℃
    const float B = 4000.0; // B25/85
    const float T0_K = 298.15; // 25℃ in Kelvin
    const uint16_t ADC_MAX = 4095;

    // 合并计算：ADC值直接转为电阻
    float r_ntc = R_FIXED * ((VCC * ADC_MAX) / (VREF * adc_val) - 1.0);

    // 使用B值公式
    float t_kelvin = 1.0 / (1.0 / T0_K + (1.0 / B) * log(r_ntc / R0));
    return t_kelvin - 273.15;
}

void Temp_Protected(void)
{
    static uint8_t Tempstate = 0;
    static uint32_t LastTemperatureProtectionTime = 0;
    static uint8_t temp_stable_count = 0;

    uint32_t NowTemperatureProtectionTime = get_elapsed_since(LastTemperatureProtectionTime);

    adc_result_t adc_temperature = ADC_ChannelSelectAndConvert(TEMP_ADC);
    float TemperatureVoltage = calc_temp_with_10k_fixed(adc_temperature);
    //float TemperatureVoltage = (float)adc_temperature / 4095.0f * 4.096f;
    Temp_Res = TemperatureVoltage;


    // 防抖处理：电压需要稳定一段时间才切换状态
    static float last_voltage = 0;
    if (fabs(TemperatureVoltage - last_voltage) < 1.0f) // 变化小于1℃才算稳定
    {
        if (temp_stable_count < 5) temp_stable_count++;
    }
    else
    {
        temp_stable_count = 0;
    }
    last_voltage = TemperatureVoltage;

    // 状态机处理
    switch (Tempstate) {
    case 0: // 正常状态
        g_uTemperatureProtection = 0;

        if (temp_stable_count >= 5) // 稳定后才判断
        {
            if (TemperatureVoltage >= TEMP_PROTECTION_POWER_DOWN1 && TemperatureVoltage < TEMP_PROTECTION_THRESHOLD)
            {
                // 升到降功率阈值，开始计时
                if (NowTemperatureProtectionTime >= 1000)
                {
                    Tempstate = 1;
                    LastTemperatureProtectionTime = get_systemtick_time();
                    ; // 重置计时
                }
            }
            else if (TemperatureVoltage >= TEMP_PROTECTION_THRESHOLD)
            {
                // 升到关闭阈值，开始计时
                if (NowTemperatureProtectionTime >= 1000)
                {
                    Tempstate = 2;
                    LastTemperatureProtectionTime = get_systemtick_time();
                }
            }
            else
            {
                // 恢复正常范围，重置计时
                LastTemperatureProtectionTime = get_systemtick_time();
            }
        }
        break;

    case 1: // 降功率状态
        g_uTemperatureProtection = 1;

        if (temp_stable_count >= 5)
        {
            if (TemperatureVoltage <= TEMP_PROTECTION_RESTORE)
            {
                // 降到正常阈值，延时返回
                if (NowTemperatureProtectionTime >= 1000)
                {
                    Tempstate = 0;
                    LastTemperatureProtectionTime = get_systemtick_time();
                }
            }
            else if (TemperatureVoltage >= TEMP_PROTECTION_THRESHOLD)
            {
                // 升到关闭阈值，延时切换
                if (NowTemperatureProtectionTime >= 1000)
                {
                    Tempstate = 2;
                    LastTemperatureProtectionTime = get_systemtick_time();
                }
            }
            else
            {
                // 保持在降功率范围，重置计时
                LastTemperatureProtectionTime = get_systemtick_time();
            }
        }
        break;

    case 2: // 关闭状态
        g_uTemperatureProtection = 2;

        if (temp_stable_count >= 5)
        {
            if (TemperatureVoltage <= TEMP_PROTECTION_RESTORE)
            {
                // 降到正常阈值，延时返回
                if (NowTemperatureProtectionTime >= 2000) // 从关闭恢复可以延时更长
                {
                    Tempstate = 0;
                    LastTemperatureProtectionTime = get_systemtick_time();
                }
            }
        }
        break;
    }
}

void TemapProtectedTask(void)
{
    Temp_Protected();
}