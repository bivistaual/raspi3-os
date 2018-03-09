#include <stdint.h>

extern uint64_t __bss_start;
extern uint64_t __bss_end;

extern void kernel_main(void);

void _cstartup(void)
{
	uint64_t * bss = &__bss_start;
	uint64_t * bss_end = &__bss_end;

	while (bss < bss_end)
		*bss++ = 0;
}
