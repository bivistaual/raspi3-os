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

	// this is a very huge switch. XD
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
							panic("Unknow error code: 0x%x.\n", EC_FROM_ESR(esr));
							break;
					}
					break;
				default:
					panic("Unknown source of exception: %d.\n", i.source);
					break;
			}
			break;
		case KIND_IRQ:
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
			panic("Unknown kind of exception: %d.\n", i.kind);
			break;
	}
}
