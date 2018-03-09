#ifndef _SYSTEM_TIMER_H
#define _SYSTEM_TIMER_H

/* 
 *  The System Timer peripheral provides four 32-bit timer channels and a single 64-bit
 *  free running counter. Each channel has an output compare register, which is compared
 *  against the 32 least significant bits of the free running counter values. When the two
 *  values match, the system timer peripheral generates a signal to indicate a match for
 *  the appropriate channel. The match signal is then fed into the interrupt controller.
 *  The interrupt service routine then reads the output compare register and adds the
 *  appropriate offset for the next timer tick. The free running counter is driven by the
 *  timer clock and stopped whenever the processor is stopped in debug mode.
 */

#define SYSTEM_TIMER_BASE	((volatile unsigned int *)0x3f003000)

/*
 *  System Timer Control / Status.
 *  This register is used to record and clear timer channel comparator matches.
 *  The system timer match bits are routed to the interrupt controller where they can
 *  generate an interrupt.
 */

#define SYSTEM_TIMER_CS	(0x0 / 4)

/*
 *  The M0-3 fields contain the free-running counter match status. Write a one to the
 *  relevant bit to clear the match detect status bit and the corresponding interrupt
 *  request line.
 */

#define SYSTEM_TIMER_CS_M0	(0x1)
#define SYSTEM_TIMER_CS_M1	(0x2)
#define SYSTEM_TIMER_CS_M2	(0x4)
#define SYSTEM_TIMER_CS_M3	(0x8)

#define SYSTEM_TIMER_M0_CLR()														\
	do {																			\
		SYSTEM_TIMER_BASE[SYSTEM_TIMER_CS] &= ~SYSTEM_TIMER_CS_M0;					\
	} while (0)

#define SYSTEM_TIMER_M1_CLR()														\
	do {																			\
		SYSTEM_TIMER_BASE[SYSTEM_TIMER_CS] &= ~SYSTEM_TIMER_CS_M1;					\
	} while (0)

#define SYSTEM_TIMER_M2_CLR()														\
	do {																			\
		SYSTEM_TIMER_BASE[SYSTEM_TIMER_CS] &= ~SYSTEM_TIMER_CS_M2;					\
	} while (0)

#define SYSTEM_TIMER_M3_CLR()														\
	do {																			\
		SYSTEM_TIMER_BASE[SYSTEM_TIMER_CS] &= ~SYSTEM_TIMER_CS_M3;					\
	} while (0)

/*
 *  System Timer Counter Lower bits.
 *  The system timer free-running counter lower register is a read-only register that
 *  returns the current value of the lower 32-bits of the free running counter.
 */

#define SYSTEM_TIMER_CLO		(0x4 / 4)

#define SYSTEM_TIMER_CLO_GET()	(SYSTEM_TIMER_BASE[SYSTEM_TIMER_CLO])

/*
 *  System Timer Counter Higher bits.
 *  The system timer free-running counter higher register is a read-only register that
 *  returns the current value of the higher 32-bits of the free running counter.
 */

#define SYSTEM_TIMER_CHI		(0x8 / 4)

#define SYSTEM_TIMER_CHI_GET()	(SYSTEM_TIMER_BASE[SYSTEM_TIMER_CHI])

/*  
 *  System Timer Compare.
 *  The system timer compare registers hold the compare value for each of the four timer
 *  channels. Whenever the lower 32-bits of the free-running counter matches one of the
 *  compare values the corresponding bit in the system timer control/status register is
 *  set. Each timer peripheral (minirun and run) has a set of four compare registers.
 */

#define SYSTEM_TIMER_C0	(0xc / 4)
#define SYSTEM_TIMER_C1	(0x10 / 4)
#define SYSTEM_TIMER_C2	(0x14 / 4)
#define SYSTEM_TIMER_C3	(0x18 / 4)

/*
 *  Return current time in microsecond.
 */

unsigned long current_time(void);

/*
 *  Spins until 'us' microseconds have passed.
 */

void spin_sleep_us(unsigned long);

/*
 *  Spins until 'ms' milliseconds have passed.
 */

#define spin_sleep_ms(p)	spin_sleep_us((p) * 1000UL)

#define spin_sleep_s(p)		spin_sleep_ms((p) * 1000UL)

#endif

