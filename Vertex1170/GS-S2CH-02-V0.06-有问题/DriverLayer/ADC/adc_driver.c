#include "adc_driver.h"
#include <stdio.h>

#define ADC_BUF_SIZE 20

static uint16_t NormalAverage(uint16_t *arr, uint16_t len)
{
	 uint16_t i,sum=0;
	 for(i=0;i<len;i++)
	 {
		  sum+=arr[i];  
	 }
	 return (uint16_t)(sum / len);
}

static uint16_t ArithAvgFltr(uint16_t *arr, uint16_t len)
{
  uint32_t sum = 0;
    if (len <= 4)
    {
        // 如果数据太少，直接计算普通平均值
        return NormalAverage(arr, len);
    }
    
    for (uint16_t i = 2; i < len-2; i++)
    {
            sum += arr[i];
    }
    
    // 计算平均值（有效数据个数为 len-4）
    return (uint16_t)(sum / (len - 4));
}

/**
***********************************************************
* @brief qsort函数调用的回调函数，比较规则，升序排列
* @param *_a，对应数组元素
* @param *_b，对应数组元素
* @return 比较结果
***********************************************************
*/
static int CmpCb(const void *_a, const void *_b)
{
	uint16_t *a = (uint16_t *)_a;
	uint16_t *b = (uint16_t *)_b;
	int val = 0;
	 if (*a < *b)
	 {
		val = -1;
	 }
	 else if (*a > *b)
	 {
		val =  1;
	 }
	 else
	 {
		val = 0;
	 }
	 return val;
}



uint16_t ADC_Read_AverageVal(adc_channel_t channel)
{
   uint16_t result[ADC_BUF_SIZE];
   uint16_t f_adcval=0;

   for(uint8_t k = 0; k < ADC_BUF_SIZE; k++) 
   {        
        result[k] =(uint16_t)ADC_ChannelSelectAndConvert(channel);     
   }
   
   qsort(result, ADC_BUF_SIZE, sizeof(uint16_t), CmpCb); 
   
   f_adcval=ArithAvgFltr(result,ADC_BUF_SIZE);	
   
   return f_adcval;
}


uint16_t ADC_Result(adc_channel_t channel)
{
    uint16_t result[12], temp, average = 0;
    int i, j,k;
    // 读取ADC值并存储到数组中
    for(k = 0; k < 12; k++) 
    {
        result[k] = (uint16_t)ADC_ChannelSelectAndConvert(channel);
       
    }
    int sum = 0;

    // 冒泡排序，将数组从小到大排序
    for (i = 0; i < 12 - 1; i++) {
        for (j = 0; j < 12 - 1 - i; j++) {
            if (result[j] > result[j + 1]) {
                // 交换两个元素
                temp = result[j];
                result[j] = result[j + 1];
                result[j + 1] = temp;
            }
        }
    }

    //去除前后各两个值，计算剩余数据的和
    for (i = 2; i < 12 - 2; i++) {
        sum += result[i];
    }

    // 计算平均值
    average = sum / (12 - 4);

    return average;
}