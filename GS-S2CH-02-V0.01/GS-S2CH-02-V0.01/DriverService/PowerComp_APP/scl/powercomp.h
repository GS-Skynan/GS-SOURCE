#ifndef _POWER_COMPENSATION_H
#define _POWER_COMPENSATION_H


#include "../../../mcc_generated_files/system/system.h"


//#define MAX_Total_POWER   1230        //最大功率
//#define MAX_Total_Current 3250       //最大电流

//#define POWER_CHANNEL1 1230
//#define POWER_CHANNEL2 178
//#define POWER_CHANNEL3 210
//#define POWER_CHANNEL4 116


extern uint16_t TARGET_CURRENT_1_Real; 

uint16_t Power_Compensation(void);



#endif 

