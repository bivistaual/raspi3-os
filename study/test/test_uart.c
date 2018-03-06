#include "mini_uart.h"
#include "aux.h"
#include "gpio.h"

void kernel_main(void)
{
	MU_EN();
	MU_BAUD_SET(270);
	MU_SET_8BIT();
	MU_RX_FIFO_CLR();
	MU_TX_FIFO_CLR();

	GPIO_FSEL(4, GPIO_OUTPUT);
	GPIO_FSEL(14, GPIO_FUNC5);
	GPIO_FSEL(15, GPIO_FUNC5);

	char c;
	while (1) {
		c = mu_read_byte();
		mu_write_byte(c);
		mu_write_byte('-');
		mu_write_byte('>');
	}
}
