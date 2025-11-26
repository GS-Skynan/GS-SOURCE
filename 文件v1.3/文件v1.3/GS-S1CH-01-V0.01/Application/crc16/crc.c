#include "../crc16/crc.h"



/**
*******************************************************************************
 * @brief 计算CRC16-CCITT校验值（适用于串口数据校验）
 * @note 多项式：0x1021（x^16 + x^12 + x^5 + 1），初始值：0xFFFF，无反码
 * @param pData：待校验数据指针（输入，非NULL）
 * @param length：待校验数据长度（输入，>0）
 * @return uint16_t：计算后的CRC值
 ******************************************************************************
*/
uint16_t CRC16(uint8_t *pData,uint8_t length)  
{  
    uint8_t uchCRCHi=0xFF;  
    uint8_t uchCRCLo=0xFF;  
    uint8_t uIndex;  
    while(length--)  
    {  
        uIndex=uchCRCHi^*pData++;  
        uchCRCHi=uchCRCLo^auchCRCHi[uIndex];  
        uchCRCLo=auchCRCLo[uIndex];  
    }  
   return (uint16_t)((uchCRCHi << 8) | uchCRCLo);
}