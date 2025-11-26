#include "../led_dimming/led_dimming_task.h"
#include "../led_close/led_close_task.h"
#include "../led_protect/protect_task.h"
#include "../nfc_read/nfc_read_task.h"
#include "../../Drivers/GPIO/GPIO_driver.h"

#define NFC_CURRENT_RANGE_MAX 2460   //NFC 当前范围最大值
#define NFC_CURRENT_RANGE_MIN 1550   //NFC 当前范围最小值

#define PWM_CURRENT_FIXED_VALUE 300  //PWM 电流固定值

uint16_t g_uDimmingLevel = 0X64;
uint16_t g_uPwmDimmingValue = 300;
uint16_t g_uPwmOut = 0;


bool g_bPowerOnFlag = true;
bool g_bPwrStableFlag = false;


/**
*******************************************************************************
 * @brief 获取调光等级范围并计算PWM调光值
 * @note 根据当前调光等级g_uDimmingLevel计算对应的PWM输出值
 *       低亮度范围(0x14~0x64)：使用线性公式计算 
 *       5.528*NFC电流值对应的占空比+38 = PWM 提供平滑的亮度变化
 *       高亮度范围(>0x64)：直接使用NFC设置的调光值
 *       确保调光等级不低于最小值0x14(20)
 ******************************************************************************
*/
static void GetDimmingLevelRange(void)
{
    const uint8_t MIN_DIMMING_LEVEL = 0x14; // 20
    const uint8_t LOW_RANGE_MAX = 0x64;

    if (g_uDimmingLevel <= MIN_DIMMING_LEVEL)g_uDimmingLevel = MIN_DIMMING_LEVEL;
    if (g_uDimmingLevel <= LOW_RANGE_MAX)
    {
        float dimmingValue = 5.528f * g_uDimmingLevel + 38.0f;
        g_uPwmDimmingValue = (uint16_t) (dimmingValue + 0.5f);
    }
    else
    {
        g_uPwmDimmingValue = g_nfcDimmingVal;
    }
}


/**
*******************************************************************************
 * @brief 调光值占空比平滑调整函数
 * @param dimmingValue：目标调光值（输入，0~1023）
 * @note 采用双速调整机制实现平滑的亮度过渡：
 *       快速调整：当与目标值差异较大时（>20），以步长5快速接近
 *       慢速调整：当接近目标值时（≤20），以步长1精细调整
 *       死区控制：避免在目标值附近振荡
 *       输出范围限制：确保PWM输出值在0~1023范围内
 ******************************************************************************
*/
void DimmingValueDutyCycle(uint16_t dimmingValue)
{

#define FAST_STEP 5
#define SLOW_STEP 1
#define DEAD_ZONE 20

    if (dimmingValue > 1023) dimmingValue = 1023;

    int16_t difference = (int16_t) g_uPwmOut - (int16_t) dimmingValue;

    // 快速调整区域
    if (difference < -DEAD_ZONE)
    {
        g_uPwmOut += FAST_STEP;
    }
    else if (difference > DEAD_ZONE)
    {
        g_uPwmOut -= FAST_STEP;
    }
        // 慢速精细调整区域
    else if (difference < 0)
    {
        g_uPwmOut += SLOW_STEP;
    }
    else if (difference > 0)
    {
        g_uPwmOut -= SLOW_STEP;
    }

    if (g_uPwmOut >= 1023) g_uPwmOut = 1023;
    if (g_uPwmOut <= 0) g_uPwmOut = 0;

    PWM6_LoadDutyValue(g_uPwmOut);
}

/**
*******************************************************************************
 * @brief 调光动作执行函数
 * @note 综合处理调光逻辑，包括保护检查、调光值计算、异常状态处理和启动流程
 *       按优先级顺序执行：保护检查 > NFC电流范围判断 > 异常状态处理 > 启动流程
 *       确保系统在各种状态下都能安全可靠地工作
 ******************************************************************************
*/
void DimmingAction(void)
{
   //保护校验
    if (ProtectionCheck() == true)
    {
        LightPowerOff();
        return;
    }



    if (NFC_CURRENT_RANGE_MIN <= g_uNfcCurreValue && g_uNfcCurreValue <= NFC_CURRENT_RANGE_MAX)
    {
        GetDimmingLevelRange();
    }
    else
    {
        g_uPwmDimmingValue = PWM_CURRENT_FIXED_VALUE;
    }

   //过温和低压降功率
    if (g_bPowerDownFlag == 1 || g_uTempProtectState == 1)
    {
        g_uPwmDimmingValue = (30 * g_nfcDimmingVal) / 100;
    }

   //启动开灯流程
    if (g_bPowerOnFlag == 1)
    {
        LightPowerOn();
        g_bPwrStableFlag = 1;
        g_bPowerOnFlag = 0;
    }

}