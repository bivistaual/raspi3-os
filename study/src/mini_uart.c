#include "mini_uart.h"
#include "led.h"
#include "gpio.h"
#include "aux.h"
#include "system_timer.h"

void mu_init(void)
{
	MU_EN();
	MU_BAUD_SET(270);
	MU_SET_8BIT();

	GPIO_FSEL(4, GPIO_OUTPUT);
	GPIO_FSEL(14, GPIO_FUNC5);
	GPIO_FSEL(15, GPIO_FUNC5);

	*GPPUD = 0;
	spin_sleep_us(150);
	*GPPUDCLK0 = (1 << 14) | (1 << 15);
	spin_sleep_us(150);
	*GPPUDCLK0 = 0;

	MU_RX_FIFO_CLR();
	MU_TX_FIFO_CLR();
}

void mu_write_byte(const char c)
{
	while (1)
		if (MU_TX_FIFO_EMPTY())
			break;
	MU_DATA_WRITE(c);
}

int mu_write_fifo(const char c)
{
	if (!MU_TX_FIFO_AVA())
		return 0;
	MU_DATA_WRITE(c);
	return 1;
}

char mu_read_byte(void)
{
	while (1)
		if (!MU_RX_FIFO_EMPTY())
			break;
	return MU_DATA_READ();
}

int mu_read_fifo(unsigned char * c)
{
	if (MU_RX_FIFO_EMPTY())
		return 0;
	*c = MU_DATA_READ();
	return 1;
}

void mu_write_str(const char * str)
{
	unsigned long index = 0;
	while (str[index] != '\0') {
		mu_write_byte(str[index]);
		if (str[index] == '\n')
			mu_write_byte('\r');
		index++;
	}
}

