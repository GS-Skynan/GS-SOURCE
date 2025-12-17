#ifndef  __VERSION_H_
#define  __VERSION_H_	

#include "../../mcc_generated_files/system/system.h"

uint8_t *Read_Versions(uint8_t address,uint8_t len);
void Write_Versions(uint8_t address, uint8_t *version_str,uint8_t len);
void Readhandle_version(uint8_t *ack_data);
void Writehandle_version(uint8_t *w_data);

void VersionStore(void);

#endif

