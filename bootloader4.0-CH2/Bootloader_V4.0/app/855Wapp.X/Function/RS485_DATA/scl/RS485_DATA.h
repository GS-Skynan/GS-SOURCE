#ifndef RS485_DATA_H
#define RS485_DATA_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../../PID/scl/pid.h"
#include "../../../NFC/scl/nfc.h"
#include "../../../CRC/scl/crc.h"
#include "../../POWER_COMPENSATION/scl/POWER_COMPENSATION.h"
#include "../../Bootloder/scl/Bootloder.h"
unsigned char Error_Flag = 1;                //上位机数据错误标志
unsigned int err1,err2,err3,err4,err5,err6;  //判断错误类型标志位
unsigned int error_flag;                     //上位机数据错误标志
unsigned char error[5]={'E','R','R','O','R'};//错误数组，
extern unsigned int flag;
unsigned int flag_Compensation;             //补偿标识
unsigned char MCU2_Receive_Data[9] = {0x00};

extern unsigned char Temp_protected_flag;
extern unsigned char start_flag;
void RS485(void);
#endif 

