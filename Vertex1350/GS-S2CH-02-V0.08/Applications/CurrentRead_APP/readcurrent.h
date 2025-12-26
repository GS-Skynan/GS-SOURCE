#ifndef _READ_CURRENT
#define _READ_CURRENT

#include "../../mcc_generated_files/system/system.h"




extern uint16_t g_uTargetPower;
extern uint8_t g_uDimmingLevelChannel1,g_uDimmingLevelChannel2;
extern uint16_t g_uTargetPowerChannel1, g_uTargetPowerChannel2;
extern uint16_t power_time;

extern uint16_t g_uChanne2Power;

void WriteCalibrationSingleChannel(uint8_t *w_eeprom);
void WriteCalibrationMultiChannel(uint8_t *w_eeprom);
void NFCRead_APPInit(void);
uint16_t Power_Compensation(void);



#endif 

