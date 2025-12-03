#include "RS485_DATA.h"
#include "nfcapp.h"

#include <stdio.h>



// uint8_t uart1_receive;
//volatile uint8_t Rx_Length = 0;
//uint8_t flag;

//static void (*uart1_callback)(uint8_t *data, uint8_t length);
//
//
//void Register_Uart1_Callback(void (*callback)(uint8_t *data, uint8_t length))
//{
//    if(NULL != callback)
//    {
//        uart1_callback = callback;
//    }
//}


//
//static void rs485_receive(void)
//{
//    uart1_receive = UART1_Read();
//
//    // 数据帧处理逻辑
//    if (Rx_Length < DATA_SIZE) 
//    {
//        switch (Rx_Length)
//        {
//            case 0:  // 第一个字节
//                if (uart1_receive == 0x00 || uart1_receive == 0xAA)
//                {
//                    UART1_Receive_Data[Rx_Length++] = uart1_receive;
//                }
//                break;
//                
//            case 1:  // 第二个字节
//                switch (uart1_receive)
//                {
//                   case 0x10: case 0x11: case 0x60: case 0x61: case 0x50: case 0x51:
//                   case 0xA0: case 0xA1: case 0x71: case 0x70: case 0xF1: 
//                        UART1_Receive_Data[Rx_Length++] = uart1_receive;
//                        break;
//                    default:
//                        Rx_Length = 0;  // 无效数据，重置接收状态
//                        break;
//                }
//                break;
//                
//            default:  // 后续字节
//                UART1_Receive_Data[Rx_Length++] = uart1_receive;
//                break;
//        }
//    }
//    
//    // 检查是否接收完整帧
//    if (Rx_Length >= DATA_SIZE) 
//    {    
//        Rx_Length = 0;
//        flag = 1;
//        v = 1; 
//        v1 = 1;       
//  
//    }       
//}
//
//
//void GetRs485_Data(void)
//{
//    if( flag == 1)
//    {
//        if(uart1_callback != NULL)      
//         {
//             uart1_callback(UART1_Receive_Data, DATA_SIZE);        
//        }
//    } 
//}



//void RS485_Register_Callback(void)
//{
//   UART1_RxCompleteCallbackRegister(rs485_receive);
//}



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