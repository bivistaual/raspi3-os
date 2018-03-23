#ifndef _FAT32_H
#define _FAT32_H

#include <stdint.h>

#include "device.h"

#define FAT32_ENTRY_MASK		0x0fffffff
#define FAT32_ENTRY_UNUSED		0x0000000
#define FAT32_ENTRY_RESERVED	0x0000001
#define FAT32_ENTRY_BAD			0xffffff7
#define FAT32_YEAR_MASK			0xfe00
#define FAT32_MONTH_MASK		0x01e0
#define FAT32_DAY_MASK			0x001f
#define FAT32_HOUR_MASK			0xf800
#define FAT32_MINUTE_MASK		0x07e0
#define FAT32_SECOND_MASK		0x001f

#define FAT32_IS_HIDDEN(attribute)												\
	(attribute & 0x02)

#define FAT32_IS_LNF(attribute)													\
	(attribute == 0x0f)

#define FAT32_IS_ARCH(attribute)												\
	(attribute & 0x20)

#define FAT32_IS_DIR(attribute)													\
	(attribute & 0x10)

#define FAT32_IS_RO(attribute)													\
	(attribute & 0x01)

#define FAT32_GET_YEAR(date)													\
	(((date) & FAT32_YEAR_MASK) >> 9)

#define FAT32_GET_MONTH(date)													\
	(((date) & FAT32_MONTH_MASK) >> 5)

#define FAT32_GET_DAY(date)														\
	((date) & FAT32_DAY_MASK)

#define FAT32_GET_HOUR(time)													\
	(((time) & FAT32_HOUR_MASK) >> 11)

#define FAT32_GET_MINUTE(time)													\
	(((time) & FAT32_MINUTE_MASK) >> 5)

#define FAT32_GET_SECOND(time)													\
	(((time) & FAT32_SECOND_MASK) << 1)

typedef struct {
	cache_device	device;
	uint16_t		sector_size;
	uint8_t			cluster_size;	// in sectors
	uint32_t		fat_size;
	uint32_t		fat_start;		// start sector of FAT but NOT partition!
	uint32_t		data_start;		// start sector of data region in fat
	uint32_t		root_cluster;
}	fat32_t;

typedef struct {
	uint8_t			disk_id[10];	// Optional "unique" disk ID"
	struct {
		uint8_t			boot;			// Boot indicator bit flag: 0 = no, 0x80 = bootable (or "active")
		uint8_t			type;			// Partition Type
		uint32_t		start;			// Relative Sector (to start of partition -- also the partition's starting LBA value)
		uint32_t		part_size;	// Total Sectors in partition
	}				part_entry[4];	// Partition entry table
	uint16_t		valid;			// (0x55, 0xAA) "Valid bootsector" signature bytes
}	MBR_t;

typedef struct {
	uint8_t			disassemble[3];
	uint8_t			oem_id[8];
	uint16_t		sector_size;
	uint8_t			cluster_size;
	uint16_t		reserved_size;
	uint8_t			fats;
	uint16_t		dir_entries_max;
	uint16_t		log_sectors_w;
	uint8_t			fat_id;
	uint16_t		fat_size_w;
	uint16_t		track_size;
	uint16_t		heads;
	uint32_t		hidden_size;
	uint32_t		log_sectors_d;
	uint32_t		fat_size;
	uint16_t		flags;
	uint16_t		fat_version;
	uint32_t		root_cluster;
	uint16_t		fsinfo_sector;
	uint16_t		boot_sector_bk;
	uint8_t			reserved[12];
	uint8_t			dirve_number;
	uint8_t			flag_nt;
	uint8_t			signature;
	uint32_t		volume_id;
	uint8_t			volume_lable[11];
	uint8_t			system_id[8];
	uint8_t			boot_code[420];
	uint16_t		bootable;
} __attribute__((packed)) EBPB_t;

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
}   regular_dir_entry;

typedef struct {
	uint8_t			seq_number;
	char			name1[10];
	uint8_t			attribute;
	uint8_t			type;
	uint8_t			checksum;
	char			name2[12];
	uint16_t		zero;
	char			name3[4];
}   LFN_dir_entry;

typedef union {
	regular_dir_entry	reg_dir;
	LFN_dir_entry		lnf_dir;
}   dir_entry_t;

typedef struct {
	uint32_t		cluster;
	fat32_t			*pfat32;
	uint8_t			attribute;
	uint8_t			time_ts;
	uint16_t		creation_time;
	uint16_t		creation_date;
	uint16_t		last_acc_date;
	uint16_t		last_mod_time;
	uint16_t		last_mod_date;
	uint32_t		size;
}	file;

/*
 * Return a initialized fat32_t struct stocked in the device.
 * @pbd:		block device backed by a physical device
 */
fat32_t *fat32_init (block_device *pbd);

/*
 * Return the size of the read cluster indexed by @c_index and copy the data
 * to @buffer.
 */
size_t fat32_read_cluster (fat32_t *pfat32, size_t c_index, char *buffer);

/*
 * Return the whole data size in bytes in the chain @buf_h started at cluster
 * @c_start.
 */
size_t fat32_read_chain (fat32_t *pfat32, size_t c_start, char **pbuf);

/*
 * Return the specific directory entry pointer.
 * @pdir_entry:		pointer of directory entry array.
 */
dir_entry_t *fat32_find_entry (const char *name, dir_entry_t *pdir_entry, size_t length);

/*
 * Return an offset of regular_dir_entry from @pdir_entry.
 *
 * NOTE: the directory entry name's first byte indicates the directory is deleted or
 * not.
 */
size_t fat32_parse_name (dir_entry_t *pdir_entry, char *buffer);

file *fat32_open (fat32_t *pfat32, const char *path);

#endif
