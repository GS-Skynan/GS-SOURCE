#include <stdint.h>
#include <stdio.h>
#include "../scl/OTHER.h"
#include "../../PID/scl/pid.h"

/*将16位数据分解为低八位与高八位*/
void split16BitData(uint16_t data, uint8_t *highByte, uint8_t *lowByte) 
{
    // 高八位：通过右移8位得到
    *highByte = (uint8_t)((data >> 8) & 0xFF) ;  
    // 低八位：通过与0xFF进行按位与操作得到
    *lowByte = (uint8_t)((data >> 0) & 0xFF);
}
void ConvertToDecimalString(uint16_t data, char* str)
{
    // 将16位数据转换为十进制整数并存入字符串
    sprintf(str, "%d", data);  // 使用 sprintf 格式化为十进制字符串
}
extern void float_to_string(float number, char *str, int decimal_places) 
{
    // 使用 sprintf 将浮点数转换为字符串，保留指定的小数位数
    sprintf(str, "%.*f", decimal_places, number);
}

void double_to_string(double value, char *str, size_t str_size, int precision) 
{
    // 使用 snprintf 来安全地将 double 转换为字符串
    snprintf(str, str_size, "%.*f", precision, value);
}

/*阻塞的函数*/
unsigned char str12[6],str13[6];
void Receive_Data_From_MCU2(uint8_t *buffer, uint16_t length)
{
    uint16_t i;   
    for (i = 0; i < length; i++) {
        // 等待直到RX缓冲区有数据
        while (!UART2_IsRxReady()); 
        // 读取接收到的字节
        buffer[i] = UART2_Read();  // 从接收寄存器读取数据
    }

        IO_RF3_SetHigh();
        for(int j = 0;j<length;j++){
            while(!UART1_IsTxReady());
            UART1_Write(buffer[j]);
            while(!UART1_IsTxDone());
        }
        UART1_Write('r\n');
        
      IO_RF3_SetLow();  
}

void MCU1_to_MCU2(uint8_t * Data)
{
    for(int i = 0; i<sizeof(Data);i++){
        UART2_Write(Data[i]);
    }
}

// 函数MCU_To_RS485用于向RS485发送数据，根据标志位flag决定发送的内容类型
// flag:           标志位，1表示发送字符串，2表示发送转换后的浮点数对应的字符串
// number:         用于转换为浮点数（当flag为2时）或无实际作用（当flag为1时）
// length:         当flag为1时，表示要发送的字符串长度；当flag为2时，此参数在发送转换后的字符串时重新计算长度
// str:            存储要发送的字符串或用于存储转换后的字符串
// decimal_places: 当flag为2时，用于指定浮点数转换为字符串时保留的小数位数
void MCU_To_RS485(unsigned char flag, unsigned int number, unsigned int length, char *str, unsigned int decimal_places)
{
    // 将IO_RF3设置为高电平，可能用于准备RS485发送数据的状态
    IO_RF3_SetHigh();

    // 判断标志位flag为1的情况，即发送字符串
    if(flag == 1){        
        // 循环发送字符串中的每个字符
        for(int j = 0;j<length;j++){
            // 等待UART1发送缓冲区就绪
            while(!UART1_IsTxReady());
            // 向UART1写入字符
            UART1_Write(str[j]);
            // 等待UART1发送完成
            while(!UART1_IsTxDone());
            __delay_ms(10);
        }
        // 发送字符串结束标志 "r\n" 中的 'r'
        UART1_Write('r');
        // 发送字符串结束标志 "r\n" 中的 '\n'
        UART1_Write('\n');
    }

    // 判断标志位flag为2的情况，即发送转换后的浮点数对应的字符串
    if(flag == 2){
        // 将number转换为浮点数后，调用float_to_string函数将其转换为字符串
        float_to_string((float)number, str, decimal_places);
        // 获取转换后的字符串长度
        length = strlen(str);
        // 循环发送转换后的字符串中的每个字符
        for(int j = 0;j<length;j++){
            // 等待UART1发送缓冲区就绪
            while(!UART1_IsTxReady());
            // 向UART1写入字符
            UART1_Write(str[j]);
            // 等待UART1发送完成
            while(!UART1_IsTxDone());
            __delay_ms(10);
        }
        // 发送字符串结束标志 "r\n" 中的 'r'
        UART1_Write('r\n');
    }

    // 将IO_RF3设置为低电平，可能用于结束RS485发送数据的状态
    IO_RF3_SetLow();  
}