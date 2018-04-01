#include <stdint.h>

#include "exception.h"
#include "console.h"
#include "shell.h"
#include "interrupt.h"
#include "syscall.h"

void handle_exception(struct info i, uint32_t esr, trap_frame *ptf)
{
	int irq;

	// DEBUG("source = %d, kind = %d, esr = 0x%x\n", i.source, i.kind, esr);
	
	switch (i.kind) {
		case KIND_SYNCHRONOUS:
			switch (i.source) {
				case SOURCE_SPELX:
				case SOURCE_AARCH64:
					switch (EC_FROM_ESR(esr)) {
						case EC_DATA_ABORT_SAME:
							// data abort
							panic("Data abort because of code: 0x%x\n", esr & 0x3f);
							break;
						case EC_BRK:
							// start a debug shell
							kprintf("Debugger\n");
							shell_start("# ");
							ptf->ELR += 4;
							break;
						case EC_SVC_AARCH64:
							// svc instruction excution
							// DEBUG("svc detected.\n");
							handle_syscall(esr & 0xffff, ptf);
							break;
						default:
							DEBUG("unknow error.\n");
							//while (1);
							break;
					}
					break;
				default:
					break;
			}
			break;
		case KIND_IRQ:
			// DEBUG("irq_basic_pending = 0x%x, irq pending 1 = 0x%x, irq pending 2 = 0x%x\n",
			// 		irq_controler->irq_pending_1, irq_controler->irq_pending_2, irq_controler->irq_basic_pending);
			irq = __builtin_ctz(irq_controler->irq_pending_1);
			if (irq != 32)
				handle_irq(irq, ptf);
			else {
				irq = __builtin_ctz(irq_controler->irq_pending_2);
				if (irq != 32)
					handle_irq(irq + 32, ptf);
				else
					panic("Unknown interrupt.\n");
			}
			break;
		default:
			break;
	}
}
