#ifndef _FS_H
#define _FS_H

#include <stdint.h>

#include "device.h"

typedef struct {
	uint8_t			disk_id[10];	// Optional "unique" disk ID"
	struct {
		uint8_t			boot;			// Boot indicator bit flag: 0 = no, 0x80 = bootable (or "active")
		uint8_t			type;			// Partition Type
		uint32_t		sector;			// Relative Sector (to start of partition -- also the partition's starting LBA value)
		uint32_t		size;			// Total Sectors in partition
	}				part_entry[4];	// Partition entry table
	uint16_t		valid;			// (0x55, 0xAA) "Valid bootsector" signature bytes
}	MBR_t;

typedef struct {
	uint32_t		start;			// First sector number of FAT32 partition
	uint16_t		per_sector;		// The number of Bytes per sector (all numbers are in the little-endian format)
	uint8_t			per_cluster;	// Number of sectors per cluster
	uint16_t		reserved;		// FATs offset from start of FAT32 partition.
	uint32_t		sectors;		// Total logical sectors.
	uint8_t		fats;			// Number of fats;
	uint32_t		per_fat;		// Sectors per FAT. The size of the FAT in sectors.
}	EBPB_t;

void mbr_parse(block_device *, MBR_t *);

void ebpb_parse(block_device *, MBR_t *, EBPB_t *);

#endif
