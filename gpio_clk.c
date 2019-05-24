#include "gpio.h"

void delay(volatile unsigned long);

int main(void)
{
	GPIO_FSEL(4, GPIO_FUNC0);
	GPIO_CLK0_DIV(4000, 0);
	GPIO_CLK0_ENABLE(0x0, 0x0, OSCILLATOR);

	while (1);

	return 0;
}

void delay(volatile unsigned long period)
{
	while (period--);
}

