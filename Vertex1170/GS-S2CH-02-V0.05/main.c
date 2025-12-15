/*
 * MAIN Generated Driver File
 * 
 * @file main.c
 * 
 * @defgroup main MAIN
 * 
 * @brief This is the generated driver implementation file for the MAIN driver.
 *
 * @version MAIN Driver Version 1.0.2
 *
 * @version Package Version: 3.1.2
 */

/*
? [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
 */

#include "mcc_generated_files/system/system.h"
#include "usbcom.h"
#include "inprotectedapp.h"
#include "TEMP_PROTECTED.h"
#include "closeled.h"
#include "readcurrent.h"
#include "powercomp.h"
#include "closeled.h"
#include "ticktime.h"
#include "dimming.h"
#include "out_protected.h"
#include "GPIO_driver.h"
#include "version_task.h"
#include "pwm_driver.h"
#include "arithmetic.h"
#include "pid_controller.h"
/*
    Main application
 */

typedef struct
{
    uint8_t run;
    uint16_t timCount;
    uint16_t timRload;
    void (*pTaskFuncCb)(void);
} tTaskComps;


static tTaskComps g_taskComps[] = {
    {0, 100, 100, Rs485Task},
    {0, 100, 100, IntProtectedTask},

    //    {0, 1000, 1000, TimeCalculationTask},
    {0, 500, 500, TemapProtectedTask},
    {0, 10, 10, DimmingControlTask},
    {0, 20, 20, OutProtectedTask},
    {0, 10, 10, LED_Task},
 //   {0, 5000, 5000, Display},
};

#define TASK_NUM_MAX  (sizeof(g_taskComps) / sizeof(g_taskComps[0]))

static void TaskHandler(void)
{
    for (uint8_t i = 0; i < TASK_NUM_MAX; i++)
    {
        if (g_taskComps[i].run)
        {
            g_taskComps[i].run = 0;
            g_taskComps[i].pTaskFuncCb();
        }
    }
}

static void TaskScheduleCb(void)
{
    for (uint8_t i = 0; i < TASK_NUM_MAX; i++)
    {
        if (g_taskComps[i].timCount)
        {
            g_taskComps[i].timCount--;
            if (g_taskComps[i].timCount == 0)
            {
                g_taskComps[i].run = 1;
                g_taskComps[i].timCount = g_taskComps[i].timRload;
            }
        }
    }
}

static void APPInit(void)
{
    GPIO_APPInit();
    Time0_AppInit();
//    PIDDimming_Init();
//    Time2_AppInit();
    UsbcomAppInit();
    PID_Init_Parameters(); // 初始化两路 PID 控制器
    init_all_pwm_regulators();
    NFCRead_APPInit();
    TaskScheduleCbReg(TaskScheduleCb); 
    
    VersionStore();
}

int main(void)
{

    SYSTEM_Initialize();

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts 
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global Interrupts 
    // Use the following macros to: 
    // Enable the Global Interrupts 
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Global High Interrupts 
    INTERRUPT_GlobalInterruptHighEnable();

    // Disable the Global High Interrupts 
    //INTERRUPT_GlobalInterruptHighDisable(); 

    // Enable the Global Low Interrupts 
    INTERRUPT_GlobalInterruptLowEnable();

    // Disable the Global Low Interrupts 
    //INTERRUPT_GlobalInterruptLowDisable(); 

    // Disable the Global Interrupts 
    //INTERRUPT_GlobalInterruptDisable(); 

    APPInit();
    __delay_ms(1500);

    while (1)
    {
       TaskHandler();
    }
}
