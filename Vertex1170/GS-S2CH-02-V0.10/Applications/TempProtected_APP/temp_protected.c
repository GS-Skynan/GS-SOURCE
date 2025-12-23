#include "temp_protected.h"
#include "dimming.h"
#include "inprotectedapp.h"
#include "adc_driver.h"
#include "closeled.h"
#include "readcurrent.h"
#include "nfc.h"
#include "ticktime.h"
#include "stdio.h"
#include "math.h"
#include "../App_config/config.h"

uint8_t g_uTemperatureProtection = 0;
float Temp_Res;

//     if (voltage >= 2.4f) Temp_protected_flag = 2; // 关闭2.63          2.9
//     if (voltage >= 1.8f && voltage < 2.2f) Temp_protected_flag = 1; // 降功率2.0-2.24    2.6-2.8
//     if (voltage <= 1.3f) Temp_protected_flag = 0; // 正常1.85          2.3


void Temp_Protected(void)
{
    static uint8_t Tempstate = 0;
    static uint32_t LastTemperatureProtectionTime = 0;
    static uint8_t temp_stable_count = 0;
       
    uint32_t NowTemperatureProtectionTime = get_elapsed_since(LastTemperatureProtectionTime);
    
    adc_result_t adc_temperature = ADC_ChannelSelectAndConvert(TEMP_ADC);
    
    float TemperatureVoltage = (float)adc_temperature / 4095.0f * 4.096f;
    Temp_Res = TemperatureVoltage;

    
    // 防抖处理：电压需要稳定一段时间才切换状态
    static float last_voltage = 0;
    if (fabs(TemperatureVoltage - last_voltage) < 0.05f)  // 变化小于50mV才算稳定
    {
        if (temp_stable_count < 5) temp_stable_count++;
    }
    else
    {
        temp_stable_count = 0;
    }
    last_voltage = TemperatureVoltage;
    
    // 状态机处理
    switch (Tempstate)
    {
        case 0:  // 正常状态
            g_uTemperatureProtection = 0;
            
            if (temp_stable_count >= 5)  // 稳定后才判断
            {
                if (TemperatureVoltage >= TEMP_PROTECTION_POWER_DOWN1 && TemperatureVoltage < TEMP_PROTECTION_POWER_DOWN2)
                {
                    // 升到降功率阈值，开始计时
                    if (NowTemperatureProtectionTime >= 1000)
                    {
                        Tempstate = 1;
                        LastTemperatureProtectionTime =  get_systemtick_time();; // 重置计时
                    }
                }
                else if (TemperatureVoltage >= TEMP_PROTECTION_THRESHOLD)
                {
                    // 升到关闭阈值，开始计时
                    if (NowTemperatureProtectionTime >= 1000)
                    {
                        Tempstate = 2;
                        LastTemperatureProtectionTime =  get_systemtick_time();
                    }
                }
                else
                {
                    // 恢复正常范围，重置计时
                    LastTemperatureProtectionTime =  get_systemtick_time();
                }
            }
            break;
            
        case 1:  // 降功率状态
            g_uTemperatureProtection = 1;
            
            if (temp_stable_count >= 5)
            {
                if (TemperatureVoltage <= TEMP_PROTECTION_RESTORE)
                {
                    // 降到正常阈值，延时返回
                    if (NowTemperatureProtectionTime >= 1000)
                    {
                        Tempstate = 0;
                        LastTemperatureProtectionTime =  get_systemtick_time();
                    }
                }
                else if (TemperatureVoltage >= TEMP_PROTECTION_THRESHOLD)
                {
                    // 升到关闭阈值，延时切换
                    if (NowTemperatureProtectionTime >= 1000)
                    {
                        Tempstate = 2;
                        LastTemperatureProtectionTime =  get_systemtick_time();
                    }
                }
                else
                {
                    // 保持在降功率范围，重置计时
                    LastTemperatureProtectionTime =  get_systemtick_time();
                }
            }
            break;
            
        case 2:  // 关闭状态
            g_uTemperatureProtection = 2;
            
            if (temp_stable_count >= 5)
            {
                if (TemperatureVoltage <= TEMP_PROTECTION_RESTORE)
                {
                    // 降到正常阈值，延时返回
                    if (NowTemperatureProtectionTime >= 2000)  // 从关闭恢复可以延时更长
                    {
                        Tempstate = 0;
                        LastTemperatureProtectionTime =  get_systemtick_time();
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