#ifndef _PROCESS_H
#define _PROCESS_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#include "exception.h"
#include "list.h"

#define PROCESS_STACK_SIZE	(1 << 20)

#define PROCESS_WAITING		0
#define PROCESS_READY		1
#define PROCESS_EXECUTING	2

typedef struct __process {
	uint64_t	id;
	uint8_t		state;
	void		*stack;
	bool		(*event_arrived)(struct __process *);
	LIST_NODE(node);
	trap_frame	tp;
}	process;

process *process_init(void (*pfun)(void), bool (*event_arrived)(process *));

bool process_is_ready(process *);

#endif
