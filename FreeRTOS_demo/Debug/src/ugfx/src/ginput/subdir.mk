################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/ginput/ginput.c \
../src/ugfx/src/ginput/ginput_dial.c \
../src/ugfx/src/ginput/ginput_keyboard.c \
../src/ugfx/src/ginput/ginput_keyboard_microcode.c \
../src/ugfx/src/ginput/ginput_mk.c \
../src/ugfx/src/ginput/ginput_mouse.c \
../src/ugfx/src/ginput/ginput_toggle.c 

OBJS += \
./src/ugfx/src/ginput/ginput.o \
./src/ugfx/src/ginput/ginput_dial.o \
./src/ugfx/src/ginput/ginput_keyboard.o \
./src/ugfx/src/ginput/ginput_keyboard_microcode.o \
./src/ugfx/src/ginput/ginput_mk.o \
./src/ugfx/src/ginput/ginput_mouse.o \
./src/ugfx/src/ginput/ginput_toggle.o 

C_DEPS += \
./src/ugfx/src/ginput/ginput.d \
./src/ugfx/src/ginput/ginput_dial.d \
./src/ugfx/src/ginput/ginput_keyboard.d \
./src/ugfx/src/ginput/ginput_keyboard_microcode.d \
./src/ugfx/src/ginput/ginput_mk.d \
./src/ugfx/src/ginput/ginput_mouse.d \
./src/ugfx/src/ginput/ginput_toggle.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/ginput/%.o: ../src/ugfx/src/ginput/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


