################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/src/gwin/gwin.c \
../src/ugfx/src/gwin/gwin_button.c \
../src/ugfx/src/gwin/gwin_checkbox.c \
../src/ugfx/src/gwin/gwin_console.c \
../src/ugfx/src/gwin/gwin_container.c \
../src/ugfx/src/gwin/gwin_frame.c \
../src/ugfx/src/gwin/gwin_gl3d.c \
../src/ugfx/src/gwin/gwin_graph.c \
../src/ugfx/src/gwin/gwin_image.c \
../src/ugfx/src/gwin/gwin_keyboard.c \
../src/ugfx/src/gwin/gwin_keyboard_layout.c \
../src/ugfx/src/gwin/gwin_label.c \
../src/ugfx/src/gwin/gwin_list.c \
../src/ugfx/src/gwin/gwin_mk.c \
../src/ugfx/src/gwin/gwin_progressbar.c \
../src/ugfx/src/gwin/gwin_radio.c \
../src/ugfx/src/gwin/gwin_slider.c \
../src/ugfx/src/gwin/gwin_tabset.c \
../src/ugfx/src/gwin/gwin_textedit.c \
../src/ugfx/src/gwin/gwin_widget.c \
../src/ugfx/src/gwin/gwin_wm.c 

OBJS += \
./src/ugfx/src/gwin/gwin.o \
./src/ugfx/src/gwin/gwin_button.o \
./src/ugfx/src/gwin/gwin_checkbox.o \
./src/ugfx/src/gwin/gwin_console.o \
./src/ugfx/src/gwin/gwin_container.o \
./src/ugfx/src/gwin/gwin_frame.o \
./src/ugfx/src/gwin/gwin_gl3d.o \
./src/ugfx/src/gwin/gwin_graph.o \
./src/ugfx/src/gwin/gwin_image.o \
./src/ugfx/src/gwin/gwin_keyboard.o \
./src/ugfx/src/gwin/gwin_keyboard_layout.o \
./src/ugfx/src/gwin/gwin_label.o \
./src/ugfx/src/gwin/gwin_list.o \
./src/ugfx/src/gwin/gwin_mk.o \
./src/ugfx/src/gwin/gwin_progressbar.o \
./src/ugfx/src/gwin/gwin_radio.o \
./src/ugfx/src/gwin/gwin_slider.o \
./src/ugfx/src/gwin/gwin_tabset.o \
./src/ugfx/src/gwin/gwin_textedit.o \
./src/ugfx/src/gwin/gwin_widget.o \
./src/ugfx/src/gwin/gwin_wm.o 

C_DEPS += \
./src/ugfx/src/gwin/gwin.d \
./src/ugfx/src/gwin/gwin_button.d \
./src/ugfx/src/gwin/gwin_checkbox.d \
./src/ugfx/src/gwin/gwin_console.d \
./src/ugfx/src/gwin/gwin_container.d \
./src/ugfx/src/gwin/gwin_frame.d \
./src/ugfx/src/gwin/gwin_gl3d.d \
./src/ugfx/src/gwin/gwin_graph.d \
./src/ugfx/src/gwin/gwin_image.d \
./src/ugfx/src/gwin/gwin_keyboard.d \
./src/ugfx/src/gwin/gwin_keyboard_layout.d \
./src/ugfx/src/gwin/gwin_label.d \
./src/ugfx/src/gwin/gwin_list.d \
./src/ugfx/src/gwin/gwin_mk.d \
./src/ugfx/src/gwin/gwin_progressbar.d \
./src/ugfx/src/gwin/gwin_radio.d \
./src/ugfx/src/gwin/gwin_slider.d \
./src/ugfx/src/gwin/gwin_tabset.d \
./src/ugfx/src/gwin/gwin_textedit.d \
./src/ugfx/src/gwin/gwin_widget.d \
./src/ugfx/src/gwin/gwin_wm.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/src/gwin/%.o: ../src/ugfx/src/gwin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


