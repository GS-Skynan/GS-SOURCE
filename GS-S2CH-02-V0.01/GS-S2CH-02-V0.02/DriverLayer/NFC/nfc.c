#include "nfc.h"
#include "crc.h"

uint8_t NFC_receiveData[72];
uint8_t I2C_R_system_config_Data[1];
uint8_t I2C_sendAdd_2[3] = {0x00, 0x00, 0xC0};
uint8_t I2C_password_add[19] = {0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
uint8_t I2C_sendAdd[2];
uint8_t GPO_config_value = 0;



/*说明：NFC功能的实现函数*/
/* 函数：提取并合并NFC 数据 
 *unsigned char read_eeprom_H：高8位
 * unsigned char read_eeprom_L：低8位
 * 返回值：NFC的电流值（十进制）
 */
unsigned int extractAndCombineEEPROMData(unsigned char read_eeprom_H, unsigned char read_eeprom_L) 
{
    unsigned char first_num = read_eeprom_H >> 4;       // 提取高4位
    unsigned char second_num = (read_eeprom_H & 0x0F);  // 提取低4位
    unsigned char third_num = read_eeprom_L >> 4;       // 提取高4位
    unsigned char fourth_num = (read_eeprom_L & 0x0F);  // 提取低4位

    // 将提取出的数字合并成一个整数（如2960）
    unsigned int num = first_num * 1000 + second_num * 100 + third_num * 10 + fourth_num;
    return num;
}
/* 函数：读取EEPROM数据并拆分为高字节和低字节 */
void readEEPROMData(unsigned char *data, unsigned char *highByte, unsigned char *lowByte) 
{
    *highByte = data[0];   // 高字节
    *lowByte = data[1];    // 低字节
}

/* 函数：将高字节和低字节合并为16位数据 */
unsigned int combineEEPROMData(unsigned char highByte, unsigned char lowByte)
{
    unsigned int result = (highByte << 8) | lowByte;  // 合并高低字节
    return result;
}
/* NFC初始化设置 */
void READ_NFC_SET_START(void) 
{
    while(!I2C1_Write(0x57, I2C_sendAdd_2, 2));  // 写入系统配置地址
    while(!I2C1_Read(0x57, I2C_R_system_config_Data, sizeof(I2C_R_system_config_Data)));  // 读取系统配置
    __delay_ms(5);  
    GPO_config_value = I2C_R_system_config_Data[0];  // 获取系统配置值
    __delay_ms(5);  
    if (GPO_config_value == 0xC0) {
        // 如果GPO配置值为0xC0，则不做任何操作
    }else{                                          // 否则，启用ST25DV04K GPO密码
        
        while(!I2C1_Write(0x57, I2C_password_add, 19));  // 写入密码
        __delay_ms(5); 
        while(!I2C1_Read(0x57, I2C_sendAdd_2, 3));  // 读取地址
        __delay_ms(2);  
    }
     __delay_ms(10);     
}

I2C_Status_t Read_NFC_Data(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength)
{
    uint32_t timeout = I2C_TIMEOUT_MS;
    uint8_t address_buffer[2];
    
    address_buffer[0] = (nfc_dataAdd >> 8) & 0xFF;  // 地址高字节
    address_buffer[1] = nfc_dataAdd & 0xFF;         // 地址低字节
    
    // 发送要读取的地址
    while(!I2C1_Write(0x53, address_buffer, 2)) {
        if(timeout == 0) {
            return I2C_ERROR_TIMEOUT;
        }
        timeout--;
        // 这里可以添加适当的延迟
        __delay_ms(1);
    }
    
    timeout = I2C_TIMEOUT_MS;  // 重置超时计数器
    
    // 读取数据
    while(!I2C1_Read(0x53, nfcdata, 2 + dataLength)) {
        if(timeout == 0) {
            return I2C_ERROR_TIMEOUT;
        }
        timeout--;
        __delay_ms(1);
    }
     __delay_ms(100);
    return I2C_SUCCESS;
    
}


I2C_Status_t Write_NFC_Data(uint16_t nfc_dataAdd, uint8_t *nfcdata, uint8_t dataLength)
{
    uint32_t timeout = I2C_TIMEOUT_MS;
    
    // 创建合并的缓冲区：地址(2字节) + 数据(dataLength字节)
    int8_t combined_buffer[2 + MAX_NFC_DATA_LENGTH ];
    
    // 复制地址到缓冲区前两个字节
//    combined_buffer[0] = nfc_dataAdd[0];  // 地址高字节
//    combined_buffer[1] = nfc_dataAdd[1];  // 地址低字节
    
    combined_buffer[0] = (nfc_dataAdd >> 8) & 0xFF;  // 地址高字节
    combined_buffer[1] = nfc_dataAdd & 0xFF;         // 地址低字节
    
    // 复制数据到缓冲区后面的位置
    for(uint8_t i = 0; i < dataLength; i++) {
        combined_buffer[i + 2] = nfcdata[i];
    }
    
    // 一次性发送地址和数据
    while(!I2C1_Write(0x53, combined_buffer, 2 + dataLength)) {
        if(timeout == 0) {
            return I2C_ERROR_TIMEOUT;
        }
        timeout--;
        __delay_ms(1);
    }
      __delay_ms(100);
    return I2C_SUCCESS;
}



/*选择通道，对NFC的数据进行转换
 *unsigned char channel：通道
 * unsigned char* eeprom_data_ptr：相应的通道数据（NFC数据）
 * unsigned char read_eeprom_H：高8位
 * unsigned char read_eeprom_L：低八位
 */
void processChannelDataIfNeeded(unsigned char channel, unsigned char* eeprom_data_ptr, unsigned char read_eeprom_H, unsigned char read_eeprom_L)
{
}
/*处理通道数据的函数
 *unsigned char channel:通道选择
 *unsigned int channelData：通道数据，即NFC刷的电流值（十进制）
 */
void processChannelData(unsigned char channel, unsigned int channelData)
{
}
/*电流数据处理,四通道*/
//unsigned char flag3;
//unsigned char flag4;
//unsigned char Data[2];
void Current_Data_Processing(unsigned char channel, unsigned int channelData)
{
}
