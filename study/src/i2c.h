#ifndef I2C_H
#define I2C_H

// The BSC controller has eight memory-mapped registers. All accesses are assumed to be
// 32-bit. Note that the BSC2 master is used dedicated with the HDMI interface and should
// not be accessed by user programs.
#define BSC0		((volatile unsigned int *)0x3f205000)
#define BSC1		((volatile unsigned int *)0x3f804000)
#define BSC2		((volatile unsigned int *)0x3f805000)

// The control register is used to enable interrupts, clear the FIFO, define a read or
// write operation and start a transfer. 
// The READ field specifies the type of transfer.
// The CLEAR field is used to clear the FIFO. Writing to this field is a one-shot
// operation which will always read back as zero. The CLEAR bit can set at the same time
// as the start transfer bit, and will result in the FIFO being cleared just prior to the
// start of transfer. Note that clearing the FIFO during a transfer will result in the
// transfer being aborted.
// The ST field starts a new BSC transfer. This has a one shot action, and so the bit will
// always read back as 0.
// The INTD field enables interrupts at the end of a transfer the DONE condition. The
// interrupt remains active until the DONE condition is cleared by writing a 1 to the
// I2CS.DONE field. Writing a 0 to the INTD field disables interrupts on DONE.
// The INTT field enables interrupts whenever the FIFO is or more empty and needs writing
// (i.e. during a write transfer) - the TXW condition. The interrupt remains active until
// the TXW condition is cleared by writing sufficient data to the FIFO to complete the
// transfer. Writing a 0 to the INTT field disables interrupts on TXW.
// The INTR field enables interrupts whenever the FIFO is or more full and needs reading
// (i.e. during a read transfer) - the RXR condition. The interrupt remains active until
// the RXW condition is cleared by reading sufficient data from the RX FIFO. Writing a 0
// to the INTR field disables interrupts on RXR.
// The I2CEN field enables BSC operations. If this bit is 0 then transfers will not be
// performed. All register accesses are still permitted however.
#define I2C_C		(0x0 / 4)
#define I2C_C_I2CEN	15
#define I2C_C_ST	7
#define I2C_C_CLEAR	4
#define I2C_C_READ	0

#define I2C1_WE() \
	do { \
		BSC1[I2C_C] = 0x00008000; \
	} while (0)

#define I2C1_START() \
	do { \
		BSC1[I2C_C] |= 1 << I2C_C_ST; \
	} while (0)

#define I2C1_CLEAR() \
	do { \
		BSC1[I2C_C] |= 0x11 << I2C_C_CLEAR; \
	} while (0)

// The status register is used to record activity status, errors and interrupt requests.
// The TA field indicates the activity status of the BSC controller. This read-only field
// returns a 1 when the controller is in the middle of a transfer and a 0 when idle.
// The DONE field is set when the transfer completes. The DONE condition can be used
// with I2CC.INTD to generate an interrupt on transfer completion. The DONE field is
// reset by writing a 1 , writing a 0 to the field has no effect.
// The read-only TXW bit is set during a write transfer and the FIFO is less than full and
// needs writing. Writing sufficient data (i.e. enough data to either fill the FIFO more
// than full or complete the transfer) to the FIFO will clear the field. When the I2CC.
// INTT control bit is set, the TXW condition can be used to generate an interrupt to
// write more data to the FIFO to complete the current transfer. If the I2C controller
// runs out of data to send, it will wait for more data to be written into the FIFO.
// The read-only RXR field is set during a read transfer and the FIFO is or more full and
// needs reading. Reading sufficient data to bring the depth below will clear the field.
// When I2CC.INTR control bit is set, the RXR condition can be used to generate an
// interrupt to read data from the FIFO before it becomes full. In the event that the FIFO
// does become full, all I2C operations will stall until data is removed from the FIFO.
// The read-only TXD field is set when the FIFO has space for at least one byte of data.
// TXD is clear when the FIFO is full. The TXD field can be used to check that the FIFO
// can accept data before any is written. Any writes to a full TX FIFO will be ignored.
// The read-only RXD field is set when the FIFO contains at least one byte of data. RXD
// is cleared when the FIFO becomes empty. The RXD field can be used to check that
// the FIFO contains data before reading. Reading from an empty FIFO will return invalid
// data.
// The read-only TXE field is set when the FIFO is empty. No further data will be
// transmitted until more data is written to the FIFO.
// The read-only RXF field is set when the FIFO is full. No more clocks will be generated
// until space is available in the FIFO to receive more data.
// The ERR field is set when the slave fails to acknowledge either its address or a data
// byte written to it. The ERR field is reset by writing a 1 , writing a 0 to the field
// has no effect.
// The CLKT field is set when the slave holds the SCL signal high for too long (clock
// stretching). The CLKT field is reset by writing a 1 , writing a 0 to the field has no
// effect.
#define I2C_S		(0x4 / 4)
#define I2C_S_CLKT	9
#define I2C_S_ERR	8
#define I2C_S_RXF	7
#define I2C_S_TXE	6
#define I2C_S_RXD	5
#define I2C_S_TXD	4
#define I2C_S_RXR	3
#define I2C_S_TXW	2
#define I2C_S_DONE	1
#define I2C_S_TA	0

