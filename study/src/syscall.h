#ifndef _SYSCALL_H
#define _SYSCALL_H

#include <stdint.h>

#include "process.h"

typedef uint64_t (*syscall_func)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t);

typedef struct {
	int				args;
	syscall_func	func;
}	syscall_t;

void handle_syscall(uint16_t num, trap_frame *ptf);

#endif
