#include "../../../Middlewares/CRC/scl/crc.h"
/*
 * CRC16
 */
unsigned int CRC16(unsigned char *Pushdata,unsigned char length)  
{  
    unsigned char uchCRCHi=0xFF; 
    unsigned char uchCRCLo=0xFF;  
    unsigned char uIndex;  
    while(length--)  
    {  
        uIndex=uchCRCHi^*Pushdata++;  
        uchCRCHi=uchCRCLo^auchCRCHi[uIndex];  
        uchCRCLo=auchCRCLo[uIndex];
    }  
    return (uchCRCHi<<8|uchCRCLo);  
}



