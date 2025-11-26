/**
  ADCC Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    adcc.h

  @Summary
    This is the generated header file for the ADCC driver using MPLAB(c) Code Configurator

  @Description
    This header file provides APIs for driver for ADCC.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 4.15.1
        Device            :  PIC16F18854
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.40
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#ifndef _ADCC_H
#define _ADCC_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: Data Types Definitions
*/

/**
 *  result size of an A/D conversion
 */

typedef uint16_t adc_result_t;

/** ADC Channel Definition

 @Summary
   Defines the channels available for conversion.

 @Description
   This routine defines the channels that are available for the module to use.

 Remarks:
   None
 */

typedef enum
{
    channel_Iout =  0x0D,
    channel_Temp =  0x15,
    channel_Vin =   0x02,
    channel_Iout2 = 0x04,
    channel_Vout =0x03,
    channel_Vout2 =0x10,
} adcc_channel_t;

/**
  Section: ADC Module APIs
*/

/**
  @Summary
    Initializes the ADCC

  @Description
    This routine initializes the Initializes the ADCC.
    This routine must be called before any other ADCC routine is called.
    This routine should only be called once during system initialization.

  @Preconditions
    None

  @Param
    None

  @Returns
    None

  @Comment
    

  @Example
    <code>
    uint16_t convertedValue;    

    ADCC_Initialize();
    convertedValue = ADCC_GetSingleConversion(AN1_Channel);
    </code>
*/
void ADCC_Initialize(void);


/**
  @Summary
    Returns the ADCC conversion value
    also allows selection of a channel for conversion.

  @Description
    This routine is used to select desired channel for conversion
    and to get the analog to digital converted value after a single conversion.

  @Preconditions
    ADCC_Initialize() and ADCC_DisableContinuousConversion() functions should have been called before calling this function.

  @Returns
    Returns the converted value.

  @Param
    Pass in required channel number.
    "For available channel refer to enum under adcc.h file"

  @Example
    <code>
    uint16_t convertedValue;

    ADCC_Initialize();
    ADCC_DisableContinuousConversion();
	
    convertedValue = ADCC_GetSingleConversion(AN1_Channel);
    </code>
*/
adc_result_t ADCC_GetSingleConversion(adcc_channel_t channel);





#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif	//_ADCC_H
/**
 End of File
*/

