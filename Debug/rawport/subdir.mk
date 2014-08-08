################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rawport/port.c \
../rawport/port_hook.c \
../rawport/raw_trace_port.c \
../rawport/user_extension.c 

S_UPPER_SRCS += \
../rawport/context_gcc.S 

OBJS += \
./rawport/context_gcc.o \
./rawport/port.o \
./rawport/port_hook.o \
./rawport/raw_trace_port.o \
./rawport/user_extension.o 

C_DEPS += \
./rawport/port.d \
./rawport/port_hook.d \
./rawport/raw_trace_port.d \
./rawport/user_extension.d 

S_UPPER_DEPS += \
./rawport/context_gcc.d 


# Each subdirectory must supply rules for building sources it contributes
rawport/%.o: ../rawport/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

rawport/%.o: ../rawport/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -I../inc -I"../libs\CMSIS\CM3\DeviceSupport\ST\STM32F10x" -I"../libs\CMSIS\CM3\CoreSupport" -I"../libs\STM32F10x_StdPeriph_Driver\inc" -I../rawport -I"../raw-os\include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


