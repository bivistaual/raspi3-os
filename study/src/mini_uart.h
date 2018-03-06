/*
 * The mini UART is a secondary low throughput4 UART intended to be used as a
 * console.needs to be enabled before it can be used. It is also recommended that
 * the correct GPIO function mode is selected before enabling the mini Uart.
 * 
 * The mini Uart has the following features:
 *		7 or 8 bit operation.
 *		1 start and 1 stop bit.
 *		No parities.
 *		Break generation.
 *		8 symbols deep FIFOs for receive and transmit.
 *		SW controlled RTS, SW readable CTS.
 *		Auto flow control with programmable FIFO level.
 *		16550 like registers.
 *		Baudrate derived from system clock.
 * 
 * This is a mini UART and it does NOT have the following capabilities:
 *		Break detection
 *		Framing errors detection.
 *		Parity bit
 *		Receive Time-out interrupt
 *		DCD, DSR, DTR or RI signals.
 * 
 * The implemented UART is not a 16650 compatible UART However as far as possible
 * the first 8 control and status registers are laid out like a 16550 UART. All
 * 16550 register bits which are not supported can be written but will be ignored
 * and read back as 0. All control bits for simple UART receive/transmit
 * operations are available.
 *
 *
 * The UART1_CTS and UART1_RX inputs are synchronised and will take 2 system clock
 * cycles before they are processed.
 *
 * The module does not check for any framing errors. After receiving a start bit
 * and 8 (or 7) data bits the receiver waits for one half bit time and then
 * starts scanning for the next start bit. The mini UART does not check if the
 * stop bit is high or wait for the stop bit to appear. As a result of this a
 * UART1_RX input line which is continuously low (a break condition or an error
 * in connection or GPIO setup) causes the receiver to continuously receive 0x00
 * symbols.
 *
 * The mini UART uses 8-times oversampling. The Baudrate can be calculated from:
 *		baudrate = system_clock_freq / (8 * (baudrate_reg + 1))
 * 
 * If the system clock is 250 MHz and the baud register is zero the baudrate is
 * 31.25 Mega baud. (25 Mbits/sec or 3.125 Mbytes/sec). The lowest baudrate with a
 * 250 MHz system clock is 476 Baud.
 *
 * When writing to the data register only the LS 8 bits are taken. All other bits
 * are ignored. 
 * When reading from the data register only the LS 8 bits are valid. All other bits
 * are zero.
 */

#ifndef _MINI_UART_H
#define _MINI_UART_H

#include "system_timer.h"

/*
 * The AUX_MU_IO_REG register is primary used to write data to and read data from
 * the UART FIFOs.
 * If the DLAB bit in the line control register is set this register gives access
 * to the LS 8 bits of the baud rate. (Note: there is easier access to the baud
 * rate register)
 */

#define AUX_MU_IO_REG				((volatile unsigned int *)0x3f215040)

#define MU_BAUD_LS8_GET()			((unsigned char)(*AUX_MU_IO_REG))

#define MU_BAUD_LS8_SET(baud_ls8)												\
	do {																		\
		*AUX_MU_IO_REG = (baud_ls8);											\
	} while (0)

#define MU_DATA_READ()				((char)(*AUX_MU_IO_REG))

#define MU_DATA_WRITE(byte)														\
	do {																		\
		*AUX_MU_IO_REG = (byte);												\
	} while (0)

/*
 * The AUX_MU_IER_REG register is primary used to enable interrupts.
 * If the DLAB bit in the line control register is set this register gives access
 * to the MS 8 bits of the baud rate. (Note: there is easier access to the baud
 * rate register)
 */

#define AUX_MU_IER_REG				((volatile unsigned int *)0x3f215044)
#define AUX_MU_IER_REG_RX_IRQ		0x00000002
#define AUX_MU_IER_REG_TX_IRQ		0x00000001

#define MU_BAUD_MS8_GET()			((unsigned char)(*AUX_MU_IER_REG))

#define MU_BAUD_MS8_SET(baud_ms8)												\
	do {																		\
		*AUX_MU_IER_REG = (baud_ms8);											\
	} while (0)

