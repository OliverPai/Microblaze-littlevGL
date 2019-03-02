################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gos/gos_arduino.c \
../src/ugfx/src/gos/gos_chibios.c \
../src/ugfx/src/gos/gos_cmsis.c \
../src/ugfx/src/gos/gos_cmsis2.c \
../src/ugfx/src/gos/gos_ecos.c \
../src/ugfx/src/gos/gos_freertos.c \
../src/ugfx/src/gos/gos_linux.c \
../src/ugfx/src/gos/gos_mk.c \
../src/ugfx/src/gos/gos_nios.c \
../src/ugfx/src/gos/gos_osx.c \
../src/ugfx/src/gos/gos_raw32.c \
../src/ugfx/src/gos/gos_rawrtos.c \
../src/ugfx/src/gos/gos_win32.c \
../src/ugfx/src/gos/gos_x_heap.c \
../src/ugfx/src/gos/gos_x_threads.c \
../src/ugfx/src/gos/gos_zephyr.c 

CPP_SRCS += \
../src/ugfx/src/gos/gos_qt.cpp 

OBJS += \
./src/ugfx/src/gos/gos_arduino.o \
./src/ugfx/src/gos/gos_chibios.o \
./src/ugfx/src/gos/gos_cmsis.o \
./src/ugfx/src/gos/gos_cmsis2.o \
./src/ugfx/src/gos/gos_ecos.o \
./src/ugfx/src/gos/gos_freertos.o \
./src/ugfx/src/gos/gos_linux.o \
./src/ugfx/src/gos/gos_mk.o \
./src/ugfx/src/gos/gos_nios.o \
./src/ugfx/src/gos/gos_osx.o \
./src/ugfx/src/gos/gos_qt.o \
./src/ugfx/src/gos/gos_raw32.o \
./src/ugfx/src/gos/gos_rawrtos.o \
./src/ugfx/src/gos/gos_win32.o \
./src/ugfx/src/gos/gos_x_heap.o \
./src/ugfx/src/gos/gos_x_threads.o \
./src/ugfx/src/gos/gos_zephyr.o 

C_DEPS += \
./src/ugfx/src/gos/gos_arduino.d \
./src/ugfx/src/gos/gos_chibios.d \
./src/ugfx/src/gos/gos_cmsis.d \
./src/ugfx/src/gos/gos_cmsis2.d \
./src/ugfx/src/gos/gos_ecos.d \
./src/ugfx/src/gos/gos_freertos.d \
./src/ugfx/src/gos/gos_linux.d \
./src/ugfx/src/gos/gos_mk.d \
./src/ugfx/src/gos/gos_nios.d \
./src/ugfx/src/gos/gos_osx.d \
./src/ugfx/src/gos/gos_raw32.d \
./src/ugfx/src/gos/gos_rawrtos.d \
./src/ugfx/src/gos/gos_win32.d \
./src/ugfx/src/gos/gos_x_heap.d \
./src/ugfx/src/gos/gos_x_threads.d \
./src/ugfx/src/gos/gos_zephyr.d 

CPP_DEPS += \
./src/ugfx/src/gos/gos_qt.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gos/%.o: ../src/ugfx/src/gos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ugfx/src/gos/%.o: ../src/ugfx/src/gos/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


