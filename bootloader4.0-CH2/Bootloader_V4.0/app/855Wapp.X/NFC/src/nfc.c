#include <stdint.h>
#include <stdio.h>
#include "../scl/nfc.h"
#include "../../CRC/scl/crc.h"


/*说明：NFC功能的实现函数*/

/* 函数：提取并合并NFC 数据 
 *unsigned char read_eeprom_H：高8位
 * unsigned char read_eeprom_L：低8位
 * 返回值：NFC的电流值（十进制）
 */
unsigned int extractAndCombineEEPROMData(unsigned char read_eeprom_H, unsigned char read_eeprom_L) 
{
    unsigned char first_num = read_eeprom_H >> 4;       // 提取高4位
    unsigned char second_num = (read_eeprom_H & 0x0F);  // 提取低4位
    unsigned char third_num = read_eeprom_L >> 4;       // 提取高4位
    unsigned char fourth_num = (read_eeprom_L & 0x0F);  // 提取低4位

    // 将提取出的数字合并成一个整数（如2960）
    unsigned int num = first_num * 1000 + second_num * 100 + third_num * 10 + fourth_num;
    return num;
}
/* 函数：读取EEPROM数据并拆分为高字节和低字节 */
void readEEPROMData(unsigned char *data, unsigned char *highByte, unsigned char *lowByte) 
{
    *highByte = data[0];   // 高字节
    *lowByte = data[1];    // 低字节
}

/* 函数：将高字节和低字节合并为16位数据 */
unsigned int combineEEPROMData(unsigned char highByte, unsigned char lowByte)
{
    unsigned int result = (highByte << 8) | lowByte;  // 合并高低字节
    return result;
}
/* NFC初始化设置 */
void READ_NFC_SET_START(unsigned int flag) 
{
    
    while(!I2C1_Write(0x57, I2C_sendAdd_2, 2));  // 写入系统配置地址
    while(!I2C1_Read(0x57, I2C_R_system_config_Data, sizeof(I2C_R_system_config_Data)));  // 读取系统配置
    __delay_ms(5);  
    GPO_config_value = I2C_R_system_config_Data[0];  // 获取系统配置值
    __delay_ms(5);  
    if (GPO_config_value == 0xC0) {
        // 如果GPO配置值为0xC0，则不做任何操作
    }else{                                          // 否则，启用ST25DV04K GPO密码
        
        while(!I2C1_Write(0x57, I2C_password_add, 19));  // 写入密码
        __delay_ms(5); 
        while(!I2C1_Read(0x57, I2C_sendAdd_2, 3));  // 读取地址
        __delay_ms(2);  
    }
    // 写入NFC使用的内存地址
    while(!I2C1_Write(0x53, I2C_sendAdd, 2));
    /*NFC数据：I2C_receiveData*/   
    if(flag == 1)while(!I2C1_Read(0x53, I2C_receiveData, 72)); 
    if(flag == 2)while(!I2C1_Read(0x53, NFC_receiveData, 72)); 
}
/*调试信息*/
void sendDataToUART(unsigned int data)
{
    unsigned char str[20] = {0x00};
    sprintf(str, "%d", data);
    for (int i = 0; i < strlen(str); i++) {
        UART1_Write(str[i]);
        __delay_ms(2); // 延时5ms
    }
}
/* NFC数据处理 */
// 定义一个无符号字符类型的数组，用于存储要发送给MCU2的数据，数组大小为9
unsigned char NFC_MCU2_DATA[9]; 

