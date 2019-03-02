################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gdisp/gdisp.c \
../src/ugfx/src/gdisp/gdisp_fonts.c \
../src/ugfx/src/gdisp/gdisp_image.c \
../src/ugfx/src/gdisp/gdisp_image_bmp.c \
../src/ugfx/src/gdisp/gdisp_image_gif.c \
../src/ugfx/src/gdisp/gdisp_image_jpg.c \
../src/ugfx/src/gdisp/gdisp_image_native.c \
../src/ugfx/src/gdisp/gdisp_image_png.c \
../src/ugfx/src/gdisp/gdisp_mk.c \
../src/ugfx/src/gdisp/gdisp_pixmap.c 

OBJS += \
./src/ugfx/src/gdisp/gdisp.o \
./src/ugfx/src/gdisp/gdisp_fonts.o \
./src/ugfx/src/gdisp/gdisp_image.o \
./src/ugfx/src/gdisp/gdisp_image_bmp.o \
./src/ugfx/src/gdisp/gdisp_image_gif.o \
./src/ugfx/src/gdisp/gdisp_image_jpg.o \
./src/ugfx/src/gdisp/gdisp_image_native.o \
./src/ugfx/src/gdisp/gdisp_image_png.o \
./src/ugfx/src/gdisp/gdisp_mk.o \
./src/ugfx/src/gdisp/gdisp_pixmap.o 

C_DEPS += \
./src/ugfx/src/gdisp/gdisp.d \
./src/ugfx/src/gdisp/gdisp_fonts.d \
./src/ugfx/src/gdisp/gdisp_image.d \
./src/ugfx/src/gdisp/gdisp_image_bmp.d \
./src/ugfx/src/gdisp/gdisp_image_gif.d \
./src/ugfx/src/gdisp/gdisp_image_jpg.d \
./src/ugfx/src/gdisp/gdisp_image_native.d \
./src/ugfx/src/gdisp/gdisp_image_png.d \
./src/ugfx/src/gdisp/gdisp_mk.d \
./src/ugfx/src/gdisp/gdisp_pixmap.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gdisp/%.o: ../src/ugfx/src/gdisp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


