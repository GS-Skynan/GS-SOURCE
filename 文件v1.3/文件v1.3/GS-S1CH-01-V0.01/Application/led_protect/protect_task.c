#include "../led_protect/protect_task.h"
#include "../led_close/led_close_task.h"
#include "../nfc_read/nfc_read_task.h"
#include "../../Drivers/ADC/adc_driver.h"
#include "../led_dimming/led_dimming_task.h"

/*** 输入电压保护阈值（单位：ADC原始值）***/
#define POWER_OFF_THRESHOLD         355     // 280V  输入电压关灯下限
#define POWER_ON_THRESHOLD          340     // 260V  输入最低电压下限（开机条件）
#define POWER_RESTORE_THRESHOLD     400     // 310V  输入电压功率恢复阈值
#define POWER_DOWN_THRESHOLD        370     // 295V  输入电压降功率阈值

/*** 温度保护阈值（单位：ADC原始值）***/
#define TEMP_PROTECTION_SHUTDOWN    600     // 温度上限关机阈值（最高保护）
#define TEMP_PROTECTION_POWER_DOWN1 540     // 温度降功率范围上限
#define TEMP_PROTECTION_POWER_DOWN2 520     // 温度降功率范围下限
#define TEMP_PROTECTION_RESTORE     460     // 温度恢复正常工作阈值

/*** 输出开路和过功率保护阈值 ***/
#define OPEN_PROTECTION_THRESHOLD   555     // 开路保护电压阈值
#define MAX_POWER_THRESHOLD         915     // 最大功率限制阈值（单位：W）

/*** 输出短路和欠压保护阈值（单位：ADC原始值）***/
#define SHORT_PROTECTION_THRESHOLD  50      // 短路保护阈值（输出电压极低）
#define LOW_VOLTAGE_PROTECTION1     55      // 欠压保护范围下限
#define LOW_VOLTAGE_PROTECTION2     220     // 欠压保护范围上限（150V对应值）


typedef enum
{
    VSTATE_OFF = 0, // 关机状态
    VSTATE_ON, // 开机状态  
    VSTATE_POWER_DOWN // 降功率状态
} eVState;

uint16_t g_uVintValue;
uint16_t g_uTempValue;
uint16_t g_uVoutValue;
uint16_t g_uCurrentValue;

uint8_t g_uTempProtectState = 0;
uint8_t g_uShortCircuitFlag = 0;

bool g_bLowVoltageFlag = false;
bool g_bPowerDownFlag = false;
bool g_bUnderVoltageFlag = true;

bool g_bOpenCircuitFlag = false;
bool g_bOpenShortStateFlag = false;
bool g_bRemoveProtectionFlag = false;

float g_fMaxPowerLimit = 0.0f;
float g_fVoutReal_2 = 0.0f;

uint8_t g_uProtectState = 0;

/**
 *******************************************************************************
 * @brief 电压输入保护状态机
 * @note 实现输入电压的智能保护控制，包含三种状态：
 *       VSTATE_OFF：关机状态，检测开机条件
 *       VSTATE_ON：正常工作状态，监测电压跌落
 *       VSTATE_POWER_DOWN：降功率状态，等待电压恢复或进一步跌落
 *       根据不同的时间阶段（5秒前后）采用不同的电压阈值
 *       确保系统在电压异常时能够安全保护，电压恢复时能够自动恢复正常工作
 ******************************************************************************
 */
