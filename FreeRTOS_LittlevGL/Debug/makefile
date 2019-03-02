################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/lvgl/lv_themes/subdir.mk
-include src/lvgl/lv_porting/subdir.mk
-include src/lvgl/lv_objx/subdir.mk
-include src/lvgl/lv_misc/subdir.mk
-include src/lvgl/lv_hal/subdir.mk
-include src/lvgl/lv_fonts/subdir.mk
-include src/lvgl/lv_draw/subdir.mk
-include src/lvgl/lv_core/subdir.mk
-include src/TOUCH/subdir.mk
-include src/LCD/subdir.mk
-include src/GUI/subdir.mk
-include src/DELAY/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
FreeRTOS_LittlevGL.elf.size \


# All Target
all: FreeRTOS_LittlevGL.elf secondary-outputs

# Tool invocations
FreeRTOS_LittlevGL.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../FreeRTOS_LittlevGL_bsp/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mxl-multiply-high -mhard-float -Wl,--no-relax -Wl,--gc-sections -o "FreeRTOS_LittlevGL.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

FreeRTOS_LittlevGL.elf.size: FreeRTOS_LittlevGL.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size FreeRTOS_LittlevGL.elf  |tee "FreeRTOS_LittlevGL.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) FreeRTOS_LittlevGL.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
