#include <stdint.h>

#include "exception.h"
#include "console.h"

void handle_exception(struct info i, uint32_t esr, uint8_t *tp)
{
	DEBUG("source = %d, kind = %d, esr = %d\n", i.source, i.kind, esr);

	while (1);
}
