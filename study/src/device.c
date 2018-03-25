#include "device.h"
#include "malloc.h"
#include "console.h"
#include "string.h"
#include "sdcard.h"
#include "system_timer.h"

size_t cd_read_sector(cache_device *pcd, uint64_t sector_log, char *buffer)
{
	uint32_t bin_index = HASH_BIN(sector_log, CACHE_BIN_SIZE);
	bcache *pbcache;
	int factor;
	uint64_t d_sector_size, p_sector_size;
	char *bcache_data;

	p_sector_size = pcd->part.sector_size;
	d_sector_size = pcd->device.sector_size;

	// if sector data is in hashmap, return it
//	DEBUG("Reading sector %d from bin[%d].\n", sector_log, bin_index);

	HLIST_FOREACH(pbcache, &pcd->cache_bin[bin_index], node) {
//		DEBUG("pbcache=0x%x &node=0x%x next=0x%x pprev=0x%x\n",
//			(uint64_t)pbcache, (uint64_t)(&pbcache->node),
//			(uint64_t)(pbcache->node.next), (uint64_t)(pbcache->node.pprev)
//		);
		
		if (pbcache->sector_log == sector_log) {
//			DEBUG("Read %d sector from cache at 0x%x.\n", sector_log, pbcache);
			
			goto cd_read_sector_return;
		}
	}

//	DEBUG("Prepare to read from sdcard.\n");
	
	// else alloc and cache a new sector and return

	pbcache = (bcache *)malloc(sizeof(bcache));
	if (pbcache == NULL)
		panic("No memory available for bcache.\n");

	//DEBUG("Set logical sector to pbcache.\n");

	pbcache->sector_log = sector_log;

	// read size of device sector before partition start sector and logical sector
	// at or after partition start sector

	//DEBUG("Determining to read as physical sector or logical.\n");

	if (sector_log < pcd->part.start) {
		bcache_data = (char *)malloc(sizeof(char) * d_sector_size);
		if (bcache_data == NULL) {
			kprintf("No memory available!\n");
			free(pbcache);
			return 0;
		}

		if (pcd->device.read_sector((uint32_t)sector_log, bcache_data) <= 0)
				panic("Can't read data from sector %d.\n", sector_log);

//		DEBUG("Physical sector %d read because it is less than partition's start physical sector %d.\n", sector_log, pcd->part.start);

	} else {
		bcache_data = (char *)malloc(sizeof(char) * p_sector_size);
		if (bcache_data == NULL) {
			kprintf("No memory available!\n");
			free(pbcache);
			return 0;
		}
	
		//DEBUG("Calculating fator.\n");

		// calculate the times to reach the logical sector size
		factor = p_sector_size / d_sector_size;

//		DEBUG("Reading %d physical sectors from logical sector %d.\n",
//				factor, sector_log);

		for (int i = 0; i < factor; i++) {
			if (pcd->device.read_sector(((uint32_t)sector_log -
					pcd->part.start) * factor + pcd->part.start + i,
					bcache_data + d_sector_size * i)
					<= 0)
					panic("Can't read data from sector %d.\n",
								((uint32_t)sector_log - pcd->part.start) * factor +
								pcd->part.start + i);
		}

//		DEBUG("Logical sector %d which is %d physical sectors from physical sector %d is read.\n",
//				sector_log,
//				factor,
//				((uint32_t)sector_log - pcd->part.start) * factor + pcd->part.start);
	}

//	DEBUG("Adding sector %d to bin[%d] at 0x%x\n", sector_log, bin_index, (uint64_t)pbcache);

	// add new data cache to hashmap
	pbcache->data = bcache_data;
	hlist_add_first(&pbcache->node, &pcd->cache_bin[bin_index]);

	// copy data to buffer and return the specific number of bytes read

	//DEBUG("%d bytes data read from sector %d.\n",
	//		sector_log < pcd->part.start ? d_sector_size : p_sector_size,
	//		sector_log);
	
cd_read_sector_return:

	if (sector_log < pcd->part.start) {
		memcpy(buffer, pbcache->data, d_sector_size);
		return d_sector_size;
	} else {
		memcpy(buffer, pbcache->data, p_sector_size);
		return p_sector_size;
	}
}
