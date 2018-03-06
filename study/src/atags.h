#ifndef _ATAGS_H
#define _ATAGS_H

#include <stdint.h>

#define ATAG_HEADER_ADDR		((uint32_t volatile *)0x100)

#define ATAG_NONE				0x00000000
#define ATAG_CORE				0x54410001
#define ATAG_MEM				0x54410002
#define ATAG_CMDLINE			0x54410009

struct atag_header {
	uint32_t size;				/* length of tag in words including this header */
	uint32_t tag;				/* tag value */
};

/*
 * This tag must be used to start the list, it contains the basic information any
 * bootloader must pass, a tag length of 2 indicates the tag has no structure
 * attached.
 */

struct atag_core {
	uint32_t flags;				/* bit 0 = read-only */
	uint32_t pagesize;			/* systems page size (usually 4k) */
	uint32_t rootdev;			/* root device number */
};

/*
 * Describes an area of physical memory the kernel is to use.
 */

struct atag_mem {
	uint32_t size;				/* size of the area */
	uint32_t start;				/* physical start address */
};

/*
 * Used to pass command line parameters to the kernel. The command line must be
 * NULL terminated. The length_of_cmdline variable should include the terminator.
 */

struct atag_cmdline {
	char cmdline[1];			/* this is the minimum size */
};

struct atag {
	struct atag_header hdr;
	union {
		struct atag_core		core;
		struct atag_mem			mem;
		struct atag_cmdline		cmdline;
	} kind;
};

/*
 * return next address of atag
 */

#define ATAG_NEXT(t)															\
	((struct atag *)((uint32_t volatile *)(t) + (t)->hdr.size))

#define ATAG_SIZE(type)															\
	((sizeof(struct atag_header) + sizeof(struct type)) >> 2)

#define ATAG_TAG(t)																\
	((t)->hdr.tag)

void atag_display(void);

#endif

