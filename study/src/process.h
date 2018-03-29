#ifndef _PROCESS_H
#define _PROCESS_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#include "exception.h"
#include "list.h"

#define PROCESS_STACK_SIZE	(1 << 20)

typedef struct {
	uint64_t	id;
	uint32_t	state;
	void		*stack;
	LIST_NODE(node);
	trap_frame	tp;
}	process;

process *process_init(uint64_t);

bool *process_is_ready(process *);

#endif
