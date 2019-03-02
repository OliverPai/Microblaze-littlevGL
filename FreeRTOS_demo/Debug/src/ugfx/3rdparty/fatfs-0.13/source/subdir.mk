################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/3rdparty/fatfs-0.13/source/diskio.c \
../src/ugfx/3rdparty/fatfs-0.13/source/ff.c \
../src/ugfx/3rdparty/fatfs-0.13/source/ffsystem.c \
../src/ugfx/3rdparty/fatfs-0.13/source/ffunicode.c 

OBJS += \
./src/ugfx/3rdparty/fatfs-0.13/source/diskio.o \
./src/ugfx/3rdparty/fatfs-0.13/source/ff.o \
./src/ugfx/3rdparty/fatfs-0.13/source/ffsystem.o \
./src/ugfx/3rdparty/fatfs-0.13/source/ffunicode.o 

C_DEPS += \
./src/ugfx/3rdparty/fatfs-0.13/source/diskio.d \
./src/ugfx/3rdparty/fatfs-0.13/source/ff.d \
./src/ugfx/3rdparty/fatfs-0.13/source/ffsystem.d \
./src/ugfx/3rdparty/fatfs-0.13/source/ffunicode.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/3rdparty/fatfs-0.13/source/%.o: ../src/ugfx/3rdparty/fatfs-0.13/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


