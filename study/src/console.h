#ifndef _CONSOLE_H
#define _CONSOLE_H

#include <stdarg.h>

#define panic(fmt, ...)															\
		__panic(__FILE__, __LINE__, __func__, fmt, ##__VA_ARGS__)

int console_read(char *);

int console_write(const char *);

int __kprintf(const char *, va_list);

int kprintf(const char *, ...)
	__attribute__((format(printf, 1, 2)));

void __panic(const char *, int, const char *, const char *, ...);

#endif
