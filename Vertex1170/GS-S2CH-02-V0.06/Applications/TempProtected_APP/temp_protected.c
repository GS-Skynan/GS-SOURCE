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

uint8_t T_flag = 0;
uint8_t Temp_Flag;
uint8_t Temp_protected_flag = 0;
float Temp_Res;
//
//void Temp_Protected(void)
//{
//    adc_result_t temperature = ADC_ChannelSelectAndConvert(TEMP_ADC);
//    float voltage = (float) temperature / 4095.0f * 4.096f;
//    static uint8_t temptime = 0;
//    uint32_t temp_protect_time = get_elapsed_since(temptime);
//    static uint8_t Tempstate = 0;
//    Temp_Res = voltage;
//    //    if (voltage >= 2.4f) Temp_protected_flag = 2; // 关闭2.63          2.9
//    //    if (voltage >= 1.8f && voltage < 2.2f) Temp_protected_flag = 1; // 降功率2.0-2.24    2.6-2.8
//    //    if (voltage <= 1.3f) Temp_protected_flag = 0; // 正常1.85          2.3
//
//    switch (Tempstate) {
//    case 0:
//        Temp_protected_flag = 0;
//        if (voltage >= 1.8f && voltage < 2.2f)
//        {
//            temptime = get_systemtick_time();
//            if (temp_protect_time >= 1000)
//            {
//                Tempstate = 1;
//            }
//        }
//        if (voltage >= 2.4f)
//        {
//            temptime = get_systemtick_time();
//            if (temp_protect_time >= 1000)
//            {
//                Tempstate = 2;
//            }
//
//        }
//
//        break;
//    case 1:
//        Temp_protected_flag = 1;
//        if (voltage <= 1.3f)
//        {
//            temptime = get_systemtick_time();
//            if (temp_protect_time >= 1000)
//            {
//                Tempstate = 0;
//            }
//        }
//        if (voltage >= 2.4f)
//        {
//            temptime = get_systemtick_time();
//            if (temp_protect_time >= 1000)
//            {
//                Tempstate = 2;
//            }
//        }
//        break;
//    case 2:
//        Temp_protected_flag = 2;
//        if (voltage <= 1.3f)
//        {
//            temptime = get_systemtick_time();
//            if (temp_protect_time >= 1000)
//            {
//                Tempstate = 0;
//            }
//
//        }
//        break;
//    }
//
//}


void Temp_Protected(void)
{
    static uint8_t Tempstate = 0;
    static uint32_t temptime = 0;
    static uint8_t temp_stable_count = 0;
    
    adc_result_t temperature = ADC_ChannelSelectAndConvert(TEMP_ADC);
    float voltage = (float)temperature / 4095.0f * 4.096f;
    Temp_Res = voltage;
    
    uint32_t current_time = get_systemtick_time();
    uint32_t elapsed_time = get_elapsed_since(temptime);
    
    // 防抖处理：电压需要稳定一段时间才切换状态
    static float last_voltage = 0;
    if (fabs(voltage - last_voltage) < 0.05f)  // 变化小于50mV才算稳定
    {
        if (temp_stable_count < 5) temp_stable_count++;
    }
    else
    {
        temp_stable_count = 0;
    }
    last_voltage = voltage;
    
    // 状态机处理
    switch (Tempstate)
    {
        case 0:  // 正常状态
            Temp_protected_flag = 0;
            
            if (temp_stable_count >= 5)  // 稳定后才判断
            {
                if (voltage >= 1.8f && voltage < 2.2f)
                {
                    // 升到降功率阈值，开始计时
                    if (elapsed_time >= 1000)
                    {
                        Tempstate = 1;
                        temptime = current_time;  // 重置计时
                    }
                }
                else if (voltage >= 2.4f)
                {
                    // 升到关闭阈值，开始计时
                    if (elapsed_time >= 1000)
                    {
                        Tempstate = 2;
                        temptime = current_time;
                    }
                }
                else
                {
                    // 恢复正常范围，重置计时
                    temptime = current_time;
                }
            }
            break;
            
        case 1:  // 降功率状态
            Temp_protected_flag = 1;
            
            if (temp_stable_count >= 5)
            {
                if (voltage <= 1.3f)
                {
                    // 降到正常阈值，延时返回
                    if (elapsed_time >= 1000)
                    {
                        Tempstate = 0;
                        temptime = current_time;
                    }
                }
                else if (voltage >= 2.4f)
                {
                    // 升到关闭阈值，延时切换
                    if (elapsed_time >= 1000)
                    {
                        Tempstate = 2;
                        temptime = current_time;
                    }
                }
                else
                {
                    // 保持在降功率范围，重置计时
                    temptime = current_time;
                }
            }
            break;
            
        case 2:  // 关闭状态
            Temp_protected_flag = 2;
            
            if (temp_stable_count >= 5)
            {
                if (voltage <= 1.3f)
                {
                    // 降到正常阈值，延时返回
                    if (elapsed_time >= 2000)  // 从关闭恢复可以延时更长
                    {
                        Tempstate = 0;
                        temptime = current_time;
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