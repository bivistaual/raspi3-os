#ifndef _FAT32_H
#define _FAT32_H

#include <stdint.h>

#include "device.h"

#define FAT32_ENTRY_MASK		0x0fffffff
#define FAT32_ENTRY_UNUSED		0x0000000
#define FAT32_ENTRY_RESERVED	0x0000001
#define FAT32_ENTRY_BAD			0xffffff7

typedef struct {
	cache_device	device;
	uint16_t		sector_size;
	uint8_t			cluster_size;
	uint32_t		fat_size;
	uint32_t		fat_start;		// start sector of fat partition
	uint32_t		data_start;		// start sector of data region in fat
	uint32_t		root_cluster;
}	fat32_t;

typedef struct {
	uint8_t			disk_id[10];	// Optional "unique" disk ID"
	struct {
		uint8_t			boot;			// Boot indicator bit flag: 0 = no, 0x80 = bootable (or "active")
		uint8_t			type;			// Partition Type
		uint32_t		start;			// Relative Sector (to start of partition -- also the partition's starting LBA value)
		uint32_t		sector_size;	// Total Sectors in partition
	}				part_entry[4];	// Partition entry table
	uint16_t		valid;			// (0x55, 0xAA) "Valid bootsector" signature bytes
}	MBR_t;

typedef struct {
	uint32_t		start;			// First sector number of FAT32 partition
	uint16_t		sector_size;	// The number of Bytes per sector (all numbers are in the little-endian format)
	uint8_t			cluster_size;	// Number of sectors per cluster
	uint16_t		reserved;		// FATs offset from start of FAT32 partition.
	uint32_t		sectors;		// Total logical sectors.
	uint8_t			fats;			// Number of fats.
	uint32_t		fat_size;		// Sectors per FAT. The size of the FAT in sectors.
	uint32_t		root_cluster;	// Often 2.
}	EBPB_t;

typedef struct {
	char *data;
	LIST_NODE(node);
}	cluster_chain;

typedef struct {
	char			name[8];
	char			extension[3];
	uint8_t			attribute;
	uint8_t			reserved;
	uint8_t			time_ts;
	uint16_t		creation_time;
	uint16_t		creation_date;
	uint16_t		last_acc_date;
	uint16_t		cluster_high;
	uint16_t		last_mod_time;
	uint16_t		last_mod_date;
	uint16_t		cluster_low;
	uint32_t		size;
}	regular_dir_entry;

typedef struct {
	uint8_t			seq_number;
	char			name1[10];
	uint8_t			attribute;
	uint8_t			type;
	uint8_t			checksum;
	char			name2[12];
	uint16_t		zero;
	char			name3[4];
}	LFN_dir_entry;

typedef union {
	regular_dir_entry	reg_dir;
	LFN_dir_entry		lnf_dir;
}	dir_t;

void mbr_parse (block_device *, MBR_t *);

void ebpb_parse (block_device *, MBR_t *, EBPB_t *);

void fat32_init (fat32_t *pfat32);

size_t fat32_read_cluster (fat32_t *pfat32, size_t c_index, char **pbuf);

size_t fat32_read_chain (fat32_t *pfat32, size_t c_start, LIST_HEAD(*buf_h));

/*
 * Return the pointer of a directory entry buffer at @index of the buffer list.
 */
dir_t *cc_get_dir (LIST_HEAD(*buf_h), size_t index, size_t cluster_size);

size_t dir_parse ( *dir_entry, dir_t *pdir);

#endif
