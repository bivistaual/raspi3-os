#include "syscall.h"
#include "console.h"
#include "system_timer.h"
#include "scheduler.h"

extern scheduler *pscheduler_global;

/*
 * Sleep `ms` milliseconds.
 *
 * This system call takes one parameter: the number of milliseconds to sleep.
 *
 * In addition to the usual status value, this system call returns one
 * parameter: the approximate true elapsed time from when `sleep` was called to
 * when `sleep` returned.
 */
static void sys_sleep(uint32_t ms, trap_frame *ptf);

static bool __sys_sleep(process *);

static syscall_t syscall_table[] = {
	{0, NULL},
	{1, (syscall_func)sys_sleep}
};

void handle_syscall(uint16_t num, trap_frame *ptf)
{
	uint64_t arg[7];
	int i = 0;

	if (num > 1)
		panic("Unknow system call: svc %d.\n", num);

	// if the system call needs parameter
	if (syscall_table[num].args != 0) {
		// copy x0 to arg[0] first because x0 is not the neighbor of x1 in trap frame
		arg[0] = ptf->x0;

		// then copy the rest arguments if exist
		for (i = 1; i < syscall_table[num].args; i++)
			arg[i] = ptf->x1[i - 1];
	}

	// pass trap frame to system call anyway
	arg[i] = (uint64_t)ptf;

	syscall_table[num].func(
			arg[0], arg[1], arg[2], arg[3], arg[4], arg[5], arg[6]);
}

static void sys_sleep(uint32_t ms, trap_frame *ptf)
{
	process *pp;

	DEBUG("ms = %d\n", ms);

	pp = find_process(pscheduler_global, ptf->TPIDR);

	pp->event_arrived = __sys_sleep;
	pp->state = PROCESS_WAITING;

	// sleep current process and force switching to next process
	switch_process(pscheduler_global, PROCESS_WAITING, ptf);
	tick_in(TICK_TIME);
}

static bool __sys_sleep(process *pp)
{
	static bool not_init = true;
	static uint64_t start_time = 0;

	if (not_init) {
		start_time = current_time();
		not_init = false;
	}

	// inject true sleep time
	if (current_time() - start_time >= pp->tp.x0 * 1000000) {
		pp->tp.x0 = (current_time() - start_time) * 1000000;
		return true;
	}

	return false;
}
