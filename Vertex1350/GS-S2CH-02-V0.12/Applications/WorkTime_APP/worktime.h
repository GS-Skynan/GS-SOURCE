#ifndef __WORK_TIME_H__
#define __WORK_TIME_H__


#include "../../mcc_generated_files/system/system.h"

// 时间数据结构体
typedef struct {
    uint16_t hours;     // 小时数
    uint16_t minutes;    // 分钟数
    uint16_t seconds;    // 秒数
} tWorkTime;

tWorkTime worktime;

void WorkTime_Init(tWorkTime *mgr);
void WorkTime_Update(tWorkTime *mgr);
void WorkTime_Reset(tWorkTime *mgr);
tWorkTime WorkTime_GetFromEEPROM(void);
void WorkTimeTask(void);
#endif