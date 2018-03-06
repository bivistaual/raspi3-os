#ifndef _ALLOC_H
#define _ALLOC_H

#include <stdint.h>
#include <stddef.h>

struct mem_map {
	char * start;
	char * end;
};

void * bump_alloc(size_t);

void free(void *);

#endif

