#include <stdarg.h>

#include "console.h"

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

void panic(const char *fmt, ...)
{
	va_list args;

	display();

	va_start(args, fmt);

	kprintf("FILE: %s\n", va_arg(args, char *));
	kprintf("LINE: %d\n", va_arg(args, int));
	kprintf("FUNC: %s\n", va_arg(args, char *));
}
