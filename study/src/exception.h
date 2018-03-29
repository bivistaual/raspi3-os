#ifndef _EXCEPTION_H
#define _EXCEPTION_H

#include <stdint.h>

#define SOURCE_SPEL0		0
#define SOURCE_SPELX		1
#define SOURCE_AARCH64		2
#define SOURCE_AARCH32		3

#define KIND_SYNCHRONOUS	0
#define KIND_IRQ			1
#define KIND_FIQ			2
#define KIND_SERROR			3

#define EC_FROM_ESR(esr)	(esr & 0xfc000000)

#define EC_DATA_ABORT_SAME	(0b100101 << 26)
#define EC_SVC_AARCH64		(0b010101 << 26)
#define EC_BRK				(0b111100 << 26)

struct info {
	uint16_t	source;
	uint16_t	kind;
};

typedef struct {
	uint64_t	ELR;
	uint64_t	SPSR;
	uint64_t	SP;
	uint64_t	TPIDR;
	__uint128_t	q[32];
	uint64_t	x1[29];
	uint64_t	reserved;
	uint64_t	x30;
	uint64_t	x0;
}	trap_frame;

void handle_exception(struct info i, uint32_t esr, void *tp);

#endif
