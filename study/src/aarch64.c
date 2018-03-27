#include <stdint.h>
#include <stddef.h>

#include "aarch64.h"

const uint8_t *__sp(void)
{
	uint8_t *current_stack_pointer;

	__asm__(
		"mov %0, sp;"
		:"=r"(current_stack_pointer)
	);

	return (const uint8_t *)current_stack_pointer;
}

uint8_t __current_el(void)
{
	uint64_t el_reg;

	__asm__(
		"mrs %0, CurrentEL;"
		:"=r"(el_reg)
	);

	return (uint8_t)((el_reg & 0b1100) >> 2);
}

uint8_t __sp_sel(void)
{
	uint32_t ptr;

	__asm__(
		"mrs %0, SPSel;"
		:"=r"(ptr)
	);

	return (uint8_t)(ptr & 0x1);
}

size_t __affinity(void)
{
	size_t x;

	__asm__(
		"mrs %0, mpidr_el1;"
		"and %0, %0, #3;"
		:"=r"(x)
	);

	return x;
}
