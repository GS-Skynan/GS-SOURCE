/**
 *
 * @file 8bit_bootloader.c
 *
 * @ingroup generic_bootloader_8bit
 *
 * @brief This source file provides the implementation of the APIs for the 8-bit Bootloader library
 *
 * @version BOOTLOADER Driver Version 3.0.0
 */

/*
? [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

//   Memory Map
//   -----------------
//   |    0x0000     |   Reset vector
//   |               |
//   |    0x0008     |   High Priority Interrupt vector
//   |               |
//   |    0x0018     |   Low Priority Interrupt vector
//   |               |
//   |  Boot Block   |   (this program)
//   |               |
//   |    0x3000     |   Re-mapped Reset Vector (Actual address
//   |    0x3008     |   Re-mapped High Priority Interrupt Vector
//   |    0x3018     |   Re-mapped Low Priority Interrupt Vector
//   |       |       |
//   |               |
//   |  Code Space   |   User program space
//   |               |
//   |       |       |
//   |               |
//   | End of Flash  |
//   -----------------
//
// *****************************************************************************

#include <stdbool.h>
#include "../bl_bootload.h"
#include "../bl_communication_interface.h"
#include "../../mcc_generated_files/timer/delay.h"

//****************************************
// Default Functions (Always Used)
static uint8_t BL_GetVersionData(void);
static void BL_RunBootloader(void);
static bool BL_BootloadRequired(void);
static void BL_CheckDeviceReset(void);
static uint8_t BL_WriteFlash(void);
static uint8_t BL_EraseFlash(void);
static uint16_t BL_ProcessBootBuffer(void);

//****************************************
// Conditional Functions
static uint8_t BL_CalcChecksum(void);

// *****************************************************************************
// Newer PIC18F devices have vectored interrupts with the base address specified
// by SFR IVTBASE.  Thus there is no need for the bootloader to redirect the
// Interrupt vectors. The end application should specify IVTBASE as needed
// *****************************************************************************
// *****************************************************************************
static bool resetPending = false;

// The data frame used for
// holding the current data frame throughout
// boot operation

static frame_t frame;

#define BOOT_MAGIC_1 0x06
#define BOOT_MAGIC_2 0x05   
#define BOOT_MAGIC_3 0x04    
#define BOOT_MAGIC_4 0x03    
#define BOOT_MAGIC_5 0x02
#define BOOT_MAGIC_6 0x01    

#define BOOTLOADER_MAGIC_OFFSET_ADDR (1016U)


static bool g_jump_to_bootloader_flag=false;


/*
 * @todo Documentation Needed
 */     


void EepromWriteByte(uint24_t offset, uint8_t data)
{
    if(offset>=EEPROM_SIZE)
    {
        return;
    }
    NVM_UnlockKeySet(UNLOCK_KEY);
    EEPROM_Write(EEPROM_START_ADDRESS+offset,data);
    while(NVM_IsBusy());
    if(NVM_StatusGet()==NVM_ERROR)
    {
        NVM_StatusClear();
    }
    NVM_UnlockKeyClear();        
}


uint8_t EepromReadByte(uint24_t offset)
{
    uint8_t data;
    uint24_t address;
    if(offset >=EEPROM_SIZE)
    {
        return 0;
    }
    
   address = EEPROM_START_ADDRESS + offset;
   data = EEPROM_Read(address);
   
   return data;        
}


/**
 * @brief 计算16位算术和校验
 * @param data 数据指针
 * @param len 数据长度
 * @return 16位校验和
 */
uint16_t BootCalculateChecksum(const uint8_t *data, uint8_t len)
{
    uint32_t sum = 0; // 使用32位临时变量防止溢出
    
    for (uint8_t i = 0; i < len; i++) 
    {
        sum += data[i];
    }
    
    // 取模65536（取低16位）
    return (uint16_t)(sum & 0xFFFF);
}




