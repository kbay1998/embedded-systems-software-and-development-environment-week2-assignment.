#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************
#******************************************************************************
# 
#--- if statement to distinguish between platforms ---
ifeq ($(PLATFORM),HOST)
# Host platform
SOURCES = main.c\
memory.c
# paths for Host platform
INCLUDES = -I../include/common \
	-I../src
else ifeq ($(PLATFORM),MSP432)
# MSP432 platform
# Source files for MSP432 platform
SOURCES = main.c \
	memory.c \
	startup_msp432p401r_gcc.c \
	system_msp432p401r.c \
	interrupts_msp432p401r_gcc.c
# paths for MSP432 platform
INCLUDES = -I../include/common \
	-I../include/msp432 \
	-I../include/CMSIS \
	-I../src
endif