################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/lv_themes/lv_theme.c \
../src/lvgl/lv_themes/lv_theme_alien.c \
../src/lvgl/lv_themes/lv_theme_default.c \
../src/lvgl/lv_themes/lv_theme_material.c \
../src/lvgl/lv_themes/lv_theme_mono.c \
../src/lvgl/lv_themes/lv_theme_nemo.c \
../src/lvgl/lv_themes/lv_theme_night.c \
../src/lvgl/lv_themes/lv_theme_templ.c \
../src/lvgl/lv_themes/lv_theme_zen.c 

OBJS += \
./src/lvgl/lv_themes/lv_theme.o \
./src/lvgl/lv_themes/lv_theme_alien.o \
./src/lvgl/lv_themes/lv_theme_default.o \
./src/lvgl/lv_themes/lv_theme_material.o \
./src/lvgl/lv_themes/lv_theme_mono.o \
./src/lvgl/lv_themes/lv_theme_nemo.o \
./src/lvgl/lv_themes/lv_theme_night.o \
./src/lvgl/lv_themes/lv_theme_templ.o \
./src/lvgl/lv_themes/lv_theme_zen.o 

C_DEPS += \
./src/lvgl/lv_themes/lv_theme.d \
./src/lvgl/lv_themes/lv_theme_alien.d \
./src/lvgl/lv_themes/lv_theme_default.d \
./src/lvgl/lv_themes/lv_theme_material.d \
./src/lvgl/lv_themes/lv_theme_mono.d \
./src/lvgl/lv_themes/lv_theme_nemo.d \
./src/lvgl/lv_themes/lv_theme_night.d \
./src/lvgl/lv_themes/lv_theme_templ.d \
./src/lvgl/lv_themes/lv_theme_zen.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/lv_themes/%.o: ../src/lvgl/lv_themes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_LittlevGL_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


