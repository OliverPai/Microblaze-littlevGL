################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gmisc/gmisc.c \
../src/ugfx/src/gmisc/gmisc_arrayops.c \
../src/ugfx/src/gmisc/gmisc_hittest.c \
../src/ugfx/src/gmisc/gmisc_matrix2d.c \
../src/ugfx/src/gmisc/gmisc_mk.c \
../src/ugfx/src/gmisc/gmisc_trig.c 

OBJS += \
./src/ugfx/src/gmisc/gmisc.o \
./src/ugfx/src/gmisc/gmisc_arrayops.o \
./src/ugfx/src/gmisc/gmisc_hittest.o \
./src/ugfx/src/gmisc/gmisc_matrix2d.o \
./src/ugfx/src/gmisc/gmisc_mk.o \
./src/ugfx/src/gmisc/gmisc_trig.o 

C_DEPS += \
./src/ugfx/src/gmisc/gmisc.d \
./src/ugfx/src/gmisc/gmisc_arrayops.d \
./src/ugfx/src/gmisc/gmisc_hittest.d \
./src/ugfx/src/gmisc/gmisc_matrix2d.d \
./src/ugfx/src/gmisc/gmisc_mk.d \
./src/ugfx/src/gmisc/gmisc_trig.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gmisc/%.o: ../src/ugfx/src/gmisc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


