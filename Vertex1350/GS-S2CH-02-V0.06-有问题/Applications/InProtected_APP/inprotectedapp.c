#include "inprotectedapp.h"
#include "nfc.h"
#include "adc_driver.h"
#include "closeled.h"
#include "readcurrent.h"
#include "dimming.h"
#include "out_protected.h"
#include "usbcom.h"
#include "ticktime.h"


/*** 输入电压保护阈值（单位：ADC原始值）***/
#define POWER_OFF_THRESHOLD         1750     // 280V  输入电压关灯下限
#define POWER_ON_THRESHOLD          1650     // 260V  输入最低电压下限（开机条件）
#define POWER_RESTORE_THRESHOLD     2100     // 310V  输入电压功率恢复阈值
#define POWER_DOWN_THRESHOLD        1850     // 295V  输入电压降功率阈值


uint8_t start_flag = 1; //注意,启动标识，1：表示系统启动

typedef enum
{
    LED_STATE_OFF = 0, // 关机状态
    LED_STATE_ON, // 开机状态  
    LED_STATE_POWER_DOWN // 降功率状态
} eVState;


/*变量定义*/
static uint16_t state = 0; // 状态变量：0=未启动，1=启动中，2=运行中

bool g_bLowVoltageFlag = false;
bool g_bPowerDownFlag = false;


void VoltageInputProtection(void)
{
    static eVState state = LED_STATE_OFF;
    static uint8_t startup_phase = 0; // 0:开机5秒内, 1:开机5秒后
    static uint32_t state_entry_time = 0; // 进入当前状态的时间
    static uint32_t power_on_time = 0; // 开机时间（关键！）
    static bool off_delay_done = false; // 新增：OFF状态3秒等待是否完成

    uint32_t elapsed_in_state = get_elapsed_since(state_entry_time);
    uint32_t elapsed_since_power_on = get_elapsed_since(power_on_time);
    uint16_t g_uVintValue = ADC_Result(Input_voltage_ADC);

    // 首次运行时记录开机时间
    static bool first_run = true;
    if (first_run)
    {
        power_on_time = get_systemtick_time();
        state_entry_time = get_systemtick_time();
        off_delay_done = true; // 初始未完成
        first_run = false;
    }

    // 更新开机阶段
    if (startup_phase == 0 && elapsed_since_power_on >= 5000)
    {
        startup_phase = 1;
    }

    switch (state) {
    case LED_STATE_OFF:
        // 检查3秒等待是否完成
        if (!off_delay_done)
        {
            // 还在等待3秒
            if (elapsed_in_state >= 3000)
            {
                start_flag = 0; // 3秒后设置标志
                off_delay_done = true; // 标记等待完成
            }
        }
        else
        {
            if ((startup_phase == 0) && (g_uVintValue > 1650))
            {
                state = LED_STATE_ON;
                state_entry_time = get_systemtick_time();
                off_delay_done = false; // 下次进入OFF要重新等待
            }

            if ((startup_phase == 1) && (g_uVintValue > 2100))
            {
                state = LED_STATE_ON;
                state_entry_time = get_systemtick_time();
                off_delay_done = false; // 下次进入OFF要重新等待
            }
        }
        break;

    case LED_STATE_ON:

        g_bPowerDownFlag = 0;
        start_flag = 1;

        if (startup_phase == 1)
        {
            // 开机5秒后：立即检查电压
            if (g_uVintValue < 1700)
            {
                state = LED_STATE_OFF;
                state_entry_time = get_systemtick_time();
                off_delay_done = false; // 进入OFF，开始新等待
            }
            else if (g_uVintValue > 1750 && g_uVintValue < 1850)
            {
                state = LED_STATE_POWER_DOWN;
                state_entry_time = get_systemtick_time();
            }
        }
        else if (startup_phase == 0)
        {
            // 开机5秒内：等待5秒后检查
            if (g_uVintValue < 1700)
            {
                startup_phase = 1; // 标记已经过了5秒
                state = LED_STATE_OFF;
                state_entry_time = get_systemtick_time();
                off_delay_done = false; // 进入OFF，开始新等待
            }
            else if (g_uVintValue > 1750 && g_uVintValue < 1850)
            {
                state = LED_STATE_POWER_DOWN;
                state_entry_time = get_systemtick_time();
            }
        }
        break;

    case LED_STATE_POWER_DOWN:
        g_bPowerDownFlag = 1;
        if (g_uVintValue > 2100)
        {
            state = LED_STATE_ON;
            state_entry_time = get_systemtick_time();
        }
        else if (g_uVintValue < 1700)
        {
            state = LED_STATE_OFF;
            state_entry_time = get_systemtick_time();
            off_delay_done = false; // 进入OFF，开始新等待
        }
        break;
    }
}


void IntProtectedTask(void)
{
    VoltageInputProtection();
}

