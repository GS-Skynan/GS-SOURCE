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
#include "usbcom.h"


uint16_t flag_Compensation; //补偿标识

uint8_t rs485_flag;
#define RX_BUFFER_SIZE 40

#define PROTOCOL_HEADER_LENGTH 7
#define CRC_BYTES_LENGTH 2

uint8_t  Rx_Buffer[RX_BUFFER_SIZE];
uint16_t g_uCheckCRC16;
uint16_t g_uCheckCRCResult;

static void ClearReceiveData(void)
{
      QueueClearEx(&uartQueue,true);
      memset(Rx_Buffer, 0, sizeof(Rx_Buffer));
      g_bRs485Flag = 0;
}


/**
 * RS485通信处理函数
 * 功能：解析RS485数据帧，处理控制命令，执行功率补偿
 */
void Rs485Task(void)
{

  //判断一帧数据是否结束
    if (g_bRs485Flag != 1)
    {
        return;
    }
    
    uint32_t queueCount = QueueCount(&uartQueue);   // 确保不超过缓冲区大小
    if (queueCount > sizeof(Rx_Buffer))
    {
         ClearReceiveData();
         return;
    } 
    uint32_t readCount = UART1_ReadArray(Rx_Buffer, queueCount);
    
        printf("读取到 %lu 字节: ", readCount);
        for(int i = 0; i < readCount; i++) {
            printf("%02X ", Rx_Buffer[i]);
        }
        printf("\r\n");
    
    //CRC校验 不定长校验
    uint8_t data_length = queueCount - CRC_BYTES_LENGTH;
    g_uCheckCRC16 = CRC16(Rx_Buffer, data_length);
    g_uCheckCRCResult = (uint16_t) ((Rx_Buffer[data_length] << 8) + Rx_Buffer[data_length + 1]);

    if (g_uCheckCRC16 != g_uCheckCRCResult)    //CRC校验失败
    {
        ClearReceiveData();						
        return;
    }

    uint8_t ExpectedDataBytes = Rx_Buffer[6];
    uint8_t ActualDataBytes = queueCount - PROTOCOL_HEADER_LENGTH - CRC_BYTES_LENGTH;
    //判断实际数据长度是否跟协议长度一致
    if (ActualDataBytes != ExpectedDataBytes)
    {
        ClearReceiveData();
        return;
    }

    //灯光调节指令
    if ((Rx_Buffer[1] == 0x10)&&(Rx_Buffer[3] == 0x0E))
    {
        printf("有效命令，调用RS485处理\r\n");
      //  UART_REG1 = Rx_Buffer[8]; //第一通道
    }


    ClearReceiveData();
}

void UsbcomAppInit(void)
{
     IO_RF3_SetLow();
    __delay_ms(10);
    QueueInit(&uartQueue, uartQueueBuffer, sizeof (uartQueueBuffer));
}

void Display(void)
{
    // float  powernum= (float)get_current(OUT_CURRENT1)*g_Voltage/1000.0f;
    // printf("|V:%d|\n\r",ADC_Result2(Input_voltage_ADC));
    printf("CH1|I:%.2f|PWM:%d|V:%.2f|POW:%.2f|\n\r ",
           get_current(OUT_CURRENT1), pwm1, g_Voltage1,powernum1);
   printf("CH2|I:%.2f|PWM:%d|V:%.2f|POW:%.2f|\n\r ",
           get_current(OUT_CURRENT2), pwm2, g_Voltage2,powernum2);

}



//        printf("读取到 %lu 字节: ", readCount);
//        for(int i = 0; i < readCount; i++) {
//            printf("%02X ", frameBuffer[i]);
//        }
//        printf("\r\n");     

//void Rs485Task(void)
//{
//     IO_RF3_SetLow(); 
//    __delay_ms(10);
//    
//    uint32_t queueCount = QueueCount(&uartQueue); 
//    
//    if(queueCount >= 17) 
//    {
//        uint8_t frameBuffer[68];
//        uint32_t readCount = QueuePopArray(&uartQueue, frameBuffer, queueCount);
//        
//        v=1;
//        v1=1;
//        flag=1;
//        printf("读取到 %lu 字节: ", readCount);
//        for(int i = 0; i < readCount; i++) {
//            printf("%02X ", frameBuffer[i]);
//        }
//        printf("\r\n");
//        
//        if(frameBuffer[0] == 0x00 && frameBuffer[1] == 0x10) 
//        {
//            printf("有效命令，调用RS485处理\r\n");
//            RS485(frameBuffer, queueCount);
//        }
//        else 
//        {
//            printf("无效命令头，仅丢弃当前命令\r\n");
//            // 只丢弃当前读取的19字节，不碰队列中其他数据
//            // 这里什么都不用做，因为已经通过QueuePopArray移除了
//        }
//        
//        // 队列中可能还有其他命令，让下一次循环处理
//    }
//}   



//void RS485(uint8_t *data, uint8_t length)
//{
//    printf(">>> RS485函数入口\n");
//    
//    uint16_t CRC_Result;
//    
//    // 保持你原来的15字节CRC计算
//    CRC_Result = CRC16(data, 15);
//    printf("CRC计算: data[0-14] -> 0x%04X\n", CRC_Result);
//    printf("CRC接收: data[15-16] -> 0x%02X%02X\n", data[15], data[16]);
//
//    // 检查帧头和功能码
//    if((data[0] == 0xAA || data[0] == 0x00) && 
//       (data[1] == 0x71 || data[1] == 0x10 || data[1] == 0x11 || 
//        data[1] == 0x60 || data[1] == 0x61 || data[1] == 0x50 ||
//        data[1] == 0x51 || data[1] == 0xA0 || data[1] == 0xA1 ||
//        data[1] == 0x70 || data[1] == 0xF1)) {
//        
//        printf("帧头和功能码检查通过\n");
//        
//        // CRC检查
//        if(CRC_Result == ((data[15] << 8) | data[16])) {
//            printf("CRC检查通过，进入业务逻辑\n");
//            
//            // 你的业务逻辑...
//            memcpy(reply_buffer, data, 17);
//            NFC_datajudge();
//            // ... 其他代码
//            
//            printf("业务逻辑执行完成\n");
//        } else {
//            printf("CRC检查失败\n");
//        }
//    } else {
//        printf("帧头或功能码检查失败: 0x%02X 0x%02X\n", data[0], data[1]);
//    }
//    
//    printf("<<< RS485函数退出\n\n");
//}
