#include "../../../DriverService/CurrentRead_APP/scl/readcurrent.h"
#include "../../../DriverLayer/PWM/scl/pwm_driver.h"
#include "../../../DriverService/PwmRegulation_APP/scl/pwm_change.h"
#include "../../../DriverService/Ticktime_APP/scl/ticktime.h"

#include <math.h>

int PWM_Pre_data_1;    //PWM先前值
int PWM_Pre_data_2;   
int Pwm_flag_1,Pwm_flag_2=0;

int target_duty_cycle_Out1,target_duty_cycle_Out2;
uint8_t return_flag1 =0,return_flag2=0;



/**
 * 动态延时函数（毫秒级）
 * @param delay_time_ms 延时时间（毫秒）
 */
void dynamic_delay_ms(unsigned int delay_time_ms) 
{
    for (unsigned int i = 0; i < delay_time_ms; i++) {
        __delay_ms(1);  // 每次延时 1ms
    }
}


void PID_Init(PIDController *pid, unsigned char flag, float Kp, float Ki, float Kd, float output_max, float output_min, uint16_t PWM_duty_cycle) 
{
    pid->Channel_Flag = flag;             // 设置 PID 控制器的通道标志（1 或 2）
    pid->Kp = Kp;                         // 设置比例增益（Kp）
    pid->Ki = Ki;                         // 设置积分增益（Ki）
    pid->Kd = Kd;                         // 设置微分增益（Kd）
    pid->output_max = output_max;         // 设置 PID 输出上限
    pid->output_min = output_min;         // 设置 PID 输出下限
    // 设置积分项限制（根据经验值，通常为输出范围的20-50%）
    // 对于3200的范围，我们设置为800（25%）
    pid->integral_max = 800.0f / Ki;      // 转换为积分项值
    pid->integral_min = -800.0f / Ki;     // 负向限制
    pid->integral = 0.0f;                 // 初始化积分项为 0
    pid->prev_error = 0.0f;               // 初始化上一次误差为 0
    pid->PWM_duty_cycle = PWM_duty_cycle; // 设置初始 PWM 占空比
}

/*初始化PID参数*/
void PID_Init_Parameters(void)
{
    // 初始化两路 PID 控制器
    PID_Init(&pid1,1, 0.3f, 0.0152f, 0.01f, 3200.0f, 0.0f,0);     // 第一路 PID 参数
    PID_Init(&pid2,2, 0.8f, 0.000012f, 0.001f, 3200.0f, 0.0f,0);  // 第二路 PID 参数
}


/*PID计算函数
 *PIDController *pid：结构体  setpoint：目标值  measured_value：测量值（采集电压与电流成绩）
 * 返回值：PWM参数值（占空比 = output/3200）
 * wanning:没有抗积分饱和
 */

uint16_t PID_Compute(PIDController *pid, float setpoint, float measured_value) 
{
    float error = setpoint - measured_value; 
    // 比例项
    float proportional = pid->Kp * error;
    // 在积分计算前检查 error 是否在合理范围
    if (fabsf(error) < 50.0f)
    {  // 仅当误差较小时才积分
        pid->integral += error;
    // 积分限幅
        if (pid->integral > pid->integral_max) pid->integral = pid->integral_max;
        if (pid->integral < pid->integral_min) pid->integral = pid->integral_min;
    } 
    else
    {
        pid->integral = 0;  // 误差过大时清零积分
    }
//    // 积分项（带抗积分饱和）
//    pid->integral += error;
//    
//    // 积分项限幅（防止积分饱和）
//    if(pid->integral > pid->integral_max) {
//        pid->integral = pid->integral_max;
//    } else if(pid->integral < pid->integral_min) {
//        pid->integral = pid->integral_min;
//    }
    
    float integral = pid->Ki * pid->integral;
    // 微分项
    float derivative = pid->Kd * (error - pid->prev_error);
    pid->prev_error = error;
    // 计算输出
    float output = proportional + integral + derivative;
    
    if(pid->Channel_Flag==1)
    {
        target_duty_cycle_Out1 += (int16_t)(output + (output >= 0 ? 0.5f : -0.5f));
        target_duty_cycle_Out1 = (uint16_t)fmaxf(0, fminf(target_duty_cycle_Out1, 3200));
        return target_duty_cycle_Out1;  
    }  
    
    if(pid->Channel_Flag==2)
    {
         target_duty_cycle_Out2 += (int16_t)(output + (output >= 0 ? 0.5f : -0.5f)); 
         target_duty_cycle_Out2 = (uint16_t)fmaxf(0, fminf(target_duty_cycle_Out2, 3200));
         return target_duty_cycle_Out2;  
    }
          
          
//    switch (pid->Channel_Flag) {
//        case 1:
//            target_duty_cycle_Out1 += (int16_t)(output + (output >= 0 ? 0.5f : -0.5f));
//            target_duty_cycle_Out1 = (uint16_t)fmaxf(0, fminf(target_duty_cycle_Out1, 3200));
//            if(target_duty_cycle_Out1 == 3200)return_flag1 = 1;
//            pid->PWM_duty_cycle = target_duty_cycle_Out1;           
//            PWM_Change_1(UART_REG1,time11);            //time11是涨功率时间，主通道有涨功率时间设置功能
//            break;
//        case 2:
//            target_duty_cycle_Out2 += (int16_t)(output + (output >= 0 ? 0.5f : -0.5f));
//            //确保不超限
//            target_duty_cycle_Out2 = (uint16_t)fmaxf(0, fminf(target_duty_cycle_Out2, 3200));
//            pid->PWM_duty_cycle = target_duty_cycle_Out2;      
//            PWM_Change_2(UART_REG2,1);
//    }   
    
      
}




