#include "usbcom.h"
#include "RS485_DATA.h"
#include "readcurrent.h"
#include "Bootloader.h"
#include "crc.h"
#include "queue.h"
#include "nfcapp.h"
#include "adc_driver.h"
#include <stdio.h>
#include "dimming.h"
#include "ticktime.h"
#include "out_protected.h"
#include  "GPIO_driver.h"


uint16_t flag_Compensation; //补偿标识

uint8_t rs485_flag;
#define RX_BUFFER_SIZE 40

#define PROTOCOL_HEADER_LENGTH 7
#define CRC_BYTES_LENGTH 2

uint8_t Rx_Buffer[RX_BUFFER_SIZE];
uint16_t g_uCheckCRC16;
uint16_t g_uCheckCRCResult;

volatile uint8_t Rx_Buffer_ISR[RX_BUFFER_SIZE];
volatile uint8_t Rx_Length = 0;

void UartReceivedISR(void)
{
    if (Rx_Length < sizeof (Rx_Buffer_ISR))
    {
        Rx_Buffer_ISR[Rx_Length] = UART1_Read();
        Rx_Length++;
        g_uRs485TimeOut = 10;
    }
    else
    {
        Rx_Length = 0;
        memset(Rx_Buffer_ISR, 0, sizeof (Rx_Buffer_ISR));
    }
}

static void ClearReceiveData(void)
{
    Rx_Length = 0;
    memset(Rx_Buffer, 0, sizeof (Rx_Buffer));
    memset(Rx_Buffer_ISR, 0, sizeof (Rx_Buffer_ISR));
    g_bRs485Flag = 0;
}

void Rs485Task(void)
{

    //判断一帧数据是否结束
    if (g_bRs485Flag != 1)
    {
        return;
    }

    //数据拷贝 防止中断数据干扰
    memcpy(Rx_Buffer, Rx_Buffer_ISR, Rx_Length);


    //        printf("读取到 %d 字节: ", Rx_Length);
    //        for(int i = 0; i < Rx_Length; i++) {
    //            printf("%02X ", Rx_Buffer[i]);
    //        }
    //        printf("\r\n");
    //CRC校验 不定长校验
    uint8_t data_length = Rx_Length - CRC_BYTES_LENGTH;
    g_uCheckCRC16 = CRC16(Rx_Buffer, data_length);
    g_uCheckCRCResult = (uint16_t) ((Rx_Buffer[data_length] << 8) + Rx_Buffer[data_length + 1]);

    if (g_uCheckCRC16 != g_uCheckCRCResult) //CRC校验失败
    {
        ClearReceiveData();

        return;
    }

    uint8_t ExpectedDataBytes = Rx_Buffer[6];
    uint8_t ActualDataBytes = Rx_Length - PROTOCOL_HEADER_LENGTH - CRC_BYTES_LENGTH;
    //判断实际数据长度是否跟协议长度一致
    if (ActualDataBytes != ExpectedDataBytes)
    {
        ClearReceiveData();
        return;
    }

    //灯光调节指令
    if ((Rx_Buffer[1] == 0x10)&&(Rx_Buffer[3] == 0x0E))
    {
        //  printf("有效命令，调用RS485处理\r\n");
        UART_REG1 = Rx_Buffer[8]; //第一通道
        UART_REG2 = Rx_Buffer[10]; //第一通道
    }

    ClearReceiveData();
}


//
//static void ClearReceiveData(void)
//{
//      QueueClearEx(&uartQueue,true);
//      memset(Rx_Buffer, 0, sizeof(Rx_Buffer));
//      g_bRs485Flag = 0;
//      rs485_flag=0;
//}
//
//
///**
// * RS485通信处理函数
// * 功能：解析RS485数据帧，处理控制命令，执行功率补偿
// */
//void Rs485Task(void)
//{
//
//  //判断一帧数据是否结束
//    
////    if (g_bRs485Flag != 1)
////    {
////        return;
////    }
//    
//    uint32_t queueCount = QueueCount(&uartQueue);   // 确保不超过缓冲区大小
//    if(queueCount>=17)rs485_flag=1;
//    if(rs485_flag!=1)
//    {
//        return;
//    }
//    if (queueCount > sizeof(Rx_Buffer))
//    {
//         ClearReceiveData();
//         return;
//    } 
//    uint32_t readCount = UART1_ReadArray(Rx_Buffer, queueCount);
//    
//        printf("读取到 %lu 字节: ", readCount);
//        for(int i = 0; i < readCount; i++) {
//            printf("%02X ", Rx_Buffer[i]);
//        }
//        printf("\r\n");
//    
//    //CRC校验 不定长校验
//    uint8_t data_length = queueCount - CRC_BYTES_LENGTH;
//    g_uCheckCRC16 = CRC16(Rx_Buffer, data_length);
//    g_uCheckCRCResult = (uint16_t) ((Rx_Buffer[data_length] << 8) + Rx_Buffer[data_length + 1]);
//
//    if (g_uCheckCRC16 != g_uCheckCRCResult)    //CRC校验失败
//    {
//        ClearReceiveData();						
//        return;
//    }
//
//    uint8_t ExpectedDataBytes = Rx_Buffer[6];
//    uint8_t ActualDataBytes = queueCount - PROTOCOL_HEADER_LENGTH - CRC_BYTES_LENGTH;
//    //判断实际数据长度是否跟协议长度一致
//    if (ActualDataBytes != ExpectedDataBytes)
//    {
//        ClearReceiveData();
//        return;
//    }
//
//    //灯光调节指令
//    if ((Rx_Buffer[1] == 0x10)&&(Rx_Buffer[3] == 0x0E))
//    {
//        //printf("有效命令，调用RS485处理\r\n");
//        UART_REG1 = Rx_Buffer[8]; //第一通道
//    }
//
//
//    ClearReceiveData();
//}

void UsbcomAppInit(void)
{
    RS485_RXEN();
    __delay_ms(10);
    UART1_RxCompleteCallbackRegister(UartReceivedISR);
    //    QueueInit(&uartQueue, uartQueueBuffer, sizeof (uartQueueBuffer));

}

void Display(void)
{
//     float  powernum= (float)get_current(OUT_CURRENT1)*g_Voltage/1000.0f;
//     printf("|V:%d|\n\r",ADC_Result2(Input_voltage_ADC));
        printf("CH1|I:%.2f|PWM:%d|V:%.2f|P:%.2f|\n\r ",
              get_current(OUT_CURRENT1), pwm1, g_Voltage1,powernum1);
       printf("CH2|I:%.2f|PWM:%d|V:%.2f|P:%.2f|\n\r ",
               get_current(OUT_CURRENT2), pwm2, g_Voltage2,powernum2);
       
       printf("TP:%.2f|URGE1:%d|URGE2:%d| \n\r ", power_pwm,UART_REG1,UART_REG2);
  //     printf("Vin:%d| \n\r ",ADC_Result2(Input_voltage_ADC));


    printf("Vout1:%d|Pro:%d|\n\r ", g_VoltageProtect1, V_Ret1);
    printf("Vout2:%d|Pro:%d|\n\r ", g_VoltageProtect2, V_Ret2);
}


