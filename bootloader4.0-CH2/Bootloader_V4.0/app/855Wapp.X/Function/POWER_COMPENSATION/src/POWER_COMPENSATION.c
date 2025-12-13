#include <stdint.h>
#include <stdio.h>
#include "../scl/POWER_COMPENSATION.h"
#include "../../../NFC/scl/nfc.h"
#include "../../DATA_DEAL/scl/DATA_DEAL.h"
/**
 * @brief 电源通道功率设置函数
 * 
 * 该函数根据不同的输入变量值(v11, v2, v3, v4)对四个电源通道(POWER1-POWER4)
 * 进行功率设置。每个变量的值取模4后决定对应通道的功率等级。
 * Wanning:若是某一个或者两个需要改变485控制顺序，需要NFC的四路（第二列）都刷
 */
void Power_Channel(void)
{
    /* 定义电源通道指针数组 
     * 每个元素指向一个电源通道变量，便于通过索引统一处理 */
    unsigned int *powers[] = {
        &POWER1,    // 通道1（红光）功率变量地址
        &POWER2,    // 通道2（红外）功率变量地址 
        &POWER3,    // 通道3（白光）功率变量地址
        &POWER4     // 通道4（蓝光）功率变量地址
    };    
    /* 定义控制变量数组:数组的元素是NFC值，即是NFC的第二列
     * 存储各通道对应的控制变量值，顺序与powers数组对应 */
    unsigned int vars[] = {
        v11,       // 通道1（红光）控制变量
        v2,        // 通道2（红外）控制变量
        v3,        // 通道3（白光）控制变量 
        v4         // 通道4（蓝光）控制变量
    };    
    /* 循环处理所有电源通道 */
    for (int i = 0; i < 4; i++) {
         if (vars[i] != 0) {             // 仅处理非0的情况：不刷NFC第二列时候，不执行这个函数
        /* 根据控制变量值设置对应通道功率
         * 主路根据一小时后的功率来写标记输入功率，辅路根据规格书的功率 +2W 来标记
         */
            switch (vars[i] % 4){           //  取模运算确定通道功率
                case 1: *powers[i] = POWER_CHANNEL1;   //  1通道（红光）:   设置功率为1230W 
                        break;
                case 2: *powers[i] = POWER_CHANNEL2;   //  2通道（红外光）: 设置功率为118W
                        break;
                case 3: *powers[i] = POWER_CHANNEL3;   //  3通道（白光）:   设置功率为210W
                        break;
                case 0: *powers[i] = POWER_CHANNEL4;   //  4通道（蓝光）:   设置功率为116W
                        break;
                /* 默认情况由取模运算保证不会发生，故无需default分支 */
            }
        }
    }
}
/* 
 *功率补偿函数
 *功能：超出最大功率时候保持最大功率
 *理论与实际方法：step1：将所有可能超出最大功率的情况列出
 *                step2：程序是按照 输出功率 来计算，同时测试发现每个通道的灯板电压与上位机开启的比例有着极强的线性关系
 *                       比如：V_out1=(UART_REG1_Pre * 0.5 +374)
 *                step3：每一种情况都存在一个纠正因子，比如1,2,3通道都开时候：(843+5*UART_REG2_Pre/0x64+5*UART_REG3_Pre/0x64);
 *                       可以看做是一种逐渐逼近的方法，其中843代表大比例，后面的小比例通过UART_REG2_Pre/0x64+5*UART_REG3_Pre/0x64来调控
 *                       这样做的情况可以很好的在混合开的时候，很好的控制功率
 */
