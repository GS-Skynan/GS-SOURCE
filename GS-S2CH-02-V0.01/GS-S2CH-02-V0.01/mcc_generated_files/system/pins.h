/**
 * Generated Pins header File
 * 
 * @file pins.h
 * 
 * @defgroup  pinsdriver Pins Driver
 * 
 * @brief This is generated driver header for pins. 
 *        This header file provides APIs for all pins selected in the GUI.
 *
 * @version Driver Version  3.1.1
*/

/*
? [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

#ifndef PINS_H
#define PINS_H

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set RA0 aliases
#define I_Out2_TRIS                 TRISAbits.TRISA0
#define I_Out2_LAT                  LATAbits.LATA0
#define I_Out2_PORT                 PORTAbits.RA0
#define I_Out2_WPU                  WPUAbits.WPUA0
#define I_Out2_OD                   ODCONAbits.ODCA0
#define I_Out2_ANS                  ANSELAbits.ANSELA0
#define I_Out2_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define I_Out2_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define I_Out2_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define I_Out2_GetValue()           PORTAbits.RA0
#define I_Out2_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define I_Out2_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define I_Out2_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define I_Out2_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define I_Out2_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define I_Out2_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define I_Out2_SetAnalogMode()      do { ANSELAbits.ANSELA0 = 1; } while(0)
#define I_Out2_SetDigitalMode()     do { ANSELAbits.ANSELA0 = 0; } while(0)

// get/set RA1 aliases
#define V_Out2_TRIS                 TRISAbits.TRISA1
#define V_Out2_LAT                  LATAbits.LATA1
#define V_Out2_PORT                 PORTAbits.RA1
#define V_Out2_WPU                  WPUAbits.WPUA1
#define V_Out2_OD                   ODCONAbits.ODCA1
#define V_Out2_ANS                  ANSELAbits.ANSELA1
#define V_Out2_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define V_Out2_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define V_Out2_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define V_Out2_GetValue()           PORTAbits.RA1
#define V_Out2_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define V_Out2_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define V_Out2_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define V_Out2_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define V_Out2_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define V_Out2_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define V_Out2_SetAnalogMode()      do { ANSELAbits.ANSELA1 = 1; } while(0)
#define V_Out2_SetDigitalMode()     do { ANSELAbits.ANSELA1 = 0; } while(0)

// get/set RA2 aliases
#define IO_RA2_TRIS                 TRISAbits.TRISA2
#define IO_RA2_LAT                  LATAbits.LATA2
#define IO_RA2_PORT                 PORTAbits.RA2
#define IO_RA2_WPU                  WPUAbits.WPUA2
#define IO_RA2_OD                   ODCONAbits.ODCA2
#define IO_RA2_ANS                  ANSELAbits.ANSELA2
#define IO_RA2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define IO_RA2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define IO_RA2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define IO_RA2_GetValue()           PORTAbits.RA2
#define IO_RA2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define IO_RA2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define IO_RA2_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define IO_RA2_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define IO_RA2_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define IO_RA2_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define IO_RA2_SetAnalogMode()      do { ANSELAbits.ANSELA2 = 1; } while(0)
#define IO_RA2_SetDigitalMode()     do { ANSELAbits.ANSELA2 = 0; } while(0)

// get/set RA3 aliases
#define tempature_TRIS                 TRISAbits.TRISA3
#define tempature_LAT                  LATAbits.LATA3
#define tempature_PORT                 PORTAbits.RA3
#define tempature_WPU                  WPUAbits.WPUA3
#define tempature_OD                   ODCONAbits.ODCA3
#define tempature_ANS                  ANSELAbits.ANSELA3
#define tempature_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define tempature_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define tempature_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define tempature_GetValue()           PORTAbits.RA3
#define tempature_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define tempature_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define tempature_SetPullup()          do { WPUAbits.WPUA3 = 1; } while(0)
#define tempature_ResetPullup()        do { WPUAbits.WPUA3 = 0; } while(0)
#define tempature_SetPushPull()        do { ODCONAbits.ODCA3 = 0; } while(0)
#define tempature_SetOpenDrain()       do { ODCONAbits.ODCA3 = 1; } while(0)
#define tempature_SetAnalogMode()      do { ANSELAbits.ANSELA3 = 1; } while(0)
#define tempature_SetDigitalMode()     do { ANSELAbits.ANSELA3 = 0; } while(0)

// get/set RA4 aliases
#define I_Out1_TRIS                 TRISAbits.TRISA4
#define I_Out1_LAT                  LATAbits.LATA4
#define I_Out1_PORT                 PORTAbits.RA4
#define I_Out1_WPU                  WPUAbits.WPUA4
#define I_Out1_OD                   ODCONAbits.ODCA4
#define I_Out1_ANS                  ANSELAbits.ANSELA4
#define I_Out1_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define I_Out1_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define I_Out1_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define I_Out1_GetValue()           PORTAbits.RA4
#define I_Out1_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define I_Out1_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define I_Out1_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define I_Out1_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define I_Out1_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define I_Out1_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define I_Out1_SetAnalogMode()      do { ANSELAbits.ANSELA4 = 1; } while(0)
#define I_Out1_SetDigitalMode()     do { ANSELAbits.ANSELA4 = 0; } while(0)

// get/set RA5 aliases
#define V_Out1_TRIS                 TRISAbits.TRISA5
#define V_Out1_LAT                  LATAbits.LATA5
#define V_Out1_PORT                 PORTAbits.RA5
#define V_Out1_WPU                  WPUAbits.WPUA5
#define V_Out1_OD                   ODCONAbits.ODCA5
#define V_Out1_ANS                  ANSELAbits.ANSELA5
#define V_Out1_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define V_Out1_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define V_Out1_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define V_Out1_GetValue()           PORTAbits.RA5
#define V_Out1_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define V_Out1_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define V_Out1_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define V_Out1_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define V_Out1_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define V_Out1_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define V_Out1_SetAnalogMode()      do { ANSELAbits.ANSELA5 = 1; } while(0)
#define V_Out1_SetDigitalMode()     do { ANSELAbits.ANSELA5 = 0; } while(0)

// get/set RB0 aliases
#define IO_RB0_TRIS                 TRISBbits.TRISB0
#define IO_RB0_LAT                  LATBbits.LATB0
#define IO_RB0_PORT                 PORTBbits.RB0
#define IO_RB0_WPU                  WPUBbits.WPUB0
#define IO_RB0_OD                   ODCONBbits.ODCB0
#define IO_RB0_ANS                  ANSELBbits.ANSELB0
#define IO_RB0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define IO_RB0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define IO_RB0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define IO_RB0_GetValue()           PORTBbits.RB0
#define IO_RB0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define IO_RB0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define IO_RB0_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define IO_RB0_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define IO_RB0_SetPushPull()        do { ODCONBbits.ODCB0 = 0; } while(0)
#define IO_RB0_SetOpenDrain()       do { ODCONBbits.ODCB0 = 1; } while(0)
#define IO_RB0_SetAnalogMode()      do { ANSELBbits.ANSELB0 = 1; } while(0)
#define IO_RB0_SetDigitalMode()     do { ANSELBbits.ANSELB0 = 0; } while(0)

// get/set RB1 aliases
#define IO_RB1_TRIS                 TRISBbits.TRISB1
#define IO_RB1_LAT                  LATBbits.LATB1
#define IO_RB1_PORT                 PORTBbits.RB1
#define IO_RB1_WPU                  WPUBbits.WPUB1
#define IO_RB1_OD                   ODCONBbits.ODCB1
#define IO_RB1_ANS                  ANSELBbits.ANSELB1
#define IO_RB1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define IO_RB1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define IO_RB1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define IO_RB1_GetValue()           PORTBbits.RB1
#define IO_RB1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define IO_RB1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define IO_RB1_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define IO_RB1_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define IO_RB1_SetPushPull()        do { ODCONBbits.ODCB1 = 0; } while(0)
#define IO_RB1_SetOpenDrain()       do { ODCONBbits.ODCB1 = 1; } while(0)
#define IO_RB1_SetAnalogMode()      do { ANSELBbits.ANSELB1 = 1; } while(0)
#define IO_RB1_SetDigitalMode()     do { ANSELBbits.ANSELB1 = 0; } while(0)

// get/set RB2 aliases
#define IO_RB2_TRIS                 TRISBbits.TRISB2
#define IO_RB2_LAT                  LATBbits.LATB2
#define IO_RB2_PORT                 PORTBbits.RB2
#define IO_RB2_WPU                  WPUBbits.WPUB2
#define IO_RB2_OD                   ODCONBbits.ODCB2
#define IO_RB2_ANS                  ANSELBbits.ANSELB2
#define IO_RB2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define IO_RB2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define IO_RB2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define IO_RB2_GetValue()           PORTBbits.RB2
#define IO_RB2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define IO_RB2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define IO_RB2_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define IO_RB2_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define IO_RB2_SetPushPull()        do { ODCONBbits.ODCB2 = 0; } while(0)
#define IO_RB2_SetOpenDrain()       do { ODCONBbits.ODCB2 = 1; } while(0)
#define IO_RB2_SetAnalogMode()      do { ANSELBbits.ANSELB2 = 1; } while(0)
#define IO_RB2_SetDigitalMode()     do { ANSELBbits.ANSELB2 = 0; } while(0)

// get/set RB3 aliases
#define IO_RB3_TRIS                 TRISBbits.TRISB3
#define IO_RB3_LAT                  LATBbits.LATB3
#define IO_RB3_PORT                 PORTBbits.RB3
#define IO_RB3_WPU                  WPUBbits.WPUB3
#define IO_RB3_OD                   ODCONBbits.ODCB3
#define IO_RB3_ANS                  ANSELBbits.ANSELB3
#define IO_RB3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define IO_RB3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define IO_RB3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define IO_RB3_GetValue()           PORTBbits.RB3
#define IO_RB3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define IO_RB3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define IO_RB3_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define IO_RB3_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define IO_RB3_SetPushPull()        do { ODCONBbits.ODCB3 = 0; } while(0)
#define IO_RB3_SetOpenDrain()       do { ODCONBbits.ODCB3 = 1; } while(0)
#define IO_RB3_SetAnalogMode()      do { ANSELBbits.ANSELB3 = 1; } while(0)
#define IO_RB3_SetDigitalMode()     do { ANSELBbits.ANSELB3 = 0; } while(0)

// get/set RB4 aliases
#define IO_RB4_TRIS                 TRISBbits.TRISB4
#define IO_RB4_LAT                  LATBbits.LATB4
#define IO_RB4_PORT                 PORTBbits.RB4
#define IO_RB4_WPU                  WPUBbits.WPUB4
#define IO_RB4_OD                   ODCONBbits.ODCB4
#define IO_RB4_ANS                  ANSELBbits.ANSELB4
#define IO_RB4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define IO_RB4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define IO_RB4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define IO_RB4_GetValue()           PORTBbits.RB4
#define IO_RB4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define IO_RB4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define IO_RB4_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define IO_RB4_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define IO_RB4_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define IO_RB4_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define IO_RB4_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define IO_RB4_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

// get/set RB5 aliases
#define Input_V_TRIS                 TRISBbits.TRISB5
#define Input_V_LAT                  LATBbits.LATB5
#define Input_V_PORT                 PORTBbits.RB5
#define Input_V_WPU                  WPUBbits.WPUB5
#define Input_V_OD                   ODCONBbits.ODCB5
#define Input_V_ANS                  ANSELBbits.ANSELB5
#define Input_V_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define Input_V_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define Input_V_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define Input_V_GetValue()           PORTBbits.RB5
#define Input_V_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define Input_V_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define Input_V_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define Input_V_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define Input_V_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define Input_V_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define Input_V_SetAnalogMode()      do { ANSELBbits.ANSELB5 = 1; } while(0)
#define Input_V_SetDigitalMode()     do { ANSELBbits.ANSELB5 = 0; } while(0)

// get/set RB6 aliases
#define IO_RB6_TRIS                 TRISBbits.TRISB6
#define IO_RB6_LAT                  LATBbits.LATB6
#define IO_RB6_PORT                 PORTBbits.RB6
#define IO_RB6_WPU                  WPUBbits.WPUB6
#define IO_RB6_OD                   ODCONBbits.ODCB6
#define IO_RB6_ANS                  ANSELBbits.ANSELB6
#define IO_RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define IO_RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define IO_RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define IO_RB6_GetValue()           PORTBbits.RB6
#define IO_RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define IO_RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define IO_RB6_SetPullup()          do { WPUBbits.WPUB6 = 1; } while(0)
#define IO_RB6_ResetPullup()        do { WPUBbits.WPUB6 = 0; } while(0)
#define IO_RB6_SetPushPull()        do { ODCONBbits.ODCB6 = 0; } while(0)
#define IO_RB6_SetOpenDrain()       do { ODCONBbits.ODCB6 = 1; } while(0)
#define IO_RB6_SetAnalogMode()      do { ANSELBbits.ANSELB6 = 1; } while(0)
#define IO_RB6_SetDigitalMode()     do { ANSELBbits.ANSELB6 = 0; } while(0)

// get/set RB7 aliases
#define Port_3_4_TRIS                 TRISBbits.TRISB7
#define Port_3_4_LAT                  LATBbits.LATB7
#define Port_3_4_PORT                 PORTBbits.RB7
#define Port_3_4_WPU                  WPUBbits.WPUB7
#define Port_3_4_OD                   ODCONBbits.ODCB7
#define Port_3_4_ANS                  ANSELBbits.ANSELB7
#define Port_3_4_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define Port_3_4_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define Port_3_4_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define Port_3_4_GetValue()           PORTBbits.RB7
#define Port_3_4_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define Port_3_4_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define Port_3_4_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define Port_3_4_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define Port_3_4_SetPushPull()        do { ODCONBbits.ODCB7 = 0; } while(0)
#define Port_3_4_SetOpenDrain()       do { ODCONBbits.ODCB7 = 1; } while(0)
#define Port_3_4_SetAnalogMode()      do { ANSELBbits.ANSELB7 = 1; } while(0)
#define Port_3_4_SetDigitalMode()     do { ANSELBbits.ANSELB7 = 0; } while(0)

// get/set RC0 aliases
#define IO_RC0_TRIS                 TRISCbits.TRISC0
#define IO_RC0_LAT                  LATCbits.LATC0
#define IO_RC0_PORT                 PORTCbits.RC0
#define IO_RC0_WPU                  WPUCbits.WPUC0
#define IO_RC0_OD                   ODCONCbits.ODCC0
#define IO_RC0_ANS                  ANSELCbits.ANSELC0
#define IO_RC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define IO_RC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define IO_RC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define IO_RC0_GetValue()           PORTCbits.RC0
#define IO_RC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define IO_RC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define IO_RC0_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define IO_RC0_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define IO_RC0_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define IO_RC0_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define IO_RC0_SetAnalogMode()      do { ANSELCbits.ANSELC0 = 1; } while(0)
#define IO_RC0_SetDigitalMode()     do { ANSELCbits.ANSELC0 = 0; } while(0)

// get/set RC1 aliases
#define JDQ_2_TRIS                 TRISCbits.TRISC1
#define JDQ_2_LAT                  LATCbits.LATC1
#define JDQ_2_PORT                 PORTCbits.RC1
#define JDQ_2_WPU                  WPUCbits.WPUC1
#define JDQ_2_OD                   ODCONCbits.ODCC1
#define JDQ_2_ANS                  ANSELCbits.ANSELC1
#define JDQ_2_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define JDQ_2_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define JDQ_2_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define JDQ_2_GetValue()           PORTCbits.RC1
#define JDQ_2_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define JDQ_2_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define JDQ_2_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define JDQ_2_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define JDQ_2_SetPushPull()        do { ODCONCbits.ODCC1 = 0; } while(0)
#define JDQ_2_SetOpenDrain()       do { ODCONCbits.ODCC1 = 1; } while(0)
#define JDQ_2_SetAnalogMode()      do { ANSELCbits.ANSELC1 = 1; } while(0)
#define JDQ_2_SetDigitalMode()     do { ANSELCbits.ANSELC1 = 0; } while(0)

// get/set RC2 aliases
#define IO_RC2_TRIS                 TRISCbits.TRISC2
#define IO_RC2_LAT                  LATCbits.LATC2
#define IO_RC2_PORT                 PORTCbits.RC2
#define IO_RC2_WPU                  WPUCbits.WPUC2
#define IO_RC2_OD                   ODCONCbits.ODCC2
#define IO_RC2_ANS                  ANSELCbits.ANSELC2
#define IO_RC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define IO_RC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define IO_RC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define IO_RC2_GetValue()           PORTCbits.RC2
#define IO_RC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define IO_RC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define IO_RC2_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define IO_RC2_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define IO_RC2_SetPushPull()        do { ODCONCbits.ODCC2 = 0; } while(0)
#define IO_RC2_SetOpenDrain()       do { ODCONCbits.ODCC2 = 1; } while(0)
#define IO_RC2_SetAnalogMode()      do { ANSELCbits.ANSELC2 = 1; } while(0)
#define IO_RC2_SetDigitalMode()     do { ANSELCbits.ANSELC2 = 0; } while(0)

// get/set RC3 aliases
#define IO_RC3_TRIS                 TRISCbits.TRISC3
#define IO_RC3_LAT                  LATCbits.LATC3
#define IO_RC3_PORT                 PORTCbits.RC3
#define IO_RC3_WPU                  WPUCbits.WPUC3
#define IO_RC3_OD                   ODCONCbits.ODCC3
#define IO_RC3_ANS                  ANSELCbits.ANSELC3
#define IO_RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define IO_RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define IO_RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define IO_RC3_GetValue()           PORTCbits.RC3
#define IO_RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define IO_RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define IO_RC3_SetPullup()          do { WPUCbits.WPUC3 = 1; } while(0)
#define IO_RC3_ResetPullup()        do { WPUCbits.WPUC3 = 0; } while(0)
#define IO_RC3_SetPushPull()        do { ODCONCbits.ODCC3 = 0; } while(0)
#define IO_RC3_SetOpenDrain()       do { ODCONCbits.ODCC3 = 1; } while(0)
#define IO_RC3_SetAnalogMode()      do { ANSELCbits.ANSELC3 = 1; } while(0)
#define IO_RC3_SetDigitalMode()     do { ANSELCbits.ANSELC3 = 0; } while(0)

// get/set RC4 aliases
#define IO_RC4_TRIS                 TRISCbits.TRISC4
#define IO_RC4_LAT                  LATCbits.LATC4
#define IO_RC4_PORT                 PORTCbits.RC4
#define IO_RC4_WPU                  WPUCbits.WPUC4
#define IO_RC4_OD                   ODCONCbits.ODCC4
#define IO_RC4_ANS                  ANSELCbits.ANSELC4
#define IO_RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define IO_RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define IO_RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define IO_RC4_GetValue()           PORTCbits.RC4
#define IO_RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define IO_RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define IO_RC4_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define IO_RC4_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define IO_RC4_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define IO_RC4_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define IO_RC4_SetAnalogMode()      do { ANSELCbits.ANSELC4 = 1; } while(0)
#define IO_RC4_SetDigitalMode()     do { ANSELCbits.ANSELC4 = 0; } while(0)

// get/set RC5 aliases
#define IO_RC5_TRIS                 TRISCbits.TRISC5
#define IO_RC5_LAT                  LATCbits.LATC5
#define IO_RC5_PORT                 PORTCbits.RC5
#define IO_RC5_WPU                  WPUCbits.WPUC5
#define IO_RC5_OD                   ODCONCbits.ODCC5
#define IO_RC5_ANS                  ANSELCbits.ANSELC5
#define IO_RC5_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define IO_RC5_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define IO_RC5_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define IO_RC5_GetValue()           PORTCbits.RC5
#define IO_RC5_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define IO_RC5_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define IO_RC5_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define IO_RC5_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define IO_RC5_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define IO_RC5_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define IO_RC5_SetAnalogMode()      do { ANSELCbits.ANSELC5 = 1; } while(0)
#define IO_RC5_SetDigitalMode()     do { ANSELCbits.ANSELC5 = 0; } while(0)

// get/set RC6 aliases
#define IO_RC6_TRIS                 TRISCbits.TRISC6
#define IO_RC6_LAT                  LATCbits.LATC6
#define IO_RC6_PORT                 PORTCbits.RC6
#define IO_RC6_WPU                  WPUCbits.WPUC6
#define IO_RC6_OD                   ODCONCbits.ODCC6
#define IO_RC6_ANS                  ANSELCbits.ANSELC6
#define IO_RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define IO_RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define IO_RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define IO_RC6_GetValue()           PORTCbits.RC6
#define IO_RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define IO_RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define IO_RC6_SetPullup()          do { WPUCbits.WPUC6 = 1; } while(0)
#define IO_RC6_ResetPullup()        do { WPUCbits.WPUC6 = 0; } while(0)
#define IO_RC6_SetPushPull()        do { ODCONCbits.ODCC6 = 0; } while(0)
#define IO_RC6_SetOpenDrain()       do { ODCONCbits.ODCC6 = 1; } while(0)
#define IO_RC6_SetAnalogMode()      do { ANSELCbits.ANSELC6 = 1; } while(0)
#define IO_RC6_SetDigitalMode()     do { ANSELCbits.ANSELC6 = 0; } while(0)

// get/set RC7 aliases
#define IO_RC7_TRIS                 TRISCbits.TRISC7
#define IO_RC7_LAT                  LATCbits.LATC7
#define IO_RC7_PORT                 PORTCbits.RC7
#define IO_RC7_WPU                  WPUCbits.WPUC7
#define IO_RC7_OD                   ODCONCbits.ODCC7
#define IO_RC7_ANS                  ANSELCbits.ANSELC7
#define IO_RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define IO_RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define IO_RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define IO_RC7_GetValue()           PORTCbits.RC7
#define IO_RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define IO_RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define IO_RC7_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define IO_RC7_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define IO_RC7_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define IO_RC7_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define IO_RC7_SetAnalogMode()      do { ANSELCbits.ANSELC7 = 1; } while(0)
#define IO_RC7_SetDigitalMode()     do { ANSELCbits.ANSELC7 = 0; } while(0)

// get/set RD0 aliases
#define IO_RD0_TRIS                 TRISDbits.TRISD0
#define IO_RD0_LAT                  LATDbits.LATD0
#define IO_RD0_PORT                 PORTDbits.RD0
#define IO_RD0_WPU                  WPUDbits.WPUD0
#define IO_RD0_OD                   ODCONDbits.ODCD0
#define IO_RD0_ANS                  ANSELDbits.ANSELD0
#define IO_RD0_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define IO_RD0_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define IO_RD0_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define IO_RD0_GetValue()           PORTDbits.RD0
#define IO_RD0_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define IO_RD0_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define IO_RD0_SetPullup()          do { WPUDbits.WPUD0 = 1; } while(0)
#define IO_RD0_ResetPullup()        do { WPUDbits.WPUD0 = 0; } while(0)
#define IO_RD0_SetPushPull()        do { ODCONDbits.ODCD0 = 0; } while(0)
#define IO_RD0_SetOpenDrain()       do { ODCONDbits.ODCD0 = 1; } while(0)
#define IO_RD0_SetAnalogMode()      do { ANSELDbits.ANSELD0 = 1; } while(0)
#define IO_RD0_SetDigitalMode()     do { ANSELDbits.ANSELD0 = 0; } while(0)

// get/set RD1 aliases
#define IO_RD1_TRIS                 TRISDbits.TRISD1
#define IO_RD1_LAT                  LATDbits.LATD1
#define IO_RD1_PORT                 PORTDbits.RD1
#define IO_RD1_WPU                  WPUDbits.WPUD1
#define IO_RD1_OD                   ODCONDbits.ODCD1
#define IO_RD1_ANS                  ANSELDbits.ANSELD1
#define IO_RD1_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define IO_RD1_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define IO_RD1_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define IO_RD1_GetValue()           PORTDbits.RD1
#define IO_RD1_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define IO_RD1_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define IO_RD1_SetPullup()          do { WPUDbits.WPUD1 = 1; } while(0)
#define IO_RD1_ResetPullup()        do { WPUDbits.WPUD1 = 0; } while(0)
#define IO_RD1_SetPushPull()        do { ODCONDbits.ODCD1 = 0; } while(0)
#define IO_RD1_SetOpenDrain()       do { ODCONDbits.ODCD1 = 1; } while(0)
#define IO_RD1_SetAnalogMode()      do { ANSELDbits.ANSELD1 = 1; } while(0)
#define IO_RD1_SetDigitalMode()     do { ANSELDbits.ANSELD1 = 0; } while(0)

// get/set RD2 aliases
#define IO_RD2_TRIS                 TRISDbits.TRISD2
#define IO_RD2_LAT                  LATDbits.LATD2
#define IO_RD2_PORT                 PORTDbits.RD2
#define IO_RD2_WPU                  WPUDbits.WPUD2
#define IO_RD2_OD                   ODCONDbits.ODCD2
#define IO_RD2_ANS                  ANSELDbits.ANSELD2
#define IO_RD2_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define IO_RD2_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define IO_RD2_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define IO_RD2_GetValue()           PORTDbits.RD2
#define IO_RD2_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define IO_RD2_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define IO_RD2_SetPullup()          do { WPUDbits.WPUD2 = 1; } while(0)
#define IO_RD2_ResetPullup()        do { WPUDbits.WPUD2 = 0; } while(0)
#define IO_RD2_SetPushPull()        do { ODCONDbits.ODCD2 = 0; } while(0)
#define IO_RD2_SetOpenDrain()       do { ODCONDbits.ODCD2 = 1; } while(0)
#define IO_RD2_SetAnalogMode()      do { ANSELDbits.ANSELD2 = 1; } while(0)
#define IO_RD2_SetDigitalMode()     do { ANSELDbits.ANSELD2 = 0; } while(0)

// get/set RD3 aliases
#define IO_RD3_TRIS                 TRISDbits.TRISD3
#define IO_RD3_LAT                  LATDbits.LATD3
#define IO_RD3_PORT                 PORTDbits.RD3
#define IO_RD3_WPU                  WPUDbits.WPUD3
#define IO_RD3_OD                   ODCONDbits.ODCD3
#define IO_RD3_ANS                  ANSELDbits.ANSELD3
#define IO_RD3_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define IO_RD3_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define IO_RD3_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define IO_RD3_GetValue()           PORTDbits.RD3
#define IO_RD3_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define IO_RD3_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define IO_RD3_SetPullup()          do { WPUDbits.WPUD3 = 1; } while(0)
#define IO_RD3_ResetPullup()        do { WPUDbits.WPUD3 = 0; } while(0)
#define IO_RD3_SetPushPull()        do { ODCONDbits.ODCD3 = 0; } while(0)
#define IO_RD3_SetOpenDrain()       do { ODCONDbits.ODCD3 = 1; } while(0)
#define IO_RD3_SetAnalogMode()      do { ANSELDbits.ANSELD3 = 1; } while(0)
#define IO_RD3_SetDigitalMode()     do { ANSELDbits.ANSELD3 = 0; } while(0)

// get/set RD4 aliases
#define IO_RD4_TRIS                 TRISDbits.TRISD4
#define IO_RD4_LAT                  LATDbits.LATD4
#define IO_RD4_PORT                 PORTDbits.RD4
#define IO_RD4_WPU                  WPUDbits.WPUD4
#define IO_RD4_OD                   ODCONDbits.ODCD4
#define IO_RD4_ANS                  ANSELDbits.ANSELD4
#define IO_RD4_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define IO_RD4_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define IO_RD4_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define IO_RD4_GetValue()           PORTDbits.RD4
#define IO_RD4_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define IO_RD4_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define IO_RD4_SetPullup()          do { WPUDbits.WPUD4 = 1; } while(0)
#define IO_RD4_ResetPullup()        do { WPUDbits.WPUD4 = 0; } while(0)
#define IO_RD4_SetPushPull()        do { ODCONDbits.ODCD4 = 0; } while(0)
#define IO_RD4_SetOpenDrain()       do { ODCONDbits.ODCD4 = 1; } while(0)
#define IO_RD4_SetAnalogMode()      do { ANSELDbits.ANSELD4 = 1; } while(0)
#define IO_RD4_SetDigitalMode()     do { ANSELDbits.ANSELD4 = 0; } while(0)

// get/set RD5 aliases
#define IO_RD5_TRIS                 TRISDbits.TRISD5
#define IO_RD5_LAT                  LATDbits.LATD5
#define IO_RD5_PORT                 PORTDbits.RD5
#define IO_RD5_WPU                  WPUDbits.WPUD5
#define IO_RD5_OD                   ODCONDbits.ODCD5
#define IO_RD5_ANS                  ANSELDbits.ANSELD5
#define IO_RD5_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define IO_RD5_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define IO_RD5_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define IO_RD5_GetValue()           PORTDbits.RD5
#define IO_RD5_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define IO_RD5_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define IO_RD5_SetPullup()          do { WPUDbits.WPUD5 = 1; } while(0)
#define IO_RD5_ResetPullup()        do { WPUDbits.WPUD5 = 0; } while(0)
#define IO_RD5_SetPushPull()        do { ODCONDbits.ODCD5 = 0; } while(0)
#define IO_RD5_SetOpenDrain()       do { ODCONDbits.ODCD5 = 1; } while(0)
#define IO_RD5_SetAnalogMode()      do { ANSELDbits.ANSELD5 = 1; } while(0)
#define IO_RD5_SetDigitalMode()     do { ANSELDbits.ANSELD5 = 0; } while(0)

// get/set RD6 aliases
#define IO_RD6_TRIS                 TRISDbits.TRISD6
#define IO_RD6_LAT                  LATDbits.LATD6
#define IO_RD6_PORT                 PORTDbits.RD6
#define IO_RD6_WPU                  WPUDbits.WPUD6
#define IO_RD6_OD                   ODCONDbits.ODCD6
#define IO_RD6_ANS                  ANSELDbits.ANSELD6
#define IO_RD6_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define IO_RD6_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define IO_RD6_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define IO_RD6_GetValue()           PORTDbits.RD6
#define IO_RD6_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define IO_RD6_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define IO_RD6_SetPullup()          do { WPUDbits.WPUD6 = 1; } while(0)
#define IO_RD6_ResetPullup()        do { WPUDbits.WPUD6 = 0; } while(0)
#define IO_RD6_SetPushPull()        do { ODCONDbits.ODCD6 = 0; } while(0)
#define IO_RD6_SetOpenDrain()       do { ODCONDbits.ODCD6 = 1; } while(0)
#define IO_RD6_SetAnalogMode()      do { ANSELDbits.ANSELD6 = 1; } while(0)
#define IO_RD6_SetDigitalMode()     do { ANSELDbits.ANSELD6 = 0; } while(0)

// get/set RD7 aliases
#define IO_RD7_TRIS                 TRISDbits.TRISD7
#define IO_RD7_LAT                  LATDbits.LATD7
#define IO_RD7_PORT                 PORTDbits.RD7
#define IO_RD7_WPU                  WPUDbits.WPUD7
#define IO_RD7_OD                   ODCONDbits.ODCD7
#define IO_RD7_ANS                  ANSELDbits.ANSELD7
#define IO_RD7_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define IO_RD7_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define IO_RD7_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define IO_RD7_GetValue()           PORTDbits.RD7
#define IO_RD7_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define IO_RD7_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define IO_RD7_SetPullup()          do { WPUDbits.WPUD7 = 1; } while(0)
#define IO_RD7_ResetPullup()        do { WPUDbits.WPUD7 = 0; } while(0)
#define IO_RD7_SetPushPull()        do { ODCONDbits.ODCD7 = 0; } while(0)
#define IO_RD7_SetOpenDrain()       do { ODCONDbits.ODCD7 = 1; } while(0)
#define IO_RD7_SetAnalogMode()      do { ANSELDbits.ANSELD7 = 1; } while(0)
#define IO_RD7_SetDigitalMode()     do { ANSELDbits.ANSELD7 = 0; } while(0)

// get/set RE0 aliases
#define IO_RE0_TRIS                 TRISEbits.TRISE0
#define IO_RE0_LAT                  LATEbits.LATE0
#define IO_RE0_PORT                 PORTEbits.RE0
#define IO_RE0_WPU                  WPUEbits.WPUE0
#define IO_RE0_OD                   ODCONEbits.ODCE0
#define IO_RE0_ANS                  ANSELEbits.ANSELE0
#define IO_RE0_SetHigh()            do { LATEbits.LATE0 = 1; } while(0)
#define IO_RE0_SetLow()             do { LATEbits.LATE0 = 0; } while(0)
#define IO_RE0_Toggle()             do { LATEbits.LATE0 = ~LATEbits.LATE0; } while(0)
#define IO_RE0_GetValue()           PORTEbits.RE0
#define IO_RE0_SetDigitalInput()    do { TRISEbits.TRISE0 = 1; } while(0)
#define IO_RE0_SetDigitalOutput()   do { TRISEbits.TRISE0 = 0; } while(0)
#define IO_RE0_SetPullup()          do { WPUEbits.WPUE0 = 1; } while(0)
#define IO_RE0_ResetPullup()        do { WPUEbits.WPUE0 = 0; } while(0)
#define IO_RE0_SetPushPull()        do { ODCONEbits.ODCE0 = 0; } while(0)
#define IO_RE0_SetOpenDrain()       do { ODCONEbits.ODCE0 = 1; } while(0)
#define IO_RE0_SetAnalogMode()      do { ANSELEbits.ANSELE0 = 1; } while(0)
#define IO_RE0_SetDigitalMode()     do { ANSELEbits.ANSELE0 = 0; } while(0)

// get/set RE1 aliases
#define L65262-2C_TRIS                 TRISEbits.TRISE1
#define L65262-2C_LAT                  LATEbits.LATE1
#define L65262-2C_PORT                 PORTEbits.RE1
#define L65262-2C_WPU                  WPUEbits.WPUE1
#define L65262-2C_OD                   ODCONEbits.ODCE1
#define L65262-2C_ANS                  ANSELEbits.ANSELE1
#define L65262-2C_SetHigh()            do { LATEbits.LATE1 = 1; } while(0)
#define L65262-2C_SetLow()             do { LATEbits.LATE1 = 0; } while(0)
#define L65262-2C_Toggle()             do { LATEbits.LATE1 = ~LATEbits.LATE1; } while(0)
#define L65262-2C_GetValue()           PORTEbits.RE1
#define L65262-2C_SetDigitalInput()    do { TRISEbits.TRISE1 = 1; } while(0)
#define L65262-2C_SetDigitalOutput()   do { TRISEbits.TRISE1 = 0; } while(0)
#define L65262-2C_SetPullup()          do { WPUEbits.WPUE1 = 1; } while(0)
#define L65262-2C_ResetPullup()        do { WPUEbits.WPUE1 = 0; } while(0)
#define L65262-2C_SetPushPull()        do { ODCONEbits.ODCE1 = 0; } while(0)
#define L65262-2C_SetOpenDrain()       do { ODCONEbits.ODCE1 = 1; } while(0)
#define L65262-2C_SetAnalogMode()      do { ANSELEbits.ANSELE1 = 1; } while(0)
#define L65262-2C_SetDigitalMode()     do { ANSELEbits.ANSELE1 = 0; } while(0)

// get/set RE2 aliases
#define L6562_TRIS                 TRISEbits.TRISE2
#define L6562_LAT                  LATEbits.LATE2
#define L6562_PORT                 PORTEbits.RE2
#define L6562_WPU                  WPUEbits.WPUE2
#define L6562_OD                   ODCONEbits.ODCE2
#define L6562_ANS                  ANSELEbits.ANSELE2
#define L6562_SetHigh()            do { LATEbits.LATE2 = 1; } while(0)
#define L6562_SetLow()             do { LATEbits.LATE2 = 0; } while(0)
#define L6562_Toggle()             do { LATEbits.LATE2 = ~LATEbits.LATE2; } while(0)
#define L6562_GetValue()           PORTEbits.RE2
#define L6562_SetDigitalInput()    do { TRISEbits.TRISE2 = 1; } while(0)
#define L6562_SetDigitalOutput()   do { TRISEbits.TRISE2 = 0; } while(0)
#define L6562_SetPullup()          do { WPUEbits.WPUE2 = 1; } while(0)
#define L6562_ResetPullup()        do { WPUEbits.WPUE2 = 0; } while(0)
#define L6562_SetPushPull()        do { ODCONEbits.ODCE2 = 0; } while(0)
#define L6562_SetOpenDrain()       do { ODCONEbits.ODCE2 = 1; } while(0)
#define L6562_SetAnalogMode()      do { ANSELEbits.ANSELE2 = 1; } while(0)
#define L6562_SetDigitalMode()     do { ANSELEbits.ANSELE2 = 0; } while(0)

// get/set RF0 aliases
#define LED_TRIS                 TRISFbits.TRISF0
#define LED_LAT                  LATFbits.LATF0
#define LED_PORT                 PORTFbits.RF0
#define LED_WPU                  WPUFbits.WPUF0
#define LED_OD                   ODCONFbits.ODCF0
#define LED_ANS                  ANSELFbits.ANSELF0
#define LED_SetHigh()            do { LATFbits.LATF0 = 1; } while(0)
#define LED_SetLow()             do { LATFbits.LATF0 = 0; } while(0)
#define LED_Toggle()             do { LATFbits.LATF0 = ~LATFbits.LATF0; } while(0)
#define LED_GetValue()           PORTFbits.RF0
#define LED_SetDigitalInput()    do { TRISFbits.TRISF0 = 1; } while(0)
#define LED_SetDigitalOutput()   do { TRISFbits.TRISF0 = 0; } while(0)
#define LED_SetPullup()          do { WPUFbits.WPUF0 = 1; } while(0)
#define LED_ResetPullup()        do { WPUFbits.WPUF0 = 0; } while(0)
#define LED_SetPushPull()        do { ODCONFbits.ODCF0 = 0; } while(0)
#define LED_SetOpenDrain()       do { ODCONFbits.ODCF0 = 1; } while(0)
#define LED_SetAnalogMode()      do { ANSELFbits.ANSELF0 = 1; } while(0)
#define LED_SetDigitalMode()     do { ANSELFbits.ANSELF0 = 0; } while(0)

// get/set RF1 aliases
#define IO_RF1_TRIS                 TRISFbits.TRISF1
#define IO_RF1_LAT                  LATFbits.LATF1
#define IO_RF1_PORT                 PORTFbits.RF1
#define IO_RF1_WPU                  WPUFbits.WPUF1
#define IO_RF1_OD                   ODCONFbits.ODCF1
#define IO_RF1_ANS                  ANSELFbits.ANSELF1
#define IO_RF1_SetHigh()            do { LATFbits.LATF1 = 1; } while(0)
#define IO_RF1_SetLow()             do { LATFbits.LATF1 = 0; } while(0)
#define IO_RF1_Toggle()             do { LATFbits.LATF1 = ~LATFbits.LATF1; } while(0)
#define IO_RF1_GetValue()           PORTFbits.RF1
#define IO_RF1_SetDigitalInput()    do { TRISFbits.TRISF1 = 1; } while(0)
#define IO_RF1_SetDigitalOutput()   do { TRISFbits.TRISF1 = 0; } while(0)
#define IO_RF1_SetPullup()          do { WPUFbits.WPUF1 = 1; } while(0)
#define IO_RF1_ResetPullup()        do { WPUFbits.WPUF1 = 0; } while(0)
#define IO_RF1_SetPushPull()        do { ODCONFbits.ODCF1 = 0; } while(0)
#define IO_RF1_SetOpenDrain()       do { ODCONFbits.ODCF1 = 1; } while(0)
#define IO_RF1_SetAnalogMode()      do { ANSELFbits.ANSELF1 = 1; } while(0)
#define IO_RF1_SetDigitalMode()     do { ANSELFbits.ANSELF1 = 0; } while(0)

// get/set RF2 aliases
#define IO_RF2_TRIS                 TRISFbits.TRISF2
#define IO_RF2_LAT                  LATFbits.LATF2
#define IO_RF2_PORT                 PORTFbits.RF2
#define IO_RF2_WPU                  WPUFbits.WPUF2
#define IO_RF2_OD                   ODCONFbits.ODCF2
#define IO_RF2_ANS                  ANSELFbits.ANSELF2
#define IO_RF2_SetHigh()            do { LATFbits.LATF2 = 1; } while(0)
#define IO_RF2_SetLow()             do { LATFbits.LATF2 = 0; } while(0)
#define IO_RF2_Toggle()             do { LATFbits.LATF2 = ~LATFbits.LATF2; } while(0)
#define IO_RF2_GetValue()           PORTFbits.RF2
#define IO_RF2_SetDigitalInput()    do { TRISFbits.TRISF2 = 1; } while(0)
#define IO_RF2_SetDigitalOutput()   do { TRISFbits.TRISF2 = 0; } while(0)
#define IO_RF2_SetPullup()          do { WPUFbits.WPUF2 = 1; } while(0)
#define IO_RF2_ResetPullup()        do { WPUFbits.WPUF2 = 0; } while(0)
#define IO_RF2_SetPushPull()        do { ODCONFbits.ODCF2 = 0; } while(0)
#define IO_RF2_SetOpenDrain()       do { ODCONFbits.ODCF2 = 1; } while(0)
#define IO_RF2_SetAnalogMode()      do { ANSELFbits.ANSELF2 = 1; } while(0)
#define IO_RF2_SetDigitalMode()     do { ANSELFbits.ANSELF2 = 0; } while(0)

// get/set RF3 aliases
#define IO_RF3_TRIS                 TRISFbits.TRISF3
#define IO_RF3_LAT                  LATFbits.LATF3
#define IO_RF3_PORT                 PORTFbits.RF3
#define IO_RF3_WPU                  WPUFbits.WPUF3
#define IO_RF3_OD                   ODCONFbits.ODCF3
#define IO_RF3_ANS                  ANSELFbits.ANSELF3
#define IO_RF3_SetHigh()            do { LATFbits.LATF3 = 1; } while(0)
#define IO_RF3_SetLow()             do { LATFbits.LATF3 = 0; } while(0)
#define IO_RF3_Toggle()             do { LATFbits.LATF3 = ~LATFbits.LATF3; } while(0)
#define IO_RF3_GetValue()           PORTFbits.RF3
#define IO_RF3_SetDigitalInput()    do { TRISFbits.TRISF3 = 1; } while(0)
#define IO_RF3_SetDigitalOutput()   do { TRISFbits.TRISF3 = 0; } while(0)
#define IO_RF3_SetPullup()          do { WPUFbits.WPUF3 = 1; } while(0)
#define IO_RF3_ResetPullup()        do { WPUFbits.WPUF3 = 0; } while(0)
#define IO_RF3_SetPushPull()        do { ODCONFbits.ODCF3 = 0; } while(0)
#define IO_RF3_SetOpenDrain()       do { ODCONFbits.ODCF3 = 1; } while(0)
#define IO_RF3_SetAnalogMode()      do { ANSELFbits.ANSELF3 = 1; } while(0)
#define IO_RF3_SetDigitalMode()     do { ANSELFbits.ANSELF3 = 0; } while(0)

// get/set RF4 aliases
#define IO_RF4_TRIS                 TRISFbits.TRISF4
#define IO_RF4_LAT                  LATFbits.LATF4
#define IO_RF4_PORT                 PORTFbits.RF4
#define IO_RF4_WPU                  WPUFbits.WPUF4
#define IO_RF4_OD                   ODCONFbits.ODCF4
#define IO_RF4_ANS                  ANSELFbits.ANSELF4
#define IO_RF4_SetHigh()            do { LATFbits.LATF4 = 1; } while(0)
#define IO_RF4_SetLow()             do { LATFbits.LATF4 = 0; } while(0)
#define IO_RF4_Toggle()             do { LATFbits.LATF4 = ~LATFbits.LATF4; } while(0)
#define IO_RF4_GetValue()           PORTFbits.RF4
#define IO_RF4_SetDigitalInput()    do { TRISFbits.TRISF4 = 1; } while(0)
#define IO_RF4_SetDigitalOutput()   do { TRISFbits.TRISF4 = 0; } while(0)
#define IO_RF4_SetPullup()          do { WPUFbits.WPUF4 = 1; } while(0)
#define IO_RF4_ResetPullup()        do { WPUFbits.WPUF4 = 0; } while(0)
#define IO_RF4_SetPushPull()        do { ODCONFbits.ODCF4 = 0; } while(0)
#define IO_RF4_SetOpenDrain()       do { ODCONFbits.ODCF4 = 1; } while(0)
#define IO_RF4_SetAnalogMode()      do { ANSELFbits.ANSELF4 = 1; } while(0)
#define IO_RF4_SetDigitalMode()     do { ANSELFbits.ANSELF4 = 0; } while(0)

// get/set RF5 aliases
#define JDQ_1_TRIS                 TRISFbits.TRISF5
#define JDQ_1_LAT                  LATFbits.LATF5
#define JDQ_1_PORT                 PORTFbits.RF5
#define JDQ_1_WPU                  WPUFbits.WPUF5
#define JDQ_1_OD                   ODCONFbits.ODCF5
#define JDQ_1_ANS                  ANSELFbits.ANSELF5
#define JDQ_1_SetHigh()            do { LATFbits.LATF5 = 1; } while(0)
#define JDQ_1_SetLow()             do { LATFbits.LATF5 = 0; } while(0)
#define JDQ_1_Toggle()             do { LATFbits.LATF5 = ~LATFbits.LATF5; } while(0)
#define JDQ_1_GetValue()           PORTFbits.RF5
#define JDQ_1_SetDigitalInput()    do { TRISFbits.TRISF5 = 1; } while(0)
#define JDQ_1_SetDigitalOutput()   do { TRISFbits.TRISF5 = 0; } while(0)
#define JDQ_1_SetPullup()          do { WPUFbits.WPUF5 = 1; } while(0)
#define JDQ_1_ResetPullup()        do { WPUFbits.WPUF5 = 0; } while(0)
#define JDQ_1_SetPushPull()        do { ODCONFbits.ODCF5 = 0; } while(0)
#define JDQ_1_SetOpenDrain()       do { ODCONFbits.ODCF5 = 1; } while(0)
#define JDQ_1_SetAnalogMode()      do { ANSELFbits.ANSELF5 = 1; } while(0)
#define JDQ_1_SetDigitalMode()     do { ANSELFbits.ANSELF5 = 0; } while(0)

// get/set RF6 aliases
#define L6562_2_TRIS                 TRISFbits.TRISF6
#define L6562_2_LAT                  LATFbits.LATF6
#define L6562_2_PORT                 PORTFbits.RF6
#define L6562_2_WPU                  WPUFbits.WPUF6
#define L6562_2_OD                   ODCONFbits.ODCF6
#define L6562_2_ANS                  ANSELFbits.ANSELF6
#define L6562_2_SetHigh()            do { LATFbits.LATF6 = 1; } while(0)
#define L6562_2_SetLow()             do { LATFbits.LATF6 = 0; } while(0)
#define L6562_2_Toggle()             do { LATFbits.LATF6 = ~LATFbits.LATF6; } while(0)
#define L6562_2_GetValue()           PORTFbits.RF6
#define L6562_2_SetDigitalInput()    do { TRISFbits.TRISF6 = 1; } while(0)
#define L6562_2_SetDigitalOutput()   do { TRISFbits.TRISF6 = 0; } while(0)
#define L6562_2_SetPullup()          do { WPUFbits.WPUF6 = 1; } while(0)
#define L6562_2_ResetPullup()        do { WPUFbits.WPUF6 = 0; } while(0)
#define L6562_2_SetPushPull()        do { ODCONFbits.ODCF6 = 0; } while(0)
#define L6562_2_SetOpenDrain()       do { ODCONFbits.ODCF6 = 1; } while(0)
#define L6562_2_SetAnalogMode()      do { ANSELFbits.ANSELF6 = 1; } while(0)
#define L6562_2_SetDigitalMode()     do { ANSELFbits.ANSELF6 = 0; } while(0)

// get/set RF7 aliases
#define PFC_TRIS                 TRISFbits.TRISF7
#define PFC_LAT                  LATFbits.LATF7
#define PFC_PORT                 PORTFbits.RF7
#define PFC_WPU                  WPUFbits.WPUF7
#define PFC_OD                   ODCONFbits.ODCF7
#define PFC_ANS                  ANSELFbits.ANSELF7
#define PFC_SetHigh()            do { LATFbits.LATF7 = 1; } while(0)
#define PFC_SetLow()             do { LATFbits.LATF7 = 0; } while(0)
#define PFC_Toggle()             do { LATFbits.LATF7 = ~LATFbits.LATF7; } while(0)
#define PFC_GetValue()           PORTFbits.RF7
#define PFC_SetDigitalInput()    do { TRISFbits.TRISF7 = 1; } while(0)
#define PFC_SetDigitalOutput()   do { TRISFbits.TRISF7 = 0; } while(0)
#define PFC_SetPullup()          do { WPUFbits.WPUF7 = 1; } while(0)
#define PFC_ResetPullup()        do { WPUFbits.WPUF7 = 0; } while(0)
#define PFC_SetPushPull()        do { ODCONFbits.ODCF7 = 0; } while(0)
#define PFC_SetOpenDrain()       do { ODCONFbits.ODCF7 = 1; } while(0)
#define PFC_SetAnalogMode()      do { ANSELFbits.ANSELF7 = 1; } while(0)
#define PFC_SetDigitalMode()     do { ANSELFbits.ANSELF7 = 0; } while(0)

/**
 * @ingroup  pinsdriver
 * @brief GPIO and peripheral I/O initialization
 * @param none
 * @return none
 */
void PIN_MANAGER_Initialize (void);

/**
 * @ingroup  pinsdriver
 * @brief Interrupt on Change Handling routine
 * @param none
 * @return none
 */
void PIN_MANAGER_IOC(void);


#endif // PINS_H
/**
 End of File
*/