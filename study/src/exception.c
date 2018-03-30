#include <stdint.h>

#include "exception.h"
#include "console.h"
#include "shell.h"
#include "interrupt.h"

void handle_exception(struct info i, uint32_t esr, void *tp)
{
	DEBUG("source = %d, kind = %d, esr = 0x%x\n", i.source, i.kind, esr);
//	while (1);
	switch (i.kind) {
		case KIND_SYNCHRONOUS:
			switch (i.source) {
				case SOURCE_SPELX:
				case SOURCE_AARCH64:
					switch (EC_FROM_ESR(esr)) {
						case EC_DATA_ABORT_SAME:
							// FIXME: data abort
							//DEBUG("Data abort because of code: 0x%x\n", esr & 0x3f);
							while (1);
							break;
						case EC_BRK:
							// FIXME: start a debug shell
							kprintf("Debugger\n");
							shell_start("# ");
							((trap_frame *)tp)->ELR += 4;
							break;
						case EC_SVC_AARCH64:
							// FIXME: svc instruction excution
							DEBUG("svc detected.\n");
							break;
						default:
							DEBUG("unknow error.\n");
							while (1);
							break;
					}
					break;
				default:
					break;
			}
			break;
		case KIND_IRQ:
			DEBUG("irq pending base register = 0x%x\n",
					irq_controler->irq_basic_pending);
			while (1);
			break;
		default:
			break;
	}
}
