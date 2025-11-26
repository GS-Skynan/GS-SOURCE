#include "../../../DriverService/Dimming_APP/scl/dimming.h"
#include "../../../DriverLayer/ADC/scl/adc_driver.h"
#include "../../../DriverService/OutProtected_APP/scl/out_protected.h"
#include "../../../DriverLayer/NFC/scl/nfc.h"
#include "../../../DriverService/NFCService_APP/scl/nfcapp.h"
#include "../../../DriverService/USBCom_APP/scl/usbcom.h"
#include "../../../DriverService/InProtected_APP/scl/inprotectedapp.h"
#include "../../../DriverService/PowerComp_APP/scl/powercomp.h"
#include "../../../DriverService/LightsOff_APP/scl/closeled.h"
#include "../../../DriverService/PwmRegulation_APP/scl/pwm_change.h"
#include "../../../DriverService/CurrentRead_APP/scl/readcurrent.h"
#include "../../../DriverLayer/GPIO/scl/GPIO_driver.h"
#include "../../../DriverLayer/PWM/scl/pwm_driver.h"
#include "../../../DriverService/Ticktime_APP/scl/ticktime.h"
#include "../../../DriverLayer/RS485/scl/RS485_DATA.h"

#include <math.h>



/*变量定义*/
uint8_t Default_flag=1;                //
uint8_t start_flag = 0;              //注意,启动标识，1：表示系统启动
uint8_t pfc_flag = 1;                //PFC执行一次
volatile uint8_t buck_flag = 0;               
uint8_t buck_ok1 = 0,buck_ok2 = 0;   //保护判断标识，中断置1
uint8_t current_control_mode_1 = 0;  // 1 通道恒流模式标志：0-恒功率，1-恒流
uint8_t current_control_mode_2 = 0;  // 2 通道恒流模式标志：0-恒功率，1-恒流

uint8_t mode_flag;                   //启动模式，确保通道切换时候是先关后开

uint8_t PIDflag1;
uint8_t PIDflag2;


float current_value = 0;
float start_value = 0;
uint32_t start_time = 0;
float target_value = 0;
uint32_t transition_time = 1000;
float power_pwm=0;



void regulator_clear(void)
{
   current_value = 0;
   start_value = 0;
   start_time = 0;
   target_value = 0;
   transition_time = 1000;
}

//平滑调光
float simple_regulator(float new_target, uint32_t time_ms) 
{

   uint32_t current_time = get_systemtick_time();      // 使用PIC18的时间函数
        
    if (new_target != target_value) 
    {
        target_value = new_target;
        start_value = current_value;
        start_time = current_time;        // 记录绝对时间
        transition_time = time_ms;
    }
    
    // 使用通用函数计算时间差
    uint32_t elapsed = get_elapsed_since(start_time);
    
    if (elapsed >= transition_time) 
    {
        current_value = target_value;
        return current_value;
    }
    
    float progress = (float)elapsed / transition_time;
    current_value = start_value + (target_value - start_value) * progress;
    
    return current_value;
}


/**
 * @brief 获取指定通道的电流值（单位：mA）
 * 该函数通过ADC采集指定通道的原始数据，并转换为实际电流值（毫安级）
 * @param  channel 要读取的ADC通道（I_Out1或I_Out2）
 * @return float   返回计算后的电流值，单位毫安(mA)
 * 
 * @note 转换公式说明：
 *       1. ADC原始值(0-4095) -> 电压值(0-4.096V)
 *       2. 根据分压/采样电路参数转换为实际电流
 *       3. 最终结果放大1000倍转换为mA单位
 */
