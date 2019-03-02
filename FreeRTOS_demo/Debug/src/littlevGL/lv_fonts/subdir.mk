################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_fonts/lv_font_builtin.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_10.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_10_cyrillic.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_10_latin_sup.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_20.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_20_cyrillic.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_20_latin_sup.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_30.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_30_cyrillic.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_30_latin_sup.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_40.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_40_cyrillic.c \
../src/littlevGL/lv_fonts/lv_font_dejavu_40_latin_sup.c \
../src/littlevGL/lv_fonts/lv_font_monospace_8.c \
../src/littlevGL/lv_fonts/lv_font_symbol_10.c \
../src/littlevGL/lv_fonts/lv_font_symbol_20.c \
../src/littlevGL/lv_fonts/lv_font_symbol_30.c \
../src/littlevGL/lv_fonts/lv_font_symbol_40.c 

OBJS += \
./src/littlevGL/lv_fonts/lv_font_builtin.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_10.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_10_cyrillic.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_10_latin_sup.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_20.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_20_cyrillic.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_20_latin_sup.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_30.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_30_cyrillic.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_30_latin_sup.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_40.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_40_cyrillic.o \
./src/littlevGL/lv_fonts/lv_font_dejavu_40_latin_sup.o \
./src/littlevGL/lv_fonts/lv_font_monospace_8.o \
./src/littlevGL/lv_fonts/lv_font_symbol_10.o \
./src/littlevGL/lv_fonts/lv_font_symbol_20.o \
./src/littlevGL/lv_fonts/lv_font_symbol_30.o \
./src/littlevGL/lv_fonts/lv_font_symbol_40.o 

C_DEPS += \
./src/littlevGL/lv_fonts/lv_font_builtin.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_10.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_10_cyrillic.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_10_latin_sup.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_20.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_20_cyrillic.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_20_latin_sup.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_30.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_30_cyrillic.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_30_latin_sup.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_40.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_40_cyrillic.d \
./src/littlevGL/lv_fonts/lv_font_dejavu_40_latin_sup.d \
./src/littlevGL/lv_fonts/lv_font_monospace_8.d \
./src/littlevGL/lv_fonts/lv_font_symbol_10.d \
./src/littlevGL/lv_fonts/lv_font_symbol_20.d \
./src/littlevGL/lv_fonts/lv_font_symbol_30.d \
./src/littlevGL/lv_fonts/lv_font_symbol_40.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_fonts/%.o: ../src/littlevGL/lv_fonts/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


