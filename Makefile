# Toolchain
PREFIX = riscv64-unknown-elf-
CC = $(PREFIX)gcc
AS = $(PREFIX)as
LD = $(PREFIX)ld
OBJCOPY = $(PREFIX)objcopy
OBJDUMP = $(PREFIX)objdump

# Directories
FREERTOS_SRC = Source
PORT_SRC = portable

# Flags
CFLAGS = -march=rv64imac_zicsr -mabi=lp64 -mcmodel=medany
CFLAGS += -Wall -O2 -g
CFLAGS += -I. -I$(FREERTOS_SRC)/include -I$(PORT_SRC)
CFLAGS += -I$(PORT_SRC)/chip_specific_extensions/RISCV_MTIME_CLINT_no_extensions
CFLAGS += -ffunction-sections -fdata-sections

LDFLAGS = -T riscv.ld -nostartfiles
LDFLAGS += -Wl,--gc-sections
LDFLAGS += -Wl,--start-group -lc -lgcc -lnosys -Wl,--end-group


# Source files
C_SOURCES = main.c
C_SOURCES += $(FREERTOS_SRC)/tasks.c
C_SOURCES += $(FREERTOS_SRC)/queue.c
C_SOURCES += $(FREERTOS_SRC)/list.c
C_SOURCES += $(FREERTOS_SRC)/timers.c
C_SOURCES += $(FREERTOS_SRC)/portable/MemMang/heap_4.c
C_SOURCES += $(PORT_SRC)/port.c

ASM_SOURCES = start.S
ASM_SOURCES += $(PORT_SRC)/portASM.S

# Objects
OBJECTS = $(C_SOURCES:.c=.o) $(ASM_SOURCES:.S=.o)

# Target
TARGET = freertos_riscv

all: $(TARGET).elf $(TARGET).bin

$(TARGET).elf: $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^
	$(OBJDUMP) -d $@ > $(TARGET).asm

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) -O binary $< $@

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

%.o: %.S
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJECTS) $(TARGET).elf $(TARGET).bin $(TARGET).asm

.PHONY: all clean
