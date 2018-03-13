#ifndef _DEVICE_H
#define _DEVICE_H

#include <stdint.h>

#include "hashmap.h"

#define CACHE_BIN_SIZE	16

typedef struct {
	uint32_t		sector_size;						// in byte
	uint32_t		(*read_sector)(uint32_t, char *);
}	block_device;

typedef struct {
	uint32_t	start;			// The physical sector where the partition begins.
	uint32_t	sector_size;	// The size, in bytes, of a logical sector in the partition.
}	partition;

typedef struct {
	partition		part;
	block_device	device;
	HLIST_HEAD(cache_bin[CACHE_BIN_SIZE]);		// linked before bcache's node
}	cache_device;

typedef struct {
	char			*data;
	uint64_t		sector_log;
	HLIST_NODE(node);
}	bcache;

/*
 * Read from cache device, cache data, get REFERENCE of data and return its size.
 */
size_t cd_read_sector (cache_device *pcd, uint64_t sectorn, char **buffer);

#endif
