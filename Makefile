kernel.img:	kernel.elf
	arm-none-eabi-objcopy kernel.elf -O binary kernel.img

kernel.elf:	kernel.c
	arm-none-eabi-gcc -O3 -mfpu=crypto-neon-fp-armv8 -mfloat-abi=hard -mcpu=cortex-a53 -nostartfiles -g -Wl,-T,rpi.x kernel.c -o kernel.elf

clean:
	rm -rf *.o *.s *.e *.asm *.img *.elf

