CHIPPATH = $(ROOT)/libs/CMSIS/CM3/DeviceSupport/ST/STM32F10x
STARTUPPATH = $(CHIPPATH)/startup/gcc_ride7

CMSISINC = \
    $(CHIPPATH) \
    $(ROOT)/libs/CMSIS/CM3/CoreSupport

CMSISSRC = \
    $(CHIPPATH)/system_stm32f10x.c \
    $(ROOT)/libs/CMSIS/CM3/CoreSupport/core_cm3.c

ifeq ($(DEVICE),STM32F10X_HD)
STARTUPXASM = $(STARTUPPATH)/startup_stm32f10x_hd.S
endif

ifeq ($(DEVICE),STM32F10X_HD_VL)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_hd_vl.s
endif

ifeq ($(DEVICE),STM32F10X_LD)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_ld.s
endif

ifeq ($(DEVICE),STM32F10X_LD_VL)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_ld_vl.s
endif

ifeq ($(DEVICE),STM32F10X_MD_VL)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_md_vl.s
endif

ifeq ($(DEVICE),STM32F10X_MD)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_md.s
endif

ifeq ($(DEVICE),STM32F10X_XL)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_xl.s
endif

ifeq ($(DEVICE),STM32F10X_CL)
STARTUPASM = $(STARTUPPATH)/startup_stm32f10x_cl.s
endif

