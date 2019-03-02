################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ugfx/boards/base/ArduinoTinyScreen/gfx/driver_SSD1331.c \
../src/ugfx/boards/base/ArduinoTinyScreen/gfx/gfx.c 

CPP_SRCS += \
../src/ugfx/boards/base/ArduinoTinyScreen/gfx/board_SSD1331.cpp 

OBJS += \
./src/ugfx/boards/base/ArduinoTinyScreen/gfx/board_SSD1331.o \
./src/ugfx/boards/base/ArduinoTinyScreen/gfx/driver_SSD1331.o \
./src/ugfx/boards/base/ArduinoTinyScreen/gfx/gfx.o 

C_DEPS += \
./src/ugfx/boards/base/ArduinoTinyScreen/gfx/driver_SSD1331.d \
./src/ugfx/boards/base/ArduinoTinyScreen/gfx/gfx.d 

CPP_DEPS += \
./src/ugfx/boards/base/ArduinoTinyScreen/gfx/board_SSD1331.d 


# Each subdirectory must supply rules for building sources it contributes
src/ugfx/boards/base/ArduinoTinyScreen/gfx/%.o: ../src/ugfx/boards/base/ArduinoTinyScreen/gfx/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ugfx/boards/base/ArduinoTinyScreen/gfx/%.o: ../src/ugfx/boards/base/ArduinoTinyScreen/gfx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../FreeRTOS_demo_bsp/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


