#ifndef _IRQ_H
#define _IRQ_H

#define IRQ_BASE				((volatile unsigned int *)(0x3f00b000 + 0x200))

/*  
 *  The basic pending register shows which interrupt are pending. To speed up
 *  interrupts processing, a number of 'normal' interrupt status bits have been
 *  added to this register. This makes the 'IRQ pending base' register different
 *  from the other 'base' interrupt registers.
 */

#define IRQ_PEND_BASE			(0x0 / 4)

/*  
 *  GPU IRQ x (10,11..20)
 *  These bits are direct interrupts from the GPU. They have been selected as
 *  interrupts which are most likely to be useful to the ARM. The GPU interrupt
 *  selected are 7, 9, 10, 18, 19, 53,54,55,56,57,62. For details see the GPU
 *  interrupts table.
 */

#define IRQ_PEND_BASE_GPU62()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 20)
#define IRQ_PEND_BASE_GPU57()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 19)
#define IRQ_PEND_BASE_GPU56()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 18)
#define IRQ_PEND_BASE_GPU55()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 17)
#define IRQ_PEND_BASE_GPU54()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 16)
#define IRQ_PEND_BASE_GPU53()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 15)
#define IRQ_PEND_BASE_GPU19()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 14)
#define IRQ_PEND_BASE_GPU18()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 13)
#define IRQ_PEND_BASE_GPU10()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 12)
#define IRQ_PEND_BASE_GPU9()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 11)
#define IRQ_PEND_BASE_GPU7()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 10)

/*  
 *  Bits set in pending registers (8,9)
 *  These bits indicates if there are bits set in the pending 1/2 registers. The
 *  pending 1/2 registers hold ALL interrupts 0..63 from the GPU side. Some of
 *  these 64 interrupts are also connected to the basic pending register. Any bit
 *  set in pending register 1/2 which is NOT connected to the basic pending
 *  register causes bit 8 or 9 to set. Status bits 8 and 9 should be seen as "There
 *  are some interrupts pending which you don't know about. They are in pending
 *  register 1 /2."
 */

#define IRQ_PEND_BASE_PREG2()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 9)
#define IRQ_PEND_BASE_PREG1()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 8)

/*  
 *  Illegal access type-0 IRQ (7)
 *  This bit indicate that the address/access error line from the ARM processor has
 *  generated an interrupt. That signal is asserted when either an address bit 31
 *  or 30 was high or when an access was seen on the ARM Peripheral bus. The status
 *  of that signal can be read from Error/HALT status register bit 2.
 */

#define IRQ_PEND_BASE_ILL0()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 7)

/*  
 *  Illegal access type-1 IRQ (6)
 *  This bit indicates that an address/access error is seen in the ARM control has
 *  generated an interrupt. That can either be an address bit 29..26 was high or
 *  when a burst access was seen on the GPU Peripheral bus. The status of that
 *  signal can be read from Error/HALT status register bits 0 and 1.
 */

#define IRQ_PEND_BASE_ILL1()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 6)

/*
 *  GPU-1 halted IRQ (5)
 *  This bit indicate that the GPU-1 halted status bit has generated an interrupt.
 *  The status of that signal can be read from Error/HALT status register bits 4.
 */

#define IRQ_PEND_BASE_GPU1_HALTED()	(IRQ_BASE[IRQ_PEND_BASE] & 1 << 5)

/*  
 *  GPU-0 (or any GPU) halted IRQ (4)
 *  This bit indicate that the GPU-0 halted status bit has generated an interrupt.
 *  The status of that signal can be read from Error/HALT status register bits 3.
 *  In order to allow a fast interrupt (FIQ) routine to cope with GPU 0 OR GPU-1
 *  there is a bit in control register 1 which, if set will also route a GPU-1
 *  halted status on this bit.
 */

#define IRQ_PEND_BASE_GPU0_HALTED()	(IRQ_BASE[IRQ_PEND_BASE] & 1 << 4)

/*  
 *  Standard peripheral IRQs (0,1,2,3)
 *  These bits indicate if an interrupt is pending for one of the ARM control
 *  peripherals.
 */

