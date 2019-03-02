################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/ugfx/boards/base/STM32F469i-Discovery/STM32_FLASH.ld 

S_SRCS += \
../src/ugfx/boards/base/STM32F469i-Discovery/startup_stm32f469xx.s 

C_SRCS += \
../src/ugfx/boards/base/STM32F469i-Discovery/otm8009a.c \
../src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_discovery_sdram.c \
../src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_it.c \
../src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_system.c \
../src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_ugfx.c 

OBJS += \
./src/ugfx/boards/base/STM32F469i-Discovery/otm8009a.o \
./src/ugfx/boards/base/STM32F469i-Discovery/startup_stm32f469xx.o \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_discovery_sdram.o \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_it.o \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_system.o \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_ugfx.o 

C_DEPS += \
./src/ugfx/boards/base/STM32F469i-Discovery/otm8009a.d \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_discovery_sdram.d \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_it.d \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_system.d \
./src/ugfx/boards/base/STM32F469i-Discovery/stm32f469i_raw32_ugfx.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/boards/base/STM32F469i-Discovery/%.o: ../src/ugfx/boards/base/STM32F469i-Discovery/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ugfx/boards/base/STM32F469i-Discovery/%.o: ../src/ugfx/boards/base/STM32F469i-Discovery/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc assembler'
	mb-as -mlittle-endian -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


