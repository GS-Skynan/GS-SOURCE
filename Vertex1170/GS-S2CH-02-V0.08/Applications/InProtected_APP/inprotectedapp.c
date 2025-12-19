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
#define POWER_OFF_THRESHOLD         1700     // 280V  输入电压关灯下限
#define POWER_ON_THRESHOLD          1650     // 260V  输入最低电压下限（开机条件）
#define POWER_DOWN_THRESHOLD        1850     // 295V  输入电压降功率阈值
#define POWER_RESTORE_THRESHOLD     2100     // 310V  输入电压功率恢复阈值

typedef enum
{
    LED_INPUT_STATE_OFF = 0, // 关机状态
    LED_INPUT_STATE_ON, // 开机状态  
    LED_INPUT_STATE_POWER_DOWN // 降功率状态
} eINPUTPROTECT_STATE;



uint8_t g_bPowerDownFlag = 0;
uint8_t g_uInputVoltageNormalFlag = 1; //注意,启动标识，1：表示系统启动

/**
 * @brief 输入保护功能
 * @Function：
 * 1. 小于280V灭灯
 * 2. 【280,310】：开灯但是降一半功率
 * 3. 310以上恢复功率
 * 实际测量：   280V灯亮时候  ADC采集值区间 【1683,1740】            
 *             280灯不亮时候  ADC采集值区间 【1931,1986】
 *             310V灯亮时候   ADC采集值区间 【1871,1935】
 * @note    应在系统启动时调用一次，之后在PID执行过程中调用，确保迅速反应
 * @warning 调用前需确保相关硬件（如ADC、传感器）已上电稳定
 */

void VoltageInputProtection(void)
{
    static eINPUTPROTECT_STATE input_state = LED_INPUT_STATE_OFF;
    static uint8_t startup_phase = 0; // 0:开机5秒内, 1:开机5秒后
    static uint32_t LastInputProtectionTime = 0; // 开机时间（关键！）
    static bool off_delay_done = false; // OFF状态3秒等待是否完成
    
 //   static uint32_t state_entry_time = 0; // 进入当前状态的时间
    // uint32_t elapsed_in_state = get_elapsed_since(state_entry_time);
    uint32_t NowInputProtectionTime = get_elapsed_since(LastInputProtectionTime);
    uint16_t g_uInputVoltage = ADC_Result2(Input_voltage_ADC);

    // 首次运行时记录开机时间
    static bool first_run = true;
    if (first_run)
    {
        LastInputProtectionTime = get_systemtick_time();
        //   state_entry_time = get_systemtick_time();
        off_delay_done = true; // 初始未完成
        first_run = false;
    }

    // 更新开机阶段
    if (startup_phase == 0 && NowInputProtectionTime >= 5000)
    {
        startup_phase = 1;
    }

    switch (input_state) {
    case LED_INPUT_STATE_OFF:
        // 检查3秒等待是否完成
        if (!off_delay_done)
        {
            // 还在等待3秒
            if (NowInputProtectionTime >= 3000)
            {
                g_uInputVoltageNormalFlag = 0; // 3秒后设置标志
                off_delay_done = true; // 标记等待完成
            }
            if (g_uInputVoltage > 2100)
            {
                input_state = LED_INPUT_STATE_ON;
                LastInputProtectionTime = get_systemtick_time();
            }
        }
        else
        {
            if ((startup_phase == 0) && (g_uInputVoltage > 1650))
            {
                input_state = LED_INPUT_STATE_ON;
                LastInputProtectionTime = get_systemtick_time();
                off_delay_done = false; // 下次进入OFF要重新等待
            }

            if ((startup_phase == 1) && (g_uInputVoltage > 2100))
            {
                input_state = LED_INPUT_STATE_ON;
                LastInputProtectionTime = get_systemtick_time();
                off_delay_done = false; // 下次进入OFF要重新等待
            }
        }
        break;

    case LED_INPUT_STATE_ON:

        g_bPowerDownFlag = 0;
        g_uInputVoltageNormalFlag = 1;

        if (startup_phase == 1)
        {
            // 开机5秒后：立即检查电压
            if (g_uInputVoltage < 1700)
            {
                input_state = LED_INPUT_STATE_OFF;
                LastInputProtectionTime = get_systemtick_time();
                off_delay_done = false; // 进入OFF，开始新等待
            }
            else if (g_uInputVoltage > 1750 && g_uInputVoltage < 1850)
            {
                input_state = LED_INPUT_STATE_POWER_DOWN;
                LastInputProtectionTime = get_systemtick_time();
            }
        }

        else if (startup_phase == 0)
        {
            // 开机5秒内：等待5秒后检查
            if (g_uInputVoltage < 1700)
            {
                startup_phase = 1; // 标记已经过了5秒
                input_state = LED_INPUT_STATE_OFF;
                LastInputProtectionTime = get_systemtick_time();
                off_delay_done = false; // 进入OFF，开始新等待
            }
            else if (g_uInputVoltage > 1750 && g_uInputVoltage < 1850)
            {
                input_state = LED_INPUT_STATE_POWER_DOWN;
                LastInputProtectionTime = get_systemtick_time();
            }
        }
        break;

    case LED_INPUT_STATE_POWER_DOWN:
        g_bPowerDownFlag = 1;
        if (g_uInputVoltage > 2100)
        {
            input_state = LED_INPUT_STATE_ON;
            LastInputProtectionTime = get_systemtick_time();
        }
        else if (g_uInputVoltage < 1700)
        {
            input_state = LED_INPUT_STATE_OFF;
            LastInputProtectionTime = get_systemtick_time();
            off_delay_done = false; // 进入OFF，开始新等待
        }
        break;
    }
}

void IntProtectedTask(void)
{
    VoltageInputProtection();
}