void VoltageInputProtection(void)
{
    static eVState state = VSTATE_OFF;

    g_uVintValue = ADC_Result(channel_Vin);

    switch (state) {
    case VSTATE_OFF:
        if ((g_bInputActiveTime == false) && g_uVintValue > POWER_ON_THRESHOLD) //V>260V  开机5S前
        {
            state = VSTATE_ON;
            g_bLowVoltageFlag = false;
            g_bUnderVoltageFlag = false;
        }
        else if ((g_bInputActiveTime == true) && g_uVintValue > POWER_RESTORE_THRESHOLD) //V>310V  开机5S后
        {
            state = VSTATE_ON;
            g_bLowVoltageFlag = false;
            g_bPowerDownFlag = false;
            g_bWaitInputStable = false;
            g_bUnderVoltageFlag = false;
        }
        else if (g_uVintValue < POWER_ON_THRESHOLD)
        {
            g_bUnderVoltageFlag = true;
        }

        break;

    case VSTATE_ON:
        if (g_bInputActiveTime == true) //5s时间到还是V<280  关机               
        {
            if (g_uVintValue < POWER_OFF_THRESHOLD) //V<280     
            {
                g_bLowVoltageFlag = true;
                state = VSTATE_OFF;
            }
            else if (POWER_OFF_THRESHOLD < g_uVintValue && g_uVintValue < POWER_DOWN_THRESHOLD) //V<295
            {
                state = VSTATE_POWER_DOWN;
                g_bPowerDownFlag = true;
            }
        }
        break;

    case VSTATE_POWER_DOWN:
        if (g_uVintValue > POWER_RESTORE_THRESHOLD) //V>310 恢复
        {
            state = VSTATE_ON;
            g_bPowerDownFlag = false;
        }
        else if (g_uVintValue < POWER_OFF_THRESHOLD) //V<280 关机
        {
            g_bLowVoltageFlag = true;
            g_bWaitInputStable = false;
            state = VSTATE_OFF;
        }
        break;
    }
}

/**
 *******************************************************************************
 * @brief 温度保护控制函数
 * @note 根据温度采样值进行三级保护控制：
 *       高温关灯：温度≥TEMP_PROTECTION_RESTORE时完全关闭
 *       中等高温降功率：温度在TEMP_PROTECTION_POWER_DOWN1和TEMP_PROTECTION_POWER_DOWN2之间时降低功率
 *       正常温度：温度<TEMP_PROTECTION_RESTORE时正常工作
 *       采用滞回控制，避免在临界温度点频繁切换状态
 ******************************************************************************
 */
void TempProtect(void)
{
    g_uTempValue = ADC_Result(channel_Temp);

    if (g_uTempValue >= TEMP_PROTECTION_RESTORE)
    {
        g_uTempProtectState = 2; // 关灯   
    }

    if (g_uTempValue < TEMP_PROTECTION_POWER_DOWN1 && g_uTempValue >= TEMP_PROTECTION_POWER_DOWN2) //
    {
        g_uTempProtectState = 1; //降功率        
    }

    if (g_uTempValue < TEMP_PROTECTION_RESTORE)
    {
        g_uTempProtectState = 0; //未超温       
    }
}

/**
 *******************************************************************************
 * @brief 开路和过功率保护函数
 * @note 实现三重保护机制：
 *       1. 开路保护：输出电压超过OPEN_PROTECTION_THRESHOLD时触发
 *       2. 过功率保护：计算实时功率，超过MAX_POWER_THRESHOLD(915W)时触发
 *       3. 动态过功率保护：根据NFC电流值动态计算功率阈值，超过802W时触发
 *       所有保护触发时设置开路标志，并在首次触发时记录状态
 * @warning 保护触发后将强制关灯，确保系统安全
 ******************************************************************************
 */

void OpenCircuitProtect(void)
{
    static float s_fIoutVal;
    static float s_fVoutVal;

    g_uVoutValue = ADC_Result(channel_Vout);
    g_uCurrentValue = ADC_Result(channel_Iout);

    s_fIoutVal = (float) g_uCurrentValue / 263;
    s_fVoutVal = (float) g_uVoutValue / 1.432;

    if (s_fVoutVal > OPEN_PROTECTION_THRESHOLD)
    {
        g_bOpenCircuitFlag = true;
        if (g_bOpenVolFlag == true)
        {
            g_bOpenShortStateFlag = true;
            g_bOpenVolFlag = false;
        }
    }

    g_fMaxPowerLimit = s_fIoutVal * s_fVoutVal; //最大功率大于915W就关灯
    if (g_fMaxPowerLimit >= MAX_POWER_THRESHOLD)
    {
        g_bOpenCircuitFlag = true;
        if (g_bOpenVolFlag == true)
        {
            g_bOpenShortStateFlag = true;
            g_bOpenVolFlag = false;
        }
    }
    g_fVoutReal_2 = (float) 800 / g_uNfcCurreValue * 1000;
    if (s_fVoutVal > g_fVoutReal_2 && g_uNfcCurreValue <= 1820) // 输入功率大于802W关灯
    {
        g_bOpenCircuitFlag = true;
        if (g_bOpenVolFlag == true)
        {
            g_bOpenShortStateFlag = true;
            g_bOpenVolFlag = false;
        }
    }

}

