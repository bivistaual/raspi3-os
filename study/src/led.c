#include "gpio.h"
#include "system_timer.h"
#include "led.h"

void led_flash(unsigned int n, unsigned int times)
{
	unsigned int i;

	GPIO_FSEL(4, GPIO_OUTPUT);
	
	for (i = 0; i < times; i++) {
		GPIO_SET(n);
		spin_sleep_ms(100);
		GPIO_CLR(n);
		spin_sleep_ms(900);
	}
}

