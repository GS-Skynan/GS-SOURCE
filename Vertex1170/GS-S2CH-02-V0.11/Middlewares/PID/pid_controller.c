#include "readcurrent.h"
#include "pwm_driver.h"
#include "ticktime.h"
#include <math.h>
#include "pid_controller.h"

int Pwm_flag_1, Pwm_flag_2 = 0;

int target_duty_cycle_Out1, target_duty_cycle_Out2;

//void PID_Init(PIDController *pid, unsigned char flag, float Kp, float Ki, float Kd, float output_max, float output_min, uint16_t PWM_duty_cycle)
//{
//    pid->Channel_Flag = flag; // 设置 PID 控制器的通道标志（1 或 2）
//    pid->Kp = Kp; // 设置比例增益（Kp）
//    pid->Ki = Ki; // 设置积分增益（Ki）
//    pid->Kd = Kd; // 设置微分增益（Kd）
//    pid->output_max = output_max; // 设置 PID 输出上限
//    pid->output_min = output_min; // 设置 PID 输出下限
//    // 设置积分项限制（根据经验值，通常为输出范围的20-50%）
//    // 对于3200的范围，我们设置为800（25%）
//    pid->integral_max = 800.0f / Ki; // 转换为积分项值
//    pid->integral_min = -800.0f / Ki; // 负向限制
//    pid->integral = 0.0f; // 初始化积分项为 0
//    pid->prev_error = 0.0f; // 初始化上一次误差为 0
//    pid->PWM_duty_cycle = PWM_duty_cycle; // 设置初始 PWM 占空比
//}

void PID_Init(PIDController *pid, unsigned char flag, float Kp, float Ki, float Kd,
              float output_max, float output_min, uint16_t PWM_duty_cycle)
{
    pid->Channel_Flag = flag;
    pid->Kp = Kp;
    pid->Ki = Ki;
    pid->Kd = Kd;
    pid->output_max = output_max;
    pid->output_min = output_min;

    // 修正积分限幅设置
    pid->integral_max = 800.0f; // 积分项最大值
    pid->integral_min = -800.0f; // 积分项最小值
    pid->integral = 0.0f;
    pid->prev_error = 0.0f;
    pid->PWM_duty_cycle = PWM_duty_cycle;
}

/*初始化PID参数*/
void PID_Init_Parameters(void)
{
    //保守参数
    //PID_Init(&pid1, 1, 0.05f, 0.002f, 0.08f, 3200.0f, 0.0f, 0);
    // 初始化两路 PID 控制器
    // PID_Init(&pid1, 1, 0.05f, 0.002f, 0.08f, 3200.0f, 0.0f, 0); // 第一路 PID 参数

    // 如果出现超调，增加Kd
    PID_Init(&pid1, 1, 0.08f, 0.002f, 0.15f, 3200.0f, 0.0f, 0);
    //  PID_Init(&pid2, 2, 0.1f, 0.0050f, 0.001f, 3200.0f, 0.0f, 0); // 第二路 PID 参数
    PID_Init(&pid2, 2, 0.3f, 0.0001f, 0.0001f, 3200.0f, 0.0f, 0);

}

/*PID计算函数
 *PIDController *pid：结构体  setpoint：目标值  measured_value：测量值（采集电压与电流成绩）
 * 返回值：PWM参数值（占空比 = output/3200）
 * wanning:没有抗积分饱和
 */

//uint16_t PID_Compute(PIDController *pid, float setpoint, float measured_value)
//{
//    float error = setpoint - measured_value;
//    // 比例项
//
//    float proportional = pid->Kp * error;
//    
//    // 在积分计算前检查 error 是否在合理范围
//    if (fabsf(error) < 50.0f)
//    { // 仅当误差较小时才积分
//        pid->integral += error;
//        // 积分限幅
//        if (pid->integral > pid->integral_max) pid->integral = pid->integral_max;
//        if (pid->integral < pid->integral_min) pid->integral = pid->integral_min;
//    }
//    else
//    {
//        pid->integral = 0; // 误差过大时清零积分
//    }
//
//    float integral = pid->Ki * pid->integral;
//    // 微分项
//    float derivative = pid->Kd * (error - pid->prev_error);
//    pid->prev_error = error;
//    // 计算输出
//    float output = proportional + integral + derivative;
//
//    if (pid->Channel_Flag == 1)
//    {
//        target_duty_cycle_Out1 += (int16_t) (output + (output >= 0 ? 0.5f : -0.5f));
//        target_duty_cycle_Out1 = (uint16_t) fmaxf(0, fminf(target_duty_cycle_Out1, 3200));
//        return target_duty_cycle_Out1;
//    }
//
//    if (pid->Channel_Flag == 2)
//    {
//        target_duty_cycle_Out2 += (int16_t) (output + (output >= 0 ? 0.5f : -0.5f));
//        target_duty_cycle_Out2 = (uint16_t) fmaxf(0, fminf(target_duty_cycle_Out2, 3200));
//        return target_duty_cycle_Out2;
//    }
//}

/*
 误差大小 → 自适应Ki调整 → 积分条件判断 → 积分步长限制 → 计算输出
           ↓                    ↓
       大误差：弱积分       小误差：正常积分
       中误差：适度积分     大误差：不积分
       小误差：强积分
 */
