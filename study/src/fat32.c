#include <stdbool.h>

#include "fat32.h"
#include "device.h"
#include "sdcard.h"
#include "string.h"
#include "console.h"
#include "malloc.h"
#include "assert.h"

void mbr_parse(block_device *pbd, MBR_t *pmbr)
{
	char buffer[512];

	pbd->read_sector(0, buffer);

	memcpy(pmbr->disk_id, buffer + 436, 10);
	memcpy(&pmbr->valid, buffer + 512, 2);

	for (int n = 0, offset = 446; n < 4; offset += 16, n++) {
		kprintf("Partition %d:\n", n);
		pmbr->part_entry[n].boot = *(buffer + offset);
		kprintf("\tboot indicator = 0x%x, ", *(buffer + offset));
		pmbr->part_entry[n].type = *(buffer + offset + 4);
		kprintf("partition type = 0x%x,\n", *(buffer + offset + 4));
		pmbr->part_entry[n].start = *((uint32_t *)buffer + offset + 8);
		kprintf("\tstart sector = %d, ", *((uint32_t *)buffer + offset + 8));
		pmbr->part_entry[n].part_size = *((uint32_t *)buffer + offset + 12);
		kprintf("partition size = %d\n", *((uint32_t *)buffer + offset + 12));
	}
}

void ebpb_parse(block_device *pbd, MBR_t *pmbr, EBPB_t *pebpb)
{
	char buffer[512];

	for (int n = 0; n < 4; n++)
		if (pmbr->part_entry[n].type == 0xb || pmbr->part_entry[n].type == 0xc) {
			pebpb->start = pmbr->part_entry[n].start;
			break;
		}

	pbd->read_sector(pebpb->start, buffer);

	pebpb->sector_size = *((uint16_t *)buffer + 11);
	pebpb->cluster_size = *(buffer + 13);
	pebpb->reserved = *((uint16_t *)buffer + 14);
	pebpb->sectors = *((uint16_t *)buffer + 19) == 0 ?
		*((uint32_t *)buffer + 32) :
		*((uint16_t *)buffer + 19);
	pebpb->fats = *(buffer + 16);
	pebpb->fat_size = *((uint32_t *)buffer + 36);
}

fat32_t *fat32_init(block_device *pbd)
{
	fat32_t *pfat32;
	MBR_t mbr;
	EBPB_t ebpb;
	cache_device *pcd;

	if ((pfat32 = (fat32_t *)malloc(sizeof(fat32_t))) == NULL)
		panic("Error in allocating memory for FAT32 system!\n");

	mbr_parse(pbd, &mbr);
	ebpb_parse(pbd, &mbr, &ebpb);

	// Only read the first partition entry, then add its start sector and FATs
	// offset to fetch the physical sector number of FATs.

	pfat32->fat_start = mbr.part_entry[0].start + ebpb.reserved;

	pfat32->sector_size = ebpb.sector_size;
	pfat32->cluster_size = ebpb.cluster_size;
	pfat32->root_cluster = ebpb.root_cluster;
	pfat32->fat_size = ebpb.fat_size;
	pfat32->data_start = pfat32->fat_start + ebpb.fats * ebpb.fat_size;

	pcd = &pfat32->device;
	pcd->device = *pbd;
	pcd->part.sector_size = pfat32->sector_size;
	pcd->part.start = pfat32->fat_start;
	for (int i = 0; i < CACHE_BIN_SIZE; i++)
		HLIST_INIT(pcd->cache_bin + i);

	return pfat32;
}

size_t fat32_read_cluster(fat32_t *pfat32, size_t c_index, char *buffer)
{
	uint32_t cluster_size = pfat32->cluster_size;
	uint32_t sector_size = pfat32->sector_size;
	size_t result = 0;

	for (uint32_t i = 0; i < cluster_size; i++) {
		result += cd_read_sector(&pfat32->device,
				pfat32->data_start + cluster_size * (c_index - 2) + i,
				buffer + i * sector_size);
	}

	return result;
}

size_t fat32_read_chain(fat32_t *pfat32, size_t c_start, char **pbuf)
{
	cache_device *pcd = &pfat32->device;
	size_t fat_start = pfat32->fat_start;
	size_t result = 0;
	uint32_t sector_size = pfat32->sector_size;
	uint8_t cluster_size = pfat32->cluster_size;
	uint32_t next_index;		// FAT entry value, may be next index of cluster
	uint32_t c_index;			// current index of cluster
	uint32_t distance;			// sectors between cluster index and FAT start
	char *buf_entry;

	// calculate distance between FAT start and c_index
	c_index = c_start;
	distance = c_index / sector_size;

	// read file allocation table
	buf_entry = (char *)malloc(sector_size);
	if (buf_entry == NULL)
		return 0;
	cd_read_sector(pcd, fat_start + distance, buf_entry);
	next_index = buf_entry[c_index % sector_size] & FAT32_ENTRY_MASK;

	// unused cluster

	if (next_index == FAT32_ENTRY_UNUSED)
		goto fat32_read_chain_return;

	// data cluster

	*pbuf = (char *)malloc(cluster_size * sector_size);
	if (*pbuf == NULL)
		goto fat32_read_chain_return;

	while (next_index - 2 <= 0xfffffed || next_index - 0xffffff8 <= 7) {
		// read the specific cluster data to the tail of buffer
		result += fat32_read_cluster(pfat32, c_index, *pbuf + result);

		// not EOC
		if (next_index - 2 <= 0xfffffed) {
			// if entry links between two sectors, refresh file allocation table
			if (distance != next_index / sector_size) {
				distance = next_index / sector_size;
				cd_read_sector(pcd, fat_start + distance, buf_entry);
			}

			// save current entry to further use and get next entry
			c_index = next_index;
			next_index = buf_entry[next_index % sector_size];

			// re-allocate memory for next read
			*pbuf = (char *)realloc(*pbuf, result + cluster_size * sector_size);
			if (pbuf == NULL) {
				result = 0;
				goto fat32_read_chain_return;
			}
		}
	}

fat32_read_chain_return:

	free(buf_entry);
	return result;
}

