#include "nfcapp.h"
#include "nfc.h"
#include "crc.h"
#include "usbcom.h"
#include "RS485_DATA.h"
#include "readcurrent.h"
#include "ticktime.h"
#include "dimming.h"


#include <string.h>
#include <stdio.h>


uint8_t I2C_receiveData[72];
uint8_t NFC_data[72];      //NFC数据
 
;            //通道机型选择标志位   1-4
uint16_t Mode_selection=1;

uint8_t v1, v2, v3, v4;


uint16_t readNFC_flag=0;


uint8_t reply_buffer[17];

static uint8_t muc2flag=1;   

void NFCRead_APPInit(void)
{
    READ_NFC_SET_START();     
    Read_NFC_Data(0x0000,I2C_receiveData,MAX_NFC_DATA_LENGTH);
    __delay_ms(10);                                                                // 必须有延时 
    NFC_Data_Process(I2C_receiveData);   
}


