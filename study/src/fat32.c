#include "fat32.h"
#include "device.h"
#include "sdcard.h"
#include "string.h"
#include "console.h"
#include "list.h"
#include "malloc.h"
#include "assert.h"

void mbr_parse(block_device *pbd, MBR_t *pmbr)
{
	char buffer[512];

	pbd->read_sector(0, buffer);

	memcpy(pmbr->disk_id, buffer + 436, 10);
	memcpy(&pmbr->valid, buffer + 512, 2);

	for (int n = 0, offset = 446; n < 4; offset += 16, n++) {
		pmbr->part_entry[n].boot = *(buffer + offset);
		pmbr->part_entry[n].type = *(buffer + offset + 4);
		pmbr->part_entry[n].start = *((uint32_t *)buffer + offset + 8);
		pmbr->part_entry[n].sector_size = *((uint32_t *)buffer + offset + 12);
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
	pebpb->sectors = *((uint16_t *)buffer + 19) == 0 ? *((uint32_t *)buffer + 32) : *((uint16_t *)buffer + 19);
	pebpb->fats = *(buffer + 16);
	pebpb->fat_size = *((uint32_t *)buffer + 36);
}

void fat32_init(fat32_t *pfat32)
{
	MBR_t mbr;
	EBPB_t ebpb;
	cache_device cd;
	block_device *pbd = &cd.device;

	if (sd_init())
		panic("SDcard initialization failed!\n");

	pbd->sector_size = 512;
	pbd->read_sector = sd_readsector;
	
	mbr_parse(pbd, &mbr);
	ebpb_parse(pbd, &mbr, &ebpb);

	// Only read the first partition entry and add it with FATs offset to fetch the
	// physical sector number of FATs.

	pfat32->fat_start = mbr.part_entry[0].start + ebpb.reserved;
	
	pfat32->sector_size = ebpb.sector_size;
	pfat32->cluster_size = ebpb.cluster_size;
	pfat32->root_cluster = ebpb.root_cluster;
	pfat32->fat_size = ebpb.fat_size;
	pfat32->data_start = pfat32->fat_start + ebpb.fats * ebpb.fat_size;

	cd.part.sector_size = pfat32->sector_size;
	cd.part.start = pfat32->fat_start;
	for (int i = 0; i < CACHE_BIN_SIZE; i++)
		HLIST_INIT(cd.cache_bin + i);

	pfat32->device = cd;
}

size_t fat32_read_cluster(fat32_t *pfat32, size_t c_index, char **pbuf)
{
	uint32_t cluster_size = pfat32->cluster_size;
	size_t result = 0;

	for (uint32_t i = 0; i < cluster_size; i++) {
		result += cd_read_sector(&pfat32->device,
				pfat32->data_start + cluster_size * (c_index - 2) + i, pbuf);
	}

	return result;
}

size_t fat32_read_chain(fat32_t *pfat32, size_t c_start, LIST_HEAD(*buf_h))
{
	cache_device *pcd = &pfat32->device;
	size_t fat_start = pfat32->fat_start, result = 0;
	uint32_t sector_size = pfat32->sector_size;
	uint32_t next_index;		// FAT entry value, may be next index of cluster
	uint32_t c_index;			// current index of cluster
	uint32_t distance;			// sectors between cluster index and FAT start
	cluster_chain *pcc;
	char *buf_entry;

	LIST_INIT(buf_h);

	// calculate distance between FAT start and c_index
	c_index = c_start;
	distance = c_index / sector_size;

	// read file allocation table
	cd_read_sector(pcd, fat_start + distance, &buf_entry);
	next_index = buf_entry[c_index % sector_size] & FAT32_ENTRY_MASK;

	// unused cluster
	if (next_index == FAT32_ENTRY_UNUSED || next_index - 0xffffff8 <= 7)
		return 0;
	
	// data cluster
	while (next_index - 2 <= 0xfffffed) {
		pcc = (cluster_chain *)malloc(sizeof(cluster_chain));

		// read entire cluster and add to cluster chain (frequently addressing)

		// !!!!!!!!!!!!!!!!!!THIS WILL CAUSE SEGMENT FAULT!!!!!!!!!!!!!!!!!!
		result += fat32_read_cluster(pfat32, c_index, &pcc->data);
		list_add_tail(&pcc->node, buf_h);

		// if entry links between two sectors, refresh file allocation table
		if (distance != next_index / sector_size) {
			distance = next_index / sector_size;
			cd_read_sector(pcd, fat_start + distance, &buf_entry);
		}

		// save current entry to further use and get next entry
		c_index = next_index;
		next_index = buf_entry[next_index % sector_size];
	}

	// if EOC detected, read the last cluster and add to list
	if (next_index - 0xffffff8 <= 7) {
		pcc = (cluster_chain *)malloc(sizeof(cluster_chain));
		result += fat32_read_cluster(pfat32, c_index, &pcc->data);
		list_add_tail(&pcc->node, buf_h);
	}

	return result;
}

dir_t dir_parse(const char *dir_entry)
{
	dir_t dir;
}
