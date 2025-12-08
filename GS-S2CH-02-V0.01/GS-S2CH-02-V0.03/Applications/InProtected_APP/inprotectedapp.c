#include "inprotectedapp.h"
#include "nfc.h"
#include "TEMP_PROTECTED.h"
#include "nfcapp.h"
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
    LED_STATE_OFF = 0, // 关机状态
    LED_STATE_ON, // 开机状态  
    LED_STATE_POWER_DOWN // 降功率状态
} eVState;


/*变量定义*/
static uint16_t state = 0; // 状态变量：0=未启动，1=启动中，2=运行中
uint8_t power_reduced = 0; // 标记是否已经降低功率
uint16_t target_power; // 全局变量，保存目标功率

uint8_t target_power2;

bool g_bLowVoltageFlag = false;
bool g_bPowerDownFlag = false;

///**/
//void VoltageInputProtection(void)
//{
//    static eVState state = LED_STATE_OFF;
//    static uint8_t Time_5s = 0;
//    static uint32_t last_vinprotect_time = 0;
//    uint32_t elapsed = get_elapsed_since(last_vinprotect_time);
//
//    uint16_t g_uVintValue = ADC_Result2(Input_voltage_ADC);
//
//    switch (state) {
//    case LED_STATE_OFF:
//        if(elapsed>=3000)start_flag = 0;
//        if ((Time_5s == 0) && g_uVintValue > 1650) //V>260V  开机5S前
//        {
//            state = LED_STATE_ON;
//            last_vinprotect_time = get_systemtick_time();
//        }
//
//
//        if ((Time_5s == 1) && g_uVintValue > 2100) //V>310V  开机5S后
//        {
//            state = LED_STATE_ON;
//            last_vinprotect_time = get_systemtick_time();
//        }
//        break;
//
//    case LED_STATE_ON:
//        if(g_bPowerDownFlag ==1)
//        {
//            UART_REG1 = UART_REG1 * 2;
//            g_bPowerDownFlag=0;
//        }
//        start_flag = 1;
//        if (Time_5s == 1 || elapsed >= 5000) //5s时间到还是V<280  关机     
//        {
//            if (g_uVintValue < 1700) //V<280
//            {
//                Time_5s = 1;                     
//                state = LED_STATE_OFF;
//                last_vinprotect_time = get_systemtick_time();
//                
//                //g_bLowVoltageFlag = true; 
//            }
//            else if (1750 < g_uVintValue && g_uVintValue < 1850) //V<295
//            {
//                state = LED_STATE_POWER_DOWN;            
//                last_vinprotect_time = get_systemtick_time();
//            }
//        }
//
//        break;
//
//    case LED_STATE_POWER_DOWN:
//
//        if (g_bPowerDownFlag == 0) 
//        {
//            g_bPowerDownFlag = 1;
//            UART_REG1 = UART_REG1 / 2; // 降低功率
//        }
//        if (g_uVintValue > 2100) //V>310 恢复
//        {
//            state = LED_STATE_ON;
//              last_vinprotect_time = get_systemtick_time();
//        }
//        else if (g_uVintValue < 1700) //V<280 关机
//        {
//            // g_bLowVoltageFlag = true;
//            // g_bWaitInputStable = false;
//            state = LED_STATE_OFF;
//             last_vinprotect_time = get_systemtick_time();
//        }
//        break;
//    }
//}

void VoltageInputProtection(void)
{
    static eVState state = LED_STATE_OFF;
    static uint8_t startup_phase = 0; // 0:开机5秒内, 1:开机5秒后
    static uint32_t state_entry_time = 0; // 进入当前状态的时间
    static uint32_t power_on_time = 0; // 开机时间（关键！）
    static bool off_delay_done = false; // 新增：OFF状态3秒等待是否完成

    uint32_t elapsed_in_state = get_elapsed_since(state_entry_time);
    uint32_t elapsed_since_power_on = get_elapsed_since(power_on_time);
    uint16_t g_uVintValue = ADC_Result2(Input_voltage_ADC);

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
        if (g_bPowerDownFlag == 1)
        {
            UART_REG1 = UART_REG1 * 2;
            g_bPowerDownFlag = 0;
        }
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
        if (g_bPowerDownFlag == 0)
        {
            g_bPowerDownFlag = 1;
            UART_REG1 = UART_REG1 / 2;
        }

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





void Input_Protected(void)
{
    uint16_t Input_result = ADC_Result2(Input_voltage_ADC); // 读取输入电压的ADC结果
    switch (state) {
    case 0:
        // 未启动状态(灯灭)
        if (Input_result > 1900 && start_flag == 0)
        { // 如果输入电压大于启动阈值
            state = 1;
        }
        if (Input_result < 1685 && start_flag == 0)
        { // 如果输入电压小于关闭阈值
            start_flag = 0;
            Temp_Flag = 1;
            // 清除启动标志
            return;
        }
        break;
    case 1: // 启动中状态
        if (Input_result > 2100)
        { // 如果输入电压大于高启动阈值
            start_flag = 1; // 设置启动成功标志
            state = 3;
            if (target_power)
            {
                //                    UART_REG1/=2;

                //                    for (int i = 0; i < 9; i++) {                        
                //                        while (!UART2_IsTxReady());                     
                //                        UART2_Write(CLOSE_DA1[i]);                       
                //                        while (!UART2_IsTxDone());                      
                //                    }
                target_power = 0;
                target_power2 = 1;
            }
            Temp_Flag = 0; // 切换到运行中状态
        }
        if (Input_result <= 1780)
        { // 如果输入电压小于低启动阈值 ,1680              
            //                ResetPWMAndGPIO();                                              // 重置PWM和GPIO
            LightPowerOff(LED_ALL_OFF);
            state = 0; // 返回未启动状态
            Temp_Flag = 1;
            start_flag = 0; // 清除启动标志                          
        }
        break;
    case 2:
        if (Input_result <= 1780)
        { // 如果输入电压小于低启动阈值               
            //           ResetPWMAndGPIO();                                              // 重置PWM和GPIO
            LightPowerOff(LED_ALL_OFF);
            state = 0; // 返回未启动状态
            start_flag = 0; // 清除启动标志

            UART_REG1 *= 2;
            target_power = 1;
            Temp_Flag = 1;
            power_reduced = 0;
        }
        if (Input_result >= 2000 && power_reduced)
        { //恢复,1900
            /*此处应该所用通道都降功率*/
            UART_REG1 *= 2; // 恢复功率
            power_reduced = 0;
            target_power2 = 0; // 重置功率降低标记
            start_flag = 1; // 设置启动成功标志
            Temp_Flag = 1;
            state = 1; // 切换到启动中状态
        }
        break;
    case 3:
        if (Input_result > 1760 && Input_result < 1890 && !power_reduced)
        { // 如果输入电压在305-310V范围内且未降低功率,1740-1840
            /*此处应该所用通道都降功率*/
            if (target_power2)
            {
                power_reduced = 1; // 标记功率已降低
                start_flag = 1; // 设置启动成功标志

                state = 2;
                target_power2 = 0;
            }
            if (!target_power2)
            {
                UART_REG1 = UART_REG1 / 2; // 降低功率
                power_reduced = 1; // 标记功率已降低
                start_flag = 1; // 设置启动成功标志

                state = 2;
                target_power2 = 1;
            }
        }
        break;
    default:
        state = 0; // 意外情况重置状态
        break;
    }
}

void IntProtectedTask(void)
{
 
        //Input_Protected();
        VoltageInputProtection();
}

