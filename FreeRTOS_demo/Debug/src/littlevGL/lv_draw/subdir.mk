################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_draw/lv_draw.c \
../src/littlevGL/lv_draw/lv_draw_arc.c \
../src/littlevGL/lv_draw/lv_draw_img.c \
../src/littlevGL/lv_draw/lv_draw_label.c \
../src/littlevGL/lv_draw/lv_draw_line.c \
../src/littlevGL/lv_draw/lv_draw_rbasic.c \
../src/littlevGL/lv_draw/lv_draw_rect.c \
../src/littlevGL/lv_draw/lv_draw_triangle.c \
../src/littlevGL/lv_draw/lv_draw_vbasic.c 

OBJS += \
./src/littlevGL/lv_draw/lv_draw.o \
./src/littlevGL/lv_draw/lv_draw_arc.o \
./src/littlevGL/lv_draw/lv_draw_img.o \
./src/littlevGL/lv_draw/lv_draw_label.o \
./src/littlevGL/lv_draw/lv_draw_line.o \
./src/littlevGL/lv_draw/lv_draw_rbasic.o \
./src/littlevGL/lv_draw/lv_draw_rect.o \
./src/littlevGL/lv_draw/lv_draw_triangle.o \
./src/littlevGL/lv_draw/lv_draw_vbasic.o 

C_DEPS += \
./src/littlevGL/lv_draw/lv_draw.d \
./src/littlevGL/lv_draw/lv_draw_arc.d \
./src/littlevGL/lv_draw/lv_draw_img.d \
./src/littlevGL/lv_draw/lv_draw_label.d \
./src/littlevGL/lv_draw/lv_draw_line.d \
./src/littlevGL/lv_draw/lv_draw_rbasic.d \
./src/littlevGL/lv_draw/lv_draw_rect.d \
./src/littlevGL/lv_draw/lv_draw_triangle.d \
./src/littlevGL/lv_draw/lv_draw_vbasic.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_draw/%.o: ../src/littlevGL/lv_draw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


