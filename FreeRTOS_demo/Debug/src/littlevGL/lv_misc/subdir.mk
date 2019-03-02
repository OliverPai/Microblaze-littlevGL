################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/littlevGL/lv_misc/lv_anim.c \
../src/littlevGL/lv_misc/lv_area.c \
../src/littlevGL/lv_misc/lv_circ.c \
../src/littlevGL/lv_misc/lv_color.c \
../src/littlevGL/lv_misc/lv_font.c \
../src/littlevGL/lv_misc/lv_fs.c \
../src/littlevGL/lv_misc/lv_gc.c \
../src/littlevGL/lv_misc/lv_ll.c \
../src/littlevGL/lv_misc/lv_log.c \
../src/littlevGL/lv_misc/lv_math.c \
../src/littlevGL/lv_misc/lv_mem.c \
../src/littlevGL/lv_misc/lv_task.c \
../src/littlevGL/lv_misc/lv_templ.c \
../src/littlevGL/lv_misc/lv_txt.c \
../src/littlevGL/lv_misc/lv_ufs.c 

OBJS += \
./src/littlevGL/lv_misc/lv_anim.o \
./src/littlevGL/lv_misc/lv_area.o \
./src/littlevGL/lv_misc/lv_circ.o \
./src/littlevGL/lv_misc/lv_color.o \
./src/littlevGL/lv_misc/lv_font.o \
./src/littlevGL/lv_misc/lv_fs.o \
./src/littlevGL/lv_misc/lv_gc.o \
./src/littlevGL/lv_misc/lv_ll.o \
./src/littlevGL/lv_misc/lv_log.o \
./src/littlevGL/lv_misc/lv_math.o \
./src/littlevGL/lv_misc/lv_mem.o \
./src/littlevGL/lv_misc/lv_task.o \
./src/littlevGL/lv_misc/lv_templ.o \
./src/littlevGL/lv_misc/lv_txt.o \
./src/littlevGL/lv_misc/lv_ufs.o 

C_DEPS += \
./src/littlevGL/lv_misc/lv_anim.d \
./src/littlevGL/lv_misc/lv_area.d \
./src/littlevGL/lv_misc/lv_circ.d \
./src/littlevGL/lv_misc/lv_color.d \
./src/littlevGL/lv_misc/lv_font.d \
./src/littlevGL/lv_misc/lv_fs.d \
./src/littlevGL/lv_misc/lv_gc.d \
./src/littlevGL/lv_misc/lv_ll.d \
./src/littlevGL/lv_misc/lv_log.d \
./src/littlevGL/lv_misc/lv_math.d \
./src/littlevGL/lv_misc/lv_mem.d \
./src/littlevGL/lv_misc/lv_task.d \
./src/littlevGL/lv_misc/lv_templ.d \
./src/littlevGL/lv_misc/lv_txt.d \
./src/littlevGL/lv_misc/lv_ufs.d 


# Each subdirectory must supply rules for building sources it contributes
src/littlevGL/lv_misc/%.o: ../src/littlevGL/lv_misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


