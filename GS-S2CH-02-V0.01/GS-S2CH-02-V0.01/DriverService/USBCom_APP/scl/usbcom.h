#ifndef _USBCOM_H
#define _USBCOM_H

#include "../../../mcc_generated_files/system/system.h"

extern uint8_t err1,err2,err3,err4,err5,err6;  //判断错误类型标志位
extern uint16_t error_flag;                 //上位机数据错误标志

extern uint8_t rs485_flag;

void UsbcomAppInit(void);
void Rs485Task(void);

void UART2_SendData(const uint8_t* data, uint16_t length);




#endif 

