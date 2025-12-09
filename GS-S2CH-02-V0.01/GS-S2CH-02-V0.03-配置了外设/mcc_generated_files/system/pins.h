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

// get/set RA3 aliases
#define TEMP_TRIS                 TRISAbits.TRISA3
#define TEMP_LAT                  LATAbits.LATA3
#define TEMP_PORT                 PORTAbits.RA3
#define TEMP_WPU                  WPUAbits.WPUA3
#define TEMP_OD                   ODCONAbits.ODCA3
#define TEMP_ANS                  ANSELAbits.ANSELA3
#define TEMP_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define TEMP_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define TEMP_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define TEMP_GetValue()           PORTAbits.RA3
#define TEMP_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define TEMP_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define TEMP_SetPullup()          do { WPUAbits.WPUA3 = 1; } while(0)
#define TEMP_ResetPullup()        do { WPUAbits.WPUA3 = 0; } while(0)
#define TEMP_SetPushPull()        do { ODCONAbits.ODCA3 = 0; } while(0)
#define TEMP_SetOpenDrain()       do { ODCONAbits.ODCA3 = 1; } while(0)
#define TEMP_SetAnalogMode()      do { ANSELAbits.ANSELA3 = 1; } while(0)
#define TEMP_SetDigitalMode()     do { ANSELAbits.ANSELA3 = 0; } while(0)

// get/set RA4 aliases
#define IN_CH2_I_TRIS                 TRISAbits.TRISA4
#define IN_CH2_I_LAT                  LATAbits.LATA4
#define IN_CH2_I_PORT                 PORTAbits.RA4
#define IN_CH2_I_WPU                  WPUAbits.WPUA4
#define IN_CH2_I_OD                   ODCONAbits.ODCA4
#define IN_CH2_I_ANS                  ANSELAbits.ANSELA4
#define IN_CH2_I_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define IN_CH2_I_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define IN_CH2_I_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define IN_CH2_I_GetValue()           PORTAbits.RA4
#define IN_CH2_I_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define IN_CH2_I_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define IN_CH2_I_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define IN_CH2_I_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define IN_CH2_I_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define IN_CH2_I_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define IN_CH2_I_SetAnalogMode()      do { ANSELAbits.ANSELA4 = 1; } while(0)
#define IN_CH2_I_SetDigitalMode()     do { ANSELAbits.ANSELA4 = 0; } while(0)

// get/set RA5 aliases
#define RELAY_CH2_TRIS                 TRISAbits.TRISA5
#define RELAY_CH2_LAT                  LATAbits.LATA5
#define RELAY_CH2_PORT                 PORTAbits.RA5
#define RELAY_CH2_WPU                  WPUAbits.WPUA5
#define RELAY_CH2_OD                   ODCONAbits.ODCA5
#define RELAY_CH2_ANS                  ANSELAbits.ANSELA5
#define RELAY_CH2_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RELAY_CH2_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RELAY_CH2_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RELAY_CH2_GetValue()           PORTAbits.RA5
#define RELAY_CH2_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RELAY_CH2_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RELAY_CH2_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define RELAY_CH2_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define RELAY_CH2_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define RELAY_CH2_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define RELAY_CH2_SetAnalogMode()      do { ANSELAbits.ANSELA5 = 1; } while(0)
#define RELAY_CH2_SetDigitalMode()     do { ANSELAbits.ANSELA5 = 0; } while(0)

