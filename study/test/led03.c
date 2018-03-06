// when gpio 17 is tied to high voltage level, gpio 4 will be high too and otherwise low.

#include "gpio.h"

void delay(volatile unsigned long);

int main(void)
{
	GPIO_OUTPUT(4);
	GPIO_INPUT(17);

	GPIO_CLR(4);

	while (1) {
		if (GPIO_ISH(17))
			GPIO_SET(4);
		else
			GPIO_CLR(4);
	}

	return 0;
}

void delay(volatile unsigned long period)
{
	while (period--);
}

