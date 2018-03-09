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

void wait_micro(unsigned int period)
{
	spin_sleep_us((unsigned long)period * 1000);
}

void spin_sleep_us(unsigned long period)
{
	unsigned long startTime = current_time();

	while (current_time() - startTime <= period)
		continue;
}
