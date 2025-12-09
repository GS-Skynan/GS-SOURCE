#include <stdint.h>
#include <stdio.h>

#include "../scl/record.h"
/**
 * @brief 写入数据到 NFC 的指定位置
 * @param address NFC 设备的 I2C 地址
 * @param regAddress 要写入的 NFC 内部寄存器地址（16位）
 * @param data 要写入的数据缓冲区
 * @param dataLength 要写入的数据长度
 * @return bool 写入操作是否成功启动
 */
bool NFC_WriteToAddress(uint16_t address, uint16_t regAddress, uint8_t *data, size_t dataLength)
{

    // 创建一个缓冲区，前两个字节存放寄存器地址，后面是数据
    uint8_t buffer[MAX_WRITE_SIZE + 2];
    
    // 将16位寄存器地址拆分为两个字节（大端序）
    buffer[0] = (uint8_t)(regAddress >> 8);  // 高字节
    buffer[1] = (uint8_t)(regAddress & 0xFF); // 低字节
    
    // 复制数据到缓冲区

    memcpy(buffer + 2, data, dataLength);

    
    // 调用I2C写入函数
    while(!I2C1_Write(address, buffer, 2 + dataLength));
    return true;
}

/**
 * @brief 从 NFC 的指定位置读取数据
 * @param address NFC 设备的 I2C 地址
 * @param regAddress 要读取的 NFC 内部寄存器地址（16位）
 * @param data 存储读取数据的缓冲区
 * @param dataLength 要读取的数据长度
 * @return bool 读取操作是否成功启动
 */
bool NFC_ReadFromAddress(uint16_t address, uint16_t regAddress, uint8_t *data, size_t dataLength)
{
    
    // 先写入要读取的寄存器地址
    uint8_t regAddrBytes[2];
    
    // 将16位寄存器地址拆分为两个字节（大端序）
    regAddrBytes[0] = (uint8_t)(regAddress >> 8);  // 高字节
    regAddrBytes[1] = (uint8_t)(regAddress & 0xFF); // 低字节
    
    // 写入寄存器地址
    if(!I2C1_Write(address, regAddrBytes, sizeof(regAddrBytes)))
    {
        return false;
    }
    
    // 等待写入完成（这里需要根据您的实际实现添加适当的等待或检查）
    while(I2C1_IsBusy())
    {
        // 可以添加超时检测
    }
    // 发起读取操作
    return I2C1_Read(address, data, dataLength);
}
void EEPROM_CLOEN(void)
{
    StartTime.record_time.Hours_H = ReadEEPROMData(0);
    StartTime.record_time.Hours_M = ReadEEPROMData(1);
    StartTime.record_time.Hours_L=  ReadEEPROMData(2);
    
    LightTime.record_time.Hours_H = ReadEEPROMData(4);
    LightTime.record_time.Hours_M = ReadEEPROMData(5);
    LightTime.record_time.Hours_L=  ReadEEPROMData(6);
    
    if(StartTime.record_time.Hours_H > 100)WriteToEEPROM(0,0x00);
    if(StartTime.record_time.Hours_M > 100)WriteToEEPROM(1,0x00);
    if(StartTime.record_time.Hours_L > 100)WriteToEEPROM(2,0x00);
    WriteToEEPROM(3,0x00);
    if(LightTime.record_time.Hours_H > 100)WriteToEEPROM(4,0x00);
    if(LightTime.record_time.Hours_M > 100)WriteToEEPROM(5,0x00);
    if(LightTime.record_time.Hours_L > 100)WriteToEEPROM(6,0x00);
}
// 时间初始化读取
void Time_init(void)
{   
    StartTime.record_time.Hours_H = ReadEEPROMData(0);
    StartTime.record_time.Hours_M = ReadEEPROMData(1);
    StartTime.record_time.Hours_L=  ReadEEPROMData(2);
    StartTime.total_power_time_H = StartTime.record_time.Hours_H *10000+StartTime.record_time.Hours_M *100 + StartTime.record_time.Hours_L;
    Time_temp[3]=int_to_bcd(StartTime.record_time.Hours_H); 
    Time_temp[4]=int_to_bcd(StartTime.record_time.Hours_M); 
    Time_temp[5]=int_to_bcd(StartTime.record_time.Hours_L); 
        
    LightTime.record_time.Hours_H = ReadEEPROMData(4);
    LightTime.record_time.Hours_M = ReadEEPROMData(5);
    LightTime.record_time.Hours_L=  ReadEEPROMData(6);
    LightTime.total_power_time_H = LightTime.record_time.Hours_H *10000+LightTime.record_time.Hours_M *100 + LightTime.record_time.Hours_L;
    Time_temp[7]=int_to_bcd(LightTime.record_time.Hours_H); 
    Time_temp[8]=int_to_bcd(LightTime.record_time.Hours_M); 
    Time_temp[9]=int_to_bcd(LightTime.record_time.Hours_L); 
    
    __delay_ms(10);
    while(!I2C1_Write(0x53,Time_temp,10));
}

