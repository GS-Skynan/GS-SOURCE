#ifndef  __VERSION_H_
#define  __VERSION_H_	

#include "../../mcc_generated_files/mcc.h"
#include "../../mcc_generated_files/examples/i2c_simple_example.h"
#include "../../mcc_generated_files/examples/i2c1_master_example.h"

extern uint8_t I2C_VersionsdAdd[2];
extern uint8_t I2C_NumbersAdd[2];

uint8_t *Read_Versions(uint8_t address,uint8_t len);
void Write_Versions(uint8_t address, uint8_t *version_str,uint8_t len);
void Readhandle_version(uint8_t *ack_data);
void Writehandle_version(uint8_t *w_data);

void VersionStore(void);

#endif

