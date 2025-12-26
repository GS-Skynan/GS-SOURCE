#include "closeled.h"
#include "GPIO_driver.h"
#include "pwm_driver.h"
#include "dimming.h"
#include "ticktime.h"
#include "arithmetic.h"
#include "pid_controller.h"

///*全部关闭时候*/
//void LightOffAll(void)
//{
//    // 关闭 PFC（功率因数校正）
//    PFC_Off();
//    ClearChannelValue(3);
//    Clear_pid(3);
//    RegulatorClear(1);
//    RegulatorClear(2);
//    PWM_Off_CHANNEL(PWM_ALLOFF);
//    L6562_Off(L6562_CHANNEL1);
//    L6562_Off(L6562_CHANNEL2);
//    // 再次清零 PWM 先前值（确保完全关闭）
//    __delay_ms(100);
//    RELAY_Off(RELAY_CHANNEL1);
//    RELAY_Off(RELAY_CHANNEL2);
//}

/*关闭1通道*/
uint8_t g_uOffChannel1 = 1;

void LightOffChannel1(void)
{
    static uint32_t LastTimeChannel1 = 0;
    uint32_t NowTimeChannel1 = get_elapsed_since(LastTimeChannel1); // 获取当前系统时间（毫秒）

    switch (g_uOffChannel1) {
    case 1: // 第一步：打开继电器1
        PWM_Off_CHANNEL(PWM_CHANNEL_1);
        L6562_Off(L6562_CHANNEL1);
        ClearChannelValue(1);
        Clear_pid(1);
        RegulatorClear(1);
        LastTimeChannel1 = get_systemtick_time();
        g_uOffChannel1 = 2;
        break;
    case 2:
        if (NowTimeChannel1 > 500)
        {
            RELAY_Off(L6562_CHANNEL1);
            LastTimeChannel1 = get_systemtick_time();
            g_uOffChannel1 = 3;
        }
        break;

    case 3:
        return;
        break;
    }
}

/*关闭2通道*/
uint8_t g_uOffChannel2 = 1;

void LightOffChannel2(void)
{
    static uint32_t LastTimeChannel1 = 0;
    uint32_t NowTimeChannel1 = get_elapsed_since(LastTimeChannel1); // 获取当前系统时间（毫秒）

    switch (g_uOffChannel2) {
    case 1: // 第一步：打开继电器1
        PWM_Off_CHANNEL(PWM_CHANNEL_2);
        L6562_Off(L6562_CHANNEL2);
        ClearChannelValue(2);
        Clear_pid(2);
        RegulatorClear(2);
        LastTimeChannel1 = get_systemtick_time();
        g_uOffChannel2 = 2;

        break;
    case 2:
        if (NowTimeChannel1 > 500)
        {
            RELAY_Off(L6562_CHANNEL2);
            LastTimeChannel1 = get_systemtick_time();
            g_uOffChannel2 = 3;
        }
        break;

    case 3:
        return;
        break;
    }
}

void LightOffLogic(eLedClose ledsta)
{
    switch (ledsta) {
    case LED_CHANNEL1_OFF:
        LightOffChannel1();
        break;

    case LED_CHANNEL2_OFF:
        LightOffChannel2();
        break;

    case LED_ALL_OFF:
        PFC_Off();
        ClearChannelValue(3);
        PWM_Off_CHANNEL(PWM_ALLOFF);
        LightOffChannel1();
        LightOffChannel2();
        // LightOffAll();
        break;
    }
}

