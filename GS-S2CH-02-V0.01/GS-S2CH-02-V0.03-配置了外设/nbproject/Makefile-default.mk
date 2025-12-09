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
FINAL_IMAGE=${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=Applications/Bootloader/Bootloader.c Applications/CurrentRead_APP/readcurrent.c Applications/Dimming_APP/dimming.c Applications/InProtected_APP/inprotectedapp.c Applications/LightsOff_APP/closeled.c Applications/NFCService_APP/nfcapp.c Applications/OutProtected_APP/out_protected.c Applications/PowerComp_APP/powercomp.c Applications/PwmRegulation_APP/pwm_change.c Applications/TempProtected_APP/temp_protected.c Applications/Ticktime_APP/ticktime.c Applications/timerecord_app/record.c Applications/USBCom_APP/usbcom.c DriverLayer/ADC/adc_driver.c DriverLayer/EEPROM/EEPROM_driver.c DriverLayer/GPIO/GPIO_driver.c DriverLayer/NFC/nfc.c DriverLayer/PWM/pwm_driver.c DriverLayer/RS485/RS485_DATA.c Middlewares/CRC/crc.c Middlewares/QUEUE/queue.c mcc_generated_files/adc/src/adc.c mcc_generated_files/fvr/src/fvr.c mcc_generated_files/i2c_host/src/i2c1.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/pwm/src/pwm2_16bit.c mcc_generated_files/pwm/src/pwm3_16bit.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/tmr0.c mcc_generated_files/timer/src/tmr2.c mcc_generated_files/timer/src/tmr1.c mcc_generated_files/timer/src/tmr4.c mcc_generated_files/uart/src/uart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 ${OBJECTDIR}/Applications/timerecord_app/record.p1 ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 ${OBJECTDIR}/Middlewares/CRC/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d ${OBJECTDIR}/Applications/timerecord_app/record.p1.d ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d ${OBJECTDIR}/Middlewares/CRC/crc.p1.d ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 ${OBJECTDIR}/Applications/timerecord_app/record.p1 ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 ${OBJECTDIR}/Middlewares/CRC/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=Applications/Bootloader/Bootloader.c Applications/CurrentRead_APP/readcurrent.c Applications/Dimming_APP/dimming.c Applications/InProtected_APP/inprotectedapp.c Applications/LightsOff_APP/closeled.c Applications/NFCService_APP/nfcapp.c Applications/OutProtected_APP/out_protected.c Applications/PowerComp_APP/powercomp.c Applications/PwmRegulation_APP/pwm_change.c Applications/TempProtected_APP/temp_protected.c Applications/Ticktime_APP/ticktime.c Applications/timerecord_app/record.c Applications/USBCom_APP/usbcom.c DriverLayer/ADC/adc_driver.c DriverLayer/EEPROM/EEPROM_driver.c DriverLayer/GPIO/GPIO_driver.c DriverLayer/NFC/nfc.c DriverLayer/PWM/pwm_driver.c DriverLayer/RS485/RS485_DATA.c Middlewares/CRC/crc.c Middlewares/QUEUE/queue.c mcc_generated_files/adc/src/adc.c mcc_generated_files/fvr/src/fvr.c mcc_generated_files/i2c_host/src/i2c1.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/pwm/src/pwm2_16bit.c mcc_generated_files/pwm/src/pwm3_16bit.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/tmr0.c mcc_generated_files/timer/src/tmr2.c mcc_generated_files/timer/src/tmr1.c mcc_generated_files/timer/src/tmr4.c mcc_generated_files/uart/src/uart1.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F57Q43
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Applications/Bootloader/Bootloader.p1: Applications/Bootloader/Bootloader.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/Bootloader" 
	@${RM} ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d 
	@${RM} ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 Applications/Bootloader/Bootloader.c 
	@-${MV} ${OBJECTDIR}/Applications/Bootloader/Bootloader.d ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1: Applications/CurrentRead_APP/readcurrent.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/CurrentRead_APP" 
	@${RM} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d 
	@${RM} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 Applications/CurrentRead_APP/readcurrent.c 
	@-${MV} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.d ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/Dimming_APP/dimming.p1: Applications/Dimming_APP/dimming.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/Dimming_APP" 
	@${RM} ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d 
	@${RM} ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 Applications/Dimming_APP/dimming.c 
	@-${MV} ${OBJECTDIR}/Applications/Dimming_APP/dimming.d ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1: Applications/InProtected_APP/inprotectedapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/InProtected_APP" 
	@${RM} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d 
	@${RM} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 Applications/InProtected_APP/inprotectedapp.c 
	@-${MV} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.d ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1: Applications/LightsOff_APP/closeled.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/LightsOff_APP" 
	@${RM} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d 
	@${RM} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 Applications/LightsOff_APP/closeled.c 
	@-${MV} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.d ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1: Applications/NFCService_APP/nfcapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/NFCService_APP" 
	@${RM} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d 
	@${RM} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 Applications/NFCService_APP/nfcapp.c 
	@-${MV} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.d ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1: Applications/OutProtected_APP/out_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/OutProtected_APP" 
	@${RM} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d 
	@${RM} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 Applications/OutProtected_APP/out_protected.c 
	@-${MV} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.d ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1: Applications/PowerComp_APP/powercomp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/PowerComp_APP" 
	@${RM} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d 
	@${RM} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 Applications/PowerComp_APP/powercomp.c 
	@-${MV} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.d ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1: Applications/PwmRegulation_APP/pwm_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/PwmRegulation_APP" 
	@${RM} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d 
	@${RM} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 Applications/PwmRegulation_APP/pwm_change.c 
	@-${MV} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.d ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1: Applications/TempProtected_APP/temp_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/TempProtected_APP" 
	@${RM} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d 
	@${RM} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 Applications/TempProtected_APP/temp_protected.c 
	@-${MV} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.d ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1: Applications/Ticktime_APP/ticktime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/Ticktime_APP" 
	@${RM} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d 
	@${RM} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 Applications/Ticktime_APP/ticktime.c 
	@-${MV} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.d ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/timerecord_app/record.p1: Applications/timerecord_app/record.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/timerecord_app" 
	@${RM} ${OBJECTDIR}/Applications/timerecord_app/record.p1.d 
	@${RM} ${OBJECTDIR}/Applications/timerecord_app/record.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/timerecord_app/record.p1 Applications/timerecord_app/record.c 
	@-${MV} ${OBJECTDIR}/Applications/timerecord_app/record.d ${OBJECTDIR}/Applications/timerecord_app/record.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/timerecord_app/record.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1: Applications/USBCom_APP/usbcom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/USBCom_APP" 
	@${RM} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d 
	@${RM} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 Applications/USBCom_APP/usbcom.c 
	@-${MV} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.d ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1: DriverLayer/ADC/adc_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/ADC" 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 DriverLayer/ADC/adc_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.d ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1: DriverLayer/EEPROM/EEPROM_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/EEPROM" 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 DriverLayer/EEPROM/EEPROM_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.d ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1: DriverLayer/GPIO/GPIO_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/GPIO" 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 DriverLayer/GPIO/GPIO_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.d ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/NFC/nfc.p1: DriverLayer/NFC/nfc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/NFC" 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 DriverLayer/NFC/nfc.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/NFC/nfc.d ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1: DriverLayer/PWM/pwm_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/PWM" 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 DriverLayer/PWM/pwm_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.d ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1: DriverLayer/RS485/RS485_DATA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/RS485" 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 DriverLayer/RS485/RS485_DATA.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.d ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/CRC/crc.p1: Middlewares/CRC/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/CRC" 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/crc.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/CRC/crc.p1 Middlewares/CRC/crc.c 
	@-${MV} ${OBJECTDIR}/Middlewares/CRC/crc.d ${OBJECTDIR}/Middlewares/CRC/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/CRC/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/QUEUE/queue.p1: Middlewares/QUEUE/queue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/QUEUE" 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 Middlewares/QUEUE/queue.c 
	@-${MV} ${OBJECTDIR}/Middlewares/QUEUE/queue.d ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1: mcc_generated_files/adc/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/adc/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 mcc_generated_files/adc/src/adc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1: mcc_generated_files/fvr/src/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/fvr/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 mcc_generated_files/fvr/src/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1: mcc_generated_files/i2c_host/src/i2c1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 mcc_generated_files/i2c_host/src/i2c1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1: mcc_generated_files/pwm/src/pwm2_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 mcc_generated_files/pwm/src/pwm2_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1: mcc_generated_files/pwm/src/pwm3_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 mcc_generated_files/pwm/src/pwm3_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1: mcc_generated_files/timer/src/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 mcc_generated_files/timer/src/delay.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1: mcc_generated_files/timer/src/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 mcc_generated_files/timer/src/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1: mcc_generated_files/timer/src/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 mcc_generated_files/timer/src/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1: mcc_generated_files/timer/src/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 mcc_generated_files/timer/src/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1: mcc_generated_files/timer/src/tmr4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 mcc_generated_files/timer/src/tmr4.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1: mcc_generated_files/uart/src/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 mcc_generated_files/uart/src/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=snap   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/Applications/Bootloader/Bootloader.p1: Applications/Bootloader/Bootloader.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/Bootloader" 
	@${RM} ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d 
	@${RM} ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 Applications/Bootloader/Bootloader.c 
	@-${MV} ${OBJECTDIR}/Applications/Bootloader/Bootloader.d ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/Bootloader/Bootloader.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1: Applications/CurrentRead_APP/readcurrent.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/CurrentRead_APP" 
	@${RM} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d 
	@${RM} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 Applications/CurrentRead_APP/readcurrent.c 
	@-${MV} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.d ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/Dimming_APP/dimming.p1: Applications/Dimming_APP/dimming.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/Dimming_APP" 
	@${RM} ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d 
	@${RM} ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 Applications/Dimming_APP/dimming.c 
	@-${MV} ${OBJECTDIR}/Applications/Dimming_APP/dimming.d ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1: Applications/InProtected_APP/inprotectedapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/InProtected_APP" 
	@${RM} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d 
	@${RM} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 Applications/InProtected_APP/inprotectedapp.c 
	@-${MV} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.d ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1: Applications/LightsOff_APP/closeled.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/LightsOff_APP" 
	@${RM} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d 
	@${RM} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 Applications/LightsOff_APP/closeled.c 
	@-${MV} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.d ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1: Applications/NFCService_APP/nfcapp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/NFCService_APP" 
	@${RM} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d 
	@${RM} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 Applications/NFCService_APP/nfcapp.c 
	@-${MV} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.d ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1: Applications/OutProtected_APP/out_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/OutProtected_APP" 
	@${RM} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d 
	@${RM} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 Applications/OutProtected_APP/out_protected.c 
	@-${MV} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.d ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1: Applications/PowerComp_APP/powercomp.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/PowerComp_APP" 
	@${RM} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d 
	@${RM} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 Applications/PowerComp_APP/powercomp.c 
	@-${MV} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.d ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1: Applications/PwmRegulation_APP/pwm_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/PwmRegulation_APP" 
	@${RM} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d 
	@${RM} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 Applications/PwmRegulation_APP/pwm_change.c 
	@-${MV} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.d ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1: Applications/TempProtected_APP/temp_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/TempProtected_APP" 
	@${RM} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d 
	@${RM} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 Applications/TempProtected_APP/temp_protected.c 
	@-${MV} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.d ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1: Applications/Ticktime_APP/ticktime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/Ticktime_APP" 
	@${RM} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d 
	@${RM} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 Applications/Ticktime_APP/ticktime.c 
	@-${MV} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.d ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/timerecord_app/record.p1: Applications/timerecord_app/record.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/timerecord_app" 
	@${RM} ${OBJECTDIR}/Applications/timerecord_app/record.p1.d 
	@${RM} ${OBJECTDIR}/Applications/timerecord_app/record.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/timerecord_app/record.p1 Applications/timerecord_app/record.c 
	@-${MV} ${OBJECTDIR}/Applications/timerecord_app/record.d ${OBJECTDIR}/Applications/timerecord_app/record.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/timerecord_app/record.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1: Applications/USBCom_APP/usbcom.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Applications/USBCom_APP" 
	@${RM} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d 
	@${RM} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 Applications/USBCom_APP/usbcom.c 
	@-${MV} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.d ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1: DriverLayer/ADC/adc_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/ADC" 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 DriverLayer/ADC/adc_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.d ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1: DriverLayer/EEPROM/EEPROM_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/EEPROM" 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 DriverLayer/EEPROM/EEPROM_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.d ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1: DriverLayer/GPIO/GPIO_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/GPIO" 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 DriverLayer/GPIO/GPIO_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.d ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/NFC/nfc.p1: DriverLayer/NFC/nfc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/NFC" 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 DriverLayer/NFC/nfc.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/NFC/nfc.d ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/NFC/nfc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1: DriverLayer/PWM/pwm_driver.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/PWM" 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 DriverLayer/PWM/pwm_driver.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.d ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1: DriverLayer/RS485/RS485_DATA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/DriverLayer/RS485" 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d 
	@${RM} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 DriverLayer/RS485/RS485_DATA.c 
	@-${MV} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.d ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/CRC/crc.p1: Middlewares/CRC/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/CRC" 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/crc.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/CRC/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/CRC/crc.p1 Middlewares/CRC/crc.c 
	@-${MV} ${OBJECTDIR}/Middlewares/CRC/crc.d ${OBJECTDIR}/Middlewares/CRC/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/CRC/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Middlewares/QUEUE/queue.p1: Middlewares/QUEUE/queue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Middlewares/QUEUE" 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d 
	@${RM} ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 Middlewares/QUEUE/queue.c 
	@-${MV} ${OBJECTDIR}/Middlewares/QUEUE/queue.d ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Middlewares/QUEUE/queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1: mcc_generated_files/adc/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/adc/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 mcc_generated_files/adc/src/adc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1: mcc_generated_files/fvr/src/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/fvr/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 mcc_generated_files/fvr/src/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1: mcc_generated_files/i2c_host/src/i2c1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 mcc_generated_files/i2c_host/src/i2c1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1: mcc_generated_files/pwm/src/pwm2_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 mcc_generated_files/pwm/src/pwm2_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1: mcc_generated_files/pwm/src/pwm3_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 mcc_generated_files/pwm/src/pwm3_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1: mcc_generated_files/timer/src/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 mcc_generated_files/timer/src/delay.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1: mcc_generated_files/timer/src/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 mcc_generated_files/timer/src/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1: mcc_generated_files/timer/src/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 mcc_generated_files/timer/src/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1: mcc_generated_files/timer/src/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 mcc_generated_files/timer/src/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1: mcc_generated_files/timer/src/tmr4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 mcc_generated_files/timer/src/tmr4.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1: mcc_generated_files/uart/src/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 mcc_generated_files/uart/src/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -I"DriverLayer/ADC" -I"DriverLayer/EEPROM" -I"DriverLayer/GPIO" -I"DriverLayer/NFC" -I"DriverLayer/PWM" -I"DriverLayer/RS485" -I"Applications/Bootloader" -I"Applications/CurrentRead_APP" -I"Applications/Dimming_APP" -I"Applications/InProtected_APP" -I"Applications/LightsOff_APP" -I"Applications/NFCService_APP" -I"Applications/OutProtected_APP" -I"Applications/PowerComp_APP" -I"Applications/PwmRegulation_APP" -I"Applications/TempProtected_APP" -I"Applications/Ticktime_APP" -I"Applications/timerecord_app" -I"Applications/USBCom_APP" -I"Middlewares/CRC" -I"Middlewares/QUEUE" -mwarn=-3 -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
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
		@cmd /C "gnuecho -n "-mcpu=$(MP_PROCESSOR_OPTION) $(MP_EXTRA_LD_PRE) -Wl,-Map=${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.map " > nbproject/default.debug"
	@cmd /C "gnuecho -n "-D__DEBUG=1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdebugger=snap " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-memi=wordwrite " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-O0 -fasmfile -maddrqual=require " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-xassembler-with-cpp -I\"DriverLayer/ADC\" -I\"DriverLayer/EEPROM\" -I\"DriverLayer/GPIO\" -I\"DriverLayer/NFC\" -I\"DriverLayer/PWM\" -I\"DriverLayer/RS485\" -I\"Applications/Bootloader\" -I\"Applications/CurrentRead_APP\" -I\"Applications/Dimming_APP\" -I\"Applications/InProtected_APP\" -I\"Applications/LightsOff_APP\" -I\"Applications/NFCService_APP\" -I\"Applications/OutProtected_APP\" -I\"Applications/PowerComp_APP\" -I\"Applications/PwmRegulation_APP\" -I\"Applications/TempProtected_APP\" -I\"Applications/Ticktime_APP\" -I\"Applications/timerecord_app\" " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-I\"Applications/USBCom_APP\" -I\"Middlewares/CRC\" -I\"Middlewares/QUEUE\" -mwarn=-3 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-DXPRJ_default=$(CND_CONF) " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdfp=\"${DFP_DIR}/xc8\" " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-msummary=-psect,-class,+mem,-hex,-file " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-ginhx32 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-Wl,--memorysummary,${DISTDIR}/memoryfile.xml " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-o ${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 ${OBJECTDIR}/Applications/timerecord_app/record.p1 ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 ${OBJECTDIR}/Middlewares/CRC/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/main.p1 " >> nbproject/default.debug"

	
else
nbproject/$(CND_CONF).$(IMAGE_TYPE):   nbproject/Makefile-${CND_CONF}.mk   
		@cmd /C "gnuecho -n "-mcpu=$(MP_PROCESSOR_OPTION) $(MP_EXTRA_LD_PRE) -Wl,-Map=${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.map " > nbproject/default.production"
	@cmd /C "gnuecho -n "-memi=wordwrite " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-O0 -fasmfile -maddrqual=require " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-xassembler-with-cpp -I\"DriverLayer/ADC\" -I\"DriverLayer/EEPROM\" -I\"DriverLayer/GPIO\" -I\"DriverLayer/NFC\" -I\"DriverLayer/PWM\" -I\"DriverLayer/RS485\" -I\"Applications/Bootloader\" -I\"Applications/CurrentRead_APP\" -I\"Applications/Dimming_APP\" -I\"Applications/InProtected_APP\" -I\"Applications/LightsOff_APP\" -I\"Applications/NFCService_APP\" -I\"Applications/OutProtected_APP\" -I\"Applications/PowerComp_APP\" -I\"Applications/PwmRegulation_APP\" -I\"Applications/TempProtected_APP\" -I\"Applications/Ticktime_APP\" -I\"Applications/timerecord_app\" " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-I\"Applications/USBCom_APP\" -I\"Middlewares/CRC\" -I\"Middlewares/QUEUE\" -mwarn=-3 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-DXPRJ_default=$(CND_CONF) " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-mdfp=\"${DFP_DIR}/xc8\" " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-msummary=-psect,-class,+mem,-hex,-file " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-ginhx32 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-Wl,--memorysummary,${DISTDIR}/memoryfile.xml " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-o ${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Applications/Bootloader/Bootloader.p1 ${OBJECTDIR}/Applications/CurrentRead_APP/readcurrent.p1 ${OBJECTDIR}/Applications/Dimming_APP/dimming.p1 ${OBJECTDIR}/Applications/InProtected_APP/inprotectedapp.p1 ${OBJECTDIR}/Applications/LightsOff_APP/closeled.p1 ${OBJECTDIR}/Applications/NFCService_APP/nfcapp.p1 ${OBJECTDIR}/Applications/OutProtected_APP/out_protected.p1 ${OBJECTDIR}/Applications/PowerComp_APP/powercomp.p1 ${OBJECTDIR}/Applications/PwmRegulation_APP/pwm_change.p1 ${OBJECTDIR}/Applications/TempProtected_APP/temp_protected.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Applications/Ticktime_APP/ticktime.p1 ${OBJECTDIR}/Applications/timerecord_app/record.p1 ${OBJECTDIR}/Applications/USBCom_APP/usbcom.p1 ${OBJECTDIR}/DriverLayer/ADC/adc_driver.p1 ${OBJECTDIR}/DriverLayer/EEPROM/EEPROM_driver.p1 ${OBJECTDIR}/DriverLayer/GPIO/GPIO_driver.p1 ${OBJECTDIR}/DriverLayer/NFC/nfc.p1 ${OBJECTDIR}/DriverLayer/PWM/pwm_driver.p1 ${OBJECTDIR}/DriverLayer/RS485/RS485_DATA.p1 ${OBJECTDIR}/Middlewares/CRC/crc.p1 ${OBJECTDIR}/Middlewares/QUEUE/queue.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/main.p1 " >> nbproject/default.production"

	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: linkWithResponseFileStandalone
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC}  @nbproject/$(CND_CONF).$(IMAGE_TYPE) 
	@${RM} ${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/GS-S2CH-02-V0.03.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk   
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
