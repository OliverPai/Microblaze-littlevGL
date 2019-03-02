################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_porting/lv_port_disp_templ.c \
../src/littlevGL/lv_porting/lv_port_fs_templ.c \
../src/littlevGL/lv_porting/lv_port_indev_templ.c 

OBJS += \
./src/littlevGL/lv_porting/lv_port_disp_templ.o \
./src/littlevGL/lv_porting/lv_port_fs_templ.o \
./src/littlevGL/lv_porting/lv_port_indev_templ.o 

C_DEPS += \
./src/littlevGL/lv_porting/lv_port_disp_templ.d \
./src/littlevGL/lv_porting/lv_port_fs_templ.d \
./src/littlevGL/lv_porting/lv_port_indev_templ.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_porting/%.o: ../src/littlevGL/lv_porting/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


