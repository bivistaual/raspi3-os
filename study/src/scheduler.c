#include "scheduler.h"
#include "malloc.h"
#include "console.h"
#include "process.h"
#include "string.h"
#include "aarch64.h"

extern uint32_t _start;
extern void context_restore(void);

scheduler *scheduler_init(void)
{
	scheduler *ps;

	ps = (scheduler *)malloc(sizeof(scheduler));
	if (ps == NULL)
		panic("Can't initialize process scheduler.\n");

	LIST_INIT(&(ps->p_list));
	ps->current_id = 0;
	ps->last_id = 0;

	return ps;
}

void scheduler_start(scheduler *ps, void (*pfun)(void))
{
	process *p;

	// initialize the first process
	p = process_init(0);
	
	// manaully set up the trap frame and copy the frame to the stack of the process
	p->tp.ELR = (uint64_t)pfun;
	p->tp.SP = (uint64_t)p->stack + PROCESS_STACK_SIZE - sizeof(trap_frame);
	p->tp.TPIDR = p->id;

	memcpy((void *)(p->tp.SP), &p->tp, sizeof(trap_frame));

	// add the process to the scheduler process list
	list_add_tail(&p->node, &ps->p_list);

	// set sp to the stack of the process
	__asm__ __volatile__(
		"mov sp, %0;"
		::"r"(p->tp.SP)
	);

	DEBUG("stack = 0x%x\n", __sp());

	// manaully restore context of the process
	context_restore();

	// set the SP_EL1 to lable _start and eret
	__asm__ __volatile__(
		"ldr x3, =_start;"
		"mov sp, x3;"
		"eret;"
		:::"x3"
	);
}
