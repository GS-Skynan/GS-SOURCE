#include "../../../DriverService/USBCom_APP/scl/usbcom.h"
#include "../../../DriverLayer/RS485/scl/RS485_DATA.h"
#include "../../../DriverService/NFCService_APP/scl/nfcapp.h"
#include "../../../DriverService/CurrentRead_APP/scl/readcurrent.h"
#include "../../../DriverService/Bootloader/scl/Bootloader.h"
#include "../../../Middlewares/CRC/scl/crc.h"
#include "../../../Middlewares/QUEUE/scl/queue.h"


uint8_t err1,err2,err3,err4,err5,err6;
uint16_t error_flag;              //错误标志位
uint8_t error[5]={'E','R','R','O','R'};//错误数组，
uint16_t flag_Compensation;             //补偿标识
uint8_t MCU2_Receive_Data[9] = {0x00};

uint8_t rs485_flag;

//#define MAX 17
//uint8_t uart1tab[17];


void UART2_SendData(const uint8_t* data, uint16_t length)
{
    for (int i = 0; i < length; i++)
    {                        
        while (!UART2_IsTxReady());  // 等待发送缓冲区就绪
        UART2_Write(data[i]);        // 发送字节数据
        while (!UART2_IsTxDone());   // 等待发送完成
    }
}


/**
 * RS485通信处理函数
 * 功能：解析RS485数据帧，处理控制命令，执行功率补偿
 */

