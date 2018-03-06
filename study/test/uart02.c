#include "mini_uart.h"
#include "../aux.h"

void PUT32 (volatile unsigned int *, unsigned int);
unsigned int GET32 (volatile unsigned int *);
void dummy ( unsigned int );

#define GPFSEL1 ((volatile unsigned int *)0x3f200004)
#define GPSET0  ((volatile unsigned int *)0x3f20001C)
#define GPCLR0  ((volatile unsigned int *)0x3f200028)
#define GPPUD       ((volatile unsigned int *)0x3f200094)
#define GPPUDCLK0   ((volatile unsigned int *)0x3f200098)

/*
#define AUX_ENABLES     ((volatile unsigned int *)0x3f215004)
#define AUX_MU_IO_REG   ((volatile unsigned int *)0x3f215040)
#define AUX_MU_IER_REG  ((volatile unsigned int *)0x3f215044)
#define AUX_MU_IIR_REG  ((volatile unsigned int *)0x3f215048)
#define AUX_MU_LCR_REG  ((volatile unsigned int *)0x3f21504C)
#define AUX_MU_MCR_REG  ((volatile unsigned int *)0x3f215050)
#define AUX_MU_LSR_REG  ((volatile unsigned int *)0x3f215054)
#define AUX_MU_MSR_REG  ((volatile unsigned int *)0x3f215058)
#define AUX_MU_SCRATCH  ((volatile unsigned int *)0x3f21505C)
#define AUX_MU_CNTL_REG ((volatile unsigned int *)0x3f215060)
#define AUX_MU_STAT_REG ((volatile unsigned int *)0x3f215064)
#define AUX_MU_BAUD_REG ((volatile unsigned int *)0x3f215068)
*/

void PUT32(volatile unsigned int * addr, unsigned int d)
{
	*addr = d;
}

unsigned int GET32(volatile unsigned int * addr)
{
	return *addr;
}

int notmain(void)
{
    unsigned int ra;

    PUT32(AUXENB,1);
    PUT32(AUX_MU_LCR_REG,3);
    PUT32(AUX_MU_IIR_REG,0xC6);
//    PUT32(AUX_MU_BAUD_REG,270);
	MU_BAUD_SET(270);

    ra=GET32(GPFSEL1);
    ra&=~(7<<12); //gpio14
    ra|=2<<12;    //alt5
    ra&=~(7<<15); //gpio15
    ra|=2<<15;    //alt5
    PUT32(GPFSEL1,ra);

	PUT32(AUX_MU_CNTL_REG,3);

    while(1)
    {
//        while(1)
//        {
//            if(GET32(AUX_MU_LSR_REG)&0x01) break;
//        }
//        ra=GET32(AUX_MU_IO_REG);
//        uart_putc(ra);
//		uart_putc('-');
//		uart_putc('>');
		ra = mu_read_byte();
		mu_write_byte(ra);
		mu_write_byte('-');
		mu_write_byte('>');
    }

    return(0);
}
