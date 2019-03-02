################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gdisp/mcufont/mf_bwfont.c \
../src/ugfx/src/gdisp/mcufont/mf_encoding.c \
../src/ugfx/src/gdisp/mcufont/mf_font.c \
../src/ugfx/src/gdisp/mcufont/mf_justify.c \
../src/ugfx/src/gdisp/mcufont/mf_kerning.c \
../src/ugfx/src/gdisp/mcufont/mf_rlefont.c \
../src/ugfx/src/gdisp/mcufont/mf_scaledfont.c \
../src/ugfx/src/gdisp/mcufont/mf_wordwrap.c 

OBJS += \
./src/ugfx/src/gdisp/mcufont/mf_bwfont.o \
./src/ugfx/src/gdisp/mcufont/mf_encoding.o \
./src/ugfx/src/gdisp/mcufont/mf_font.o \
./src/ugfx/src/gdisp/mcufont/mf_justify.o \
./src/ugfx/src/gdisp/mcufont/mf_kerning.o \
./src/ugfx/src/gdisp/mcufont/mf_rlefont.o \
./src/ugfx/src/gdisp/mcufont/mf_scaledfont.o \
./src/ugfx/src/gdisp/mcufont/mf_wordwrap.o 

C_DEPS += \
./src/ugfx/src/gdisp/mcufont/mf_bwfont.d \
./src/ugfx/src/gdisp/mcufont/mf_encoding.d \
./src/ugfx/src/gdisp/mcufont/mf_font.d \
./src/ugfx/src/gdisp/mcufont/mf_justify.d \
./src/ugfx/src/gdisp/mcufont/mf_kerning.d \
./src/ugfx/src/gdisp/mcufont/mf_rlefont.d \
./src/ugfx/src/gdisp/mcufont/mf_scaledfont.d \
./src/ugfx/src/gdisp/mcufont/mf_wordwrap.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gdisp/mcufont/%.o: ../src/ugfx/src/gdisp/mcufont/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