dir_entry_t *fat32_find_entry(const char *name, dir_entry_t *pdir_entry, size_t length)
{
	size_t c = 0, lfn_entrys;
	char buffer[511];
	char *name_utf16;

	while (c < length) {
		lfn_entrys = fat32_parse_name(&pdir_entry[c], buffer);
		
		name_utf16 = (char *)malloc(sizeof(char) * (strlen(name) + 1));
		if (name_utf16 == NULL)
			panic("No memory available!\n");

		asciitoutf16(name_utf16, name);
		if (strcmp(name_utf16, buffer) == 0) {
			free(name_utf16);
			return pdir_entry + c + lfn_entrys;
		}
		else
			c += lfn_entrys + 1;
	}

	free(name_utf16);

	return NULL;
}

size_t fat32_parse_name(dir_entry_t *pdir_entry, char *buffer)
{
	size_t lfn_entrys = 0;
	int index = 0, point_index = 0;

	if (FAT32_IS_LNF(pdir_entry->reg_dir.attribute)) {
		while (FAT32_IS_LNF(pdir_entry[lfn_entrys].lnf_dir.attribute)) {
			char *p = buffer + 26 * (pdir_entry[lfn_entrys].lnf_dir.seq_number & 0x1f - 1);
			strncpy(p, pdir_entry[lfn_entrys].lnf_dir.name1, 10);
			strncpy(p + 10, pdir_entry[lfn_entrys].lnf_dir.name2, 12);
			strncpy(p + 22, pdir_entry[lfn_entrys].lnf_dir.name3, 14);
			lfn_entrys++;
		}
	} else {
		while (index < 8) {
			if (pdir_entry->reg_dir.name[index] == '\0')
				break;
			index++;
		}
		strncpy(buffer, pdir_entry->reg_dir.name, index);
		
		if (pdir_entry->reg_dir.extension[0] != '\0') {
			point_index = index;
			index = 0;
			buffer[point_index] = '.';
			while (index < 3) {
				if (pdir_entry->reg_dir.name[index] == '\0')
					break;
				index++;
			}
			strncpy(buffer + point_index + 1,
					pdir_entry->reg_dir.extension,
					index);
			buffer[point_index + 1 + index] = '\0';
		} else
			buffer[index] = '\0';
		
		lfn_entrys = 0;
	}

	return lfn_entrys;
}

file *fat32_open(fat32_t *pfat32, const char *path)
{
	char *p, *path_part;
	dir_entry_t *pdir_entry, *pdir_result, dir_result;
	size_t dirs;
	bool is_root = true;
	file *pfile = NULL;

	if (path == NULL)
		panic("path is NULL!\n");

	// make a copy of constant path string
	p = (char *)malloc(sizeof(char) * strlen(path));
	if (p == NULL)
		return NULL;
	strcpy(p, path);

	path_part = strtok(p, "/");
	while (path_part != NULL) {
		// determine to read root cluster or sub-directory cluster
		if (is_root) {
			dirs = fat32_read_chain(pfat32,
					pfat32->root_cluster,
					(char **)(&pdir_entry)) / sizeof(dir_entry_t);
			is_root = false;
		} else {
			// open fail when the last entry found is not a directory
			if (!FAT32_IS_DIR(dir_result.reg_dir.attribute))
				goto fat32_open_return;

			// copy the directory entry found and free current entries
			dir_result = *pdir_result;
			free(pdir_entry);

			// read next directory entry
			dirs = fat32_read_chain(pfat32,
					(uint32_t)(dir_result.reg_dir.cluster_high << 16) +
					dir_result.reg_dir.cluster_low,
					(char **)(&pdir_entry)) / sizeof(dir_entry_t);
		}

		pdir_result = fat32_find_entry(path_part, pdir_entry, dirs);
		
		// no corresponding entry in directory entries
		if (pdir_result == NULL)
			goto fat32_open_return;

		path_part = strtok(NULL, "/");
	}

	pfile = (file *)malloc(sizeof(file));
	if (pfile == NULL)
		goto fat32_open_return;

	if (is_root) {
		pfile->cluster = pfat32->root_cluster;
		pfile->attribute = 0x10;
	} else {
		pfile->cluster = ((uint32_t)pdir_result->reg_dir.cluster_high << 16) +
			pdir_result->reg_dir.cluster_low;
		pfile->attribute = pdir_result->reg_dir.attribute;
		pfile->pfat32 = pfat32;
		pfile->time_ts = pdir_result->reg_dir.time_ts;
		pfile->creation_time = pdir_result->reg_dir.creation_time;
		pfile->creation_date = pdir_result->reg_dir.creation_date;
		pfile->last_acc_date = pdir_result->reg_dir.last_acc_date;
		pfile->last_mod_time = pdir_result->reg_dir.last_mod_time;
		pfile->last_mod_date = pdir_result->reg_dir.last_mod_date;
		pfile->size = pdir_entry->reg_dir.size;
	}

fat32_open_return:

	free(p);
	free(pdir_entry);

	return pfile;
}
