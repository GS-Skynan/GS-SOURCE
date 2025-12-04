#include "dimming.h"
#include "adc_driver.h"
#include "out_protected.h"
#include "nfc.h"
#include "nfcapp.h"
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


/*变量定义*/
uint8_t Default_flag = 1; //
uint8_t start_flag = 0; //注意,启动标识，1：表示系统启动
uint8_t pfc_flag = 1; //PFC执行一次
volatile uint8_t buck_flag = 0;
uint8_t buck_ok1 = 0, buck_ok2 = 0; //保护判断标识，中断置1
uint8_t current_control_mode_1 = 0; // 1 通道恒流模式标志：0-恒功率，1-恒流
uint8_t current_control_mode_2 = 0; // 2 通道恒流模式标志：0-恒功率，1-恒流

uint8_t mode_flag; //启动模式，确保通道切换时候是先关后开

uint8_t PIDflag1;
uint8_t PIDflag2;


float current_value = 0;
float start_value = 0;
uint32_t start_time = 0;
float target_value = 0;
uint32_t transition_time = 1000;
float power_pwm = 0;
uint8_t ch1 = 1, ch2 = 1, ch12 = 1;

void regulator_clear(void)
{
    current_value = 0;
    start_value = 0;
    start_time = 0;
    target_value = 0;
    transition_time = 1000;
}

//平滑调光

float simple_regulator(float new_target, uint32_t time_ms)
{

    uint32_t current_time = get_systemtick_time(); // 使用PIC18的时间函数

    if (new_target != target_value)
    {
        target_value = new_target;
        start_value = current_value;
        start_time = current_time; // 记录绝对时间
        transition_time = time_ms;
    }

    // 使用通用函数计算时间差
    uint32_t elapsed = get_elapsed_since(start_time);

    if (elapsed >= transition_time)
    {
        current_value = target_value;
        return current_value;
    }

    float progress = (float) elapsed / transition_time;
    current_value = start_value + (target_value - start_value) * progress;

    return current_value;
}

/**
 * @brief 获取指定通道的电流值（单位：mA）
 * 该函数通过ADC采集指定通道的原始数据，并转换为实际电流值（毫安级）
 * @param  channel 要读取的ADC通道（I_Out1或I_Out2）
 * @return float   返回计算后的电流值，单位毫安(mA)
 * 
 * @note 转换公式说明：
 *       1. ADC原始值(0-4095) -> 电压值(0-4.096V)
 *       2. 根据分压/采样电路参数转换为实际电流
 *       3. 最终结果放大1000倍转换为mA单位
 */
float get_current(adc_channel_t channel)
{
    adc_result_t I_Out1_ADC, I_Out2_ADC; // ADC原始数据存储变量
    float I_out; // 计算后的电流值

    // 通道1(红光)电流计算
    if (channel == OUT_CURRENT1)
    {
        // 获取通道1的ADC原始值（12位分辨率，0-4095）
        I_Out1_ADC = ADC_Result2(OUT_CURRENT1);
        /* 电流转换公式分解：
         * 1. I_Out1_ADC/4095.0         -> 采样精度：12
         * 2. *4.096                    -> 对应参考电压4.096V（FVR：内部参考电压）
         * 3. /103460*3460              -> 根据运放反馈电阻分压比计算
         * 4. /0.034                    -> 采样电阻（三个0.1并联：0.033，考虑连接线（需要实际测量）：0.034）,这个值影响比较大，需要根据实际选取和理值
         *                                 这点的阻值需要保持灵活：保证实际实际测量值（电流）与ADC采集值（电流）一致(可以通过串口检测数据的一致性)！
         * 5. *1000(函数最后统一处理)    -> 转换为mA
         */
        //        I_out = (float)(I_Out1_ADC / 4095.0 * 4.096) / 103460 * 3460 / 0.034;   

        float adc_voltage1 = (float) I_Out1_ADC / 4095.0f * 4.096f;
        float voltage_ratio1 = 3460.0f / 103460.0f;
        I_out = adc_voltage1 * voltage_ratio1 / 0.034f;
    }
        // 通道2（红外光）电流计算
    else if (channel == OUT_CURRENT2)
    {
        // 获取通道2的ADC原始值
        I_Out2_ADC = ADC_Result2(OUT_CURRENT2);
        /* 电流转换公式分解：
         * 1. I_Out2_ADC/4095.0        -> 采样精度：12
         * 2. *4.096                   -> 对应参考电压4.096V（FVR：内部参考电压）
         * 3. /32630*2630              -> 根据运放反馈电阻分压比计算
         * 4. /0.25                    -> 采样电阻(两个0.5并联)
         * 5. *1000(函数最后统一处理)   -> 转换为mA
         */
        //        I_out = (float)(I_Out2_ADC / 4095.0 * 4.096) / 32630 * 2630 / 0.25;

        float adc_voltage2 = (float) I_Out2_ADC / 4095.0f * 4.096f;
        float voltage_ratio2 = 2630.0f / 32630.0f;
        I_out = adc_voltage2 * voltage_ratio2 / 0.25f;
    }
    return (I_out * 1000.0f); // 统一转换为毫安(mA)单位
}

