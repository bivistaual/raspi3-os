#include "atags.h"
#include "console.h"

extern uint64_t __bss_start;
extern uint64_t __bss_end;
extern uint8_t _end;

extern void kernel_main(void);

static struct {
	uint8_t * start;
	uint8_t * end;
} _memory_map;

void _cstartup(void)
{
	uint64_t * bss = &__bss_start;
	uint64_t * bss_end = &__bss_end;
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;

	while (bss < bss_end)
		*bss++ = 0;

	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		if (tag == ATAG_MEM) {
			_memory_map.start = (uint8_t *)&_end;
			_memory_map.end = (uint8_t *)(atag_scan->kind.mem.size + 
					atag_scan->kind.mem.start);
		}
		tag = ATAG_TAG(ATAG_NEXT(atag_scan));
	}

	panic(__FILE__, __LINE__, __func__, "Can't find ATAG_MEM tag!\n");
}
