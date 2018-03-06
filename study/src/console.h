#ifndef _CONSOLE_H
#define _CONSOLE_H

#include <stdarg.h>

int console_read(char *);

int console_write(const char *);

int _kprintf(const char *, va_list);

int kprintf(const char *, ...)
	__attribute__((format(printf, 1, 2)));

void panic(const char *, int, const char *, const char *, ...);

#endif
