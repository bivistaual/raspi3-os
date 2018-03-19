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
	int state;

	block_device bd = {512, sd_init, sd_readsector};
	
	mu_init();

	// block until read ''
	while (mu_read_byte() != '\r')
		continue;

	spin_sleep_s(1);

	if ((state = sd_init()) != 0) {
		if (state == -1)
			kprintf("state = -1\n");
		if (state == -2)
			kprintf("state = -2");
		//panic("Can't initialize SD card!");
	}

	while ((state = sd_init()) != 0) {
		kprintf("state = %d\n", state);
		spin_sleep_s(1);
	}

	mem_init();

	pfat32_global = fat32_init(&bd);
	
	shell_loop();

	return 0;
}
