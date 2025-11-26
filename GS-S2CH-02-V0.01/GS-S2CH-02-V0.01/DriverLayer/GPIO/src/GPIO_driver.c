#include "../../../DriverLayer/GPIO/scl/GPIO_driver.h"


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
    IO_RF3_SetLow();       
}
void RS485_TXEN(void)
{
    IO_RF3_SetHigh();       
}

void PFC_Off(void)
{
     PFC_SetLow();
}

void PFC_On(void)
{
      PFC_SetHigh();
      
}


void  L6562_Off(L6562_CHANNEL channel)
{   
    if(channel&0x01)
    {
        L6562_SetHigh();                // 关闭通道 1 的 L6562
    }
    if(channel&0x02)
    {
      L6562_2_SetHigh();               // 关闭通道 2 的 L6562  
    }
}

void  L6562_On(L6562_CHANNEL channel)
{   
    if(channel&0x01)
    {
        L6562_SetLow();                 // 开通道 1 的 L6562_2
    }
    if(channel&0x02)
    {
       L6562_2_SetLow();                // 开通道 2 的 L6562_2  
    }
}

void  RELAY_Off(RELAY_CHANNEL channel)
{
    
    if(channel&0x01)
    {
        JDQ_1_SetLow();                  // 关闭通道 1 的继电器
    }
    if(channel&0x02)
    {
        JDQ_2_SetLow();                   // 关闭通道 2 的继电器 
    }                                  
}

void  RELAY_On(RELAY_CHANNEL channel)
{
    
    if(channel&0x01)
    {
        JDQ_1_SetHigh();                  
    }
    if(channel&0x02)
    {
        JDQ_2_SetHigh();                  
    }                                  
}


void GPIO_APPInit(void)
{
    RS485_RXEN();
}