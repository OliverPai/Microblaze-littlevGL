################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/drivers/gdisp/Fb24bpp/gdisp_lld_fb24bpp.c 

OBJS += \
./src/ugfx/drivers/gdisp/Fb24bpp/gdisp_lld_fb24bpp.o 

C_DEPS += \
./src/ugfx/drivers/gdisp/Fb24bpp/gdisp_lld_fb24bpp.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/drivers/gdisp/Fb24bpp/%.o: ../src/ugfx/drivers/gdisp/Fb24bpp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


