#ifndef CLOSE_LED_H
#define CLOSE_LED_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../../PWM_CHANGE/scl/pwm_change.h"
#include "../../../NFC/scl/nfc.h"
#include "../../OUT_PROTECTED/scl/out_protected.h"
#include "../../DATA_DEAL/scl/DATA_DEAL.h"


unsigned int ALL_CLOSE;  //¹Ø±Õ
unsigned int CLOSE1;
unsigned int CLOSE2;

void ALL_Closed(void);
void LED1_Close(void);
void LED2_Close(void);
void Close_1(void);
void Close_2(void);


#endif 

