TARGET = aarch64-none-elf
CROSS = $(TARGET)

CC = $(CROSS)-gcc
CCFLAGS = -std=c11 -O2 -Wall -nostdlib -nostartfiles -ffreestanding -pie -fpie

LD = $(CROSS)-ld
LDFLAGS = --gc-sections -static -nostdlib -nostartfiles --no-dynamic-linker

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

LD_BOOTLOADER_LAYOUT = $(SRC_DIR)/bootloader.ld
LD_OS_LAYOUT = $(SRC_DIR)/os.ld

TTYWRITE = ./ttywrite

BOOTLOADER = $(BIN_DIR)/bootloader
KERNEL = $(BIN_DIR)/shell

KERNEL_OBJS = aarch64.o path.o sdcard.o string.o kmain.o device.o hashmap.o assert.o malloc.o shell.o system_timer.o console.o start.o mini_uart.o atags.o fat32.o

BOOTLOADER_OBJS = bootloader.o string.o xmodem.o system_timer.o start.o mini_uart.o

KERNEL_DEPS = $(foreach n, $(KERNEL_OBJS), $(OBJ_DIR)/$(n))
BOOTLOADER_DEPS = $(foreach n, $(BOOTLOADER_OBJS), $(OBJ_DIR)/$(n))

kernel: $(KERNEL).elf
	$(CROSS)-objcopy $< -O binary $(KERNEL).bin

$(KERNEL).elf: $(KERNEL_DEPS)
	$(LD) $(LDFLAGS) $(KERNEL_DEPS) -T$(LD_OS_LAYOUT) -o $@ -Llib -lsd

$(OBJ_DIR)/fat32.o: $(SRC_DIR)/fat32.c
	$(CC) -c $(CCFLAGS) $< -o $@

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.S
	$(CC) -c $(CCFLAGS) $< -o $@

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.c
	$(CC) -c $(CCFLAGS) $< -o $@

bootloader: $(BOOTLOADER).elf
	$(CROSS)-objcopy $< -O binary $(BIN_DIR)/kernel8.img

$(BOOTLOADER).elf: $(BOOTLOADER_DEPS)
	$(LD) $(LDFLAGS) $(BOOTLOADER_DEPS) -T$(LD_BOOTLOADER_LAYOUT) -o $@

all: kernel bootloader

install: $(KERNEL).bin
	$(TTYWRITE) -i $<

connect:
	screen -h 9999 /dev/ttyUSB0 115200 8N1

clean:
	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/*
