################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../raw-os/raw_block.c \
../raw-os/raw_byte.c \
../raw-os/raw_event.c \
../raw-os/raw_idle.c \
../raw-os/raw_idle_event.c \
../raw-os/raw_mqueue.c \
../raw-os/raw_mutex.c \
../raw-os/raw_obj.c \
../raw-os/raw_pend.c \
../raw-os/raw_queue.c \
../raw-os/raw_queue_buffer.c \
../raw-os/raw_queue_size.c \
../raw-os/raw_sched.c \
../raw-os/raw_sem.c \
../raw-os/raw_stat.c \
../raw-os/raw_stm.c \
../raw-os/raw_system.c \
../raw-os/raw_task.c \
../raw-os/raw_task_0.c \
../raw-os/raw_task_queue_size.c \
../raw-os/raw_task_sem.c \
../raw-os/raw_tick.c \
../raw-os/raw_timer.c 

OBJS += \
./raw-os/raw_block.o \
./raw-os/raw_byte.o \
./raw-os/raw_event.o \
./raw-os/raw_idle.o \
./raw-os/raw_idle_event.o \
./raw-os/raw_mqueue.o \
./raw-os/raw_mutex.o \
./raw-os/raw_obj.o \
./raw-os/raw_pend.o \
./raw-os/raw_queue.o \
./raw-os/raw_queue_buffer.o \
./raw-os/raw_queue_size.o \
./raw-os/raw_sched.o \
./raw-os/raw_sem.o \
./raw-os/raw_stat.o \
./raw-os/raw_stm.o \
./raw-os/raw_system.o \
./raw-os/raw_task.o \
./raw-os/raw_task_0.o \
./raw-os/raw_task_queue_size.o \
./raw-os/raw_task_sem.o \
./raw-os/raw_tick.o \
./raw-os/raw_timer.o 

C_DEPS += \
./raw-os/raw_block.d \
./raw-os/raw_byte.d \
./raw-os/raw_event.d \
./raw-os/raw_idle.d \
./raw-os/raw_idle_event.d \
./raw-os/raw_mqueue.d \
./raw-os/raw_mutex.d \
./raw-os/raw_obj.d \
./raw-os/raw_pend.d \
./raw-os/raw_queue.d \
./raw-os/raw_queue_buffer.d \
./raw-os/raw_queue_size.d \
./raw-os/raw_sched.d \
./raw-os/raw_sem.d \
./raw-os/raw_stat.d \
./raw-os/raw_stm.d \
./raw-os/raw_system.d \
./raw-os/raw_task.d \
./raw-os/raw_task_0.d \
./raw-os/raw_task_queue_size.d \
./raw-os/raw_task_sem.d \
./raw-os/raw_tick.d \
./raw-os/raw_timer.d 


# Each subdirectory must supply rules for building sources it contributes
raw-os/%.o: ../raw-os/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -I../inc -I"../libs\CMSIS\CM3\DeviceSupport\ST\STM32F10x" -I"../libs\CMSIS\CM3\CoreSupport" -I"../libs\STM32F10x_StdPeriph_Driver\inc" -I../rawport -I"../raw-os\include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


