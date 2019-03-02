################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/gwin/gwin.c \
../src/ugfx/gwin/gwin_button.c \
../src/ugfx/gwin/gwin_checkbox.c \
../src/ugfx/gwin/gwin_console.c \
../src/ugfx/gwin/gwin_container.c \
../src/ugfx/gwin/gwin_frame.c \
../src/ugfx/gwin/gwin_gl3d.c \
../src/ugfx/gwin/gwin_graph.c \
../src/ugfx/gwin/gwin_image.c \
../src/ugfx/gwin/gwin_keyboard.c \
../src/ugfx/gwin/gwin_keyboard_layout.c \
../src/ugfx/gwin/gwin_label.c \
../src/ugfx/gwin/gwin_list.c \
../src/ugfx/gwin/gwin_mk.c \
../src/ugfx/gwin/gwin_progressbar.c \
../src/ugfx/gwin/gwin_radio.c \
../src/ugfx/gwin/gwin_slider.c \
../src/ugfx/gwin/gwin_tabset.c \
../src/ugfx/gwin/gwin_textedit.c \
../src/ugfx/gwin/gwin_widget.c \
../src/ugfx/gwin/gwin_wm.c 

OBJS += \
./src/ugfx/gwin/gwin.o \
./src/ugfx/gwin/gwin_button.o \
./src/ugfx/gwin/gwin_checkbox.o \
./src/ugfx/gwin/gwin_console.o \
./src/ugfx/gwin/gwin_container.o \
./src/ugfx/gwin/gwin_frame.o \
./src/ugfx/gwin/gwin_gl3d.o \
./src/ugfx/gwin/gwin_graph.o \
./src/ugfx/gwin/gwin_image.o \
./src/ugfx/gwin/gwin_keyboard.o \
./src/ugfx/gwin/gwin_keyboard_layout.o \
./src/ugfx/gwin/gwin_label.o \
./src/ugfx/gwin/gwin_list.o \
./src/ugfx/gwin/gwin_mk.o \
./src/ugfx/gwin/gwin_progressbar.o \
./src/ugfx/gwin/gwin_radio.o \
./src/ugfx/gwin/gwin_slider.o \
./src/ugfx/gwin/gwin_tabset.o \
./src/ugfx/gwin/gwin_textedit.o \
./src/ugfx/gwin/gwin_widget.o \
./src/ugfx/gwin/gwin_wm.o 

C_DEPS += \
./src/ugfx/gwin/gwin.d \
./src/ugfx/gwin/gwin_button.d \
./src/ugfx/gwin/gwin_checkbox.d \
./src/ugfx/gwin/gwin_console.d \
./src/ugfx/gwin/gwin_container.d \
./src/ugfx/gwin/gwin_frame.d \
./src/ugfx/gwin/gwin_gl3d.d \
./src/ugfx/gwin/gwin_graph.d \
./src/ugfx/gwin/gwin_image.d \
./src/ugfx/gwin/gwin_keyboard.d \
./src/ugfx/gwin/gwin_keyboard_layout.d \
./src/ugfx/gwin/gwin_label.d \
./src/ugfx/gwin/gwin_list.d \
./src/ugfx/gwin/gwin_mk.d \
./src/ugfx/gwin/gwin_progressbar.d \
./src/ugfx/gwin/gwin_radio.d \
./src/ugfx/gwin/gwin_slider.d \
./src/ugfx/gwin/gwin_tabset.d \
./src/ugfx/gwin/gwin_textedit.d \
./src/ugfx/gwin/gwin_widget.d \
./src/ugfx/gwin/gwin_wm.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/gwin/%.o: ../src/ugfx/gwin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


