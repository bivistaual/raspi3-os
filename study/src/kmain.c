#include "shell.h"
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

	scheduler_start(pscheduler_global, shell);
}

static void shell(void)
{
	__asm__ __volatile__(
		"brk 1;"
	);

	irq_enable(0);
	irq_enable(1);
	irq_enable(2);
	irq_enable(3);
	irq_enable(4);
	irq_enable(5);
	irq_enable(6);
	irq_enable(7);

	long ct = current_time();
	DEBUG("current_time = %d, irq_enable_1 = %d\n",
			ct, irq_controler->irq_enable_1);

	SYSTEM_TIMER_C0_SET(ct + 5000000);
	SYSTEM_TIMER_C1_SET(ct + 10000000);
	SYSTEM_TIMER_C2_SET(ct + 15000000);
	SYSTEM_TIMER_C3_SET(ct + 20000000);
	
	kprintf("\nWelcome to raspberry pi 3b shell!\n\n");
	display_bvstl();
	kprintf("\n");

	while (1) {
		//DEBUG("%d\t", current_time());
		if (SYSTEM_TIMER_BASE[SYSTEM_TIMER_CS] & 0xf) {
			DEBUG("system timer match = 0x%x, current_time = %d, ",
					SYSTEM_TIMER_BASE[SYSTEM_TIMER_CS] & 0xf,
					current_time());
			DEBUG("basic = 0x%x, ", irq_controler->irq_basic_pending);
			DEBUG("pending 1 = 0x%x\n", irq_controler->irq_pending_1);	
			//break;
		}
		if (irq_controler->irq_pending_1) {
			DEBUG("irq pending 1 = 0x%x\n", irq_controler->irq_pending_1);
			break;
		}
	}


	while (1)
		shell_start("user1> ");
}
