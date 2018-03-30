#ifndef _INTERRUPT_H
#define _INTERRUPT_H

#include <stdint.h>
#include <stdbool.h>

#include "exception.h"

#define IRQ_BASE_ADDR	0x3f00b200

typedef enum {
	timer1 = 1,
	timer3 = 3,
	gpio0 = 49,
	gpio1 = 50,
	gpio2 = 51,
	gpio3 = 52,
	uart = 57
}	irq_class;

typedef struct {
	uint32_t	irq_basic_pending;
	uint32_t	irq_pending_1;
	uint32_t	irq_pending_2;
	uint32_t	fiq_control;
	uint32_t	irq_enable_1;
	uint32_t	irq_enable_2;
	uint32_t	irq_basic_enable;
	uint32_t	irq_disable_1;
	uint32_t	irq_disable_2;
	uint32_t	irq_basic_disable;
}	interrupt_contorler_t;

void handle_irq(irq_class, trap_frame *tp);

#define irq_controler ((volatile interrupt_contorler_t *)IRQ_BASE_ADDR)

#define irq_is_pending(irq)														\
	((irq) <= 31 ?																\
	 ((1 << (irq)) & irq_controler->irq_pending_1) :							\
	 (1 << (irq - 32) & irq_controler->irq_pending_2))

static inline void irq_enable(irq_class irq)
{
	if (irq <= 31)
		irq_controler->irq_enable_1 |= 1 << irq;
	else
		irq_controler->irq_enable_2 |= 1 << (irq - 32);
}

static inline void irq_disable(irq_class irq)
{
	if (irq <= 31)
		irq_controler->irq_disable_1 &= ~(1 << irq);
	else
		irq_controler->irq_disable_2 &= ~(1 << (irq - 32));
}

#endif
