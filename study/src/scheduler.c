#include "scheduler.h"
#include "malloc.h"
#include "console.h"
#include "process.h"
#include "string.h"
#include "aarch64.h"
#include "shell.h"
#include "list.h"

extern uint64_t _start;
extern void context_restore(void);

scheduler *scheduler_init(void)
{
	scheduler *ps;

	ps = (scheduler *)malloc(sizeof(scheduler));
	if (ps == NULL)
		panic("Can't initialize process scheduler.\n");

	LIST_INIT(&(ps->p_list));
	ps->current_process = NULL;
	ps->last_process = NULL;

	return ps;
}

uint64_t add_process(scheduler *pscheduler, process *pprocess)
{
	static uint64_t pid = 0;

	if (pid + 1 == 0) {
		kprintf("too many processes.\n");
		return 0;
	}

	pprocess->id = pid;
	pprocess->tp.TPIDR = pid;
	pid++;

	list_add_tail(&pprocess->node, &pscheduler->p_list);

	return pprocess->id;
}

uint64_t switch_process(scheduler *pscheduler, uint8_t new_state, trap_frame *ptf)
{
	process *pnext;

	if (pscheduler->current_process == NULL)
		return -1;

	// Traverse the process list to look for next process which is ready to be
	// executed.
	LIST_FOREACH(pnext, &pscheduler->p_list, node) {
		if (pnext != pscheduler->current_process && process_is_ready(pnext)) {
			// exchange trap frame
			memcpy(&pscheduler->current_process->tp, ptf, sizeof(trap_frame));
			memcpy(ptf, &pnext->tp, sizeof(trap_frame));

			// refresh state 
			pscheduler->current_process->state = new_state;
			pnext->state = PROCESS_EXECUTING;

			// refresh scheduler's current process and last process
			pscheduler->last_process = pscheduler->current_process;
			pscheduler->current_process = pnext;

			// change list head of queue
			list_move_after(&pscheduler->p_list, &pscheduler->current_process->node);
			
			break;
		}
	}

	// DEBUG("switch to process %d\n", pscheduler->current_process->id);

	return pscheduler->current_process->id;
}

static void shell(void)
{
	kprintf("\nWelcome to raspberry pi shell!\n\n");
	display_welcome();
	kprintf("\n");

	while (1)
		shell_start("> ");
}

static void process1(void)
{
	while (1)
		kprintf("1");
}

static void process2(void)
{
	while(1)
		kprintf("2");
}

void scheduler_start(scheduler *ps)
{
	process *p;

	// initialize the first process
	p = process_init(shell, NULL);
	add_process(ps, p);
	ps->current_process = p;
	ps->last_process = p;
	
	memcpy((void *)(p->tp.SP), &p->tp, sizeof(trap_frame));

	// set sp to the stack of the process
	__asm__ __volatile__(
		"mov sp, %0;"
		::"r"(p->tp.SP)
	);

	p = process_init(process1, NULL);
	add_process(ps, p);

	p = process_init(process2, NULL);
	add_process(ps, p);

	// manaully restore context of the process
	context_restore();
	p->state = PROCESS_EXECUTING;

	// set the SP_EL1 to lable _start and eret
	__asm__ __volatile__(
		"ldr x3, =_start;"
		"mov sp, x3;"
		"eret;"
		:::"x3"
	);
}
