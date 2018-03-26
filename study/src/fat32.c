#include <stdbool.h>

#include "fat32.h"
#include "device.h"
#include "sdcard.h"
#include "string.h"
#include "console.h"
#include "malloc.h"
#include "assert.h"
#include "system_timer.h"
#include "mini_uart.h"

extern int sd_err;

static inline void mbr_parse(block_device *pbd, MBR_t *pmbr)
{
	char buffer[512];

	if (pbd->read_sector(0, buffer) != 512)
		panic("Can't read MBR from sdcard. Error code %d.\n", sd_err);

		memcpy(pmbr->disk_id, buffer + 436, 10);
		memcpy(&pmbr->valid, buffer + 512, 2);

	for (int n = 0, offset = 446; n < 4; offset += 16, n++) {
		pmbr->part_entry[n].boot = *(buffer + offset);
		//DEBUG("boot = 0x%x\n", pmbr->part_entry[n].boot);
		pmbr->part_entry[n].type = *(buffer + offset + 4);
		//DEBUG("type = 0x%x\n", pmbr->part_entry[n].type);
		memcpy(&pmbr->part_entry[n].start, buffer + offset + 8, 4);
		//DEBUG("start = %d\n", pmbr->part_entry[n].start);
		memcpy(&pmbr->part_entry[n].part_size, buffer + offset + 12, 4);
		//DEBUG("size = %d\n\n", pmbr->part_entry[n].part_size);
	}
}

static inline void ebpb_parse(block_device *pbd, MBR_t *pmbr, EBPB_t *pebpb)
{
	uint32_t start = 0;

	for (int n = 0; n < 4; n++)
		if (pmbr->part_entry[n].type == 0xb || pmbr->part_entry[n].type == 0xc) {
			start = pmbr->part_entry[n].start;
			break;
		}

	if (start == 0)
		panic("No FAT32 partition was found!\n");

	if (pbd->read_sector(start, (char *)pebpb) != 512)
		panic("Can't read any data from sector %d. Error code %d\n", start, sd_err);
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

	pfat32->fat_start = mbr.part_entry[0].start + ebpb.reserved_size;
	//DEBUG("fat_start = %d\n", pfat32->fat_start);
	
	memcpy(&pfat32->sector_size, &ebpb.sector_size, 2);
	//DEBUG("sector_size = %d\n", pfat32->sector_size);

	pfat32->cluster_size = ebpb.cluster_size;
	//DEBUG("cluster_size = %d\n", pfat32->cluster_size);

	pfat32->root_cluster = ebpb.root_cluster;
	//DEBUG("root_cluster = %d\n", pfat32->root_cluster);

	//DEBUG("#FATs = %d\n", ebpb.fats);
	
	ebpb.system_id[6] = '\0';
	//DEBUG("system id = %s\n", ebpb.system_id);

	pfat32->fat_size = ebpb.fat_size;
	//DEBUG("fat_size = %d\n", pfat32->fat_size);

	pfat32->data_start = pfat32->fat_start + ebpb.fats * ebpb.fat_size;
	//DEBUG("data_start = %d\n", pfat32->data_start);

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
	
	// why the cluster number of the sub-directory of root directory is ZERO?
	c_index = c_index < 2 ? 2 : c_index;

	for (uint32_t i = 0; i < cluster_size; i++) {

		//DEBUG("Reading logical sector %d.\n",
		//		pfat32->data_start + cluster_size * (c_index - 2) + i);

		result += cd_read_sector(&pfat32->device,
				pfat32->data_start + cluster_size * (c_index - 2) + i,
				buffer + i * sector_size);
	}

	//DEBUG("Total %d bytes read.\n", result);

	return result;
}