// NFC数据处理函数，主要用于处理从I2C接收的数据，并将处理后的数据通过UART2发送给MCU2
void NFC_Data_Process(void)
{
    // 将读取NFC数据保存下来：存在数组NFC_data[]中（这里只是注释说明，实际代码中NFC_data[]未在当前函数中使用）
    // 循环将I2C_receiveData数组中的数据复制到NFC_data数组中（这里NFC_data[]数组未在当前函数中定义，可能在其他地方定义）
    // 循环次数为40，将I2C_receiveData数组中的数据复制到NFC_data数组从索引2（NFC芯片的存储必须空两个）开始的位置
    for(unsigned int u=0;u<40;u++)        
    {
        NFC_data[u+2]=I2C_receiveData[u];
    }

    // 设置NFC_MCU2_DATA数组的第一个元素为0x12，作为标识头
    NFC_MCU2_DATA[0] = 0x12;
    
    // 从I2C接收数据中提取时间相关的数据（这里I2C_receiveData[64]和I2C_receiveData[65]是涨功率时间相关的数据）
    // 并将其存储到NFC_MCU2_DATA数组的第二个和第三个元素中，用于表示时间
    NFC_MCU2_DATA[1] = I2C_receiveData[64];
    NFC_MCU2_DATA[2] = I2C_receiveData[65];

    // 从I2C接收数据中提取3通道相关的数据
    // 并将其存储到NFC_MCU2_DATA数组的第四、第五个元素中
//    NFC_MCU2_DATA[3] = I2C_receiveData[8];
    NFC_MCU2_DATA[3] = 0x00;
    NFC_MCU2_DATA[4] = I2C_receiveData[10];
    NFC_MCU2_DATA[5] = I2C_receiveData[11];
    // 从I2C接收数据中提取4通道相关的数据
    // 并将其存储到NFC_MCU2_DATA数组的第六、第七、第八个元素中
//    NFC_MCU2_DATA[6] = I2C_receiveData[12];
    NFC_MCU2_DATA[6] = 0x00;
    NFC_MCU2_DATA[7] = I2C_receiveData[14];
    NFC_MCU2_DATA[8] = I2C_receiveData[15];
    
    // 将NFC_MCU2_DATA数组中的数据通过UART2发送出去
    // 循环遍历数组，每次等待UART2发送缓冲区就绪后发送一个字节的数据
    // 并等待该字节数据发送完成后再发送下一个字节
    for(unsigned int i = 0;i<9 ;i++){
        while(!UART2_IsTxReady());
        UART2_Write(NFC_MCU2_DATA[i]);
        while(!UART2_IsTxDone());       
    }

    // 数据发送完成后，将NFC_MCU2_DATA数组清零，释放内存空间或为下一次使用做准备
//    memset(NFC_MCU2_DATA,0,sizeof(NFC_MCU2_DATA));  
}

/*选择通道，对NFC的数据进行转换
 *unsigned char channel：通道
 * unsigned char* eeprom_data_ptr：相应的通道数据（NFC数据）
 * unsigned char read_eeprom_H：高8位
 * unsigned char read_eeprom_L：低八位
 */
void processChannelDataIfNeeded(unsigned char channel, unsigned char* eeprom_data_ptr, unsigned char read_eeprom_H, unsigned char read_eeprom_L)
{
}
/*处理通道数据的函数
 *unsigned char channel:通道选择
 *unsigned int channelData：通道数据，即NFC刷的电流值（十进制）
 */
void processChannelData(unsigned char channel, unsigned int channelData)
{
}
/*电流数据处理,四通道*/
//unsigned char flag3;
//unsigned char flag4;
//unsigned char Data[2];
void Current_Data_Processing(unsigned char channel, unsigned int channelData)
{
}
/*
 * NFC数据判断函数，用于根据不同的条件对从I2C接收的数据进行处理，并设置相应通道的数据
 */
