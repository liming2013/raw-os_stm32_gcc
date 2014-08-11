SPDPATH = $(ROOT)/libs/STM32F10x_StdPeriph_Driver

DRIVERINC = $(SPDPATH)/inc

DRIVERSRC = \
    $(SPDPATH)/src/misc.c \
    $(SPDPATH)/stm32f10x_adc.c \
    $(SPDPATH)/stm32f10x_bkp.c \
    $(SPDPATH)/stm32f10x_can.c \
    $(SPDPATH)/stm32f10x_cec.c \
    $(SPDPATH)/stm32f10x_crc.c \
    $(SPDPATH)/stm32f10x_dac.c \
    $(SPDPATH)/stm32f10x_dbgmcu.c \
    $(SPDPATH)/stm32f10x_dma.c \
    $(SPDPATH)/stm32f10x_exti.c \
    $(SPDPATH)/stm32f10x_flash.c \
    $(SPDPATH)/stm32f10x_fsmc.c \
    $(SPDPATH)/stm32f10x_gpio.c \
    $(SPDPATH)/stm32f10x_i2c.c \
    $(SPDPATH)/stm32f10x_iwdg.c \
    $(SPDPATH)/stm32f10x_pwr.c \
    $(SPDPATH)/stm32f10x_rcc.c \
    $(SPDPATH)/stm32f10x_rtc.c \
    $(SPDPATH)/stm32f10x_sdio.c \
    $(SPDPATH)/stm32f10x_spi.c \
    $(SPDPATH)/stm32f10x_tim.c \
    $(SPDPATH)/stm32f10x_usart.c \
    $(SPDPATH)/stm32f10x_wwdg.c
