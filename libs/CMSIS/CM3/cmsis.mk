CHIPPATH = $(ROOT)/libs/CMSIS/CM3/DeviceSupport/ST/STM32F10x

CMSISINC = \
    $(CHIPPATH) \
    $(ROOT)/libs/CMSIS/CM3/CoreSupport

CMSISSRC = \
    $(CHIPPATH)/system_stm32f10x.c \
    $(ROOT)/libs/CMSIS/CM3/CoreSupport/core_cm3.c

CMSISASM = \
	$(CHIPPATH)/startup/gcc_ride7/startup_stm32f10x_hd.S
