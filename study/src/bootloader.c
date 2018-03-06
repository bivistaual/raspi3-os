#include "mini_uart.h"
#include "xmodem.h"
#include "led.h"
#include "system_timer.h"

#define BINARY_START_ADDR	((char *)0x80000)

static void jump_to(char *);

int kernel_main(void)
{
	// you have 15*0.3=4.5 seconds to run ttywrite or screen command on your
	// computer after USB to TTL module is pluged in.
	
	mu_init();

	if (xmodem_receive(0, 0) == -1) {
//		led_flash(4, 1);
//		spin_sleep_ms(1000);
		return -1;
	}

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
