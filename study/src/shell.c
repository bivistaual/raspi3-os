#include <stddef.h>

#include "assert.h"
#include "atags.h"
#include "string.h"
#include "console.h"
#include "mini_uart.h"
#include "system_timer.h"
#include "malloc.h"
#include "list.h"

#define CMD_LIMIT		1024
#define ARG_CAPACITY	64
#define ARG_LIMIT		64

typedef struct {
	char arg[ARG_CAPACITY][ARG_LIMIT];
	unsigned int capacity;
	unsigned int length;
}	Cmd;

extern uint8_t _end;
extern struct mem_map _memory_map;
extern LIST_HEAD(mem_bin[26]);

static int shell_loop(void);
static char * read_cmd(char *);
static int parse_cmd(Cmd *, char *);
static int exe_cmd(Cmd *);
static void echo(char (*)[ARG_LIMIT], unsigned int);
static void display_banner(void);
static void test_malloc(void);
static void mem_init(void);

int kernel_main(void)
{
	mu_init();

	// block until read ''
	
	while (mu_read_byte() != '\r')
		continue;

	mem_init();
	
	shell_loop();

	return 0;
}

static void mem_init(void)
{
	volatile struct atag * atag_scan = (volatile struct atag *)ATAG_HEADER_ADDR;
	uint32_t tag;

	// initialize the bin class array
	for (int i = 0; i < 26; i++)
		LIST_INIT(&mem_bin[i]);

	// return if fetch the memory map of the mechain
	tag = ATAG_TAG(atag_scan);
	while (tag != ATAG_NONE) {
		if (tag == ATAG_MEM) {
			_memory_map.start = (uint8_t *)&_end;
			_memory_map.end = (uint8_t *)((atag_scan->kind.mem.size) + 
					atag_scan->kind.mem.start);

			if (_memory_map.start >= _memory_map.end) {
				panic("Memory map error!\n_memory_map.start = %x, _memory_map.end = %x\n",
						_memory_map.start, _memory_map.end);
			}

			return;
		}
		tag = ATAG_TAG(ATAG_NEXT(atag_scan));
	}

	panic("Can't fetch ATAG_MEM tag!\n");
}

static int shell_loop(void)
{
	char buffer[CMD_LIMIT];
	Cmd command;
	
	command.capacity = ARG_CAPACITY;
	command.length = 0;

	kprintf("\nWelcome to raspberry pi 3b shell!\n\n");
	display_banner();
	kprintf("\n");

	while (1) {
		kprintf("> ");
		if (read_cmd(buffer) == NULL)
			continue;
		if (parse_cmd(&command, buffer) <= 0)
			continue;
		exe_cmd(&command);
	}

	return 0;
}

static char * read_cmd(char * buffer)
{
	unsigned char c;
	int index = 0;

	while ((c = mu_read_byte()) != '\r') {
		switch (c) {
			case 0x7f:
			case '\b':
//				kprintf("get del at index = %d\n", index);
				if (index == 0) {
//					kprintf("belling...\n");
					mu_write_byte(0x07);
				} else {
					mu_write_byte('\b');
					mu_write_byte(' ');
					mu_write_byte('\b');
					index--;
				}
				break;
			case '\t':
				kprintf("\n");
				break;
			case '\0':
				break;
			default:
				// if (!(c & 0x80)) {
					mu_write_byte(c);
					//kprintf("0x%x ", (int)c);
					if (index < 1024)
						buffer[index++] = c;
				// }
				break;
		}
	}

	if (index >= 1024) {
		kprintf("command is too long\n");
		return NULL;
	}
	buffer[index] = '\0';
	kprintf("\n");

	return buffer;
}

static int parse_cmd(Cmd * pCmd, char * cmd)
{
	char * temp;

	pCmd->length = 0;

	temp = strtok(cmd, " ");
	while (temp != NULL) {
		if (pCmd->length >= 64) {
			kprintf("too many arguments\n");
			return -1;
		}
		strcpy(pCmd->arg[(pCmd->length)++], temp);
		temp = strtok(NULL, " ");
	}

	return pCmd->length;
}

static int exe_cmd(Cmd * pCmd)
{
	if (!strcmp(pCmd->arg[0], "echo"))
		echo(pCmd->arg + 1, pCmd->length - 1);
	else if (!strcmp(pCmd->arg[0], "atag"))
		atag_display();
	else if (!strcmp(pCmd->arg[0], "malloc"))
		test_malloc();
	else
		kprintf("unknow command: %s\n", pCmd->arg[0]);

	return 0;
}

static void echo(char (*array)[ARG_LIMIT], unsigned int num)
{
	unsigned int i;

	for (i = 0; i < num; i++) {
//		for (int j = 0; j < 64; j++)
//			kprintf(">%c-", array[i][j]);
		kprintf("%s", array[i]);
		if (i != num - 1)
			kprintf(" ");
	}
	if (num != 0)
		kprintf("\n");
}

static void display_banner(void)
{
	kprintf("███████╗ ████╗██╗   ██╗████╗ ██████╗████████╗ ████╗  ██╗   ██╗  ████╗  ██╗\n");
	kprintf("██╔═══██╗╚██╔╝██║   ██║╚██╔╝██╔════╝╚══██╔══╝██╔═██╗ ██║   ██║ ██╔═██╗ ██║\n");
	kprintf("███████╔╝ ██║ ╚██╗ ██╔╝ ██║ ╚██████╗   ██║  ██╔╝ ╚██╗██║   ██║██╔╝ ╚██╗██║\n");
	kprintf("██╔═══██╗ ██║  ╚████╔╝  ██║  ╚════██╗  ██║  ████████║██║   ██║████████║██║\n");
	kprintf("███████╔╝████╗  ╚██╔╝  ████╗ ██████╔╝  ██║  ██╔═══██║╚██████╔╝██╔═══██║███████╗\n");
	kprintf("╚══════╝ ╚═══╝   ╚═╝   ╚═══╝ ╚═════╝   ╚═╝  ╚═╝   ╚═╝ ╚═════╝ ╚═╝   ╚═╝╚══════╝\n");
}

static void test_malloc(void)
{
	int *p;

	assert(1 == 2);

	p = (int *)malloc(127 * sizeof(int));
	assert(p != NULL);
	for (int i = 0; i < 127; i++)
		p[i] = i;
	for (int i = 0; i < 127; i++) {
		assert(p[i] == i);
		kprintf("%d\t", p[i]);
	}
	kprintf("\n");

	kprintf("freeing memory...");
	free(p);
	kprintf("done.\n");
}
