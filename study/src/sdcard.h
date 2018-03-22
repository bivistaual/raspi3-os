#ifndef _SDCARD_H
#define _SDCARD_H

#define SD_READSECTOR_TIMEOUT	10000000

//static int sd_err;

/*
 * Initializes the SD card controller.
 *
 * Returns 0 if initialization is successful. If initialization fails, returns -1
 * if a timeout occured, or -2 if an error sending commands to the SD controller
 * occured.
 */
extern int sd_init (void);

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
extern int sd_readsector (unsigned int n, char *buffer);

#endif
