#include "pwm_driver.h"



void PWM_Set_Direct(PWM_Channel_t channel,uint16_t duty_cycle)
{
    
     switch (channel) {
        case PWM_CHANNEL_1:
                     PWM2_16BIT_SetSlice1Output1DutyCycleRegister(duty_cycle);
                     PWM2_16BIT_LoadBufferRegisters();
            break;
        case PWM_CHANNEL_2:
                    PWM3_16BIT_SetSlice1Output1DutyCycleRegister(duty_cycle);    // 设置PWM占空比
                    PWM3_16BIT_LoadBufferRegisters();                
            break;
        case PWM_CHANNEL_3:         
                            // 加载新的PWM配置
            break;
        case PWM_CHANNEL_4:

            break;
            
        default:
            // 错误处理
            break;
    }
               
}


void PWM_Off_CHANNEL(PWM_Channel_t channel)
{
    if(channel==1)
    {
        PWM2_16BIT_SetSlice1Output1DutyCycleRegister(0);  
        PWM2_16BIT_LoadBufferRegisters();//加载 PWM 寄存器
    }
    
    else if(channel==2)
    {    
        PWM3_16BIT_SetSlice1Output1DutyCycleRegister(0);  
        PWM3_16BIT_LoadBufferRegisters();            
    }
    else if(channel==2)
    {    
                 
    }
           
    else if(channel==2)
    {    
                
    }
    else if(channel==5)
    {
        PWM2_16BIT_SetSlice1Output1DutyCycleRegister(0);  
        PWM2_16BIT_LoadBufferRegisters();//加载 PWM 寄存器
        PWM3_16BIT_SetSlice1Output1DutyCycleRegister(0);  
        PWM3_16BIT_LoadBufferRegisters();            
    }
           
}