#define IRQ_PEND_BASE_DOORBELL1()	(IRQ_BASE[IRQ_PEND_BASE] & 1 << 3)
#define IRQ_PEND_BASE_DOORBELL0()	(IRQ_BASE[IRQ_PEND_BASE] & 1 << 2)
#define IRQ_PEND_BASE_MAILBOX()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 1)
#define IRQ_PEND_BASE_TIMER()		(IRQ_BASE[IRQ_PEND_BASE] & 1 << 0)

/*  
 *  GPU pending 1 register holds ALL interrupts 0..31 from the GPU side. Some of
 *  these interrupts are also connected to the basic pending register. Any
 *  interrupt status bit in here which is NOT connected to the basic pending will
 *  also cause bit 8 of the basic pending register to be set. That is all bits
 *  except 7, 9, 10, 18, 19.
 *  GPU pending 2 register holds ALL interrupts 32..63 from the GPU side. Some of 
 *  these interrupts are also connected to the basic pending register. Any
 *  interrupt status bit in here which is NOT connected to the basic pending will
 *  also cause bit 9 of the basic pending register to be set. That is all bits
 *  except register bits 21..25, 30 (Interrupts 53..57,62).
 */

#define IRQ_GPU_PENDING(n)	(IRQ_BASE[1 + ((n) > 31)] & \
							1 << ((n) > 31 ? (n) - 32 : (n)))

/*  
 *  FIQ register.
 *  The FIQ register control which interrupt source can generate a FIQ to the ARM.
 *  Only a single interrupt can be selected.
 */

#define IRQ_FIQ				(0xc / 4)

#define IRQ_FIQ_ENABLE		(0x80)
#define IRQ_FIQ_DISABLE		(0x00)

#define IRQ_FIQ_TIMER		64
#define IRQ_FIQ_MAILBOX		65
#define IRQ_FIQ_DOORBELL0	66
#define IRQ_FIQ_DOORBELL1	67
#define IRQ_FIQ_GPU0_HALTED	68
#define IRQ_FIQ_GPU1_HALTED	69
#define IRQ_FIQ_ILL1		70
#define IRQ_FIQ_ILL2		71

#define IRQ_FIQ_SET(r) \
	do { \
		IRQ_BASE[IRQ_FIQ] = r; \
	} while (0)

/*  
 *  Interrupt enable register
 *  Writing a 1 to a bit will set the corresponding IRQ enable bit. All other IRQ
 *  enable bits are unaffected. Only bits which are enabled can be seen in the
 *  interrupt pending registers. There is no provision here to see if there are
 *  interrupts which are pending but not enabled.
 */

#define IRQ_ENABLE_REG1			(0x10 / 4)
#define IRQ_BASE_ENABLE_REG		(0x18 / 4)

#define IRQ_ENABLE(n) \
	do { \
		IRQ_BASE[IRQ_ENABLE_REG1 + ((n) > 31)] |= 1 << ((n) > 31 ? (n) - 32 : (n)); \
	} while (0)

#define IRQ_ACCESS_ERR0_EN		0x80
#define IRQ_ACCESS_ERR1_EN		0x40
#define IRQ_GPU1_HALTED_EN		0x20
#define IRQ_GPU0_HALTED_EN		0x10
#define IRQ_DOORBELL1_EN		0x08
#define IRQ_DOORBELL0_EN		0x04
#define IRQ_MAILBOX_EN			0x02
#define IRQ_TIMER_EN			0x01

#define IRQ_BASE_ENABLE(B) \
	do { \
		IRQ_BASE[IRQ_BASE_ENABLE_REG] |= B; \
	} while (0)

/*  
 *  Writing a 1 to a bit will clear the corresponding IRQ enable bit. All other IRQ
 *  enable bits are unaffected.
 */

#define IRQ_DISABLE_REG1		(0x1c / 4)
#define IRQ_BASE_DISABLE_REG	(0x24 / 4)

#define IRQ_DISABLE(n) \
	do { \
		IRQ_BASE[IRQ_DISABLE_REG1 + ((n) > 31)] &= ~(1 << ((n) > 31 ? (n) - 32 : (n))); \
	} while (0)

#define IRQ_BASE_DISABLE(B) \
	do { \
		IRQ_BASE[IRQ_BASE_DISABLE_REG] &= ~B; \
	} while (0)

#endif

