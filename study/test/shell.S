
bin/shell.elf：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000004000000 <_start>:
 4000000:	d53800a1 	mrs	x1, mpidr_el1
 4000004:	92400421 	and	x1, x1, #0x3
 4000008:	b4000061 	cbz	x1, 4000014 <_start+0x14>
 400000c:	d503205f 	wfe
 4000010:	17ffffff 	b	400000c <_start+0xc>
 4000014:	580000a1 	ldr	x1, 4000028 <_start+0x28>
 4000018:	9100003f 	mov	sp, x1
 400001c:	94000043 	bl	4000128 <_cstartup>
 4000020:	9400003e 	bl	4000118 <kernel_main>
 4000024:	17fffffa 	b	400000c <_start+0xc>
 4000028:	04000000 	.word	0x04000000
 400002c:	00000000 	.word	0x00000000

0000000004000030 <current_time>:
 4000030:	d2860102 	mov	x2, #0x3008                	// #12296
 4000034:	d2860083 	mov	x3, #0x3004                	// #12292
 4000038:	f2a7e002 	movk	x2, #0x3f00, lsl #16
 400003c:	f2a7e003 	movk	x3, #0x3f00, lsl #16
 4000040:	b9400041 	ldr	w1, [x2]
 4000044:	b9400064 	ldr	w4, [x3]
 4000048:	b9400042 	ldr	w2, [x2]
 400004c:	2a0103e0 	mov	w0, w1
 4000050:	6b02003f 	cmp	w1, w2
 4000054:	540000c0 	b.eq	400006c <current_time+0x3c>  // b.none
 4000058:	b9400061 	ldr	w1, [x3]
 400005c:	91000400 	add	x0, x0, #0x1
 4000060:	2a0103e1 	mov	w1, w1
 4000064:	8b008020 	add	x0, x1, x0, lsl #32
 4000068:	d65f03c0 	ret
 400006c:	2a0403e4 	mov	w4, w4
 4000070:	8b008080 	add	x0, x4, x0, lsl #32
 4000074:	d65f03c0 	ret

0000000004000078 <spin_sleep_us>:
 4000078:	d2860103 	mov	x3, #0x3008                	// #12296
 400007c:	d2860084 	mov	x4, #0x3004                	// #12292
 4000080:	f2a7e003 	movk	x3, #0x3f00, lsl #16
 4000084:	f2a7e004 	movk	x4, #0x3f00, lsl #16
 4000088:	b9400061 	ldr	w1, [x3]
 400008c:	b9400085 	ldr	w5, [x4]
 4000090:	b9400063 	ldr	w3, [x3]
 4000094:	2a0103e2 	mov	w2, w1
 4000098:	6b03003f 	cmp	w1, w3
 400009c:	54000340 	b.eq	4000104 <spin_sleep_us+0x8c>  // b.none
 40000a0:	b9400081 	ldr	w1, [x4]
 40000a4:	91000442 	add	x2, x2, #0x1
 40000a8:	2a0103e1 	mov	w1, w1
 40000ac:	8b028022 	add	x2, x1, x2, lsl #32
 40000b0:	d2860104 	mov	x4, #0x3008                	// #12296
 40000b4:	d2860086 	mov	x6, #0x3004                	// #12292
 40000b8:	f2a7e004 	movk	x4, #0x3f00, lsl #16
 40000bc:	f2a7e006 	movk	x6, #0x3f00, lsl #16
 40000c0:	b9400083 	ldr	w3, [x4]
 40000c4:	b94000c7 	ldr	w7, [x6]
 40000c8:	b9400081 	ldr	w1, [x4]
 40000cc:	2a0303e5 	mov	w5, w3
 40000d0:	6b01007f 	cmp	w3, w1
 40000d4:	910004a1 	add	x1, x5, #0x1
 40000d8:	54000100 	b.eq	40000f8 <spin_sleep_us+0x80>  // b.none
 40000dc:	b94000c3 	ldr	w3, [x6]
 40000e0:	2a0303e3 	mov	w3, w3
 40000e4:	8b018061 	add	x1, x3, x1, lsl #32
 40000e8:	cb020021 	sub	x1, x1, x2
 40000ec:	eb00003f 	cmp	x1, x0
 40000f0:	54fffe89 	b.ls	40000c0 <spin_sleep_us+0x48>  // b.plast
 40000f4:	d65f03c0 	ret
 40000f8:	2a0703e1 	mov	w1, w7
 40000fc:	8b058021 	add	x1, x1, x5, lsl #32
 4000100:	17fffffa 	b	40000e8 <spin_sleep_us+0x70>
 4000104:	2a0503e5 	mov	w5, w5
 4000108:	8b0280a2 	add	x2, x5, x2, lsl #32
 400010c:	17ffffe9 	b	40000b0 <spin_sleep_us+0x38>

0000000004000110 <wait_micros>:
 4000110:	2a0003e0 	mov	w0, w0
 4000114:	17ffffd9 	b	4000078 <spin_sleep_us>

0000000004000118 <kernel_main>:
 4000118:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 400011c:	910003fd 	mov	x29, sp
 4000120:	94000178 	bl	4000700 <sd_init>
 4000124:	14000000 	b	4000124 <kernel_main+0xc>

