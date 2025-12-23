#include "dimming.h"
#include "adc_driver.h"
#include "out_protected.h"
#include "nfc.h"
#include "usbcom.h"
#include "inprotectedapp.h"
#include "powercomp.h"
#include "closeled.h"
#include "readcurrent.h"
#include "GPIO_driver.h"
#include "pwm_driver.h"
#include "ticktime.h"
#include "RS485_DATA.h"
#include <math.h>
#include "stdio.h"
#include "Bootloader.h"
#include "arithmetic.h"
#include "pid_controller.h"
#include "temp_protected.h"
#include "../App_config/config.h"


uint8_t g_uPowerOnOutputStart = 0;

uint8_t g_bPfcRunFlag = 1;
float g_fPowerOutputValue = 0;


tPidDimming piddimmingChannel1 = {0};
tPidDimming piddimmingChannel2 = {0};

void PIDDimming_Clear(tPidDimming *pid)
{
    if (pid == NULL) return;

    pid->targetPower = 0.0f;
    pid->actualPower = 0.0f;
    pid->voltage = 0.0f;
    pid->pwmValue = 0.0f;
}

float GetChannelCurrentValue(adc_channel_t channel)
{
    adc_result_t g_uADCValueChannel1, g_uADCValueChannel2; // ADC原始数据存储变量
    float g_uTargetCurrentValue; // 计算后的电流值

    // 通道1(红光)电流计算
    if (channel == OUT_CURRENT1)
    {
        // 获取通道1的ADC原始值（12位分辨率，0-4095）
        g_uADCValueChannel1 = ADC_Result2(OUT_CURRENT1);

        float adc_voltage1 = (float) g_uADCValueChannel1 / 4095.0f * 4.095f;
        float voltage_ratio1 = CURRENT_CH1_R1 / CURRENT_CH1_R2;
        g_uTargetCurrentValue = adc_voltage1 * voltage_ratio1 / 0.1f;
        if (g_uTargetCurrentValue >= 3.6f)g_uTargetCurrentValue = 3.6f;
    }
        // 通道2（红外光）电流计算
    else if (channel == OUT_CURRENT2)
    {
        // 获取通道2的ADC原始值
        g_uADCValueChannel2 = ADC_Result2(OUT_CURRENT2);

        float adc_voltage2 = (float) g_uADCValueChannel2 / 4095.0f * 4.096f;
        float voltage_ratio2 = CURRENT_CH2_R1 / CURRENT_CH2_R2;
        g_uTargetCurrentValue = adc_voltage2 * voltage_ratio2 / 0.2f;
        if (g_uTargetCurrentValue >= 2.0f)g_uTargetCurrentValue = 2.0f;
    }
    return (g_uTargetCurrentValue * 1000.0f); // 统一转换为毫安(mA)单位
}

void GetDimmingValue(uint8_t *r_dimming)
{
    if (r_dimming[8] != 0x00)
    {
        if (r_dimming[8] <= 0x14)r_dimming[8] = 0x14;
        if (r_dimming[8] >= 0x64)r_dimming[8] = 0x64;
    }
    g_uDimmingLevelChannel1 = r_dimming[8]; //第一通道

    if (r_dimming[10] != 0x00)
    {
        if (r_dimming[10] <= 0x1E)r_dimming[10] = 0x1E;
        if (r_dimming[10] >= 0x64)r_dimming[10] = 0x64;
    }
    g_uDimmingLevelChannel2 = r_dimming[10]; //第二通道

}





uint8_t g_uOnChannel1 = 1;

void LightOnChannel1(void)
{
    static uint32_t LastTimeChannel1 = 0;
    uint32_t NowTimeChannel1 = get_elapsed_since(LastTimeChannel1); // 获取当前系统时间（毫秒）

    switch (g_uOnChannel1) {
    case 1: // 第一步：打开继电器1
        RELAY_On(RELAY_CHANNEL1);
        LastTimeChannel1 = get_systemtick_time();
        g_uOnChannel1 = 2;
        break;
    case 2:
        if (NowTimeChannel1 > 200)
        {
            L6562_On(L6562_CHANNEL1);
            LastTimeChannel1 = get_systemtick_time();
            g_uOnChannel1 = 3;
        }
        break;

    case 3:
        g_uPowerOnOutputStart = 1;
        piddimmingChannel1.voltage = ((float) ADC_Result2(Output1_voltage_ADC) / 1000.0f) * (VOLTAGE_CH1_R1 / VOLTAGE_CH1_R2);
        piddimmingChannel1.actualPower = (float) GetChannelCurrentValue(OUT_CURRENT1) * piddimmingChannel1.voltage / 1000.0f;
        piddimmingChannel1.targetPower = update_pwm_output_ch1(g_fPowerOutputValue);
        piddimmingChannel1.pwmValue = PID_Compute(&pid1, piddimmingChannel1.targetPower, piddimmingChannel1.actualPower);
        PWM_Set_Direct(PWM_CHANNEL_1, piddimmingChannel1.pwmValue);
        break;
    }
}

uint8_t g_uOnChannel2 = 1;

