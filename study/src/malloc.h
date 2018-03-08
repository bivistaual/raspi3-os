#ifndef _ALLOC_H
#define _ALLOC_H

#include <stdint.h>
#include <stddef.h>

#include "list.h"

struct mem_map {
	char * start;
	char * end;
};

struct bin_list {
	LIST_ENTRY(struct bin_list) entry; 
};

void * bump_alloc(size_t);

void free(void *);

#endif