uint16_t PID_Compute(PIDController *pid, float setpoint, float measured_value)
{
    float error = setpoint - measured_value;
    float abs_error = fabsf(error);
    if (fabsf(error) < 1.0f)
    {
        error = 0.0f;
    }
    // 1. 自适应积分增益：误差大时减小积分，误差小时增强积分
    float adaptive_Ki = pid->Ki;
    if (abs_error > 50.0f)
    {
        adaptive_Ki *= 0.1f; // 大误差时降低积分作用
    }
    else if (abs_error > 20.0f)
    {
        adaptive_Ki *= 0.3f;
    }
    else if (abs_error < 5.0f)
    {
        adaptive_Ki *= 2.0f; // 小误差时增强积分作用
    }

    // 2. 比例项
    float proportional = pid->Kp * error;

    // 3. 积分项 - 只在误差较小时或同向误差时积分
    //    if (abs_error < 30.0f)
    //    {
    //        // 防止积分累积过快
    //        float max_integral_step = 10.0f / adaptive_Ki; // 限制单次积分增量
    //        float integral_step = error;
    //        if (integral_step > max_integral_step) integral_step = max_integral_step;
    //        if (integral_step < -max_integral_step) integral_step = -max_integral_step;
    //
    //        pid->integral += integral_step;
    //
    //        // 积分限幅
    //        if (pid->integral > pid->integral_max) pid->integral = pid->integral_max;
    //        if (pid->integral < pid->integral_min) pid->integral = pid->integral_min;
    //    }

    // 完全重写积分逻辑
    if (abs_error < 50.0f) // 扩大积分作用范围到50
    {
        float integral_step = error;

        // 根据误差大小限制积分步长
        if (abs_error > 30.0f)
        {
            // 大误差：限制为固定值
            if (integral_step > 40.0f) integral_step = 40.0f;
            if (integral_step < -40.0f) integral_step = -40.0f;
        }
        else if (abs_error > 10.0f)
        {
            // 中等误差：限制为误差的80%
            float limit = abs_error * 0.8f;
            if (integral_step > limit) integral_step = limit;
            if (integral_step < -limit) integral_step = -limit;
        }
        else
        {
            // 小误差：正常积分，不限制（或很小限制）
            // 可以添加很小限制如：最大5
            if (integral_step > 5.0f) integral_step = 5.0f;
            if (integral_step < -5.0f) integral_step = -5.0f;
        }

        // 应用自适应Ki的影响
        integral_step *= (adaptive_Ki / pid->Ki); // 根据Ki调整比例

        pid->integral += integral_step;

        // 积分限幅
        pid->integral = fmaxf(pid->integral_min, fminf(pid->integral, pid->integral_max));
    }
    else
    {
        // 误差大于50时，清零积分防止饱和
        pid->integral = 0;
    }
    float integral = adaptive_Ki * pid->integral;

    // 4. 微分项 - 带滤波
    float derivative = pid->Kd * (error - pid->prev_error);

    // 简单的低通滤波
    static float prev_derivative = 0;
    derivative = 0.7f * derivative + 0.3f * prev_derivative;
    prev_derivative = derivative;

    pid->prev_error = error;


    float output = proportional + integral + derivative;


    if (pid->Channel_Flag == 1)
    {

        target_duty_cycle_Out1 += (int16_t) (output + (output >= 0 ? 0.5f : -0.5f));
        target_duty_cycle_Out1 = (uint16_t) fmaxf(0, fminf(target_duty_cycle_Out1, 3200));
        return target_duty_cycle_Out1;
    }
    if (pid->Channel_Flag == 2)
    {

        target_duty_cycle_Out2 += (int16_t) (output + (output >= 0 ? 0.5f : -0.5f));
        target_duty_cycle_Out2 = (uint16_t) fmaxf(0, fminf(target_duty_cycle_Out2, 3200));
        return target_duty_cycle_Out2;
    }

}

void Clear_pid(uint8_t ch)
{
    if (ch == 1)
    {
        pid1.PWM_duty_cycle = 0; // 清零 PWM 占空比
        pid1.integral = 0.0f; // 清零积分项
        pid1.prev_error = 0.0f; // 清零上一次误差        
        target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比 
    }
    else if (ch == 2)
    {
        pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
        pid2.integral = 0.0f; // 清零通道 2 的积分项
        pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
        target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比    
    }
    else if (ch == 3)
    {
        /* 数字关灯时需要将一些 PID 参数清零 */
        pid1.PWM_duty_cycle = 0; // 清零通道 1 的 PWM 占空比
        pid1.integral = 0.0f; // 清零通道 1 的积分项
        pid1.prev_error = 0.0f; // 清零通道 1 的上一次误差
        pid2.PWM_duty_cycle = 0; // 清零通道 2 的 PWM 占空比
        pid2.integral = 0.0f; // 清零通道 2 的积分项
        pid2.prev_error = 0.0f; // 清零通道 2 的上一次误差
        target_duty_cycle_Out1 = 0; // 清零通道 1 的目标占空比
        target_duty_cycle_Out2 = 0; // 清零通道 2 的目标占空比

    }

}