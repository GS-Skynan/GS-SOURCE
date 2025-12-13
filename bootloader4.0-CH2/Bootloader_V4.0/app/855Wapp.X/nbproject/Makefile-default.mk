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
FINAL_IMAGE=${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=Function/Bootloder/src/Bootloder.c Function/CLOSE_LED/src/CLOSE_LED.c Function/DATA_DEAL/src/DATA_DEAL.c Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.c Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.c Function/OTHER/src/OTHER.c Function/OUT_PROTECTED/src/out_protected.c Function/PID/src/pid.c Function/POWER_COMPENSATION/src/POWER_COMPENSATION.c Function/PWM_CHANGE/src/pwm_change.c Function/RS485_DATA/src/RS485_DATA.c Function/TEMP_PROTECTED/src/TEMP_PROTECTED.c Function/Time_Record/src/record.c CRC/src/crc.c mcc_generated_files/adc/src/adc.c mcc_generated_files/fvr/src/fvr.c mcc_generated_files/i2c_host/src/i2c1.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/pwm/src/pwm2_16bit.c mcc_generated_files/pwm/src/pwm3_16bit.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/tmr0.c mcc_generated_files/timer/src/tmr2.c mcc_generated_files/timer/src/tmr1.c mcc_generated_files/uart/src/uart1.c mcc_generated_files/uart/src/uart2.c NFC/src/nfc.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 ${OBJECTDIR}/Function/PID/src/pid.p1 ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/Function/Time_Record/src/record.p1 ${OBJECTDIR}/CRC/src/crc.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 ${OBJECTDIR}/NFC/src/nfc.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d ${OBJECTDIR}/Function/PID/src/pid.p1.d ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d ${OBJECTDIR}/Function/Time_Record/src/record.p1.d ${OBJECTDIR}/CRC/src/crc.p1.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d ${OBJECTDIR}/NFC/src/nfc.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 ${OBJECTDIR}/Function/PID/src/pid.p1 ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/Function/Time_Record/src/record.p1 ${OBJECTDIR}/CRC/src/crc.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 ${OBJECTDIR}/NFC/src/nfc.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=Function/Bootloder/src/Bootloder.c Function/CLOSE_LED/src/CLOSE_LED.c Function/DATA_DEAL/src/DATA_DEAL.c Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.c Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.c Function/OTHER/src/OTHER.c Function/OUT_PROTECTED/src/out_protected.c Function/PID/src/pid.c Function/POWER_COMPENSATION/src/POWER_COMPENSATION.c Function/PWM_CHANGE/src/pwm_change.c Function/RS485_DATA/src/RS485_DATA.c Function/TEMP_PROTECTED/src/TEMP_PROTECTED.c Function/Time_Record/src/record.c CRC/src/crc.c mcc_generated_files/adc/src/adc.c mcc_generated_files/fvr/src/fvr.c mcc_generated_files/i2c_host/src/i2c1.c mcc_generated_files/nvm/src/nvm.c mcc_generated_files/pwm/src/pwm2_16bit.c mcc_generated_files/pwm/src/pwm3_16bit.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/pins.c mcc_generated_files/timer/src/delay.c mcc_generated_files/timer/src/tmr0.c mcc_generated_files/timer/src/tmr2.c mcc_generated_files/timer/src/tmr1.c mcc_generated_files/uart/src/uart1.c mcc_generated_files/uart/src/uart2.c NFC/src/nfc.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F57Q43
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1: Function/Bootloder/src/Bootloder.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/Bootloder/src" 
	@${RM} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d 
	@${RM} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 Function/Bootloder/src/Bootloder.c 
	@-${MV} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.d ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1: Function/CLOSE_LED/src/CLOSE_LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/CLOSE_LED/src" 
	@${RM} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d 
	@${RM} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 Function/CLOSE_LED/src/CLOSE_LED.c 
	@-${MV} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.d ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1: Function/DATA_DEAL/src/DATA_DEAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/DATA_DEAL/src" 
	@${RM} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d 
	@${RM} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 Function/DATA_DEAL/src/DATA_DEAL.c 
	@-${MV} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.d ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1: Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src" 
	@${RM} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d 
	@${RM} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.c 
	@-${MV} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.d ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1: Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/INTPUT_PROTECTED/src" 
	@${RM} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d 
	@${RM} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.c 
	@-${MV} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.d ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/OTHER/src/OTHER.p1: Function/OTHER/src/OTHER.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/OTHER/src" 
	@${RM} ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d 
	@${RM} ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 Function/OTHER/src/OTHER.c 
	@-${MV} ${OBJECTDIR}/Function/OTHER/src/OTHER.d ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1: Function/OUT_PROTECTED/src/out_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/OUT_PROTECTED/src" 
	@${RM} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d 
	@${RM} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 Function/OUT_PROTECTED/src/out_protected.c 
	@-${MV} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.d ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/PID/src/pid.p1: Function/PID/src/pid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/PID/src" 
	@${RM} ${OBJECTDIR}/Function/PID/src/pid.p1.d 
	@${RM} ${OBJECTDIR}/Function/PID/src/pid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/PID/src/pid.p1 Function/PID/src/pid.c 
	@-${MV} ${OBJECTDIR}/Function/PID/src/pid.d ${OBJECTDIR}/Function/PID/src/pid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/PID/src/pid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1: Function/POWER_COMPENSATION/src/POWER_COMPENSATION.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/POWER_COMPENSATION/src" 
	@${RM} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d 
	@${RM} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 Function/POWER_COMPENSATION/src/POWER_COMPENSATION.c 
	@-${MV} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.d ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1: Function/PWM_CHANGE/src/pwm_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/PWM_CHANGE/src" 
	@${RM} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d 
	@${RM} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 Function/PWM_CHANGE/src/pwm_change.c 
	@-${MV} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.d ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1: Function/RS485_DATA/src/RS485_DATA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/RS485_DATA/src" 
	@${RM} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d 
	@${RM} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 Function/RS485_DATA/src/RS485_DATA.c 
	@-${MV} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.d ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1: Function/TEMP_PROTECTED/src/TEMP_PROTECTED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/TEMP_PROTECTED/src" 
	@${RM} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d 
	@${RM} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 Function/TEMP_PROTECTED/src/TEMP_PROTECTED.c 
	@-${MV} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.d ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/Time_Record/src/record.p1: Function/Time_Record/src/record.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/Time_Record/src" 
	@${RM} ${OBJECTDIR}/Function/Time_Record/src/record.p1.d 
	@${RM} ${OBJECTDIR}/Function/Time_Record/src/record.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/Time_Record/src/record.p1 Function/Time_Record/src/record.c 
	@-${MV} ${OBJECTDIR}/Function/Time_Record/src/record.d ${OBJECTDIR}/Function/Time_Record/src/record.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/Time_Record/src/record.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/CRC/src/crc.p1: CRC/src/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/CRC/src" 
	@${RM} ${OBJECTDIR}/CRC/src/crc.p1.d 
	@${RM} ${OBJECTDIR}/CRC/src/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/CRC/src/crc.p1 CRC/src/crc.c 
	@-${MV} ${OBJECTDIR}/CRC/src/crc.d ${OBJECTDIR}/CRC/src/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/CRC/src/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1: mcc_generated_files/adc/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/adc/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 mcc_generated_files/adc/src/adc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1: mcc_generated_files/fvr/src/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/fvr/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 mcc_generated_files/fvr/src/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1: mcc_generated_files/i2c_host/src/i2c1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 mcc_generated_files/i2c_host/src/i2c1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1: mcc_generated_files/pwm/src/pwm2_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 mcc_generated_files/pwm/src/pwm2_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1: mcc_generated_files/pwm/src/pwm3_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 mcc_generated_files/pwm/src/pwm3_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1: mcc_generated_files/timer/src/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 mcc_generated_files/timer/src/delay.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1: mcc_generated_files/timer/src/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 mcc_generated_files/timer/src/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1: mcc_generated_files/timer/src/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 mcc_generated_files/timer/src/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1: mcc_generated_files/timer/src/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 mcc_generated_files/timer/src/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1: mcc_generated_files/uart/src/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 mcc_generated_files/uart/src/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1: mcc_generated_files/uart/src/uart2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 mcc_generated_files/uart/src/uart2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/NFC/src/nfc.p1: NFC/src/nfc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/NFC/src" 
	@${RM} ${OBJECTDIR}/NFC/src/nfc.p1.d 
	@${RM} ${OBJECTDIR}/NFC/src/nfc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/NFC/src/nfc.p1 NFC/src/nfc.c 
	@-${MV} ${OBJECTDIR}/NFC/src/nfc.d ${OBJECTDIR}/NFC/src/nfc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/NFC/src/nfc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1: Function/Bootloder/src/Bootloder.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/Bootloder/src" 
	@${RM} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d 
	@${RM} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 Function/Bootloder/src/Bootloder.c 
	@-${MV} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.d ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1: Function/CLOSE_LED/src/CLOSE_LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/CLOSE_LED/src" 
	@${RM} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d 
	@${RM} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 Function/CLOSE_LED/src/CLOSE_LED.c 
	@-${MV} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.d ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1: Function/DATA_DEAL/src/DATA_DEAL.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/DATA_DEAL/src" 
	@${RM} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d 
	@${RM} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 Function/DATA_DEAL/src/DATA_DEAL.c 
	@-${MV} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.d ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1: Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src" 
	@${RM} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d 
	@${RM} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.c 
	@-${MV} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.d ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1: Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/INTPUT_PROTECTED/src" 
	@${RM} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d 
	@${RM} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.c 
	@-${MV} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.d ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/OTHER/src/OTHER.p1: Function/OTHER/src/OTHER.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/OTHER/src" 
	@${RM} ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d 
	@${RM} ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 Function/OTHER/src/OTHER.c 
	@-${MV} ${OBJECTDIR}/Function/OTHER/src/OTHER.d ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/OTHER/src/OTHER.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1: Function/OUT_PROTECTED/src/out_protected.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/OUT_PROTECTED/src" 
	@${RM} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d 
	@${RM} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 Function/OUT_PROTECTED/src/out_protected.c 
	@-${MV} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.d ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/PID/src/pid.p1: Function/PID/src/pid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/PID/src" 
	@${RM} ${OBJECTDIR}/Function/PID/src/pid.p1.d 
	@${RM} ${OBJECTDIR}/Function/PID/src/pid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/PID/src/pid.p1 Function/PID/src/pid.c 
	@-${MV} ${OBJECTDIR}/Function/PID/src/pid.d ${OBJECTDIR}/Function/PID/src/pid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/PID/src/pid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1: Function/POWER_COMPENSATION/src/POWER_COMPENSATION.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/POWER_COMPENSATION/src" 
	@${RM} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d 
	@${RM} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 Function/POWER_COMPENSATION/src/POWER_COMPENSATION.c 
	@-${MV} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.d ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1: Function/PWM_CHANGE/src/pwm_change.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/PWM_CHANGE/src" 
	@${RM} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d 
	@${RM} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 Function/PWM_CHANGE/src/pwm_change.c 
	@-${MV} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.d ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1: Function/RS485_DATA/src/RS485_DATA.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/RS485_DATA/src" 
	@${RM} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d 
	@${RM} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 Function/RS485_DATA/src/RS485_DATA.c 
	@-${MV} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.d ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1: Function/TEMP_PROTECTED/src/TEMP_PROTECTED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/TEMP_PROTECTED/src" 
	@${RM} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d 
	@${RM} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 Function/TEMP_PROTECTED/src/TEMP_PROTECTED.c 
	@-${MV} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.d ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Function/Time_Record/src/record.p1: Function/Time_Record/src/record.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Function/Time_Record/src" 
	@${RM} ${OBJECTDIR}/Function/Time_Record/src/record.p1.d 
	@${RM} ${OBJECTDIR}/Function/Time_Record/src/record.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Function/Time_Record/src/record.p1 Function/Time_Record/src/record.c 
	@-${MV} ${OBJECTDIR}/Function/Time_Record/src/record.d ${OBJECTDIR}/Function/Time_Record/src/record.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Function/Time_Record/src/record.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/CRC/src/crc.p1: CRC/src/crc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/CRC/src" 
	@${RM} ${OBJECTDIR}/CRC/src/crc.p1.d 
	@${RM} ${OBJECTDIR}/CRC/src/crc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/CRC/src/crc.p1 CRC/src/crc.c 
	@-${MV} ${OBJECTDIR}/CRC/src/crc.d ${OBJECTDIR}/CRC/src/crc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/CRC/src/crc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1: mcc_generated_files/adc/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/adc/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 mcc_generated_files/adc/src/adc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.d ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1: mcc_generated_files/fvr/src/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/fvr/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 mcc_generated_files/fvr/src/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1: mcc_generated_files/i2c_host/src/i2c1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/i2c_host/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 mcc_generated_files/i2c_host/src/i2c1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.d ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1: mcc_generated_files/nvm/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/nvm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 mcc_generated_files/nvm/src/nvm.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.d ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1: mcc_generated_files/pwm/src/pwm2_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 mcc_generated_files/pwm/src/pwm2_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1: mcc_generated_files/pwm/src/pwm3_16bit.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 mcc_generated_files/pwm/src/pwm3_16bit.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.d ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.p1: mcc_generated_files/system/src/clock.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 mcc_generated_files/system/src/clock.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/clock.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1: mcc_generated_files/system/src/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 mcc_generated_files/system/src/interrupt.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1: mcc_generated_files/system/src/config_bits.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 mcc_generated_files/system/src/config_bits.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/system.p1: mcc_generated_files/system/src/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 mcc_generated_files/system/src/system.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/system.d ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.p1: mcc_generated_files/system/src/pins.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 mcc_generated_files/system/src/pins.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/system/src/pins.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1: mcc_generated_files/timer/src/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 mcc_generated_files/timer/src/delay.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.d ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1: mcc_generated_files/timer/src/tmr0.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 mcc_generated_files/timer/src/tmr0.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1: mcc_generated_files/timer/src/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 mcc_generated_files/timer/src/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1: mcc_generated_files/timer/src/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 mcc_generated_files/timer/src/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.d ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1: mcc_generated_files/uart/src/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 mcc_generated_files/uart/src/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1: mcc_generated_files/uart/src/uart2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 mcc_generated_files/uart/src/uart2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/NFC/src/nfc.p1: NFC/src/nfc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/NFC/src" 
	@${RM} ${OBJECTDIR}/NFC/src/nfc.p1.d 
	@${RM} ${OBJECTDIR}/NFC/src/nfc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/NFC/src/nfc.p1 NFC/src/nfc.c 
	@-${MV} ${OBJECTDIR}/NFC/src/nfc.d ${OBJECTDIR}/NFC/src/nfc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/NFC/src/nfc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -memi=wordwrite -O0 -fasmfile -maddrqual=require -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file -mcodeoffset=3000h  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
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
		@cmd /C "gnuecho -n "-mcpu=$(MP_PROCESSOR_OPTION) $(MP_EXTRA_LD_PRE) -Wl,-Map=${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.map " > nbproject/default.debug"
	@cmd /C "gnuecho -n "-D__DEBUG=1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdebugger=none " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-memi=wordwrite " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-O0 -fasmfile -maddrqual=require " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-xassembler-with-cpp -mwarn=-3 -Wa,-a " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-DXPRJ_default=$(CND_CONF) " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdfp=\"${DFP_DIR}/xc8\" " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-msummary=-psect,-class,+mem,-hex,-file " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mcodeoffset=3000h -ginhx32 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-Wl,--memorysummary,${DISTDIR}/memoryfile.xml " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-o ${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 ${OBJECTDIR}/Function/PID/src/pid.p1 ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/Function/Time_Record/src/record.p1 ${OBJECTDIR}/CRC/src/crc.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/NFC/src/nfc.p1 ${OBJECTDIR}/main.p1 " >> nbproject/default.debug"

	
else
nbproject/$(CND_CONF).$(IMAGE_TYPE):   nbproject/Makefile-${CND_CONF}.mk   
		@cmd /C "gnuecho -n "-mcpu=$(MP_PROCESSOR_OPTION) $(MP_EXTRA_LD_PRE) -Wl,-Map=${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.map " > nbproject/default.production"
	@cmd /C "gnuecho -n "-memi=wordwrite " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-O0 -fasmfile -maddrqual=require " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-xassembler-with-cpp -mwarn=-3 -Wa,-a " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-DXPRJ_default=$(CND_CONF) " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-mdfp=\"${DFP_DIR}/xc8\" " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-msummary=-psect,-class,+mem,-hex,-file " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-mcodeoffset=3000h -ginhx32 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-Wl,--memorysummary,${DISTDIR}/memoryfile.xml " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-o ${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Function/Bootloder/src/Bootloder.p1 ${OBJECTDIR}/Function/CLOSE_LED/src/CLOSE_LED.p1 ${OBJECTDIR}/Function/DATA_DEAL/src/DATA_DEAL.p1 ${OBJECTDIR}/Function/INIT_AND_PORT_3_4/src/INIT_PROTECTED_3_4.p1 ${OBJECTDIR}/Function/INTPUT_PROTECTED/src/INTPUT_PROTECTED.p1 ${OBJECTDIR}/Function/OTHER/src/OTHER.p1 ${OBJECTDIR}/Function/OUT_PROTECTED/src/out_protected.p1 ${OBJECTDIR}/Function/PID/src/pid.p1 ${OBJECTDIR}/Function/POWER_COMPENSATION/src/POWER_COMPENSATION.p1 ${OBJECTDIR}/Function/PWM_CHANGE/src/pwm_change.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/Function/RS485_DATA/src/RS485_DATA.p1 ${OBJECTDIR}/Function/TEMP_PROTECTED/src/TEMP_PROTECTED.p1 ${OBJECTDIR}/Function/Time_Record/src/record.p1 ${OBJECTDIR}/CRC/src/crc.p1 ${OBJECTDIR}/mcc_generated_files/adc/src/adc.p1 ${OBJECTDIR}/mcc_generated_files/fvr/src/fvr.p1 ${OBJECTDIR}/mcc_generated_files/i2c_host/src/i2c1.p1 ${OBJECTDIR}/mcc_generated_files/nvm/src/nvm.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm2_16bit.p1 ${OBJECTDIR}/mcc_generated_files/pwm/src/pwm3_16bit.p1 ${OBJECTDIR}/mcc_generated_files/system/src/clock.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.p1 ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.p1 ${OBJECTDIR}/mcc_generated_files/system/src/system.p1 ${OBJECTDIR}/mcc_generated_files/system/src/pins.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/delay.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr0.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/timer/src/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.p1 ${OBJECTDIR}/mcc_generated_files/uart/src/uart2.p1 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/NFC/src/nfc.p1 ${OBJECTDIR}/main.p1 " >> nbproject/default.production"

	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: linkWithResponseFileStandalone
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC}  @nbproject/$(CND_CONF).$(IMAGE_TYPE) 
	@${RM} ${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/855Wapp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk   
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
