#ifndef _SCHEDULER_H
#define _SCHEDULER_H

#include <stdint.h>

#include "list.h"
#include "process.h"
#include "exception.h"

#define TICK_TIME (2 * 1000 * 1000)

typedef struct {
	LIST_HEAD(p_list);
	uint64_t			current_id;
	uint64_t			last_id;
}	scheduler;

/*
 * Return a new `scheduler` with an empty process list.
 */
scheduler *scheduler_init(void);

/*
 * Adds a process to the scheduler's queue and returns that process's ID if a new
 * process can be scheduled. The process ID is newly allocated for the process and
 * saved in its `trap_frame`. If no further processes can be scheduled, returns
 * `None`.
 * If this is the first process added, it is marked as the current process.
 * It is the caller's responsibility to ensure that the first time `switch` is
 * called, that process is executing on the CPU.
 */
uint64_t add_process(scheduler *pscheduler, process *pprocess);

/*
 * Sets the current process's state to `new_state`, finds the next process to
 * switch to, and performs the context switch on `tf` by saving `tf` into the
 * current process and restoring the next process's trap frame into `tf`. If there
 * is no current process, returns `None`. Otherwise, returns `Some` of the process
 * ID that was context switched into `tf`.
 * This method blocks until there is a process to switch to, conserving energy as
 * much as possible in the interim.
 */
uint64_t switch_process(scheduler *pscheduler, int state, trap_frame *ptf);

void scheduler_start(scheduler *ps, void (*pfun)(void));

#endif
