################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gwin/gwin.c \
../src/gwin/gwin_button.c \
../src/gwin/gwin_checkbox.c \
../src/gwin/gwin_console.c \
../src/gwin/gwin_container.c \
../src/gwin/gwin_frame.c \
../src/gwin/gwin_gl3d.c \
../src/gwin/gwin_graph.c \
../src/gwin/gwin_image.c \
../src/gwin/gwin_keyboard.c \
../src/gwin/gwin_keyboard_layout.c \
../src/gwin/gwin_label.c \
../src/gwin/gwin_list.c \
../src/gwin/gwin_mk.c \
../src/gwin/gwin_progressbar.c \
../src/gwin/gwin_radio.c \
../src/gwin/gwin_slider.c \
../src/gwin/gwin_tabset.c \
../src/gwin/gwin_textedit.c \
../src/gwin/gwin_widget.c \
../src/gwin/gwin_wm.c 

OBJS += \
./src/gwin/gwin.o \
./src/gwin/gwin_button.o \
./src/gwin/gwin_checkbox.o \
./src/gwin/gwin_console.o \
./src/gwin/gwin_container.o \
./src/gwin/gwin_frame.o \
./src/gwin/gwin_gl3d.o \
./src/gwin/gwin_graph.o \
./src/gwin/gwin_image.o \
./src/gwin/gwin_keyboard.o \
./src/gwin/gwin_keyboard_layout.o \
./src/gwin/gwin_label.o \
./src/gwin/gwin_list.o \
./src/gwin/gwin_mk.o \
./src/gwin/gwin_progressbar.o \
./src/gwin/gwin_radio.o \
./src/gwin/gwin_slider.o \
./src/gwin/gwin_tabset.o \
./src/gwin/gwin_textedit.o \
./src/gwin/gwin_widget.o \
./src/gwin/gwin_wm.o 

C_DEPS += \
./src/gwin/gwin.d \
./src/gwin/gwin_button.d \
./src/gwin/gwin_checkbox.d \
./src/gwin/gwin_console.d \
./src/gwin/gwin_container.d \
./src/gwin/gwin_frame.d \
./src/gwin/gwin_gl3d.d \
./src/gwin/gwin_graph.d \
./src/gwin/gwin_image.d \
./src/gwin/gwin_keyboard.d \
./src/gwin/gwin_keyboard_layout.d \
./src/gwin/gwin_label.d \
./src/gwin/gwin_list.d \
./src/gwin/gwin_mk.d \
./src/gwin/gwin_progressbar.d \
./src/gwin/gwin_radio.d \
./src/gwin/gwin_slider.d \
./src/gwin/gwin_tabset.d \
./src/gwin/gwin_textedit.d \
./src/gwin/gwin_widget.d \
./src/gwin/gwin_wm.d 


# Each subdirectory must supply rules for building sources it contributes
src/gwin/%.o: ../src/gwin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


