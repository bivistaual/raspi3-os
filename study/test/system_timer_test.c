#include "gpio.h"
#include "led.h"

void kernel_main(void)
{
	GPIO_FSEL(4, GPIO_OUTPUT);
	while (1)
		led_flash(4, 3);
}
