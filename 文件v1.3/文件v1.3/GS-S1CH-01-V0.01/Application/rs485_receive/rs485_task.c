#include "../rs485_receive/rs485_task.h"
#include "../led_dimming/led_dimming_task.h"
#include "../version_read/version_task.h"
#include "../../Drivers/GPIO/GPIO_driver.h"
#include "../crc16/crc.h"
#include <string.h>
#include "../../Drivers/EEPROM/EEPROM_driver.h"

#define RX_BUFFER_SIZE 40

#define PROTOCOL_HEADER_LENGTH 7
#define CRC_BYTES_LENGTH 2

uint8_t  Rx_Buffer[RX_BUFFER_SIZE];
uint16_t g_uCheckCRC16;
uint16_t g_uCheckCRCResult;


/**
*******************************************************************************
 * @brief 清空RS485接收数据缓冲区
 * @note 清理所有接收相关的缓冲区和状态标志：
 *       1. 重置接收数据长度
 *       2. 清空主接收缓冲区
 *       3. 清空中断接收缓冲区  
 *       4. 复位接收完成标志
 *       确保下一帧数据能够正确接收和处理
 ******************************************************************************
*/
static void ClearReceiveData(void)
{
    Rx_Length = 0;
    memset(Rx_Buffer, 0, sizeof (Rx_Buffer));
    memset(Rx_Buffer_ISR, 0, sizeof (Rx_Buffer_ISR));
    g_bRs485Flag = 0;
}

/**
*******************************************************************************
 * @brief 处理RS485通信消息
 * @note 实现RS485协议帧的完整处理流程：
 *       1. 帧接收完成检查
 *       2. 数据拷贝防干扰
 *       3. CRC校验验证数据完整性
 *       4. 数据长度验证
 *       5. 指令解析和执行：
 *          - 灯光调节指令：0x10 0x0E，更新调光等级
 *          - 其他功能指令：0xAA 0x5A，处理版本读写等操作
 *       6. 数据缓冲区清理
 * @warning 严格的校验机制确保通信可靠性，校验失败立即丢弃数据
 ******************************************************************************
*/
void HandleRS485Message(void)
{

    //判断一帧数据是否结束
    if (g_bRs485Flag != 1)
    {
        return;
    }

    //数据拷贝 防止中断数据干扰
    memcpy(Rx_Buffer, Rx_Buffer_ISR, Rx_Length);

    //CRC校验 不定长校验
    uint8_t data_length = Rx_Length - CRC_BYTES_LENGTH;
    g_uCheckCRC16 = CRC16(Rx_Buffer, data_length);
    g_uCheckCRCResult = (uint16_t) ((Rx_Buffer[data_length] << 8) + Rx_Buffer[data_length + 1]);

    if (g_uCheckCRC16 != g_uCheckCRCResult)    //CRC校验失败
    {
        ClearReceiveData();						

        return;
    }

    uint8_t ExpectedDataBytes = Rx_Buffer[6];
    uint8_t ActualDataBytes = Rx_Length - PROTOCOL_HEADER_LENGTH - CRC_BYTES_LENGTH;
    //判断实际数据长度是否跟协议长度一致
    if (ActualDataBytes != ExpectedDataBytes)
    {
        ClearReceiveData();
        return;
    }

    //灯光调节指令
    if ((Rx_Buffer[1] == 0x10)&&(Rx_Buffer[3] == 0x0E))
    {
        g_uDimmingLevel = Rx_Buffer[8]; //第一通道
    }

    //其他功能指令
    if (Rx_Buffer[0] == 0xAA && Rx_Buffer[1] == 0x5A)
    {
        switch (Rx_Buffer[3]) {
        case 0x01:
            if (Rx_Buffer[2] == 0x01)
            {
                Readhandle_version(Rx_Buffer);
            }
            if (Rx_Buffer[2] == 0x02)
            {
                Writehandle_version(Rx_Buffer);
            }
            break;

        default: break;
        }
    }

    ClearReceiveData();
}
