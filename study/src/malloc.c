#include <stdint.h>

#include "console.h"
#include "atags.h"

#define IS_POWER_OF_2(x)													\
	((x) && !((x) & ((x) - 1)))

static inline uint64_t align_down(uint64_t addr, uint64_t align)
{
	if (!IS_POWER_OF_2(align))
		panic(__FILE__, __LINE__, __func__,
				"Parameter align is not power of 2.\n");

	return addr & ~(align - 1);
}

static inline uint64_t align_up(uint64_t addr, uint64_t align)
{
	return align_down(addr, align) + align;
}

static inline char * memory_map(void)
{
	char * binary_end = &_end;
	struct atag volatile * atag_scan = (struct atag volatile *)ATAG_HEADER_ADDR;
	

	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_TAG)
}
