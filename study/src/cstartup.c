#include "atags.h"
#include "console.h"

extern int __bss_start;
extern int __bss_end;
extern int _end;

extern void kernel_main(void);

static struct {
	char * start;
	char * end;
} _memory_map;

void _cstartup(void)
{
	int * bss = &__bss_start;
	int * bss_end = &__bss_end;
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;

	while (bss < bss_end)
		*bss++ = 0;

	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		if (tag == ATAG_MEM) {
			_memory_map.start = (char *)&_end;
			_memory_map.end = (char *)(atag_scan->kind.mem.size + 
					atag_scan->kind.mem.start);
		}
		tag = ATAG_TAG(ATAG_NEXT(atag_scan));
	}

	panic(__FILE__, __LINE__, __func__, "Can't find ATAG_MEM tag!\n");
}
