#include "console.h"
#include "system_timer.h"
#include "mini_uart.h"

int kernel_main(void)
{
	mu_init();

	spin_sleep_ms(5000);

	mu_write_str("tab:\t enter:\n %:%");
	mu_write_byte('\n');
	mu_write_byte('\r');

	while (1) {
		kprintf("n = %d,\tstr = %s,\tc = %c\n", 147, "Hello world!", 'L');
		spin_sleep_ms(1000);
	}

	return 0;
}
