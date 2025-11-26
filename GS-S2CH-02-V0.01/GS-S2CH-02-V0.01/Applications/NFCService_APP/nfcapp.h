#ifndef _NFCAPP_H
#define _NFCAPP_H

#include "../../mcc_generated_files/system/system.h"



extern uint8_t I2C_receiveData[72];
extern uint8_t NFC_data[72];  

extern uint8_t UART_read1[2],UART_read2[2];   
extern uint8_t UART_read3[2],UART_read4[2]; 


extern uint8_t v11, v2, v3, v4; 
extern uint8_t con1=1,con2=1,con3=1,con4=1;   //通道选择

extern uint16_t Mode_selection;    //模式选择标志位   1：恒流  2：恒功率


extern uint8_t v1;
extern uint8_t reply_buffer[17];


void READ_NFC_SET_START(void); 
void NFC_Data_Process(uint8_t* nfcData);
void NFC_datajudge(uint8_t *data);

//void Rated_Current(void);   //启动默认电流
//void Startup_Power(void);  //启动默认功率
//void Startup_State(void); //启动默认状态
//void Power_UpTime(void);  //涨功率时间
//void Channel_changes(void);

void Rated_Current(uint8_t *data); 
void Startup_Power(uint8_t *data);
void Power_UpTime(uint8_t *data);
void Channel_changes(uint8_t *data);
void Startup_State(uint8_t *data);

unsigned int State_error(unsigned int err);
unsigned int is_valid_data(unsigned char *data, unsigned int state_error_flag);
unsigned int bcd_to_int(uint8_t bcd);
unsigned int int_to_bcd(uint8_t intt);

void NFCRead_APPInit(void);
void Write_NFC_Task(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength);
void NFC_SendMCU2Task(void);
#endif 