void NFC_datajudge(void)
{
    // 定义无符号字符类型变量v1, v2, v3, v4，用于存储从I2C接收数据中的特定字节
    
    unsigned int a;
    // 根据Mode_selection的值设置a的值
    // 如果Mode_selection为1，则a为1；否则a为33
    if(Mode_selection == 1)  a = 1;
    else   a = 33;
    // 注释说明：此处的v1, v2，v3，v4是NFC的第二列，控制指令的控制选取位 
    // 从I2C接收数据中提取特定位置的数据赋值给v1, v2, v3, v4
    v11 = I2C_receiveData[a];        // 提取第a位置的数据赋值给v1（即第1位数据）
    v2 = I2C_receiveData[a + 4];    // 提取第a + 4位置的数据赋值给v2（即第5位数据）
    v3 = I2C_receiveData[a + 8];    // 提取第a + 8位置的数据赋值给v3（即第9位数据）  
    v4 = I2C_receiveData[a + 12];   // 提取第a + 12位置的数据赋值给v4（即第13位数据）
    // 第一种情况：如果v1, v2, v3, v4全为0x00
    if(v11 == 0x00 && v2 == 0x00 && v3 == 0x00 && v4 == 0x00)
    {
        // 设置con1, con2, con3, con4的值
        con1 = 1;con2 = 2;con3 = 3;con4 = 4;
        // 从UART1_Receive_Data数组中提取数据赋值给UART_read1, UART_read2, UART_read3, UART_read4数组
        // 分别对应第一、二、三、四通道的数据设置
        UART_read1[0] = UART1_Receive_Data[7];  // 第一通道
        UART_read1[1] = UART1_Receive_Data[8]; 
        UART_read2[0] = UART1_Receive_Data[9]; // 第二通道   
        UART_read2[1] = UART1_Receive_Data[10];
        UART_read3[0] = UART1_Receive_Data[11];  // 第三通道
        UART_read3[1] = UART1_Receive_Data[12]; 
        UART_read4[0] = UART1_Receive_Data[13]; // 第四通道   
        UART_read4[1] = UART1_Receive_Data[14];        
    }
    // 第二种情况：如果v1在0x01到0x04之间，且v2, v3, v4均为0x00
    else if((v11 >= 0x01 && v11 <= 0x04) && (v2 == 0x00 && v3 == 0x00 && v4 == 0x00))  
    {
        // 设置con1, con2, con3, con4的值
        con1 = v11;con2 = v2;con3 = v3;con4 = v4;
        // 根据v1的值从UART1_Receive_Data数组中提取数据赋值给UART_read1数组
        // 并将其他通道的数据设置为0x00
        UART_read1[0] = UART1_Receive_Data[2 * v11 + 5];  // 第一通道
        UART_read1[1] = UART1_Receive_Data[2 * v11 + 6]; 
        UART_read2[0] = 0x00; // 第二通道   
        UART_read2[1] = 0x00;
        UART_read3[0] = 0x00; // 第三通道
        UART_read3[1] = 0x00; 
        UART_read4[0] = 0x00; // 第四通道   
        UART_read4[1] = 0x00;
    }
    // 第三种情况：如果v1, v2在0x01到0x04之间且不相等，v3, v4均为0x00
    else if((v11 >= 0x01 && v11 <= 0x04) &&
            (v2 >= 0x01 && v2 <= 0x04) &&
            (v11 != v2) &&
            (v3 == 0x00 && v4 == 0x00)) {
            // 设置con1, con2, con3, con4的值
            con1 = v11;con2 = v2;con3 = v3;con4 = v4;
            // 根据v1, v2的值从UART1_Receive_Data数组中提取数据赋值给UART_read1, UART_read2数组
            // 并将第三、四通道的数据设置为0x00
            UART_read1[0] = UART1_Receive_Data[2 * v11 + 5];  // 第一通道
            UART_read1[1] = UART1_Receive_Data[2 * v11 + 6]; 
            UART_read2[0] = UART1_Receive_Data[2 * v2 + 5];  // 第二通道   
            UART_read2[1] = UART1_Receive_Data[2 * v2 + 6];
            UART_read3[0] = 0x00;  // 第三通道
            UART_read3[1] = 0x00; 
            UART_read4[0] = 0x00; // 第四通道   
            UART_read4[1] = 0x00;     
        }
    // 第四种情况：如果v1, v2, v3在0x01到0x04之间且不相等，v4为0x00
    else if((v11 >= 0x01 && v11 <= 0x04) && (v2 >= 0x01 && v2 <= 0x04) &&
            (v3 >= 0x01 && v3 <= 0x04) && (v11 != v2) &&
            (v11 != v3) &&(v2 != v3) && v4 == 0x00) {
           // 设置con1, con2, con3, con4的值
           con1 = v11;con2 = v2;con3 = v3;con4 = v4;
           // 根据v1, v2, v3的值从UART1_Receive_Data数组中提取数据赋值给UART_read1, UART_read2, UART_read3数组
           // 并将第四通道的数据设置为0x00
           UART_read1[0]=UART1_Receive_Data[2*v11+5]; // 第一通道
           UART_read1[1]=UART1_Receive_Data[2*v11+6]; 
           UART_read2[0]=UART1_Receive_Data[2*v2+5]; // 第二通道   
           UART_read2[1]=UART1_Receive_Data[2*v2+6];
           UART_read3[0]=UART1_Receive_Data[2*v3+5]; // 第三通道
           UART_read3[1]=UART1_Receive_Data[2*v3+6]; 
           UART_read4[0]=0x00; // 第四通道   
           UART_read4[1]=0x00;  
        }
    // 第五种情况：
    // 四位必须属于 {0x01, 0x02, 0x03, 0x04} 且不重复，
    else if((v11 >= 0x01 && v11 <= 0x04) && (v2 >= 0x01 && v2 <= 0x04) &&
            (v3 >= 0x01 && v3 <= 0x04) && (v4 >= 0x01 && v4 <= 0x04) && 
            (v11 != v2)&&(v11 != v3)&&(v11 != v4)&&(v2 != v3)&&(v2 != v4)&&
            (v3 != v4)) {
            con1=v11;con2=v2;con3=v3;con4=v4;
            UART_read1[0]=UART1_Receive_Data[2*v11+5]; //第一通道
            UART_read1[1]=UART1_Receive_Data[2*v11+6]; 
            UART_read2[0]=UART1_Receive_Data[2*v2+5]; //第二通道   
            UART_read2[1]=UART1_Receive_Data[2*v2+6];
            UART_read3[0]=UART1_Receive_Data[2*v3+5]; //第三通道
            UART_read3[1]=UART1_Receive_Data[2*v3+6]; 
            UART_read4[0]=UART1_Receive_Data[2*v4+5]; //第四通道   
            UART_read4[1]=UART1_Receive_Data[2*v4+6];  
    }
    // 如果不满足以上所有情况
    else // 将所有通道的数据设置为0x00
    {
        UART_read1[0]=0x00; // 第一通道
        UART_read1[1]=0x00; 
        UART_read2[0]=0x00; // 第二通道   
        UART_read2[1]=0x00;
        UART_read3[0]=0x00; // 第三通道
        UART_read3[1]=0x00; 
        UART_read4[0]=0x00; // 第四通道   
        UART_read4[1]=0x00;
    }
}
extern unsigned char reply_buffer[];
void Rated_Current(void)   //启动默认电流
{
  if(err1==1){
    unsigned int CRC_RESULT;
    //更改电流
     NFC_data[2+2] = UART_read1[0];     
     NFC_data[3+2] = UART_read1[1];          //通道一
     if(UART_read1[0] <= 0x16 )UART_read1[0] = NFC_data[2+2] = 0x16;
     NFC_data[6+2] = UART_read2[0];
     NFC_data[7+2] = UART_read2[1];          //通道二
     if(UART_read2[0] <= 0x75 )UART_read2[0] = NFC_data[6+2] = 0x75;
     NFC_data[10+2] = UART_read3[0];
     NFC_data[11+2] = UART_read3[1];          //通道三
     if(UART_read3[0] <= 0x03 )UART_read3[0] = NFC_data[10+2] = 0x03;
     NFC_data[14+2] = UART_read4[0];
     NFC_data[15+2] = UART_read4[1];
     if(UART_read4[0] <= 0x02 )UART_read4[0] = NFC_data[14+2] = 0x02;
     if(UART1_Receive_Data[1]==0x11)                  //立即设置
     {
        power_Hold_1 = extractAndCombineEEPROMData(UART_read1[0], UART_read1[1]);  
        CURRENT_1 = power_Hold_1;
        if(CURRENT_1 <=1800 && CURRENT_1 >0)CURRENT_1=1800;
        if(CURRENT_1 >= 3400)CURRENT_1 = 3400;
        /*2通道*/
        power_Hold_2 = extractAndCombineEEPROMData(UART_read2[0], UART_read2[1]);  
        CURRENT_2 = power_Hold_2;    
        if(CURRENT_2 >0 && CURRENT_2 <= 600)CURRENT_2 = 600;
        if(CURRENT_2 >=1000)CURRENT_2=1000;
     }
    //更改NFC
     if(v==1)
     {
        while(!I2C1_Write(0x53, NFC_data, 72));
         __delay_ms(100);
         readNFC_flag=1;
         if(readNFC_flag==1)              //从新读取NFC数据进行返回应答
         {
             __delay_ms(100);
            READ_NFC_SET_START(2);
             __delay_ms(100);
             readNFC_flag=0;
         }
         reply_buffer[0]=0x55;
         if(con1!=0){                     //根据通道选择返回位置
             reply_buffer[2*con1+5]= NFC_receiveData[2];
             reply_buffer[2*con1+6]= NFC_receiveData[3]; 
         }
         if(con2!=0){
             reply_buffer[2*con2+5]= NFC_receiveData[6];
             reply_buffer[2*con2+6]= NFC_receiveData[7]; 
         }
         if(con3!=0){
             reply_buffer[2*con3+5]= NFC_receiveData[10];
             reply_buffer[2*con3+6]= NFC_receiveData[11]; 
         }
          if(con4!=0){
             reply_buffer[2*con4+5]= NFC_receiveData[14];
             reply_buffer[2*con4+6]= NFC_receiveData[15]; 
         }
        /*将CRC检验结果*/
        CRC_RESULT = CRC16(reply_buffer,15);
        reply_buffer[16] = (CRC_RESULT >> 0) & 0xFF;
        reply_buffer[15] = (CRC_RESULT >> 8) & 0xFF;
         //计时
         reply_flag=1;           
     }

         //应答 
     if(reply_ok==1 && v==1 )
     {
         reply_data(reply_buffer,17);    //返回应答数组
         reply_ok=0;
         v=0;
     } 
   }else error_flag=1;
}
unsigned char str11[6];
float Power_Pre = 0.0;
#ifdef POWER
void Startup_Power(void)  //启动默认功率
{
    if(err4 == 1){
        unsigned int CRC_RESULT;
        /*保存1通道数据到NFC*/
        NFC_data[34+2] = UART_read1[0];
        NFC_data[35+2] = UART_read1[1];
        /*保存2通道数据到NFC*/
        NFC_data[38+2] = UART_read2[0];
        NFC_data[39+2] = UART_read2[1];  
        /*保存3通道数据到NFC*/
        NFC_data[42+2] = UART_read3[0];
        NFC_data[43+2] = UART_read3[1];
        /*保存4通道数据到NFC*/
        NFC_data[46+2] = UART_read4[0];
        NFC_data[47+2] = UART_read4[1];


        /*立即改变*/
       if(UART1_Receive_Data[1] == 0xA1){
           /*改变1通道*/
            power_Hold_1  = extractAndCombineEEPROMData(UART_read1[0],UART_read1[1]);    
            POWER1 = (power_Hold_1 * 0.01);         //直接改变 
            /*改变2通道*/        
            power_Hold_2  = extractAndCombineEEPROMData(UART_read2[0],UART_read2[1]);    
            POWER2 = (power_Hold_2 * 0.01);         //直接改变

            /*2通道开对1通道产生影响，需要纠正，纠正一次
             *2通道刷不同NFC的功率也需要纠正（低功率效率变换很多）
             * 此处需要2通道NFC数值变化时候才执行：即只执行一次
             *纠正一次
             */
            if(Power_Pre != POWER2){            
    //            /*接近每10W效率降低0.01*/        
                if(POWER2 < 2.0 && UART_REG2 > 0x00  )POWER_2_Efficiency = 0.8975 -((2.0 - POWER2 )*0.092);                         
    //            if(POWER2 > 0.7 && POWER2 <0.9)POWER1+=0.06;        
    //            else if(POWER2 >= 0.9 && POWER2 <=1.1)POWER1+=0.015;
    //            else if(POWER2 > 1.1 && POWER2 <=1.5)POWER1+=0.045;
    //            else if(POWER2 > 1.5 && POWER2 <=1.8)POWER1+=0.057;
    //            else if(POWER2 > 1.8 && POWER2 <=2.0)POWER1+=0.07;                        
                Power_Pre = POWER2;
            }
        }
       //更改NFC
        if(v == 1){
            while(!I2C1_Write(0x53, NFC_data, 72));
            __delay_ms(100);
            readNFC_flag=1;
            if(readNFC_flag==1)
            {
                __delay_ms(100);
                READ_NFC_SET_START();
                __delay_ms(100);
                readNFC_flag=0;
            }
            reply_buffer[0]=0x55;   //头
            if(con1!=0){
                reply_buffer[4*con1+30]= I2C_receiveData[34];
                reply_buffer[4*con1+31]= I2C_receiveData[35]; 
            }
            if(con2!=0){
                reply_buffer[4*con2+30]= I2C_receiveData[38];
                reply_buffer[4*con2+31]= I2C_receiveData[39]; 
            }
            if(con3!=0){
                reply_buffer[4*con1+30]= I2C_receiveData[42];
                reply_buffer[4*con1+31]= I2C_receiveData[43]; 
            }
            if(con4!=0){
                reply_buffer[4*con1+30]= I2C_receiveData[46];
                reply_buffer[4*con1+31]= I2C_receiveData[47]; 
            }
            /*将CRC检验结果*/
            CRC_RESULT = CRC16(reply_buffer,15);
            reply_buffer[16] = (CRC_RESULT >> 0) & 0xFF;
            reply_buffer[15] = (CRC_RESULT >> 8) & 0xFF;
     //         MoBusCRC16(reply_buffer,15);   
            //计时
            reply_flag = 1;
        }
        //应答 
        if(reply_ok == 1 && v == 1 )
        {
            LED_SetHigh();
            reply_data(reply_buffer,sizeof(reply_buffer));
            reply_ok = 0;
            v=0;
        } 
    }else error_flag=1;
}
#endif
unsigned int Compensation_Flag_2 = 1,Compensation_Flag_3 = 1,Compensation_Flag_4 = 1;     //消除补偿，需要只执行一次
unsigned int Compensation_Flag_2_3_4 = 1;
void Startup_State(void)  //启动默认状态
{
    if(err2==1){
        unsigned int CRC_RESULT;
       //更改初始状态1
        if(UART_read1[0]==0x00)
        {
            unsigned char num = ((UART_read1[1]>>4)*10) + (UART_read1[1]&0x0F);  //转化
            NFC_data[0+2] = num; 
           if(UART1_Receive_Data[1]==0x61) UART_REG1_Pre = UART_REG1 = num;
        }
    //       /*判断关灯时候消除1通道的补偿,需要只执行一次*/
         if(UART_read1[0]==0x01 && UART_read1[1]==0x00)   //100即0x64时候，最大的情况
        {
            NFC_data[0+2] = 0x64; 
            if(UART1_Receive_Data[1]==0x61) UART_REG1_Pre = UART_REG1 = 0x64;
        }
        //更改初始状态2
        if(UART_read2[0]==0x00)
        {
            unsigned char num2 = ((UART_read2[1]>>4)*10) + (UART_read2[1]&0x0F);  //转化
            NFC_data[4+2] = num2; 
            if(UART1_Receive_Data[1]==0x61) UART_REG2_Pre = UART_REG2 = num2;
        }
         if(UART_read2[0]==0x01 && UART_read2[1]==0x00)
        {
            NFC_data[4+2] = 0x64; 
            if(UART1_Receive_Data[1]==0x61) UART_REG2_Pre = UART_REG2 = 0x64;       
        }
        //更改初始状态3
        if(UART_read3[0]==0x00)
        {
            unsigned char num = ((UART_read3[1]>>4)*10) + (UART_read3[1]&0x0F);  //转化
            NFC_data[8+2] = num; 
           if(UART1_Receive_Data[1]==0x61) UART_REG3_Pre =UART_REG3 = num;
        }
        if(UART_read3[0]==0x01 && UART_read3[1]==0x00)   //100即0x64时候，最大的情况
        {
            NFC_data[8+2] = 0x64; 
            if(UART1_Receive_Data[1]==0x61) UART_REG3_Pre = UART_REG3 = 0x64;
        }
        //更改初始状态4
        if(UART_read4[0]==0x00)
        {
            unsigned char num = ((UART_read4[1]>>4)*10) + (UART_read4[1]&0x0F);  //转化
            NFC_data[12+2] = num; 
            if(UART1_Receive_Data[1]==0x61)UART_REG4_Pre = UART_REG4 = num;    
        }  
        if(UART_read4[0]==0x01 && UART_read4[1]==0x00)   //100即0x64时候，最大的情况
        {
            NFC_data[12+2] = 0x64; 
            if(UART1_Receive_Data[1]==0x61)UART_REG4_Pre = UART_REG4 = 0x64;
        }

        //更改NFC
        if(v==1)
        {
            while(!I2C1_Write(0x53, NFC_data, 72));
            __delay_ms(100);
            readNFC_flag=1;
            if(readNFC_flag==1)
            {
                __delay_ms(100);
                READ_NFC_SET_START(2);
                __delay_ms(100);
                readNFC_flag=0;
            }

            reply_buffer[0]=0x55;
            if(con1!=0){
                if(NFC_receiveData[0]==0x64)
                {
                    reply_buffer[2*con1+5] = 0x01;
                    reply_buffer[2*con1+6] = 0x00;     
                }
                else
                {
                    reply_buffer[2*con1+5] = 0x00;
                    reply_buffer[2*con1+6] = ((NFC_receiveData[0] / 10) << 4) | (NFC_receiveData[0] % 10);
                }
            }
            if(con2!=0){
                if(NFC_receiveData[4] == 0x64)
                {
                    reply_buffer[2*con2+5]=0x01;
                    reply_buffer[2*con2+6]= 0x00;     
                }
                else
                {
                    reply_buffer[2*con2+5]=0x00;
                    reply_buffer[2*con2+6]= ((NFC_receiveData[4] / 10) << 4) | (NFC_receiveData[4] % 10);
                }
            }
            if(con3!=0){
                if(NFC_receiveData[8] == 0x64)
                {
                    reply_buffer[2*con2+5]=0x01;
                    reply_buffer[2*con2+6]= 0x00;     
                }
                else
                {
                    reply_buffer[2*con2+5]=0x00;
                    reply_buffer[2*con2+6]= ((NFC_receiveData[8] / 10) << 4) | (NFC_receiveData[8] % 10);
                }
            }
            if(con4!=0){
                if(NFC_receiveData[12] == 0x64)
                {
                    reply_buffer[2*con2+5]=0x01;
                    reply_buffer[2*con2+6]= 0x00;     
                }
                else
                {
                    reply_buffer[2*con2+5]=0x00;
                    reply_buffer[2*con2+6]= ((NFC_receiveData[12] / 10) << 4) | (NFC_receiveData[12] % 10);
                }
            }
            CRC_RESULT = CRC16(reply_buffer,15);
            reply_buffer[16] = (CRC_RESULT >> 0) & 0xFF;
            reply_buffer[15] = (CRC_RESULT >> 8) & 0xFF;
            //MoBusCRC16(reply_buffer,15);
            //计时
            reply_flag=1;
        }

        //应答 
        if(reply_ok==1 && v==1 )
        {
            reply_data(reply_buffer,17);
            reply_ok=0;
            v=0;
        } 
    }else error_flag=1;
}

