#include <stdint.h>
#include <stdio.h>
#include "../scl/RS485_DATA.h"

extern unsigned int MCU2_Init;
/**
 * RS485通信处理函数
 * 功能：解析RS485数据帧，处理控制命令，执行功率补偿
 */
void RS485(void)
{
    while(flag){
//    if(flag){  // 主控制标志（当前被注释掉）
        unsigned int CRC_Result;
        flag_Compensation = 1;  // 启用功率补偿标志
        
        // 计算接收到的数据的CRC校验值
        CRC_Result = CRC16(UART1_Receive_Data,15);          //CRC检验

        // 检查帧头和功能码是否符合预期
        if((UART1_Receive_Data[0] == 0xAA || UART1_Receive_Data[0]==0x00) && 
           (UART1_Receive_Data[1] == 0x71 || UART1_Receive_Data[1]==0x10 ||
            UART1_Receive_Data[1] == 0x11 || UART1_Receive_Data[1]==0x60 ||
            UART1_Receive_Data[1] == 0x61 || UART1_Receive_Data[1]==0x50 ||
            UART1_Receive_Data[1] == 0x51 || UART1_Receive_Data[1]==0xA0 ||
            UART1_Receive_Data[1] == 0xA1 || UART1_Receive_Data[1]==0x70 ||
            UART1_Receive_Data[1] == 0xF1) ){
            
            
            // 验证CRC校验结果
            if(CRC_Result == ((UART1_Receive_Data[15] << 8) | UART1_Receive_Data[16])){
                // 头部和CRC校验均符合，处理数据
                
                /*保存数据到应答缓冲区*/           
                for(unsigned int a=0;a<17;a++){
                    reply_buffer[a]=UART1_Receive_Data[a];
                }                                     
                NFC_datajudge();             //NFC通道判断               
                /*将所需数据保存（MCU2_Receive_Data），之后用来发给单片机2*/
                MCU2_Receive_Data[0] = UART1_Receive_Data[0];
                MCU2_Receive_Data[1] = UART1_Receive_Data[1];
                MCU2_Receive_Data[2] = UART_read3[0];
                MCU2_Receive_Data[3] = UART_read3[1];
                MCU2_Receive_Data[4] = UART_read4[0];
                MCU2_Receive_Data[5] = UART_read4[1];
                /*尾部三个空闲位*/
                MCU2_Receive_Data[6] = 0x11;
                MCU2_Receive_Data[7] = 0x22;
                MCU2_Receive_Data[8] = 0x33;          
                /*功能指令处理（帧头为0xAA）*/
                if(UART1_Receive_Data[0]==0xAA){
                    switch( UART1_Receive_Data[1]){
                        case 0x10 :
                        case 0x11 :
                            //设定额定电流                       
                            if(Mode_selection==1){
                                err1 = State_error(1);
                                Rated_Current(); 
                            }                                                                             
                            break;                        
                        case 0x60:
                        case 0x61: 
                            err2 = State_error(2);
                            //启动默认状态
                            Startup_State();
                            break;
                        case 0x50:
                        case 0x51:
                             err3 = State_error(3);
                            //涨功率时间
                            Power_UpTime();
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
                            Channel_changes(); 
                            break; 
                        case 0xF1:
       
                            if(UART1_Receive_Data[8]==0x5A && UART1_Receive_Data[10]==0xA5 &&
                               UART1_Receive_Data[12]==0xC3 && UART1_Receive_Data[14]==0x3C )
                                Access_Bootloder();
                            else
                                error_flag=1;
                            break;
                            
                        default:
                            break;
                    }               
                }                     
                /*调光指令处理（帧头为0x00）*/
                if(UART1_Receive_Data[0] == 0x00)          //调光数据判断
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
                if(v1 == 1 && start_flag == 1){    
                    for(int i = 0;i< 9;i++){
                        while(!UART2_IsTxReady());          // 等待发送缓冲区就绪
                        UART2_Write(MCU2_Receive_Data[i]);  // 发送数据
                        while(!UART2_IsTxDone());           // 等待发送完成
                    }
                    v1 = 0;                                // 重置发送标志
                }
            }
        }else {                                                                 //头部数据错误
            if( v == 1 && error_flag == 1){                                     //错误处理
                reply_data(error,5);                                            //发送错误应答   
                v = 0;                                                          
                error_flag=0;
            }
        }       
        // 执行功率补偿和电流控制
//        CompenSation_Current_Stop();                                            // 电流补偿停止控制
        memset(UART1_Receive_Data,0 ,sizeof(UART1_Receive_Data));               // 清空接收缓冲区并重置标志
        memset(MCU2_Receive_Data,0,sizeof(MCU2_Receive_Data));
        flag = 0;         //数据处理标志。1：处理数据
    }
}