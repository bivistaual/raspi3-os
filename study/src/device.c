#include "device.h"
#include "malloc.h"

char *cd_read_sector(cache_device *pcd, uint64_t sectorn)
{
	uint32_t bin_index = hash_bin(sectorn, 16);
	bcache *pscan, *pnew;
	char *data;
	int factor;
	uint64_t d_sector_size, p_sector_size;

	HLIST_FOREACH(pscan, &pcd->cache_bin[bin_index], node)
		if (pscan->sectorn == sectorn)
			return pscan->data;

	p_sector_size = pcd->part.size;
	d_sector_size = pcd->device.sector_size;
	
	pnew = (bcache *)malloc(sizeof(bcache));
	pnew->sectorn = sectorn;
	if (sectorn < pcd->part.start) {
		data = (char *)malloc(sizeof(char) * d_sector_size);
		pcd->device.read_sector((uint32_t)sectorn, data);
	} else {
		factor = p_sector_size / d_sector_size;
		data = (char *)malloc(sizeof(char) * pcd->part.size);
		for (int i = 0; i < factor; i++)
			pcd->device.read_sector((uint32_t)sectorn + i, data + d_sector_size * i);
	}
	pnew->data = data;
	hlist_add_first(&pnew->node, &pcd->cache_bin[bin_index]);

	return data;
}
