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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Suma.asm Resta.asm Multiplicacion.asm

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Suma.o ${OBJECTDIR}/Resta.o ${OBJECTDIR}/Multiplicacion.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Suma.o.d ${OBJECTDIR}/Resta.o.d ${OBJECTDIR}/Multiplicacion.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Suma.o ${OBJECTDIR}/Resta.o ${OBJECTDIR}/Multiplicacion.o

# Source Files
SOURCEFILES=Suma.asm Resta.asm Multiplicacion.asm



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18f4550
MP_LINKER_DEBUG_OPTION= 
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Suma.o: Suma.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Suma.o.d 
	@${RM} ${OBJECTDIR}/Suma.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Suma.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/Suma.lst\\\" -e\\\"${OBJECTDIR}/Suma.err\\\" $(ASM_OPTIONS)    -o\\\"${OBJECTDIR}/Suma.o\\\" \\\"Suma.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Suma.o"
	@${FIXDEPS} "${OBJECTDIR}/Suma.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Resta.o: Resta.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Resta.o.d 
	@${RM} ${OBJECTDIR}/Resta.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Resta.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/Resta.lst\\\" -e\\\"${OBJECTDIR}/Resta.err\\\" $(ASM_OPTIONS)    -o\\\"${OBJECTDIR}/Resta.o\\\" \\\"Resta.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Resta.o"
	@${FIXDEPS} "${OBJECTDIR}/Resta.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Multiplicacion.o: Multiplicacion.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Multiplicacion.o.d 
	@${RM} ${OBJECTDIR}/Multiplicacion.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Multiplicacion.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/Multiplicacion.lst\\\" -e\\\"${OBJECTDIR}/Multiplicacion.err\\\" $(ASM_OPTIONS)    -o\\\"${OBJECTDIR}/Multiplicacion.o\\\" \\\"Multiplicacion.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Multiplicacion.o"
	@${FIXDEPS} "${OBJECTDIR}/Multiplicacion.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
else
${OBJECTDIR}/Suma.o: Suma.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Suma.o.d 
	@${RM} ${OBJECTDIR}/Suma.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Suma.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/Suma.lst\\\" -e\\\"${OBJECTDIR}/Suma.err\\\" $(ASM_OPTIONS)    -o\\\"${OBJECTDIR}/Suma.o\\\" \\\"Suma.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Suma.o"
	@${FIXDEPS} "${OBJECTDIR}/Suma.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Resta.o: Resta.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Resta.o.d 
	@${RM} ${OBJECTDIR}/Resta.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Resta.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/Resta.lst\\\" -e\\\"${OBJECTDIR}/Resta.err\\\" $(ASM_OPTIONS)    -o\\\"${OBJECTDIR}/Resta.o\\\" \\\"Resta.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Resta.o"
	@${FIXDEPS} "${OBJECTDIR}/Resta.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/Multiplicacion.o: Multiplicacion.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Multiplicacion.o.d 
	@${RM} ${OBJECTDIR}/Multiplicacion.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/Multiplicacion.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION) -u  -l\\\"${OBJECTDIR}/Multiplicacion.lst\\\" -e\\\"${OBJECTDIR}/Multiplicacion.err\\\" $(ASM_OPTIONS)    -o\\\"${OBJECTDIR}/Multiplicacion.o\\\" \\\"Multiplicacion.asm\\\" 
	@${DEP_GEN} -d "${OBJECTDIR}/Multiplicacion.o"
	@${FIXDEPS} "${OBJECTDIR}/Multiplicacion.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w -x -u_DEBUG -z__ICD2RAM=1 -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -odist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
else
dist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -odist/${CND_CONF}/${IMAGE_TYPE}/SumaPortAPortB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
