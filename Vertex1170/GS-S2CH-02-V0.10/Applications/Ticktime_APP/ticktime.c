#include "ticktime.h"
#include "out_protected.h"
#include "readcurrent.h"
#include "pwm_driver.h"
#include "dimming.h"
#include "adc_driver.h"
#include "powercomp.h"
#include "RS485_DATA.h"
#include "GPIO_driver.h"
#include "adc_driver.h"
#include "queue.h"
#include "usbcom.h"

volatile uint32_t system_tick = 0;

static void (*g_pTaskScheduleFunc)(void);

void TaskScheduleCbReg(void (*pFunc)(void))
{
    g_pTaskScheduleFunc = pFunc;
}

static void TaskHandler_Time(void)
{
    static uint16_t ledtime;
    ledtime++;
    if (ledtime == 200)
    {
        LED_Toggle();
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



void Time0_AppInit(void)
{
    TMR0_PeriodMatchCallbackRegister(TaskHandler_Time);
}

void Time2_AppInit(void)
{
    //TMR2_PeriodMatchCallbackRegister(TaskHandler_Time);
}

void PIDDimming_Init(void)
{
   // TMR4_PeriodMatchCallbackRegister(Dimming_Pid);
}
