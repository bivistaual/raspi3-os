#include "ssh1106.h"
#include "i2c.h"
#include "bit_font.h"

void ssh1106_write_byte(const unsigned char c)
{
	I2C1_SET_DLEN(2);
	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_RAM);
	I2C1_WRITE(c);
	I2C1_START();

	while (I2C1_TA());
}

void ssh1106_write_char(const unsigned char c)
{
	char addr = c - ' ';
	int i = 0;
	
	for (i = 0; i < 6; i++)
		ssh1106_write_byte(bit_font[addr][i]);
}

void ssh1106_write_string(const unsigned char * string, unsigned int n)
{
	int i;

	for (i = 0; i < n; i++)
		ssh1106_write_char(string[i]);
}

void ssh1106_set_page(unsigned int page)
{
	I2C1_SET_DLEN(2);
	I2C1_WRITE(SSH1106_DATA_CTRL | SSH1106_CTRL_CMD);
	I2C1_WRITE(0xb0 | page & 0x0000000f);
	I2C1_START();

	while (I2C1_TA());
}

void ssh1106_set_col(unsigned int col)
{
	I2C1_SET_DLEN(2);
	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_CMD);
	I2C1_WRITE(0x00 | col & 0x0000000f);
	I2C1_START();
	
	while (I2C1_TA());

	I2C1_SET_DLEN(2);
	I2C1_WRITE(SSH1106_ONLY_DATA | SSH1106_CTRL_CMD);
	I2C1_WRITE(0x10 | col >> 4 & 0x0000000f);
	I2C1_START();

	while (I2C1_TA());
}

