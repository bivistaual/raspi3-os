#include "gpio.h"
#include "timer.h"
#include "interrupt.h"
#include "led.h"

extern void _enable_interrupts(void);

void kernel_main(unsigned int r0, unsigned int r1, unsigned atags)
{
	GPIO_FSEL(4, GPIO_OUTPUT);
//	led_flash(4, 2);

	IRQ_BASE_ENABLE(IRQ_TIMER_EN);

//	led_flash(4, 1);

	TIMER_TIME_SET(0x400);

//	led_flash(4, 2);

	TIMER_CTRL_SET(TIMER_CTRL_EN | 
			TIMER_CTRL_PRESCALE_256 | 
			TIMER_CTRL_IRQ | 
			TIMER_CTRL_32BIT);

//	led_flash(4, 3);

	_enable_interrupts();

	led_flash(4, 3);

	while (1) {
	//	led_flash(4, TIMER_VALUE_GET());
		if (TIMER_VALUE_GET() == 0x400)
			led_flash(4, 1);
		else
			led_flash(4, 2);
	}
}

