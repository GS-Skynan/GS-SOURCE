#ifndef INIT_PROTECTED_3_4_H
#define INIT_PROTECTED_3_4_H


#include "../../../mcc_generated_files/system/system.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "../../../NFC/scl/nfc.h"
#include "../../DATA_DEAL/scl/DATA_DEAL.h"
#include "../../INTPUT_PROTECTED/scl/INTPUT_PROTECTED.h"


/**
 * @brief 初始化电流数据处理模块
 * 
 * 该函数用于初始化与电流数据采集和处理相关的硬件及软件环境，
 * 通常包括：
 * 1. 比例获取
 * 2. 电流获取
 * 3. 涨功率时间获取
 * 
 * @note 应在系统启动时调用一次，之后无需重复调用
 * @warning 调用前需确保相关硬件（如ADC、传感器）已上电稳定
 */
void Data_Deal_Init_Current(void);

/**
 * @brief 处理端口3和端口4的复用功能配置
 * 
 * 该函数实现以下功能
 * 1. 去除保护（生产模式）
 * @warning 调用前需确认端口未被其他功能占用
 */
void Port_3_4(void);


#endif 

