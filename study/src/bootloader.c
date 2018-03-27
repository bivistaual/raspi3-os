#include "mini_uart.h"
#include "xmodem.h"
#include "led.h"
#include "system_timer.h"

#define BINARY_START_ADDR	((char *)0x80000)

static void jump_to(char *);

int kmain(void)
{
    mu_init();

	spin_sleep_ms(100);

	if (xmodem_receive(0, 0) == -1)
		return -1;

	jump_to(BINARY_START_ADDR);

	return 0;
}

static void jump_to(char * addr)
{
	__asm__(
		"br %0"
		:
		:"r"(addr)
	);
}
