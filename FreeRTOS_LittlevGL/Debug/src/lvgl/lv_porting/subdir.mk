################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/lv_porting/lv_port_disp.c \
../src/lvgl/lv_porting/lv_port_fs_templ.c \
../src/lvgl/lv_porting/lv_port_indev.c 

OBJS += \
./src/lvgl/lv_porting/lv_port_disp.o \
./src/lvgl/lv_porting/lv_port_fs_templ.o \
./src/lvgl/lv_porting/lv_port_indev.o 

C_DEPS += \
./src/lvgl/lv_porting/lv_port_disp.d \
./src/lvgl/lv_porting/lv_port_fs_templ.d \
./src/lvgl/lv_porting/lv_port_indev.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/lv_porting/%.o: ../src/lvgl/lv_porting/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_LittlevGL_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