size_t fat32_read_chain(fat32_t *pfat32, size_t c_start, char **pbuf)
{
	cache_device *pcd = &pfat32->device;
	size_t fat_start = pfat32->fat_start;			// FAT start sector
	size_t result = 0;
	uint32_t sector_size = pfat32->sector_size;		// in bytes
	uint8_t cluster_size = pfat32->cluster_size;	// in sectors
	uint32_t next_index;		// FAT entry value, may be next index of cluster
	uint32_t c_index;			// current index of cluster
	uint32_t distance;			// sectors between cluster index and FAT start
	uint32_t *buf_entry;

	// calculate distance between FAT start and c_index
	c_index = c_start;
	distance = c_index / sector_size;

	// read file allocation table
	buf_entry = (uint32_t *)malloc(sector_size);
	if (buf_entry == NULL)
		return 0;

	//DEBUG("Reading data from sector %d.\n", fat_start + distance);

	if (cd_read_sector(pcd, fat_start + distance, (char *)buf_entry) <= 0)
		panic("Can't read any directory entry at sector %d.\n",
				fat_start + distance);
	next_index = buf_entry[c_index % sector_size] & FAT32_ENTRY_MASK;
	
	//DEBUG("&buf_entry = 0x%x\n", buf_entry);
	//for (int i = 0; i < 16; i++) {
	//	kprintf("0x%x\t", *((uint32_t *)buf_entry + i));
	//	if ((i + 1) % 8 == 0)
	//		kprintf("\n");
	//}

	// unused cluster

	if (next_index == FAT32_ENTRY_UNUSED)
		goto fat32_read_chain_return;

	// data cluster

	*pbuf = (char *)malloc(cluster_size * sector_size);
	if (*pbuf == NULL)
		goto fat32_read_chain_return;

	//while (next_index - 2 <= 0xfffffed || next_index - 0xffffff8 <= 7) {
	while (1) {
		// read the specific cluster data to the tail of buffer

		//DEBUG("Reading data from cluster %d.\n", c_index);
	
		result += fat32_read_cluster(pfat32, c_index, *pbuf + result);

		//DEBUG("next entry = 0x%x\n", next_index);
		
		// not EOC
		
		if (next_index - 2 <= 0xfffffed) {
			// if entry links between two sectors, refresh file allocation table
			if (distance != next_index / sector_size) {
				distance = next_index / sector_size;
	
				if (cd_read_sector(pcd, fat_start + distance,
							(char *)buf_entry) <= 0)
					panic("Can't read any directory entry at sector %d.\n",
							fat_start + distance);

				//DEBUG("Renew directory entry at sector %d.\n", fat_start + distance);
			}

			// save current entry to further use and get next entry
			c_index = next_index;
			next_index = buf_entry[next_index % sector_size] & FAT32_ENTRY_MASK;
	
/*			//DEBUG("&buf_entry = 0x%x\n", buf_entry);
			for (int i = 0; i < 16; i++) {
				kprintf("0x%x\t", *((uint32_t *)buf_entry + i));
				if (i + 1 % 8 == 0)
					kprintf("\n");
			}
*/
			// re-allocate memory for next read
			
			//DEBUG("Re-allocate pbuf to %d bytes.\n", result + cluster_size * sector_size);

			*pbuf = (char *)realloc(*pbuf, result + cluster_size * sector_size);
			if (pbuf == NULL) {
				result = 0;
				goto fat32_read_chain_return;
			}
		} else
			break;
	}

	//DEBUG("Total %d bytes data read from cluster %d.\n", result, c_start);

fat32_read_chain_return:

	free(buf_entry);

	return result;
}

dir_entry_t *fat32_find_entry(const char *name, dir_entry_t *pdir_entry, size_t length)
{
	size_t c = 0, lfn_entrys;
	char buffer[511];

	while (c < length) {
		lfn_entrys = fat32_parse_name(pdir_entry + c, buffer);
		
		c += lfn_entrys;
		
		//DEBUG("Parsed name \"%s\" with %d long file name entries\n", buffer, lfn_entrys);

		// If directory is NOT deleted, determine it is unused or not.
		// If it is unused, break and return. Otherwise, compare it's name with
		// the directory caller finding.
		// If it is, return it's regular directory entry address by adding offset
		// @c with base address @pdir_entry. If it is not, goto next directory entry.
		if (((uint8_t)(pdir_entry[c].reg_dir.name[0]) != 0xe5) &&
			((uint8_t)(pdir_entry[c].reg_dir.name[0]) != 0x05)) {
			if ((uint8_t)(pdir_entry[c].reg_dir.name[0]) == 0)
				break;

			//DEBUG("Comparing \"%s\" and \"%s\"\n", name, buffer);
			if (strcmp(name, buffer) == 0) {
				// fat32_parse_name(pdir_entry + c, buffer);
				return pdir_entry + c;
			}
		}
			
		c++;
	}
	
	return NULL;
}

