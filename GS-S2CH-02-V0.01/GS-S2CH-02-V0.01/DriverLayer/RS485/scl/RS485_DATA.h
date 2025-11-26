#ifndef _RS485_DATA_H
#define _RS485_DATA_H

#include "../../../mcc_generated_files/system/system.h"


extern uint8_t UART1_Receive_Data[72];  
extern uint8_t flag;
uint8_t uart1_receive;

void GetRs485_Data(void);
void Register_Uart1_Callback(void (*callback)(uint8_t *data, uint8_t length));
void RS485_Register_Callback(void);

void Rs485_DataSend(uint8_t *data, uint8_t dataLength);

#endif 

