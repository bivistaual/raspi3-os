#include <stdarg.h>
#include <stdint.h>

#include "console.h"
#include "mini_uart.h"

extern void _start(void);

static char * itoa(long unsigned int, char *);
static char * itoh(long unsigned int, char *);
static char getDigit(long unsigned int, char *, long unsigned int *);

int kprintf(const char *fmt, ...)
{
	int result;
	va_list args;

	va_start(args, fmt);
	result = __kprintf(fmt, args);
	va_end(args);

	return result;
}

int __kprintf(const char *str, va_list args)
{
	unsigned strIndex = 0;
	char c, temp[32];

	while ((c = str[strIndex++]) != '\0') {
		switch (c) {
			case '%':
				switch (c = str[strIndex++]) {
					case 'd':
						mu_write_str(itoa(va_arg(args, int), temp));
						break;
					case 's':
						mu_write_str(va_arg(args, char *));
						break;
					case 'c':
						mu_write_byte((char)va_arg(args, int));
						break;
					case 'x':
						mu_write_str(itoh(va_arg(args, long unsigned int), temp));
						break;
					case '%':
						mu_write_byte('%');
						break;
					default:
						break;
				}
				break;
			default:
				mu_write_byte(c);
				if (c == '\n')
					mu_write_byte('\r');
				break;
		}
	}

	return 1;
}

static char getDigit(long unsigned int n, char * str, long unsigned int *pIndex)
{
	char c;
	if (n / 10 > 0) {
		c = getDigit(n / 10, str, pIndex);
		str[*pIndex] = c;
		(*pIndex)++;
		return (n % 10 + '0');
	} else {
		return (n + '0');
	}
}

static char * itoa(long unsigned int n, char * str)
{
	long unsigned int index = 0;
	char c = getDigit(n, str, &index);
	str[index++] = c;
	str[index] = '\0';
	return str;
}

static char * itoh(long unsigned int n, char *str)
{
	long unsigned int t;
	char *scan = str;

	for (long unsigned int i = 0; i < 8; i++) {
		t = (n >> ((7 - i) << 2)) & 0xf;
		if (t < 10)
			*(scan++) = t + '0';
		else
			*(scan++) = t + 'a' - 10;
	}
	*(scan) = '\0';
	
	while (*str == '0' && *(str + 1) != '\0')
		str++;

	return str;
}

static inline void display(void)
{
	kprintf("           (\n");
	kprintf("       (     )     )\n");
	kprintf("        )   (    (\n");
	kprintf("       (          `\n");
	kprintf("   .-\"\"^\"\"\"^\"\"^\"\"\"^\"\"-.\n");
	kprintf(" (//\\\\//\\\\//\\\\//\\\\//\\\\//)\n");
	kprintf("  ~\\^^^^^^^^^^^^^^^^^^/~\n");
	kprintf("    `================`\n\n");
	kprintf("    The pi is overdone.\n\n");
	kprintf("---------- PANIC ----------\n\n");
}

void __panic(const char *file, int line, const char *func, const char *fmt, ...)
{
	va_list args;

	display();

	kprintf("FILE: %s\n", file);
	kprintf("LINE: %d\n", line);
	kprintf("FUNC: %s\n\n", func);

	va_start(args, fmt);
	__kprintf(fmt, args);
	va_end(args);

#ifdef DUMP_STACK

	uint32_t *current_stack_point;

	__asm__(
		"mov %0, sp"
		:"=r"(current_stack_point)
	);

	kprintf("\n\nSTACK DUMP FROM ADDRESS 0x%x:\n\n", (uint32_t)current_stack_point);
	for (uint32_t *p = current_stack_point; p < (uint32_t *)0x80000; p++, i++) {
		kprintf("0x%x\t", *p);
		if ((i + 1) % 8 == 0)
			kprintf("\n");
	}

#endif

	while (1);
}

int __debug(const char *func, const char *fmt, ...)
{
	va_list args;

	kprintf("%s: ", func);
    
	va_start(args, fmt);
	__kprintf(fmt, args);
	va_end(args);

	return 1;
}
