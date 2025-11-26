#include "../RS485/rs485_driver.h"
#include "../../Drivers/GPIO/GPIO_driver.h"

void EUSART1_Write(uint8_t txData)
{
    TX1REG = txData;
}

bool EUSART1_IsTxReady(void)
{
    return (bool) (PIR3bits.TXIF && TX1STAbits.TXEN);
}

/**
 ****************************************************************
 * @brief   重定义putch，不然printf打印不了
 * @param   data, 打印的数据
 ****************************************************************
 */

void putch(char data)
{
    RS485_TXEN();
    __delay_ms(5);
    while (!EUSART1_IsTxReady());
    EUSART1_Write(data);
    __delay_ms(2);
    RS485_RXEN();
}

