#include "device.h"
#include "malloc.h"
#include "console.h"
#include "string.h"
#include "sdcard.h"
#include "system_timer.h"

size_t cd_read_sector(cache_device *pcd, uint64_t sector_log, char *buffer)
{
	uint32_t bin_index = HASH_BIN(sector_log, CACHE_BIN_SIZE);
	bcache *pscan, *pnew;
	int factor;
	uint64_t d_sector_size, p_sector_size;

	p_sector_size = pcd->part.sector_size;
	d_sector_size = pcd->device.sector_size;

	// if sector data is in hashmap, return it
	if (sector_log == 32603)
//	DEBUG("Reading sector %d from bin[%d].\n", sector_log, bin_index);

	HLIST_FOREACH(pscan, &pcd->cache_bin[bin_index], node) {
		if (sector_log == 32603)
//		DEBUG("pscan=0x%x &node=0x%x next=0x%x pprev=0x%x\n",
//			(uint64_t)pscan, (uint64_t)(&pscan->node),
//			(uint64_t)(pscan->node.next), (uint64_t)(pscan->node.pprev)
//		);
		
		if (pscan->sector_log == sector_log) {

			//DEBUG("Prepare to read from cache.\n");

			if (sector_log < pcd->part.start)
				memcpy(buffer, pscan->data, d_sector_size);
			else
				memcpy(buffer, pscan->data, p_sector_size);

			goto cd_read_sector_return;
		}
	}

	//DEBUG("Prepare to read from sdcard.\n");
	
	// else alloc and cache a new sector and return

	pnew = (bcache *)malloc(sizeof(bcache));

	//DEBUG("Determining pnew is NULL or not.\n");

	if (pnew == NULL)
		panic("No memory available for bcache.\n");

	//DEBUG("Set logical sector to pnew.\n");

	pnew->sector_log = sector_log;

	// read size of device sector before partition start sector and logical sector
	// at or after partition start sector

	//DEBUG("Determining to read as physical sector or logical.\n");

	if (sector_log < pcd->part.start) {
		if (pcd->device.read_sector((uint32_t)sector_log, buffer) <= 0)
				panic("Can't read data from sector %d.\n", sector_log);

		//DEBUG("Physical sector %d read because it is less than partition's start physical sector %d.\n", sector_log, pcd->part.start);

	} else {
	
		//DEBUG("Calculating fator.\n");

		// calculate the times to reach the logical sector size
		factor = p_sector_size / d_sector_size;

		//DEBUG("Reading %d physical sectors from logical sector %d.\n",
		//		factor, sector_log);

		for (int i = 0; i < factor; i++) {
			if (pcd->device.read_sector(((uint32_t)sector_log -
					pcd->part.start) * factor + pcd->part.start + i,
					buffer + d_sector_size * i)
					<= 0)
					panic("Can't read data from sector %d.\n",
								((uint32_t)sector_log - pcd->part.start) * factor +
								pcd->part.start + i);
		}

		//DEBUG("Logical sector %d which is %d physical sectors from physical sector %d is read.\n",
		//		sector_log,
		//		factor,
		//		((uint32_t)sector_log - pcd->part.start) * factor + pcd->part.start);
	}

//	DEBUG("Adding sector %d to bin[%d] at 0x%x\n", sector_log, bin_index, (uint64_t)pnew);

	// add new data cache to hashmap
	pnew->data = buffer;
	hlist_add_first(&pnew->node, &pcd->cache_bin[bin_index]);

	// return the specific number of bytes read

cd_read_sector_return:

	//DEBUG("%d bytes data read from sector %d.\n",
	//		sector_log < pcd->part.start ? d_sector_size : p_sector_size,
	//		sector_log);

	if (sector_log < pcd->part.start)
		return d_sector_size;
	else
		return p_sector_size;
}
