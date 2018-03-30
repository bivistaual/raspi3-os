#include <stdint.h>

#include "system_timer.h"

unsigned long current_time(void)
{
	unsigned long CLO, CHI;

	CHI = SYSTEM_TIMER_CHI_GET();
	CLO = SYSTEM_TIMER_CLO_GET();

	if (CHI == SYSTEM_TIMER_CHI_GET())
		return CLO + (CHI << 32);
	else
		return SYSTEM_TIMER_CLO_GET() + (++CHI << 32);
}

void wait_micros(unsigned int period)
{
	spin_sleep_us(period);
}

void spin_sleep_us(unsigned long period)
{
	unsigned long startTime = current_time();

	while (current_time() - startTime <= period)
		continue;
}

void tick_in(unsigned int period)
{
	SYSTEM_TIMER_M1_CLR();
	SYSTEM_TIMER_C1_SET((uint32_t)(current_time() + period));
}
