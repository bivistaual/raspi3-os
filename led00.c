#define GPIO_BASE	0x3f200000
#define GPSET0		0x3f20001c
#define GPCLR0		0x3f200028

void delay(volatile unsigned long);

int main(void)
{
	*(unsigned long *)GPIO_BASE |= 1 << 12;
	*(volatile unsigned long *)GPSET0 |= 1 << 4;

	return 0;
}

void delay(volatile unsigned long period)
{
	while (period--);
}

