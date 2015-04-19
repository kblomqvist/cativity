# Include project specific Makefile
-include Makefile.project

# Device
DEVICE_FAMILY	= NRF51
CPU				= cortex-m0

ifeq ($(PROJECT_TARGET),)
    $(error PROJECT_TARGET isn't defined)
endif

# Base paths
SDK_COMPONENTS_PATH = $(NRF51_SDK_PATH)/components
SDK_INCLUDE_PATH    = $(SDK_COMPONENTS_PATH)/drivers_nrf/hal
SDK_TOOLCHAIN_PATH  = $(SDK_COMPONENTS_PATH)/toolchain/gcc
SDK_SOFTDEVICE_PATH = $(SDK_COMPONENTS_PATH)/softdevice/s110

# Linker script
ifeq ($(USE_SOFTDEVICE), s110)
	LINKER_SCRIPT = $(SDK_SOFTDEVICE_PATH)/toolchain/armgcc/armgcc_s110_nrf51822_$(SOC_VARIANT).ld
	ADDRESS = 0x18000
else
	LINKER_SCRIPT = $(SDK_TOOLCHAIN_PATH)/nrf51_$(SOC_VARIANT).ld
	ADDRESS = 0
endif

# Compiler tools
CC			= arm-none-eabi-gcc
OBJCOPY		= arm-none-eabi-objcopy
PROGRAMMER	= python segger.py

# Include paths
INCLUDE_PATHS	= $(SDK_COMPONENTS_PATH)/drivers_nrf/hal
INCLUDE_PATHS	+= $(SDK_COMPONENTS_PATH)/device
INCLUDE_PATHS	+= $(SDK_TOOLCHAIN_PATH) $(SDK_TOOLCHAIN_PATH)/..
INCLUDE_PATHS	+= $(SDK_SOFTDEVICE_PATH)/headers
INCLUDE_PATHS	+= $(PROJECT_INCLUDE_PATHS)
INCLUDES		= $(addprefix -I, $(INCLUDE_PATHS))

# Compiler flags
CFLAGS = -mcpu=$(CPU) -mthumb -mfloat-abi=soft -Wall -Werror -c -std=gnu99
CFLAGS += -D$(DEVICE_FAMILY) -D$(SOC) -D$(BOARD)
CFLAGS += $(PROJECT_CFLAGS)
CFLAGS += $(INCLUDES)

ASMFLAGS = $(CFLAGS)

# Linker flags
LDFLAGS = -Xlinker -Map=$(BUILD_PATH)/$(PROJECT_TARGET).map -mcpu=$(CPU) -mthumb -mabi=aapcs
LDFLAGS += -T$(LINKER_SCRIPT) -L$(SDK_TOOLCHAIN_PATH)
LDFLAGS += $(PROJECT_LDFLAGS)

# C sources paths & files
C_SOURCE_PATHS		= $(SDK_COMPONENTS_PATH) $(SDK_TOOLCHAIN_PATH)/..
C_SOURCE_PATHS		+= $(PROJECT_C_SOURCE_PATHS)

C_SOURCE_FILES		= system_nrf51.c $(PROJECT_C_SOURCE_FILES)

# ASM sources paths & files
ASM_SOURCE_PATHS	= $(SDK_TOOLCHAIN_PATH)
ASM_SOURCE_PATHS	+= $(PROJECT_ASM_SOURCE_FILES)

ASM_SOURCE_FILES	= gcc_startup_nrf51.s $(PROJECT_ASM_SOURCE_FILES)

# Build path & objects
BUILD_PATH = build

C_OBJECT_FILES		= $(addprefix $(BUILD_PATH)/, $(C_SOURCE_FILES:.c=.o))
ASM_OBJECT_FILES	= $(addprefix $(BUILD_PATH)/, $(ASM_SOURCE_FILES:.s=.o))

vpath %.c $(C_SOURCE_PATHS)
vpath %.s $(ASM_SOURCE_PATHS)

# Softdevice
SOFTDEVICE = $(BUILD_PATH)/$(USE_SOFTDEVICE)_softdevice.bin

export JLINK_PATH
export BUILD_PATH
export USE_SOFTDEVICE

# Rules
all: $(BUILD_PATH)/$(PROJECT_TARGET).bin $(BUILD_PATH)/$(PROJECT_TARGET).hex

$(BUILD_PATH)/$(PROJECT_TARGET).hex: $(BUILD_PATH)/$(PROJECT_TARGET).out
	$(OBJCOPY) -Oihex $(BUILD_PATH)/$(PROJECT_TARGET).out $(BUILD_PATH)/$(PROJECT_TARGET).hex

$(BUILD_PATH)/$(PROJECT_TARGET).bin: $(BUILD_PATH)/$(PROJECT_TARGET).out
	$(OBJCOPY) -Obinary $(BUILD_PATH)/$(PROJECT_TARGET).out $(BUILD_PATH)/$(PROJECT_TARGET).bin

$(BUILD_PATH)/$(PROJECT_TARGET).out: $(BUILD_PATH) $(C_OBJECT_FILES) $(ASM_OBJECT_FILES)
	$(CC) $(LDFLAGS) $(C_OBJECT_FILES) $(ASM_OBJECT_FILES) -o $@

# Build object files from C source files
$(BUILD_PATH)/%.o: %.c
	$(CC) $(CFLAGS) -o $@ $<

# Build object files from ASM source files
$(BUILD_PATH)/%.o: %.s
	$(CC) $(ASMFLAGS) -o $@ $<

$(BUILD_PATH):
	-mkdir $@

install upload: $(BUILD_PATH)/$(PROJECT_TARGET).bin
	$(PROGRAMMER) flash `pwd`/$(BUILD_PATH)/$(PROJECT_TARGET).bin $(ADDRESS)

erase:
	$(PROGRAMMER) erase

softdevice: erase $(BUILD_PATH) $(SOFTDEVICE)
	$(PROGRAMMER) flash $(addprefix `pwd`/, $(SOFTDEVICE)) 0

$(BUILD_PATH)/softdevice_uicr.bin: $(NRF51_SOFTDEVICE)
	$(OBJCOPY) -Iihex -Obinary --only-section .sec3 $< $@

$(BUILD_PATH)/$(USE_SOFTDEVICE)_softdevice.bin: $(NRF51_SOFTDEVICE)
	$(OBJCOPY) -Iihex -Obinary $< $@

clean:
	rm -rf build *.log

.PHONY: install upload erase softdevice clean
