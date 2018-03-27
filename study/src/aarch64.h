#ifndef _AARCH64_H
#define _AARCH64_H

#include <stddef.h>
#include <stdint.h>

/*
 * Returns the current stack pointer.
 */
const uint8_t *__sp(void);

/*
 * Returns the current exception level.
 *
 * NOTE: This function should only be called when EL is >= 1.
 */
uint8_t __current_el(void);

/*
 * Returns the SPSel value.
 */
uint8_t __sp_sel(void);

/*
 * Returns the core currently executing.
 *
 * NOTE: This function should only be called when EL is >= 1.
 */
size_t __affinity(void);

#endif
