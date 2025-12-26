#ifndef _READ_CURRENT
#define _READ_CURRENT

#include "../../mcc_generated_files/system/system.h"




extern uint8_t g_uDimmingLevelChannel1,g_uDimmingLevelChannel2;
extern uint16_t g_uTargetPowerChannel1, g_uTargetPowerChannel2;
extern float g_fOverTemperatureProtection;
extern uint16_t g_uChanne2Power;


void NFCRead_APPInit(void);

extern int8_t CalibrationBuff[3];

#endif 

