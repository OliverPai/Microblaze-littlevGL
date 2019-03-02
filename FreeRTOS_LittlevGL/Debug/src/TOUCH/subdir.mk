################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/TOUCH/ctiic.c \
../src/TOUCH/gt9147.c \
../src/TOUCH/touch.c 

OBJS += \
./src/TOUCH/ctiic.o \
./src/TOUCH/gt9147.o \
./src/TOUCH/touch.o 

C_DEPS += \
./src/TOUCH/ctiic.d \
./src/TOUCH/gt9147.d \
./src/TOUCH/touch.d 


# Each subdirectory must supply rules for building sources it contributes
src/TOUCH/%.o: ../src/TOUCH/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_LittlevGL_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


