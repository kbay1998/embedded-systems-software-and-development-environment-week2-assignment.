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

#------------------------------------------------------------------------------
# <Put a Description Here>
#
# 
#
# Build Targets:
#     <FILE>.i - generates preprocessed output of all c-programming implementation files;
# 						can be triggered by providing a single target name (e.g. make main.i);
# 		 <FILE>.asm - generates assembly output of all c programming implementation files & executable
# 						 can be triggered by providing a single target name (e.g. make main.asm);
# 		 <FILE>.o - generates the <FILE>.o object file;
# 						only for the specfic <FILE> file
#		 compile-all - generates all *.o files, but does not link the *.o files
# 		 build - generates all *.o files and link the *.o files into an executable
#      clean - removes all generated files, but not source files, header files and other included files/libs
#
# Platform Overrides:
#      PLATFORM - HOST or MSP432
#
#------------------------------------------------------------------------------
include sources.mk
# filenames
FILENAMES = $(SOURCES:.c=)
OBJECTS = $(SOURCES:.c=.o)
DEPENDENCIES = $(SOURCES:.c=.d)
TARGET = c1m2

#--- if statement to distinguish between platforms whether host or msp432 ---
ifeq ($(PLATFORM),HOST) 
# Host platform
# Platform Overrides for MSP432 platform
PLATFORM = HOST

# Compiler Flags and Defines for host platform
CC = gcc
LDFLAGS = -Wl,-Map=$(TARGET).map 
CFLAGS = -Wall -Werror -g -std=c99 -O0
CPPFLAGS = -M
dump = objdump --disassemble $(TARGET).out > $(TARGET).asm
size = size -Ad $(TARGET).out >$(TARGET)_SIZE.report

else ifeq ($(PLATFORM),MSP432) 
# MSP432 platform
# Platform Overrides for MSP432 platform
PLATFORM = MSP432

# Architectures Specific Flags for only MSP432 platform
LINKER_FILE = ../msp432p401r.lds 
CPU = cortex-m4
ARCH = armv7e-m
SPECS = nosys.specs

# Compiler Flags and Defines for MSP432 platform
CC = arm-none-eabi-gcc
LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
CFLAGS = -mcpu=$(CPU) -march=$(ARCH) --specs=$(SPECS) -Wall -Werror -g -std=c99 -O0
CPPFLAGS = -M
dump = arm-none-eabi-objdump --disassemble $(TARGET).out > $(TARGET).asm
size = arm-none-eabi-size -Ad $(TARGET).out >$(TARGET)_SIZE.report
endif

# define blank string for new command in foreach loop
blank :=
define newcommand

$(blank)
endef

#foreach string for preprocessing
preprocessed = $(foreach filename, $(FILENAMES), $(newcommand) \
$(CC) -E $(INCLUDES) $(filename).c $(CFLAGS) -o $(filename).i -D$(PLATFORM))

#foreach string for assembling
assembled = $(foreach filename, $(FILENAMES), $(newcommand) \
$(CC) -S $(INCLUDES) $(filename).c $(CFLAGS) -o $(filename).asm -D$(PLATFORM))

#---BUILD TARGETS---

# Target support for %.i --> create for all implementation files a .i file
%.i: $(SOURCES)
	$(preprocessed)

# Target support for %.asm --> create for all implementation files .asm files or asembly language files  + for the exe an .asm file
%.asm: $(SOURCES) $(TARGET).out
	$(assembled)
	rm -f *.i *.o *.map
	$(dump)

# Target support for %.d --> create all dependecy files for source files or .c files
%.d : %.c
	$(CC) $(INCLUDES) $< $(CPPFLAGS) -o $@ -D$(PLATFORM)

# Target support for %.o --> convert only specified implementation file to .o or object files
%.o : %.c
	$(CC) -c $(INCLUDES) $< $(CFLAGS) -o $@ -D$(PLATFORM)

# Target support for compile-all --> convert all implementation files to .o
.PHONY: compile-all
compile-all: $(OBJECTS)

# Target support for build --> build final .out
.PHONY: build
build: $(TARGET).out $(DEPENDENCIES)

$(TARGET).out: $(OBJECTS)
	$(CC) $(INCLUDES) $^ $(CFLAGS) $(LDFLAGS) -o $@ -D$(PLATFORM)
	$(size)

# Target support for clean --> remove all *.i *.asm *.o *.out *.map *.d *.report files
.PHONY: clean
clean:
	rm -f *.i *.asm *.o *.out *.map *.d *.report