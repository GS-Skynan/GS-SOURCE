#ifndef _USBCOM_H
#define _USBCOM_H

#include "../../mcc_generated_files/system/system.h"



extern uint8_t rs485_flag;

void UsbcomAppInit(void);
void Rs485Task(void);

void Display(void);

#endif 