#define MU_RX_IRQ_EN()															\
	do {																		\
		*AUX_MU_IER_REG |= AUX_MU_IER_REG_RX_IRQ;								\
	} while (0)

#define MU_RX_IRQ_DIS()															\
	do {																		\
		*AUX_MU_IER_REG &= ~AUX_MU_IER_REG_RX_IRQ;								\
	} while (0)

#define MU_TX_IRQ_EN()															\
	do {																		\
		*AUX_MU_IER_REG |= AUX_MU_IER_REG_TX_IRQ;								\
	} while (0)

#define MU_TX_IRQ_DIS()															\
	do {																		\
		*AUX_MU_IER_REG &= ~AUX_MU_IER_REG_TX_IRQ;								\
	} while (0)

/*
 * The AUX_MU_IIR_REG register shows the interrupt status.
 * It also has two FIFO enable status bits and (when writing) FIFO clear bits.
 */

#define AUX_MU_IIR_REG					((volatile unsigned int *)0x3f215048)
#define AUX_MU_IIR_REG_NO_IRQ			0x00000000
#define AUX_MU_IIR_REG_TX_FIFO_EMPTY	0x00000002
#define AUX_MU_IIR_REG_RX_FIFO_CLR		0x00000002
#define AUX_MU_IIR_REG_RX_FIFO_VALID	0x00000004
#define AUX_MU_IIR_REG_TX_FIFO_CLR		0x00000004
#define AUX_MU_IIR_REG_IRQ_PENDING		0x00000000

#define MU_NO_IRQ()				(*AUX_MU_IIR_REG & AUX_MU_IIR_REG_NO_IRQ)

#define MU_TX_REG_EMPTY()		(*AUX_MU_IIR_REG & AUX_MU_IIR_REG_TX_FIFO_EMPTY)

#define MU_RX_VALID_BYTE()		(*AUX_MU_IIR_REG & AUX_MU_IIR_REG_RX_FIFO_VALID)

#define MU_TX_FIFO_CLR()														\
	do {																		\
		*AUX_MU_IIR_REG |= AUX_MU_IIR_REG_TX_FIFO_CLR;							\
	} while (0)

#define MU_RX_FIFO_CLR()														\
	do {																		\
		*AUX_MU_IIR_REG |= AUX_MU_IIR_REG_RX_FIFO_CLR;							\
	} while (0)

#define MU_IRQ_PENDING()		(*AUX_MU_IIR_REG & AUX_MU_IIR_REG_IRQ_PENDING)

/*
 * The AUX_MU_LCR_REG register controls the line data format and gives access to
 * the baudrate register.
 */

#define AUX_MU_LCR_REG				((volatile unsigned int *)0x3f21504c)
#define AUX_MU_LCR_REG_DLAB_EN		0x00000080
#define AUX_MU_LCR_REG_BREAK		0x00000040
#define AUX_MU_LCR_REG_8BIT			0x00000003

#define MU_DLAB_EN()															\
	do {																		\
		*AUX_MU_LCR_REG |= AUX_MU_LCR_REG_DLAB_ACC;								\
	} while (0)

#define MU_DLAB_DIS()															\
	do {																		\
		*AUX_MU_LCR_REG &= ~AUX_MU_LCR_REG_DLAB_EN;								\
	} while (0)

#define MU_BREAK()																\
	do {																		\
		*AUX_MU_LCR_REG |= AUX_MU_LCR_REG_BREAK;								\
		spin_sleep_um(100);														\
	} while (0)

#define MU_CONTINUE()															\
	do {																		\
		*AUX_MU_LCR_REG &= ~AUX_MU_LCR_REG_BREAK;								\
	} while (0)

#define MU_SET_8BIT()															\
	do {																		\
		*AUX_MU_LCR_REG |= AUX_MU_LCR_REG_8BIT;									\
	} while (0)

#define MU_SET_7BIT()															\
	do {																		\
		*AUX_MU_LCR_REG &= ~AUX_MU_LCR_REG_8BIT;								\
	} while (0)

/*
 * The AUX_MU_MCR_REG register controls the 'modem' signals.
 */

