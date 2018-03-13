#ifndef _FAT32_H
#define _FAT32_H

#include <stdint.h>

typedef struct {
	uint32_t	start;		// The physical sector where the partition begins.
	uint32_t	size;		// The size, in bytes, of a logical sector in the partition.
}	partition;

typedef struct {

}	dir_t;

typedef struct {

}	file_t;

#endif
