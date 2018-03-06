#ifndef _AUX_H
#define _AUX_H

#define AUXENB		((volatile unsigned int *)0x3f215004)
#define AUXENB_MU	0x00000001

#define MU_EN()																	\
	do {																		\
		*AUXENB |= AUXENB_MU;													\
	} while (0)

#define MU_DIS()																\
	do {																		\
		*AUXENB &= ~AUXENB_MU;													\
	} while (0)

#endif

