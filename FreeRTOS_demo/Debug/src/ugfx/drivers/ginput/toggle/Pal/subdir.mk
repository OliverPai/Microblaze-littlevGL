################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/drivers/ginput/toggle/Pal/ginput_lld_toggle_Pal.c 

OBJS += \
./src/ugfx/drivers/ginput/toggle/Pal/ginput_lld_toggle_Pal.o 

C_DEPS += \
./src/ugfx/drivers/ginput/toggle/Pal/ginput_lld_toggle_Pal.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/drivers/ginput/toggle/Pal/%.o: ../src/ugfx/drivers/ginput/toggle/Pal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


