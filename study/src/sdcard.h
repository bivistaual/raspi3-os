#ifndef _SDCARD_H
#define _SDCARD_H

#include <stdint.h>

#include "system_timer.h"

static uint64_t sd_err;

/*
 * Initializes the SD card controller.
 *
 * Returns 0 if initialization is successful. If initialization fails, returns -1
 * if a timeout occured, or -2 if an error sending commands to the SD controller
 * occured.
 */
uint32_t sd_init(void);

/*
 * Reads sector `n` (512 bytes) from the SD card and writes it to `buffer`.
 * It is undefined behavior if `buffer` does not point to at least 512 bytes of
 * memory.
 *
 * On success, returns the number of bytes read: a positive number.
 *
 * On error, returns 0. The true error code is stored in the `sd_err` global.
 * `sd_err` will be set to -1 if a timeout occured or -2 if an error sending commands
 * to the SD controller occured. Other error codes are also possible but defined only
 * as being less than zero.
 */
uint32_t sd_readsector(uint32_t n, char * buffer);

#endif