0000000004000128 <_cstartup>:
 4000128:	90000000 	adrp	x0, 4000000 <_start>
 400012c:	f9456803 	ldr	x3, [x0, #2768]
 4000130:	f9456402 	ldr	x2, [x0, #2760]
 4000134:	eb02007f 	cmp	x3, x2
 4000138:	54000182 	b.cs	4000168 <_cstartup+0x40>  // b.hs, b.nlast
 400013c:	91002060 	add	x0, x3, #0x8
 4000140:	91001c41 	add	x1, x2, #0x7
 4000144:	cb000021 	sub	x1, x1, x0
 4000148:	91004063 	add	x3, x3, #0x10
 400014c:	927df021 	and	x1, x1, #0xfffffffffffffff8
 4000150:	8b030021 	add	x1, x1, x3
 4000154:	d503201f 	nop
 4000158:	f81f801f 	stur	xzr, [x0, #-8]
 400015c:	91002000 	add	x0, x0, #0x8
 4000160:	eb01001f 	cmp	x0, x1
 4000164:	54ffffa1 	b.ne	4000158 <_cstartup+0x30>  // b.any
 4000168:	d65f03c0 	ret
 
 
 
 
 400016c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 4000170:	910003fd 	mov	x29, sp
 4000174:	a90153f3 	stp	x19, x20, [sp, #16]
 4000178:	2a0003f4 	mov	w20, w0
 400017c:	a9025bf5 	stp	x21, x22, [sp, #32]
 4000180:	52942413 	mov	w19, #0xa120                	// #41248
 4000184:	72a000f3 	movk	w19, #0x7, lsl #16
 4000188:	d2800495 	mov	x21, #0x24                  	// #36
 400018c:	f2a7e615 	movk	x21, #0x3f30, lsl #16
 4000190:	d2800616 	mov	x22, #0x30                  	// #48
 4000194:	f2a7e616 	movk	x22, #0x3f30, lsl #16
 4000198:	f9001bf7 	str	x23, [sp, #48]
 400019c:	52900017 	mov	w23, #0x8000                	// #32768
 40001a0:	72a02fd7 	movk	w23, #0x17e, lsl #16
 40001a4:	b94002a0 	ldr	w0, [x21]
 40001a8:	6a14001f 	tst	w0, w20
 40001ac:	54000180 	b.eq	40001dc <_cstartup+0xb4>  // b.none
 40001b0:	b94002c0 	ldr	w0, [x22]
 40001b4:	6a17001f 	tst	w0, w23
 40001b8:	54000121 	b.ne	40001dc <_cstartup+0xb4>  // b.any
 40001bc:	51000673 	sub	w19, w19, #0x1
 40001c0:	3100067f 	cmn	w19, #0x1
 40001c4:	54000061 	b.ne	40001d0 <_cstartup+0xa8>  // b.any
 40001c8:	12800020 	mov	w0, #0xfffffffe            	// #-2
 40001cc:	1400000d 	b	4000200 <_cstartup+0xd8>
 40001d0:	52800020 	mov	w0, #0x1                   	// #1
 40001d4:	97ffffcf 	bl	4000110 <wait_micros>
 40001d8:	17fffff3 	b	40001a4 <_cstartup+0x7c>
 40001dc:	34ffff73 	cbz	w19, 40001c8 <_cstartup+0xa0>
 40001e0:	d2800600 	mov	x0, #0x30                  	// #48
 40001e4:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40001e8:	b9400001 	ldr	w1, [x0]
 40001ec:	52900000 	mov	w0, #0x8000                	// #32768
 40001f0:	72a02fc0 	movk	w0, #0x17e, lsl #16
 40001f4:	6a00003f 	tst	w1, w0
 40001f8:	12800020 	mov	w0, #0xfffffffe            	// #-2
 40001fc:	1a9f1000 	csel	w0, w0, wzr, ne  // ne = any
 4000200:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000204:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4000208:	f9401bf7 	ldr	x23, [sp, #48]
 400020c:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4000210:	d65f03c0 	ret
 
 
 
 
 4000214:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 4000218:	910003fd 	mov	x29, sp
 400021c:	a90153f3 	stp	x19, x20, [sp, #16]
 4000220:	52884813 	mov	w19, #0x4240                	// #16960
 4000224:	72a001f3 	movk	w19, #0xf, lsl #16
 4000228:	a9025bf5 	stp	x21, x22, [sp, #32]
 400022c:	52900015 	mov	w21, #0x8000                	// #32768
 4000230:	72a02fd5 	movk	w21, #0x17e, lsl #16
 4000234:	2a150015 	orr	w21, w0, w21
 4000238:	f9001bf7 	str	x23, [sp, #48]
 400023c:	2a0003f6 	mov	w22, w0
 4000240:	d2800617 	mov	x23, #0x30                  	// #48
 4000244:	f2a7e617 	movk	x23, #0x3f30, lsl #16
 4000248:	aa1703f4 	mov	x20, x23
 400024c:	b94002e0 	ldr	w0, [x23]
 4000250:	6a15001f 	tst	w0, w21
 4000254:	54000081 	b.ne	4000264 <_cstartup+0x13c>  // b.any
 4000258:	51000673 	sub	w19, w19, #0x1
 400025c:	3100067f 	cmn	w19, #0x1
 4000260:	54000201 	b.ne	40002a0 <_cstartup+0x178>  // b.any
 4000264:	b9400280 	ldr	w0, [x20]
 4000268:	7100027f 	cmp	w19, #0x0
 400026c:	5400008d 	b.le	400027c <_cstartup+0x154>
 4000270:	52a00221 	mov	w1, #0x110000              	// #1114112
 4000274:	6a01001f 	tst	w0, w1
 4000278:	540001a0 	b.eq	40002ac <_cstartup+0x184>  // b.none
 400027c:	d2800601 	mov	x1, #0x30                  	// #48
 4000280:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 4000284:	b9000020 	str	w0, [x1]
 4000288:	12800000 	mov	w0, #0xffffffff            	// #-1
 400028c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000290:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4000294:	f9401bf7 	ldr	x23, [sp, #48]
 4000298:	a8c47bfd 	ldp	x29, x30, [sp], #64
 400029c:	d65f03c0 	ret
 40002a0:	52800020 	mov	w0, #0x1                   	// #1
 40002a4:	97ffff9b 	bl	4000110 <wait_micros>
 40002a8:	17ffffe9 	b	400024c <_cstartup+0x124>
 40002ac:	52900001 	mov	w1, #0x8000                	// #32768
 40002b0:	72a02fc1 	movk	w1, #0x17e, lsl #16
 40002b4:	6a01001f 	tst	w0, w1
 40002b8:	54000080 	b.eq	40002c8 <_cstartup+0x1a0>  // b.none
 40002bc:	b9000280 	str	w0, [x20]
 40002c0:	12800020 	mov	w0, #0xfffffffe            	// #-2
 40002c4:	17fffff2 	b	400028c <_cstartup+0x164>
 40002c8:	52800000 	mov	w0, #0x0                   	// #0
 40002cc:	b9000296 	str	w22, [x20]
 40002d0:	17ffffef 	b	400028c <_cstartup+0x164>
 
 
 
 
 40002d4:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!				// push
 40002d8:	910003fd 	mov	x29, sp						// x29 = sp
 40002dc:	a9025bf5 	stp	x21, x22, [sp, #32]				// push
 40002e0:	90000015 	adrp	x21, 4000000 <_start>				// x21 = 0x4000000
 40002e4:	a90153f3 	stp	x19, x20, [sp, #16]				// push
 40002e8:	2a0103f6 	mov	w22, w1						// w22 = w1			input parameter
 40002ec:	f90592bf 	str	xzr, [x21, #2848]				// *(x21 + 0xb20) = 0
 40002f0:	2a0003f3 	mov	w19, w0						// w19 = w0			input parameter
 40002f4:	f9001bf7 	str	x23, [sp, #48]					// push
 40002f8:	aa1503f4 	mov	x20, x21					// x20 = x21
 40002fc:	36f80260 	tbz	w0, #31, 4000348 <_cstartup+0x220>		// if w0[31] != 0
												// goto 0x4000348
 4000300:	90000017 	adrp	x23, 4000000 <_start>				// x23 = 0x4000000
 4000304:	f94582e1 	ldr	x1, [x23, #2816]				// x1 = *(x23 + 0xb00)
 4000308:	52a6e042 	mov	w2, #0x37020000            	// #922877952	// w2 = 0x37020000
 400030c:	52a6e000 	mov	w0, #0x37000000            	// #922746880	// w0 = 0x37000000
 4000310:	f100003f 	cmp	x1, #0x0					// x1 - 0
 4000314:	1a801040 	csel	w0, w2, w0, ne  // ne = any			// w0 = (x1 != 0) ? w2 : w0
 
 
 
 
 4000318:	97ffffef 	bl	40002d4 <_cstartup+0x1ac>			// call 0x40002d4
 
 
 
 
 400031c:	f94582e1 	ldr	x1, [x23, #2816]
 4000320:	b4000121 	cbz	x1, 4000344 <_cstartup+0x21c>
 4000324:	35000100 	cbnz	w0, 4000344 <_cstartup+0x21c>
 4000328:	92800021 	mov	x1, #0xfffffffffffffffe    	// #-2
 400032c:	f90592a1 	str	x1, [x21, #2848]
 
 
 
 
 4000330:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000334:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4000338:	f9401bf7 	ldr	x23, [sp, #48]
 400033c:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4000340:	d65f03c0 	ret
 4000344:	12007a73 	and	w19, w19, #0x7fffffff
 
 
 
 
 4000348:	52800020 	mov	w0, #0x1                   	// #1
 400034c:	97ffff88 	bl	400016c <_cstartup+0x44>
 
 
 
 
 4000350:	340000a0 	cbz	w0, 4000364 <_cstartup+0x23c>
 4000354:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
 4000358:	f9059280 	str	x0, [x20, #2848]
 400035c:	52800000 	mov	w0, #0x0                   	// #0
 4000360:	17fffff4 	b	4000330 <_cstartup+0x208>
 4000364:	d2800600 	mov	x0, #0x30                  	// #48
 4000368:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 400036c:	b9400001 	ldr	w1, [x0]
 4000370:	b9000001 	str	w1, [x0]
 4000374:	d2800100 	mov	x0, #0x8                   	// #8
 4000378:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 400037c:	b9000016 	str	w22, [x0]
 4000380:	b9000413 	str	w19, [x0, #4]
 4000384:	52a6e000 	mov	w0, #0x37000000            	// #922746880
 4000388:	6b00027f 	cmp	w19, w0
 400038c:	52a10040 	mov	w0, #0x8020000             	// #134348800
 4000390:	1a9f17f5 	cset	w21, eq  // eq = none
 4000394:	6b00027f 	cmp	w19, w0
 4000398:	1a9f16a0 	csinc	w0, w21, wzr, ne  // ne = any
 400039c:	34000060 	cbz	w0, 40003a8 <_cstartup+0x280>
 40003a0:	52800c80 	mov	w0, #0x64                  	// #100
 40003a4:	97ffff5b 	bl	4000110 <wait_micros>
 40003a8:	52800020 	mov	w0, #0x1                   	// #1
 40003ac:	97ffff9a 	bl	4000214 <_cstartup+0xec>
 40003b0:	34000060 	cbz	w0, 40003bc <_cstartup+0x294>
 40003b4:	93407c00 	sxtw	x0, w0
 40003b8:	17ffffe8 	b	4000358 <_cstartup+0x230>
 40003bc:	d2800201 	mov	x1, #0x10                  	// #16
 40003c0:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 40003c4:	7100027f 	cmp	w19, #0x0
 40003c8:	b9400021 	ldr	w1, [x1]
 40003cc:	1a9f16b5 	csinc	w21, w21, wzr, ne  // ne = any
 40003d0:	35fffb15 	cbnz	w21, 4000330 <_cstartup+0x208>
 40003d4:	52a6e040 	mov	w0, #0x37020000            	// #922877952
 40003d8:	6b00027f 	cmp	w19, w0
 40003dc:	54000061 	b.ne	40003e8 <_cstartup+0x2c0>  // b.any
 40003e0:	121b0020 	and	w0, w1, #0x20
 40003e4:	17ffffd3 	b	4000330 <_cstartup+0x208>
 40003e8:	52a10040 	mov	w0, #0x8020000             	// #134348800
 40003ec:	6b00027f 	cmp	w19, w0
 40003f0:	540000a1 	b.ne	4000404 <_cstartup+0x2dc>  // b.any
 40003f4:	6b16003f 	cmp	w1, w22
 40003f8:	12800020 	mov	w0, #0xfffffffe            	// #-2
 40003fc:	1a8003e0 	csel	w0, wzr, w0, eq  // eq = none
 4000400:	17ffffcc 	b	4000330 <_cstartup+0x208>
 4000404:	52a04020 	mov	w0, #0x2010000             	// #33619968
 4000408:	6b00027f 	cmp	w19, w0
 400040c:	540001c1 	b.ne	4000444 <_cstartup+0x31c>  // b.any
 4000410:	d2800380 	mov	x0, #0x1c                  	// #28
 4000414:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4000418:	d2800282 	mov	x2, #0x14                  	// #20
 400041c:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 4000420:	b9400003 	ldr	w3, [x0]
 4000424:	d2800300 	mov	x0, #0x18                  	// #24
 4000428:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 400042c:	2a030021 	orr	w1, w1, w3
 4000430:	b9400000 	ldr	w0, [x0]
 4000434:	b9400042 	ldr	w2, [x2]
 4000438:	2a020000 	orr	w0, w0, w2
 400043c:	2a000020 	orr	w0, w1, w0
 4000440:	17ffffbc 	b	4000330 <_cstartup+0x208>
 4000444:	52a06040 	mov	w0, #0x3020000             	// #50462720
 4000448:	6b00027f 	cmp	w19, w0
 400044c:	540001a1 	b.ne	4000480 <_cstartup+0x358>  // b.any
 4000450:	53185c20 	lsl	w0, w1, #8
 4000454:	531a6422 	lsl	w2, w1, #6
 4000458:	120a0003 	and	w3, w0, #0x400000
 400045c:	120d0042 	and	w2, w2, #0x80000
 4000460:	2a030042 	orr	w2, w2, w3
 4000464:	12090003 	and	w3, w0, #0x800000
 4000468:	121e0020 	and	w0, w1, #0x4
 400046c:	2a030000 	orr	w0, w0, w3
 4000470:	2a020000 	orr	w0, w0, w2
 4000474:	f9059280 	str	x0, [x20, #2848]
 4000478:	12103c20 	and	w0, w1, #0xffff0000
 400047c:	17ffffad 	b	4000330 <_cstartup+0x208>
 4000480:	52980080 	mov	w0, #0xc004                	// #49156
 4000484:	72bfff20 	movk	w0, #0xfff9, lsl #16
 4000488:	0a000020 	and	w0, w1, w0
 400048c:	17ffffa9 	b	4000330 <_cstartup+0x208>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 4000490:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!				// push{x29, x30}
 4000494:	910003fd 	mov	x29, sp						// x29 = sp
 4000498:	a90153f3 	stp	x19, x20, [sp, #16]				// push{x19, x20}
 400049c:	52990d53 	mov	w19, #0xc86a                	// #51306
 40004a0:	72a04f73 	movk	w19, #0x27b, lsl #16				// w19 = 0x27bc86a = 41666666
 40004a4:	5290d414 	mov	w20, #0x86a0                	// #34464
 40004a8:	72a00034 	movk	w20, #0x1, lsl #16				// w20 = 100000
 40004ac:	1ac00a73 	udiv	w19, w19, w0					// w19 = w19 / (w0 = 400000) = 0x68 = 104
 40004b0:	f90013f5 	str	x21, [sp, #32]					// push{x21}
 40004b4:	d2800495 	mov	x21, #0x24                  	// #36
 40004b8:	f2a7e615 	movk	x21, #0x3f30, lsl #16				// x21 = 0x3f300024		Status reg
 
 
 
 
 // data and cmd line inhibit, cycle 100000 times to wait 1 microsecond until line usable or timeout
 //	timeout return -2
 40004bc:	b94002a0 	ldr	w0, [x21]					// w0 = *x21
 40004c0:	f240041f 	tst	x0, #0x3					// if !(x0 & 0011)		data and cmd is not inhibit
 40004c4:	54000180 	b.eq	40004f4 <_cstartup+0x3cc>  // b.none			// goto 0x40004f4
 40004c8:	51000694 	sub	w20, w20, #0x1					// w20--
 40004cc:	3100069f 	cmn	w20, #0x1					// if w20 != -1			from 100000 to 0
 40004d0:	540000c1 	b.ne	40004e8 <_cstartup+0x3c0>  // b.any			// goto 0x40004e8
 
 
 
 
 // return -2
 40004d4:	12800020 	mov	w0, #0xfffffffe            	// #-2		// w0 = -2
 40004d8:	a94153f3 	ldp	x19, x20, [sp, #16]				// pop
 40004dc:	f94013f5 	ldr	x21, [sp, #32]					// pop
 40004e0:	a8c37bfd 	ldp	x29, x30, [sp], #48				// pop
 40004e4:	d65f03c0 	ret							// return
 
 
 
 
 // wait 1 microsecond
 40004e8:	52800020 	mov	w0, #0x1                   	// #1
 40004ec:	97ffff09 	bl	4000110 <wait_micros>				// wait_micros(1)
 40004f0:	17fffff3 	b	40004bc <_cstartup+0x394>			// goto 0x40004bc
 
 
 
 
 40004f4:	34ffff14 	cbz	w20, 40004d4 <_cstartup+0x3ac>			// if w20 == 0
												// goto 40004d4		return ERROR
 40004f8:	d2800581 	mov	x1, #0x2c                  	// #44
 40004fc:	f2a7e601 	movk	x1, #0x3f30, lsl #16				// x1 = 0x3f30002c		control1 reg
 4000500:	b9400020 	ldr	w0, [x1]					// w0 = *x1
 4000504:	121d7800 	and	w0, w0, #0xfffffffb				// w0 &= ~ 0000 0000 0000 0000 0000 0000 0000 0100
 4000508:	b9000020 	str	w0, [x1]					// *x1 = w0			disable sd clk
 400050c:	52800140 	mov	w0, #0xa                   	// #10
 4000510:	97ffff00 	bl	4000110 <wait_micros>				// wait_micros(10)
 4000514:	71000660 	subs	w0, w19, #0x1					// w0 = w19 - 1			from 104 = 0x68 to 1
 4000518:	540001a0 	b.eq	400054c <_cstartup+0x424>  // b.none		// if w19 == 1 also w0 == 0
												// goto 0x400054c
 400051c:	53081c01 	lsl	w1, w0, #24					// w1 = w0 << 24
 4000520:	72040c3f 	tst	w1, #0xf0000000					// if w1 & 0xf0000000		w0[7:4] has set bits
 4000524:	54000521 	b.ne	40005c8 <_cstartup+0x4a0>  // b.any			// goto 0x40005c8 ~~~~~~~~~~~~~~~~
 4000528:	53040c01 	lsl	w1, w0, #28					// w1 = w0 << 28
 400052c:	52800080 	mov	w0, #0x4                   	// #4		// w0 = 4
 
 
 
 
 4000530:	7202043f 	tst	w1, #0xc0000000					// if w1 & 0xc0000000		w0[3:0] has set bits
 4000534:	54000061 	b.ne	4000540 <_cstartup+0x418>  // b.any			// goto 0x4000540
 4000538:	531e7421 	lsl	w1, w1, #2					// w1 = w1 << 2			w0[1:0] moved to MSB
 400053c:	51000800 	sub	w0, w0, #0x2					// w0 = w0 - 2			w0 = 2
 
 
 
 
 4000540:	2a2103e1 	mvn	w1, w1						// w1 = ~w1
 4000544:	4b417c00 	sub	w0, w0, w1, lsr #31				// w0 = w0 - (w1 >> 31)
 4000548:	51000400 	sub	w0, w0, #0x1					// w0--
 
 
 
 
 400054c:	90000001 	adrp	x1, 4000000 <_start>
 4000550:	f9458421 	ldr	x1, [x1, #2824]					// x1 = *0x4000b08
 4000554:	f100043f 	cmp	x1, #0x1					// if x1 > 1
 4000558:	54000068 	b.hi	4000564 <_cstartup+0x43c>  // b.pmore			// goto 0x4000564
 400055c:	52800033 	mov	w19, #0x1                   	// #1		// w19 = 1
 4000560:	1ac02273 	lsl	w19, w19, w0					// w19 = w19 << w0
 4000564:	d2800594 	mov	x20, #0x2c                  	// #44
 4000568:	f2a7e614 	movk	x20, #0x3f30, lsl #16				// x20 = 0x3f30002c		control1 reg
 400056c:	71000a7f 	cmp	w19, #0x2					// w19 - 2
 4000570:	52800041 	mov	w1, #0x2                   	// #2		// w1 = 2
 4000574:	b9400280 	ldr	w0, [x20]					// w0 = *x20
 4000578:	1a812273 	csel	w19, w19, w1, cs  // cs = hs, nlast		// w19 = w19 >= 2 ? w19 : 2
 400057c:	12105400 	and	w0, w0, #0xffff003f				// w0 &= ~ 0000 0000 0000 0000 1111 1111 1100 0000
 4000580:	2a132013 	orr	w19, w0, w19, lsl #8				// w19 = w0 | (w19 << 8)
 4000584:	b9000293 	str	w19, [x20]					// *x20 = w19			configure control1 reg
 4000588:	52800140 	mov	w0, #0xa                   	// #10		// w0 = 10
 400058c:	5284e213 	mov	w19, #0x2710                	// #10000	// w10 = 10000
 4000590:	97fffee0 	bl	4000110 <wait_micros>				// wait_micros(10)
 4000594:	b9400280 	ldr	w0, [x20]					// w0 = *x20
 4000598:	321e0000 	orr	w0, w0, #0x4					// w0 |= 0100			enable sd clk
 400059c:	b9000280 	str	w0, [x20]					// *x20 = w0
 40005a0:	52800140 	mov	w0, #0xa                   	// #10		
 40005a4:	97fffedb 	bl	4000110 <wait_micros>				// wait_micros(10)
 
 
 
 
// wait until sd clk is stable or timeout return -2
 40005a8:	b9400280 	ldr	w0, [x20]					// w0 = *x20
 40005ac:	37080120 	tbnz	w0, #1, 40005d0 <_cstartup+0x4a8>		// if w0[1] != 0		sd clk is stable
												// goto 0x4005d0
 40005b0:	51000673 	sub	w19, w19, #0x1					// w19--		
 40005b4:	3100067f 	cmn	w19, #0x1					// if w19 == -1
 40005b8:	54fff8e0 	b.eq	40004d4 <_cstartup+0x3ac>  // b.none			// goto 0x40004d4	return ERROR
 40005bc:	52800140 	mov	w0, #0xa                   	// #10
 40005c0:	97fffed4 	bl	4000110 <wait_micros>				// wait_micros(10)
 40005c4:	17fffff9 	b	40005a8 <_cstartup+0x480>			// goto 0x40005a8
 
 
 
 
 40005c8:	52800100 	mov	w0, #0x8                   	// #8
 40005cc:	17ffffd9 	b	4000530 <_cstartup+0x408>
 
 
 
 
 40005d0:	34fff833 	cbz	w19, 40004d4 <_cstartup+0x3ac>			// if w19 == 0
												// goto 0x40004d4	return ERROR
 40005d4:	52800000 	mov	w0, #0x0                   	// #0		// w0 = 0
 40005d8:	17ffffc0 	b	40004d8 <_cstartup+0x3b0>			// goto 0x40004d8		return SUCCESS
 
 
 
 
 
 
 
 
 
 
 
 
 
// wait 150 cycles
 40005dc:	51000400 	sub	w0, w0, #0x1					// w0--
 40005e0:	3100041f 	cmn	w0, #0x1					// if w0 != -1
 40005e4:	54000041 	b.ne	40005ec <_cstartup+0x4c4>  // b.any			// goto 0x40005ec
 40005e8:	d65f03c0 	ret							// return
 40005ec:	d503201f 	nop
 40005f0:	17fffffb 	b	40005dc <_cstartup+0x4b4>			// goto 0x40005dc



 
 
 // Assertion violation: file: src/device.c, line: 44, pcd->device.read_sector(((uint32_t)sector_log - pcd->part.start) * factor - pcd->part.start, buffer + d_sector_size) > 0

 
 
 
 
 
 
 
 
 
0000000004000700 <sd_init>:
 4000700:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
 4000704:	d2800203 	mov	x3, #0x10                  	// #16
 4000708:	f2a7e403 	movk	x3, #0x3f20, lsl #16
 400070c:	910003fd 	mov	x29, sp
 4000710:	b9400060 	ldr	w0, [x3]
 4000714:	d2801282 	mov	x2, #0x94                  	// #148
 4000718:	f2a7e402 	movk	x2, #0x3f20, lsl #16
 400071c:	a90153f3 	stp	x19, x20, [sp, #16]
 4000720:	52800044 	mov	w4, #0x2                   	// #2
 4000724:	a9025bf5 	stp	x21, x22, [sp, #32]
 4000728:	2a0003e0 	mov	w0, w0
 400072c:	a90363f7 	stp	x23, x24, [sp, #48]
 4000730:	9268f000 	and	x0, x0, #0xffffffffff1fffff
 4000734:	a9046bf9 	stp	x25, x26, [sp, #64]
 4000738:	d2800593 	mov	x19, #0x2c                  	// #44
 400073c:	f2a7e613 	movk	x19, #0x3f30, lsl #16				// control1 reg
 4000740:	f9002bfb 	str	x27, [sp, #80]
 4000744:	d284e215 	mov	x21, #0x2710                	// #10000
 4000748:	b9000060 	str	w0, [x3]					//			select function 0 for gpio 47
 400074c:	528012c0 	mov	w0, #0x96                  	// #150
 4000750:	b9000044 	str	w4, [x2]
 4000754:	97ffffa2 	bl	40005dc <_cstartup+0x4b4>
 4000758:	d2801381 	mov	x1, #0x9c                  	// #156
 400075c:	f2a7e401 	movk	x1, #0x3f20, lsl #16
 4000760:	52900000 	mov	w0, #0x8000                	// #32768
 4000764:	b9000020 	str	w0, [x1]
 4000768:	528012c0 	mov	w0, #0x96                  	// #150
 400076c:	97ffff9c 	bl	40005dc <_cstartup+0x4b4>
 4000770:	b900005f 	str	wzr, [x2]
 4000774:	b900003f 	str	wzr, [x1]
 4000778:	d2800d05 	mov	x5, #0x68                  	// #104
 400077c:	f2a7e405 	movk	x5, #0x3f20, lsl #16				// 			detect high enable gpio 47
 4000780:	b94000a0 	ldr	w0, [x5]
 4000784:	32110000 	orr	w0, w0, #0x8000
 4000788:	b90000a0 	str	w0, [x5]
 400078c:	b9400060 	ldr	w0, [x3]
 4000790:	32081400 	orr	w0, w0, #0x3f000000
 4000794:	b9000060 	str	w0, [x3]					//			select function 3 for gpio 48 49
 4000798:	b9000044 	str	w4, [x2]
 400079c:	528012c0 	mov	w0, #0x96                  	// #150
 40007a0:	97ffff8f 	bl	40005dc <_cstartup+0x4b4>
 40007a4:	52a00060 	mov	w0, #0x30000               	// #196608
 40007a8:	b9000020 	str	w0, [x1]					// *x1 = w0          	pull up gpio 48 gpio 49
 40007ac:	528012c0 	mov	w0, #0x96                  	// #150
 40007b0:	97ffff8b 	bl	40005dc <_cstartup+0x4b4>
 40007b4:	b900005f 	str	wzr, [x2]					// *x2 = 0       	don't pull up
 40007b8:	b900003f 	str	wzr, [x1]					// *x1 = 0          	disable pull up control
 40007bc:	d2800283 	mov	x3, #0x14                  	// #20
 40007c0:	f2a7e403 	movk	x3, #0x3f20, lsl #16
 40007c4:	b9400060 	ldr	w0, [x3]
 40007c8:	32002c00 	orr	w0, w0, #0xfff
 40007cc:	b9000060 	str	w0, [x3]					// *x3 = w0             select function 3 for gpio 50 51 52 53
 40007d0:	b9000044 	str	w4, [x2]					// *x2 = w4 = 2         enable pull up contrl
 40007d4:	528012c0 	mov	w0, #0x96                  	// #150
 40007d8:	97ffff81 	bl	40005dc <_cstartup+0x4b4>
 40007dc:	52a00780 	mov	w0, #0x3c0000              	// #3932160
 40007e0:	b9000020 	str	w0, [x1]					// *x1 = w0             pull up gpio 50 51 52 53
 40007e4:	528012c0 	mov	w0, #0x96                  	// #150
 40007e8:	97ffff7d 	bl	40005dc <_cstartup+0x4b4>
 40007ec:	b900005f 	str	wzr, [x2]					// *x2 = 0              don't pull up
 40007f0:	b900003f 	str	wzr, [x1]					// *x1 = 0              disable pull up control
 40007f4:	d2801f80 	mov	x0, #0xfc                  	// #252
 40007f8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40007fc:	90000014 	adrp	x20, 4000000 <_start>				// x20 = 0x4000000
 4000800:	912c0281 	add	x1, x20, #0xb00					// x1 = x20 + 0xb00
 4000804:	b9400000 	ldr	w0, [x0]					// w0 = *x0             fetch Slot Interrupt Status and Version
 4000808:	d3505c00 	ubfx	x0, x0, #16, #8					// x0 = x0[23:16]
 400080c:	f9000420 	str	x0, [x1, #8]					// *(x1 + 8) = x0
 4000810:	d2800500 	mov	x0, #0x28                  	// #40
 4000814:	f2a7e600 	movk	x0, #0x3f30, lsl #16				// x0 = 0x3f300028	control0
 4000818:	b900001f 	str	wzr, [x0]					// *x0 = 0
 400081c:	b9400260 	ldr	w0, [x19]					// w0 = *x19
 4000820:	32080000 	orr	w0, w0, #0x1000000				// w0 |= 0001 0000 0000 0000 0000 0000 0000
 4000824:	b9000260 	str	w0, [x19]					// *x19 = w0		reset the complete host circuit
 
 
 
 
  // wait until the complete host circuit is reseted or return -2
 4000828:	52800140 	mov	w0, #0xa                   	// #10		// wait until w0[24] == 0
 400082c:	97fffe39 	bl	4000110 <wait_micros>				// wait_micros(10)
 4000830:	b9400260 	ldr	w0, [x19]					// w0 = *x19
 4000834:	36c001a0 	tbz	w0, #24, 4000868 <sd_init+0x168>		// if w0[24] == 0
												// goto 0x4000868
 4000838:	d10006b5 	sub	x21, x21, #0x1					// x21--		from 10000 to 0
 400083c:	b10006bf 	cmn	x21, #0x1					// if x21 != -1
 4000840:	54ffff41 	b.ne	4000828 <sd_init+0x128>  // b.any			// goto 0x4000828
 4000844:	12800033 	mov	w19, #0xfffffffe            	// #-2		// w19 = -2
 
 
 
 
 // return
 4000848:	2a1303e0 	mov	w0, w19						// w0 = w19
 400084c:	f9402bfb 	ldr	x27, [sp, #80]					// x27 = pop
 4000850:	a94153f3 	ldp	x19, x20, [sp, #16]				// pop
 4000854:	a9425bf5 	ldp	x21, x22, [sp, #32]				// pop
 4000858:	a94363f7 	ldp	x23, x24, [sp, #48]				// pop
 400085c:	a9446bf9 	ldp	x25, x26, [sp, #64]				// pop
 4000860:	a8c67bfd 	ldp	x29, x30, [sp], #96				// pop
 4000864:	d65f03c0 	ret							// return w0
 
 
 
 
 4000868:	b4fffef5 	cbz	x21, 4000844 <sd_init+0x144>			// if x21 == 0
												// goto 4000844
 400086c:	b9400260 	ldr	w0, [x19]					// w0 = *x19
 4000870:	52800021 	mov	w1, #0x1                   	// #1
 4000874:	72a001c1 	movk	w1, #0xe, lsl #16				// w1 = 1110 0000 0000 0000 0001
 4000878:	2a010000 	orr	w0, w0, w1					// w0 |= w1
 400087c:	b9000260 	str	w0, [x19]					// *x19 = w0		set internal clk enable and timeout
 4000880:	52800140 	mov	w0, #0xa                   	// #10
 4000884:	97fffe23 	bl	4000110 <wait_micros>				// wait_micros(10)
 4000888:	52835000 	mov	w0, #0x1a80                	// #6784
 400088c:	72a000c0 	movk	w0, #0x6, lsl #16				// w0 = 400000
 
 
 
 
 4000890:	97ffff00 	bl	4000490 <_cstartup+0x368>			// call 0x4000490
 
 
 
 
 // about Interrupt
 4000894:	2a0003f3 	mov	w19, w0						// w19 = w0		get the return value
 4000898:	35fffd80 	cbnz	w0, 4000848 <sd_init+0x148>			// if w0 != 0
												// goto 0x4000848	branch to return
 400089c:	d2800702 	mov	x2, #0x38                  	// #56
 40008a0:	f2a7e602 	movk	x2, #0x3f30, lsl #16				// x2 = 0x3f300038	Interrupt Generation Enable reg
 40008a4:	12800001 	mov	w1, #0xffffffff            	// #-1		// w1 = 0xffffffff
 40008a8:	90000015 	adrp	x21, 4000000 <_start>				// x21 = 0x4000000
 40008ac:	b9000041 	str	w1, [x2]					// *x2 = w1		create all irq
 40008b0:	d2800682 	mov	x2, #0x34                  	// #52
 40008b4:	f2a7e602 	movk	x2, #0x3f30, lsl #16				// x2 = 0x3f300034	Interrupt Flag Enable reg
 40008b8:	aa1503f7 	mov	x23, x21					// x23 = x21
 40008bc:	b9000041 	str	w1, [x2]					// *x2 = w1		set all flag
 40008c0:	912c0281 	add	x1, x20, #0xb00					// x1 = x20 + 0xb00
 40008c4:	f90592bf 	str	xzr, [x21, #2848]				// *(x21 + 0xb20) = 0
 40008c8:	f905829f 	str	xzr, [x20, #2816]				// *(x20 + 0xb00) = 0
 40008cc:	a9017c3f 	stp	xzr, xzr, [x1, #16]				// *(x1 + 16) = {0, 0}
 40008d0:	52800001 	mov	w1, #0x0                   	// #0		// w1 = 0
 
 
 
 
 40008d4:	97fffe80 	bl	40002d4 <_cstartup+0x1ac>			// call 0x40002d4
 
 
 
 
 40008d8:	f94592b3 	ldr	x19, [x21, #2848]
 40008dc:	b5fffb73 	cbnz	x19, 4000848 <sd_init+0x148>
 40008e0:	52803541 	mov	w1, #0x1aa                 	// #426
 40008e4:	52a10040 	mov	w0, #0x8020000             	// #134348800
 
 
 
 
 40008e8:	97fffe7b 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 40008ec:	f94592b3 	ldr	x19, [x21, #2848]
 40008f0:	b5fffad3 	cbnz	x19, 4000848 <sd_init+0x148>
 40008f4:	52900016 	mov	w22, #0x8000                	// #32768
 40008f8:	72aa3ff6 	movk	w22, #0x51ff, lsl #16
 40008fc:	d28000d5 	mov	x21, #0x6                   	// #6
 4000900:	d2800001 	mov	x1, #0x0                   	// #0
 4000904:	1400000f 	b	4000940 <sd_init+0x240>
 
 
 
 
 4000908:	52803200 	mov	w0, #0x190                 	// #400
 400090c:	97ffff34 	bl	40005dc <_cstartup+0x4b4>
 4000910:	2a1603e1 	mov	w1, w22
 4000914:	52b52040 	mov	w0, #0xa9020000            	// #-1459486720
 
 
 
 
 4000918:	97fffe6f 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 400091c:	93407c01 	sxtw	x1, w0
 4000920:	36f80100 	tbz	w0, #31, 4000940 <sd_init+0x240>
 4000924:	7211201f 	tst	w0, #0xff8000
 4000928:	540000c0 	b.eq	4000940 <sd_init+0x240>  // b.none
 400092c:	36f000a0 	tbz	w0, #30, 4000940 <sd_init+0x240>
 4000930:	f94592f3 	ldr	x19, [x23, #2848]
 4000934:	d1000660 	sub	x0, x19, #0x1
 4000938:	b1000c1f 	cmn	x0, #0x3					// x0 + 3
 400093c:	54fff869 	b.ls	4000848 <sd_init+0x148>  // b.plast		// if x0 + 3 <=
 
 
 
 
 4000940:	b7f80381 	tbnz	x1, #63, 40009b0 <sd_init+0x2b0>
 4000944:	d10006b5 	sub	x21, x21, #0x1					// x21--			from 6 to 0
 4000948:	b10006bf 	cmn	x21, #0x1					// if x21 != -1
 400094c:	54fffde1 	b.ne	4000908 <sd_init+0x208>  // b.any			// goto 0x4000908
 4000950:	12800013 	mov	w19, #0xffffffff            	// #-1		// 				from here return -1 because of timeout
 4000954:	17ffffbd 	b	4000848 <sd_init+0x148>				// return -1
 4000958:	52800020 	mov	w0, #0x1                   	// #1
 400095c:	97fffded 	bl	4000110 <wait_micros>
 4000960:	aa1603e0 	mov	x0, x22
 4000964:	aa0003f6 	mov	x22, x0
 4000968:	14000043 	b	4000a74 <sd_init+0x374>
 400096c:	d2800501 	mov	x1, #0x28                  	// #40
 4000970:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 4000974:	b9400020 	ldr	w0, [x1]
 4000978:	321f0000 	orr	w0, w0, #0x2
 400097c:	b9000020 	str	w0, [x1]
 4000980:	912c0281 	add	x1, x20, #0xb00
 4000984:	f9400820 	ldr	x0, [x1, #16]
 4000988:	36c80080 	tbz	w0, #25, 4000998 <sd_init+0x298>
 400098c:	b4000078 	cbz	x24, 4000998 <sd_init+0x298>
 4000990:	927ff800 	and	x0, x0, #0xfffffffffffffffe
 4000994:	f9000820 	str	x0, [x1, #16]
 4000998:	912c0294 	add	x20, x20, #0xb00
 400099c:	92401ea1 	and	x1, x21, #0xff
 40009a0:	f9400a95 	ldr	x21, [x20, #16]
 40009a4:	aa0102a1 	orr	x1, x21, x1
 40009a8:	f9000a81 	str	x1, [x20, #16]
 40009ac:	17ffffa7 	b	4000848 <sd_init+0x148>
 
 
 
 
 
 40009b0:	b4fffd15 	cbz	x21, 4000950 <sd_init+0x250>
 40009b4:	f271203f 	tst	x1, #0xff8000
 40009b8:	54fff460 	b.eq	4000844 <sd_init+0x144>  // b.none
 40009bc:	92620038 	and	x24, x1, #0x40000000
 40009c0:	531e7835 	ubfx	w21, w1, #30, #1
 40009c4:	52a04020 	mov	w0, #0x2010000             	// #33619968
 40009c8:	52800001 	mov	w1, #0x0                   	// #0
 40009cc:	97fffe42 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 40009d0:	52800001 	mov	w1, #0x0                   	// #0
 40009d4:	52a06040 	mov	w0, #0x3020000             	// #50462720
 40009d8:	97fffe3f 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 40009dc:	f94592f3 	ldr	x19, [x23, #2848]
 40009e0:	93407c00 	sxtw	x0, w0
 40009e4:	f9058280 	str	x0, [x20, #2816]
 40009e8:	b5fff313 	cbnz	x19, 4000848 <sd_init+0x148>
 40009ec:	528f0800 	mov	w0, #0x7840                	// #30784
 40009f0:	72a02fa0 	movk	w0, #0x17d, lsl #16
 40009f4:	97fffea7 	bl	4000490 <_cstartup+0x368>
 40009f8:	2a0003f3 	mov	w19, w0
 40009fc:	35fff260 	cbnz	w0, 4000848 <sd_init+0x148>
 4000a00:	b94b0281 	ldr	w1, [x20, #2816]
 4000a04:	52a0e060 	mov	w0, #0x7030000             	// #117637120
 4000a08:	97fffe33 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 4000a0c:	f94592f3 	ldr	x19, [x23, #2848]
 4000a10:	b5fff1d3 	cbnz	x19, 4000848 <sd_init+0x148>
 4000a14:	52800040 	mov	w0, #0x2                   	// #2
 4000a18:	97fffdd5 	bl	400016c <_cstartup+0x44>
 4000a1c:	35fff9a0 	cbnz	w0, 4000950 <sd_init+0x250>
 4000a20:	d2800080 	mov	x0, #0x4                   	// #4
 4000a24:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4000a28:	52800101 	mov	w1, #0x8                   	// #8
 4000a2c:	72a00021 	movk	w1, #0x1, lsl #16
 4000a30:	b9000001 	str	w1, [x0]
 4000a34:	52800001 	mov	w1, #0x0                   	// #0
 4000a38:	52800200 	mov	w0, #0x10                  	// #16
 4000a3c:	72b66440 	movk	w0, #0xb322, lsl #16
 4000a40:	97fffe25 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 4000a44:	f94592f3 	ldr	x19, [x23, #2848]
 4000a48:	b5fff013 	cbnz	x19, 4000848 <sd_init+0x148>
 4000a4c:	52800400 	mov	w0, #0x20                  	// #32
 4000a50:	97fffdf1 	bl	4000214 <_cstartup+0xec>
 
 
 
 
 4000a54:	2a0003f3 	mov	w19, w0
 4000a58:	35fff7c0 	cbnz	w0, 4000950 <sd_init+0x250>
 4000a5c:	912c0299 	add	x25, x20, #0xb00
 4000a60:	d280049a 	mov	x26, #0x24                  	// #36
 4000a64:	f2a7e61a 	movk	x26, #0x3f30, lsl #16
 4000a68:	d280041b 	mov	x27, #0x20                  	// #32
 4000a6c:	f2a7e61b 	movk	x27, #0x3f30, lsl #16
 4000a70:	d2800016 	mov	x22, #0x0                   	// #0
 4000a74:	b9400340 	ldr	w0, [x26]
 4000a78:	365ff700 	tbz	w0, #11, 4000958 <sd_init+0x258>
 4000a7c:	910006c0 	add	x0, x22, #0x1
 4000a80:	b9400361 	ldr	w1, [x27]
 4000a84:	8b160f36 	add	x22, x25, x22, lsl #3
 4000a88:	f100081f 	cmp	x0, #0x2
 4000a8c:	2a0103e1 	mov	w1, w1
 4000a90:	f9000ac1 	str	x1, [x22, #16]
 4000a94:	54fff681 	b.ne	4000964 <sd_init+0x264>  // b.any
 4000a98:	f9400b20 	ldr	x0, [x25, #16]
 4000a9c:	3657f720 	tbz	w0, #10, 4000980 <sd_init+0x280>
 4000aa0:	f9400321 	ldr	x1, [x25]
 4000aa4:	52b0c040 	mov	w0, #0x86020000            	// #-2046689280
 4000aa8:	321f0021 	orr	w1, w1, #0x2
 4000aac:	97fffe0a 	bl	40002d4 <_cstartup+0x1ac>
 
 
 
 
 4000ab0:	f94592e0 	ldr	x0, [x23, #2848]
 4000ab4:	b4fff5c0 	cbz	x0, 400096c <sd_init+0x26c>
 4000ab8:	2a0003f3 	mov	w19, w0
 4000abc:	17ffff63 	b	4000848 <sd_init+0x148>

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Disassembly of section .got:

0000000004000ac0 <_GLOBAL_OFFSET_TABLE_>:
	...
 4000ac8:	04000b28 	add	z8.b, p2/m, z8.b, z25.b
 4000acc:	00000000 	.inst	0x00000000 ; undefined
 4000ad0:	04000b00 	add	z0.b, p2/m, z0.b, z24.b
 4000ad4:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .got.plt:

0000000004000ad8 <.got.plt>:
	...

Disassembly of section .bss:

0000000004000af0 <__bss_start-0x10>:
	...

0000000004000b00 <__bss_start>:
	...

0000000004000b20 <sd_err>:
	...
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
00000000040005f4 <sd_readsector>:
 40005f4:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 40005f8:	910003fd 	mov	x29, sp
 40005fc:	a90153f3 	stp	x19, x20, [sp, #16]
 4000600:	a9025bf5 	stp	x21, x22, [sp, #32]
 4000604:	2a0003f5 	mov	w21, w0
 4000608:	aa0103f6 	mov	x22, x1
 400060c:	52800040 	mov	w0, #0x2                   	// #2
 4000610:	97fffed7 	bl	400016c <_cstartup+0x44>
 4000614:	34000140 	cbz	w0, 400063c <sd_readsector+0x48>
 4000618:	90000000 	adrp	x0, 4000000 <_start>
 400061c:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
 4000620:	52800013 	mov	w19, #0x0                   	// #0
 4000624:	f9059001 	str	x1, [x0, #2848]
 4000628:	2a1303e0 	mov	w0, w19
 400062c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000630:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4000634:	a8c37bfd 	ldp	x29, x30, [sp], #48
 4000638:	d65f03c0 	ret
 400063c:	2a0003f3 	mov	w19, w0
 4000640:	90000000 	adrp	x0, 4000000 <_start>
 4000644:	912c0001 	add	x1, x0, #0xb00
 4000648:	aa0003f4 	mov	x20, x0
 400064c:	d2800080 	mov	x0, #0x4                   	// #4
 4000650:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4000654:	f9400822 	ldr	x2, [x1, #16]
 4000658:	52804001 	mov	w1, #0x200                 	// #512
 400065c:	72a00021 	movk	w1, #0x1, lsl #16
 4000660:	b9000001 	str	w1, [x0]
 4000664:	36000102 	tbz	w2, #0, 4000684 <sd_readsector+0x90>
 4000668:	2a1503e1 	mov	w1, w21
 400066c:	52800200 	mov	w0, #0x10                  	// #16
 4000670:	72a22440 	movk	w0, #0x1122, lsl #16
 4000674:	97ffff18 	bl	40002d4 <_cstartup+0x1ac>
 4000678:	90000000 	adrp	x0, 4000000 <_start>
 400067c:	f9459000 	ldr	x0, [x0, #2848]
 4000680:	b5fffd40 	cbnz	x0, 4000628 <sd_readsector+0x34>
 4000684:	912c0280 	add	x0, x20, #0xb00
 4000688:	f9400800 	ldr	x0, [x0, #16]
 400068c:	37000100 	tbnz	w0, #0, 40006ac <sd_readsector+0xb8>
 4000690:	53175aa1 	lsl	w1, w21, #9
 4000694:	52800200 	mov	w0, #0x10                  	// #16
 4000698:	72a22440 	movk	w0, #0x1122, lsl #16
 400069c:	97ffff0e 	bl	40002d4 <_cstartup+0x1ac>
 40006a0:	90000000 	adrp	x0, 4000000 <_start>
 40006a4:	f9459000 	ldr	x0, [x0, #2848]
 40006a8:	b5fffc00 	cbnz	x0, 4000628 <sd_readsector+0x34>
 40006ac:	52800400 	mov	w0, #0x20                  	// #32
 40006b0:	97fffed9 	bl	4000214 <_cstartup+0xec>
 40006b4:	d2800001 	mov	x1, #0x0                   	// #0
 40006b8:	350001c0 	cbnz	w0, 40006f0 <sd_readsector+0xfc>
 40006bc:	d2800402 	mov	x2, #0x20                  	// #32
 40006c0:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 40006c4:	b9400040 	ldr	w0, [x2]
 40006c8:	b8217ac0 	str	w0, [x22, x1, lsl #2]
 40006cc:	91000421 	add	x1, x1, #0x1
 40006d0:	f102003f 	cmp	x1, #0x80
 40006d4:	54ffff81 	b.ne	40006c4 <sd_readsector+0xd0>  // b.any
 40006d8:	90000000 	adrp	x0, 4000000 <_start>
 40006dc:	f9459000 	ldr	x0, [x0, #2848]
 40006e0:	52804013 	mov	w19, #0x200                 	// #512
 40006e4:	f100001f 	cmp	x0, #0x0
 40006e8:	1a9313f3 	csel	w19, wzr, w19, ne  // ne = any
 40006ec:	17ffffcf 	b	4000628 <sd_readsector+0x34>
 40006f0:	90000001 	adrp	x1, 4000000 <_start>
 40006f4:	93407c00 	sxtw	x0, w0
 40006f8:	f9059020 	str	x0, [x1, #2848]
 40006fc:	17ffffcb 	b	4000628 <sd_readsector+0x34>
