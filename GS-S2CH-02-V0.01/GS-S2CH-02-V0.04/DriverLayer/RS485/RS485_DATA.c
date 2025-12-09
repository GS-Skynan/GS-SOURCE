#include "RS485_DATA.h"
#include "nfcapp.h"

#include <stdio.h>



void Rs485_DataSend(uint8_t *data, uint8_t dataLength)
{
    uint8_t commWriteDataCount;
    commWriteDataCount = 0;

     IO_RF3_SetHigh(); 
    __delay_ms(10);
    while (commWriteDataCount < dataLength)
    {
        if (UART1_IsTxReady())
        {
            UART1_Write(*data);
            commWriteDataCount++;
            data++;
        }          
    }
    __delay_ms(10);
    IO_RF3_SetLow(); 
}