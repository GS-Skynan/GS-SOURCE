#include "worktime.h"
#include "EEPROM_driver.h"
#include "nfc.h"


// EEPROM地址定义
#define EEPROM_HOUR_HI    0x0030  // 小时高字节
#define EEPROM_HOUR_LO    0x0031  // 小时低字节
#define EEPROM_MIN_FLAG   0x0032  // 分钟标志
#define UPDATE_INTERVAL   1800      //30分钟更新一次

void WorkTime_Init(tWorkTime *mgr)
{
    if (mgr == NULL) return;

    if (EepromReadByte(EEPROM_HOUR_HI) == 0xFF) EepromWriteByte(EEPROM_HOUR_HI, 0);
    if (EepromReadByte(EEPROM_HOUR_LO) == 0xFF) EepromWriteByte(EEPROM_HOUR_LO, 0);
    if (EepromReadByte(EEPROM_MIN_FLAG) == 0xFF) EepromWriteByte(EEPROM_MIN_FLAG, 0);
    // 从EEPROM读取保存的时间
    mgr->hours = (EepromReadByte(EEPROM_HOUR_HI) << 8) | EepromReadByte(EEPROM_HOUR_LO);
    mgr->minutes = EepromReadByte(EEPROM_MIN_FLAG);
    // 重置秒计数器

    if (mgr->minutes > 1)
    {
        mgr->minutes = mgr->minutes * 30;
    }

    mgr->seconds = 0;
}


tWorkTime time;
// 从EEPROM获取总工作时间

tWorkTime WorkTime_GetFromEEPROM(void)
{
    // 从EEPROM读取存储的值
    time.hours = (EepromReadByte(EEPROM_HOUR_HI) << 8) | EepromReadByte(EEPROM_HOUR_LO);
    time.minutes = EepromReadByte(EEPROM_MIN_FLAG);
    time.seconds = worktime.seconds; // 掉电后秒信息会丢失，只能为0

    return time;
}

void WorkTime_Update(tWorkTime *mgr)
{
    if (mgr == NULL) return;

    // 更新秒计数器
    mgr->seconds++;

    // 每30秒检查一次
    if (mgr->seconds >= UPDATE_INTERVAL)
    {
        mgr->seconds = 0;
        mgr->minutes++;
        if (mgr->minutes >= 2)
        {
            mgr->minutes = 0;
            mgr->hours++;

            uint8_t hour_high = (mgr->hours >> 8) & 0xFF; // 高字节
            uint8_t hour_low = mgr->hours & 0xFF; // 低字节

            EepromWriteByte(EEPROM_HOUR_HI, hour_high);
            EepromWriteByte(EEPROM_HOUR_LO, hour_low);
            Write_NFC_Data(0x0060, &hour_high, 1);
            Write_NFC_Data(0x0061, &hour_low, 1);
        }
        uint8_t minute_low = mgr->minutes & 0xFF; // 高字节
        EepromWriteByte(EEPROM_MIN_FLAG, minute_low);
        Write_NFC_Data(0x0062, &minute_low, 1);
    }
}

// 重置时间

void WorkTime_Reset(tWorkTime *mgr)
{
    if (mgr == NULL) return;

    // 重置结构体
    mgr->hours = 0;
    mgr->minutes = 0;
    mgr->seconds = 0;

    // 清空EEPROM
    EepromWriteByte(EEPROM_HOUR_HI, 0);
    EepromWriteByte(EEPROM_HOUR_LO, 0);
    EepromWriteByte(EEPROM_MIN_FLAG, 0);
}

void WorkTimeTask(void)
{
    WorkTime_Update(&worktime);
}