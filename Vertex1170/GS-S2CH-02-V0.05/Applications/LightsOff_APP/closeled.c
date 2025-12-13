#include "closeled.h"
#include "inprotectedapp.h"
#include "readcurrent.h"
#include "pwm_change.h"
#include "GPIO_driver.h"
#include "pwm_driver.h"
#include "out_protected.h"
#include "dimming.h"
#include "ticktime.h"
#include "stdio.h"
#include "arithmetic.h"


/*全部关闭时候*/
void ALL_Closed(void)
{
    // 关闭 PFC（功率因数校正）
    PFC_Off();

    /* 数字关灯时需要将一些 PID 参数清零 */
    pid1.PWM_duty_cycle = 0; // 清零通道 1 的 PWM 占空比
    pid1.integral = 0.0f; // 清零通道 1 的积分项
    pid1.prev_error = 0.0f; // 清零通道 1 的上一次误差
    pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
    pid2.integral = 0.0f; // 清零通道 2 的积分项
    pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
    target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比
    target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比
    PWM_Off_CHANNEL(PWM_ALLOFF);
    L6562_Off(L6562_CHANNEL1);
    L6562_Off(L6562_CHANNEL2);
    // 再次清零 PWM 先前值（确保完全关闭）
    __delay_ms(100);
    RELAY_Off(RELAY_CHANNEL1);
    RELAY_Off(RELAY_CHANNEL2);
    pfc_flag = 1;
    power_pwm = 0;
    PIDflag1 = 0;
    RegulatorClear(1);
    RegulatorClear(2);
    pwm1 = 0;
    pwm2 = 0;
    powernum1 = 0;
    powernum2 = 0;

}

/*关闭1通道*/

void LED1_Close(void)
{  
        powernum1 = 0;
        UART_REG1=0;
        power_pwm = 0;
        RegulatorClear(1);
        pwm1 = 0;
        pid1.PWM_duty_cycle = 0; // 清零 PWM 占空比
        pid1.integral = 0.0f; // 清零积分项
        pid1.prev_error = 0.0f; // 清零上一次误差        
        target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比       
        PWM_Off_CHANNEL(PWM_CHANNEL_1);
        __delay_ms(100); // 延时 100ms，确保 PWM 完全关闭                                  
        L6562_Off(L6562_CHANNEL1);
        __delay_ms(500); // 延时 100ms，确保 L6562 完全关闭      
        RELAY_Off(L6562_CHANNEL1); // 关闭通道 1 的继电器  
}

void LED2_Close(void)
{
    powernum2 = 0;
    UART_REG2=0;
    pwm2 = 0;
    RegulatorClear(2);
    pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
    pid2.integral = 0.0f; // 清零通道 2 的积分项
    pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
    target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比           
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