float get_current(adc_channel_t channel) 
{ 
    adc_result_t I_Out1_ADC, I_Out2_ADC;  // ADC原始数据存储变量
    float I_out;                          // 计算后的电流值
    
   // 通道1(红光)电流计算
    if(channel == OUT_CURRENT1) {
        // 获取通道1的ADC原始值（12位分辨率，0-4095）
        I_Out1_ADC = ADC_Result2(OUT_CURRENT1);        
        /* 电流转换公式分解：
         * 1. I_Out1_ADC/4095.0         -> 采样精度：12
         * 2. *4.096                    -> 对应参考电压4.096V（FVR：内部参考电压）
         * 3. /103460*3460              -> 根据运放反馈电阻分压比计算
         * 4. /0.034                    -> 采样电阻（三个0.1并联：0.033，考虑连接线（需要实际测量）：0.034）,这个值影响比较大，需要根据实际选取和理值
         *                                 这点的阻值需要保持灵活：保证实际实际测量值（电流）与ADC采集值（电流）一致(可以通过串口检测数据的一致性)！
         * 5. *1000(函数最后统一处理)    -> 转换为mA
         */      
//        I_out = (float)(I_Out1_ADC / 4095.0 * 4.096) / 103460 * 3460 / 0.034;   
        
        float adc_voltage1 = (float)I_Out1_ADC / 4095.0f * 4.096f;
        float voltage_ratio1 = 3460.0f / 103460.0f;
        I_out = adc_voltage1 * voltage_ratio1 / 0.034f;
    }
    // 通道2（红外光）电流计算
    else if(channel == OUT_CURRENT2) 
    {
        // 获取通道2的ADC原始值
        I_Out2_ADC = ADC_Result2(OUT_CURRENT2);        
        /* 电流转换公式分解：
         * 1. I_Out2_ADC/4095.0        -> 采样精度：12
         * 2. *4.096                   -> 对应参考电压4.096V（FVR：内部参考电压）
         * 3. /32630*2630              -> 根据运放反馈电阻分压比计算
         * 4. /0.25                    -> 采样电阻(两个0.5并联)
         * 5. *1000(函数最后统一处理)   -> 转换为mA
         */
//        I_out = (float)(I_Out2_ADC / 4095.0 * 4.096) / 32630 * 2630 / 0.25;
        
        float adc_voltage2 = (float)I_Out2_ADC / 4095.0f * 4.096f;
        float voltage_ratio2 = 2630.0f / 32630.0f;
        I_out = adc_voltage2 * voltage_ratio2 / 0.25f;
    }   
    return (I_out * 1000.0f);             // 统一转换为毫安(mA)单位
}




void DimmingControlTask(void)
{   
    if(start_flag)
    {  
        // 检查是否有任意通道（1、2、3、4）的值大于等于 1
        if (UART_REG1 >= 0x1 || UART_REG2 >= 0x1 || UART_REG3 >= 0x1 || UART_REG4 >= 0x1) 
        {    // 判断是否有通道开启
           if(pfc_flag)
           {
               // PFC_SetHigh();  
                PFC_On();   // 打开 PFC
                __delay_ms(400);                                                                   // 延时 400ms，等待 PFC 稳定
                pfc_flag = 0;
       
           }
            // 判断模式：如果通道 1 和通道 2 都开启，则 mode_flag 为 0；否则为 1
            if (UART_REG1 > 0x00 && UART_REG2 > 0x00) mode_flag = 0;            // 1,2 都开
             else mode_flag = 1;                                                // 单开 1
            // 处理通道 1 的逻辑
            if (UART_REG1 >= 0x01 && out_flag1)                          // 如果通道 1 的值大于等于 1
            {                              
                if (mode_flag == 1) 
                {
                    Close_2();                                                  // 如果是单开 1 模式，关闭通道 2
                }
                RELAY_On(RELAY_CHANNEL1);                                        // 打开通道 1 的继电器                                         
                __delay_ms(100);                                                // 延时 150ms，等待继电器稳定                                             
                L6562_On(L6562_CHANNEL1);                                       // 启动 L6562（PFC 控制器）
            }
            // 处理通道 2 的逻辑
            if (UART_REG2 >= 0x01 && out_flag2) {                               // 如果通道 2 的值大于等于 1
                if (mode_flag == 1) {
                    Close_1();                                                  // 如果是单开 1 模式，关闭通道 1
                }
                 RELAY_On(RELAY_CHANNEL2);
               // JDQ_2_SetHigh();                                                // 打开通道 2 的继电器
                __delay_ms(100);                                                // 延时 150ms，等待继电器稳定
                //L6562_2_SetLow();                                               // 启动 L6562（PFC 控制器）
                 L6562_On(L6562_CHANNEL2);
            } 
           
 
            // __delay_ms(100);   
           
           if(out_flag1==0||V_Ret1!=0||V_Ret2!=0||out_flag2==0) return;
           

           power_pwm=(float)Power_Compensation();
            
           if(UART_REG1 >= 0x01 &&  UART_REG2 == 0x00)
           {                                  
                        PIDflag1=1;                           
           }
                  
            if(UART_REG1 == 0x00 &&  UART_REG2 >= 0x01)
           {
                        PIDflag1=2;                 
            }
     
           if(UART_REG1 >= 0x01 && UART_REG2 >= 0x01 )
           {
                        PIDflag1=3;    
           }
    
          if(UART_REG1== 0x00 && UART_REG2 == 0x00 )
           {
                        PIDflag1=0; 
                        power_pwm=0;
                        pwm1=0;
           }          
        }
    }
}

            /* 交替执行(时间片)两个 PID 计算:这部分可能存在实时性问题
             * fabsf:float类型的取绝对值函数 ：误差超出4.5mA（误差太小可能会导致PID退不出来：需要实际测量采集电流值与实际值的误差）
             * 执行功率校准
             * TARGET_POWER_1：     目标值  
             * get_current(I_Out1)：实际测量的计算值
             */   
            /*2通道对1通道有干扰（），导致在循环判断里面的绝对值判断退不出来，所以采用单开与同时开*/
