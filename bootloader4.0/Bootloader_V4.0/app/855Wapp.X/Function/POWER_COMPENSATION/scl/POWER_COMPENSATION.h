#ifndef POWER_COMPENSATION_H
#define POWER_COMPENSATION_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define MAX_Total_POWER   1230        //最大功率
//#define MAX_Total_Current 3250       //最大电流

#define POWER_CHANNEL1 1230
#define POWER_CHANNEL2 178
#define POWER_CHANNEL3 210
#define POWER_CHANNEL4 116

unsigned int  POWER1  = 1230; 
unsigned int  POWER2  = 178; 
unsigned int  POWER3  = 210; 
unsigned int  POWER4  = 116; 

unsigned int TARGET_CURRENT_1_Real;
/*定义宏函数：EXECUTE_IF_CHANGED（常用思路）
 *Function：当某一个值发生变化时候，执行某一个语句
 */
#define EXECUTE_IF_CHANGED(prev_value, current_value, statement) \
    do { \
        if ((current_value) != (prev_value)) { \
            statement; \
            (prev_value) = (current_value); \
        } \
    } while (0)

float CURRENT_1_pre = 0.0f;
unsigned int ret = 1;


void Power_Channel(void);
void Power_Compensation(void);
void CompenSation_Current_Stop(void);


#endif 

