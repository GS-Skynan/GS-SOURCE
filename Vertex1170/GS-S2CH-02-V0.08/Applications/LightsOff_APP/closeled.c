#include "closeled.h"
#include "inprotectedapp.h"
#include "readcurrent.h"
#include "GPIO_driver.h"
#include "pwm_driver.h"
#include "out_protected.h"
#include "dimming.h"
#include "ticktime.h"
#include "stdio.h"
#include "arithmetic.h"
#include "pid_controller.h"

/*全部关闭时候*/
void ALL_Closed(void)
{
    // 关闭 PFC（功率因数校正）
    PFC_Off();
    ClearChannelValue(3);
    Clear_pid(3);
    RegulatorClear(1);
    RegulatorClear(2);
    PWM_Off_CHANNEL(PWM_ALLOFF);
    L6562_Off(L6562_CHANNEL1);
    L6562_Off(L6562_CHANNEL2);
    // 再次清零 PWM 先前值（确保完全关闭）
    __delay_ms(100);
    RELAY_Off(RELAY_CHANNEL1);
    RELAY_Off(RELAY_CHANNEL2);

}

/*关闭1通道*/

void LED1_Close(void)
{

    ClearChannelValue(1);   
    Clear_pid(1); 
    RegulatorClear(1);
    PWM_Off_CHANNEL(PWM_CHANNEL_1);
    __delay_ms(100); // 延时 100ms，确保 PWM 完全关闭                                  
    L6562_Off(L6562_CHANNEL1);
    __delay_ms(500); // 延时 100ms，确保 L6562 完全关闭      
    RELAY_Off(L6562_CHANNEL1); // 关闭通道 1 的继电器  
}

void LED2_Close(void)
{
    ClearChannelValue(2);   
    Clear_pid(2);  
    PWM_Off_CHANNEL(PWM_CHANNEL_2);
    __delay_ms(100);
    L6562_Off(L6562_CHANNEL2);
    __delay_ms(500);
    RELAY_Off(L6562_CHANNEL2);
}

void LightPowerOff(eLedClose ledsta)
{
    switch (ledsta) {
    case LED_CHANNEL1_OFF:
        LED1_Close();
        break;

    case LED_CHANNEL2_OFF:
        LED2_Close();
        break;

    case LED_ALL_OFF:
        ALL_Closed();
        break;
    }
}

