################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gfile/gfile.c \
../src/ugfx/src/gfile/gfile_fatfs_diskio_chibios.c \
../src/ugfx/src/gfile/gfile_fatfs_wrapper.c \
../src/ugfx/src/gfile/gfile_fs_chibios.c \
../src/ugfx/src/gfile/gfile_fs_fatfs.c \
../src/ugfx/src/gfile/gfile_fs_mem.c \
../src/ugfx/src/gfile/gfile_fs_native.c \
../src/ugfx/src/gfile/gfile_fs_petitfs.c \
../src/ugfx/src/gfile/gfile_fs_ram.c \
../src/ugfx/src/gfile/gfile_fs_rom.c \
../src/ugfx/src/gfile/gfile_fs_strings.c \
../src/ugfx/src/gfile/gfile_mk.c \
../src/ugfx/src/gfile/gfile_petitfs_diskio_chibios.c \
../src/ugfx/src/gfile/gfile_petitfs_wrapper.c \
../src/ugfx/src/gfile/gfile_printg.c \
../src/ugfx/src/gfile/gfile_scang.c \
../src/ugfx/src/gfile/gfile_stdio.c 

OBJS += \
./src/ugfx/src/gfile/gfile.o \
./src/ugfx/src/gfile/gfile_fatfs_diskio_chibios.o \
./src/ugfx/src/gfile/gfile_fatfs_wrapper.o \
./src/ugfx/src/gfile/gfile_fs_chibios.o \
./src/ugfx/src/gfile/gfile_fs_fatfs.o \
./src/ugfx/src/gfile/gfile_fs_mem.o \
./src/ugfx/src/gfile/gfile_fs_native.o \
./src/ugfx/src/gfile/gfile_fs_petitfs.o \
./src/ugfx/src/gfile/gfile_fs_ram.o \
./src/ugfx/src/gfile/gfile_fs_rom.o \
./src/ugfx/src/gfile/gfile_fs_strings.o \
./src/ugfx/src/gfile/gfile_mk.o \
./src/ugfx/src/gfile/gfile_petitfs_diskio_chibios.o \
./src/ugfx/src/gfile/gfile_petitfs_wrapper.o \
./src/ugfx/src/gfile/gfile_printg.o \
./src/ugfx/src/gfile/gfile_scang.o \
./src/ugfx/src/gfile/gfile_stdio.o 

C_DEPS += \
./src/ugfx/src/gfile/gfile.d \
./src/ugfx/src/gfile/gfile_fatfs_diskio_chibios.d \
./src/ugfx/src/gfile/gfile_fatfs_wrapper.d \
./src/ugfx/src/gfile/gfile_fs_chibios.d \
./src/ugfx/src/gfile/gfile_fs_fatfs.d \
./src/ugfx/src/gfile/gfile_fs_mem.d \
./src/ugfx/src/gfile/gfile_fs_native.d \
./src/ugfx/src/gfile/gfile_fs_petitfs.d \
./src/ugfx/src/gfile/gfile_fs_ram.d \
./src/ugfx/src/gfile/gfile_fs_rom.d \
./src/ugfx/src/gfile/gfile_fs_strings.d \
./src/ugfx/src/gfile/gfile_mk.d \
./src/ugfx/src/gfile/gfile_petitfs_diskio_chibios.d \
./src/ugfx/src/gfile/gfile_petitfs_wrapper.d \
./src/ugfx/src/gfile/gfile_printg.d \
./src/ugfx/src/gfile/gfile_scang.d \
./src/ugfx/src/gfile/gfile_stdio.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gfile/%.o: ../src/ugfx/src/gfile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


