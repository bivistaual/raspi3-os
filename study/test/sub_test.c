#include <stdio.h>
#include <assert.h>
#include <stdint.h>

int main(void)
{
	uint32_t entry;

	entry = 0x00000001;
	assert(entry - 2 > 0xfffffed);

	entry = 0x00000000;
	assert(entry - 2 > 0xfffffed);

	entry = 0x00000002;
	assert(entry - 2 <= 0xfffffed);

	entry = 0x00148513;
	assert(entry - 2 <= 0xfffffed);
	
	entry = 0x0fffffef;
	assert(entry - 2 <= 0xfffffed);

	return 0;
}
