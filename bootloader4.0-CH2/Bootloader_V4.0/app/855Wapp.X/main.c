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
#include "string.h"
#include <stdint.h>
#include <stdio.h>
#include <math.h>
#include "Function/PID/scl/pid.h"
#include "Function/OTHER/scl/OTHER.h"
#include "Function/Time_Record/scl/record.h"
#include "Function/Bootloder/scl/Bootloder.h"
#include "Function/DATA_DEAL/scl/DATA_DEAL.h"
#include "Function/CLOSE_LED/scl/CLOSE_LED.h"
#include "Function/PWM_CHANGE/scl/pwm_change.h"
#include "Function/RS485_DATA/scl/RS485_DATA.h"
#include "Function/OUT_PROTECTED/scl/out_protected.h"
#include "Function/TEMP_PROTECTED/scl/TEMP_PROTECTED.h"
#include "Function/INTPUT_PROTECTED/scl/INTPUT_PROTECTED.h"
#include "Function/INIT_AND_PORT_3_4/scl/INIT_PROTECTED_3_4.h"
#include "Function/POWER_COMPENSATION/scl/POWER_COMPENSATION.h"
/*
    Main application
*/
extern unsigned char UART1_Receive_Data[72]={0x00,0x10};
unsigned  char NFC_receiveData[72];
unsigned int Default_flag2;
unsigned int MCU2_Init=0;
extern unsigned char R485_FLAG = 0;
extern unsigned char NFC_MCU2_DATA[]; 

void LED_time(void)
{
    static uint16_t ht;
    ht++;
    if(ht==200)    
    {
        LED_Toggle();
        ht=0;
    }
}





//unsigned TARGET_CURRENT_1_Real;
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

    TMR1_OverflowCallbackRegister(TMR1_Record_Time);
    TMR2_PeriodMatchCallbackRegister(LED_time);
    // Disable the Global Interrupts 
    //INTERRUPT_GlobalInterruptDisable(); 
    LED_SetLow();
    Mode_selection = 1;                                                         //模式选择，1：表示恒电流模式
    PID_Init_Parameters();                                                      // 初始化两路 PID 控制器
    IO_RF3_SetHigh();                                                         //上位机接收          
    /*NFC数据处理以及将处理好的NFC数据发送给MCU2*/
    READ_NFC_SET_START(1);                                                      //读取NFC数据
    __delay_ms(10);                                                             // 必须有延时 
    NFC_Data_Process(); 
    /*开启上位机接收：RS485*/   
    Data_Deal_Init_Current();  
    /*延迟1s后*/
    EEPROM_CLOEN();   
    Time_init();                   //计时时间初始化
    StartTime.power_timer_flag=1;  //上电计时标志位
    __delay_ms(200);   
    IO_RF3_SetLow();                                                            //开启485接收 
    Default_flag = 1;
//    start_flag = 1;
   TARGET_CURRENT_1_Real = TARGET_CURRENT_1;
   original_power = UART_REG1;
    while(1)
    {
        if(start_flag == 1 && MCU2_Init == 0)
        {
           MCU2_Init=1; 
           NFC_MCU2_DATA[3] = I2C_receiveData[8];
           NFC_MCU2_DATA[6] = I2C_receiveData[12];
            for(unsigned int i = 0;i<9 ;i++){
                while(!UART2_IsTxReady());
                UART2_Write(NFC_MCU2_DATA[i]);
                while(!UART2_IsTxDone());       
            }
            
           memset(NFC_MCU2_DATA,0,9); 
        } 
        /*输入电压检测,Port_3_4_GetValue():默认高电平（3，4脚不短路）*/
        if(Port_3_4_GetValue() == HIGH)
        {   
            Input_Protected();
        }
        else if(Port_3_4_GetValue() == LOW){
           
            start_flag = 1;
            UART_REG1_Pre = UART_REG1 = 0x64;
            UART_REG2_Pre = UART_REG2 = 0x64;
        }
       /*关闭*/
        ALL_Closed();
        Close_1();
        Close_2();   

        /*时间记录*/
        Time_Calculation();
        /*温度保护*/
        if(tem_flag == 1)
           Temp_Protected();
        /*数字调光*/
        if(( Default_flag == 1) || ( Default_flag2 == 1)){             
            Data_Processing();
        }    
        /*输出电压检测*/              
         if(Port_3_4_GetValue() == HIGH  && start_flag == 1){                   //3,4脚短路时Port_3_4_GetValue() = 0
            if(UART_REG1 > 0x00){
                 buck_flag = 1; 
                if(buck_ok1)V_Ret1 = Voltage_Judgment(V_Out1);
            }
            if(UART_REG2 >0x00){
                 buck_flag = 1; 
                if(buck_ok2)V_Ret2 = Voltage_Judgment(V_Out2);                      //2通道迅速
            }
            Out_Protect();                
            if(lock_flag == 1) Out_Protected();                                 //所有通道都触发输出保护时候，关闭PFC。 
        }  
        

    }    
}