bool BootFlagIsValid(void)
{
    uint8_t magic_data[6];

    magic_data[0] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR);
    magic_data[1] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 1);
    magic_data[2] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 2);
    magic_data[3] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 3);
    magic_data[4] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 4);
    magic_data[5] = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 5);
    if (magic_data[0] != BOOT_MAGIC_1 ||
        magic_data[1] != BOOT_MAGIC_2 ||
        magic_data[2] != BOOT_MAGIC_3 ||
        magic_data[3] != BOOT_MAGIC_4 ||
        magic_data[4] != BOOT_MAGIC_5 ||
        magic_data[5] != BOOT_MAGIC_6)
    {
        return false;
    }

    uint8_t checksum_high = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 6);
    uint8_t checksum_low = EepromReadByte(BOOTLOADER_MAGIC_OFFSET_ADDR + 7);
    uint16_t stored_checksum = (checksum_high << 8) | checksum_low;


    uint16_t calculated_checksum = BootCalculateChecksum(magic_data, 6);


    if (stored_checksum == calculated_checksum)
        return true;
    else
    {
        return false;
    }
}

/**
 * @brief 清除标志位（写回默认值0xFF）
 */
void BootFlagClear(void) 
{
    for (uint8_t i = 0; i < 8; i++)
    {
        EepromWriteByte(BOOTLOADER_MAGIC_OFFSET_ADDR+i, 0xFF);
    }
}


void BL_Initialize(void)
{
       resetPending = false;
       
       BL_INDICATOR_OFF();
     
       if(BootFlagIsValid()==true)
       {      
           BootFlagClear();          
           g_jump_to_bootloader_flag=true;
       }
     
       if(BL_BootloadRequired() == true||g_jump_to_bootloader_flag==true)
       {
           g_jump_to_bootloader_flag=false;

           BL_INDICATOR_ON();
           BL_RunBootloader(); // generic comms layer
       }  
       
        STKPTR = 0x00U;
        BSR = 0x00U;
        BL_INDICATOR_OFF();
        asm("goto  " str(NEW_RESET_VECTOR));
}

static bool BL_BootloadRequired(void)
{
    bool status;
    if (BL_bootVerify() == false)
    {
        status = true;
    }
    else
    {
        status = false;
    }

    return status;
}

/**
 * @ingroup generic_bootloader_8bit
 * @brief Processes the command header and returns the length of the return packet.
 * @param none
 * @retval The total length of the packet being passed back to the host.
 */
static uint16_t BL_ProcessBootBuffer(void)
{
    uint16_t len;
    switch (frame.command)
    {
    case READ_VERSION:
        len = BL_GetVersionData(); 
        break;
    case WRITE_FLASH:
        len = BL_WriteFlash();
        break;
    case ERASE_FLASH:
        len = BL_EraseFlash();
        break;
    case CALC_CHECKSUM:
        len = BL_CalcChecksum();
        break;
    case RESET_DEVICE:
            frame.data[0] = COMMAND_SUCCESS;
        resetPending = true;
        len = 10U;
        break;
    default:
        frame.data[0] = ERROR_INVALID_COMMAND;
        len = 10U;
        break;
    }
    return (len);
}

static void BL_RunBootloader(void)
{
    uint16_t messageLength = 0U;
    uint16_t index = 0U;
    uint8_t ch;

    while (1)
    {
        BL_CheckDeviceReset();
        BL_CommunicationModuleInit();
        

        IO_RD3_SetLow();
        
        index = 0U; //Point to the buffer
        messageLength = BL_HEADER; // message has 9 bytes of overhead (Synch + Opcode + Length + Address)
        while (index < messageLength)
        {            
            BL_CommunicationModuleRead(&ch, 1);
            frame.buffer[index] = ch;

            index++;
            if (index == 5U)
            {            
                if ((frame.command == WRITE_FLASH)
                        || (frame.command == WRITE_EE_DATA)
                        || (frame.command == WRITE_CONFIG))
                {
                    messageLength += frame.data_length;
                }
                else
                {  
                    //do nothing
                }
            }
        }

        messageLength = BL_ProcessBootBuffer();
        
        if (messageLength > 0U)
        {   
      
            BL_CommunicationModuleWrite(frame.buffer, messageLength);

            while (BL_CommunicationModuleIsReady() != true)
            {

            }
        }
    }
}

static void BL_CheckDeviceReset(void)
{
    if (resetPending == true)
    {
        BL_INDICATOR_OFF();
        RESET();
    }
    return;
}