void RS485(uint8_t *data,uint8_t length)
{
        uint16_t CRC_Result;  
       
        CRC_Result = CRC16(data,length-2);    // 计算接收到的数据的CRC校验值

        // 检查帧头和功能码是否符合预期
        if((data[0] == 0xAA || data[0]==0x00) &&
           (data[1] == 0x71 || data[1]==0x10 ||                                                  
            data[1] == 0x11 || data[1]==0x60 ||
            data[1] == 0x61 || data[1]==0x50 ||
            data[1] == 0x51 || data[1]==0xA0 ||
            data[1] == 0xA1 || data[1]==0x70 ||
            data[1] == 0xF1)){
            
            // 验证CRC校验结果
            if(CRC_Result == ((data[length-2] << 8) | data[length-1]))         // 头部和CRC校验均符合，处理数据
            {                            
                /*保存数据到应答缓冲区*/           
                memcpy(reply_buffer, data, length);
                
                NFC_datajudge(data);             //NFC通道判断     
                
                /*将所需数据保存（MCU2_Receive_Data），之后用来发给单片机2*/
                MCU2_Receive_Data[0] = data[0];
                MCU2_Receive_Data[1] = data[1];
                MCU2_Receive_Data[2] = UART_read3[0];
                MCU2_Receive_Data[3] = UART_read3[1];
                MCU2_Receive_Data[4] = UART_read4[0];
                MCU2_Receive_Data[5] = UART_read4[1];
                /*尾部三个空闲位*/
                MCU2_Receive_Data[6] = 0x11;
                MCU2_Receive_Data[7] = 0x22;
                MCU2_Receive_Data[8] = 0x33;          
                /*功能指令处理（帧头为0xAA）*/
                if(data[0]==0xAA){
                    switch( data[1]){
                        case 0x10 :
                        case 0x11 :
                            //设定额定电流                       
                            if(Mode_selection==1){
                                err1 = State_error(1);
                                Rated_Current(data); 
                            }                                                                             
                            break;                        
                        case 0x60:
                        case 0x61: 
                            err2 = State_error(2);
                            //启动默认状态
                            Startup_State(data);
                            break;
                        case 0x50:
                        case 0x51:
                             err3 = State_error(3);
                            //涨功率时间
                            Power_UpTime(data);
                            break;
                        case 0xA0:
                        case 0xA1:   
                            //启动默认功率，恒功率版本
                            if(Mode_selection==2){                          
//                                err4 = State_error(4);
//                                Startup_Power();
                            }
                            break;                        
                        case 0x71: 
                        case 0x70:                   
                            err6 = State_error(6);               
                            Channel_changes(data); 
                            break; 
                        case 0xF1:
       
                            if(data[8]==0x5A && data[10]==0xA5 &&
                               data[12]==0xC3 && data[14]==0x3C)
                                Access_Bootloder();
                            else
                                error_flag=1;
                            break;
                            
                        default:
                            break;
                    }               
                }                     
                /*调光指令处理（帧头为0x00）*/
                if(data[0] == 0x00)          //调光数据判断
                {
                    // 处理通道1调光数据
                    UART_REG1_Pre = UART_REG1=UART_read1[1];
                    //限制通道1的最小值和最大值
                    if( 0x00 < UART_REG1 && UART_REG1 <= 0x14)       UART_REG1_Pre = UART_REG1 = 0x14; 
                    else if(UART_REG1 >= 0x64)                       UART_REG1_Pre = UART_REG1 = 0x64; 
//                    if(UART_REG1 >= 0x14 && UART_REG1 <= 0x60)       UART_REG1_Pre = UART_REG1 = UART_REG1+1;
                    // 处理通道2调光数据
                    UART_REG2_Pre = UART_REG2=UART_read2[1];
                    // 限制通道2的最小值和最大值
                    if(0x00 < UART_REG2 &&  UART_REG2 <= 0x1E)      UART_REG2_Pre = UART_REG2 = 0x1E;
                    else if(UART_REG2 >= 0x64)                      UART_REG2_Pre = UART_REG2 = 0x64;                       
                    // 处理通道3调光数据
                    UART_REG3_Pre = UART_REG3=UART_read3[1];  
                    // 限制通道3的最小值和最大值
                    if(0x00 < UART_REG3 && UART_REG3 <= 0x1E)UART_REG3_Pre =  MCU2_Receive_Data[3] = 0x1E;
                    else if(UART_REG3 >=0x64)                UART_REG3_Pre =  MCU2_Receive_Data[3] = 0x64;
                   
                    // 处理通道4调光数据
                    UART_REG4_Pre = UART_REG4=UART_read4[1];
                      //限制通道4的最小值和最大值
                      if(0x00 < UART_REG4 && UART_REG4 <= 0x1E)UART_REG4_Pre = MCU2_Receive_Data[5] = (0x1E);
                      else if(UART_REG4 >= 0x64)               UART_REG4_Pre = MCU2_Receive_Data[5] = 0x64;                
                    /*温度保护:留存*/                         
                }                
                /*将3，4通道的数据发送给MCU2 */ 
                // && Temp_protected_flag == 0 && start_flag == 1
                
                
                if( start_flag == 1)
                {    
                        UART2_SendData(MCU2_Receive_Data,sizeof(MCU2_Receive_Data));
//                        printf("发送到MCU2 %lu 字节: ", sizeof(MCU2_Receive_Data));
//                        for(int i = 0; i < sizeof(MCU2_Receive_Data); i++) {
//                            printf("%02X ", MCU2_Receive_Data[i]);
//                        }
//                        printf("\r\n");              

                }
            }
        }
        else
        {                                                                       //头部数据错误
            if( rs485_flag == 1 && error_flag == 1)
            {                            //错误处理
                Rs485_DataSend(error,5);                                        //发送错误应答                                                          
                error_flag=0;
            }
        }       
        // 执行功率补偿和电流控制
//        CompenSation_Current_Stop();                                            // 电流补偿停止控制
        memset(data,0 ,sizeof(data));               // 清空接收缓冲区并重置标志
        memset(MCU2_Receive_Data,0,sizeof(MCU2_Receive_Data));
        rs485_flag = 0;         //数据处理标志。1：处理数据
}


void UsbcomAppInit(void)
{
    QueueInit(&uartQueue, uartQueueBuffer, sizeof(uartQueueBuffer));
}

void Rs485Task(void)
{
    IO_RF3_SetLow(); 
    __delay_ms(10);
    uint8_t frameBuffer[68];
    uint32_t queueCount = QueueCount(&uartQueue); 
    if(queueCount >= 17) 
    { 
       rs485_flag=1;      
       uint32_t readCount = UART1_ReadArray(frameBuffer, queueCount);       
 
       RS485(frameBuffer, readCount);
    }
     
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