// get/set RB4 aliases
#define NFC_SCL_TRIS                 TRISBbits.TRISB4
#define NFC_SCL_LAT                  LATBbits.LATB4
#define NFC_SCL_PORT                 PORTBbits.RB4
#define NFC_SCL_WPU                  WPUBbits.WPUB4
#define NFC_SCL_OD                   ODCONBbits.ODCB4
#define NFC_SCL_ANS                  ANSELBbits.ANSELB4
#define NFC_SCL_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define NFC_SCL_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define NFC_SCL_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define NFC_SCL_GetValue()           PORTBbits.RB4
#define NFC_SCL_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define NFC_SCL_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define NFC_SCL_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define NFC_SCL_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define NFC_SCL_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define NFC_SCL_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define NFC_SCL_SetAnalogMode()      do { ANSELBbits.ANSELB4 = 1; } while(0)
#define NFC_SCL_SetDigitalMode()     do { ANSELBbits.ANSELB4 = 0; } while(0)

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
#define Port_short_TRIS                 TRISBbits.TRISB7
#define Port_short_LAT                  LATBbits.LATB7
#define Port_short_PORT                 PORTBbits.RB7
#define Port_short_WPU                  WPUBbits.WPUB7
#define Port_short_OD                   ODCONBbits.ODCB7
#define Port_short_ANS                  ANSELBbits.ANSELB7
#define Port_short_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define Port_short_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define Port_short_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define Port_short_GetValue()           PORTBbits.RB7
#define Port_short_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define Port_short_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define Port_short_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define Port_short_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define Port_short_SetPushPull()        do { ODCONBbits.ODCB7 = 0; } while(0)
#define Port_short_SetOpenDrain()       do { ODCONBbits.ODCB7 = 1; } while(0)
#define Port_short_SetAnalogMode()      do { ANSELBbits.ANSELB7 = 1; } while(0)
#define Port_short_SetDigitalMode()     do { ANSELBbits.ANSELB7 = 0; } while(0)

// get/set RC1 aliases
#define IN_CH2_V_TRIS                 TRISCbits.TRISC1
#define IN_CH2_V_LAT                  LATCbits.LATC1
#define IN_CH2_V_PORT                 PORTCbits.RC1
#define IN_CH2_V_WPU                  WPUCbits.WPUC1
#define IN_CH2_V_OD                   ODCONCbits.ODCC1
#define IN_CH2_V_ANS                  ANSELCbits.ANSELC1
#define IN_CH2_V_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define IN_CH2_V_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define IN_CH2_V_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define IN_CH2_V_GetValue()           PORTCbits.RC1
#define IN_CH2_V_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define IN_CH2_V_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define IN_CH2_V_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define IN_CH2_V_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define IN_CH2_V_SetPushPull()        do { ODCONCbits.ODCC1 = 0; } while(0)
#define IN_CH2_V_SetOpenDrain()       do { ODCONCbits.ODCC1 = 1; } while(0)
#define IN_CH2_V_SetAnalogMode()      do { ANSELCbits.ANSELC1 = 1; } while(0)
#define IN_CH2_V_SetDigitalMode()     do { ANSELCbits.ANSELC1 = 0; } while(0)

// get/set RC4 aliases
#define RS485_TX_TRIS                 TRISCbits.TRISC4
#define RS485_TX_LAT                  LATCbits.LATC4
#define RS485_TX_PORT                 PORTCbits.RC4
#define RS485_TX_WPU                  WPUCbits.WPUC4
#define RS485_TX_OD                   ODCONCbits.ODCC4
#define RS485_TX_ANS                  ANSELCbits.ANSELC4
#define RS485_TX_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define RS485_TX_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define RS485_TX_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RS485_TX_GetValue()           PORTCbits.RC4
#define RS485_TX_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define RS485_TX_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define RS485_TX_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define RS485_TX_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define RS485_TX_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define RS485_TX_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define RS485_TX_SetAnalogMode()      do { ANSELCbits.ANSELC4 = 1; } while(0)
#define RS485_TX_SetDigitalMode()     do { ANSELCbits.ANSELC4 = 0; } while(0)

// get/set RC5 aliases
#define RS485_RX_TRIS                 TRISCbits.TRISC5
#define RS485_RX_LAT                  LATCbits.LATC5
#define RS485_RX_PORT                 PORTCbits.RC5
#define RS485_RX_WPU                  WPUCbits.WPUC5
#define RS485_RX_OD                   ODCONCbits.ODCC5
#define RS485_RX_ANS                  ANSELCbits.ANSELC5
#define RS485_RX_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define RS485_RX_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define RS485_RX_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define RS485_RX_GetValue()           PORTCbits.RC5
#define RS485_RX_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define RS485_RX_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define RS485_RX_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define RS485_RX_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define RS485_RX_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define RS485_RX_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define RS485_RX_SetAnalogMode()      do { ANSELCbits.ANSELC5 = 1; } while(0)
#define RS485_RX_SetDigitalMode()     do { ANSELCbits.ANSELC5 = 0; } while(0)