// ******************************************************************************
// Get Bootloader Version Information
//        Cmd     Length----------------   Address---------------
// In:   [|0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00|]
// OUT:  [|0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | VERL | VERH|]
// ******************************************************************************

static uint8_t BL_GetVersionData(void)
{
    uint8_t dataIndex = 0U;
    uint32_t maxPacketSize = 0U;

    maxPacketSize = (PROGMEM_SIZE / ((uint32_t) PROGMEM_PAGE_SIZE));
    device_id_data_t deviceId = DeviceID_Read(DEVICE_ID_START_ADDRESS);

    // Bootloader Firmware Version
    frame.data[dataIndex] = MINOR_VERSION;
    dataIndex++;
    frame.data[dataIndex] = MAJOR_VERSION;
    dataIndex++;

    // max packet size in hexadecimal
    frame.data[dataIndex] = (uint8_t) (maxPacketSize & 0xFFU);
    dataIndex++;
    frame.data[dataIndex] = (uint8_t) ((maxPacketSize >> 8U) & 0xFFU);
    dataIndex++;

    // Unused Bytes
    frame.data[dataIndex] = 0U;
    dataIndex++;
    frame.data[dataIndex] = 0U;
    dataIndex++;

    // device id
    frame.data[dataIndex] = (uint8_t) deviceId;
    dataIndex++;
    frame.data[dataIndex] = (uint8_t) (deviceId >> 8U);
    dataIndex++;
    // Unused Bytes
    frame.data[dataIndex] = 0U;
    dataIndex++;
    frame.data[dataIndex] = 0U;
    dataIndex++;
    frame.data[dataIndex] = (uint8_t) (PROGMEM_PAGE_SIZE & 0xFFU);
    dataIndex++;
    frame.data[dataIndex] = (uint8_t) (((uint16_t)PROGMEM_PAGE_SIZE >> 8U) & 0xFFU);
    dataIndex++;

    // Read 4 bytes of the user id
    uint24_t offsetAddress = USER_ID_START_U;
    for (uint8_t i = 0U; i < 4U; i++)
    {
        frame.data[dataIndex] = (uint8_t) FLASH_Read(offsetAddress);
        offsetAddress++;
        dataIndex++;
    }

    return (BL_HEADER + dataIndex); // total length to send back 9 byte header + payload
}


// *****************************************************************************
// Write Flash
//        Cmd     Length----- Keys------   Address---------------  Data ---------
// In:   [|0x02 | 0x00 | 0x00 | 0x55 | 0xAA | 0x00 | 0x00 | 0x00 | 0x00 | Data |.. | data |]
// OUT:  [|0x02 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x00 | 0x01|]
// *****************************************************************************
static uint8_t BL_WriteFlash(void)
{
    nvm_status_t errorStatus = NVM_OK;
    flash_address_t userAddress;
    flash_address_t flashStartPageAddress;
    flash_address_t userDataStartOffset;
    flash_data_t writeBuffer[PROGMEM_PAGE_SIZE];

    uint16_t unlockKey = (((uint16_t) frame.EE_key_2) << 8U) 
                        | (uint16_t) frame.EE_key_1;

    if(unlockKey != UNLOCK_KEY)
    {
        frame.data[0] = COMMAND_PROCESSING_ERROR;
        return (10U);
    }

    userAddress = (((flash_address_t) frame.address_U) << 16U)
            | (((flash_address_t) frame.address_H) << 8U)
            | (flash_address_t) frame.address_L;

    // Prevent any write operation that exceeds the data buffer size
    if( frame.data_length > BL_FRAME_DATA_SIZE )
    {
        frame.data[0] = COMMAND_OVERLOAD_ERROR;
        return (10U);
    }


    // get that start of the page and the user data start address
    flashStartPageAddress = FLASH_PageAddressGet(userAddress);
    userDataStartOffset = FLASH_PageOffsetGet(userAddress);

    // read the whole page that contains the address
    for (uint16_t offset = 0U; offset < BL_FRAME_DATA_SIZE; offset++)
    {
        writeBuffer[offset] = FLASH_Read(flashStartPageAddress + offset);
    }

    for (uint16_t userByte = 0U; userByte < frame.data_length; userByte++)
    {
        writeBuffer[userDataStartOffset + userByte] = frame.data[userByte];
    }
    // ***** perform write action *****
    NVM_UnlockKeySet(unlockKey);
    errorStatus = FLASH_PageErase(flashStartPageAddress);
    NVM_UnlockKeyClear();
    if (errorStatus == NVM_OK)
    {
        NVM_UnlockKeySet(unlockKey);
        errorStatus = FLASH_RowWrite(flashStartPageAddress, writeBuffer);
        NVM_UnlockKeyClear();
    }

    frame.data[0] = (errorStatus == NVM_OK) ? COMMAND_SUCCESS : COMMAND_PROCESSING_ERROR;

    NVM_StatusClear();
    return (10U);
}