#define AUX_MU_MCR_REG				((volatile unsigned int *)0x3f215050)
#define AUX_MU_MCR_REG_RTS_HIGH		0x00000002

#define MU_RTS_PULL_HIGH()														\
	do {																		\
		*AUX_MU_MCR_REG |= AUX_MU_MCR_REG_RTS_HIGH;								\
	} while (0)

#define MU_RTS_PULL_LOW()														\
	do {																		\
		*AUX_MU_MCR_REG &= ~AUX_MU_MCR_REG_RTS_HIGH;							\
	} while (0)

/*
 * The AUX_MU_LSR_REG register shows the data status.
 */

#define AUX_MU_LSR_REG				((volatile unsigned int *)0x3f215054)
#define AUX_MU_LSR_REG_TX_IDLE		0x00000040
#define AUX_MU_LSR_REG_TX_EMPTY		0x00000020
#define AUX_MU_LSR_REG_RX_OVERRUN	0x00000002
#define AUX_MU_LSR_REG_DATA_READY	0x00000001

#define MU_TX_IDLE()			(*AUX_MU_LSR_REG & AUX_MU_LSR_REG_TX_IDLE)

#define MU_TX_FIFO_EMPTY()		(*AUX_MU_LSR_REG & AUX_MU_LSR_REG_TX_EMPTY)

#define MU_RX_OVERRUN()			(*AUX_MU_LSR_REG & AUX_MU_LSR_REG_RX_OVERRUN)

#define MU_RX_FIFO_EMPTY()		(!(*AUX_MU_LSR_REG & AUX_MU_LSR_REG_DATA_READY))

/*
 * The AUX_MU_MSR_REG register shows the 'modem' status.
 */

#define AUX_MU_MSR_REG			((volatile unsigned int *)0x3f215058)
#define AUX_MU_MSR_REG_CTS		0x00000020

#define MU_CTS_LOW()			(*AUX_MU_MSR_REG & AUX_MU_MSR_REG_CTS)

/*
 * The AUX_MU_SCRATCH is a single byte storage.
 */

#define AUX_MU_SCRATCH			((volatile unsigned int *)0x3f21505c)

#define MU_SCRATCH_GET()		((unsigned char)(*AUX_MU_SCRATCH))

#define MU_SCRATCH_SET(scratch)													\
	do {																		\
		*AUX_MU_SCRATCH = scratch;												\
	} while (0)

/*
 * The AUX_MU_CNTL_REG provides access to some extra useful and nice features not
 * found on a normal 16550 UART .
 */

#define AUX_MU_CNTL_REG				((volatile unsigned int *)0x3f215060)
#define AUX_MU_CNTL_REG_CTS_ASS		0x00000080
#define AUX_MU_CNTL_REG_RTS_ASS		0x00000040

#define MU_CTS_ASS_LOW()			(*AUX_MU_CNTL_REG & AUX_MU_CNTL_REG_CTS_ASS)

#define MU_CTS_ASS_PULL_LOW()													\
	do {																		\
		*AUX_MU_CNTL_REG |= AUX_MU_CNTL_REG_CTS_ASS;							\
	} while (0)

#define MU_CTS_ASS_PULL_HIGH()													\
	do {																		\
		*AUX_MU_CNTL_REG &= ~AUX_MU_CNTL_REG_CTS_ASS;							\
	} while (0)

#define MU_RTS_ASS_LOW()			(*AUX_MU_CNTL_REG & AUX_MU_CNTL_REG_RTS_ASS)

#define MU_RTS_ASS_PULL_LOW()													\
	do {																		\
		*AUX_MU_CNTL_REG |= AUX_MU_CNTL_REG_RTS_ASS;							\
	} while (0)

#define MU_RTS_ASS_PULL_HIGH()													\
	do {																		\
		*AUX_MU_CNTL_REG &= ~AUX_MU_CNTL_REG_RTS_ASS;							\
	} while (0)

/*
 * Receiver enable
 * If this bit is set no new symbols will be accepted by the receiver. Any symbols
 * in progress of reception will be finished.
 */

#define AUX_MU_CNTL_REG_RX_EN	0x00000001

