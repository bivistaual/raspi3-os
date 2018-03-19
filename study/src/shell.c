#include <stddef.h>

#include "shell.h"
#include "assert.h"
#include "atags.h"
#include "string.h"
#include "console.h"
#include "mini_uart.h"
#include "system_timer.h"
#include "malloc.h"
#include "list.h"
#include "fat32.h"

extern fat32_t *pfat32_global;

static char cwd[1024] = "/";

int shell_loop(void)
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

char * read_cmd(char * buffer)
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

int parse_cmd(Cmd * pCmd, char * cmd)
{
	char *temp;

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

int exe_cmd(Cmd * pCmd)
{
	if (!strcmp(pCmd->arg[0], "echo"))
		echo(pCmd->arg + 1, pCmd->length - 1);
	else if (!strcmp(pCmd->arg[0], "atag"))
		atag_display();
	else if (!strcmp(pCmd->arg[0], "cd"))
		cd(pCmd->arg + 1, pCmd->length - 1);
	else
		kprintf("unknow command: %s\n", pCmd->arg[0]);

	return 0;
}

void echo(char (*array)[ARG_LIMIT], unsigned int num)
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

void cd(char (*array)[ARG_LIMIT], unsigned int num)
{
	char cwd_temp[1024] = "\0";
	file *pf;
	char *stack[128];
	int top = -1;
	char *path_part;

#define PUSH(p)																	\
	do {																		\
		stack[++top] = p;														\
	} while (0)

#define POP(s)																	\
	(top >= 0 ? *((s) + (top--)) : 0)

	if (num > 1) {
		kprintf("too many arguments\n");
		return;
	}

	if (num == 0) {
		return;
	}

	// relative path to absolute path
	if (array[0][0] != '/')
		strcpy(cwd_temp, cwd);
	strcat(cwd_temp, array[0]);

	pf = fat32_open(pfat32_global, cwd_temp);
	
	if (pf == NULL) {
		kprintf("no such file or directory: %s\n", cwd_temp);
		return;
	}

	if (!FAT32_IS_DIR(pf->attribute)) {
		kprintf("not a directory: %s\n", cwd_temp);
		return;
	}

	path_part = strtok(cwd_temp, "/");
	while (path_part != NULL) {
		// a .. directory
		if (!strcmp("..", path_part))
			POP(stack);

		// NOT a . directory
		if (strcmp(".", path_part))
			PUSH(path_part);
	
		path_part = strtok(NULL, "/");
	}

	strcpy(cwd, "/");
	for (int i = 0; i <= top; i++) {
		strcat(cwd, stack[i]);
		strcat(cwd, "/");
	}
	
	free(pf);

#undef PUSH
#undef POP

	return;
}

void pwd(void)
{
	kprintf("%s\n", cwd);
}

void display_banner(void)
{
	kprintf("███████╗ ████╗██╗   ██╗████╗ ██████╗████████╗ ████╗  ██╗   ██╗  ████╗  ██╗\n");
	kprintf("██╔═══██╗╚██╔╝██║   ██║╚██╔╝██╔════╝╚══██╔══╝██╔═██╗ ██║   ██║ ██╔═██╗ ██║\n");
	kprintf("███████╔╝ ██║ ╚██╗ ██╔╝ ██║ ╚██████╗   ██║  ██╔╝ ╚██╗██║   ██║██╔╝ ╚██╗██║\n");
	kprintf("██╔═══██╗ ██║  ╚████╔╝  ██║  ╚════██╗  ██║  ████████║██║   ██║████████║██║\n");
	kprintf("███████╔╝████╗  ╚██╔╝  ████╗ ██████╔╝  ██║  ██╔═══██║╚██████╔╝██╔═══██║███████╗\n");
	kprintf("╚══════╝ ╚═══╝   ╚═╝   ╚═══╝ ╚═════╝   ╚═╝  ╚═╝   ╚═╝ ╚═════╝ ╚═╝   ╚═╝╚══════╝\n");
}

void test_malloc(void)
{
	int *p, *p2, *p3, *p4;

	p = (int *)malloc(127 * sizeof(int));
	for (int i = 0; i < 127; i++)
		p[i] = i;

	p2 = (int *)malloc(127 * sizeof(int));
	for (int i = 127; i > 0; i--)
		p2[127 - i] = i;

	for (int i = 0; i < 127; i++) {
		assert(p[i] == i);
		assert(p2[i] == 127 - i);
	}

	free(p);

	p3 = (int *)malloc(127 * sizeof(int));
	assert(p3 == p);
	assert(MEM_CHUCK_SIZE((struct mem_chuck *)p3 - 1) == ALIGN_UP(127 * sizeof(int), 4));

	free(p2);

	p4 = (int *)malloc(127 * sizeof(int));
	assert(p4 == p2);

	free(p3);
	free(p4);
}
