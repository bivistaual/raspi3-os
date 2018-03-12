#ifndef _DEVICE_H
#define _DEVICE_H

#include <stdint.h>

#define BLOCK_DEVICE	0x0
#define CACHE_DEVICE	0x1
#define CHAR_DEVICE		0x2

typedef struct {
	uint32_t	sector_size;						// in byte
	uint32_t	(*init)(void);
	uint32_t	(*read_sector)(uint32_t, char *);
}	block_device;

#endif
