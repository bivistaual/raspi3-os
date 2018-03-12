#include <stdint.h>

#include "console.h"
#include "atags.h"
#include "malloc.h"
#include "assert.h"
#include "list.h"

extern uint8_t _end;

struct mem_map _memory_map;
LIST_HEAD(mem_bin[26]);

void * bump_alloc(size_t size)
{
	static uint8_t * current = (uint8_t *)&_end;
	uint8_t * result = current;

	current += ALIGN_UP(size, 8);
	if (current > _memory_map.end)
		return NULL;

	return result;
}

void * malloc(size_t size)
{
	size_t purpose_size;
	int bin_index;
	struct mem_chuck *pmem = NULL, *scan;
	LIST_NODE(*head);

	purpose_size = size + sizeof(struct mem_chuck);
	bin_index = BIN_INDEX(purpose_size);
	head = &mem_bin[bin_index];
	
	// Traverse the specific bin class list for unused chuck then mark it used and
	// return the data field pointer.
	LIST_FOREACH(scan, head, node) {
		if (MEM_CHUCK_UNUSE(scan)) {
			pmem = scan;
			pmem->size = ALIGN_UP(size, 4);
			MEM_CHUCK_SET(pmem);
			return pmem + 1;
		}
	}

	// If the bin class list has no free chuck, bump alloc memory from heap then
	// add it to the tail of the list and return teh data field pointer.
	pmem = (struct mem_chuck *)bump_alloc(BIN_SIZE(bin_index));

	if (pmem == NULL)
		return NULL;

	// set size aligned up and used flag
	pmem->size = ALIGN_UP(size, 4);
	MEM_CHUCK_SET(pmem);
			
	list_add_tail(&(pmem->node), head);

	return pmem + 1;
}

void free(void * ptr)
{
	struct mem_chuck * pchuck;
	
	pchuck = (struct mem_chuck *)ptr - 1;
	MEM_CHUCK_CLR(pchuck);

	return;
}
