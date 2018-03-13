#include "fat32.h"
#include "device.h"
#include "sdcard.h"
#include "string.h"
#include "console.h"
#include "list.h"
#include "malloc.h"

typedef struct {
	char *data;
	LIST_NODE(node);
}	cluster_chain;

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

size_t fat32_read_cluster(fat32_t *pfat32, size_t c_index, char *buffer)
{
	uint32_t cluster_size = pfat32->cluster_size;
	uint32_t bytes = pfat32->sector_size;
	size_t result = 0;

	for (uint32_t i = 0; i < cluster_size; i++) {
		memcpy(buffer + i * bytes,
				cd_read_sector(&pfat32->device,
					pfat32->data_start + cluster_size * (c_index - 2) + i),
				bytes);
		result += bytes;
	}

	return result;
}

size_t fat32_read_chain(fat32_t *pfat32, size_t c_start, LIST_HEAD(*buf_h))
{
	size_t fat_start = pfat32->fat_start;
	uint32_t bytes = pfat32->sector_size;
	uint32_t entry;
	cluster_chain *pcc;
	char *buf_entry;

	LIST_INIT(buf_h);

	buf_entry = cd_read_sector(&pfat32->device, fat_start + c_start / bytes);
	entry = buf_entry[c_start % bytes] & FAT32_ENTRY_MASK;

	if (entry == FAT32_ENTRY_UNUSED)
		return 0;
	
	while (entry - 2 <= 0xfffffed) {
		pcc = (cluster_chain *)malloc(sizeof(cluster_chain));
		
	}
}
