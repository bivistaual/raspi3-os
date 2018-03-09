#include "atags.h"
#include "console.h"

void atag_display(void)
{
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;

	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		switch (tag) {
			case ATAG_CORE:
				kprintf("ATAG_CORE:\n");
				kprintf("\tflags = %d, pagesize = %d, rootdev = %d\n",
						atag_scan->kind.core.flags,
						atag_scan->kind.core.pagesize,
						atag_scan->kind.core.rootdev);
				break;
			case ATAG_MEM:
				kprintf("ATAG_MEM:\n");
				kprintf("\tsize = 0x%x, start = 0x%x\n",
						atag_scan->kind.mem.size,
						atag_scan->kind.mem.start);
				break;
			case ATAG_CMDLINE:
				kprintf("ATAG_CMDLINE:\n");
				kprintf("\tcmdline = %s\n",
						atag_scan->kind.cmdline.cmdline);
				break;
			default:
				kprintf("unknow tag: %d\n", tag);
				break;
		}

		atag_scan = ATAG_NEXT(atag_scan);
		tag = ATAG_TAG(atag_scan);
	}
}

