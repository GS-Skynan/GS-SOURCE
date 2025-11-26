#ifndef  __PROTECT_H_
#define  __PROTECT_H_	

#include "../../mcc_generated_files/mcc.h"


extern bool g_bLowVoltageFlag;
extern bool g_bPowerDownFlag;
extern uint16_t g_uTempValue;
extern uint8_t g_uTempProtectState;

extern bool g_bOpenShortStateFlag;
extern bool g_bOpenCircuitFlag;
extern uint8_t g_uShortCircuitFlag;  
extern bool g_bRemoveProtectionFlag;

void TempProtect(void);
void OpenCircuitProtect(void);
void ShortCircuitProtect(void);
void VoltageInputProtection(void);
bool ProtectionCheck(void);
#endif

