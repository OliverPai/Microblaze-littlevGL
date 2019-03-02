################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_hal/lv_hal_disp.c \
../src/littlevGL/lv_hal/lv_hal_indev.c \
../src/littlevGL/lv_hal/lv_hal_tick.c 

OBJS += \
./src/littlevGL/lv_hal/lv_hal_disp.o \
./src/littlevGL/lv_hal/lv_hal_indev.o \
./src/littlevGL/lv_hal/lv_hal_tick.o 

C_DEPS += \
./src/littlevGL/lv_hal/lv_hal_disp.d \
./src/littlevGL/lv_hal/lv_hal_indev.d \
./src/littlevGL/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_hal/%.o: ../src/littlevGL/lv_hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