void Power_Compensation(void)
{
    /*在此判断电流是否进入功率补偿*/ 
//    Power_Channel();// 电源通道功率设置函数
    int Votage4 = (UART_REG4_Pre >=0x46) ? 133:130;
    int  Total_Power;
    int  POWER_1 = (int)((CURRENT_1/1000 *(float)(UART_REG1_Pre*0.01)) * (UART_REG1_Pre * 0.5 +374));   // 主通道必须先除后乘，不然越界（超出int类型最大值），满量程是1230W（输入功率点灯前）
    int  POWER_2 = (int)((UART_REG2_Pre * 0.35 +93) * (CURRENT_2*0.001 * (float)UART_REG2_Pre*0.01));   
    int  POWER_3 = (int)((UART_REG3_Pre * 0.3 +311) * (CURRENT_3*0.001 * (float)UART_REG3_Pre*0.01));  
    int  POWER_4 = Votage4 * (CURRENT_4*0.001 * (float)UART_REG4_Pre*0.01);   
    Total_Power = (POWER_1 + POWER_2 + POWER_3 + POWER_4);                      //此时的总功率
    float Compensation_Data;
    if(UART_REG1_Pre >= 0x14 && Total_Power < 833){   
        TARGET_CURRENT_1_Real = TARGET_CURRENT_1;
        if(TARGET_CURRENT_1_Real >0 && TARGET_CURRENT_1_Real <=300)TARGET_CURRENT_1_Real = 300;//限制主通道电流
    }
    /*1*/
    if(UART_REG1_Pre >= 0x14 && (UART_REG2_Pre == 0x00 || UART_REG3_Pre == 0x00 || UART_REG4_Pre == 0x00) && Total_Power > 833){
        TARGET_CURRENT_1_Real = TARGET_CURRENT_1;
    }
    /*1,2*/
    if(UART_REG1_Pre >= 0x32 && UART_REG2_Pre >= 0x14 && UART_REG3_Pre == 0x00 && UART_REG4_Pre == 0x00  && Total_Power >= 833){
        Compensation_Data = Total_Power - (800+55*UART_REG2_Pre/0x64);          //主通道的补偿值
        POWER_1 -= Compensation_Data;                                           //补偿后主通道功率
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }
    /*1,3*/
    if(UART_REG1_Pre >= 0x32 && UART_REG3_Pre > 0x14  && UART_REG2_Pre == 0x00 && UART_REG4_Pre == 0x00 && Total_Power >= 833){       
        Compensation_Data = Total_Power - (790+63*UART_REG3_Pre/0x64);
        POWER_1 -= Compensation_Data;             
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }
    /*1,4*/
    if(UART_REG1_Pre >= 0x32 && UART_REG4_Pre >= 0x14  && UART_REG3_Pre == 0x00 &&  UART_REG2_Pre == 0x00 && Total_Power >= 833){
        Compensation_Data = Total_Power - (843+10*UART_REG4_Pre/0x64);
        POWER_1 -= Compensation_Data;             
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }
    /*1,2,3*/
    if(UART_REG1_Pre >= 0x32 && UART_REG4_Pre == 0x00  && UART_REG3_Pre >= 0x14 &&  UART_REG2_Pre >= 0x14 && Total_Power >= 833){      
        Compensation_Data = Total_Power - (843+5*UART_REG2_Pre/0x64+5*UART_REG3_Pre/0x64);
        POWER_1 -= Compensation_Data;             
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }
    /*1,2,4*/
    if(UART_REG1_Pre >= 0x32 && UART_REG4_Pre >= 0x14  && UART_REG3_Pre == 0x00 &&  UART_REG2_Pre >= 0x14 && Total_Power >= 833){
        Compensation_Data = Total_Power - (840+10*UART_REG2_Pre/0x64+10*UART_REG4_Pre/0x64);
        POWER_1 -= Compensation_Data;             
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }
    /*1,3,4*/
    if(((UART_REG1_Pre >= 0x32 && UART_REG1_Pre <0x52) || UART_REG1_Pre >= 0x56) && UART_REG4_Pre >= 0x14  && UART_REG3_Pre >= 0x14 &&  UART_REG2_Pre == 0x00 && Total_Power >= 833){
        Compensation_Data = Total_Power - (800+44*UART_REG4_Pre/0x64+10*UART_REG3_Pre/0x64);
        POWER_1 -= Compensation_Data;             
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }
    /*1,2,3,4*/
    if(UART_REG1_Pre >= 0x32 && UART_REG3_Pre >= 0x14 && UART_REG2_Pre >= 0x14 && UART_REG4_Pre >= 0x14 && Total_Power >= 833){
        Compensation_Data = Total_Power - (796+4*UART_REG4_Pre/0x64+46*UART_REG3_Pre/0x64+4*UART_REG2_Pre/0x64);
        POWER_1 -= Compensation_Data;             
        TARGET_CURRENT_1_Real = (unsigned int)((float)POWER_1/(UART_REG1_Pre * 0.5 +374) *1000);
    }   
}
/**
 * 说明：通道1,3之间有影响（实际测试时候，通道3的开启会导致通道1实际减少）
 * 电流补偿停止控制函数
 * 功能：根据通道状态动态调整CURRENT_1的值，实现电流补偿的开启与关闭
 */
void CompenSation_Current_Stop(void)
{    
    // 当满足以下条件时，减少CURRENT_1的值并设置标志位
    // 条件：通道1开启(UART_REG1>0)且通道3关闭(UART_REG3=0)且ret标志为0
    if(UART_REG1 > 0x00 && UART_REG3 == 0x00 && !ret){
        /* 通道3关闭时，消除通道1的电流补偿 */
        CURRENT_1 -= 10;       // 每次减少10个单位的电流补偿
        ret = 1;               // 设置标志位，表示已执行电流减少操作
    }   
    // 当满足以下条件时，增加CURRENT_1的值并清除标志位
    // 条件：通道1和通道3均开启 且 通道1电流≥2300 且 通道3电流≥400
    else if(UART_REG1 > 0x00 && UART_REG3 > 0x00  && CURRENT_1 >= 2300 && CURRENT_3 >= 800){
        // 使用宏判断并执行：仅当CURRENT_1的值发生变化时，增加10个单位
        EXECUTE_IF_CHANGED(CURRENT_1_pre, CURRENT_1, CURRENT_1 += 10);
        ret = 0;               // 清除标志位，表示当前处于电流增加状态
    }
}

