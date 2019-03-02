################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/boards/base/FireBull-STM32F103-FB/chibios_board/board.c 

OBJS += \
./src/ugfx/boards/base/FireBull-STM32F103-FB/chibios_board/board.o 

C_DEPS += \
./src/ugfx/boards/base/FireBull-STM32F103-FB/chibios_board/board.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/boards/base/FireBull-STM32F103-FB/chibios_board/%.o: ../src/ugfx/boards/base/FireBull-STM32F103-FB/chibios_board/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


