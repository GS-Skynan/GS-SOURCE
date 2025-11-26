#ifndef _GPIO_DR_H
#define _GPIO_DR_H


#include "../../mcc_generated_files/mcc.h"


#define  APFC_ON          (RA1=1,LATA1=1)
#define  APFC_OFF         (RA1=0,LATA1=0)

#define  L6562_1C_OFF     (RA0=1,LATA0=1)
#define  L6562_1C_ON      (RA0=0,LATA0=0)

#define  JDQ1_OFF         (RB4=0,LATB4=0)
#define  JDQ1_ON          (RB4=1,LATB4=1)

#define  JDQ2_OFF         (RA5=0,LATA5=0)
#define  JDQ2_ON          (RA5=1,LATA5=1)

#define  L6562_2C_OFF     (RC1=1,LATC1=1)
#define  L6562_2C_ON      (RC1=0,LATC1=0)

#define  IO_485_OFF       (RC4=0,LATC4=0)
#define  IO_485_ON        (RC4=1,LATC4=1)

#define  TX_485_OFF       (RC6=0,LATC6=0)
#define  TX_485_ON        (RC6=1,LATC6=1)

#define  LED_OFF          (RB6=0,LATB6=0)
#define  LED_ON           (RB6=1,LATB6=1)

#define SHIELD_PROTECT_RB7  RB7

typedef enum {
    L6562_CHANNEL1 = 0x01,
    L6562_CHANNEL2 = 0x02,
} eL6562_CHANNEL;

typedef enum {
    RELAY_CHANNEL1 = 0x01,
    RELAY_CHANNEL2 = 0x02,
} eRELAY_CHANNEL;

void RS485_TXEN(void);
void RS485_RXEN(void);

void Led_On(void);
void Led_Off(void);

void PFC_On(void);
void PFC_Off(void);

void L6562_Off(eL6562_CHANNEL channel);
void L6562_On(eL6562_CHANNEL channel);

void RELAY_Off(eRELAY_CHANNEL channel);
void RELAY_On(eRELAY_CHANNEL channel);


void GIPOInit(void);
#endif 

