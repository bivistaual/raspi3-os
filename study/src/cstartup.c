#include "atags.h"
#include "console.h"
#include "malloc.h"
#include "list.h"

#include "assert.h"

extern uint64_t __bss_start;
extern uint64_t __bss_end;
extern uint8_t _end;
extern LIST_HEAD(mem_bin[26]);
extern struct mem_map _memory_map;

extern void kernel_main(void);

void _cstartup(void)
{
	uint64_t * bss = &__bss_start;
	uint64_t * bss_end = &__bss_end;
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;

	while (bss < bss_end)
		*bss++ = 0;

	// initialize the bin class array
	for (int i = 0; i < 26; i++)
		LIST_INIT(&mem_bin[i]);

	// fetch the memory map of the mechain
	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		if (tag == ATAG_MEM) {
			_memory_map.start = (uint8_t *)&_end;
			_memory_map.end = (uint8_t *)((uint64_t)(atag_scan->kind.mem.size) + 
					atag_scan->kind.mem.start);
		}
		tag = ATAG_TAG(ATAG_NEXT(atag_scan));
	}

	panic("Can't find ATAG_MEM tag!\n");
}
