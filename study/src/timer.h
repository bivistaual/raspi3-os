#ifndef _TIMER_H
#define _TIMER_H

/*
 *  The ARM Timer is based on a ARM AP804, but it has a number of differences with the
 *  standard SP804:
 *		There is only one timer.
 *		It only runs in continuous mode.
 *		It has a extra clock pre-divider register.
 *		It has a extra stop-in-debug-mode control bit.
 *		It also has a 32-bit free running counter.
 *  The clock from the ARM timer is derived from the system clock. This clock can change
 *  dynamically e.g. if the system goes into reduced power or in low power mode. Thus the
 *  clock speed adapts to the overal system performance capabilities. For accurate timing
 *  it is recommended to use the system timers.
 */

#define TIMER_BASE				((volatile unsigned int *)(0x3f00b000 + 0x400))

/*
 *  The timer load register sets the time for the timer to count down. This value is
 *  loaded into the timer value register after the load register has been written or if
 *  the timer-value register has counted down to 0.
 */

#define TIMER_LOAD				(0x0 / 4)

#define TIMER_TIME_SET(t) \
	do { \
		TIMER_BASE[TIMER_LOAD] = t; \
	} while (0);

/*  
 *  This register holds the current timer value and is counted down when the counter is
 *  running. It is counted down each timer clock until the value 0 is reached. Then the
 *  value register is re-loaded from the timer load register and the interrupt pending
 *  bit is set. The timer count down speed is set by the timer pre-divide register.
 */

#define TIMER_VALUE				(0x4 / 4)

#define TIMER_VALUE_GET()		(TIMER_BASE[TIMER_VALUE])

/*
 *  The standard SP804 timer control register consist of 8 bits but in the BCM
 *  implementation there are more control bits for the extra features. Control bits 0-7
 *  are identical to the SP804 bits, albeit some functionality of the SP804 is not
 *  implemented. All new control bits start from bit 8 upwards. Differences between a
 *  real 804 and the BCM implementation are shown in italics.
 */

#define TIMER_CTRL				(0x8 / 4)

// TIMER_CTRL[23:16]. Free running counter pre-scaler. Freq is sys_clk/(prescale+1)
#define TIMER_CTRL_FRC_PRESCALE	16

// TIMER_CTRL[9]. Free running counter enable control.
#define TIMER_CTRL_FRC_EN		(1 << 9)

// 0 : Timers keeps running if ARM is in debug halted mode
// 1 : Timers halted if ARM is in debug halted mode
#define TIMER_CTRL_HALTED		(1 << 8)

#define TIMER_CTRL_EN			(1 << 7)

#define TIMER_CTRL_PERIODIC		(1 << 6)

#define TIMER_CTRL_IRQ			(1 << 5)

// Pre-scale bits:
// 00 : pre-scale is clock / 1 (No pre-scale)
// 01 : pre-scale is clock / 16
// 10 : pre-scale is clock / 256
// 11 : pre-scale is clock / 1 (Undefined in 804)
#define TIMER_CTRL_PRESCALE_1	(0 << 2)
#define TIMER_CTRL_PRESCALE_16	(1 << 2)
#define TIMER_CTRL_PRESCALE_256 (2 << 2)

#define TIMER_CTRL_32BIT		(1 << 1)

#define TIMER_CTRL_ONE_SHOT		(1 << 0)

#define TIMER_CTRL_SET(r) \
	do { \
		TIMER_BASE[TIMER_CTRL] = r; \
	} while (0)

/*  
 *  The timer IRQ clear register is write only. When writing this register the interrupt-
 *  pending bit is cleared.
 *  When reading this register it returns 0x544D5241 which is the ASCII reversed value
 *  for "ARMT".
 */

#define TIMER_IRQ_CLEAR()		(TIMER_BASE[0xc / 4] = 0)

/*  
 *  The raw IRQ register is a read-only register. It shows the status of the interrupt
 *  pending bit.
 */

#define TIMER_RAW_IRQ			(0x10 / 4)

// The interrupt pending bits is set each time the value register is counted down to
// zero. The interrupt pending bit can not by itself generates interrupts. Interrupts can
// only be generated if the interrupt enable bit is set.
#define TIMER_RAW_IRQ_PENDING()	(TIMER_BASE[TIMER_RAW_IRQ] & 0x1)

/*
 *  The masked IRQ register is a read-only register. It shows the status of the interrupt
 *  signal. It is simply a logical AND of the interrupt pending bit and the interrupt
 *  enable bit.
 */

#define TIMER_MASKED_IRQ		(0x14 / 4)

#define TIMER_MASKED_IRQ_LINE()	(TIMER_BASE[TIMER_MASKED_IRQ] & 0x1)

/*  
 *  The reload register is a copy of the timer load register. The difference is that a
 *  write to this register does not trigger an immediate reload of the timer value
 *  register. Instead the timer load register value is only accessed if the value
 *  register has finished counting down to zero.
 */

#define TIMER_RELOAD			(0x18 / 4)

#define TIMER_RELOAD_SET(t) \
	do { \
		TIMER_BASE[TIMER_RELOAD] = t; \
	} while (0)

/*  
 *  The pre-divider register is 10 bits wide and can be written or read from. This
 *  register has been added as the SP804 expects a 1MHz clock which we do not have.
 *  Instead the pre-divider takes the APB clock and divides it down according to:
 *		timer_clock = apb_clock/(pre_divider+1)
 *  The reset value of this register is 0x7D so gives a divide by 126.
 */

#define TIMER_PRE_DIVIDER		(0x1c / 4)

#define TIMER_PRE_DIVIDER_SET(d) \
	do { \
		TIMER_BASE[TIMER_PRE_DIVIDER] = 0x3ff & (d); \
	} while (0)

/*  
 *  The free running counter is not present in the SP804.
 *  The free running counter is a 32 bits wide read only register. The register is
 *  enabled by setting bit 9 of the Timer control register. The free running counter is
 *  incremented immediately after it is enabled. The timer can not be reset but when
 *  enabled, will always increment and roll-over. The free running counter is also
 *  running from the APB clock and has its own clock pre-divider controlled by bits 16-23
 *  of the timer control register.
 *  This register will be halted too if bit 8 of the control register is set and the ARM
 *  is in Debug Halt mode.
 */

#define TIMER_FRC				(0x20 / 4)

#define TIMER_FRC_GET()			(TIMER_BASE[TIMER_FRC])

#endif

