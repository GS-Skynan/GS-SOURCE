#ifndef _READ_CURRENT
#define _READ_CURRENT

#include "../../mcc_generated_files/system/system.h"



#ifdef POWER             //恒功率
#define TARGET_POWER_1 ((POWER_1_Efficiency)*(UART_REG1)*(POWER1)) //按照效率=1166/1200来算(主通道输出功率）
#define TARGET_POWER_2 ((POWER_2_Efficiency)*(UART_REG2)*(POWER2)) //156W（二通道输出功率）  /注意：2通道的效率需要根据功率不同来变
#define TARGET_POWER_3 ((UART_REG3)*(POWER3)*(POWER_3_Efficiency)) //187W(三通道输出功率）
#define TARGET_POWER_4 ((UART_REG4)*(POWER4)*(POWER_4_Efficiency)) //114W（四通道输出功率）
 
float POWER_1_Efficiency = 0.9716;  
float POWER_2_Efficiency = 0.9075;
float POWER_3_Efficiency = 0.9393;  
float POWER_4_Efficiency = 0.9457;             //按照最大功率校准


float POWER1  = 11.66;
float POWER2 = 1.56;
float POWER3 = 1.8700;
float POWER4 = 0.96;
#else            //恒流
//float CURRENT_1 = 3250.0f;
//float CURRENT_2 = 898.0f;
//float CURRENT_3 = 817.0f;
//float CURRENT_4 = 420.0f;
#endif



/* NFC功能相关变量 */
//float   TARGET_CURRENT_1_Pre = (CURRENT_1 /100.0f * UART_REG1);
//#define TARGET_CURRENT_1 (CURRENT_1 /100.0f * UART_REG1)  //mA
//#define TARGET_CURRENT_2 (CURRENT_2 /100.0f * UART_REG2)
//#define TARGET_CURRENT_3 (CURRENT_3 /100.0f * UART_REG3)
//#define TARGET_CURRENT_4 (CURRENT_4 /100.0f * UART_REG4)

void ReadCurrentInit(uint8_t* nfcData);
uint16_t Power_Compensation(void);

extern uint16_t power_Hold_1,power_Hold_2; 
extern uint8_t UART_REG1,UART_REG2;
extern uint8_t UART_REG1_Pre,UART_REG2_Pre;

extern uint16_t power_time;
extern uint16_t g_uChannel2Power;
void ReadNfcNumber(void);

extern uint16_t g_uTargetPower;

#endif 