#define MU_RX_EN()																\
	do {																		\
		*AUX_MU_CNTL_REG |= AUX_MU_CNTL_REG_RX_EN;								\
	} while (0)

#define MU_RX_DIS()																\
	do {																		\
		*AUX_MU_CNTL_REG &= ~AUX_MU_CNTL_REG_RX_EN;								\
	} while (0)

/*
 * Transmitter enable
 * If this bit is set no new symbols will be send the transmitter. Any symbols in
 * progress of transmission will be finished.
 */

#define AUX_MU_CNTL_REG_TX_EN	0x00000002

#define MU_TX_EN()																\
	do {																		\
		*AUX_MU_CNTL_REG |= AUX_MU_CNTL_REG_TX_EN;								\
	} while (0)

#define MU_TX_DIS()																\
	do {																		\
		*AUX_MU_CNTL_REG &= ~AUX_MU_CNTL_REG_TX_EN;								\
	} while (0)

/*
 * Auto flow control
 * Automatic flow control can be enabled independent for the receiver and the
 * transmitter. 
 * CTS auto flow control impacts the transmitter only. The transmitter will not
 * send out new ymbols when the CTS line is de-asserted. Any symbols in progress
 * of transmission when the CTS line becomes de-asserted will be finished.
 * RTS auto flow control impacts the receiver only. In fact the name RTS for the
 * control line is incorrect and should be RTR (Ready to Receive). The receiver
 * will de-asserted the RTS (RTR) line when its receive FIFO has a number of empty
 * spaces left. Normally 3 empty spaces should be enough.
 * If looping back a mini UART using full auto flow control the logic is fast
 * enough to allow the RTS auto flow level of '10' (De-assert RTS when the receive
 * FIFO has 1 empty space left).
 * Auto flow polarity
 * To offer full flexibility the polarity of the CTS and RTS (RTR) lines can be
 * programmed. This should allow the mini UART to interface with any existing
 * hardware flow control available.
 */

#define AUX_MU_CNTL_REG_RTS_AUTO_FLOW_3			0x00000000
#define AUX_MU_CNTL_REG_RTS_AUTO_FLOW_2			0X00000010
#define AUX_MU_CNTL_REG_RTS_AUTO_FLOW_1			0x00000020
#define AUX_MU_CNTL_REG_RTS_AUTO_FLOW_4			0x00000030
#define AUX_MU_CNTL_REG_TX_AUTO_FLOW_CRTL_EN	0x00000008
#define AUX_MU_CNTL_REG_RX_AUTO_FLOW_CRTL_EN	0x00000004

#define MU_RTS_AUTO_FLOW_SET(level)												\
	do {																		\
		*AUX_MU_CNTL_REG = *AUX_MU_CNTL_REG & ~0x00000030 | level;				\
	} while (0)

#define MU_TX_AUTO_FLOW_CRTL_EN()												\
	do {																		\
		*AUX_MU_CNTL_REG |= AUX_MU_CNTL_REG_TX_AUTO_FLOW_CRTL_EN;				\
	} while (0)

#define MU_TX_AUTO_FLOW_CRTL_DIS()												\
	do {																		\
		*AUX_MU_CNTL_REG &= ~AUX_MU_CNTL_REG_TX_AUTO_FLOW_CRTL_EN;				\
	} while (0)

#define MU_RX_AUTO_FLOW_CRTL_EN()												\
	do {																		\
		*AUX_MU_CNTL_REG |= AUX_MU_CNTL_REG_RX_AUTO_FLOW_CRTL_EN;				\
	} while (0)

#define MU_RX_AUTO_FLOW_CRTL_DIS()												\
	do {																		\
		*AUX_MU_CNTL_REG &= ~AUX_MU_CNTL_REG_RX_AUTO_FLOW_CRTL_EN;				\
	} while (0)

/*
 * The AUX_MU_STAT_REG provides a lot of useful information about the internal
 * status of the mini UART not found on a normal 16550 UART.
 */

