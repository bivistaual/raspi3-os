#include <stddef.h>
#include <stdbool.h>

#include "malloc.h"
#include "console.h"
#include "process.h"
#include "exception.h"
#include "string.h"

process *process_init(void (*pfun)(void), bool (*event_arrived)(void))
{
	process *p;

	p = (process *)malloc(sizeof(process));
	if (p == NULL) {
		kprintf("Can't create new process: no memory available.\n");
		return NULL;
	}

	p->stack = malloc(PROCESS_STACK_SIZE);
	if (p->stack == NULL) {
		kprintf("Can't allocate stack for new process: no memory available.\n");
		free(p);
		return NULL;
	}
	memset(p->stack, 0, PROCESS_STACK_SIZE);

	memset(&p->tp, 0, sizeof(trap_frame));

	// set @state of the process
	p->state = PROCESS_WAITING;

	p->event_arrived = event_arrived;
	p->tp.ELR = (uint64_t)pfun;
	p->tp.SP = (uint64_t)p->stack + PROCESS_STACK_SIZE - sizeof(trap_frame);

	return p;
}

bool process_is_ready(process *pp)
{
	if (pp->state == PROCESS_READY)
		return true;
	else if (pp->state == PROCESS_WAITING) {
		if (pp->event_arrived == NULL || pp->event_arrived()) {
			pp->state = PROCESS_READY;
			return true;
		} else
			return false;
	} else if (pp->state == PROCESS_EXECUTING)
		return true;
	else
		return false;
}
