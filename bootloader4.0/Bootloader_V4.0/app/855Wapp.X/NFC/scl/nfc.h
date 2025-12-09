#ifndef NFC_H
#define NFC_H


#include "../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
/* NFC功能相关变量 */
//float   TARGET_CURRENT_1_Pre = (CURRENT_1 /100.0f * UART_REG1);
#define TARGET_CURRENT_1 (CURRENT_1 /100.0f * UART_REG1)
#define TARGET_CURRENT_2 (CURRENT_2 /100.0f * UART_REG2)
#define TARGET_CURRENT_3 (CURRENT_3 /100.0f * UART_REG3)
#define TARGET_CURRENT_4 (CURRENT_4 /100.0f * UART_REG4)

#ifdef POWER             //恒功率
#define TARGET_POWER_1 ((POWER_1_Efficiency)*(UART_REG1)*(POWER1)) //按照效率=1166/1200来算(主通道输出功率）
#define TARGET_POWER_2 ((POWER_2_Efficiency)*(UART_REG2)*(POWER2)) //156W（二通道输出功率）  /注意：2通道的效率需要根据功率不同来变
#define TARGET_POWER_3 ((UART_REG3)*(POWER3)*(POWER_3_Efficiency)) //187W(三通道输出功率）
#define TARGET_POWER_4 ((UART_REG4)*(POWER4)*(POWER_4_Efficiency)) //114W（四通道输出功率）
 
float POWER_1_Efficiency = 0.9716;  
float POWER_2_Efficiency = 0.9075;
float POWER_3_Efficiency = 0.9393;  
float POWER_4_Efficiency = 0.9457;             //按照最大功率校准


float POWER1  = 11.66;
float POWER2 = 1.56;
float POWER3 = 1.8700;
float POWER4 = 0.96;
#else            //恒流
float CURRENT_1 = 3250.0f;
float CURRENT_2 = 898.0f;
float CURRENT_3 = 817.0f;
float CURRENT_4 = 420.0f;

#endif
unsigned char v11, v2, v3, v4; 
unsigned char GPO_config_value = 0;
unsigned char I2C_receiveData[72];
unsigned char I2C_sendAdd[2];
unsigned char I2C_sendAdd_2[3] = {0x00, 0x00, 0xC0};
unsigned char I2C_R_system_config_Data[1];
unsigned char I2C_password_add[19] = {0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

unsigned char   UART_REG1=0X00,UART_REG2=0X00,UART_REG3=0X00,UART_REG4=0X00;
unsigned char   UART_REG1_Pre=0X00,UART_REG2_Pre=0X00,UART_REG3_Pre=0X00,UART_REG4_Pre=0X00;
unsigned int power_Hold_1,power_Hold_2,power_Hold_3,power_Hold_4;    //功率
unsigned char time_H,time_L;
unsigned int power_time = 10,time11 = 1,time2;             //2:表示0到1200W需要10s，其余功率按照比列进行
unsigned int Mode_selection;   //模式选择标志位   1：恒流  2：恒功率
unsigned char str[16];
unsigned int v = 1;
unsigned int v1 = 0;
unsigned int readNFC_flag=0;
extern unsigned int reply_flag,reply_ok,reply_time;
unsigned char NFC_data[72]={0x00,0x00};   //NFC数据
unsigned int con1=1,con2=1,con3=1,con4=1;   //通道选择
unsigned char UART_read1[2]={0x00,0x00},UART_read2[2]={0x00,0x00};   //
unsigned char UART_read3[2]={0x00,0x00},UART_read4[2]={0x00,0x00}; 
unsigned char UART1_Receive_Data[72];       //   IIC数据

unsigned int Channel_selection=2;            //通道机型选择标志位   1-4
extern unsigned int err1,err2,err3,err4,err5,err6;  //判断错误类型标志位
extern unsigned int error_flag;              //错误标志位
unsigned int extractAndCombineEEPROMData(unsigned char read_eeprom_H, unsigned char read_eeprom_L);
/* 函数：读取EEPROM数据并拆分为高字节和低字节 */
void readEEPROMData(unsigned char *data, unsigned char *highByte, unsigned char *lowByte);
/* 函数：将高字节和低字节合并为16位数据 */
unsigned int combineEEPROMData(unsigned char highByte, unsigned char lowByte);
/* NFC初始化设置 */
void READ_NFC_SET_START(unsigned int flag);
extern unsigned  char NFC_receiveData[72];                 //写入完成后，再次读取NFC时储存数据数组
/*NFC数据处理*/
void NFC_Data_Process(void);
//新
void NFC_datajudge(void);
void Rated_Current(void);   //启动默认电流
void Startup_Power(void);  //启动默认功率
void Startup_State(void); //启动默认状态
void Power_UpTime(void);  //涨功率时间
void Channel_changes(void);
unsigned int State_error(unsigned int err);
unsigned int is_valid_data(unsigned char *data, unsigned int state_error_flag);
unsigned int bcd_to_int(uint8_t bcd);
unsigned int int_to_bcd(uint8_t intt);
void float_to_string(float number, char *str, int decimal_places);

void sendDataToUART(unsigned int data);
void processChannelDataIfNeeded(unsigned char channel, unsigned char* eeprom_data_ptr, unsigned char read_eeprom_H, unsigned char read_eeprom_L);
void processChannelData(unsigned char channel, unsigned int channelData);
/*电流数据处理*/
void Current_Data_Processing(unsigned char channel, unsigned int channelData);
// 错误处理函数
void handleError(void);
#endif 

