#include "gpio.h"

void delay(volatile unsigned long);

int main(void)
{
	GPIO_FSEL(27, GPIO_INPUT);
	GPIO_FSEL(4, GPIO_OUTPUT);
	GPIO_FSEL(17, GPIO_OUTPUT);

	GPIO_CLR(17);

	while (1) {
		GPIO_SET(27);
		GPIO_SET(4);
		delay(20000);
		GPIO_CLR(27);
		GPIO_CLR(4);
		
		delay(5000000);

		GPIO_SET(4);
		GPIO_SET(17);
		delay(20000);
		GPIO_CLR(4);
		GPIO_CLR(17);

		delay(5000000);

		GPIO_SET(27);
		GPIO_SET(17);
		delay(20000);
		GPIO_CLR(27);
		GPIO_CLR(17);

		delay(5000000);
	}

	return 0;
}

void delay(volatile unsigned long period)
{
	while (period--);
}

