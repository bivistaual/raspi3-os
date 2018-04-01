#include <stdint.h>

#include "console.h"
#include "atags.h"
#include "malloc.h"
#include "assert.h"
#include "list.h"
#include "string.h"

extern uint8_t _end;

struct mem_map _memory_map;
LIST_HEAD(mem_bin[26]);

void mem_init(void)
{
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;

	// initialize the bin class array
	for (int i = 0; i < 26; i++)
		LIST_INIT(&mem_bin[i]);

	// return if fetch the memory map of the mechain
	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		if (tag == ATAG_MEM) {
			_memory_map.start = (uint8_t *)&_end;
			_memory_map.end = (uint8_t *)((uint64_t)(atag_scan->kind.mem.size) + 
					(uint64_t)(atag_scan->kind.mem.start));

			if (_memory_map.start >= _memory_map.end) {
				panic("Memory map error!\n_memory_map.start = %x, _memory_map.end = %x\n",
						_memory_map.start, _memory_map.end);
			}

			return;
		}

		atag_scan = ATAG_NEXT(atag_scan);
		tag = ATAG_TAG(atag_scan);
	}

	panic("Can't fetch ATAG_MEM tag!\n");
}

void * bump_alloc(size_t size)
{
	static uint8_t * current = &_end;
	uint8_t * result = current;

	current += ALIGN_UP(size, 16);
	if (current > _memory_map.end)
		return NULL;

	// DEBUG("result = 0x%x\n", result);

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

//	DEBUG("Prepare to allocating bin class %d.\n", BIN_SIZE(bin_index));
	
	// Traverse the specific bin class list for unused chuck then mark it used and
	// return the data field pointer.

	LIST_FOREACH(scan, head, node) {
		if (!MEM_CHUCK_USED(scan)) {

//			DEBUG("Unused bin found in the list. Setting used.\n");

			pmem = scan;
			pmem->size = ALIGN_UP(size, 16);
			MEM_CHUCK_SET(pmem);

//			DEBUG("Return data address at 0x%x.\n", (uint64_t)(pmem + 1));

			return pmem + 1;
		}
	}

//	DEBUG("List full. Bump allocating...\n");

	// If the bin class list has no free chuck, bump alloc memory from heap then
	// add it to the tail of the list and return teh data field pointer.
	pmem = (struct mem_chuck *)bump_alloc(BIN_SIZE(bin_index));

//	DEBUG("Bump allocated memory at 0x%x.\n", (uint64_t)pmem);

	if (pmem == NULL)
		return NULL;

	// set size aligned up and used flag
	pmem->size = ALIGN_UP(size, 16);
	MEM_CHUCK_SET(pmem);
			
	list_add_tail(&(pmem->node), head);

//	DEBUG("Return data address 0x%x.\n", (uint64_t)(pmem + 1));

	return pmem + 1;
}

void *realloc(void *ptr, size_t size)
{
	void *new;
	size_t size_org = ((struct mem_chuck *)ptr - 1)->size;
	
//	DEBUG("Orginal size is %d bytes, now is %d bytes.\n", size_org, size);

	if (size == 0) {
		free(ptr);
		return NULL;
	}

	new = malloc(size);
	if (new == NULL)
		return NULL;

	memcpy(new, ptr, size > size_org ? size_org : size);
	free(ptr);
	
//	DEBUG("New memory area from 0x%x to 0x%x, old from 0x%x to 0x%x.\n",
//		(uint64_t)new, (uint64_t)new + size,
//		(uint64_t)ptr, (uint64_t)ptr + size_org
//	);
	
	return new;
}

void free(void * ptr)
{
	struct mem_chuck * pchuck;

	pchuck = ((struct mem_chuck *)ptr) - 1;
	MEM_CHUCK_CLR(pchuck);

	return;
}
