################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/3rdparty/fatfs-0.13/documents/res/app1.c \
../src/ugfx/3rdparty/fatfs-0.13/documents/res/app2.c \
../src/ugfx/3rdparty/fatfs-0.13/documents/res/app3.c \
../src/ugfx/3rdparty/fatfs-0.13/documents/res/app4.c 

OBJS += \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app1.o \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app2.o \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app3.o \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app4.o 

C_DEPS += \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app1.d \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app2.d \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app3.d \
./src/ugfx/3rdparty/fatfs-0.13/documents/res/app4.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/3rdparty/fatfs-0.13/documents/res/%.o: ../src/ugfx/3rdparty/fatfs-0.13/documents/res/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


