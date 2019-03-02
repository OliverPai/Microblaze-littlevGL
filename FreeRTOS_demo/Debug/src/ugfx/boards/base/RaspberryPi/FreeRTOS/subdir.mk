################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/ugfx/boards/base/RaspberryPi/FreeRTOS/raspberrypi.ld 

S_SRCS += \
../src/ugfx/boards/base/RaspberryPi/FreeRTOS/startup.s 

C_SRCS += \
../src/ugfx/boards/base/RaspberryPi/FreeRTOS/freertos_main.c \
../src/ugfx/boards/base/RaspberryPi/FreeRTOS/gpio.c \
../src/ugfx/boards/base/RaspberryPi/FreeRTOS/interrupts.c \
../src/ugfx/boards/base/RaspberryPi/FreeRTOS/uart.c 

OBJS += \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/freertos_main.o \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/gpio.o \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/interrupts.o \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/startup.o \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/uart.o 

C_DEPS += \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/freertos_main.d \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/gpio.d \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/interrupts.d \
./src/ugfx/boards/base/RaspberryPi/FreeRTOS/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/boards/base/RaspberryPi/FreeRTOS/%.o: ../src/ugfx/boards/base/RaspberryPi/FreeRTOS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ugfx/boards/base/RaspberryPi/FreeRTOS/%.o: ../src/ugfx/boards/base/RaspberryPi/FreeRTOS/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc assembler'
	mb-as -mlittle-endian -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


