#include "assert.h"
#include "console.h"

void __assert(const char * file, int line, const char * exp)
{
	kprintf("Assertion violation: file %s, line: %d, %s\n", file, line, exp);
}
