#include "mini_uart.h"
#include "led.h"

void mu_write_byte(char c)
{
	while (1)
		if (MU_TX_FIFO_EMPTY())
			break;
	MU_DATA_WRITE(c);
}

char mu_read_byte(void)
{
	while (1)
		if (!MU_RX_FIFO_EMPTY())
			break;
	return MU_DATA_READ();
}
