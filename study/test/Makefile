ARMGNU = aarch64-none-elf

# PARAMETER = -mfpu=crypto-neon-fp-armv8 -mfloat-abi=hard -mcpu=cortex-a53 -nostartfiles -g -Wl,-T,rpi.x

CSETUPOBJ = start.o

MAINOBJ = uart02.o

DEPOBJ = mini_uart.o

PARAMETER = -Wall -O2 -nostdlib -nostartfiles -pie -fpie -ffreestanding

kernel8.img: kernel.elf
	$(ARMGNU)-objcopy kernel.elf -O binary kernel8.img

kernel.elf: $(CSETUPOBJ) $(MAINOBJ)
	$(ARMGNU)-gcc $(PARAMETER) $(MAINOBJ) $(CSETUPOBJ) $(DEPOBJ) -o kernel.elf -Tlayout.ld

%.o:	%.s
	$(ARMGNU)-gcc -c $(PARAMETER) $< -o $@

%.o:	%.c
	$(ARMGNU)-gcc -c $(PARAMETER) $< -o $@

clean:
	rm -rf *.o *.e *.asm *.img *.elf

