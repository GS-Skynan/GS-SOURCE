#include "temp_protected.h"
#include "dimming.h"
#include "nfcapp.h"
#include "inprotectedapp.h"
#include "adc_driver.h"
#include "closeled.h"
#include "readcurrent.h"
#include "record.h"
#include "nfc.h"


uint8_t T_flag = 0;
uint8_t Temp_Flag;
uint8_t Temp_protected_flag = 0;
uint8_t Temp_protected_flag;

void Temp_Protected(void)
{
    adc_result_t temperature = ADC_ChannelSelectAndConvert(TEMP_ADC);
    float voltage = (float) temperature / 4095.0f * 4.096f;
    static uint8_t protection_state = 0; // 0:正常 1:降功率 2:关闭

    // 确定当前需要的状态
    uint8_t target_state;
    if (voltage >= 3.2f) target_state = 2;                   // 关闭2.63          2.9
    if (voltage >= 2.6f && voltage < 2.8f) target_state = 1; // 降功率2.0-2.24    2.6-2.8
    if (voltage <= 2.3f) target_state = 0;                   // 正常1.85          2.3

    // 只有状态变化时才执行动作
    if (Temp_Flag == 0 && target_state != protection_state)
    {
        protection_state = target_state;

        switch (protection_state) {
        case 0: // 恢复正常
            if (T_flag)
            {
                UART_REG1 = UART_REG1 * 2; // 恢复原始值
                T_flag = 0;
            }
            Temp_protected_flag = 0;
          

            start_flag = 1;
            break;

        case 1: // 降功率
            if (!T_flag)
            {
                UART_REG1 = UART_REG1 / 2; // 降低一半
                T_flag = 1;
                // 发送3,4数据
            }
            break;
        case 2: // 关闭
            if (T_flag)
            {
                UART_REG1 = UART_REG1 * 2; // 恢复原始值
                T_flag = 0;
            }
            Temp_protected_flag = 1;
            start_flag = 0;
            ResetPWMAndGPIO();
            break;
        }
    }
}

void TemapProtectedTask(void)
{
    if (tem_flag == 1)
    {
        Temp_Protected();
    }
}