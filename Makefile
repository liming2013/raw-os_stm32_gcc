##############################################################################
# Build global options
# NOTE: Can be overridden externally.
#

# Compiler options
USE_OPT = -O0 -fomit-frame-pointer -falign-functions=16

# C specific options
USE_COPT = 

# C++ specific options
USE_CPPOPT = -fno-rtti

# Linker extra options here.
USE_LDOPT = 

# Link time optimizations (LTO)
USE_LTO = yes

# Compile the application in THUMB mode.
USE_THUMB = yes
#
# Build global options
##############################################################################

##############################################################################
# Architecture or project specific options
#

# Enables the use of FPU on Cortex-M4.
ifeq ($(USE_FPU),)
  USE_FPU = no
endif

# For STM32 Low density devices 
#DEVICE = STM32F10X_LD
# For STM32 Low density Value line devices 
#DEVICE = STM32F10X_LD_VL
# For STM32 Medium density devices 
DEVICE = STM32F10X_MD
# For STM32 Medium density Value line devices 
#DEVICE = STM32F10X_MD_VL
# For STM32 High density devices 
#DEVICE = STM32F10X_HD
# For STM32 XL density devices 
#DEVICE = STM32F10X_XL
# For STM32 Connectivity line devices 
#DEVICE = STM32F10X_CL

#
# Architecture or project specific options
##############################################################################

##############################################################################
# Project, sources and paths
#

# Define project name here
PROJECT = raw-os

# Imported source files and paths
ROOT = .
include $(ROOT)/raw-os/kernel.mk
include $(ROOT)/rawport/port.mk
include $(ROOT)/libs/STM32F10x_StdPeriph_Driver/driver.mk
include $(ROOT)/libs/CMSIS/CM3/cmsis.mk

# Define linker script file here
LDSCRIPT = $(ROOT)/ldscripts/sections.ld

# C sources that can be compiled in ARM or THUMB mode depending on the global
# setting.
CSRC = $(PORTSRC) \
       $(KERNELSRC) \
       $(DRIVERSRC) \
       $(CMSISSRC) \
	   $(ROOT)/src/main.c

# C++ sources that can be compiled in ARM or THUMB mode depending on the global
# setting.
CPPSRC =

# C sources to be compiled in ARM mode regardless of the global setting.
# NOTE: Mixing ARM and THUMB mode enables the -mthumb-interwork compiler
#       option that results in lower performance and larger code size.
ACSRC =

# C++ sources to be compiled in ARM mode regardless of the global setting.
# NOTE: Mixing ARM and THUMB mode enables the -mthumb-interwork compiler
#       option that results in lower performance and larger code size.
ACPPSRC =

# C sources to be compiled in THUMB mode regardless of the global setting.
# NOTE: Mixing ARM and THUMB mode enables the -mthumb-interwork compiler
#       option that results in lower performance and larger code size.
TCSRC =

# C sources to be compiled in THUMB mode regardless of the global setting.
# NOTE: Mixing ARM and THUMB mode enables the -mthumb-interwork compiler
#       option that results in lower performance and larger code size.
TCPPSRC =

# List ASM source files here
ASMXSRC = $(STARTUPXASM) $(PORTXASM)
ASMSRC = $(STARTUPASM)

INCDIR = $(PORTINC) $(KERNELINC) $(DRIVERINC) $(CMSISINC) \
		 $(ROOT)/inc

#
# Project, sources and paths
##############################################################################

##############################################################################
# Compiler settings
#

MCU  = cortex-m3

TRGT = arm-none-eabi-
CC   = $(TRGT)gcc
CPPC = $(TRGT)g++
LD   = $(TRGT)gcc
CP   = $(TRGT)objcopy
AS   = $(TRGT)gcc -x assembler-with-cpp
AR   = $(TRGT)ar
OD   = $(TRGT)objdump
SZ   = $(TRGT)size
HEX  = $(CP) -O ihex
BIN  = $(CP) -O binary

# ARM-specific options here
AOPT =

# THUMB-specific options here
TOPT = -mthumb -DTHUMB

# Define C warning options here
CWARN = -Wall -Werror -Wextra -Wstrict-prototypes

# Define C++ warning options here
CPPWARN = -Wall -Wextra

#
# Compiler settings
##############################################################################

##############################################################################
# Start of user section
#

# List all user C define here, like -D_DEBUG=1
UDEFS = -D$(DEVICE) -DUSE_STDPERIPH_DRIVER

# Define ASM defines here
UADEFS =

# List all user directories here
UINCDIR =

# List the user directory to look for the libraries here
ULIBDIR =

# List all user libraries here
ULIBS =

#
# End of user defines
##############################################################################

VPATH = $(ROOT)

include $(ROOT)/rules.mk
