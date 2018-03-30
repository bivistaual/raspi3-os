#define EL0 0b00
#define EL1 0b01
#define EL2 0b10
#define EL3 0b11

.section .text.init

.global _start
_start:
    // read cpu affinity, start core 0, halt rest
    mrs     x1, MPIDR_EL1
    and     x1, x1, #3
    cbz     x1, setup

halt:
    // core affinity != 0, halt it
    wfe
    b       halt

setup:
    // store the desired EL1 stack pointer in x1
    adr     x1, _start

    // read the current exception level into x0 (ref: C5.2.1)
    mrs     x0, CurrentEL
    and     x0, x0, #0b1100
    lsr     x0, x0, #2

switch_to_el2:
    // switch to EL2 if we're in EL3. otherwise switch to EL1
    cmp     x0, EL3
    bne     switch_to_el1
    
    // so now, switch to EL2

    // 1. set-up SCR_EL3 (bits 0, 4, 5, 7, 8, 10) (A53: 4.3.42)
    // 	set the next lower level to AArch64,
    // 	enable the HVC instruction at EL1, EL2 or EL3,
    // 	disable the SMC instruction at all exception level,
    // 	set EL0 and EL1 to Non-secure state which means memory,
    // 	accesses from those exception levels cannot access secure memory
    mov     x2, #0x5b1
    msr     SCR_EL3, x2

    // 2. set-up SPSR and PL switch! (bits 0, 3, 6, 7, 8, 9) (ref: C5.2.20)
    //	mask watchpoint, Breakpoint, and Software Step exceptions targeted
    //	at the current Exception level，SError irq, IRQ FIQ,
    //	set the exception level to return to,
    //	make sp linked to ELx
    mov     x2, #0x3c9
    msr     SPSR_EL3, x2
    adr     x2, switch_to_el1
    msr     ELR_EL3, x2
    eret

switch_to_el1:
    // switch to EL1 if we're not already in EL1. otherwise continue with start
    cmp     x0, EL1
    beq     set_stack
    
    // so now, switch to EL1

    // set the stack-pointer for EL1
    msr     SP_EL1, x1

    // enable CNTP for EL1/EL0 (ref: D7.5.2, D7.5.13)
    // NOTE: This doesn't actually enable the counter stream.
    // set no traping
    mrs     x0, CNTHCTL_EL2
    orr     x0, x0, #0b11
    msr     CNTHCTL_EL2, x0
    msr     CNTVOFF_EL2, xzr

    // enable AArch64 in EL1 (A53: 4.3.36)
    mov     x0, #(1 << 31)      // Enable AArch64 for EL1
    orr     x0, x0, #(1 << 1)   // RES1 on A-53
    msr     HCR_EL2, x0
    mrs     x0, HCR_EL2		// for what?

    // enable floating point and SVE (SIMD) (A53: 4.3.38, 4.3.34)
    msr     CPTR_EL2, xzr     // don't trap accessing SVE registers
    mrs     x0, CPACR_EL1
    orr     x0, x0, #(0b11 << 20)
    msr     CPACR_EL1, x0

    // Set SCTLR to known state (RES1: 11, 20, 22, 23, 28, 29) (A53: 4.3.30)
    mov     x2, #0x0800
    movk    x2, #0x30d0, lsl #16
    msr     SCTLR_EL1, x2

    // set up exception handlers
    // load `_vectors` addr into appropriate register (guide: 10.4)
	adr		x2, _vectors
	msr		VBAR_EL1, x2

    // change execution level to EL1 (ref: C5.2.19)
    mov     x2, #0x3c5
    msr     SPSR_EL2, x2
    
    // return to EL1 at `set_stack`.
    adr     x2, set_stack
    msr     ELR_EL2, x2
    eret

set_stack:
    // set the current stack pointer
    mov     sp, x1

zero_bss:
    // load the start address and number of bytes in BSS section
    ldr     x1, =__bss_start
    ldr     x2, =__bss_length

zero_bss_loop:
    // zero out the BSS section, 64-bits at a time
    cbz     x2, go_kmain
    str     xzr, [x1], #8
    sub     x2, x2, #8
    cbnz    x2, zero_bss_loop

go_kmain:
    // jump to kmain, which shouldn't return. halt if it does
    bl      kmain
    b       halt

