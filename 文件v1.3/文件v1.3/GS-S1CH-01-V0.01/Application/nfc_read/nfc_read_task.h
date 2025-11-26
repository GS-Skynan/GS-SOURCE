#ifndef  __NFC_H_
#define  __NFC_H_	

#include "../../mcc_generated_files/mcc.h"



extern uint16_t g_uNfcCurreValue;
extern uint16_t g_nfcDimmingVal;


void WriteDataNFC(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength);
void ReadDataNFC(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength);

void StartReadNFC(void);
void ReadI2C1Current(void);
void READ_NFC_LINE(void);

#endif