/************************************************************************************************
 * Erase Application Flash Space
 *        Cmd--- Length----- Keys------- Address------------------------- Data ------------------
 * In:   [|0x03 | DATALEN_L | DATALEN_L | 0x55 | 0xAA | ADDR_L | ADDR_H | ADDR_U | ADDR_E|]
 * OUT:  [|0x03 | DATALEN_L | DATALEN_L | KEY_L | KEY_H | ADDR_L | ADDR_H | ADDR_U | ADDR_E | CMD_STATUS|]
 ************************************************************************************************
 */
static uint8_t BL_EraseFlash(void)
{
    nvm_status_t errorStatus = NVM_OK;
    flash_address_t address;

    uint16_t unlockKey;
    unlockKey = (((uint16_t) frame.EE_key_2) << 8U)
            | (uint16_t) frame.EE_key_1;
    address = ((((flash_address_t) frame.address_U) << 16U)
            | (((flash_address_t) frame.address_H) << 8U)
            | (flash_address_t) frame.address_L);

    // Fail if the given unlock key is incorrect
    if (unlockKey != UNLOCK_KEY)
    {
        frame.data[0] = COMMAND_PROCESSING_ERROR;
        NVM_StatusClear();
        return (10U);
    }

    // Fail if the given address is not on a page boundry
    if (FLASH_PageOffsetGet(address) > (flash_address_t) 0U)
    {
        frame.data[0] = ERROR_ADDRESS_OUT_OF_RANGE;
        NVM_StatusClear();
        return (10U);
    }


    for (uint16_t i = 0U; i < frame.data_length; i++)
    {
        NVM_UnlockKeySet(unlockKey);
        errorStatus = FLASH_PageErase(address);
        NVM_UnlockKeyClear();

        address += PROGMEM_PAGE_SIZE;

        if (errorStatus == NVM_ERROR)
        {
            break;
        }
    }

    frame.data[0] = (errorStatus == NVM_OK) ? COMMAND_SUCCESS : COMMAND_PROCESSING_ERROR;
    NVM_StatusClear();
    return (10U);
}





// **************************************************************************************
// Calculate Checksum
// In:	[|0x08 | DataLengthL | DataLengthH | unused | unused | ADDRL | ADDRH | ADDRU | unused |...]
// OUT:	[9 byte header + ChecksumL + ChecksumH]
// **************************************************************************************

static uint8_t BL_CalcChecksum(void)
{
    flash_address_t address;
#if PROGMEM_SIZE > 0x10000
    uint32_t i;
    uint32_t length = frame.data_length;
    length += ((uint32_t) frame.EE_key_1) << 16U;
#else
    uint16_t i;
    uint16_t length = frame.data_length;
#endif
    address = (((flash_address_t) frame.address_U) << 16U)
            | (((flash_address_t) frame.address_H) << 8U)
            | (flash_address_t) frame.address_L;

    if(address < START_OF_APP)
    {
        frame.data[0] = ERROR_ADDRESS_OUT_OF_RANGE;
        return (10U);
    }
    
    uint16_t checkSum = 0U;

    for (i = 0U; i < length; i += 2U)
    {
        checkSum += (uint16_t) FLASH_Read(address++);
        checkSum += ((uint16_t) FLASH_Read(address++)) << 8U;
    }

    frame.data[0] = (uint8_t) (checkSum & 0x00FFU);
    frame.data[1] = (uint8_t) ((checkSum & 0xFF00U) >> 8U);
    return (11U);
}


