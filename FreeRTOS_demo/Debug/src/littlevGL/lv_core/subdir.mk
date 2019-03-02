################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_core/lv_group.c \
../src/littlevGL/lv_core/lv_indev.c \
../src/littlevGL/lv_core/lv_lang.c \
../src/littlevGL/lv_core/lv_obj.c \
../src/littlevGL/lv_core/lv_refr.c \
../src/littlevGL/lv_core/lv_style.c \
../src/littlevGL/lv_core/lv_vdb.c 

OBJS += \
./src/littlevGL/lv_core/lv_group.o \
./src/littlevGL/lv_core/lv_indev.o \
./src/littlevGL/lv_core/lv_lang.o \
./src/littlevGL/lv_core/lv_obj.o \
./src/littlevGL/lv_core/lv_refr.o \
./src/littlevGL/lv_core/lv_style.o \
./src/littlevGL/lv_core/lv_vdb.o 

C_DEPS += \
./src/littlevGL/lv_core/lv_group.d \
./src/littlevGL/lv_core/lv_indev.d \
./src/littlevGL/lv_core/lv_lang.d \
./src/littlevGL/lv_core/lv_obj.d \
./src/littlevGL/lv_core/lv_refr.d \
./src/littlevGL/lv_core/lv_style.d \
./src/littlevGL/lv_core/lv_vdb.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_core/%.o: ../src/littlevGL/lv_core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


