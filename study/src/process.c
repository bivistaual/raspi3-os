#include <stddef.h>
#include <stdbool.h>

#include "malloc.h"
#include "console.h"
#include "process.h"
#include "exception.h"
#include "string.h"

process *process_init(uint64_t id)
{
	process *p;

	p = (process *)malloc(sizeof(process));
	if (p == NULL) {
		kprintf("Can't create new process: no memory available.\n");
		return NULL;
	}

	p->id = id;
	
	p->stack = malloc(PROCESS_STACK_SIZE);
	if (p->stack == NULL) {
		kprintf("Can't allocate stack for new process: no memory available.\n");
		free(p);
		return NULL;
	}
	memset(p->stack, 0, PROCESS_STACK_SIZE);

	memset(&p->tp, 0, sizeof(trap_frame));

	// FIXME: set @state of the process

	return p;
}
