################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/lv_draw/lv_draw.c \
../src/lvgl/lv_draw/lv_draw_arc.c \
../src/lvgl/lv_draw/lv_draw_img.c \
../src/lvgl/lv_draw/lv_draw_label.c \
../src/lvgl/lv_draw/lv_draw_line.c \
../src/lvgl/lv_draw/lv_draw_rbasic.c \
../src/lvgl/lv_draw/lv_draw_rect.c \
../src/lvgl/lv_draw/lv_draw_triangle.c \
../src/lvgl/lv_draw/lv_draw_vbasic.c 

OBJS += \
./src/lvgl/lv_draw/lv_draw.o \
./src/lvgl/lv_draw/lv_draw_arc.o \
./src/lvgl/lv_draw/lv_draw_img.o \
./src/lvgl/lv_draw/lv_draw_label.o \
./src/lvgl/lv_draw/lv_draw_line.o \
./src/lvgl/lv_draw/lv_draw_rbasic.o \
./src/lvgl/lv_draw/lv_draw_rect.o \
./src/lvgl/lv_draw/lv_draw_triangle.o \
./src/lvgl/lv_draw/lv_draw_vbasic.o 

C_DEPS += \
./src/lvgl/lv_draw/lv_draw.d \
./src/lvgl/lv_draw/lv_draw_arc.d \
./src/lvgl/lv_draw/lv_draw_img.d \
./src/lvgl/lv_draw/lv_draw_label.d \
./src/lvgl/lv_draw/lv_draw_line.d \
./src/lvgl/lv_draw/lv_draw_rbasic.d \
./src/lvgl/lv_draw/lv_draw_rect.d \
./src/lvgl/lv_draw/lv_draw_triangle.d \
./src/lvgl/lv_draw/lv_draw_vbasic.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/lv_draw/%.o: ../src/lvgl/lv_draw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_LittlevGL_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


