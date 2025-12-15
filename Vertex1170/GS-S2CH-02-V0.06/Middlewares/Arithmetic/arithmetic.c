#include "arithmetic.h"
#include "ticktime.h"

static Regulator pwm_regulator1;
static Regulator pwm_regulator2;



// 初始化调节器
static void regulator_init(Regulator *reg, float initial_value, uint32_t default_transition)
{
    if (reg == NULL) return;
      
    reg->current_value = initial_value;
    reg->start_value = initial_value;
    reg->target_value = initial_value;
    reg->start_time = 0;
    reg->transition_time = default_transition;
}

// 清除调节器状态
static void regulator_clear(Regulator *reg)
{
    if (reg == NULL) return;
    
    reg->current_value = 0;
    reg->start_value = 0;
    reg->target_value = 0;
    reg->start_time = 0;
    reg->transition_time = 1000; // 默认值
}

// 主调节函数
static float regulator_update(Regulator *reg, float new_target, uint32_t time_ms)
{
    if (reg == NULL) return 0;   
    
    uint32_t current_time = get_systemtick_time();
    
    if (new_target != reg->target_value)
    {
        reg->target_value = new_target;
        
        if (new_target > reg->current_value)
        {
            // 正向过渡
            reg->start_value = reg->current_value;
            reg->start_time = current_time;
            reg->transition_time = time_ms;
        }
        else
        {
            // 负向立即完成
            reg->start_value = new_target;
            reg->current_value = new_target;
            reg->start_time = current_time;
            reg->transition_time = 0;
        }
    }
    
    if (reg->transition_time == 0)
    {
        return reg->current_value;
    }
    
    uint32_t elapsed = get_elapsed_since(reg->start_time);
    
    if (elapsed >= reg->transition_time)
    {
        reg->current_value = reg->target_value;
        return reg->current_value;
    }
    
    float progress = (float)elapsed / reg->transition_time;
    reg->current_value = reg->start_value + 
                        (reg->target_value - reg->start_value) * progress;
    
    return reg->current_value;
}


void init_all_pwm_regulators(void)
{
    regulator_init(&pwm_regulator1, 0.0f, 3000); // 第一路：默认3秒过渡
    regulator_init(&pwm_regulator2, 0.0f, 1000); // 第二路：默认2秒过渡
}


float update_pwm_output_ch1(float up_pwm)
{
    return regulator_update(&pwm_regulator1, up_pwm, 3000);
}

float update_pwm_output_ch2(float up_pwm)
{
    return regulator_update(&pwm_regulator2, up_pwm, 100);
}

void RegulatorClear(uint8_t ch)
{
    if(ch==1)
    {
        regulator_clear(&pwm_regulator1);
    }
    else if(ch==2)
    {
        regulator_clear(&pwm_regulator2);
    }
}