#include "mini_uart.h"

int write(int handle, void * buffer, int nbyte);

int read(int handle, void * buffer, int nbyte);

int write(int handle, void * buffer, int nbyte)
{
	int i;

	for (i = 0; i < nbyte; i++)
		mu_write_byte(*((char *)(buffer + i)));
	
	return i;
}

int read(int handle, void * buffer, int nbyte)
{
	int i;

	for (i = 0; i < nbyte; i++)
		*((char *)(buffer + i)) = mu_read_byte();

	return i;
}