#define AUX_MU_STAT_REG					((volatile unsigned int *)0x3f215064)
#define AUX_MU_STAT_REG_TX_FIFO_LEN_F	24
#define AUX_MU_STAT_REG_RX_FIFO_LEN_F	16
#define AUX_MU_STAT_REG_TX_DONE			0x00000200
#define AUX_MU_STAT_REG_TX_FIFO_EMPTY	0x00000100
#define AUX_MU_STAT_REG_CTS_STAT		0x00000080
#define AUX_MU_STAT_REG_RTS_STAT		0x00000040
#define AUX_MU_STAT_REG_TX_FIFO_FULL	0x00000020
#define AUX_MU_STAT_REG_RX_OVERRUN		0x00000010
#define AUX_MU_STAT_REG_TX_IDEL			0x00000008
#define AUX_MU_STAT_REG_RX_IDEL			0x00000004
#define AUX_MU_STAT_REG_TX_FIFO_AVA		0x00000002
#define AUX_MU_STAT_REG_RX_FIFO_AVA		0x00000001

#define MU_TX_FIFO_LEN()														\
	(*AUX_MU_STAT_REG >> AUX_MU_STAT_REG_TX_FIFO_LEN_F | 0xf)

#define MU_RX_FIFO_LEN()														\
	(*AUX_MU_STAT_REG >> AUX_MU_STAT_REG_RX_FIFO_LEN_F | 0xf)

#define MU_TX_DONE()			(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_TX_DONE)

#define MU_TX_FIFO_EMPTY2()		(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_TX_FIFO_EMPTY)

#define MU_CTS_HIGH()			(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_CTS_STAT)

/*
 * RTS status
 * This bit is useful only in receive Auto flow-control mode as it shows the
 * status of the RTS line.
 */

#define MU_RTS_HIGH()			(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_RTS_STAT)

#define MU_TX_FIFO_FULL()		(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_TX_FIFO_FULL)

#define MU_RX_OVERRUN2()		(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_RX_OVERRUN)

/*
 * Transmitter is idle
 * This bit tells if the transmitter is idle. Note that the bit will set only for
 * a short time if the transmit FIFO contains data. Normally you want to use bit
 * 9: Transmitter done.
 */

#define MU_TX_IDLE2()			(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_TX_IDEL)

/*
 * Receiver is idle
 * This bit is only useful if the receiver is disabled. The normal use is to
 * disable the receiver. Then check (or wait) until the bit is set. Now you can
 * be sure that no new symbols will arrive. (e.g. now you can change the
 * baudrate...)
 */

#define MU_RX_IDLE()			(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_RX_IDEL)

#define MU_TX_FIFO_AVA()		(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_TX_FIFO_AVA)

#define	MU_RX_FIFO_AVA()		(*AUX_MU_STAT_REG & AUX_MU_STAT_REG_RX_FIFO_AVA)

/*
 * The AUX_MU_BAUD register allows direct access to the 16-bit wide baudrate
 * counter. This is the same register as is accessed using the LABD bit and the
 * first two register, but much easier to access.
 */

#define AUX_MU_BAUD_REG		((volatile unsigned int *)0x3f215068)

#define MU_BAUD_GET()		(*AUX_MU_BAUD_REG & 0xffff)

#define MU_BAUD_SET(baud)														\
	do {																		\
		*AUX_MU_BAUD_REG = (baud) & 0xffff;										\
	} while (0)


/*
 * Initialize the mini uart and enable reveiver and transmiter immediately.
 *		Baud rate : 115200
 *		Data size : 8bit
 */

void mu_init(void);

/*
 * Write byte to transmiter FIFO. Blocking until FIFO is empty.
 */

void mu_write_byte(const char);

/*
 * Non-blocking write byte to FIFO. Return 0 when FIFO is full and 1 otherwise.
 */

int mu_write_fifo(const char);

/*
 * Write string to FIFO. Simply wrapping of mu_write_byte().
 */

void mu_write_str(const char *);

/*
 * Return byte from receiver FIFO. Blocking until FIFO holds at least one byte.
 */

char mu_read_byte(void);

/*
 * Non-blocking read byte from FIFO. Return 0 if FIFO is empty and 1 otherwise.
 */

int mu_read_fifo(unsigned char *);

#endif

