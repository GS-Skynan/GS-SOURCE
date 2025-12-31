#ifndef  __COMMAND_H_
#define  __COMMAND_H_	

#include "../../mcc_generated_files/system/system.h"

uint8_t *ReadNFCInfo(uint8_t address,uint8_t len);
void WriteNFCInfo(uint8_t address, uint8_t *version_str,uint8_t len);
void Readhandle_version(uint8_t *ack_data);
void Writehandle_version(uint8_t *w_data);

void ReadChannelPowerValue(uint8_t *ack_data);
void WriteChannelPowerValue(uint8_t *w_data);

void WriteCalibrationSingleChannel(uint8_t *w_eeprom);

void WriteTemperatureCalibration(uint8_t *w_data);
void ReadActualTemperatureValue(uint8_t *ack_data);

void ReadWorkTimeValue(uint8_t *ack_data);

void VersionStore(void);
void ReadCalibration(void);

void ReceiveDataError(void);
#endif

