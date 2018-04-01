#ifndef _SYSCALL_H
#define _SYSCALL_H

#include <stdint.h>

#include "process.h"

void handle_syscall(uint16_t num, trap_frame *ptf);

/*
 * Sleep for `ms` milliseconds.
 *
 * This system call takes one parameter: the number of milliseconds to sleep.
 *
 * In addition to the usual status value, this system call returns one
 * parameter: the approximate true elapsed time from when `sleep` was called to
 * when `sleep` returned.
 */
void sleep(uint32_t ms, trap_frame *ptf);

#endif