bool ProtectionCheck(void)
{
    if (start_flag != 1)
    {
        return true;
    }


    if (out_flag1 == 0 || V_Ret1 != 0 || V_Ret2 != 0 || out_flag2 == 0)
    {

        return true;
    }

    if (UART_REG1 < 0x01 && UART_REG2 < 0x01)
    {

        ch1 = 1;
        ch2 = 1;
        ch12 = 1;
        return true; // 检查是否有任意通道（1、2）的值大于等于 1
    }

    return false;
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
        if (now > 150)
        {
            L6562_On(L6562_CHANNEL1);
            L6562_On(L6562_CHANNEL2);
            lastime = get_systemtick_time();
            startup_step = 2;

        }
        break;

    case 2:
        if (now > 150)
        {
            PIDflag1 = 3;
            startup_step = 3;
        }
        break;

    case 3: // 启动完成，什么都不做

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
        if (now1 > 150)
        {
            L6562_On(L6562_CHANNEL1);
            lastime1 = get_systemtick_time();
            startup_s1 = 2;
        }
        break;

    case 2:
        if (now1 > 150)
        {
            PIDflag1 = 1;
            startup_s1 = 3;
        }
        break;

    case 3: // 启动完成，什么都不做

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
        if (now2 > 150)
        {
            L6562_On(L6562_CHANNEL2);
            lastime2 = get_systemtick_time();
            startup_s2 = 2;
        }
        break;

    case 2:
        if (now2 > 150)
        {
            PIDflag1 = 2;
            startup_s2 = 3;
        }
        break;

    case 3: // 启动完成，什么都不做

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
    static uint8_t ch1 = 1;

    if ((UART_REG1 > 0x01 || UART_REG2 > 0x01) && pfc_flag == 1)
    {
        last_state_change_time = get_systemtick_time();
        state = PFC_ON;
        pfc_flag = 0;
    }

    switch (state) {
    case PFC_ON:
        PFC_On();
        if (state_elapsed > 400)
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
     
    if (ProtectionCheck() == true)
    {
        LightPowerOff(LED_ALL_OFF);
        printf("e");
        return;
    }

    power_pwm = (float) Power_Compensation();
//    //   判断是否有通道开启
//    if ((UART_REG1 > 0x01 || UART_REG2 > 0x01) && pfc_flag == 1)
//    {
//        PFC_On(); // 打开 PFC
//        __delay_ms(400); // 延时 400ms，等待 PFC 稳定
//        pfc_flag = 0;
//    }
//
//    if (UART_REG1 > 0x01 && UART_REG2 > 0x01)
//    {
//        if (ch12 == 1)
//        {
//            ch1 = 1;
//            ch2 = 1;
//            RELAY_On(RELAY_CHANNEL1); // 打开通道 1 的继电器                                         
//            __delay_ms(150); // 延时 150ms，等待继电器稳定                                             
//            L6562_On(L6562_CHANNEL1);
//            RELAY_On(RELAY_CHANNEL2); // 打开通道 2 的继电器
//            __delay_ms(150); // 延时 150ms，等待继电器稳定                                                     // 启动 L6562（PFC 控制器）
//            L6562_On(L6562_CHANNEL2);
//            PIDflag1 = 3;
//            ch12 = 0;
//        }
//    }
//    else if (UART_REG1 > 0x01 && UART_REG2 == 0)
//    {
//        if (ch1 == 1)
//        {
//            ch12 = 1;
//            ch2 = 1;
//            LightPowerOff(LED_CHANNEL2_OFF);
//            RELAY_On(RELAY_CHANNEL1); // 打开通道 1 的继电器                                         
//            __delay_ms(150); // 延时 150ms，等待继电器稳定                                             
//            L6562_On(L6562_CHANNEL1);
//            PIDflag1 = 1;
//            ch1 = 0;
//        }
//    }
//    else if (UART_REG1 == 0 && UART_REG2 > 0x01)
//    {
//        if (ch2 == 1)
//        {
//            ch12 = 1;
//            ch1 = 1;
//            LightPowerOff(LED_CHANNEL1_OFF);
//            RELAY_On(RELAY_CHANNEL2); // 打开通道 2 的继电器
//            __delay_ms(150); // 延时 150ms，等待继电器稳定                                                     // 启动 L6562（PFC 控制器）
//            L6562_On(L6562_CHANNEL2);
//            PIDflag1 = 2;
//            ch2 = 0;
//        }
//    }


    DimmingStart();


    //        if (UART_REG1 >= 0x01 && UART_REG2 == 0x00)
    //        {
    //            PIDflag1 = 1;
    //        }
    //    
    //        if (UART_REG1 == 0x00 && UART_REG2 >= 0x01)
    //        {
    //            PIDflag1 = 2;
    //        }
    //    
    //        if (UART_REG1 >= 0x01 && UART_REG2 >= 0x01)
    //        {
    //            PIDflag1 = 3;
    //        }
    //         if (UART_REG1 == 0x00 && UART_REG2== 0x00)
    //        {
    //            PIDflag1 = 0;
    //            pwm1=0;
    //            pwm2=0;      
    //        }

    Dimming_Pid();


}



