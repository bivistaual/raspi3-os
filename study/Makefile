TARGET = aarch64-none-elf
CROSS = $(TARGET)

CC = $(CROSS)-gcc
CCFLAGS = -std=c11 -Wall -O2 -nostdlib -nostartfiles -ffreestanding -pie -fpie
LD = $(CROSS)-ld
LDFLAGS = --gc-sections -static -nostdlib -nostartfiles --no-dynamic-linker

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

LD_LAYOUT = $(SRC_DIR)/layout.ld

TTYWRITE = ./ttywrite

BOOTLOADER = $(BIN_DIR)/bootloader
KERNEL = $(BIN_DIR)/shell

KERNEL_OBJS = string.o kmain.o fat32.o device.o hashmap.o assert.o malloc.o shell.o system_timer.o console.o cstartup.o start.o mini_uart.o atags.o
BOOTLOADER_OBJS = bootloader.o string.o xmodem.o system_timer.o cstartup.o start.o mini_uart.o

KERNEL_DEPS = $(foreach n, $(KERNEL_OBJS), $(OBJ_DIR)/$(n))
BOOTLOADER_DEPS = $(foreach n, $(BOOTLOADER_OBJS), $(OBJ_DIR)/$(n))

kernel: $(KERNEL).elf
	$(CROSS)-objcopy $< -O binary $(KERNEL).bin

$(KERNEL).elf: $(KERNEL_DEPS)
	$(LD) $(LDFLAGS) $(KERNEL_DEPS) -T$(LD_LAYOUT) -o $@ -Llib -lsd

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.S
	$(CC) -c $(CCFLAGS) $< -o $@

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.c
	$(CC) -c $(CCFLAGS) $< -o $@

bootloader: $(BOOTLOADER).elf
	$(CROSS)-objcopy $< -O binary $(BIN_DIR)/kernel8.img

$(BOOTLOADER).elf: $(BOOTLOADER_DEPS)
	$(LD) $(LDFLAGS) $(BOOTLOADER_DEPS) -T$(LD_LAYOUT) -o $@

all: kernel bootloader

install: $(KERNEL).bin
	$(TTYWRITE) -i $<

connect:
	screen /dev/ttyUSB0 115200 8N1

clean:
	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/*
