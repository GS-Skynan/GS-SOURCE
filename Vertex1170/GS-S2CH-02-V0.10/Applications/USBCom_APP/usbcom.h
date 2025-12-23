#ifndef _USBCOM_H
#define _USBCOM_H

#include "../../mcc_generated_files/system/system.h"



void UsbcomAppInit(void);
void Rs485Task(void);

extern volatile uint8_t Rx_Length; 


#endif 