#define I2C1_TA()	(1 << I2C_S_TA & BSC1[I2C_S])

#define I2C1_DONE()	(1 << I2C_S_DONE & BSC1[I2C_S])

#define I2C1_ERR()	(1 << I2C_S_ERR & BSC1[I2C_S])

#define I2C1_TXD()	(1 << I2C_S_TXD & BSC1[I2C_S])

// The data length register defines the number of bytes of data to transmit or receive in
// the I2C transfer. Reading the register gives the number of bytes remaining in the
// current transfer.
// The DLEN field specifies the number of bytes to be transmitted/received. Reading the
// DLEN field when a transfer is in progress (TA = 1) returns the number of bytes still to
// be transmitted or received. Reading the DLEN field when the transfer has just completed
// (DONE = 1) returns zero as there are no more bytes to transmit or receive.
// Finally, reading the DLEN field when TA = 0 and DONE = 0 returns the last value
// written. The DLEN field can be left over multiple transfers.
#define I2C_DLEN	(0x8 / 4)
#define I2C_DLEN_DLEN	0

#define I2C1_SET_DLEN(len) \
	do { \
		BSC1[I2C_DLEN] = (len) << I2C_DLEN_DLEN; \
	} while (0)

#define I2C1_GET_DLEN()		(BSC1[I2C_DLEN] & 0x0000ffff)

// The slave address register specifies the slave address and cycle type. The address
// register can be left across multiple transfers
// The ADDR field specifies the slave address of the I2C device.
#define I2C_A		(0xc / 4)
#define I2C_A_ADDR	0

#define I2C1_SET_ADDR(addr) \
	do { \
		BSC1[I2C_A] = addr << I2C_A_ADDR; \
	} while (0)

// The Data FIFO register is used to access the FIFO. Write cycles to this address place
// data in the 16-byte FIFO, ready to transmit on the BSC bus. Read cycles access data
// received from the bus.
// Data writes to a full FIFO will be ignored and data reads from an empty FIFO will
// result in invalid data. The FIFO can be cleared using the I2CC.CLEAR field.
// The DATA field specifies the data to be transmitted or received.
#define I2C_FIFO	(0x10 / 4)
#define I2C_FIFO_DATA	0

#define I2C1_WRITE(c) \
	do { \
		BSC1[I2C_FIFO] = (unsigned )(c << I2C_FIFO_DATA); \
	} while (0)

// Clock Divider
// SCL = core_clk / CDIV
// Where core_clk is nominally 150 MHz. If CDIV is set to 0, the divisor is 32768.
// CDIV is always rounded down to an even number. The default value should result
// in a 100 kHz I2C clock frequency.
#define I2C_DIV		(0x14 / 4)
#define I2C_DIV_CDIV	0

#define I2C1_SET_DIV(ratio) \
	do { \
		BSC1[I2C_DIV] = ratio << I2C_DIV_CDIV; \
	} while (0)

// The data delay register provides fine control over the sampling/launch point of the
// data.
// The REDL field specifies the number core clocks to wait after the rising edge before
// sampling the incoming data.
// The FEDL field specifies the number core clocks to wait after the falling edge before
// outputting the next data bit.
// Note: Care must be taken in choosing values for FEDL and REDL as it is possible to
// cause the BSC master to malfunction by setting values of CDIV/2 or greater. Therefore
// the delay values should always be set to less than CDIV/2.
#define I2C_DEL		(0x18 / 4)
#define I2C_DEL_FEDL	16
#define I2C_DEL_REDL	0

#define I2C1_SET_FEDL(fedl) \
	do { \
		BSC1[I2C_DEL] = fedl << I2C_DEL_FEDL; \
	} while (0)

#define I2C1_SET_REDL(redl) \
	do { \
		BSC1[I2C_DEL] = redl << I2C_DEL_REDL; \
	} while (0)

// The clock stretch timeout register provides a timeout on how long the master waits for
// the slave to stretch the clock before deciding that the slave has hung.
// The TOUT field specifies the number I2C SCL clocks to wait after releasing SCL high
// and finding that the SCL is still low before deciding that the slave is not
// responding and moving the I2C machine forward. When a timeout occurs, the I2CS.CLKT bit
// is set. Writing 0x0 to TOUT will result in the Clock Stretch Timeout being disabled.
#define I2C_CLKT	(0x1c / 4)
#define I2C_CLKT_TOUT	0

#define I2C1_SET_TOUT(t) \
	do { \
		BSC1[I2C_CLKT] = t << I2C_CLKT_TOUT; \
	} while (0)


void i2c_write_init(void);


#endif

