#include <stdint.h>

#include "console.h"
#include "atags.h"
#include "alloc.h"

#define IS_POWER_OF_2(x)													\
	((x) && !((x) & ((x) - 1)))

extern uint8_t _end;
extern struct {
	uint8_t * start;
	uint8_t * end;
} _memory_map;

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

void * bump_alloc(size_t size)
{
	static uint8_t * current = (uint8_t *)&_end;
	uint8_t * result = current;

	current += align_up(size, 8);
	if (current > _memory_map.end)
		return NULL;

	return result;
}

void * malloc(size_t size)
{
}
