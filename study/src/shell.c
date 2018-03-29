#include <stddef.h>
#include <stdbool.h>

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
#include "sdcard.h"
#include "path.h"

extern fat32_t *pfat32_global;

static inline void fat32_info(void);
static inline void file_info(file *pfile);

int shell_start(char *prefix)
{
	char buffer[CMD_LIMIT];
	Cmd command;
	
	command.capacity = ARG_CAPACITY;
	command.length = 0;
	strcpy(cwd(), "/");

	while (1) {
		kprintf("(%s) %s", cwd(), prefix);
		if (read_cmd(buffer) == NULL)
			continue;
		if (parse_cmd(&command, buffer) <= 0)
			continue;
		if (exe_cmd(&command) == 0)
			break;
	}

	return 0;
}

int shell_exit(int argc)
{
	if (argc != 1) {
		kprintf("too many arguments\n");
		return 1;
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
				if (!(c & 0x80)) {
					mu_write_byte(c);
					//kprintf("0x%x ", (int)c);
					if (index < 1024)
						buffer[index++] = c;
				}
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
	else if (!strcmp(pCmd->arg[0], "cat"))
		cat(pCmd->arg + 1, pCmd->length - 1);
	else if (!strcmp(pCmd->arg[0], "pwd"))
		pwd();
	else if (!strcmp(pCmd->arg[0], "ls"))
		ls(pCmd->arg + 1, pCmd->length - 1);
	else if (!strcmp(pCmd->arg[0], "fat32info"))
		fat32_info();
	else if (!strcmp(pCmd->arg[0], "malloc"))
		test_malloc();
	else if (!strcmp(pCmd->arg[0], "exit"))
		return shell_exit(pCmd->length);
	else
		kprintf("unknow command: %s\n", pCmd->arg[0]);

	return 1;
}

void echo(char (*array)[ARG_LIMIT], unsigned int num)
{
	for (unsigned int i = 0; i < num; i++) {
		kprintf("%s", array[i]);
		if (i != num - 1)
			kprintf(" ");
	}
	if (num != 0)
		kprintf("\n");
}

void cat(char (*array)[ARG_LIMIT], unsigned int num)
{
	file *pf;
	char path[1024] = "\0";
	char *data;
	size_t size;

	if (num == 0) {
		kprintf("no input file\n");
		return;
	}

	for (unsigned int i = 0; i < num; i++) {
		to_abs_path(path, array[i]);

		pf = fat32_open(pfat32_global, path);
		if (pf == NULL) {
			kprintf("no such file or directory: %s\n", array[i]);
			return;
		}
	
		// file_info(pf);

		if (FAT32_IS_DIR(pf->attribute)) {
			kprintf("it's a directory: %s\n", array[i]);
			return;
		}

		size = fat32_read_chain(pfat32_global, pf->cluster, &data);
		if (data == NULL || size == 0)
			continue;

		for (size_t j = 0; j < pf->size; j++)
			if ((uint8_t)(data[j]) & 0x80) {
				kprintf("error processing \'%s\': invalid UTF-8\n", array[i]);
				goto cat_free_next;
			}

		for (size_t j = 0; j < pf->size; j++) {
			mu_write_byte(data[j]);
			if (data[j] == '\n')
				mu_write_byte('\r');
		}

cat_free_next:

		free(data);
	}
}

void cd(char (*array)[ARG_LIMIT], unsigned int num)
{
	char cwd_temp[1024] = "\0";
	file *pf;

	if (num > 1) {
		kprintf("too many arguments\n");
		return;
	}

	if (num == 0) {
		return;
	}

	to_abs_path(cwd_temp, array[0]);

	pf = fat32_open(pfat32_global, cwd_temp);
	
	if (pf == NULL) {
		kprintf("no such file or directory: %s\n", array[0]);
		return;
	}
	
	// file_info(pf);

	if (!FAT32_IS_DIR(pf->attribute)) {
		// DEBUG("attribute = 0x%x\n", pf->attribute);
		kprintf("not a directory: %s\n", array[0]);
		return;
	}

	path_simplify(cwd_temp);
	strcpy(cwd(), cwd_temp);
	
	free(pf);

	return;
}

void pwd(void)
{
	kprintf("%s\n", cwd());
}

void ls(char (*array)[ARG_LIMIT], unsigned int num)
{
	file *pf;
	dir_entry_t *pdir_entry;
	size_t dirs, index = 0, lfn_entrys;
	char path[1024] = "\0";
	char name[511];
	char *temp = array[0];
	bool show_hidden = false;
	char attribute[4] = "---";

	if (num == 1) {
		if (!strcmp("-a", array[0])) {
			show_hidden = true;
			strcpy(path, cwd());
		} else
			to_abs_path(path, array[0]);
	} else if (num == 2) {
		if (!strcmp("-a", array[0])) {
			show_hidden = true;
			temp = array[1];
			to_abs_path(path, array[1]);
		} else if (!strcmp("-a", array[1])) {
			show_hidden = true;
			temp = array[0];
			to_abs_path(path, array[0]);
		} else {
			kprintf("too many arguments\n");
			return;
		}
	} else if (num == 0) {
		strcat(path, cwd());
		temp = cwd();
	}

	pf = fat32_open(pfat32_global, path);
	if (pf == NULL) {
		kprintf("no such file of directory: %s\n", temp);
		return;
	}
	
	//file_info(pf);
	
	//DEBUG("Determine file is directory or file.\n");
		
	if (!FAT32_IS_DIR(pf->attribute)) {
		kprintf("it is not a directory: %s\n", temp);
		free(pf);
		return;
	}

	//DEBUG("Reading cluster %d.\n", pf->cluster);
	
	dirs = fat32_read_chain(pfat32_global, pf->cluster, (char **)(&pdir_entry)) /
		sizeof(dir_entry_t);

	//DEBUG("%d directory entries read.\n", dirs);
		
	while (index < dirs) {
		lfn_entrys = fat32_parse_name(&pdir_entry[index], name);

		index += lfn_entrys;
		
		// If entry has already been deleted, goto next entry.
		if ((uint8_t)(pdir_entry[index].reg_dir.name[0]) == 0xe5 ||
			(uint8_t)(pdir_entry[index].reg_dir.name[0]) == 0x05) {
			index++;
			continue;
		}
		
		// If entry indicates the following entries are unused, break.
		if ((uint8_t)(pdir_entry[index].reg_dir.name[0]) == 0)
			break;

		if (!show_hidden && FAT32_IS_HIDDEN(pdir_entry[index].reg_dir.attribute)) {
			index++;
			continue;
		}

		/*
		DEBUG("dir entry:\n");
		for (int i = 0; i < 8; i++) {
			kprintf("0x%x\t", ((uint32_t *)(pdir_entry + index))[i]);
		}
		kprintf("\n");
		*/

		uint8_t attr = pdir_entry[index].reg_dir.attribute;
		uint16_t creation_time = pdir_entry[index].reg_dir.creation_time;
		uint16_t creation_date = pdir_entry[index].reg_dir.creation_date;
		uint16_t last_mod_time = pdir_entry[index].reg_dir.last_mod_time;
		uint16_t last_mod_date = pdir_entry[index].reg_dir.last_mod_date;

		if (FAT32_IS_DIR(attr)) {
			strcat(name, "/");
			attribute[0] = 'd';
		}
		if (!FAT32_IS_RO(attr))
			attribute[1] = 'w';
		if (FAT32_IS_HIDDEN(attr))
			attribute[2] = 'h';

		kprintf("%s %d/%d/%d\t%d:%d:%d       \t%d/%d/%d       \t%d:%d:%d       \t%d\t%s\n",
				attribute,
				FAT32_GET_MONTH(creation_date),
				FAT32_GET_DAY(creation_date),
				FAT32_GET_YEAR(creation_date) + 1980,
				FAT32_GET_HOUR(creation_time),
				FAT32_GET_MINUTE(creation_time),
				FAT32_GET_SECOND(creation_time) + pdir_entry[index].reg_dir.time_ts / 10,
				FAT32_GET_MONTH(last_mod_date),
				FAT32_GET_DAY(last_mod_date),
				FAT32_GET_YEAR(last_mod_date),
				FAT32_GET_HOUR(last_mod_time),
				FAT32_GET_MINUTE(last_mod_time),
				FAT32_GET_SECOND(last_mod_time),
				pdir_entry[index].reg_dir.size,
				name);
		
		index++;
		strcpy(attribute, "---");
	}

	if (pdir_entry != NULL)
		free(pdir_entry);
	free(pf);
}

void display_bvstl(void)
{
	kprintf("███████╗ ██╗   ██╗ ██████╗████████╗ ██╗\n");
	kprintf("██╔═══██╗██║   ██║██╔════╝╚══██╔══╝ ██║\n");
	kprintf("███████╔╝╚██╗ ██╔╝╚██████╗   ██║    ██║\n");
	kprintf("██╔═══██╗ ╚████╔╝  ╚════██╗  ██║    ██║\n");
	kprintf("███████╔╝  ╚██╔╝   ██████╔╝  ██║    ███████╗\n");
	kprintf("╚══════╝    ╚═╝    ╚═════╝   ╚═╝    ╚══════╝\n");
}

void display_bivistaual(void)
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
	
	DEBUG("p = 0x%x\n", p);

	p2 = (int *)malloc(126 * sizeof(int));
	for (int i = 126; i > 0; i--)
		p2[126 - i] = i;
	
	DEBUG("p2 = 0x%x\n", p2);

	free(p);

	p3 = (int *)malloc(45 * sizeof(int));
	
	DEBUG("p3 = 0x%x\n", p3);

	free(p2);

	p4 = (int *)malloc(47 * sizeof(int));
	
	DEBUG("p4 = 0x%x\n", p4);

	free(p3);
	free(p4);
}

static inline void file_info(file *pfile)
{
	kprintf("file information:\n\tcluster:\t%d\n", pfile->cluster);
	kprintf("\tattribute:\t0x%x\n", pfile->attribute);
	kprintf("\tsize:\t\t%d\n", pfile->size);
}

static inline void fat32_info(void)
{
	kprintf("FAT32 information:\n");
	kprintf("sector size:\t%d bytes\n", pfat32_global->sector_size);
	kprintf("cluster size:\t%d sectors\n", pfat32_global->cluster_size);
	kprintf("FAT size:\t%d sectors\n", pfat32_global->fat_size);
	kprintf("FAT start at sector %d\n", pfat32_global->fat_start);
	kprintf("data start at sector %d\n", pfat32_global->data_start);
	kprintf("root directory start at cluster %d\n", pfat32_global->root_cluster);
}