//            if(UART_REG1 >= 0x01 || UART_REG2 >= 0x01 ){
//                if(UART_REG1 >= 0x01 &&  UART_REG2 == 0x00   && V_Ret1 == 0  && out_flag1  )
//                { 
//                     Power_Compensation();
//                    while (V_Ret1 == 0 && out_flag1 && TARGET_CURRENT_1_Real >= 300 && fabsf(TARGET_CURRENT_1_Real - get_current(I_Out1)) >= 4.5f &&  !return_flag1 )
//                    { 
//                        PID_Compute(&pid1, TARGET_CURRENT_1_Real, get_current(I_Out1));    
//                        /*功率补偿：主通道变化（在主通 道的PID循环中执行）*/
//                        Power_Compensation();                              
//                        //此刻这里应该检测电压，若是短路或者开路，立即退出循环
//                        if(Port_3_4_GetValue() == HIGH){                        //3,4脚短路（低电平），去除保护
//                            buck_flag = 1;                                      //定时器标志：200ms后 buck_ok = 1
//                            if(buck_ok1) V_Ret1 = Voltage_Judgment(V_Out1);
//                            Out_Protect();   
//                            Input_Protected();     
//                        }                     
//                    }                   
//                }               
//                if(UART_REG2 >= 0x01 &&  UART_REG1 == 0x00   && V_Ret2 == 0 && out_flag2){ 
//                    while (V_Ret2 == 0 && out_flag2 && fabsf(TARGET_CURRENT_2 - get_current(I_Out2)) >= 4.5f ){ 
//                        PID_Compute(&pid2, TARGET_CURRENT_2, get_current(I_Out2));
//                                  
//                        //此刻这里应该检测电压，若是短路或者开路，立即退出循环
//                        if(Port_3_4_GetValue() == HIGH){
//                                    
//                            buck_flag = 1;                                      //定时器标志：200ms后 buck_ok = 1
//                            /*通过判断V_Ret2（Voltage_Judgment的返回值）来决定是过欠压，短路，开路*/
//                            if(buck_ok2) V_Ret2 = Voltage_Judgment(V_Out2);
//                            Out_Protect();   
//                            Input_Protected();
//                        }
//                    }
//                } 
//                /*同时开*/
//                if(UART_REG1 >= 0x01 && UART_REG2 >= 0x01 ){
//                    Power_Compensation();
//                    while ((UART_REG1 >= 0x01 && fabsf(TARGET_CURRENT_1_Real - get_current(I_Out1)) >= 4.5f  && V_Ret1 == 0 && out_flag1 && !return_flag1)|| 
//                           (UART_REG2 >= 0x01 && fabsf(TARGET_CURRENT_2 - get_current(I_Out2)) >= 4.5f && out_flag2 && V_Ret2 == 0 ) ){
//                        if(fabsf(TARGET_CURRENT_1_Real - get_current(I_Out1)) >= 4.5f  && V_Ret1 == 0 && out_flag1){ 
//                            PID_Compute(&pid1, TARGET_CURRENT_1_Real, get_current(I_Out1)); 
//                            Power_Compensation();
//                            if(Port_3_4_GetValue() == HIGH){
//                                buck_flag = 1;                              //定时器标志：200ms后 buck_ok = 1
//                                if(buck_ok1) V_Ret1 = Voltage_Judgment(V_Out1);
//                                Out_Protect();   
//                                Input_Protected();     
//                            } 
//                        }
//                        if(fabsf(TARGET_CURRENT_2 - get_current(I_Out2)) >= 4.5f && V_Ret2 == 0 && out_flag2 ){ 
//                            PID_Compute(&pid2, TARGET_CURRENT_2, get_current(I_Out2));
//                            if(Port_3_4_GetValue() == HIGH){
//                                buck_flag = 1;                              //定时器标志：200ms后 buck_ok = 1
//                                if(buck_ok2) V_Ret2 = Voltage_Judgment(V_Out2);
//                                Out_Protect();   
//                                Input_Protected();
//                            }
//                        }
//                    }
//                }
//            }
//        }
// //   else PIDflag=0;
//        // 每次处理完数据就把数据清零，以及清零一些标志位
////        Pwm_flag_1 = 0;
////        Pwm_flag_2 = 0;
//    }
//}



     
           
