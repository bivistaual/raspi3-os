#ifndef _MALLOC_H
#define _MALLOC_H

#include <stdint.h>
#include <stddef.h>

#include "list.h"

#define IS_POWER_OF_2(x)														\
	((x) && !((x) & ((x) - 1)))

#define MEM_CHUCK_UNUSE(chuck)													\
	(!(((chuck)->size) & 0x1))

#define MEM_CHUCK_SET(chuck)													\
	((chuck)->size |= 0x1)

#define MEM_CHUCK_CLR(chuck)													\
	((chuck)->size &= ~0x1)

#define MEM_CHUCK_SIZE(chuck)													\
	((chuck)->size & ~0x1)

#define __BSRL__(x)																\
	(64 - __builtin_clzl(x))

/*
 * find bin index according to purpose size of memory
 */
#define BIN_INDEX(size)															\
	(((size) <= 32 ? 5 : (__BSRL__(size) - IS_POWER_OF_2(size))) - 5)

#define BIN_SIZE(index)															\
	(1 << (index + 5))

#define BIN_FREE(index, bitmap)													\
	(!(bitmap & (1 << index)))

#define BIN_SET(index, bitmap)													\
	do {																		\
		bitmap |= (1 << index);													\
	} while (0)

#define BIN_CLR(index, bitmap)													\
	do {																		\
		bitmap &= ~(1 << index);												\
	} while (0)

#define ALIGN_DOWN(base, size)													\
	((base) & ~((size) - 1))

#define ALIGN_UP(base, size)													\
	ALIGN_DOWN((base) + (size) - 1, size)

struct mem_chuck {
	uint32_t size;
	struct list_node node; 
};

struct mem_map {
	uint8_t * start;
	uint8_t * end;
};

void mem_init(void);

void *bump_alloc (size_t);

void *malloc (size_t);

void *realloc (void *, size_t);

void free (void *);

#endif

