################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gqueue/gqueue.c \
../src/ugfx/src/gqueue/gqueue_mk.c 

OBJS += \
./src/ugfx/src/gqueue/gqueue.o \
./src/ugfx/src/gqueue/gqueue_mk.o 

C_DEPS += \
./src/ugfx/src/gqueue/gqueue.d \
./src/ugfx/src/gqueue/gqueue_mk.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gqueue/%.o: ../src/ugfx/src/gqueue/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


