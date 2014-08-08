################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/CMSIS/CM3/CoreSupport/core_cm3.c 

OBJS += \
./libs/CMSIS/CM3/CoreSupport/core_cm3.o 

C_DEPS += \
./libs/CMSIS/CM3/CoreSupport/core_cm3.d 


# Each subdirectory must supply rules for building sources it contributes
libs/CMSIS/CM3/CoreSupport/%.o: ../libs/CMSIS/CM3/CoreSupport/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -I../inc -I"../libs\CMSIS\CM3\DeviceSupport\ST\STM32F10x" -I"../libs\CMSIS\CM3\CoreSupport" -I"../libs\STM32F10x_StdPeriph_Driver\inc" -I../rawport -I"../raw-os\include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

