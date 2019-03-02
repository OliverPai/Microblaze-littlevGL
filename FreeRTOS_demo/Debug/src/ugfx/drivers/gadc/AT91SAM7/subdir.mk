################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/drivers/gadc/AT91SAM7/gadc_lld_AT91SAM7.c 

OBJS += \
./src/ugfx/drivers/gadc/AT91SAM7/gadc_lld_AT91SAM7.o 

C_DEPS += \
./src/ugfx/drivers/gadc/AT91SAM7/gadc_lld_AT91SAM7.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/drivers/gadc/AT91SAM7/%.o: ../src/ugfx/drivers/gadc/AT91SAM7/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


