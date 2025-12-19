#ifndef _ADC_DR_H
#define _ADC_DR_H

#include "../../mcc_generated_files/system/system.h"


#define Input_voltage_ADC IN_INPUT_V
#define TEMP_ADC IN_Temp

#define Output1_voltage_ADC IN_CH1_V
#define Output2_voltage_ADC IN_CH2_V

#define OUT_CURRENT1 IN_CH1_I
#define OUT_CURRENT2 IN_CH2_I


uint16_t ADC_Result2(adc_channel_t channel);
uint16_t ADC_Read_AverageVal(adc_channel_t channel);

#endif 

