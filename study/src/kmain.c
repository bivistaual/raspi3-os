#include "shell.h"
#include "console.h"
#include "mini_uart.h"
#include "fat32.h"
#include "sdcard.h"
#include "device.h"
#include "system_timer.h"
#include "malloc.h"
#include "scheduler.h"

fat32_t *pfat32_global;
scheduler *pscheduler_global;

static void shell(void);

void kmain(void)
{
	block_device bd = {512, sd_init, sd_readsector};

	mu_init();

	// block until read ''
	while (mu_read_byte() != '\r')
		continue;

	mem_init();

	if (bd.init() != 0)
		panic("Can't initialize SD card!");

	pfat32_global = fat32_init(&bd);

	pscheduler_global = scheduler_init();

	__asm__ __volatile__(
		"brk 1;"
		"brk 2;"
	);

	shell_start("user0> ");
	
	__asm__ __volatile__(
		"brk 3;"
	);
	
	kprintf("\nWelcome to raspberry pi 3b shell!\n\n");
	display_bvstl();
	kprintf("\n");

	shell_start("user1> ");

	scheduler_start(pscheduler_global, shell);

	while (1)
		shell_start("> ");
}

static void shell(void)
{
	__asm__ __volatile__(
		"brk 1;"
		"brk 2;"
	);

	shell_start("user0> ");
	
	__asm__ __volatile__(
		"brk 3;"
	);
	
	kprintf("\nWelcome to raspberry pi 3b shell!\n\n");
	display_bvstl();
	kprintf("\n");

	while (1)
		shell_start("user1> ");
}