context_save:
    // Save the remaining context to the stack.
	sub		sp, sp, #0xf0
	stp		x1, x2, [sp]
	stp		x3, x4, [sp, #0x10]
	stp		x5, x6, [sp, #0x20]
	stp		x7, x8, [sp, #0x30]
	stp		x9, x10, [sp, #0x40]
	stp		x11, x12, [sp, #0x50]
	stp		x13, x14, [sp, #0x60]
	stp		x15, x16, [sp, #0x70]
	stp		x17, x18, [sp, #0x80]
	stp		x19, x20, [sp, #0x90]
	stp		x21, x22, [sp, #0xa0]
	stp		x23, x24, [sp, #0xb0]
	stp		x25, x26, [sp, #0xc0]
	stp		x27, x28, [sp, #0xd0]
	str		x29, [sp, #0xe0]
	sub		sp, sp, #0x100
	stp		q16, q17, [sp]
	stp		q18, q19, [sp, #0x20]
	stp		q20, q21, [sp, #0x40]
	stp		q22, q23, [sp, #0x60]
	stp		q24, q25, [sp, #0x80]
	stp		q26, q27, [sp, #0xa0]
	stp		q28, q29, [sp, #0xc0]
	stp		q30, q31, [sp, #0xe0]
	sub		sp, sp, #0x100
	stp		q0, q1, [sp]
	stp		q2, q3, [sp, #0x20]
	stp		q4, q5, [sp, #0x40]
	stp		q6, q7, [sp, #0x60]
	stp		q8, q9, [sp, #0x80]
	stp		q10, q11, [sp, #0xa0]
	stp		q12, q13, [sp, #0xc0]
	stp		q14, q15, [sp, #0xe0]
	mrs		x1, ELR_EL1
	mrs		x2, SPSR_EL1
	stp		x1, x2, [sp, #-32]!
	mrs		x1, SP_EL0
	mrs		x2, TPIDR_EL0
	stp		x1, x2, [sp, #16]
	mrs		x1, ESR_EL1
	mov		x2, sp
	str		x30, [sp, #-16]!
	bl		handle_exception
	ldr		x30, [sp], #16

.global context_restore
context_restore:
    // Restore the context from the stack.
	ldp		x1, x2, [sp], #32
	msr		ELR_EL1, x1
	msr		SPSR_EL1, x2
	ldp		x1, x2, [sp, #-16]
	msr		SP_EL0, x1
	msr		TPIDR_EL0, x2
	ldp		q0, q1, [sp]
	ldp		q2, q3, [sp, #0x20]
	ldp		q4, q5, [sp, #0x40]
	ldp		q6, q7, [sp, #0x60]
	ldp		q8, q9, [sp, #0x80]
	ldp		q10, q11, [sp, #0xa0]
	ldp		q12, q13, [sp, #0xc0]
	ldp		q14, q15, [sp, #0xe0]
	add		sp, sp, #0x100
	ldp		q16, q17, [sp]
	ldp		q18, q19, [sp, #0x20]
	ldp		q20, q21, [sp, #0x40]
	ldp		q22, q23, [sp, #0x60]
	ldp		q24, q25, [sp, #0x80]
	ldp		q26, q27, [sp, #0xa0]
	ldp		q28, q29, [sp, #0xc0]
	ldp		q30, q31, [sp, #0xe0]
	add		sp, sp, #0x100
	ldp		x1, x2, [sp]
	ldp		x3, x4, [sp, #0x10]
	ldp		x5, x6, [sp, #0x20]
	ldp		x7, x8, [sp, #0x30]
	ldp		x9, x10, [sp, #0x40]
	ldp		x11, x12, [sp, #0x50]
	ldp		x13, x14, [sp, #0x60]
	ldp		x15, x16, [sp, #0x70]
	ldp		x17, x18, [sp, #0x80]
	ldp		x19, x20, [sp, #0x90]
	ldp		x21, x22, [sp, #0xa0]
	ldp		x23, x24, [sp, #0xb0]
	ldp		x25, x26, [sp, #0xc0]
	ldp		x27, x28, [sp, #0xd0]
	ldr		x29, [sp, #0xe0]
	add		sp, sp, #0xf0
	ret
	
#define HANDLER(source, kind)													\
    .align 7;																	\
    stp     x30, x0, [sp, #-16]!;												\
    mov     x0, ##source;														\
    movk    x0, ##kind, LSL #16;												\
    bl      context_save;														\
    ldp     x30, x0, [sp], #16;													\
    eret

.align 11
_vectors:
    // Setup the 16 exception vectors.
	HANDLER(#0, #0);
	HANDLER(#0, #1);
	HANDLER(#0, #2);
	HANDLER(#0, #3);
	HANDLER(#1, #0);
	HANDLER(#1, #1);
	HANDLER(#1, #2);
	HANDLER(#1, #3);
	HANDLER(#2, #0);
	HANDLER(#2, #1);
	HANDLER(#2, #2);
	HANDLER(#2, #3);
	HANDLER(#3, #0);
	HANDLER(#3, #1);
	HANDLER(#3, #2);
	HANDLER(#3, #3);
