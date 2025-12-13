#include "ticktime.h"
#include "out_protected.h"
#include "readcurrent.h"
#include "pwm_change.h"
#include "pwm_driver.h"
#include "dimming.h"
#include "adc_driver.h"
#include "powercomp.h"
#include "RS485_DATA.h"
#include "GPIO_driver.h"
#include "adc_driver.h"
#include "queue.h"
#include "usbcom.h"

bool g_bInputActiveTime = false;
uint8_t g_uInputTime5Sce;
volatile uint32_t system_tick = 0;

static void (*g_pTaskScheduleFunc)(void);

void TaskScheduleCbReg(void (*pFunc)(void))
{
    g_pTaskScheduleFunc = pFunc;
}

uint16_t time1 = 0;

uint16_t pwm1, pwm2;
float pwm_output1,pwm_output2;

uint16_t g_uRs485TimeOut = 0;
bool g_bRs485Flag = false;
uint8_t pidtime1;


static void TaskHandler_Time(void)
{
    static uint16_t ledtime;
    ledtime++;
    if (ledtime == 200)
    {
        //LED_Toggle();
        ledtime = 0;
    }

    system_tick++;

    if (g_pTaskScheduleFunc == NULL)
    {
        return;
    }
    g_pTaskScheduleFunc();
}

uint32_t get_systemtick_time(void)
{
    return system_tick;
}


//// 获取经过时间并自动更新时间点
//uint32_t get_elapsed_and_update(uint32_t *since_time)
//{
//    uint32_t current = get_systemtick_time();
//    uint32_t elapsed;
//    
//    if (current >= *since_time) {
//        elapsed = current - *since_time;
//    } else {
//        elapsed = (0xFFFFFFFF - *since_time) + current + 1;
//    }
//    
//    *since_time = current;  // 自动更新
//    return elapsed;
//}
// 获取从指定时间点到当前经过的时间（不修改原值）

// 不自动更新

uint32_t get_elapsed_since(uint32_t since_time) //这是判断回绕函数 
{
    uint32_t current = get_systemtick_time();

    if (current >= since_time)
    {
        return current - since_time;
    }
    else
    {
        return (0xFFFFFFFF - since_time) +current + 1;
    }
}



typedef enum
{
    LED_OFF,
    LED_ON
} led_state_t;



void LED_Task(void)
{
    static led_state_t led_state = LED_OFF;
    static uint32_t last_led_change_time = 0;
    uint32_t elapsed = get_elapsed_since(last_led_change_time);

    switch (led_state) {
    case LED_OFF:
        if (elapsed > 100)
        { // 熄灭100ms后点亮
            Led_On();
            led_state = LED_ON;
            last_led_change_time = get_systemtick_time();
        }
        break;

    case LED_ON:
        if (elapsed > 100)
        { // 点亮200ms后熄灭
            Led_Off();
            led_state = LED_OFF;
            last_led_change_time = get_systemtick_time();
        }
        break;
    }
}

static void Time0_start(void)
{
    
    
//        if (g_uRs485TimeOut > 0)
//        {
//            g_uRs485TimeOut--;
//            if (g_uRs485TimeOut == 0 && Rx_Length > 0)
//            {
//                // 超时时间到，表示一帧接收完成
//                g_bRs485Flag = 1;
//            }
//        }     
}

float g_Voltage1, g_Voltage2;
float powernum1, powernum2;

void Dimming_Pid(void)
{
//    if (PIDflag1 != 0) pidtime1++;
//    if (pidtime1 == 10)
//    {
//        if (PIDflag1 == 1 || PIDflag1 == 3)
//        {
//            g_Voltage1 = ((float) ADC_Result2(Output1_voltage_ADC) / 1000.0f) * (3018.0f / 18.0f);
//            powernum1 = (float) get_current(OUT_CURRENT1) * g_Voltage1 / 1000.0f;
//            pwm_output = simple_regulator(power_pwm, 2000);
//            pwm1 = PID_Compute(&pid1, pwm_output, powernum1);
//            PWM_Set_Direct(PWM_CHANNEL_1, pwm1);
//        }
//    }
//    if (pidtime1 == 20)
//    {
//        if (PIDflag1 == 2 || PIDflag1 == 3)
//        {
//            g_Voltage2 = ((float) ADC_Result2(Output2_voltage_ADC) / 1000.0f) * (3018.0f / 18.0f);
//            powernum2 = (float) get_current(OUT_CURRENT2) * g_Voltage2 / 1000.0f;
//            pwm2 = PID_Compute(&pid2, g_uChanne2Power, powernum2);
//            PWM_Set_Direct(PWM_CHANNEL_2, pwm2);
//        }
//        pidtime1 = 0;
//    }
}

void Time0_AppInit(void)
{
    TMR0_PeriodMatchCallbackRegister(Time0_start);
}

void Time2_AppInit(void)
{
    TMR2_PeriodMatchCallbackRegister(TaskHandler_Time);
}

void PIDDimming_Init(void)
{
   // TMR4_PeriodMatchCallbackRegister(Dimming_Pid);
}
