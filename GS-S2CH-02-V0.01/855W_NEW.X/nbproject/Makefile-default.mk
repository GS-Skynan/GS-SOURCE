#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=DriverLayer/ADC/src/adc_driver.c DriverLayer/EEPROM/src/EEPROM_driver.c DriverLayer/GPIO/src/GPIO_driver.c DriverLayer/NFC/src/nfc.c DriverLayer/PWM/src/pwm_driver.c DriverLayer/RS485/src/RS485_DATA.c DriverService/Bootloader/src/Bootloader.c DriverService/CurrentRead_APP/src/readcurrent.c DriverService/Dimming_APP/src/dimming.c DriverService/InProtected_APP/src/inprotectedapp.c DriverService/LightsOff_APP/src/closeled.c DriverService/NFCService_APP/src/nfcapp.c DriverService/OutProtected_APP/src/out_protected.c DriverService/PowerComp_APP/src/powercomp.c DriverService/PwmRegulation_APP/src/pwm_change.c DriverService/TempProtected_APP/src/TEMP_PROTECTED.c DriverService/Ticktime_APP/src/ticktime.c DriverService/timerecord_app/src/record.c DriverService/USBCom_APP/src/usbcom.c Middlewares/CRC/src/crc.c Middlewares/QUEUE/src/queue.c mcc_generated_files/adc/src/adc.c mcc_generated_files/fvr/src/fvr.c mcc_generated_files/i2c_host/src/i2c1.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/pwm/src/pwm2_16bit.c mcc_generated_files/pwm/src/pwm3_16bit.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/tmr0.c mcc_generated_files/timer/src/tmr2.c mcc_generated_files/timer/src/tmr1.c mcc_generated_files/timer/src/tmr4.c mcc_generated_files/uart/src/uart1.c mcc_generated_files/uart/src/uart2.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 ${OBJECTDIR}/Middlewares/CRC/src/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 ${OBJECTDIR}/Middlewares/CRC/src/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=DriverLayer/ADC/src/adc_driver.c DriverLayer/EEPROM/src/EEPROM_driver.c DriverLayer/GPIO/src/GPIO_driver.c DriverLayer/NFC/src/nfc.c DriverLayer/PWM/src/pwm_driver.c DriverLayer/RS485/src/RS485_DATA.c DriverService/Bootloader/src/Bootloader.c DriverService/CurrentRead_APP/src/readcurrent.c DriverService/Dimming_APP/src/dimming.c DriverService/InProtected_APP/src/inprotectedapp.c DriverService/LightsOff_APP/src/closeled.c DriverService/NFCService_APP/src/nfcapp.c DriverService/OutProtected_APP/src/out_protected.c DriverService/PowerComp_APP/src/powercomp.c DriverService/PwmRegulation_APP/src/pwm_change.c DriverService/TempProtected_APP/src/TEMP_PROTECTED.c DriverService/Ticktime_APP/src/ticktime.c DriverService/timerecord_app/src/record.c DriverService/USBCom_APP/src/usbcom.c Middlewares/CRC/src/crc.c Middlewares/QUEUE/src/queue.c mcc_generated_files/adc/src/adc.c mcc_generated_files/fvr/src/fvr.c mcc_generated_files/i2c_host/src/i2c1.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/pwm/src/pwm2_16bit.c mcc_generated_files/pwm/src/pwm3_16bit.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/tmr0.c mcc_generated_files/timer/src/tmr2.c mcc_generated_files/timer/src/tmr1.c mcc_generated_files/timer/src/tmr4.c mcc_generated_files/uart/src/uart1.c mcc_generated_files/uart/src/uart2.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F57Q43
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1: DriverLayer/ADC/src/adc_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/ADC/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 DriverLayer/ADC/src/adc_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.d ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1: DriverLayer/EEPROM/src/EEPROM_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/EEPROM/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 DriverLayer/EEPROM/src/EEPROM_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.d ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1: DriverLayer/GPIO/src/GPIO_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/GPIO/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 DriverLayer/GPIO/src/GPIO_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.d ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1: DriverLayer/NFC/src/nfc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/NFC/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 DriverLayer/NFC/src/nfc.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.d ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1: DriverLayer/PWM/src/pwm_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/PWM/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 DriverLayer/PWM/src/pwm_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.d ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1: DriverLayer/RS485/src/RS485_DATA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/RS485/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 DriverLayer/RS485/src/RS485_DATA.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.d ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1: DriverService/Bootloader/src/Bootloader.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/Bootloader/src" 
	@${RM} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 DriverService/Bootloader/src/Bootloader.c 
	@-${MV} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.d ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1: DriverService/CurrentRead_APP/src/readcurrent.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/CurrentRead_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 DriverService/CurrentRead_APP/src/readcurrent.c 
	@-${MV} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.d ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1: DriverService/Dimming_APP/src/dimming.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/Dimming_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 DriverService/Dimming_APP/src/dimming.c 
	@-${MV} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.d ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1: DriverService/InProtected_APP/src/inprotectedapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/InProtected_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 DriverService/InProtected_APP/src/inprotectedapp.c 
	@-${MV} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.d ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1: DriverService/LightsOff_APP/src/closeled.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/LightsOff_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 DriverService/LightsOff_APP/src/closeled.c 
	@-${MV} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.d ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1: DriverService/NFCService_APP/src/nfcapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/NFCService_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 DriverService/NFCService_APP/src/nfcapp.c 
	@-${MV} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.d ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1: DriverService/OutProtected_APP/src/out_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/OutProtected_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 DriverService/OutProtected_APP/src/out_protected.c 
	@-${MV} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.d ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1: DriverService/PowerComp_APP/src/powercomp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/PowerComp_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 DriverService/PowerComp_APP/src/powercomp.c 
	@-${MV} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.d ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1: DriverService/PwmRegulation_APP/src/pwm_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/PwmRegulation_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 DriverService/PwmRegulation_APP/src/pwm_change.c 
	@-${MV} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.d ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1: DriverService/TempProtected_APP/src/TEMP_PROTECTED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/TempProtected_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 DriverService/TempProtected_APP/src/TEMP_PROTECTED.c 
	@-${MV} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.d ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1: DriverService/Ticktime_APP/src/ticktime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/Ticktime_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 DriverService/Ticktime_APP/src/ticktime.c 
	@-${MV} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.d ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/timerecord_app/src/record.p1: DriverService/timerecord_app/src/record.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/timerecord_app/src" 
	@${RM} ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 DriverService/timerecord_app/src/record.c 
	@-${MV} ${OBJECTDIR}/DriverService/timerecord_app/src/record.d ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1: DriverService/USBCom_APP/src/usbcom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/USBCom_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 DriverService/USBCom_APP/src/usbcom.c 
	@-${MV} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.d ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/CRC/src/crc.p1: Middlewares/CRC/src/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/CRC/src" 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/src/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/CRC/src/crc.p1 Middlewares/CRC/src/crc.c 
	@-${MV} ${OBJECTDIR}/Middlewares/CRC/src/crc.d ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1: Middlewares/QUEUE/src/queue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/QUEUE/src" 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 Middlewares/QUEUE/src/queue.c 
	@-${MV} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.d ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1: mcc_generated_files/adc/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/adc/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 mcc_generated_files/adc/src/adc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1: mcc_generated_files/fvr/src/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/fvr/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 mcc_generated_files/fvr/src/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1: mcc_generated_files/i2c_host/src/i2c1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 mcc_generated_files/i2c_host/src/i2c1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1: mcc_generated_files/pwm/src/pwm2_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 mcc_generated_files/pwm/src/pwm2_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1: mcc_generated_files/pwm/src/pwm3_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 mcc_generated_files/pwm/src/pwm3_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1: mcc_generated_files/timer/src/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 mcc_generated_files/timer/src/delay.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1: mcc_generated_files/timer/src/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 mcc_generated_files/timer/src/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1: mcc_generated_files/timer/src/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 mcc_generated_files/timer/src/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1: mcc_generated_files/timer/src/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 mcc_generated_files/timer/src/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1: mcc_generated_files/timer/src/tmr4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 mcc_generated_files/timer/src/tmr4.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1: mcc_generated_files/uart/src/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 mcc_generated_files/uart/src/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1: mcc_generated_files/uart/src/uart2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 mcc_generated_files/uart/src/uart2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1: DriverLayer/ADC/src/adc_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/ADC/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 DriverLayer/ADC/src/adc_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.d ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1: DriverLayer/EEPROM/src/EEPROM_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/EEPROM/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 DriverLayer/EEPROM/src/EEPROM_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.d ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1: DriverLayer/GPIO/src/GPIO_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/GPIO/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 DriverLayer/GPIO/src/GPIO_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.d ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1: DriverLayer/NFC/src/nfc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/NFC/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 DriverLayer/NFC/src/nfc.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.d ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1: DriverLayer/PWM/src/pwm_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/PWM/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 DriverLayer/PWM/src/pwm_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.d ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1: DriverLayer/RS485/src/RS485_DATA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/RS485/src" 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 DriverLayer/RS485/src/RS485_DATA.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.d ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1: DriverService/Bootloader/src/Bootloader.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/Bootloader/src" 
	@${RM} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 DriverService/Bootloader/src/Bootloader.c 
	@-${MV} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.d ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1: DriverService/CurrentRead_APP/src/readcurrent.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/CurrentRead_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 DriverService/CurrentRead_APP/src/readcurrent.c 
	@-${MV} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.d ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1: DriverService/Dimming_APP/src/dimming.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/Dimming_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 DriverService/Dimming_APP/src/dimming.c 
	@-${MV} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.d ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1: DriverService/InProtected_APP/src/inprotectedapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/InProtected_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 DriverService/InProtected_APP/src/inprotectedapp.c 
	@-${MV} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.d ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1: DriverService/LightsOff_APP/src/closeled.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/LightsOff_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 DriverService/LightsOff_APP/src/closeled.c 
	@-${MV} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.d ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1: DriverService/NFCService_APP/src/nfcapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/NFCService_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 DriverService/NFCService_APP/src/nfcapp.c 
	@-${MV} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.d ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1: DriverService/OutProtected_APP/src/out_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/OutProtected_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 DriverService/OutProtected_APP/src/out_protected.c 
	@-${MV} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.d ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1: DriverService/PowerComp_APP/src/powercomp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/PowerComp_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 DriverService/PowerComp_APP/src/powercomp.c 
	@-${MV} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.d ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1: DriverService/PwmRegulation_APP/src/pwm_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/PwmRegulation_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 DriverService/PwmRegulation_APP/src/pwm_change.c 
	@-${MV} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.d ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1: DriverService/TempProtected_APP/src/TEMP_PROTECTED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/TempProtected_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 DriverService/TempProtected_APP/src/TEMP_PROTECTED.c 
	@-${MV} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.d ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1: DriverService/Ticktime_APP/src/ticktime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/Ticktime_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 DriverService/Ticktime_APP/src/ticktime.c 
	@-${MV} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.d ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/timerecord_app/src/record.p1: DriverService/timerecord_app/src/record.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/timerecord_app/src" 
	@${RM} ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 DriverService/timerecord_app/src/record.c 
	@-${MV} ${OBJECTDIR}/DriverService/timerecord_app/src/record.d ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1: DriverService/USBCom_APP/src/usbcom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverService/USBCom_APP/src" 
	@${RM} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d 
	@${RM} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 DriverService/USBCom_APP/src/usbcom.c 
	@-${MV} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.d ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/CRC/src/crc.p1: Middlewares/CRC/src/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/CRC/src" 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/src/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/CRC/src/crc.p1 Middlewares/CRC/src/crc.c 
	@-${MV} ${OBJECTDIR}/Middlewares/CRC/src/crc.d ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/CRC/src/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1: Middlewares/QUEUE/src/queue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/QUEUE/src" 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 Middlewares/QUEUE/src/queue.c 
	@-${MV} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.d ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1: mcc_generated_files/adc/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/adc/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 mcc_generated_files/adc/src/adc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1: mcc_generated_files/fvr/src/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/fvr/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 mcc_generated_files/fvr/src/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1: mcc_generated_files/i2c_host/src/i2c1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 mcc_generated_files/i2c_host/src/i2c1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1: mcc_generated_files/pwm/src/pwm2_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 mcc_generated_files/pwm/src/pwm2_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1: mcc_generated_files/pwm/src/pwm3_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 mcc_generated_files/pwm/src/pwm3_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1: mcc_generated_files/timer/src/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 mcc_generated_files/timer/src/delay.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1: mcc_generated_files/timer/src/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 mcc_generated_files/timer/src/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1: mcc_generated_files/timer/src/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 mcc_generated_files/timer/src/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1: mcc_generated_files/timer/src/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 mcc_generated_files/timer/src/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1: mcc_generated_files/timer/src/tmr4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 mcc_generated_files/timer/src/tmr4.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1: mcc_generated_files/uart/src/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 mcc_generated_files/uart/src/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1: mcc_generated_files/uart/src/uart2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 mcc_generated_files/uart/src/uart2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: createResponseFiles
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
nbproject/$(CND_CONF).$(IMAGE_TYPE):   nbproject/Makefile-${CND_CONF}.mk    
		@cmd /C "gnuecho -n "-mcpu=$(MP_PROCESSOR_OPTION) $(MP_EXTRA_LD_PRE) -Wl,-Map=${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.map " > nbproject/default.debug"
	@cmd /C "gnuecho -n "-D__DEBUG=1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdebugger=snap " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-memi=wordwrite " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-O0 -fasmfile -maddrqual=require " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-xassembler-with-cpp -mwarn=-3 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-DXPRJ_default=$(CND_CONF) " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdfp=\"${DFP_DIR}/xc8\" " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-msummary=-psect,-class,+mem,-hex,-file " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-ginhx32 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-Wl,--memorysummary,${DISTDIR}/memoryfile.xml " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-o ${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Middlewares/CRC/src/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/main.p1 " >> nbproject/default.debug"

	
else
nbproject/$(CND_CONF).$(IMAGE_TYPE):   nbproject/Makefile-${CND_CONF}.mk   
		@cmd /C "gnuecho -n "-mcpu=$(MP_PROCESSOR_OPTION) $(MP_EXTRA_LD_PRE) -Wl,-Map=${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.map " > nbproject/default.production"
	@cmd /C "gnuecho -n "-memi=wordwrite " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-O0 -fasmfile -maddrqual=require " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-xassembler-with-cpp -mwarn=-3 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-DXPRJ_default=$(CND_CONF) " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-mdfp=\"${DFP_DIR}/xc8\" " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-msummary=-psect,-class,+mem,-hex,-file " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-ginhx32 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-Wl,--memorysummary,${DISTDIR}/memoryfile.xml " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-o ${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/DriverLayer/ADC/src/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/src/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/src/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/src/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/src/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/src/RS485_DATA.p1 ${OBJECTDIR}/DriverService/Bootloader/src/Bootloader.p1 ${OBJECTDIR}/DriverService/CurrentRead_APP/src/readcurrent.p1 ${OBJECTDIR}/DriverService/Dimming_APP/src/dimming.p1 ${OBJECTDIR}/DriverService/InProtected_APP/src/inprotectedapp.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/DriverService/LightsOff_APP/src/closeled.p1 ${OBJECTDIR}/DriverService/NFCService_APP/src/nfcapp.p1 ${OBJECTDIR}/DriverService/OutProtected_APP/src/out_protected.p1 ${OBJECTDIR}/DriverService/PowerComp_APP/src/powercomp.p1 ${OBJECTDIR}/DriverService/PwmRegulation_APP/src/pwm_change.p1 ${OBJECTDIR}/DriverService/TempProtected_APP/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/DriverService/Ticktime_APP/src/ticktime.p1 ${OBJECTDIR}/DriverService/timerecord_app/src/record.p1 ${OBJECTDIR}/DriverService/USBCom_APP/src/usbcom.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Middlewares/CRC/src/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/src/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/main.p1 " >> nbproject/default.production"

	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: linkWithResponseFileStandalone
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC}  @nbproject/$(CND_CONF).$(IMAGE_TYPE) 
	@${RM} ${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/855W_NEW.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC}  @nbproject/$(CND_CONF).$(IMAGE_TYPE) 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
