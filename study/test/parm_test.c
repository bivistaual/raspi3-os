#include <stdio.h>
#include <stdint.h>

struct info {
	uint16_t source;
	uint16_t kind;
};

int state;

void handler(struct info, unsigned int esr, unsigned char *tp);

int main(void)
{
	struct info i;

	handler(i, 0x3c000000, NULL);

	return 0;
}

void handler(struct info i, unsigned int esr, unsigned char *tp)
{
	if (tp == NULL)
		state = i.kind + i.source + esr;
	else
		state = -1;
}
