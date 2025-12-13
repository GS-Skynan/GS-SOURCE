#include <stdint.h>
#include <stdio.h>
#include "../scl/INIT_PROTECTED_3_4.h"
#include "../../PID/scl/pid.h"

void Data_Deal_Init_Current(void)
{
    /*1通道*/
    power_Hold_1 = extractAndCombineEEPROMData(I2C_receiveData[2], I2C_receiveData[3]);    // 从I2C接收数据的第2和第3字节提取并组合成16位功率保持值
    if(power_Hold_1 >= 3500) power_Hold_1 = 3500;                                          // 限幅处理：功率保持值不能超过3500
    if(power_Hold_1 < 1800)  power_Hold_1 = 0;                                             // 限幅处理：功率保持值小于2300时视为无效值，置为0
    CURRENT_1 = power_Hold_1;                                                              // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG1_Pre = UART_REG1 = I2C_receiveData[0];                                        // 从I2C接收数据的第0字节获取UART寄存器值，并保存当前值和前值
    if(UART_REG1 >= 0x64)UART_REG1 = 0x64;                                                 // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    
    /*2通道*/
    power_Hold_2 = extractAndCombineEEPROMData(I2C_receiveData[6], I2C_receiveData[7]);    // 从I2C接收数据的第6和第7字节提取并组合成16位功率保持值
    if(power_Hold_2 >= 1100) power_Hold_2 = 1100;                                          // 限幅处理：功率保持值不能超过1200
    if(power_Hold_2 < 700)   power_Hold_2 = 0;                                             // 限幅处理：功率保持值小于700时视为无效值，置为0
    CURRENT_2 = power_Hold_2;                                                              // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG2_Pre = UART_REG2 = I2C_receiveData[4];                                        // 从I2C接收数据的第4字节获取UART寄存器值，并保存当前值和前值
    if(UART_REG2 >= 0x64)UART_REG2 = 0x64;                                                 // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    
    /*3通道*/
    power_Hold_3 = extractAndCombineEEPROMData(I2C_receiveData[10], I2C_receiveData[11]);  // 从I2C接收数据的第10和第11字节提取并组合成16位功率保持值
    if(power_Hold_3 >= 1200) power_Hold_3 = 1200;                                          // 限幅处理：功率保持值不能超过1200
    CURRENT_3 = power_Hold_3;                                                              // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG3_Pre = UART_REG3 = I2C_receiveData[8];                                        // 从I2C接收数据的第8字节获取UART寄存器值，并保存当前值和前值
    if(UART_REG3 >= 0x64)UART_REG3 = 0x64;                                                 // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    
    /*4通道*/
    power_Hold_4 = extractAndCombineEEPROMData(I2C_receiveData[14], I2C_receiveData[15]);  // 从I2C接收数据的第14和第15字节提取并组合成16位功率保持值
    if(power_Hold_4 >= 1200) power_Hold_4 = 1200;                                          // 限幅处理：功率保持值不能超过1200
    CURRENT_4 = power_Hold_4;                                                              // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG4_Pre = UART_REG4 = I2C_receiveData[12];                                       // 从I2C接收数据的第12字节获取UART寄存器值，并保存当前值和前值
    if(UART_REG4 >= 0x64)UART_REG4 = 0x64;                                                 // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    
    /*时间初始化*/
    time_H = (((I2C_receiveData[64] >> 4) * 10) + (I2C_receiveData[64] & 0x0F));           // 从I2C接收数据的第64字节提取时间的高位
    time_L = (((I2C_receiveData[65] >> 4) * 10) + (I2C_receiveData[65] & 0x0F));           // 从I2C接收数据的第65字节提取时间的低位
    power_time = ((time_H * 100) + time_L);                                               
    time11 = (unsigned int)((float)(4+power_time)/4.0f * (CURRENT_1 /2000.0f));            // 基于功率时间和通道1电流值的复杂计算，可能用于定时控制
    time2 = power_time;                                                                    // 直接使用功率时间值作为time2

    
}