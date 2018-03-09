#ifndef _DEVICE_H
#define _DEVICE_H

#include <stdint.h>

#define BLOCK_DEVICE	0x0
#define CACHE_DEVICE	0x1
#define CHAR_DEVICE		0x2

typedef struct {
	uint8_t type;
	uint32_t (*init)(void);
	uint32_t (*read_sector)(uint32_t, char *);
}	block_device;

uint32_t bd_init(block_device *pbd);

uint32_t bd_read_sector(block_device *pbd, uint32_t n, char * buffer);

#endif
