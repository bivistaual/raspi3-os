.globl _start
_start:
	ldr x1, =_start
    mov sp, x1
    mov w0,pc
    bl notmain
hang: b hang

.globl PUT32
PUT32:
    str w1,[w0]
    bx lr

.globl GET32
GET32:
    ldr w0,[w0]
    bx lr

.globl dummy
dummy:
    bx lr