// get/set RC6 aliases
#define IN_CH1_I_TRIS                 TRISCbits.TRISC6
#define IN_CH1_I_LAT                  LATCbits.LATC6
#define IN_CH1_I_PORT                 PORTCbits.RC6
#define IN_CH1_I_WPU                  WPUCbits.WPUC6
#define IN_CH1_I_OD                   ODCONCbits.ODCC6
#define IN_CH1_I_ANS                  ANSELCbits.ANSELC6
#define IN_CH1_I_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define IN_CH1_I_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define IN_CH1_I_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define IN_CH1_I_GetValue()           PORTCbits.RC6
#define IN_CH1_I_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define IN_CH1_I_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define IN_CH1_I_SetPullup()          do { WPUCbits.WPUC6 = 1; } while(0)
#define IN_CH1_I_ResetPullup()        do { WPUCbits.WPUC6 = 0; } while(0)
#define IN_CH1_I_SetPushPull()        do { ODCONCbits.ODCC6 = 0; } while(0)
#define IN_CH1_I_SetOpenDrain()       do { ODCONCbits.ODCC6 = 1; } while(0)
#define IN_CH1_I_SetAnalogMode()      do { ANSELCbits.ANSELC6 = 1; } while(0)
#define IN_CH1_I_SetDigitalMode()     do { ANSELCbits.ANSELC6 = 0; } while(0)

// get/set RC7 aliases
#define RELAY_CH1_TRIS                 TRISCbits.TRISC7
#define RELAY_CH1_LAT                  LATCbits.LATC7
#define RELAY_CH1_PORT                 PORTCbits.RC7
#define RELAY_CH1_WPU                  WPUCbits.WPUC7
#define RELAY_CH1_OD                   ODCONCbits.ODCC7
#define RELAY_CH1_ANS                  ANSELCbits.ANSELC7
#define RELAY_CH1_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RELAY_CH1_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RELAY_CH1_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RELAY_CH1_GetValue()           PORTCbits.RC7
#define RELAY_CH1_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RELAY_CH1_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RELAY_CH1_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define RELAY_CH1_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define RELAY_CH1_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define RELAY_CH1_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define RELAY_CH1_SetAnalogMode()      do { ANSELCbits.ANSELC7 = 1; } while(0)
#define RELAY_CH1_SetDigitalMode()     do { ANSELCbits.ANSELC7 = 0; } while(0)

// get/set RD0 aliases
#define PWM1_TRIS                 TRISDbits.TRISD0
#define PWM1_LAT                  LATDbits.LATD0
#define PWM1_PORT                 PORTDbits.RD0
#define PWM1_WPU                  WPUDbits.WPUD0
#define PWM1_OD                   ODCONDbits.ODCD0
#define PWM1_ANS                  ANSELDbits.ANSELD0
#define PWM1_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define PWM1_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define PWM1_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define PWM1_GetValue()           PORTDbits.RD0
#define PWM1_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define PWM1_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define PWM1_SetPullup()          do { WPUDbits.WPUD0 = 1; } while(0)
#define PWM1_ResetPullup()        do { WPUDbits.WPUD0 = 0; } while(0)
#define PWM1_SetPushPull()        do { ODCONDbits.ODCD0 = 0; } while(0)
#define PWM1_SetOpenDrain()       do { ODCONDbits.ODCD0 = 1; } while(0)
#define PWM1_SetAnalogMode()      do { ANSELDbits.ANSELD0 = 1; } while(0)
#define PWM1_SetDigitalMode()     do { ANSELDbits.ANSELD0 = 0; } while(0)

// get/set RD1 aliases
#define LED_TRIS                 TRISDbits.TRISD1
#define LED_LAT                  LATDbits.LATD1
#define LED_PORT                 PORTDbits.RD1
#define LED_WPU                  WPUDbits.WPUD1
#define LED_OD                   ODCONDbits.ODCD1
#define LED_ANS                  ANSELDbits.ANSELD1
#define LED_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define LED_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define LED_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define LED_GetValue()           PORTDbits.RD1
#define LED_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define LED_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define LED_SetPullup()          do { WPUDbits.WPUD1 = 1; } while(0)
#define LED_ResetPullup()        do { WPUDbits.WPUD1 = 0; } while(0)
#define LED_SetPushPull()        do { ODCONDbits.ODCD1 = 0; } while(0)
#define LED_SetOpenDrain()       do { ODCONDbits.ODCD1 = 1; } while(0)
#define LED_SetAnalogMode()      do { ANSELDbits.ANSELD1 = 1; } while(0)
#define LED_SetDigitalMode()     do { ANSELDbits.ANSELD1 = 0; } while(0)

