#include "../../../DriverService/timerecord_app/scl/record.h"
#include "../../../DriverService/NFCService_APP/scl/nfcapp.h"
#include "../../../DriverLayer/EEPROM/scl/EEPROM_driver.h"
#include "../../../DriverLayer/NFC/scl/nfc.h"
#include "../../../DriverService/Dimming_APP/scl/dimming.h"

uint8_t ceshi_flag;
uint8_t Time_temp[10] = {0x00,0xFC};
uint16_t tem_time=0;
uint16_t tem_flag=0;
uint16_t tem_time;

void EEPROM_CLOEN(void)
{
    StartTime.record_time.Hours_H = EepromReadByte(0);
    StartTime.record_time.Hours_M = EepromReadByte(1);
    StartTime.record_time.Hours_L=  EepromReadByte(2);
    
    LightTime.record_time.Hours_H = EepromReadByte(4);
    LightTime.record_time.Hours_M = EepromReadByte(5);
    LightTime.record_time.Hours_L=  EepromReadByte(6);
    
    if(StartTime.record_time.Hours_H > 100)EepromWriteByte(0,0x00);
    if(StartTime.record_time.Hours_M > 100)EepromWriteByte(1,0x00);
    if(StartTime.record_time.Hours_L > 100)EepromWriteByte(2,0x00);
    EepromWriteByte(3,0x00);
    if(LightTime.record_time.Hours_H > 100)EepromWriteByte(4,0x00);
    if(LightTime.record_time.Hours_M > 100)EepromWriteByte(5,0x00);
    if(LightTime.record_time.Hours_L > 100)EepromWriteByte(6,0x00);
}
// 时间初始化读取
void Time_init(void)
{   
    StartTime.record_time.Hours_H = EepromReadByte(0);
    StartTime.record_time.Hours_M = EepromReadByte(1);
    StartTime.record_time.Hours_L=  EepromReadByte(2);
    StartTime.total_power_time_H = StartTime.record_time.Hours_H *10000+StartTime.record_time.Hours_M *100 + StartTime.record_time.Hours_L;
    Time_temp[3]=int_to_bcd(StartTime.record_time.Hours_H); 
    Time_temp[4]=int_to_bcd(StartTime.record_time.Hours_M); 
    Time_temp[5]=int_to_bcd(StartTime.record_time.Hours_L); 
        
    LightTime.record_time.Hours_H = EepromReadByte(4);
    LightTime.record_time.Hours_M = EepromReadByte(5);
    LightTime.record_time.Hours_L=  EepromReadByte(6);
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
                
        EepromWriteByte(0,StartTime.record_time.Hours_H);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        EepromWriteByte(1,StartTime.record_time.Hours_M);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        EepromWriteByte(2,StartTime.record_time.Hours_L);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        
        EepromWriteByte(4,LightTime.record_time.Hours_H);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        EepromWriteByte(5,LightTime.record_time.Hours_M);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        EepromWriteByte(6,LightTime.record_time.Hours_L);
        NOP();NOP();NOP();NOP();NOP();
        NOP();NOP();NOP();NOP();NOP();
        
        __delay_ms(10);
        while(!I2C1_Write(0x53,Time_temp,10));//写入NFC    __delay_ms(10);
        StartTime.save_flag=0;
    }

}

//定时器1中断函数
static void TMR1_Record_Time(void)
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



void Time1_AppInit(void)
{
        EEPROM_CLOEN();   
        Time_init();                   //计时时间初始化
        StartTime.power_timer_flag=1;  //上电计时标志位
        TMR1_OverflowCallbackRegister(TMR1_Record_Time);
}

void TimeCalculationTask(void)
{
     Time_Calculation();
}