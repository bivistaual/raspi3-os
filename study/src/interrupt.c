#include "interrupt.h"
#include "exception.h"
#include "scheduler.h"
#include "system_timer.h"
#include "console.h"

extern scheduler *pscheduler_global;

void handle_irq(irq_class irq, trap_frame *ptf)
{
	switch (irq) {
		case timer1:
			switch_process(pscheduler_global, PROCESS_WAITING, ptf);
			tick_in(TICK_TIME);
			break;
		default:
			panic("Unknown interrupt number: %d.\n", irq);
			break;
	}
}
