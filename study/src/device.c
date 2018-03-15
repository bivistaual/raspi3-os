#include "device.h"
#include "malloc.h"
#include "assert.h"
#include "string.h"

size_t cd_read_sector(cache_device *pcd, uint64_t sector_log, char *buffer)
{
	uint32_t bin_index = HASH_BIN(sector_log, CACHE_BIN_SIZE);
	bcache *pscan, *pnew;
	int factor;
	uint64_t d_sector_size, p_sector_size;

	p_sector_size = pcd->part.sector_size;
	d_sector_size = pcd->device.sector_size;

	// if sector data is in hashmap, return it

	HLIST_FOREACH(pscan, &pcd->cache_bin[bin_index], node)
		if (pscan->sector_log == sector_log) {
			if (sector_log < pcd->part.start)
				memcpy(buffer, pscan->data, d_sector_size);
			else
				memcpy(buffer, pscan->data, p_sector_size);

			goto cd_read_sector_return;
		}
	
	// else alloc and cache a new sector and return

	pnew = (bcache *)malloc(sizeof(bcache));
	pnew->sector_log = sector_log;

	// read size of device sector before partition start sector and logical sector
	// at or after partition start sector

	if (sector_log < pcd->part.start) {
		assert(pcd->device.read_sector((uint32_t)sector_log, buffer) > 0);
	} else {

		// calculate the times to reach the logical sector size
		factor = p_sector_size / d_sector_size;

		for (int i = 0; i < factor; i++)
			assert(pcd->device.read_sector(((uint32_t)sector_log - pcd->part.start) * factor - pcd->part.start, buffer + d_sector_size) > 0);
	}

	// add new data cache to hashmap
	pnew->data = buffer;
	hlist_add_first(&pnew->node, &pcd->cache_bin[bin_index]);

	// return the specific number of bytes read

cd_read_sector_return:

	if (sector_log < pcd->part.start)
		return d_sector_size;
	else
		return p_sector_size;
}