// get/set RD2 aliases
#define PWM2_TRIS                 TRISDbits.TRISD2
#define PWM2_LAT                  LATDbits.LATD2
#define PWM2_PORT                 PORTDbits.RD2
#define PWM2_WPU                  WPUDbits.WPUD2
#define PWM2_OD                   ODCONDbits.ODCD2
#define PWM2_ANS                  ANSELDbits.ANSELD2
#define PWM2_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define PWM2_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define PWM2_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define PWM2_GetValue()           PORTDbits.RD2
#define PWM2_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define PWM2_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define PWM2_SetPullup()          do { WPUDbits.WPUD2 = 1; } while(0)
#define PWM2_ResetPullup()        do { WPUDbits.WPUD2 = 0; } while(0)
#define PWM2_SetPushPull()        do { ODCONDbits.ODCD2 = 0; } while(0)
#define PWM2_SetOpenDrain()       do { ODCONDbits.ODCD2 = 1; } while(0)
#define PWM2_SetAnalogMode()      do { ANSELDbits.ANSELD2 = 1; } while(0)
#define PWM2_SetDigitalMode()     do { ANSELDbits.ANSELD2 = 0; } while(0)

// get/set RD3 aliases
#define RS485_EN_TRIS                 TRISDbits.TRISD3
#define RS485_EN_LAT                  LATDbits.LATD3
#define RS485_EN_PORT                 PORTDbits.RD3
#define RS485_EN_WPU                  WPUDbits.WPUD3
#define RS485_EN_OD                   ODCONDbits.ODCD3
#define RS485_EN_ANS                  ANSELDbits.ANSELD3
#define RS485_EN_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define RS485_EN_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define RS485_EN_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define RS485_EN_GetValue()           PORTDbits.RD3
#define RS485_EN_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define RS485_EN_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define RS485_EN_SetPullup()          do { WPUDbits.WPUD3 = 1; } while(0)
#define RS485_EN_ResetPullup()        do { WPUDbits.WPUD3 = 0; } while(0)
#define RS485_EN_SetPushPull()        do { ODCONDbits.ODCD3 = 0; } while(0)
#define RS485_EN_SetOpenDrain()       do { ODCONDbits.ODCD3 = 1; } while(0)
#define RS485_EN_SetAnalogMode()      do { ANSELDbits.ANSELD3 = 1; } while(0)
#define RS485_EN_SetDigitalMode()     do { ANSELDbits.ANSELD3 = 0; } while(0)

// get/set RD4 aliases
#define IN_CH1_V_TRIS                 TRISDbits.TRISD4
#define IN_CH1_V_LAT                  LATDbits.LATD4
#define IN_CH1_V_PORT                 PORTDbits.RD4
#define IN_CH1_V_WPU                  WPUDbits.WPUD4
#define IN_CH1_V_OD                   ODCONDbits.ODCD4
#define IN_CH1_V_ANS                  ANSELDbits.ANSELD4
#define IN_CH1_V_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define IN_CH1_V_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define IN_CH1_V_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define IN_CH1_V_GetValue()           PORTDbits.RD4
#define IN_CH1_V_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define IN_CH1_V_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define IN_CH1_V_SetPullup()          do { WPUDbits.WPUD4 = 1; } while(0)
#define IN_CH1_V_ResetPullup()        do { WPUDbits.WPUD4 = 0; } while(0)
#define IN_CH1_V_SetPushPull()        do { ODCONDbits.ODCD4 = 0; } while(0)
#define IN_CH1_V_SetOpenDrain()       do { ODCONDbits.ODCD4 = 1; } while(0)
#define IN_CH1_V_SetAnalogMode()      do { ANSELDbits.ANSELD4 = 1; } while(0)
#define IN_CH1_V_SetDigitalMode()     do { ANSELDbits.ANSELD4 = 0; } while(0)

