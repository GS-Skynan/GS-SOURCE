#include "dimming.h"
#include "adc_driver.h"
#include "out_protected.h"
#include "nfc.h"
#include "usbcom.h"
#include "inprotectedapp.h"
#include "powercomp.h"
#include "closeled.h"
#include "pwm_change.h"
#include "readcurrent.h"
#include "GPIO_driver.h"
#include "pwm_driver.h"
#include "ticktime.h"
#include "RS485_DATA.h"
#include "record.h"
#include <math.h>
#include "stdio.h"
#include "readcurrent.h"
#include "temp_protected.h"
#include "Bootloader.h"
#include "arithmetic.h"



#define I1_R1  720.0f 
#define I1_R2  8880.0f

#define I2_R1  720.0f
#define I2_R2  10680.0f



uint8_t start_flag = 1; //注意,启动标识，1：表示系统启动
uint8_t pfc_flag = 1; //PFC执行一次
uint8_t mode_flag; //启动模式，确保通道切换时候是先关后开


volatile uint8_t PIDflag1 = 0;
float power_pwm = 0;

float get_current(adc_channel_t channel)
{
    adc_result_t I_Out1_ADC, I_Out2_ADC; // ADC原始数据存储变量
    float I_out; // 计算后的电流值

    // 通道1(红光)电流计算
    if (channel == OUT_CURRENT1)
    {
        // 获取通道1的ADC原始值（12位分辨率，0-4095）
        I_Out1_ADC = ADC_Result2(OUT_CURRENT1);

        float adc_voltage1 = (float) I_Out1_ADC / 4095.0f * 4.095f;
        float voltage_ratio1 = I1_R1 / I1_R2;
        I_out = adc_voltage1 * voltage_ratio1 / 0.1f;
    }
        // 通道2（红外光）电流计算
    else if (channel == OUT_CURRENT2)
    {
        // 获取通道2的ADC原始值
        I_Out2_ADC = ADC_Result2(OUT_CURRENT2);

        float adc_voltage2 = (float) I_Out2_ADC / 4095.0f * 4.096f;
        float voltage_ratio2 = I2_R1 / I2_R2;
        I_out = adc_voltage2 * voltage_ratio2 / 0.2f;
    }
    return (I_out * 1000.0f); // 统一转换为毫安(mA)单位
}

/*1关全部  2 关1  3关2*/
uint8_t ProtectionCheck(void)
{

    if (start_flag != 1)
    {
        return 1;
    }

    if (g_uBootUpgradeFlag == 1)
    {
        return 1;
    }

    if (Temp_protected_flag == 2)
    {
        return 1;
    }

    if (UART_REG1 < 0x01 && UART_REG2 < 0x01)
    {
        return 1; // 检查是否有任意通道（1、2）的值大于等于 1
    }

    if (V_Ret1 != 0)
    {
        return 2;
    }

    if (V_Ret2 != 0)
    {
        return 3;
    }

    return 0;
}

void PIDCH12(void)
{

    if (PIDflag1 == 1 || PIDflag1 == 3)
    {
        g_Voltage1 = ((float) ADC_Result2(Output1_voltage_ADC) / 1000.0f) * (1087.5f / 7.5f);
        powernum1 = (float) get_current(OUT_CURRENT1) * g_Voltage1 / 1000.0f;
        pwm_output1 = update_pwm_output_ch1(power_pwm);
        //simple_regulator(power_pwm, 3000);
        pwm1 = PID_Compute(&pid1, pwm_output1, powernum1);
        PWM_Set_Direct(PWM_CHANNEL_1, pwm1);
    }

    if (PIDflag1 == 2 || PIDflag1 == 3)
    {
        g_Voltage2 = ((float) ADC_Result2(Output2_voltage_ADC) / 1000.0f) * (U1_R1 / U1_R2);
        powernum2 = (float) get_current(OUT_CURRENT2) * g_Voltage2 / 1000.0f;
        pwm_output2 = update_pwm_output_ch2(g_uChanne2Power);
        pwm2 = PID_Compute(&pid2, pwm_output2, powernum2);
        PWM_Set_Direct(PWM_CHANNEL_2, pwm2);
    }
}


