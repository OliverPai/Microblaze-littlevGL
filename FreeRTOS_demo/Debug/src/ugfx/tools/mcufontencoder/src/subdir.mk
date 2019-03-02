################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/ugfx/tools/mcufontencoder/src/bdf_import.cc \
../src/ugfx/tools/mcufontencoder/src/datafile.cc \
../src/ugfx/tools/mcufontencoder/src/encode_rlefont.cc \
../src/ugfx/tools/mcufontencoder/src/export_bwfont.cc \
../src/ugfx/tools/mcufontencoder/src/export_rlefont.cc \
../src/ugfx/tools/mcufontencoder/src/exporttools.cc \
../src/ugfx/tools/mcufontencoder/src/freetype_import.cc \
../src/ugfx/tools/mcufontencoder/src/importtools.cc \
../src/ugfx/tools/mcufontencoder/src/main.cc \
../src/ugfx/tools/mcufontencoder/src/optimize_rlefont.cc 

CC_DEPS += \
./src/ugfx/tools/mcufontencoder/src/bdf_import.d \
./src/ugfx/tools/mcufontencoder/src/datafile.d \
./src/ugfx/tools/mcufontencoder/src/encode_rlefont.d \
./src/ugfx/tools/mcufontencoder/src/export_bwfont.d \
./src/ugfx/tools/mcufontencoder/src/export_rlefont.d \
./src/ugfx/tools/mcufontencoder/src/exporttools.d \
./src/ugfx/tools/mcufontencoder/src/freetype_import.d \
./src/ugfx/tools/mcufontencoder/src/importtools.d \
./src/ugfx/tools/mcufontencoder/src/main.d \
./src/ugfx/tools/mcufontencoder/src/optimize_rlefont.d 

OBJS += \
./src/ugfx/tools/mcufontencoder/src/bdf_import.o \
./src/ugfx/tools/mcufontencoder/src/datafile.o \
./src/ugfx/tools/mcufontencoder/src/encode_rlefont.o \
./src/ugfx/tools/mcufontencoder/src/export_bwfont.o \
./src/ugfx/tools/mcufontencoder/src/export_rlefont.o \
./src/ugfx/tools/mcufontencoder/src/exporttools.o \
./src/ugfx/tools/mcufontencoder/src/freetype_import.o \
./src/ugfx/tools/mcufontencoder/src/importtools.o \
./src/ugfx/tools/mcufontencoder/src/main.o \
./src/ugfx/tools/mcufontencoder/src/optimize_rlefont.o 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/tools/mcufontencoder/src/%.o: ../src/ugfx/tools/mcufontencoder/src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


