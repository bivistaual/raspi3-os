#include "interrupt.h"
#include "exception.h"
#include "scheduler.h"
#include "system_timer.h"
#include "console.h"

void handle_irq(irq_class irq, trap_frame *tp)
{
	switch (irq) {
		case timer1:
			DEBUG("timer1 interrupt acknowledge.\n");
			tick_in(TICK_TIME);
			break;
		default:
			DEBUG("unknow interrupt class.\n");
			while(1);
			break;
	}
}
