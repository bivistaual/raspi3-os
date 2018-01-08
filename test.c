#include "i2c.h"
#include "gpio.h"

int main(void)
{
	// initialize gpio pin for i2c
	GPIO_FSEL(2, GPIO_FUNC0);	// SDA1
	GPIO_FSEL(3, GPIO_FUNC0);	// SCL1
	GPIO_FSEL(4, GPIO_OUTPUT);
	GPIO_CLR(4);

	// initialize i2c bus of raspberry pi 3
	I2C1_WE();
	I2C1_SET_DIV(32767);
	I2C1_SET_FEDL(0);
	I2C1_SET_REDL(0);
	I2C1_SET_DLEN(16);

	// setting data to be transfered
	
	// setting slave address
	I2C1_WRITE(SSH1106_SLAVE_ADDR);
	I2C1_SET_ADDR(0xf0);

	// setup of display
	delay(2000000);	
	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
	I2C1_WRITE(SSH1106_DISPLAY_ON);
	delay(2000000);
	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
	I2C1_WRITE(0x58);
	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
	I2C1_WRITE(0xb4);
	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
	I2C1_WRITE(0x01);
	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
	I2C1_WRITE(0x11);
	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_RAM);
	I2C1_WRITE(0xff);
	I2C1_WRITE(0x80);
	I2C1_WRITE(0x80);
	I2C1_WRITE(0x80);
	I2C1_WRITE(0x80);
	I2C1_START();

	if (I2C1_ERR())
		while (1) {
			GPIO_SET(4);
			delay(100000);
			GPIO_CLR(4);
			delay(1000000);
		}
	else
		while(1);

	// delay(20000000);
	// delay(20000000);
	// delay(20000000);
	
	// while (!I2C1_TXD());

	return 0;
}

void delay(t)
{
	while (t--);
}

