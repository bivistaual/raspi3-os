#include "console.h"
#include "mini_uart.h"
#include "fat32.h"
#include "sdcard.h"
#include "device.h"
#include "system_timer.h"
#include "malloc.h"
#include "scheduler.h"
#include "aarch64.h"
#include "interrupt.h"

fat32_t *pfat32_global;
scheduler *pscheduler_global;

void kmain(void)
{
	block_device bd = {512, sd_init, sd_readsector};

	mu_init();

	// block until read ''
	while (mu_read_byte() != '\r')
		continue;

	DEBUG("sizeof(kmain) = %d bytes.\n", sizeof(kmain));

	mem_init();

	if (bd.init() != 0)
		panic("Can't initialize SD card!");

	pfat32_global = fat32_init(&bd);

	pscheduler_global = scheduler_init();

	irq_enable(timer1);

	tick_in(TICK_TIME);

	scheduler_start(pscheduler_global);
}
