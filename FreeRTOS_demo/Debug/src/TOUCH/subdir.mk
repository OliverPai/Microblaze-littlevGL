################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/TOUCH/gt9147.cc \
../src/TOUCH/touch.cc 

CC_DEPS += \
./src/TOUCH/gt9147.d \
./src/TOUCH/touch.d 

OBJS += \
./src/TOUCH/gt9147.o \
./src/TOUCH/touch.o 


# Each subdirectory must supply rules for building sources it contributes
src/TOUCH/%.o: ../src/TOUCH/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


