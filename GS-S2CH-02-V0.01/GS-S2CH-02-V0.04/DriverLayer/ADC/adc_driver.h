#ifndef _ADC_DR_H
#define _ADC_DR_H

#include "../../mcc_generated_files/system/system.h"


#define Input_voltage_ADC Input_V
#define TEMP_ADC tempature

#define Output1_voltage_ADC V_Out1
#define Output2_voltage_ADC V_Out2

#define OUT_CURRENT1 I_Out1
#define OUT_CURRENT2 I_Out2


uint16_t ADC_Result2(adc_channel_t channel);
uint16_t ADC_Read_AverageVal(adc_channel_t channel);

#endif 

