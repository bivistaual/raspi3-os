#include "hash.h"
#include "string.h"

unsigned int hashCode(const char *str)
{
	unsigned int h = 0;

	while (*str)
		h = 31 * h + *(str++);

	return h;
}
