#include <stdint.h>

#include "device.h"

uint32_t bd_init(block_device * pbd)
{
	return (pbd->init)();
}

uint32_t bd_read_sector(block_device * pbd, uint32_t n, char * buffer)
{
	return (pbd->read_sector)(n, buffer);
}
