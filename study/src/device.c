#include "device.h"
#include "malloc.h"
#include "assert.h"

size_t cd_read_sector(cache_device *pcd, uint64_t sector_log, char **buffer)
{
	uint32_t bin_index = hash_bin(sector_log, 16);
	bcache *pscan, *pnew;
	char *data;
	int factor;
	uint64_t d_sector_size, p_sector_size;

	p_sector_size = pcd->part.sector_size;
	d_sector_size = pcd->device.sector_size;

	// if sector data is in hashmap, return it

	HLIST_FOREACH(pscan, &pcd->cache_bin[bin_index], node)
		if (pscan->sector_log == sector_log) {
			*buffer = pscan->data;
			if (sector_log < pcd->part.start)
				return d_sector_size;
			else
				return p_sector_size;
		}
	
	// else alloc cache a new sector and return

	pnew = (bcache *)malloc(sizeof(bcache));
	pnew->sector_log = sector_log;
	if (sector_log < pcd->part.start) {
		data = (char *)malloc(sizeof(char) * d_sector_size);
		assert(pcd->device.read_sector((uint32_t)sector_log, data) > 0);
	} else {
		factor = p_sector_size / d_sector_size;
		data = (char *)malloc(sizeof(char) * pcd->part.sector_size);
		for (int i = 0; i < factor; i++)
			assert(pcd->device.read_sector((uint32_t)sector_log + i, data + d_sector_size * i) > 0);
	}
	pnew->data = data;
	*buffer = data;
	hlist_add_first(&pnew->node, &pcd->cache_bin[bin_index]);

	return ;
}
