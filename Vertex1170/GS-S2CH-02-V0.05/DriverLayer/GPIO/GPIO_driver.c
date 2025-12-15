#include "GPIO_driver.h"

void Led_On(void)
{
    LED_SetLow();
}

void Led_Off(void)
{
    LED_SetHigh();
}

void RS485_RXEN(void)
{
    RS485_EN_SetLow();
}

void RS485_TXEN(void)
{
    RS485_EN_SetHigh();
}

void PFC_Off(void)
{
    APFC_SetLow();
}

void PFC_On(void)
{
    APFC_SetHigh();

}

void L6562_Off(L6562_CHANNEL channel)
{
    if (channel & 0x01)
    {
        L6562_CH1_SetLow(); // 开通道 1 的 L6562
    }
    if (channel & 0x02)
    {
        L6562_CH2_SetLow(); // 开通道 2 的 L6562

    }
}

void L6562_On(L6562_CHANNEL channel)
{
    if (channel & 0x01)
    {
        L6562_CH1_SetHigh(); // 关闭通道 1 的 L6562
    }
    if (channel & 0x02)
    {
        L6562_CH2_SetHigh(); // 关闭通道 2 的 L6562  
    }
}

void RELAY_Off(RELAY_CHANNEL channel)
{

    if (channel & 0x01)
    {
        RELAY1_SetLow(); // 关闭通道 1 的继电器
    }
    if (channel & 0x02)
    {
        RELAY2_SetLow(); // 关闭通道 2 的继电器 
    }
}

void RELAY_On(RELAY_CHANNEL channel)
{

    if (channel & 0x01)
    {
        RELAY1_SetHigh();
    }
    if (channel & 0x02)
    {
        RELAY2_SetHigh();
    }
}

void GPIO_APPInit(void)
{
    RS485_RXEN();
    PFC_Off();
    L6562_Off(L6562_CHANNEL1);
    L6562_Off(L6562_CHANNEL2);
    RELAY_Off(RELAY_CHANNEL1);
    RELAY_Off(RELAY_CHANNEL2);
}