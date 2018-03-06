#include <stdarg.h>

#include "console.h"
#include "mini_uart.h"

static char * itoa(int, char *);
static char * itoh(int, char *);
static char getDigit(int, char *, int *);

int kprintf(const char *fmt, ...)
{
	int result;
	va_list args;

	va_start(args, fmt);
	result = _kprintf(fmt, args);
	va_end(args);

	return result;
}

int _kprintf(const char *str, va_list args)
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
						mu_write_str(itoh(va_arg(args, int), temp));
						break;
					case '%':
						mu_write_byte('%');
						break;
					default:
						break;
				}
				break;
/*			case 0x5c:
				mu_write_str("Got a \\\n");
				switch (c = str[strIndex++]) {
					case 'n':
						mu_write_byte(0x0D);
						mu_write_byte(0x0A);
						break;
					case 't':
						mu_write_byte(0x09);
						break;
					case 0x5c:
						mu_write_byte(0x5c);
						break;
					default:
						break;
				}
				break;
*/
			default:
				mu_write_byte(c);
				if (c == '\n')
					mu_write_byte('\r');
				break;
		}
	}

	return 1;
}

static char getDigit(int n, char * str, int * pIndex)
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

static char * itoa(int n, char * str)
{
	int index = 0;
	char c = getDigit(n, str, &index);
	str[index++] = c;
	str[index] = '\0';
	return str;
}

static char * itoh(int n, char *str)
{
	int t;
	char *scan = str;

	for (int i = 0; i < 8; i++) {
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
	kprintf("            (\n");
	kprintf("        (     )     )\n");
	kprintf("         )   (    (\n");
	kprintf("        (          `\n");
	kprintf("    .-\"\"^\"\"\"^\"\"^\"\"\"^\"\"-.\n");
	kprintf("  (//\\\\//\\\\//\\\\//\\\\//\\\\//)\n");
	kprintf("   ~\\^^^^^^^^^^^^^^^^^^/~\n");
	kprintf("     `================`\n\n");
	kprintf("    The pi is overdone.\n\n");
	kprintf("---------- PANIC ----------\n\n");
}

void panic(const char *file, int line, const char *func, const char *fmt, ...)
{
	va_list args;

	display();

	kprintf("FILE: %s\n", file);
	kprintf("LINE: %d\n", line);
	kprintf("FUNC: %s\n", func);

	va_start(args, fmt);
	_kprintf(fmt, args);
	va_end(args);
}