/**
 * 通道1 PWM渐变控制函数
 * @param data 控制命令（用于条件判断）
 * @param Change_Time 每次PWM调整的延时时间（毫秒）
 */
void PWM_Change_1(unsigned char data, unsigned int Change_Time)
{
    unsigned int i;
    
    // 仅当PWM标志允许修改且命令匹配时执行
    if (Pwm_flag_1 == 0 && UART_REG1 == data) {
        // 根据当前占空比和目标占空比调整PWM
        if (PWM_Pre_data_1 < pid1.PWM_duty_cycle) {
            // 增加占空比（平滑上升）
            for (i = PWM_Pre_data_1; i <= pid1.PWM_duty_cycle; i += 1) {              
                PWM_Set_Direct(PWM_CHANNEL_1,i);
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }         
        } else if (PWM_Pre_data_1 > pid1.PWM_duty_cycle) {
            // 减少占空比（平滑下降）
            for (i = PWM_Pre_data_1; i >= pid1.PWM_duty_cycle; i -= 1) {
                PWM_Set_Direct(PWM_CHANNEL_1,i);
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }
        } else {
            // 当前占空比等于目标值，直接设置
            PWM_Set_Direct(PWM_CHANNEL_1,PWM_Pre_data_1);
        }
        
        // 更新前一占空比值，记录当前状态
        PWM_Pre_data_1 = pid1.PWM_duty_cycle;
    }
}

/**
 * 通道2 PWM渐变控制函数
 * @param data 控制命令（用于条件判断）
 * @param Change_Time 每次PWM调整的延时时间（毫秒）
 */
void PWM_Change_2(unsigned char data, unsigned int Change_Time)
{
    // 目标占空比计算    
    if (Pwm_flag_2 == 0 && UART_REG2 == data) { // 检查PWM标志是否允许修改
        if (PWM_Pre_data_2 < pid2.PWM_duty_cycle) { // 如果目标值比当前值大
            // 增加占空比（平滑上升）
            for (float j = PWM_Pre_data_2; j <= pid2.PWM_duty_cycle; j += 1) {
             PWM_Set_Direct(PWM_CHANNEL_2,j);
             dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }                
        }          
        else if (PWM_Pre_data_2 > pid2.PWM_duty_cycle) { // 如果目标值比当前值小
            // 减小占空比（平滑下降）
            for (float j = PWM_Pre_data_2; j >= pid2.PWM_duty_cycle; j -= 1) {
                 PWM_Set_Direct(PWM_CHANNEL_2,j);               // 加载新的PWM配置
                dynamic_delay_ms(Change_Time);                      // 延时控制渐变速度
            }
        }           
        else { // 如果目标值等于当前值
           PWM_Set_Direct(PWM_CHANNEL_2,PWM_Pre_data_2);
        }       
        // 更新前一占空比值，记录当前状态
        PWM_Pre_data_2 = pid2.PWM_duty_cycle;
    }
}