static uint8_t startup_step = 0;

void Startup_12CH(void)
{
    static uint32_t lastime = 0;
    uint32_t now = get_elapsed_since(lastime); // 获取当前系统时间（毫秒）
    switch (startup_step) {
    case 0: // 第一步：打开继电器1
        RELAY_On(RELAY_CHANNEL1);
        RELAY_On(RELAY_CHANNEL2);
        lastime = get_systemtick_time();
        startup_step = 1;
        break;

    case 1:
        if (now > 200)
        {
            L6562_On(L6562_CHANNEL1);
            L6562_On(L6562_CHANNEL2);
            lastime = get_systemtick_time();
            startup_step = 2;

        }
        break;

    case 2:
        PIDflag1 = 3;
        break;

    }
}

static uint8_t startup_s1 = 0;

void Startup_1CH(void)
{

    static uint32_t lastime1 = 0;
    uint32_t now1 = get_elapsed_since(lastime1); // 获取当前系统时间（毫秒）

    switch (startup_s1) {
    case 0: // 第一步：打开继电器1
        RELAY_On(RELAY_CHANNEL1);
        lastime1 = get_systemtick_time();
        startup_s1 = 1;
        break;

    case 1:
        if (now1 > 200)
        {
            L6562_On(L6562_CHANNEL1);
            lastime1 = get_systemtick_time();
            startup_s1 = 2;
        }
        break;

    case 2:
        PIDflag1 = 1;
        break;


    }
}


static uint8_t startup_s2 = 0;

void Startup_2CH(void)
{

    static uint32_t lastime2 = 0;
    uint32_t now2 = get_elapsed_since(lastime2); // 获取当前系统时间（毫秒）

    switch (startup_s2) {
    case 0: // 第一步：打开继电器1
        RELAY_On(RELAY_CHANNEL2);
        lastime2 = get_systemtick_time();
        startup_s2 = 1;
        break;

    case 1:
        if (now2 > 200)
        {
            L6562_On(L6562_CHANNEL2);
            lastime2 = get_systemtick_time();
            startup_s2 = 2;
        }
        break;

    case 2:

        PIDflag1 = 2;

        break;

    }
}

typedef enum
{
    PFC_ON = 1,
    LED_ON_12CH,
    LED_ON_1CH,
    LED_ON_2CH,
    LED_OFF,
} eSTART;

