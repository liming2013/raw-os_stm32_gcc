SPDPATH = $(ROOT)/libs/STM32F10x_StdPeriph_Driver

DRIVERINC = $(SPDPATH)/inc

DRIVERSRC = \
    $(SPDPATH)/src/misc.c \
    $(SPDPATH)/src/stm32f10x_adc.c \
    $(SPDPATH)/src/stm32f10x_bkp.c \
    $(SPDPATH)/src/stm32f10x_can.c \
    $(SPDPATH)/src/stm32f10x_cec.c \
    $(SPDPATH)/src/stm32f10x_crc.c \
    $(SPDPATH)/src/stm32f10x_dac.c \
    $(SPDPATH)/src/stm32f10x_dbgmcu.c \
    $(SPDPATH)/src/stm32f10x_dma.c \
    $(SPDPATH)/src/stm32f10x_exti.c \
    $(SPDPATH)/src/stm32f10x_flash.c \
    $(SPDPATH)/src/stm32f10x_fsmc.c \
    $(SPDPATH)/src/stm32f10x_gpio.c \
    $(SPDPATH)/src/stm32f10x_i2c.c \
    $(SPDPATH)/src/stm32f10x_iwdg.c \
    $(SPDPATH)/src/stm32f10x_pwr.c \
    $(SPDPATH)/src/stm32f10x_rcc.c \
    $(SPDPATH)/src/stm32f10x_rtc.c \
    $(SPDPATH)/src/stm32f10x_sdio.c \
    $(SPDPATH)/src/stm32f10x_spi.c \
    $(SPDPATH)/src/stm32f10x_tim.c \
    $(SPDPATH)/src/stm32f10x_usart.c \
    $(SPDPATH)/src/stm32f10x_wwdg.c
