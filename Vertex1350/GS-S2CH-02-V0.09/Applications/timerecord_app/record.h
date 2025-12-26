#ifndef _RECORD_H
#define _RECORD_H

#include <string.h>
#include "../../mcc_generated_files/system/system.h"




extern uint16_t tem_flag;

/*存入NFC的时间，格式：xx 05 00 00（最大五万小时）*/
typedef struct {
    unsigned int Hours_H;
    unsigned int Hours_M;
    unsigned int Hours_L;
}Record_time;

typedef struct {
    // 上电时间相关
    unsigned int  total_power_time_H;    // 上电总时间（单位可能是秒或分钟）
    unsigned int  power_time_minutes;    // 上电分钟数   
    unsigned int  power_time_msecond;    // 上电计时临时变量
    unsigned char power_timer_flag;      // 上电计时标志位
    // 时间存储（分解为高、中、低位）
    Record_time record_time;
    // 其他标志位
    unsigned int save_flag;              // 储存时间标志位
} SystemTimeData;


// 初始化上电时间和灯亮时间
SystemTimeData StartTime = {
    .total_power_time_H = 0,
    .power_time_minutes = 0,
    .power_time_msecond = 0,
    .power_timer_flag = 0,
    .record_time={0,0,0},
    .save_flag = 0
};

SystemTimeData LightTime = {
    .total_power_time_H = 0,
    .power_time_minutes = 0,
    .power_time_msecond = 0,
    .power_timer_flag = 0,
    .record_time={0,0,0},
    .save_flag = 0
};



void Time1_AppInit(void);
void EEPROM_CLOEN(void); // 对E2中的数据进行判断，若是默认的255就写成0
void Time_init(void);    // 时间初始化读取
void Time_Calculation(void);

void TimeCalculationTask(void);

#endif 

