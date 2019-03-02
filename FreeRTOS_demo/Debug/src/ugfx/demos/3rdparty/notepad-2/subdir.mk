################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/demos/3rdparty/notepad-2/main.c \
../src/ugfx/demos/3rdparty/notepad-2/notepadApp.c \
../src/ugfx/demos/3rdparty/notepad-2/notepadCore.c 

OBJS += \
./src/ugfx/demos/3rdparty/notepad-2/main.o \
./src/ugfx/demos/3rdparty/notepad-2/notepadApp.o \
./src/ugfx/demos/3rdparty/notepad-2/notepadCore.o 

C_DEPS += \
./src/ugfx/demos/3rdparty/notepad-2/main.d \
./src/ugfx/demos/3rdparty/notepad-2/notepadApp.d \
./src/ugfx/demos/3rdparty/notepad-2/notepadCore.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/demos/3rdparty/notepad-2/%.o: ../src/ugfx/demos/3rdparty/notepad-2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


