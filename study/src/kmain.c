#include "shell.h"
#include "console.h"
#include "mini_uart.h"
#include "fat32.h"
#include "sdcard.h"
#include "device.h"
#include "system_timer.h"

fat32_t *pfat32_global;

int kernel_main(void)
{
	block_device bd = {512, sd_init, sd_readsector};
	
	mu_init();

	// block until read ''
	while (mu_read_byte() != '\r')
		continue;

	if (bd.init() != 0)
		panic("Can't initialize SD card!");

	mem_init();

	pfat32_global = fat32_init(&bd);
	
	shell_loop();

	return 0;
}
