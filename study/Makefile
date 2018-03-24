TARGET = aarch64-none-elf
CROSS = $(TARGET)

CC = $(CROSS)-gcc
CCFLAGS = -std=c11 -O2 -Wall -nostdlib -nostartfiles -ffreestanding -pie -fpie -g3

CCFLAGS_O1_EX = -std=c11 -Wall -fguess-branch-probability -fif-conversion2 -fif-conversion -finline-functions-called-once -fipa-pure-const -fipa-profile -fipa-reference -fmerge-constants -fmove-loop-invariants -freorder-blocks -fshrink-wrap -fsplit-wide-types -fssa-backprop -fssa-phiopt -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre -ftree-phiprop -ftree-sink -ftree-slsr -ftree-sra -ftree-pta -ftree-ter -funit-at-a-time -nostdlib -nostartfiles -ffreestanding -pie -fpie -std=c11 -Wall -fauto-inc-dec -fbranch-count-reg -fcombine-stack-adjustments -fcompare-elim -fcprop-registers -fdce -fdefer-pop -fdse -fforward-propagate -nostdlib -nostartfiles -ffreestanding -pie -fpie

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

KERNEL_OBJS = path.o sdcard.o string.o kmain.o device.o hashmap.o assert.o malloc.o shell.o system_timer.o console.o cstartup.o start.o mini_uart.o atags.o fat32.o

BOOTLOADER_OBJS = bootloader.o string.o xmodem.o system_timer.o cstartup.o start.o mini_uart.o

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
	screen /dev/ttyUSB0 115200 8N1

clean:
	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/*