// get/set RD5 aliases
#define L6562_CH1_TRIS                 TRISDbits.TRISD5
#define L6562_CH1_LAT                  LATDbits.LATD5
#define L6562_CH1_PORT                 PORTDbits.RD5
#define L6562_CH1_WPU                  WPUDbits.WPUD5
#define L6562_CH1_OD                   ODCONDbits.ODCD5
#define L6562_CH1_ANS                  ANSELDbits.ANSELD5
#define L6562_CH1_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define L6562_CH1_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define L6562_CH1_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define L6562_CH1_GetValue()           PORTDbits.RD5
#define L6562_CH1_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define L6562_CH1_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define L6562_CH1_SetPullup()          do { WPUDbits.WPUD5 = 1; } while(0)
#define L6562_CH1_ResetPullup()        do { WPUDbits.WPUD5 = 0; } while(0)
#define L6562_CH1_SetPushPull()        do { ODCONDbits.ODCD5 = 0; } while(0)
#define L6562_CH1_SetOpenDrain()       do { ODCONDbits.ODCD5 = 1; } while(0)
#define L6562_CH1_SetAnalogMode()      do { ANSELDbits.ANSELD5 = 1; } while(0)
#define L6562_CH1_SetDigitalMode()     do { ANSELDbits.ANSELD5 = 0; } while(0)

// get/set RF0 aliases
#define L6562_CH2_TRIS                 TRISFbits.TRISF0
#define L6562_CH2_LAT                  LATFbits.LATF0
#define L6562_CH2_PORT                 PORTFbits.RF0
#define L6562_CH2_WPU                  WPUFbits.WPUF0
#define L6562_CH2_OD                   ODCONFbits.ODCF0
#define L6562_CH2_ANS                  ANSELFbits.ANSELF0
#define L6562_CH2_SetHigh()            do { LATFbits.LATF0 = 1; } while(0)
#define L6562_CH2_SetLow()             do { LATFbits.LATF0 = 0; } while(0)
#define L6562_CH2_Toggle()             do { LATFbits.LATF0 = ~LATFbits.LATF0; } while(0)
#define L6562_CH2_GetValue()           PORTFbits.RF0
#define L6562_CH2_SetDigitalInput()    do { TRISFbits.TRISF0 = 1; } while(0)
#define L6562_CH2_SetDigitalOutput()   do { TRISFbits.TRISF0 = 0; } while(0)
#define L6562_CH2_SetPullup()          do { WPUFbits.WPUF0 = 1; } while(0)
#define L6562_CH2_ResetPullup()        do { WPUFbits.WPUF0 = 0; } while(0)
#define L6562_CH2_SetPushPull()        do { ODCONFbits.ODCF0 = 0; } while(0)
#define L6562_CH2_SetOpenDrain()       do { ODCONFbits.ODCF0 = 1; } while(0)
#define L6562_CH2_SetAnalogMode()      do { ANSELFbits.ANSELF0 = 1; } while(0)
#define L6562_CH2_SetDigitalMode()     do { ANSELFbits.ANSELF0 = 0; } while(0)

// get/set RF4 aliases
#define IN_INPUT_V_TRIS                 TRISFbits.TRISF4
#define IN_INPUT_V_LAT                  LATFbits.LATF4
#define IN_INPUT_V_PORT                 PORTFbits.RF4
#define IN_INPUT_V_WPU                  WPUFbits.WPUF4
#define IN_INPUT_V_OD                   ODCONFbits.ODCF4
#define IN_INPUT_V_ANS                  ANSELFbits.ANSELF4
#define IN_INPUT_V_SetHigh()            do { LATFbits.LATF4 = 1; } while(0)
#define IN_INPUT_V_SetLow()             do { LATFbits.LATF4 = 0; } while(0)
#define IN_INPUT_V_Toggle()             do { LATFbits.LATF4 = ~LATFbits.LATF4; } while(0)
#define IN_INPUT_V_GetValue()           PORTFbits.RF4
#define IN_INPUT_V_SetDigitalInput()    do { TRISFbits.TRISF4 = 1; } while(0)
#define IN_INPUT_V_SetDigitalOutput()   do { TRISFbits.TRISF4 = 0; } while(0)
#define IN_INPUT_V_SetPullup()          do { WPUFbits.WPUF4 = 1; } while(0)
#define IN_INPUT_V_ResetPullup()        do { WPUFbits.WPUF4 = 0; } while(0)
#define IN_INPUT_V_SetPushPull()        do { ODCONFbits.ODCF4 = 0; } while(0)
#define IN_INPUT_V_SetOpenDrain()       do { ODCONFbits.ODCF4 = 1; } while(0)
#define IN_INPUT_V_SetAnalogMode()      do { ANSELFbits.ANSELF4 = 1; } while(0)
#define IN_INPUT_V_SetDigitalMode()     do { ANSELFbits.ANSELF4 = 0; } while(0)

