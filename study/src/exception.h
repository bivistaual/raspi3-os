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

struct info {
	uint16_t	source;
	uint16_t	kind;
};

void handle_exception(struct info i, uint32_t esr, uint8_t *tp);

#endif
