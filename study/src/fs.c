#include "device.h"
#include "fs.h"
#include "sdcard.h"
#include "string.h"

void mbr_parse(block_device *pbd, MBR_t *pmbr)
{
	char buffer[512];

	pbd->read_sector(0, buffer);

	memcpy(pmbr->disk_id, buffer + 436, 10);
	memcpy(&pmbr->valid, buffer + 512, 2);

	for (int n = 0, offset = 446; n < 4; offset += 16, n++) {
		pmbr->part_entry[n].boot = *(buffer + offset);
		pmbr->part_entry[n].type = *(buffer + offset + 4);
		pmbr->part_entry[n].sector = *((uint32_t *)buffer + offset + 8);
		pmbr->part_entry[n].size = *((uint32_t *)buffer + offset + 12);
	}
}

void ebpb_parse(block_device *pbd, MBR_t *pmbr, EBPB_t *pebpb)
{
	char buffer[512];

	for (int n = 0; n < 4; n++)
		if (pmbr->part_entry[n].type == 0xb || pmbr->part_entry[n].type == 0xc) {
			pebpb->start = pmbr->part_entry[n].sector;
			break;
		}

	pbd->read_sector(pebpb->start, buffer);

	pebpb->per_sector = *((uint16_t *)buffer + 11);
	pebpb->per_cluster = *(buffer + 13);
	pebpb->reserved = *((uint16_t *)buffer + 14);
	pebpb->sectors = *((uint16_t *)buffer + 19) == 0 ? *((uint32_t *)buffer + 32) : *((uint16_t *)buffer + 19);
	pebpb->fats = *(buffer + 16);
	pebpb->per_fat = *((uint32_t *)buffer + 36);
}

