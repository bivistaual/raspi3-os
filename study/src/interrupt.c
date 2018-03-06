#include "interrupt.h"
#include "gpio.h"
#include "timer.h"
#include "led.h"

void __attribute__ ((interrupt("ABORT"))) reset_vector(void)
{
	while (1) {
		GPIO_FSEL(4, GPIO_OUTPUT);
		led_flash(4, 1);
	}
}

void __attribute__ ((interrupt("UNDEF"))) undefined_instruction_vector(void)
{
	while (1) {
		GPIO_FSEL(4, GPIO_OUTPUT);
		led_flash(4, 1);
	}
}

void __attribute__ ((interrupt("SWI"))) software_interrupt_vector(void)
{
	while (1) {
		GPIO_FSEL(4, GPIO_OUTPUT);
		led_flash(4, 1);
	}
}

void __attribute__ ((interrupt("ABORT"))) prefetch_abort_vector(void)
{
	while (1) {
		GPIO_FSEL(4, GPIO_OUTPUT);
		led_flash(4, 1);
	}
}

void __attribute__ ((interrupt("ABORT"))) data_abort_vector(void)
{
	while (1) {
		GPIO_FSEL(4, GPIO_OUTPUT);
		led_flash(4, 1);
	}
}

void __attribute__ ((interrupt("IRQ"))) interrupt_vector(void)
{
	/*
	static int flag = 0;

	TIMER_IRQ_CLEAR();

	if (flag) {
		GPIO_CLR(4);
		flag = 0;
	} else {
		GPIO_SET(4);
		flag = 1;
	}*/

	GPIO_FSEL(4, GPIO_OUTPUT);
	led_flash(4, 7);
}

void __attribute__ ((interrupt("FIQ"))) fast_interrupt_vector(void)
{
	while (1) {
		GPIO_FSEL(4, GPIO_OUTPUT);
		led_flash(4, 1);
	}
}

