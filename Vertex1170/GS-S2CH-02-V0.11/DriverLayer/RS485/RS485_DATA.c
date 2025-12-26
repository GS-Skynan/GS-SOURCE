#include "RS485_DATA.h"
#include <stdio.h>
#include "GPIO_driver.h"

void Rs485_DataSend(uint8_t *data, uint8_t dataLength)
{
    uint8_t commWriteDataCount;
    commWriteDataCount = 0;


    RS485_TXEN();
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
    RS485_RXEN();
}

void putch(char data)
{
    RS485_TXEN();
    __delay_ms(5);
    while (!UART1_IsTxReady());
    UART1_Write(data);
    __delay_ms(2);
    RS485_RXEN();
}