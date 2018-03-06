#include <stdint.h>

#include "console.h"
#include "atags.h"
#include "alloc.h"

#define IS_POWER_OF_2(x)													\
	((x) && !((x) & ((x) - 1)))

extern char _end;

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

static inline struct mem_map memory_map(void)
{
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;
	struct mem_map m;

	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		if (tag == ATAG_MEM) {
			m.start = (char *)&_end;
			m.end = (char *)(atag_scan->kind.mem.size + 
					atag_scan->kind.mem.start);
			return m;
		}
		tag = ATAG_TAG(ATAG_NEXT(atag_scan));
	}

	panic(__FILE__, __LINE__, __func__, "Can't find ATAG_MEM tag!\n");
}

void * bump_alloc(size_t size)
{
	static char * current = (char *)memory_map().start;
}
