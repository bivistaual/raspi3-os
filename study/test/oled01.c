#include "bit_font.h"
#include "gpio.h"
#include "ssh1106.h"
#include "delay.h"
#include "i2c.h"
#include "led.h"

void kernel_main(unsigned int r0, unsigned int r1, unsigned atags)
{
	GPIO_FSEL(4, GPIO_OUTPUT);
	GPIO_FSEL(2, GPIO_FUNC0);
	GPIO_FSEL(3, GPIO_FUNC0);

	I2C1_WE();
	I2C1_SET_DIV(400);
	I2C1_SET_ADDR(SSH1106_SLAVE_ADDR >> 1);

	I2C1_SET_DLEN(2);
	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_CMD);
	I2C1_WRITE(SSH1106_DISPLAY_ON);
	delay(2000000);
	I2C1_START();
	delay(2000000);

//	I2C1_SET_DLEN(2);
//	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
//	I2C1_WRITE(SSH1106_DISPLAY_ENTIER_ON);
//	I2C1_START();
//	delay(2000000);

//	I2C1_SET_DLEN(2);
//	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_CMD);
//	I2C1_WRITE(0x5d);
//	I2C1_START();
//	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
//	I2C1_WRITE(0xb0);
//	I2C1_SET_DLEN(2);
//	I2C1_WRITE(SSH1W106_ONLY_DATA | SSH1106_CTRL_CMD);
//	I2C1_WRITE(0x02);
//	I2C1_START();

//	I2C1_SET_DLEN(2);
//	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_CMD);
//	I2C1_WRITE(0x13);
//	I2C1_START();

	int i, j, k = 0, l;

	ssh1106_set_page(0);
	ssh1106_set_col(2);

	for (j = 0; j < 8; j++) {
		for (i = 0; i < 21; i++) {
			for (l = 0; l < 6; l++)
				ssh1106_write_byte(bit_font[k][l]);
			k++;
			if (k > 90)
				goto out;
		}
		ssh1106_write_byte(0);
		ssh1106_write_byte(0);

		ssh1106_set_page(j + 1);
		ssh1106_set_col(2);
	}

out:
	GPIO_FSEL(17, GPIO_INPUT);
	while (!GPIO_ISH(17));

	I2C1_SET_DLEN(2);
	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_CMD);
	I2C1_WRITE(SSH1106_DISPLAY_OFF);
	I2C1_START();
}

