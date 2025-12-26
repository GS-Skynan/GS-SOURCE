#ifndef OTHER_H
#define OTHER_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void MCU1_to_MCU2(uint8_t * Data);
void ConvertToDecimalString(uint16_t data, char* str);
void Receive_Data_From_MCU2(uint8_t *buffer, uint16_t length);
void split16BitData(uint16_t data, uint8_t *highByte, uint8_t *lowByte);
extern void float_to_string(float number, char *str, int decimal_places);
void double_to_string(double value, char *str, size_t str_size, int precision);
void MCU_To_RS485(unsigned char flag, unsigned int number, unsigned int length, char *str, unsigned int decimal_places);



#endif 