/************************************************
 * @brief 涨功率时间
 ***********************************************/
void Power_UpTime(void)  //涨功率时间
{
    if(err3==1){
            unsigned int CRC_RESULT;
            NFC_data[64+2] = UART_read1[0];                 //固定位置
            NFC_data[65+2] = UART_read1[1];
            time_H = (((UART_read1[0]>>4)*10) + (UART_read1[0]&0x0F));
            time_L = (((UART_read1[1]>>4)*10) + (UART_read1[1]&0x0F));
            if(UART1_Receive_Data[1] == 0x51){
            /*时间初始化*/
            power_time = ((time_H * 100) + time_L);                       
            time11 = ((float)(4+power_time)/4.0f * (CURRENT_1 /3226.0f));    
#ifdef POWER                
                time2 = power_time-(float)((187.0f - POWER2)/12) - 5;
#endif                
            }
        //更改NFC
        if(v==1)
        {
            while(!I2C1_Write(0x53, NFC_data, 72));
            __delay_ms(100);
            readNFC_flag=1;
            if(readNFC_flag==1)
            {
                __delay_ms(100);
                READ_NFC_SET_START(2);
                __delay_ms(100);
                readNFC_flag=0;
            }
            reply_buffer[0]=0x55;
            if(con1!=0){
                reply_buffer[2*con1+5]= NFC_receiveData[64];
                reply_buffer[2*con1+6]= NFC_receiveData[65]; 
            }
            CRC_RESULT = CRC16(reply_buffer,15);
            reply_buffer[16] = (CRC_RESULT >> 0) & 0xFF;
            reply_buffer[15] = (CRC_RESULT >> 8) & 0xFF;  
            //计时
            reply_flag=1;
        }
        //应答 
        if(reply_ok==1 && v==1 )
        {
            reply_data(reply_buffer,17);
            reply_ok=0;
            v=0;
        }
    }else error_flag=1;
}
void Channel_changes(void)
{
    unsigned int CRC_RESULT;
    if(err6==1){
        NFC_data[33+2] = UART1_Receive_Data[8];
        NFC_data[37+2] = UART1_Receive_Data[10];
        NFC_data[41+2] = UART1_Receive_Data[12];
        NFC_data[45+2] = UART1_Receive_Data[14]; 
       if(UART1_Receive_Data[1] == 0x71){
           //直接改变
            I2C_receiveData[1]=UART1_Receive_Data[8];    // 第1位
            I2C_receiveData[5]=UART1_Receive_Data[10];   // 第5位
            I2C_receiveData[9]=UART1_Receive_Data[12];   // 第9位
            I2C_receiveData[13]=UART1_Receive_Data[14];   // 第13位
       }
       //更改NFCI2C_receiveData
        if(v==1)
        {
            while(!I2C1_Write(0x53, NFC_data, 72));//写入NFC
            __delay_ms(100);
            readNFC_flag=1;
            if(readNFC_flag==1)
            {
                 __delay_ms(100);
                READ_NFC_SET_START(2);
                __delay_ms(100);
                readNFC_flag=0;
            }
            reply_buffer[0]=0x55;

            reply_buffer[8]=  NFC_receiveData[1];
            reply_buffer[10]= NFC_receiveData[5]; 
            reply_buffer[12]= NFC_receiveData[9];
            reply_buffer[14]= NFC_receiveData[13]; 

            CRC_RESULT = CRC16(reply_buffer,15);
            reply_buffer[16] = (CRC_RESULT >> 0) & 0xFF;
            reply_buffer[15] = (CRC_RESULT >> 8) & 0xFF;  
            //计时
            reply_flag=1;
        }
        //应答 
        if(reply_ok==1 && v==1 )
        {
            reply_data(reply_buffer,17);
            reply_ok=0;
            v=0;
        }
      }else error_flag=1;
}

