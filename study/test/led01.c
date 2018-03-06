// #define GPIO_BASE	0x3f200000
// #define GPSET0		0x3f20001c
// #define GPCLR0		0x3f200028

#include "gpio.h"

void delay(volatile unsigned long);

int main(void)
{
//	*(unsigned long *)GPIO_BASE = 1 << 12;
	GPIO_FSEL(4, GPIO_OUTPUT);

	while (1) {
//		*(volatile unsigned long *)GPSET0 = 0;
//		*(volatile unsigned long *)GPCLR0 = 1 << 4;
		GPIO_CLR(4);

		delay(1000000);

//		*(volatile unsigned long *)GPCLR0 = 0;
//		*(volatile unsigned long *)GPSET0 = 1 << 4;

		GPIO_SET(4);
		delay(10000);
	}

	return 0;
}

void delay(volatile unsigned long period)
{
	while (period--);
}

