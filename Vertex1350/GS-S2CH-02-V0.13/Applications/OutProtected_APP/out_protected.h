#ifndef _OUT_PROTECTED_H
#define _OUT_PROTECTED_H


#include "../../mcc_generated_files/system/system.h"


typedef struct {
    // 状态标志
    bool is_protecting1;
    bool is_protecting2;
    bool is_protecting3;
    bool in_protection_period;
    bool permanent_protection;
    
    // 计时相关
    uint32_t last_detect_time;
    uint32_t protect_start_time;
    
    // 计数相关
    uint8_t protection_count;
    
} ChannelProtectState;

typedef enum
{
    PROTECTION_CHANNEL1_NOL = 0,
    PROTECTION_CHANNEL1_ALL,
    PROTECTION_CHANNEL1_OFF,
    PROTECTION_CHANNEL2_OFF
} ePROSTART;

uint8_t ProtectionCheck(void);
extern uint8_t g_uFaultCode;

extern uint16_t g_uOutputProtectionTypeChannel1 ,g_uOutputProtectionTypeChannel2 ;        //保护标识，在输出保护说明
              
uint16_t GetChannelVoltageValue(adc_channel_t channel);


void OutProtectedTask(void);
#endif 

