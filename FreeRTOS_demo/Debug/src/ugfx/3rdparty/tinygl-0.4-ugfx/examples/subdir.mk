################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/gears.c \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/glu.c \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/mech.c \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/nanox.c \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/spin.c \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/texobj.c \
../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/x11.c 

OBJS += \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/gears.o \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/glu.o \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/mech.o \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/nanox.o \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/spin.o \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/texobj.o \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/x11.o 

C_DEPS += \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/gears.d \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/glu.d \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/mech.d \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/nanox.d \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/spin.d \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/texobj.d \
./src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/x11.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/%.o: ../src/ugfx/3rdparty/tinygl-0.4-ugfx/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


