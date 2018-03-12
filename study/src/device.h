#ifndef _DEVICE_H
#define _DEVICE_H

#include <stdint.h>

#include "hashmap.h"

#define BLOCK_DEVICE	0x0
#define CACHE_DEVICE	0x1
#define CHAR_DEVICE		0x2

typedef struct {
	uint32_t		sector_size;						// in byte
	uint32_t		(*init)(void);
	uint32_t		(*read_sector)(uint32_t, char *);
}	block_device;

typedef struct {
	uint32_t		start;
	uint32_t		sector_size;
	block_device	device;
	HLIST_HEAD(cache_bin[16]);
}	cache_device;

typedef struct {
	char			*data;
	uint32_t		sectorn;
	HLIST_NODE(node);
}	bcache;

uint32_t cd_read_sector(cache_device *pcd, uint32_t sectorn, const char *buffer);

#endif
