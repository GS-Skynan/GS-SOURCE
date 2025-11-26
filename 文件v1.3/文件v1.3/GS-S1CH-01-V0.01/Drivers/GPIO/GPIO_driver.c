#include "../GPIO/GPIO_driver.h"


void Led_On(void)
{
      LED_ON;
}

void Led_Off(void)
{
      LED_OFF;
}

void RS485_RXEN(void)
{
    IO_485_OFF;
}

void RS485_TXEN(void)
{
    IO_485_ON;
}

void PFC_Off(void)
{
    APFC_OFF;
}

void PFC_On(void)
{
    APFC_ON;

}

void L6562_Off(eL6562_CHANNEL channel)
{
    if (channel & 0x01)
    {
        L6562_1C_OFF; // 关闭通道 1 的 L6562
    }
    if (channel & 0x02)
    {
        L6562_2C_OFF; // 关闭通道 2 的 L6562  
    }
}

void L6562_On(eL6562_CHANNEL channel)
{
    if (channel & 0x01)
    {
        L6562_1C_ON; // 开通道 1 的 L6562_2
    }
    if (channel & 0x02)
    {
        L6562_2C_ON; // 开通道 2 的 L6562_2  
    }
}

void RELAY_Off(eRELAY_CHANNEL channel)
{

    if (channel & 0x01)
    {
        JDQ1_OFF; // 关闭通道 1 的继电器
    }
    if (channel & 0x02)
    {
        JDQ2_OFF; // 关闭通道 2 的继电器 
    }
}

void RELAY_On(eRELAY_CHANNEL channel)
{

    if (channel & 0x01)
    {
        JDQ1_ON;
    }
    if (channel & 0x02)
    {
        JDQ2_ON;
    }
}


void GIPOInit(void)
{
    RS485_RXEN();
    L6562_Off(L6562_CHANNEL1);
}

