################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/board.c \
../src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/flash_memory.c 

OBJS += \
./src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/board.o \
./src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/flash_memory.o 

C_DEPS += \
./src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/board.d \
./src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/flash_memory.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/%.o: ../src/ugfx/boards/base/Mikromedia-Plus-STM32-M4/ChibiOS_Board/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


