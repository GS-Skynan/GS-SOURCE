#include "../ADC/adc_driver.h"
/**
*******************************************************************************
 * @brief 获取ADC转换结果（带数字滤波处理）
 * @param channel：ADC通道选择（输入）
 * @return uint16_t：经过滤波处理后的ADC平均值
 * @note 采用12次采样，去除最大最小的4个值后取平均
 *       使用冒泡排序对采样数据进行排序
 *       有效提高ADC采样的抗干扰能力和稳定性
 ******************************************************************************
*/
uint16_t ADC_Result(adcc_channel_t channel)
{
    uint16_t result[12], temp, average = 0;
    int i, j, k;
    // 读取ADC值并存储到数组中
    for (k = 0; k < 12; k++)
    {
        result[k] = (uint16_t) ADCC_GetSingleConversion(channel);

    }
    int sum = 0;

    // 冒泡排序，将数组从小到大排序
    for (i = 0; i < 12 - 1; i++)
    {
        for (j = 0; j < 12 - 1 - i; j++)
        {
            if (result[j] > result[j + 1])
            {
                // 交换两个元素
                temp = result[j];
                result[j] = result[j + 1];
                result[j + 1] = temp;
            }
        }
    }

    // 去除前后各两个值，计算剩余数据的和
    for (i = 2; i < 12 - 2; i++)
    {
        sum += result[i];
    }

    // 计算平均值
    average = (uint16_t) (sum / (12 - 4));

    return average;
}