void DimmingStart(void)
{
    static eSTART state = LED_OFF;
    static uint32_t last_state_change_time = 0;
    uint32_t state_elapsed = get_elapsed_since(last_state_change_time);

    if ((UART_REG1 > 0x01 || UART_REG2 > 0x01) && pfc_flag == 1)
    {
        last_state_change_time = get_systemtick_time();
        state = PFC_ON;
        pfc_flag = 0;
    }

    switch (state) {
    case PFC_ON:
        PFC_On();
        if (state_elapsed > 800)
        {
            if (UART_REG1 > 0x01 && UART_REG2 > 0x01)
            {
                state = LED_ON_12CH;
                startup_step = 0;
            }
            if (UART_REG1 > 0x01 && UART_REG2 == 0x00)
            {
                state = LED_ON_1CH;
                startup_s1 = 0;

            }
            if (UART_REG1 == 0x00 && UART_REG2 > 0x01)
            {
                state = LED_ON_2CH;
                startup_s2 = 0;
            }
            last_state_change_time = get_systemtick_time();
        }
        break;

    case LED_ON_12CH:
        Startup_12CH();
        if (UART_REG1 > 0x01 && UART_REG2 == 0x00)
        {
            LightPowerOff(LED_CHANNEL2_OFF);
            state = LED_ON_1CH;
            startup_s1 = 0;

        }
        if (UART_REG1 == 0x00 && UART_REG2 > 0x01)
        {
            LightPowerOff(LED_CHANNEL1_OFF);
            state = LED_ON_2CH;
            startup_s2 = 0;

        }

        break;


    case LED_ON_1CH:

        Startup_1CH();
        if (UART_REG1 > 0x01 && UART_REG2 > 0x01)
        {
            state = LED_ON_12CH;
            startup_step = 0;
        }
        if (UART_REG1 == 0x00 && UART_REG2 > 0x01)
        {
            LightPowerOff(LED_CHANNEL1_OFF);
            state = LED_ON_2CH;
            startup_s2 = 0;
        }
        break;

    case LED_ON_2CH:


        Startup_2CH();
        if (UART_REG1 > 0x01 && UART_REG2 > 0x01)
        {
            state = LED_ON_12CH;
            startup_step = 0;
        }

        if (UART_REG1 > 0x01 && UART_REG2 == 0x00)
        {
            LightPowerOff(LED_CHANNEL2_OFF);
            state = LED_ON_1CH;
            startup_s1 = 0;
        }

        break;

    }
}

void DimmingControlTask(void)
{
    //保护校验   
    static uint8_t ProtectionState;
    ProtectionState = ProtectionCheck();
    if (ProtectionState != 0)
    {
        if (ProtectionState == 1)
        {
            LightPowerOff(LED_ALL_OFF);
            return;
        }
        else if (ProtectionState == 2 && UART_REG1 > 0X01)
        {
            LightPowerOff(LED_CHANNEL1_OFF);
        }
        else if (ProtectionState == 3 && UART_REG2 > 0X01)
        {
            LightPowerOff(LED_CHANNEL2_OFF);
        }
    }
    else
    {
        g_uFaultCode = 0;
    }
    power_pwm = (float) Power_Compensation();
    if (g_bPowerDownFlag == 1 || Temp_protected_flag == 1)
    {
        power_pwm = power_pwm / 2;
    }

    DimmingStart();
    PIDCH12();
}

//
//void DimmingControlTask(void)
//{
//    // 保护校验   
//    static uint8_t ProtectionState;
//    static uint8_t ProtectionExecuted = 0;  // 新增：保护是否已执行标志
//    
//    uint8_t currentState = ProtectionCheck();
//    
//    // 状态发生变化时重新执行保护
//    if (currentState != ProtectionState)
//    {
//        ProtectionState = currentState;
//        ProtectionExecuted = 0;  // 状态变化，重置执行标志
//    }
//    
//    if (ProtectionState != 0)
//    {
//        if (ProtectionState == 1) 
//        {
//            LightPowerOff(LED_ALL_OFF);
//            return;  // 状态1直接返回
//        }
//        else if (ProtectionState == 2 && !ProtectionExecuted)
//        {
//            LightPowerOff(LED_CHANNEL1_OFF);  // 只执行一次（有延时）
//            ProtectionExecuted = 1;  // 标记已执行
//        }
//        else if (ProtectionState == 3 && !ProtectionExecuted)
//        {
//            LightPowerOff(LED_CHANNEL2_OFF);  // 只执行一次（有延时）
//            ProtectionExecuted = 1;  // 标记已执行
//        }
//    }
//    else
//    {
//        ProtectionExecuted = 0;  // 正常状态时重置标志
//          g_uFaultCode = 0;
//    }
//    
//    // 继续执行控制逻辑（状态0、2、3都会到这里）
//  
//    power_pwm = (float) Power_Compensation();
//    
//    if (g_bPowerDownFlag == 1 || Temp_protected_flag == 1)
//    {
//        power_pwm = power_pwm / 2;
//    }
//
//    DimmingStart();
//    PIDCH12();
//}
