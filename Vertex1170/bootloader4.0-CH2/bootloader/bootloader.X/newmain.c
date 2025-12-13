/*
 * File:   newmain.c
 * Author: 12918
 *
 * Created on August 8, 2025, 8:18 AM
 */


#include <xc.h>

#define _XTAL_FREQ 2000000

void main(void) {
    ANSELF&=0xf7;
    TRISF&=0xf7;
    while(1)
    {
     LATF&=0xf7;
     __delay_ms(1000);
     LATF|=0X08;
     __delay_ms(1000);
    }
    return;
}
