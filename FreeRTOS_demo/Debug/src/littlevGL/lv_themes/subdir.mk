################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_themes/lv_theme.c \
../src/littlevGL/lv_themes/lv_theme_alien.c \
../src/littlevGL/lv_themes/lv_theme_default.c \
../src/littlevGL/lv_themes/lv_theme_material.c \
../src/littlevGL/lv_themes/lv_theme_mono.c \
../src/littlevGL/lv_themes/lv_theme_nemo.c \
../src/littlevGL/lv_themes/lv_theme_night.c \
../src/littlevGL/lv_themes/lv_theme_templ.c \
../src/littlevGL/lv_themes/lv_theme_zen.c 

OBJS += \
./src/littlevGL/lv_themes/lv_theme.o \
./src/littlevGL/lv_themes/lv_theme_alien.o \
./src/littlevGL/lv_themes/lv_theme_default.o \
./src/littlevGL/lv_themes/lv_theme_material.o \
./src/littlevGL/lv_themes/lv_theme_mono.o \
./src/littlevGL/lv_themes/lv_theme_nemo.o \
./src/littlevGL/lv_themes/lv_theme_night.o \
./src/littlevGL/lv_themes/lv_theme_templ.o \
./src/littlevGL/lv_themes/lv_theme_zen.o 

C_DEPS += \
./src/littlevGL/lv_themes/lv_theme.d \
./src/littlevGL/lv_themes/lv_theme_alien.d \
./src/littlevGL/lv_themes/lv_theme_default.d \
./src/littlevGL/lv_themes/lv_theme_material.d \
./src/littlevGL/lv_themes/lv_theme_mono.d \
./src/littlevGL/lv_themes/lv_theme_nemo.d \
./src/littlevGL/lv_themes/lv_theme_night.d \
./src/littlevGL/lv_themes/lv_theme_templ.d \
./src/littlevGL/lv_themes/lv_theme_zen.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_themes/%.o: ../src/littlevGL/lv_themes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


