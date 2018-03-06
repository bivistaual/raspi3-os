#ifndef GPIO_H
#define GPIO_H

// clock manager general purpose clocks control
#define CM_GP0CTL	((volatile unsigned int *)0x3f101070)
#define CM_GP1CTL	((volatile unsigned int *)0x3f101078)
#define CM_GP2CTL	((volatile unsigned int *)0x3f101080)

// clock manager general purpose clock divisors
#define CM_GP0DIV	((volatile unsigned int *)0x3f101074)
#define CM_GP1DIV	((volatile unsigned int *)0x3f10107C)
#define CM_GP2DIV	((volatile unsigned int *)0x3f101084)

// clock source (0Hz	19.2MHz	1000MHz	500MHz	216MHz)
#define GND			0x0
#define OSCILLATOR	0x1
#define PLLC		0x5
#define PLLD		0x6
#define HDMI_AUX	0x7

// GPIO base address
#define GPIO_BASE	((volatile unsigned int *)0x3f200000)

// GPIO register bias
#define GPSET		(0x1c / 4)
#define GPCLR		(0x28 / 4)
#define GPLEV		(0x34 / 4)

#define GPCLR0		((volatile unsigned int *)0x3f200028)
#define GPPUD       ((volatile unsigned int *)0x3f200094)
#define GPPUDCLK0   ((volatile unsigned int *)0x3f200098)

// GPIO alternative function
#define GPIO_INPUT	0x0
#define GPIO_OUTPUT	0x1
#define GPIO_FUNC0	0x4
#define GPIO_FUNC1	0x5
#define GPIO_FUNC2	0x6
#define GPIO_FUNC3	0x7
#define GPIO_FUNC4	0x3
#define GPIO_FUNC5	0x2

#define GPIO_FSEL(n, GPIO_FUNC) \
	do { \
		GPIO_BASE[(n) / 10] = (GPIO_BASE[(n) / 10] & ~(0x7 << ((n) % 10) * 3)) | (GPIO_FUNC) << ((n) % 10) * 3; \
	} while (0)

/*
#define GPIO_INPUT(n) \
	do { \
		GPIO_BASE[(n) / 10] &= ~(0x7 << ((n) % 10) * 3); \
	} while (0)

#define GPIO_OUTPUT(n) \
	do { \
		GPIO_BASE[(n) / 10] = GPIO_BASE[(n) / 10] & ~(0x7 << ((n) % 10) * 3) | 0x1 << ((n) % 10) * 3; \
	} while (0);
*/

#define GPIO_SET(n) \
	do { \
		GPIO_BASE[GPSET + ((n) > 31)] |= 0x1 << ((n) > 31 ? (n) - 32 : (n)); \
		GPIO_BASE[GPCLR + ((n) > 31)] &= ~(0x1 << ((n) > 31 ? (n) - 32 : (n))); \
	} while (0)

#define GPIO_CLR(n) \
	do { \
		GPIO_BASE[GPCLR + ((n) > 31)] |= 0x1 << ((n) > 31 ? (n) - 32 : (n)); \
		GPIO_BASE[GPSET + ((n) > 31)] &= ~(0x1 << ((n) > 31 ? (n) - 32 : (n))); \
	} while (0)

#define GPIO_ISH(n)	(GPIO_BASE[GPLEV + ((n) > 31)] & 0x1 << ((n) > 31 ? (n) - 32 : (n)))
#define GPIO_ISL(n)	(!GPIO_ISH(n))

#define GPIO_CLK0_BUSY()	(CM_GP0CTL & 0x1 << 7)
#define GPIO_CLK1_BUSY()	(CM_GP1CTL & 0x1 << 7)
#define GPIO_CLK2_BUSY()	(CM_GP2CTL & 0x1 << 7)

#define GPIO_CLK0_ENABLE(MASH, flip, src) \
	do { \
		*CM_GP0CTL = 0x5a << 24 | (MASH) << 9 | (flip) << 8 | 0x1 << 4 | (src); \
	} while (0)

#define GPIO_CLK1_ENABLE(MASH, flip, src) \
	do { \
		*CM_GP1CTL = 0x5a << 24 | (MASH) << 9 | (flip) << 8 | 0x1 << 4 | (src); \
	} while (0)

#define GPIO_CLK2_ENABLE(MASH, flip, src) \
	do { \
		*CM_GP2CTL = 0x5a << 24 | (MASH) << 9 | (flip) << 8 | 0x1 << 4 | (src); \
	} while (0)

#define GPIO_CLK0_DIV(DIVI, DIVF) \
	do { \
		*CM_GP0DIV = 0x5a << 24 | (DIVI) << 12 | (DIVF); \
	} while (0)

#define GPIO_CLK1_DIV(DIVI, DIVF) \
	do { \
		*CM_GP1DIV = 0x5a << 24 | (DIVI) << 12 | (DIVF); \
	} while (0)

#define GPIO_CLK2_DIV(DIVI, DIVF) \
	do { \
		*CM_GP2DIV = 0x5a << 24 | (DIVI) << 12 | (DIVF); \
	} while (0)

#endif