/*********************************************************
 * @brief 错误判断
 * 
 * @param  err 错误类型标志
 * 
 * @return 正常：1  错误：0 
 *********************************************************/
unsigned int State_error(unsigned int err) 
{

    if(err>=1 && err<=4)
    {
        if ((Channel_selection == 1)|| err==3) {
            return is_valid_data(UART_read1,err);
        } 
        else if (Channel_selection == 2) {
            return (is_valid_data(UART_read1,err) && is_valid_data(UART_read2,err));
        }
    }
    if(err==5){
         return !is_valid_data(UART_read1,err);
    }
    if(err==6){
         return is_valid_data(UART_read1,err);
    }
//    return 0; // 默认返回 false，表示错误
}
// 辅助函数：BCD转整数
unsigned int bcd_to_int(uint8_t bcd) 
{
    return ((bcd >> 4) * 10) + (bcd & 0x0F);
}
// 辅助函数：BCD转整数
unsigned int int_to_bcd(uint8_t intt) 
{
    return ((intt / 10) << 4) | (intt % 10);
}
/*********************************************************
 * @brief 选择对应类型，并进行相应的错误判断
 * 
 * @param  *data 对应通道数据
 * @param  state_error_flag 功能判断
 * 
 * @return 正常：1  错误：0  
 *********************************************************/