void Time_Calculation(void)   /////////////////////////////////////
{
    //灯亮标志判断
    if(start_flag) LightTime.power_timer_flag=1;
    else LightTime.power_timer_flag=0;

   //1H写入NFC判断
    if(StartTime.save_flag)
    {
        StartTime.record_time.Hours_H=StartTime.total_power_time_H/10000;
        StartTime.record_time.Hours_M=((StartTime.total_power_time_H/1000)%10)*10+((StartTime.total_power_time_H/100)%10); 
        StartTime.record_time.Hours_L=((StartTime.total_power_time_H/10)%10)*10+(StartTime.total_power_time_H%10);   
        Time_temp[3]=int_to_bcd(StartTime.record_time.Hours_H);
        Time_temp[4]=int_to_bcd(StartTime.record_time.Hours_M);
        Time_temp[5]=int_to_bcd(StartTime.record_time.Hours_L);
        
        LightTime.record_time.Hours_H=LightTime.total_power_time_H/10000;
        LightTime.record_time.Hours_M=((LightTime.total_power_time_H/1000)%10)*10+((LightTime.total_power_time_H/100)%10); 
        LightTime.record_time.Hours_L=((LightTime.total_power_time_H/10)%10)*10+(LightTime.total_power_time_H%10);   
        Time_temp[7]=int_to_bcd(LightTime.record_time.Hours_H);
        Time_temp[8]=int_to_bcd(LightTime.record_time.Hours_M);
        Time_temp[9]=int_to_bcd(LightTime.record_time.Hours_L);
                
        WriteToEEPROM(0,StartTime.record_time.Hours_H);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        WriteToEEPROM(1,StartTime.record_time.Hours_M);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        WriteToEEPROM(2,StartTime.record_time.Hours_L);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        
        WriteToEEPROM(4,LightTime.record_time.Hours_H);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        WriteToEEPROM(5,LightTime.record_time.Hours_M);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        WriteToEEPROM(6,LightTime.record_time.Hours_L);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        
        __delay_ms(10);
        while(!I2C1_Write(0x53,Time_temp,10));//写入NFC    __delay_ms(10);
        StartTime.save_flag=0;
    }

}
/*写ERROM，但注意此ERROM需要解锁*/
void WriteToEEPROM(uint24_t offset, uint8_t data) 
{
    // 检查地址是否有效
    if (offset >= EEPROM_SIZE) {
        return;  // 地址越界
    }
    // 设置解锁密钥
    NVM_UnlockKeySet(UNLOCK_KEY);
    // 写入数据
    EEPROM_Write(EEPROM_START_ADDRESS + offset, data);
    // 等待写入完成
    while (NVM_IsBusy());
    // 检查状态
    if (NVM_StatusGet() == NVM_ERROR) {
        NVM_StatusClear();  // 清除错误
        // 处理错误（如重试或日志记录）
    }
    // 清除密钥（）
    NVM_UnlockKeyClear();
}
eeprom_data_t ReadEEPROMData(uint24_t offset) 
{
    // 检查地址是否有效
    if (offset >= EEPROM_SIZE) {     
        return 0;
    }
    // 读取数据
    uint24_t address = EEPROM_START_ADDRESS + offset;
    eeprom_data_t data = EEPROM_Read(address);
    return data;
}
//定时器1中断函数
void TMR1_Record_Time(void)
{
    if(StartTime.power_timer_flag){
        StartTime.power_time_msecond++;
        tem_time++;
        if(tem_time>3000)
        {
            tem_flag=1;
            tem_time=0;
        }
        if(StartTime.power_time_msecond >= 60000){        //60s
            StartTime.power_time_minutes++;
            ceshi_flag = 1;
            if(StartTime.power_time_minutes >= 60){   //1H
                StartTime.total_power_time_H++;
                StartTime.save_flag = 1;
                if(StartTime.total_power_time_H >= 50000)StartTime.total_power_time_H = 50000;
                StartTime.total_power_time_H = 0;
            }
            StartTime.power_time_msecond = 0;
        }
    }
    //灯亮时间记录
    if(LightTime.power_timer_flag){
        LightTime.power_time_msecond++;
        if(LightTime.power_time_msecond >= 60000){        //60s = 1min
            LightTime.power_time_minutes++;
            if(LightTime.power_time_minutes >= 60){   //1H
                LightTime.total_power_time_H++;
                LightTime.save_flag = 1;
                if(LightTime.total_power_time_H >= 50000)LightTime.total_power_time_H = 50000;   //50000H
                LightTime.total_power_time_H = 0;
            }
            LightTime.power_time_msecond = 0;
        }
    } 
}
