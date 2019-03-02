################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/lv_misc/lv_anim.c \
../src/lvgl/lv_misc/lv_area.c \
../src/lvgl/lv_misc/lv_circ.c \
../src/lvgl/lv_misc/lv_color.c \
../src/lvgl/lv_misc/lv_font.c \
../src/lvgl/lv_misc/lv_fs.c \
../src/lvgl/lv_misc/lv_gc.c \
../src/lvgl/lv_misc/lv_ll.c \
../src/lvgl/lv_misc/lv_log.c \
../src/lvgl/lv_misc/lv_math.c \
../src/lvgl/lv_misc/lv_mem.c \
../src/lvgl/lv_misc/lv_task.c \
../src/lvgl/lv_misc/lv_templ.c \
../src/lvgl/lv_misc/lv_txt.c \
../src/lvgl/lv_misc/lv_ufs.c 

OBJS += \
./src/lvgl/lv_misc/lv_anim.o \
./src/lvgl/lv_misc/lv_area.o \
./src/lvgl/lv_misc/lv_circ.o \
./src/lvgl/lv_misc/lv_color.o \
./src/lvgl/lv_misc/lv_font.o \
./src/lvgl/lv_misc/lv_fs.o \
./src/lvgl/lv_misc/lv_gc.o \
./src/lvgl/lv_misc/lv_ll.o \
./src/lvgl/lv_misc/lv_log.o \
./src/lvgl/lv_misc/lv_math.o \
./src/lvgl/lv_misc/lv_mem.o \
./src/lvgl/lv_misc/lv_task.o \
./src/lvgl/lv_misc/lv_templ.o \
./src/lvgl/lv_misc/lv_txt.o \
./src/lvgl/lv_misc/lv_ufs.o 

C_DEPS += \
./src/lvgl/lv_misc/lv_anim.d \
./src/lvgl/lv_misc/lv_area.d \
./src/lvgl/lv_misc/lv_circ.d \
./src/lvgl/lv_misc/lv_color.d \
./src/lvgl/lv_misc/lv_font.d \
./src/lvgl/lv_misc/lv_fs.d \
./src/lvgl/lv_misc/lv_gc.d \
./src/lvgl/lv_misc/lv_ll.d \
./src/lvgl/lv_misc/lv_log.d \
./src/lvgl/lv_misc/lv_math.d \
./src/lvgl/lv_misc/lv_mem.d \
./src/lvgl/lv_misc/lv_task.d \
./src/lvgl/lv_misc/lv_templ.d \
./src/lvgl/lv_misc/lv_txt.d \
./src/lvgl/lv_misc/lv_ufs.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/lv_misc/%.o: ../src/lvgl/lv_misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


