#include <stdint.h>
#include <stdio.h>
#include "../scl/crc.h"


/*
 * CRC16
 */
unsigned int CRC16(unsigned char *Pushdata,unsigned char length)  
{  
    unsigned char uchCRCHi=0xFF; 
    unsigned char uchCRCLo=0xFF;  
    unsigned char uIndex;  
    while(length--)  
    {  
        uIndex=uchCRCHi^*Pushdata++;  
        uchCRCHi=uchCRCLo^auchCRCHi[uIndex];  
        uchCRCLo=auchCRCLo[uIndex];
    }  
    return (uchCRCHi<<8|uchCRCLo);  
}

//应答函数
void reply_data(unsigned char *buffer,unsigned int number)
{
    IO_RF3_SetHigh(); //开启单片机发送
    __delay_ms(5);
    for(unsigned char a=0; a<number ;a++)
    {
        while(!UART1_IsTxReady());
        UART1_Write(buffer[a]);
        while(!UART1_IsTxDone());        
    }
    __delay_ms(5);
   IO_RF3_SetLow();
}