unsigned int is_valid_data(unsigned char *data, unsigned int state_error_flag)
{
    // 转换BCD码
    unsigned int z1 = bcd_to_int(data[0]);
    unsigned int z2 = bcd_to_int(data[1]);
    
    // 从全局Rx_Buffer中取出相关位置的数值
    uint8_t a1 = UART1_Receive_Data[8];
    uint8_t a2 = UART1_Receive_Data[10];
    uint8_t a3 = UART1_Receive_Data[12];
    uint8_t a4 = UART1_Receive_Data[14];

    switch(state_error_flag){
        case 1:  // 电流
        case 3:  // 涨功率时间    
        case 4:  // 功率
            // z1和z2应小于100且data不全为0
            return ((z1 < 100) && (z2 < 100) );    
            
        case 2:  // 初始状态
            return (z2 < 100);
            
        case 5:
            // 遍历Rx_Buffer中第7到15位，如果有非零则返回false
            for (int i = 7; i < 16; i++) {
                if (UART1_Receive_Data[i] != 0)
                    return false;
            }
            return true;
            
        case 6: {
            // 使用位掩码检查a1~a4：
            // 非零值必须在1~4之间，且出现时不能重复
            uint8_t arr[4];
            uint8_t mask = 0;
            arr[0]=a1; arr[1]=a2; arr[2]=a3; arr[3]=a4;
            for (int i = 0; i < 4; i++) {
                if (arr[i] != 0) {
                    if (arr[i] < 1 || arr[i] > 4)
                        return false;
                    if (mask & (1 << (arr[i] - 1)))
                        return false;  // 重复出现
                    mask |= (1 << (arr[i] - 1));
                }
            }
            return true;
        }
            
        default:
            return 0;
    }
}
// 错误处理函数
void handleError(void)
{
    // 错误处理逻辑
    // 可以记录错误、发送错误信号或执行其他必要的操作
}


