#include "closeled.h"
#include "nfcapp.h"
#include "inprotectedapp.h"
#include "readcurrent.h"
#include "pwm_change.h"
#include "GPIO_driver.h"
#include "pwm_driver.h"
#include "out_protected.h"
#include "dimming.h"
#include "ticktime.h"
#include "stdio.h"

//uint16_t ALL_CLOSE; //关闭
//uint16_t CLOSE1;
//uint16_t CLOSE2;

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
    regulator_clear();
    pwm1 = 0;
    pwm2 = 0;

}

/*关闭1通道*/

void LED1_Close(void)
{
    power_pwm = 0;
    regulator_clear();
    pwm1 = 0;
    pid1.PWM_duty_cycle = 0; // 清零 PWM 占空比
    pid1.integral = 0.0f; // 清零积分项
    pid1.prev_error = 0.0f; // 清零上一次误差        
    target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比       
    PWM_Off_CHANNEL(PWM_CHANNEL_1);
    __delay_ms(100); // 延时 100ms，确保 PWM 完全关闭                                  
    L6562_Off(L6562_CHANNEL1);
    __delay_ms(100); // 延时 100ms，确保 L6562 完全关闭      
    // 关闭通道 1 的继电器  
    RELAY_Off(L6562_CHANNEL1);
}

void LED2_Close(void)
{
    pwm2 = 0;
    pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
    pid2.integral = 0.0f; // 清零通道 2 的积分项
    pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
    target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比           
    PWM_Off_CHANNEL(PWM_CHANNEL_2);
    __delay_ms(100);
    L6562_Off(L6562_CHANNEL2);
    __delay_ms(100);
    RELAY_Off(L6562_CHANNEL2);
}


//uint8_t state1 = 0;
//void LED1_Close(void)
//{
//    static uint32_t last_time = 0;
//    uint32_t elapsed1 = get_elapsed_since(last_time);
// 
//      
//    switch (state1) {
//    case 0:
//        power_pwm = 0;
//        regulator_clear();
//        pwm1 = 0;
//        pid1.PWM_duty_cycle = 0; // 清零 PWM 占空比
//        pid1.integral = 0.0f; // 清零积分项
//        pid1.prev_error = 0.0f; // 清零上一次误差        
//        target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比       
//        PWM_Off_CHANNEL(PWM_CHANNEL_1);
//        if (elapsed1 > 100)
//        {
//            state1 = 1;
//            last_time = get_systemtick_time();
//                    printf("1");
//        }
//        break;
//
//    case 1:
//        L6562_Off(L6562_CHANNEL1);
//        if (elapsed1 > 100)
//        {     printf("2");
//            state1 = 2;
//            last_time = get_systemtick_time();
//        }
//        break;
//
//    case 2:
//        RELAY_Off(L6562_CHANNEL1);
//        if (elapsed1 > 100)
//        {     printf("3");
//            state1 = 3;
//        }
//        break;
//    case 3:
//    
//        break;
//    }
//}
//
//void LED2_Close(void)
//{
//    static uint8_t state = 0;
//    static uint32_t last_time = 0;
//    uint32_t elapsed = get_elapsed_since(last_time);
//
//    switch (state) {
//    case 0:
//        pwm2 = 0;
//        pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
//        pid2.integral = 0.0f; // 清零通道 2 的积分项
//        pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
//        target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比           
//        PWM_Off_CHANNEL(PWM_CHANNEL_2);
//        if (elapsed > 100)
//        {
//            state = 1;
//            last_time = get_systemtick_time();
//        }
//
//        break;
//
//    case 1:
//        L6562_Off(L6562_CHANNEL2);
//        if (elapsed > 100)
//        {
//            state = 2;
//            last_time = get_systemtick_time();
//        }
//        break;
//
//    case 2:
//        RELAY_Off(L6562_CHANNEL2);
//        if (elapsed > 100)
//        {
//            state = 3;
//            last_time = get_systemtick_time();
//        }
//        break;
//    case 3:
//
//        break;
//    }
//}

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

//
//void Close_1(void)
//{
//    // 检查通道 1 的值是否为 0，并且系统未完全关闭（ALL_CLOSE == 0）
//    if (UART_REG1 == 0x00 && ALL_CLOSE == 0)
//    {
//        LED1_Close();
//        CLOSE1 = 1;
//    }
//}
//
///*关闭2通道*/
//void Close_2(void)
//{
//    // 检查通道 2 的值是否为 0，并且系统未完全关闭（ALL_CLOSE == 0）
//    if (UART_REG2 == 0x00 && ALL_CLOSE == 0)
//    {
//        LED2_Close();
//        CLOSE2 = 1; // 设置 CLOSE2 标志为 1，表示通道 2 已关闭
//    }
//}
//
///* 输入保护的关灯操作 */
//void ResetPWMAndGPIO(void)
//{
//    //   PFC_SetLow();                                       // 关闭 PFC（功率因数校正）
//    PFC_Off();
//    //    __delay_ms(100);                                    // 延时 200ms，确保 PFC 完全关闭
//    /* 数字关灯时需要将一些 PID 参数清零 */
//
//    pid1.PWM_duty_cycle = 0; // 清零通道 1 的 PWM 占空比
//    pid1.integral = 0.0f; // 清零通道 1 的积分项
//    pid1.prev_error = 0.0f; // 清零通道 1 的上一次误差
//    pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
//    pid2.integral = 0.0f; // 清零通道 2 的积分项
//    pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
//    target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比
//    target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比
//    /* 关闭 3、4 通道，通过发送关灯指令，变相保护 */
//    // 关闭通道 2 的 L6562（PFC 控制器）
//    PWM_Off_CHANNEL(PWM_ALLOFF);
//    L6562_Off(L6562_CHANNEL1);
//    L6562_Off(L6562_CHANNEL2);
//
//    __delay_ms(100); // 确保硬件完全关闭
//    // 关闭通道 2 的继电器
//    RELAY_Off(RELAY_CHANNEL1);
//    RELAY_Off(RELAY_CHANNEL2);
//    pfc_flag = 1;
//}
//
//void LightsOffTask(void)
//{
//    ALL_Closed();
//    Close_1();
//    Close_2();
//}