void LightOnChannel2(void)
{

    static uint32_t LastTimeChannel2 = 0;
    uint32_t NowTimeChannel2 = get_elapsed_since(LastTimeChannel2); // 获取当前系统时间（毫秒）

    switch (g_uOnChannel2) {
    case 1: // 第一步：打开继电器1
        RELAY_On(RELAY_CHANNEL2);
        LastTimeChannel2 = get_systemtick_time();
        g_uOnChannel2 = 2;
        break;

    case 2:
        if (NowTimeChannel2 > 200)
        {
            L6562_On(L6562_CHANNEL2);
            LastTimeChannel2 = get_systemtick_time();
            g_uOnChannel2 = 3;
        }
        break;

    case 3:
        g_uPowerOnOutputStart = 1;
        piddimmingChannel2.voltage = ((float) ADC_Result2(Output2_voltage_ADC) / 1000.0f) * (VOLTAGE_CH2_R1 / VOLTAGE_CH2_R2);
        piddimmingChannel2.actualPower = (float) GetChannelCurrentValue(OUT_CURRENT2) * piddimmingChannel2.voltage / 1000.0f;
        piddimmingChannel2.targetPower = update_pwm_output_ch2(g_uChanne2Power);
        piddimmingChannel2.pwmValue = PID_Compute(&pid2, piddimmingChannel2.targetPower, piddimmingChannel2.actualPower);
        PWM_Set_Direct(PWM_CHANNEL_2, piddimmingChannel2.pwmValue);
        break;
    }
}

void ClearChannelValue(uint8_t channel)
{
    if (channel == 1)
    {
        PIDDimming_Clear(&piddimmingChannel1);
        g_fPowerOutputValue = 0;
        g_uOnChannel1 = 1;
    }

    else if (channel == 2)
    {
        PIDDimming_Clear(&piddimmingChannel2);
        g_uChanne2Power = 0;
        g_uOnChannel2 = 1;
    }

    else if (channel == 3)
    {
        PIDDimming_Clear(&piddimmingChannel1);
        PIDDimming_Clear(&piddimmingChannel2);
        g_bPfcRunFlag = 1;
        g_uPowerOnOutputStart = 0;
        g_fPowerOutputValue = 0;
        g_uOnChannel1 = 1;
        g_uOnChannel2 = 1;
    }
}

typedef enum
{
    PFC_ON = 1,
    LED_ON_ALL,
    LED_OFF,
} eLIGHT_START;

void LightOnLogic(void)
{
    static eLIGHT_START lightstate = LED_OFF;
    static uint32_t LastLightLogicTime = 0;
    uint32_t NowLightLogicTime = get_elapsed_since(LastLightLogicTime);

    if ((g_uDimmingLevelChannel1 > 0x01 || g_uDimmingLevelChannel2 > 0x01) && g_bPfcRunFlag == 1)
    {
        LastLightLogicTime = get_systemtick_time();
        lightstate = PFC_ON;
        g_bPfcRunFlag = 0;
    }


    switch (lightstate) {
    case PFC_ON:
        PFC_On();
        if (NowLightLogicTime > 800)
        {
            lightstate = LED_ON_ALL;
            LastLightLogicTime = get_systemtick_time();
        }
        break;


    case LED_ON_ALL:
        if (g_uDimmingLevelChannel1 > 0x01 && ProtectionCheck() != 2)
        {
            g_uOffChannel1 = 1;
            LightOnChannel1();
            
        }
        else
        {
            LightOffLogic(LED_CHANNEL1_OFF);
        }

        if (g_uDimmingLevelChannel2 > 0x01 && ProtectionCheck() != 3)
        {
            g_uOffChannel2 = 1;
            LightOnChannel2();
        }
        else
        {
            LightOffLogic(LED_CHANNEL2_OFF);
        }
        break;
    }
}

void DimmingControlTask(void)
{
    //保护校验   
    static uint8_t ProtectionState;
    static uint8_t lastExecState = 0;
    ProtectionState = ProtectionCheck();

    if (ProtectionState != 0)
    {
        // 状态发生变化时才执行
        if (ProtectionState != lastExecState)
        {
            if (ProtectionState == 1)
            {
                LightOffLogic(LED_ALL_OFF);
                return;
            }
            lastExecState = ProtectionState;
        }
    }
    else
    {
        lastExecState = 0;
        g_uFaultCode = 0;
    }

    g_fPowerOutputValue = (float) Power_Compensation();

    if (g_bPowerDownFlag == 1 || g_uTemperatureProtection == 1)
    {
        g_fPowerOutputValue = (float) (g_uTargetPowerChannel1 / 2);
    }

    LightOnLogic();
}

void Display(void)
{

    printf("Vin:%d| \n\r ", ADC_Result2(Input_voltage_ADC));
    printf("CH1|I:%.2f|V:%.2f|P:%.2f|PWM:%d|\n\r ",
           GetChannelCurrentValue(OUT_CURRENT1), piddimmingChannel1.voltage, piddimmingChannel1.actualPower, piddimmingChannel1.pwmValue);
    printf("CH2|I:%.2f|V:%.2f|P:%.2f|PWM:%d|\n\r ",
           GetChannelCurrentValue(OUT_CURRENT2), piddimmingChannel2.voltage, piddimmingChannel2.actualPower, piddimmingChannel2.pwmValue);

    printf("SP:%.2f|URGE1:%d|URGE2:%d| \n\r ", g_fPowerOutputValue, g_uDimmingLevelChannel1, g_uDimmingLevelChannel2);

    printf("Pro:%d|\n\r ", g_uFaultCode);


    printf("Temp:%.2f|\n\r ", Temp_Res);
    printf("V:%d\n\r", ADC_Result2(Output1_voltage_ADC));
    printf("pid:%d|\n\r ", g_uPowerOnOutputStart);
    // printf("%d|%d\n\r ", V_Ret1, V_Ret2);
    printf("%d|\n\r ", ProtectionCheck());
    //  printf("%.2f\r\n",g_PoweProtect2);
}
