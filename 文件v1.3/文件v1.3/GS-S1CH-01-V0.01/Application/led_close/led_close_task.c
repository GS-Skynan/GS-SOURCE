#include "../led_close/led_close_task.h"
#include "../led_protect/protect_task.h"
#include "../../Drivers/GPIO/GPIO_driver.h"
#include "../led_dimming/led_dimming_task.h"

/**
 *******************************************************************************
 * @brief 关闭输出LED灯
 * @note 清除标志位 清除定时器值 清除PWM值 关PFC-->L6562-->继电器
 * @param NULL
 * @return NULL
 *******************************************************************************
 */
void LightPowerOff (void)
{
  g_uPwmOut = 0;
  PWM6_LoadDutyValue (0);
  g_bPowerOnFlag = 1;
  PFC_Off ();
  L6562_Off (L6562_CHANNEL1);
  __delay_ms (70);
  RELAY_Off (RELAY_CHANNEL1);
  g_bPwrStableFlag = 0;                 //此标志代表灯亮没亮
}


/**
 *******************************************************************************
 * @brief 打开输出LED灯
 * @note 打开PFC-->继电器-->L6562
 * @param NULL
 * @return NULL
 *******************************************************************************
 */
void LightPowerOn (void)
{
  PFC_On ();
  __delay_ms (600); //大约700ms
  RELAY_On (RELAY_CHANNEL1);
  __delay_ms (120); //大约70ms           
  L6562_On (L6562_CHANNEL1);
}
