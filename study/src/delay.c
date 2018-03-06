#include "delay.h"

void delay(volatile unsigned long period)
{
	while (period--);
}

