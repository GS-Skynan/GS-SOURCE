/*******************************************************************************
 * @copyright:   2025,安徽金晟达生物电子科技股份有限公司. All rights reserved.
 * @file:        main.c
 * @description: 实现业务逻辑的循环调度
 * @author:      WTN
 * @date:        2025-11-20
 * @version:     LD-1CH-PIC16F18856-T-V1.0
 * @hardware:    PIC16F18856 FLASH/16KB RAM/2KB
 * 变更记录:
 * 版本  日期          作者        变更说明
 * ----------------------------------------------------------------------------
 * V1.0   2025-11-20    WTN        初始版本创建
 * 
 ******************************************************************************/
#pragma warning disable 1510 
#pragma warning disable 765 

#include "mcc_generated_files/mcc.h"

#include "Application/led_close/led_close_task.h"
#include "Application/led_dimming/led_dimming_task.h"
#include "Application/led_protect/protect_task.h"
#include "Application/nfc_read/nfc_read_task.h"
#include "Application/rs485_receive/rs485_task.h"
#include "Application/version_read/version_task.h"
#include "Drivers/GPIO/GPIO_driver.h"


#define RUN_TASK_FLAG 0 //运行任务的标志

#define TASK_20MS 20    // 短路保护任务间隔，每10ms个单位时间执行一次
#define TASK_30MS 30    // 开路保护任务间隔，每20ms个单位时间执行一次
#define TASK_40MS 40    // 温度保护任务间隔，每30ms个单位时间执行一次
#define TASK_50MS 50    // 电压输入保护任务间隔，每40ms个单位时间执行一次
#define TASK_100MS 100  // RS485消息处理任务间隔，每100ms个单位时间执行一次
#define TASK_120MS 120  // 调光动作任务间隔，每120ms个单位时间执行一次

typedef struct
{
    bool run;                    // 任务运行标志位，1表示需要执行，0表示不需要执行
    uint16_t timeCount;          // 任务计数器，用于倒计时
    uint16_t timeRload;          // 任务重载值，计数器归零后重新加载此值
    void (*pTaskFuncCb)(void);   // 任务回调函数指针
} tTaskComps;


static tTaskComps g_taskComps[] = {
    {RUN_TASK_FLAG, TASK_20MS, TASK_20MS, ShortCircuitProtect},      
    {RUN_TASK_FLAG, TASK_30MS, TASK_30MS, OpenCircuitProtect},      
    {RUN_TASK_FLAG, TASK_40MS, TASK_40MS, TempProtect},             
    {RUN_TASK_FLAG, TASK_50MS, TASK_50MS, VoltageInputProtection},   
    {RUN_TASK_FLAG, TASK_100MS, TASK_100MS, HandleRS485Message},     
    {RUN_TASK_FLAG, TASK_120MS, TASK_120MS, DimmingAction},         
};

// 计算任务数组中的任务总数
#define TASK_NUM_MAX  (sizeof(g_taskComps) / sizeof(g_taskComps[0]))

/**
*******************************************************************************
 * @brief 任务调度处理函数
 * @note 轮询遍历任务组件数组，执行所有标记为待运行的任务：
 *       1. 检查任务运行标志(run)是否为1
 *       2. 执行对应的任务回调函数(pTaskFuncCb)
 *       3. 清除任务运行标志，等待下次调度
 *       支持最大TASK_NUM_MAX个任务的调度管理
 *       采用轮询方式实现简单的协作式任务调度
 ******************************************************************************
*/
static void TaskHandler(void)
{
    for (uint8_t i = 0; i < TASK_NUM_MAX; i++)
    {
        if (g_taskComps[i].run)
        {
            g_taskComps[i].run = 0;                  // 清除运行标志
            g_taskComps[i].pTaskFuncCb();            // 执行任务回调函数
        }
    }
}

/**
*******************************************************************************
 * @brief 任务调度回调函数（定时器中断中调用）
 * @note 实现基于时间片的任务调度机制：
 *       1. 遍历所有任务组件，对计时器进行递减计数
 *       2. 当计时器归零时，设置任务运行标志并重载计时器
 *       3. 每个任务具有独立的执行周期(timeRload)
 *       4. 在定时器中断中周期性调用，实现精确的时间调度
 *       确保任务按照预设的时间间隔周期性地执行
 ******************************************************************************
*/
static void TaskScheduleCb(void)
{
    for (uint8_t i = 0; i < TASK_NUM_MAX; i++)
    {
        if (g_taskComps[i].timeCount)
        {
            g_taskComps[i].timeCount--;
            if (g_taskComps[i].timeCount == 0)
            {
                g_taskComps[i].run = 1;
                g_taskComps[i].timeCount = g_taskComps[i].timeRload;
            }
        }
    }
}

//初始化应用层
void ApplicationInit(void)
{
    StartReadNFC(); //NFC初始化
    GIPOInit();
    ReadI2C1Current(); //读取NFC存储的电流值
    VersionStore(); //写入版本软件号
    TaskScheduleCbReg(TaskScheduleCb); //注册任务回调函数
}

void main(void)
{
    SYSTEM_Initialize();
    
    //开启全局中断
    INTERRUPT_GlobalInterruptEnable();
    
    //开启外围设备中断
    INTERRUPT_PeripheralInterruptEnable();
    
    //应用程序初始化（任务创建、状态初始化等）
    ApplicationInit();

    while (1)
    {
        TaskHandler();
    }
}