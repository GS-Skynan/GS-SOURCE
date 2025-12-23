#ifndef _ALGORITHM_H
#define _ALGORITHM_H

#include "../../mcc_generated_files/system/system.h"


// 定义调节器结构体
typedef struct {
    float current_value;
    float start_value;
    float target_value;
    uint32_t start_time;
    uint32_t transition_time;
} Regulator;


void init_all_pwm_regulators(void);
float update_pwm_output_ch1(float up_pwm);
float update_pwm_output_ch2(float up_pwm);
void RegulatorClear(uint8_t ch);

#endif 