/**
 *******************************************************************************
 * @brief 输出短路和欠压保护函数
 * @note 实现两级输出保护机制：
 *       1. 短路保护：输出电压低于SHORT_PROTECTION_THRESHOLD时触发（严重异常）
 *       2. 欠压保护：输出电压在LOW_VOLTAGE_PROTECTION1~2之间时触发（轻度异常）
 *       仅在电源稳定后(g_bPwrStableFlag=1)启用保护检测
 *       保护触发时设置相应标志并记录异常状态
 * @warning 保护触发后将强制关灯，防止设备损坏
 ******************************************************************************
 */
void ShortCircuitProtect(void) //输出短路和欠压保护
{
    if (g_bPwrStableFlag == 0) return;
    if (g_uVoutValue < SHORT_PROTECTION_THRESHOLD) // 非正常关灯状态下，如果输出电压为0的时间大于3s钟，则关闭输出电压
    {
        g_uShortCircuitFlag = 1;
        if (g_bShortFlag == 1)
        {
            g_bOpenShortStateFlag = 1;
            g_bShortFlag = 0;
        }
    }

    else if (g_uVoutValue > LOW_VOLTAGE_PROTECTION1 && g_uVoutValue < LOW_VOLTAGE_PROTECTION2) // 非正常关灯状态下，如果输出电压小于150V，则1s后关机
    {
        g_uShortCircuitFlag = 2;
        if (g_bLowVolFlag == 1)
        {
            g_bOpenShortStateFlag = 1;
            g_bLowVolFlag = 0;
        }
    }
    else
    {
        g_uShortCircuitFlag = 0;
        g_bLowVolFlag = 0;
        g_bShortFlag = 0;
    }
}

/**
 *******************************************************************************
 * @brief 综合保护检查函数
 * @return bool：true-保护触发，需要关灯；false-正常状态，可继续工作
 * @note 检查各类保护条件：
 *       1. 保护屏蔽标志（调试用）
 *       2. 调光等级无效（<0x01）
 *       3. 输入欠压保护
 *       4. 开路/短路保护
 *       5. 输入低压保护（需结合输入稳定标志）
 *       6. 过温保护（关灯状态）
 *       7. 开机延时保护
 *       设置对应的保护状态码g_uProtectState用于故障诊断
 ******************************************************************************
 */
bool ProtectionCheck(void)
{
    if (g_bRemoveProtectionFlag == true) //是否屏蔽保护
    {
        g_uDimmingLevel = 0X64;
        return false;
    }

    if (g_uDimmingLevel < 0x01) //是否接收有效数据
    {
        g_uProtectState = 1;
        return true;
    }

    if (g_bUnderVoltageFlag == true) //欠压保护
    {
        g_uProtectState = 2;
        return true;
    }

    if (g_bOpenShortStateFlag == 1) //开路保护
    {
        g_uProtectState = 3;
        return true;
    }

    if (g_bLowVoltageFlag == 1) //低压保护
    {
        g_uProtectState = 4;
        if (g_bWaitInputStable == 1)
        {
            return true;
        }
    }

    if (g_uTempProtectState == 2) //过温保护
    {
        g_uProtectState = 5;
        return true;
    }

    if (g_bCmdDelayFlag == 0) //开机延时
    {
        g_uProtectState = 6;
        return true;
    }

    return false;
}

