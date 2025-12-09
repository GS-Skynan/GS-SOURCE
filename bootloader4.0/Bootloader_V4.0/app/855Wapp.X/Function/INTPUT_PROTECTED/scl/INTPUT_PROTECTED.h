#ifndef INTPUT_PROTECTED_H
#define INTPUT_PROTECTED_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../../../NFC/scl/nfc.h"
#include "../../DATA_DEAL/scl/DATA_DEAL.h"

#define START_THRESHOLD_HIGH 2000              
#define START_THRESHOLD_LOW  1760
#define LIGHT_ON_THRESHOLD   2100          
#define LIGHT_OFF_THRESHOLD  1860
/*变量定义*/
unsigned int state = 0;                                                         // 状态变量：0=未启动，1=启动中，2=运行中
uint8_t power_reduced = 0;                                                      // 标记是否已经降低功率
uint16_t target_power;  // 全局变量，保存目标功率
static uint16_t original_power;  
unsigned char CLOSE_DA[9] = {0x00,0x10,0x00,0x00,0x00,0x00,0x11,0x22,0x33};      // 关灯指令数组
unsigned char CLOSE_DA1[9] = {0x00,0x10,0x00,0x00,0x00,0x00,0x11,0x22,0x33};     // 关灯指令数组
/*输入保护操作*/
void Input_Protected(void);
/*输入保护复位操作*/
void ResetPWMAndGPIO(void);


#endif 