// get/set RF5 aliases
#define APFC_TRIS                 TRISFbits.TRISF5
#define APFC_LAT                  LATFbits.LATF5
#define APFC_PORT                 PORTFbits.RF5
#define APFC_WPU                  WPUFbits.WPUF5
#define APFC_OD                   ODCONFbits.ODCF5
#define APFC_ANS                  ANSELFbits.ANSELF5
#define APFC_SetHigh()            do { LATFbits.LATF5 = 1; } while(0)
#define APFC_SetLow()             do { LATFbits.LATF5 = 0; } while(0)
#define APFC_Toggle()             do { LATFbits.LATF5 = ~LATFbits.LATF5; } while(0)
#define APFC_GetValue()           PORTFbits.RF5
#define APFC_SetDigitalInput()    do { TRISFbits.TRISF5 = 1; } while(0)
#define APFC_SetDigitalOutput()   do { TRISFbits.TRISF5 = 0; } while(0)
#define APFC_SetPullup()          do { WPUFbits.WPUF5 = 1; } while(0)
#define APFC_ResetPullup()        do { WPUFbits.WPUF5 = 0; } while(0)
#define APFC_SetPushPull()        do { ODCONFbits.ODCF5 = 0; } while(0)
#define APFC_SetOpenDrain()       do { ODCONFbits.ODCF5 = 1; } while(0)
#define APFC_SetAnalogMode()      do { ANSELFbits.ANSELF5 = 1; } while(0)
#define APFC_SetDigitalMode()     do { ANSELFbits.ANSELF5 = 0; } while(0)

// get/set RF6 aliases
#define NFC_GPOn_TRIS                 TRISFbits.TRISF6
#define NFC_GPOn_LAT                  LATFbits.LATF6
#define NFC_GPOn_PORT                 PORTFbits.RF6
#define NFC_GPOn_WPU                  WPUFbits.WPUF6
#define NFC_GPOn_OD                   ODCONFbits.ODCF6
#define NFC_GPOn_ANS                  ANSELFbits.ANSELF6
#define NFC_GPOn_SetHigh()            do { LATFbits.LATF6 = 1; } while(0)
#define NFC_GPOn_SetLow()             do { LATFbits.LATF6 = 0; } while(0)
#define NFC_GPOn_Toggle()             do { LATFbits.LATF6 = ~LATFbits.LATF6; } while(0)
#define NFC_GPOn_GetValue()           PORTFbits.RF6
#define NFC_GPOn_SetDigitalInput()    do { TRISFbits.TRISF6 = 1; } while(0)
#define NFC_GPOn_SetDigitalOutput()   do { TRISFbits.TRISF6 = 0; } while(0)
#define NFC_GPOn_SetPullup()          do { WPUFbits.WPUF6 = 1; } while(0)
#define NFC_GPOn_ResetPullup()        do { WPUFbits.WPUF6 = 0; } while(0)
#define NFC_GPOn_SetPushPull()        do { ODCONFbits.ODCF6 = 0; } while(0)
#define NFC_GPOn_SetOpenDrain()       do { ODCONFbits.ODCF6 = 1; } while(0)
#define NFC_GPOn_SetAnalogMode()      do { ANSELFbits.ANSELF6 = 1; } while(0)
#define NFC_GPOn_SetDigitalMode()     do { ANSELFbits.ANSELF6 = 0; } while(0)

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