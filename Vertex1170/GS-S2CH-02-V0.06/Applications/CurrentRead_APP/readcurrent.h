#ifndef _READ_CURRENT
#define _READ_CURRENT

#include "../../mcc_generated_files/system/system.h"



void ReadCurrentInit(uint8_t* nfcData);
uint16_t Power_Compensation(void);

extern uint8_t UART_REG1,UART_REG2;
extern uint16_t g_uPower1, g_uPower2;
extern uint16_t power_time;
extern uint16_t g_uChanne2Power;

void WriteCalibrationSingleChannel(uint8_t *w_eeprom);
void WriteCalibrationMultiChannel(uint8_t *w_eeprom);
void ReadCalibration(void);
void NFCRead_APPInit(void);

extern uint16_t g_uTargetPower;

#endif 

