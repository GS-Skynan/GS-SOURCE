/**
  Generated Interrupt Manager Source File

  @Company:
    Microchip Technology Inc.

  @File Name:
    interrupt_manager.c

  @Summary:
    This is the Interrupt Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description:
    This header file provides implementations for global interrupt handling.
    For individual peripheral handlers please see the peripheral driver for
    all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC16F18855
        Driver Version    :  2.04
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above or later
        MPLAB 	          :  MPLAB X 6.00
 */

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
 */

#include "mcc.h"
#include "../Application/nfc_read/nfc_read_task.h"
#include "../Application/led_protect/protect_task.h"
#include "../Drivers/GPIO/GPIO_driver.h"
#include "../Application/led_dimming/led_dimming_task.h"
#include "string.h"
#include "../Drivers/GPIO/GPIO_driver.h"

#define DIMMING_INCREASE_STEP 10    //调光周期
#define RX_BUFFER_SIZE 40           //数据缓存的长度

#define RS485_TIMEOUT_VALUE 100   //串口接受数据超时时间

volatile uint16_t g_uTimeCount = 0;
volatile uint16_t g_u8DimmingUpTime = 0;
volatile uint16_t g_uLedTime;

uint8_t Rx_Buffer_ISR[RX_BUFFER_SIZE];
uint8_t Rx_Length = 0;
uint16_t g_uRs485TimeOut = 0;

static uint8_t g_uOvervoltageUpTime = 0;
static uint16_t g_uShortCircuitUpTime = 0;
static uint16_t g_uUndervoltageUpTime = 0;
static uint16_t g_uOpenProtectionUpTime = 0;
static uint8_t g_uInputTime5Sce = 0;
static uint8_t g_uPowerOnCmdDelay = 0;
static uint16_t g_uDebounceUpTime = 0;

bool g_bRs485Flag = false;
bool g_bInputActiveTime = false;


bool g_bShortFlag = false;
bool g_bLowVolFlag = false;
bool g_bOpenVolFlag = false;

bool g_bWaitInputStable = false;
bool g_bCmdDelayFlag = false;

uint8_t DubugTime, PrintfFlag;

static void (*g_pTaskScheduleFunc)(void);

void TaskScheduleCbReg(void (*pFunc)(void))
{
    g_pTaskScheduleFunc = pFunc;
}

void __interrupt() INTERRUPT_InterruptManager(void)
{
    /************************************串口中断***********************************/
    uint8_t UartReceivedData;

    if (PIR3bits.RCIF == 1)
    {
        UartReceivedData = RCREG;
        if (Rx_Length < sizeof (Rx_Buffer_ISR))
        {
            Rx_Buffer_ISR[Rx_Length] = UartReceivedData;
            Rx_Length++;
            g_uRs485TimeOut = RS485_TIMEOUT_VALUE;
        }
        else
        {
            Rx_Length = 0;
            memset(Rx_Buffer_ISR, 0, sizeof (Rx_Buffer_ISR));
        }

        PIR3bits.RCIF = 0;
    }
    /*********************************定时器0中断***********************************/

    if (PIR0bits.TMR0IF == 1) //1ms 定时器计数标志
    {
        g_uTimeCount++;
        if (g_uTimeCount >= 200)
        {
            g_uTimeCount = 0;
            g_uPowerOnCmdDelay++;
            g_uInputTime5Sce++;
            DubugTime++;
            if (g_bLowVoltageFlag)g_uOvervoltageUpTime++;
        }

        //        if(DubugTime>=15)
        //        {
        //            DubugTime=0;
        //            PrintfFlag=1;
        //        }

        if (g_uRs485TimeOut > 0)
        {
            g_uRs485TimeOut--;
            if (g_uRs485TimeOut == 0 && Rx_Length > 0)
            {
                // 超时时间到，表示一帧接收完成
                g_bRs485Flag = 1;
            }
        }

        if (SHIELD_PROTECT_RB7 == 0)
        {
            g_uDebounceUpTime++;
            if (g_uDebounceUpTime >= 1000)
            {
                g_bRemoveProtectionFlag = true;
            }
        }
        else
        {
            g_bRemoveProtectionFlag = false;
            g_uDebounceUpTime = 0;
        }


        if (g_bPwrStableFlag == 1)g_u8DimmingUpTime++;
        else
        {
            g_u8DimmingUpTime = 0;
        }

        if (g_uInputTime5Sce >= 25) //5s后开始进入开灯后的过欠压判断
        {
            g_uInputTime5Sce = 0;
            g_bInputActiveTime = 1;
        }

        if (g_uPowerOnCmdDelay >= 6) //1.2s后进入开灯指令判断
        {
            g_uPowerOnCmdDelay = 0;
            g_bCmdDelayFlag = 1;

        }

        if (g_uOvervoltageUpTime >= 15) //电压小于280后约3s关灯
        {
            g_bWaitInputStable = 1;
            g_uOvervoltageUpTime = 0;
        }



        if (g_bOpenCircuitFlag == 1)
        {
            g_uOpenProtectionUpTime++;
            if (g_uOpenProtectionUpTime >= 1000)
            {
                g_uOpenProtectionUpTime = 0;
                g_bOpenVolFlag = 1;
                g_bOpenCircuitFlag = 0;
            }
        }



        if (g_uShortCircuitFlag == 1)
        {
            g_uShortCircuitUpTime++;
            if (g_uShortCircuitUpTime >= 400) //输出短路保护计时                         
            {
                g_uShortCircuitUpTime = 0;
                g_bShortFlag = 1;
                g_uShortCircuitFlag = 0;
            }
        }

        if (g_uShortCircuitFlag == 2)
        {
            g_uUndervoltageUpTime++;
            if (g_uUndervoltageUpTime >= 5000) //不是短路，但灯压小于150V后5s关灯                     
            {
                g_uUndervoltageUpTime = 0;
                g_bLowVolFlag = 1;
                g_uShortCircuitFlag = 0;
            }
        }

        if (g_u8DimmingUpTime >= DIMMING_INCREASE_STEP)
        {
            g_u8DimmingUpTime = 0;
            DimmingValueDutyCycle(g_uPwmDimmingValue);
        }


        TMR0H = 0xFF;
        TMR0L = 0xD0;
        TMR0IF = 0;
    }

    /*********************************定时器1中断***********************************/
    if (PIR4bits.TMR1IF == 1)
    {
        PIR4bits.TMR1IF = 0;

        g_uLedTime++;
        if (g_uLedTime == 500)
        {
            Led_On();
        }
        if (g_uLedTime == 1000)
        {
            g_uLedTime = 0;
            Led_Off();
        }
        if (g_pTaskScheduleFunc == NULL)
        {
            return;
        }
        g_pTaskScheduleFunc();

        TMR1H = 0xFC;
        TMR1L = 0x18;
    }
}