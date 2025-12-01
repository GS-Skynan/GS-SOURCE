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


uint16_t flag_Compensation; //补偿标识

uint8_t rs485_flag;

/**
 * RS485通信处理函数
 * 功能：解析RS485数据帧，处理控制命令，执行功率补偿
 */

void RS485(uint8_t *data, uint8_t length)
{
    uint16_t CRC_Result;

    CRC_Result = CRC16(data, length - 2); // 计算接收到的数据的CRC校验值

    // 检查帧头和功能码是否符合预期
    if ((data[0] == 0xAA || data[0] == 0x00) &&
        (data[1] == 0x71 || data[1] == 0x10 ||
        data[1] == 0x11 || data[1] == 0x60 ||
        data[1] == 0x61 || data[1] == 0x50 ||
        data[1] == 0x51 || data[1] == 0xA0 ||
        data[1] == 0xA1 || data[1] == 0x70 ||
        data[1] == 0xF1))
    {

        // 验证CRC校验结果
        if (CRC_Result == ((data[length - 2] << 8) | data[length - 1])) // 头部和CRC校验均符合，处理数据
        {
            /*保存数据到应答缓冲区*/
            memcpy(reply_buffer, data, length);

            NFC_datajudge(data);
            //NFC通道判断                     
            /*调光指令处理（帧头为0x00）*/
            if (data[0] == 0x00) //调光数据判断
            {
                // 处理通道1调光数据
                UART_REG1_Pre = UART_REG1 = UART_read1[1];
                //限制通道1的最小值和最大值
                if (0x00 < UART_REG1 && UART_REG1 <= 0x14) UART_REG1_Pre = UART_REG1 = 0x14;
                else if (UART_REG1 >= 0x64) UART_REG1_Pre = UART_REG1 = 0x64;
                //                    if(UART_REG1 >= 0x14 && UART_REG1 <= 0x60)       UART_REG1_Pre = UART_REG1 = UART_REG1+1;
                // 处理通道2调光数据
                UART_REG2_Pre = UART_REG2 = UART_read2[1];
                // 限制通道2的最小值和最大值
                if (0x00 < UART_REG2 && UART_REG2 <= 0x1E) UART_REG2_Pre = UART_REG2 = 0x1E;
                else if (UART_REG2 >= 0x64) UART_REG2_Pre = UART_REG2 = 0x64;
            }
        }
    }
    memset(data, 0, sizeof (data)); // 清空接收缓冲区并重置标志
    rs485_flag = 0; //数据处理标志。1：处理数据
}

void UsbcomAppInit(void)
{
    QueueInit(&uartQueue, uartQueueBuffer, sizeof (uartQueueBuffer));
}

void Rs485Task(void)
{
    IO_RF3_SetLow();
    __delay_ms(10);
    uint8_t frameBuffer[68];
    uint32_t queueCount = QueueCount(&uartQueue);
    if (queueCount >= 17)
    {
        rs485_flag = 1;
        uint32_t readCount = UART1_ReadArray(frameBuffer, queueCount);

        RS485(frameBuffer, readCount);
    }
}

void Display(void)
{
    // float  powernum= (float)get_current(OUT_CURRENT1)*g_Voltage/1000.0f;
    // printf("|V:%d|\n\r",ADC_Result2(Input_voltage_ADC));
    printf("CH1|I:%.2f|PWM:%d|V:%.2f|POW:%.2f|\n\r ",
           get_current(OUT_CURRENT1), pwm1, g_Voltage,powernum);

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
