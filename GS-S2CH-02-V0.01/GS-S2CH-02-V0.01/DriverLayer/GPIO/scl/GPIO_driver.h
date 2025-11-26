#ifndef _GPIO_DR_H
#define _GPIO_DR_H

#include "../../../mcc_generated_files/system/system.h"


typedef enum {
    L6562_CHANNEL1 = 0x01,
    L6562_CHANNEL2 = 0x02,
} L6562_CHANNEL;

typedef enum {
    RELAY_CHANNEL1 = 0x01,
    RELAY_CHANNEL2 = 0x02,
} RELAY_CHANNEL;

void RS485_TXEN(void);
void RS485_RXEN(void);

void Led_On(void);
void Led_Off(void);

void PFC_On(void);
void PFC_Off(void);

void  L6562_Off(L6562_CHANNEL channel);
void  L6562_On(L6562_CHANNEL channel);

void  RELAY_Off(RELAY_CHANNEL channel);
void  RELAY_On(RELAY_CHANNEL channel);


void GPIO_APPInit(void);
#endif 