size_t fat32_parse_name(dir_entry_t *pdir_entry, char *buffer)
{
	size_t lfn_entrys = 0;
	int index = 0, point_index = 0;
	char temp[7];

	if (FAT32_IS_LFN(pdir_entry->reg_dir.attribute)) {		
		//DEBUG("Parsing long name file directory.\n");
		
		while (FAT32_IS_LFN(pdir_entry[lfn_entrys].lnf_dir.attribute)) {
			char *p = buffer + 13 * ((pdir_entry[lfn_entrys].lnf_dir.seq_number & 0x1f) - 1);
			
			strncpy(p, utf16ntoascii(temp, pdir_entry[lfn_entrys].lnf_dir.name1, 10), 5);
			strncpy(p + 5, utf16ntoascii(temp, pdir_entry[lfn_entrys].lnf_dir.name2, 12), 6);
			strncpy(p + 11, utf16ntoascii(temp, pdir_entry[lfn_entrys].lnf_dir.name3, 4), 2);
			
			lfn_entrys++;
		}
	} else {		
		//DEBUG("Parsing regular directory.\n");
		
		// get directory entry name and make @index be index of '\0' or equal to 8
		while (index < 8) {
			if (pdir_entry->reg_dir.name[index] == ' ')
				break;
			index++;
		}

		// copy at most @index char to buffer
		strncpy(buffer, pdir_entry->reg_dir.name, index);
		
		// if extension is NOT empty
		if (pdir_entry->reg_dir.extension[0] != ' ') {
			point_index = index;
			index = 0;
			buffer[point_index] = '.';
			
			// get extension name and make @index be index of '\0' or equal to 3
			while (index < 3) {
				if (pdir_entry->reg_dir.name[index] == ' ')
					break;
				index++;
			}

			// copy at most @index char behind '.'
			strncpy(buffer + point_index + 1,
					utf16ntoascii(temp, pdir_entry->reg_dir.extension, 3),
					index);
			buffer[point_index + 1 + index] = '\0';
		} else
			buffer[index] = '\0';
	}

	return lfn_entrys;
}

file *fat32_open(fat32_t *pfat32, const char *path)
{
	char p[1024];
	char *path_part;
	dir_entry_t *pdir_entry = NULL;
	dir_entry_t *pdir_sub = NULL;
	dir_entry_t dir_sub_bk;
	size_t dirs;
	bool is_root = true;
	file *pfile = NULL;

	if (path == NULL)
		panic("path is NULL");
	
	// make a copy of constant path string
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
			if (!FAT32_IS_DIR(pdir_sub->reg_dir.attribute))
				return pfile;

			// copy the directory entry found and free current entries
			free(pdir_entry);
			
			//DEBUG("Reading cluster %d.\n",
			//      (uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
			//      dir_sub_bk.reg_dir.cluster_low);

			// read next directory entry
			dirs = fat32_read_chain(pfat32,
					(uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
					dir_sub_bk.reg_dir.cluster_low,
					(char **)(&pdir_entry)) / sizeof(dir_entry_t);
		}

		if (pdir_entry == NULL) {
			kprintf("Can't read chain.\n");
			return NULL;
		}

		//DEBUG("Finding sub-directory \"%s\".\n", path_part);
		
		pdir_sub = fat32_find_entry(path_part, pdir_entry, dirs);
		
		//DEBUG("pdir_sub:\n");
		//for (int i = 0; i < 8; i++) {
		//	kprintf("0x%x\t", ((uint32_t *)(pdir_sub))[i]);
		//}
		//kprintf("\n");
		
		// no corresponding entry in directory entries
		if (pdir_sub == NULL)
			goto fat32_open_return;

		dir_sub_bk = *pdir_sub;
		
		path_part = strtok(NULL, "/");
	}
	
	pfile = (file *)malloc(sizeof(file));
	if (pfile == NULL)
		goto fat32_open_return;

	if (is_root) {
		pfile->cluster = pfat32->root_cluster;
		pfile->attribute = 0x10;
	} else {
		pfile->cluster = ((uint32_t)(dir_sub_bk.reg_dir.cluster_high) << 16) +
			dir_sub_bk.reg_dir.cluster_low;
		pfile->attribute = dir_sub_bk.reg_dir.attribute;
		pfile->pfat32 = pfat32;
		pfile->time_ts = dir_sub_bk.reg_dir.time_ts;
		pfile->creation_time = dir_sub_bk.reg_dir.creation_time;
		pfile->creation_date = dir_sub_bk.reg_dir.creation_date;
		pfile->last_acc_date = dir_sub_bk.reg_dir.last_acc_date;
		pfile->last_mod_time = dir_sub_bk.reg_dir.last_mod_time;
		pfile->last_mod_date = dir_sub_bk.reg_dir.last_mod_date;
		pfile->size = dir_sub_bk.reg_dir.size;
	}

fat32_open_return:

	if (pdir_entry != NULL)
		free(pdir_entry);

	return pfile;
}
