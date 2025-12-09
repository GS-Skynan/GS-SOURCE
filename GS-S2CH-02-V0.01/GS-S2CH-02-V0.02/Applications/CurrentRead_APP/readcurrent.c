#include "readcurrent.h"
#include "nfc.h"
#include "nfcapp.h"



uint16_t power_Hold_1, power_Hold_2;
uint8_t UART_REG1 = 0X00, UART_REG2 = 0X00;
uint16_t power_time = 1;
uint16_t g_uPower1, g_uPower2;

void ReadCurrentInit(uint8_t* nfcData)
{
    /*1通道*/
    power_Hold_1 = extractAndCombineEEPROMData(nfcData[2], nfcData[3]); // 从I2C接收数据的第2和第3字节提取并组合成16位功率保持值
    if (power_Hold_1 >= 855) power_Hold_1 = 855; // 限幅处理：功率保持值不能超过3500
    if (power_Hold_1 < 500) power_Hold_1 = 500; // 限幅处理：功率保持值小于2300时视为无效值，置为0
    g_uPower1 = power_Hold_1; // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG1 = nfcData[0]; // 从I2C接收数据的第0字节获取UART寄存器值，并保存当前值和前值
    if (UART_REG1 >= 0x64)UART_REG1 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)

    /*2通道*/
    power_Hold_2 = extractAndCombineEEPROMData(nfcData[6], nfcData[7]); // 从I2C接收数据的第6和第7字节提取并组合成16位功率保持值
    if (power_Hold_2 >= 113) power_Hold_2 = 113; // 限幅处理：功率保持值不能超过1200
    if (power_Hold_2 < 50) power_Hold_2 = 50; // 限幅处理：功率保持值小于700时视为无效值，置为0
    g_uPower2 = power_Hold_2; // 将处理后的功率保持值赋给当前通道电流变量
    UART_REG2 = nfcData[4]; // 从I2C接收数据的第4字节获取UART寄存器值，并保存当前值和前值
    if (UART_REG2 >= 0x64)UART_REG2 = 0x64; // 限幅处理：UART寄存器值不能超过0x64(十进制100)
    // 直接使用功率时间值作为time2  
}

void PowerCompensationTime(uint8_t* nfcData)
{
    uint8_t time_H, time_L;
    /*时间初始化*/
    time_H = (((nfcData[64] >> 4) * 10) + (nfcData[64] & 0x0F)); // 从I2C接收数据的第64字节提取时间的高位
    time_L = (((nfcData[65] >> 4) * 10) + (nfcData[65] & 0x0F)); // 从I2C接收数据的第65字节提取时间的低位
    power_time = ((time_H * 100) + time_L);
    power_time = power_time * 1000;
}

void ReadNfcNumber(void)
{
    ReadCurrentInit(I2C_receiveData);
    PowerCompensationTime(I2C_receiveData);
    __delay_ms(5);
}



uint16_t g_uChanne1Power;
uint16_t g_uTargetPower;
uint16_t g_uChanne2Power;
uint16_t g_Pzong;


uint16_t Power_Compensation(void)
{
    uint16_t setPower = 0;
    setPower = g_uPower1;
    g_uChanne1Power = (g_uPower1 / 100 * UART_REG1)-24;
    g_uChanne2Power = (g_uPower2 / 100 * UART_REG2)-19;
    g_Pzong = g_uChanne1Power + g_uChanne2Power;
    if (g_Pzong > setPower)
    {
        g_uTargetPower = setPower - (g_Pzong - g_uChanne1Power) -29 ;
    }
    else
    {   
            g_uTargetPower = (g_uChanne1Power) ;
    }

    if (g_uTargetPower < 0)g_uTargetPower = 0;
    if (g_uTargetPower > setPower)g_uTargetPower = setPower;
    return g_uTargetPower;
}


