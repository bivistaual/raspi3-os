
shell.elf：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000004000000 <_start>:
 4000000:	d53800a1 	mrs	x1, mpidr_el1
 4000004:	92400421 	and	x1, x1, #0x3
 4000008:	b4000061 	cbz	x1, 4000014 <_start+0x14>
 400000c:	d503205f 	wfe
 4000010:	17ffffff 	b	400000c <_start+0xc>
 4000014:	580000a1 	ldr	x1, 4000028 <_start+0x28>
 4000018:	9100003f 	mov	sp, x1
 400001c:	94000b61 	bl	4002da0 <_cstartup>
 4000020:	94000300 	bl	4000c20 <kernel_main>
 4000024:	17fffffa 	b	400000c <_start+0xc>
 4000028:	04000000 	.word	0x04000000
 400002c:	00000000 	.word	0x00000000
 4000030:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 4000034:	910003fd 	mov	x29, sp
 4000038:	a90153f3 	stp	x19, x20, [sp, #16]
 400003c:	2a0003f4 	mov	w20, w0
 4000040:	a9025bf5 	stp	x21, x22, [sp, #32]
 4000044:	52942413 	mov	w19, #0xa120                	// #41248
 4000048:	72a000f3 	movk	w19, #0x7, lsl #16
 400004c:	d2800495 	mov	x21, #0x24                  	// #36
 4000050:	f2a7e615 	movk	x21, #0x3f30, lsl #16
 4000054:	d2800616 	mov	x22, #0x30                  	// #48
 4000058:	f2a7e616 	movk	x22, #0x3f30, lsl #16
 400005c:	f9001bf7 	str	x23, [sp, #48]
 4000060:	52900017 	mov	w23, #0x8000                	// #32768
 4000064:	72a02fd7 	movk	w23, #0x17e, lsl #16
 4000068:	b94002a0 	ldr	w0, [x21]
 400006c:	6a14001f 	tst	w0, w20
 4000070:	54000180 	b.eq	40000a0 <_start+0xa0>  // b.none
 4000074:	b94002c0 	ldr	w0, [x22]
 4000078:	6a17001f 	tst	w0, w23
 400007c:	54000121 	b.ne	40000a0 <_start+0xa0>  // b.any
 4000080:	51000673 	sub	w19, w19, #0x1
 4000084:	3100067f 	cmn	w19, #0x1
 4000088:	54000061 	b.ne	4000094 <_start+0x94>  // b.any
 400008c:	12800020 	mov	w0, #0xfffffffe            	// #-2
 4000090:	1400000d 	b	40000c4 <_start+0xc4>
 4000094:	52800020 	mov	w0, #0x1                   	// #1
 4000098:	94000a14 	bl	40028e8 <wait_micros>
 400009c:	17fffff3 	b	4000068 <_start+0x68>
 40000a0:	34ffff73 	cbz	w19, 400008c <_start+0x8c>
 40000a4:	d2800600 	mov	x0, #0x30                  	// #48
 40000a8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40000ac:	b9400001 	ldr	w1, [x0]
 40000b0:	52900000 	mov	w0, #0x8000                	// #32768
 40000b4:	72a02fc0 	movk	w0, #0x17e, lsl #16
 40000b8:	6a00003f 	tst	w1, w0
 40000bc:	12800020 	mov	w0, #0xfffffffe            	// #-2
 40000c0:	1a9f1000 	csel	w0, w0, wzr, ne  // ne = any
 40000c4:	a94153f3 	ldp	x19, x20, [sp, #16]
 40000c8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 40000cc:	f9401bf7 	ldr	x23, [sp, #48]
 40000d0:	a8c47bfd 	ldp	x29, x30, [sp], #64
 40000d4:	d65f03c0 	ret
 40000d8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 40000dc:	910003fd 	mov	x29, sp
 40000e0:	a90153f3 	stp	x19, x20, [sp, #16]
 40000e4:	52884813 	mov	w19, #0x4240                	// #16960
 40000e8:	72a001f3 	movk	w19, #0xf, lsl #16
 40000ec:	a9025bf5 	stp	x21, x22, [sp, #32]
 40000f0:	52900015 	mov	w21, #0x8000                	// #32768
 40000f4:	72a02fd5 	movk	w21, #0x17e, lsl #16
 40000f8:	2a150015 	orr	w21, w0, w21
 40000fc:	f9001bf7 	str	x23, [sp, #48]
 4000100:	2a0003f6 	mov	w22, w0
 4000104:	d2800617 	mov	x23, #0x30                  	// #48
 4000108:	f2a7e617 	movk	x23, #0x3f30, lsl #16
 400010c:	aa1703f4 	mov	x20, x23
 4000110:	b94002e0 	ldr	w0, [x23]
 4000114:	6a15001f 	tst	w0, w21
 4000118:	54000081 	b.ne	4000128 <_start+0x128>  // b.any
 400011c:	51000673 	sub	w19, w19, #0x1
 4000120:	3100067f 	cmn	w19, #0x1
 4000124:	54000201 	b.ne	4000164 <_start+0x164>  // b.any
 4000128:	b9400280 	ldr	w0, [x20]
 400012c:	7100027f 	cmp	w19, #0x0
 4000130:	5400008d 	b.le	4000140 <_start+0x140>
 4000134:	52a00221 	mov	w1, #0x110000              	// #1114112
 4000138:	6a01001f 	tst	w0, w1
 400013c:	540001a0 	b.eq	4000170 <_start+0x170>  // b.none
 4000140:	d2800601 	mov	x1, #0x30                  	// #48
 4000144:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 4000148:	b9000020 	str	w0, [x1]
 400014c:	12800000 	mov	w0, #0xffffffff            	// #-1
 4000150:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000154:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4000158:	f9401bf7 	ldr	x23, [sp, #48]
 400015c:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4000160:	d65f03c0 	ret
 4000164:	52800020 	mov	w0, #0x1                   	// #1
 4000168:	940009e0 	bl	40028e8 <wait_micros>
 400016c:	17ffffe9 	b	4000110 <_start+0x110>
 4000170:	52900001 	mov	w1, #0x8000                	// #32768
 4000174:	72a02fc1 	movk	w1, #0x17e, lsl #16
 4000178:	6a01001f 	tst	w0, w1
 400017c:	54000080 	b.eq	400018c <_start+0x18c>  // b.none
 4000180:	b9000280 	str	w0, [x20]
 4000184:	12800020 	mov	w0, #0xfffffffe            	// #-2
 4000188:	17fffff2 	b	4000150 <_start+0x150>
 400018c:	52800000 	mov	w0, #0x0                   	// #0
 4000190:	b9000296 	str	w22, [x20]
 4000194:	17ffffef 	b	4000150 <_start+0x150>
 4000198:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 400019c:	910003fd 	mov	x29, sp
 40001a0:	a9025bf5 	stp	x21, x22, [sp, #32]
 40001a4:	90000035 	adrp	x21, 4004000 <__func__.2797+0xca0>
 40001a8:	a90153f3 	stp	x19, x20, [sp, #16]
 40001ac:	2a0103f6 	mov	w22, w1
 40001b0:	f9040ebf 	str	xzr, [x21, #2072]
 40001b4:	2a0003f3 	mov	w19, w0
 40001b8:	f9001bf7 	str	x23, [sp, #48]
 40001bc:	aa1503f4 	mov	x20, x21
 40001c0:	36f80260 	tbz	w0, #31, 400020c <_start+0x20c>
 40001c4:	90000037 	adrp	x23, 4004000 <__func__.2797+0xca0>
 40001c8:	f943f2e1 	ldr	x1, [x23, #2016]
 40001cc:	52a6e042 	mov	w2, #0x37020000            	// #922877952
 40001d0:	52a6e000 	mov	w0, #0x37000000            	// #922746880
 40001d4:	f100003f 	cmp	x1, #0x0
 40001d8:	1a801040 	csel	w0, w2, w0, ne  // ne = any
 40001dc:	97ffffef 	bl	4000198 <_start+0x198>
 40001e0:	f943f2e1 	ldr	x1, [x23, #2016]
 40001e4:	b4000121 	cbz	x1, 4000208 <_start+0x208>
 40001e8:	35000100 	cbnz	w0, 4000208 <_start+0x208>
 40001ec:	92800021 	mov	x1, #0xfffffffffffffffe    	// #-2
 40001f0:	f9040ea1 	str	x1, [x21, #2072]
 40001f4:	a94153f3 	ldp	x19, x20, [sp, #16]
 40001f8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 40001fc:	f9401bf7 	ldr	x23, [sp, #48]
 4000200:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4000204:	d65f03c0 	ret
 4000208:	12007a73 	and	w19, w19, #0x7fffffff
 400020c:	52800020 	mov	w0, #0x1                   	// #1
 4000210:	97ffff88 	bl	4000030 <_start+0x30>
 4000214:	340000a0 	cbz	w0, 4000228 <_start+0x228>
 4000218:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
 400021c:	f9040e80 	str	x0, [x20, #2072]
 4000220:	52800000 	mov	w0, #0x0                   	// #0
 4000224:	17fffff4 	b	40001f4 <_start+0x1f4>
 4000228:	d2800600 	mov	x0, #0x30                  	// #48
 400022c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4000230:	b9400001 	ldr	w1, [x0]
 4000234:	b9000001 	str	w1, [x0]
 4000238:	d2800100 	mov	x0, #0x8                   	// #8
 400023c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4000240:	b9000016 	str	w22, [x0]
 4000244:	b9000413 	str	w19, [x0, #4]
 4000248:	52a6e000 	mov	w0, #0x37000000            	// #922746880
 400024c:	6b00027f 	cmp	w19, w0
 4000250:	52a10040 	mov	w0, #0x8020000             	// #134348800
 4000254:	1a9f17f5 	cset	w21, eq  // eq = none
 4000258:	6b00027f 	cmp	w19, w0
 400025c:	1a9f16a0 	csinc	w0, w21, wzr, ne  // ne = any
 4000260:	34000060 	cbz	w0, 400026c <_start+0x26c>
 4000264:	52800c80 	mov	w0, #0x64                  	// #100
 4000268:	940009a0 	bl	40028e8 <wait_micros>
 400026c:	52800020 	mov	w0, #0x1                   	// #1
 4000270:	97ffff9a 	bl	40000d8 <_start+0xd8>
 4000274:	34000060 	cbz	w0, 4000280 <_start+0x280>
 4000278:	93407c00 	sxtw	x0, w0
 400027c:	17ffffe8 	b	400021c <_start+0x21c>
 4000280:	d2800201 	mov	x1, #0x10                  	// #16
 4000284:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 4000288:	7100027f 	cmp	w19, #0x0
 400028c:	b9400021 	ldr	w1, [x1]
 4000290:	1a9f16b5 	csinc	w21, w21, wzr, ne  // ne = any
 4000294:	35fffb15 	cbnz	w21, 40001f4 <_start+0x1f4>
 4000298:	52a6e040 	mov	w0, #0x37020000            	// #922877952
 400029c:	6b00027f 	cmp	w19, w0
 40002a0:	54000061 	b.ne	40002ac <_start+0x2ac>  // b.any
 40002a4:	121b0020 	and	w0, w1, #0x20
 40002a8:	17ffffd3 	b	40001f4 <_start+0x1f4>
 40002ac:	52a10040 	mov	w0, #0x8020000             	// #134348800
 40002b0:	6b00027f 	cmp	w19, w0
 40002b4:	540000a1 	b.ne	40002c8 <_start+0x2c8>  // b.any
 40002b8:	6b16003f 	cmp	w1, w22
 40002bc:	12800020 	mov	w0, #0xfffffffe            	// #-2
 40002c0:	1a8003e0 	csel	w0, wzr, w0, eq  // eq = none
 40002c4:	17ffffcc 	b	40001f4 <_start+0x1f4>
 40002c8:	52a04020 	mov	w0, #0x2010000             	// #33619968
 40002cc:	6b00027f 	cmp	w19, w0
 40002d0:	540001c1 	b.ne	4000308 <_start+0x308>  // b.any
 40002d4:	d2800380 	mov	x0, #0x1c                  	// #28
 40002d8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40002dc:	d2800282 	mov	x2, #0x14                  	// #20
 40002e0:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 40002e4:	b9400003 	ldr	w3, [x0]
 40002e8:	d2800300 	mov	x0, #0x18                  	// #24
 40002ec:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40002f0:	2a030021 	orr	w1, w1, w3
 40002f4:	b9400000 	ldr	w0, [x0]
 40002f8:	b9400042 	ldr	w2, [x2]
 40002fc:	2a020000 	orr	w0, w0, w2
 4000300:	2a000020 	orr	w0, w1, w0
 4000304:	17ffffbc 	b	40001f4 <_start+0x1f4>
 4000308:	52a06040 	mov	w0, #0x3020000             	// #50462720
 400030c:	6b00027f 	cmp	w19, w0
 4000310:	540001a1 	b.ne	4000344 <_start+0x344>  // b.any
 4000314:	53185c20 	lsl	w0, w1, #8
 4000318:	531a6422 	lsl	w2, w1, #6
 400031c:	120a0003 	and	w3, w0, #0x400000
 4000320:	120d0042 	and	w2, w2, #0x80000
 4000324:	2a030042 	orr	w2, w2, w3
 4000328:	12090003 	and	w3, w0, #0x800000
 400032c:	121e0020 	and	w0, w1, #0x4
 4000330:	2a030000 	orr	w0, w0, w3
 4000334:	2a020000 	orr	w0, w0, w2
 4000338:	f9040e80 	str	x0, [x20, #2072]
 400033c:	12103c20 	and	w0, w1, #0xffff0000
 4000340:	17ffffad 	b	40001f4 <_start+0x1f4>
 4000344:	52980080 	mov	w0, #0xc004                	// #49156
 4000348:	72bfff20 	movk	w0, #0xfff9, lsl #16
 400034c:	0a000020 	and	w0, w1, w0
 4000350:	17ffffa9 	b	40001f4 <_start+0x1f4>
 4000354:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 4000358:	910003fd 	mov	x29, sp
 400035c:	a90153f3 	stp	x19, x20, [sp, #16]
 4000360:	52990d53 	mov	w19, #0xc86a                	// #51306
 4000364:	72a04f73 	movk	w19, #0x27b, lsl #16
 4000368:	5290d414 	mov	w20, #0x86a0                	// #34464
 400036c:	72a00034 	movk	w20, #0x1, lsl #16
 4000370:	1ac00a73 	udiv	w19, w19, w0
 4000374:	f90013f5 	str	x21, [sp, #32]
 4000378:	d2800495 	mov	x21, #0x24                  	// #36
 400037c:	f2a7e615 	movk	x21, #0x3f30, lsl #16
 4000380:	b94002a0 	ldr	w0, [x21]
 4000384:	f240041f 	tst	x0, #0x3
 4000388:	54000180 	b.eq	40003b8 <_start+0x3b8>  // b.none
 400038c:	51000694 	sub	w20, w20, #0x1
 4000390:	3100069f 	cmn	w20, #0x1
 4000394:	540000c1 	b.ne	40003ac <_start+0x3ac>  // b.any
 4000398:	12800020 	mov	w0, #0xfffffffe            	// #-2
 400039c:	a94153f3 	ldp	x19, x20, [sp, #16]
 40003a0:	f94013f5 	ldr	x21, [sp, #32]
 40003a4:	a8c37bfd 	ldp	x29, x30, [sp], #48
 40003a8:	d65f03c0 	ret
 40003ac:	52800020 	mov	w0, #0x1                   	// #1
 40003b0:	9400094e 	bl	40028e8 <wait_micros>
 40003b4:	17fffff3 	b	4000380 <_start+0x380>
 40003b8:	34ffff14 	cbz	w20, 4000398 <_start+0x398>
 40003bc:	d2800581 	mov	x1, #0x2c                  	// #44
 40003c0:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 40003c4:	b9400020 	ldr	w0, [x1]
 40003c8:	121d7800 	and	w0, w0, #0xfffffffb
 40003cc:	b9000020 	str	w0, [x1]
 40003d0:	52800140 	mov	w0, #0xa                   	// #10
 40003d4:	94000945 	bl	40028e8 <wait_micros>
 40003d8:	71000660 	subs	w0, w19, #0x1
 40003dc:	540001a0 	b.eq	4000410 <_start+0x410>  // b.none
 40003e0:	53081c01 	lsl	w1, w0, #24
 40003e4:	72040c3f 	tst	w1, #0xf0000000
 40003e8:	54000521 	b.ne	400048c <_start+0x48c>  // b.any
 40003ec:	53040c01 	lsl	w1, w0, #28
 40003f0:	52800080 	mov	w0, #0x4                   	// #4
 40003f4:	7202043f 	tst	w1, #0xc0000000
 40003f8:	54000061 	b.ne	4000404 <_start+0x404>  // b.any
 40003fc:	531e7421 	lsl	w1, w1, #2
 4000400:	51000800 	sub	w0, w0, #0x2
 4000404:	2a2103e1 	mvn	w1, w1
 4000408:	4b417c00 	sub	w0, w0, w1, lsr #31
 400040c:	51000400 	sub	w0, w0, #0x1
 4000410:	90000021 	adrp	x1, 4004000 <__func__.2797+0xca0>
 4000414:	f943f421 	ldr	x1, [x1, #2024]
 4000418:	f100043f 	cmp	x1, #0x1
 400041c:	54000068 	b.hi	4000428 <_start+0x428>  // b.pmore
 4000420:	52800033 	mov	w19, #0x1                   	// #1
 4000424:	1ac02273 	lsl	w19, w19, w0
 4000428:	d2800594 	mov	x20, #0x2c                  	// #44
 400042c:	f2a7e614 	movk	x20, #0x3f30, lsl #16
 4000430:	71000a7f 	cmp	w19, #0x2
 4000434:	52800041 	mov	w1, #0x2                   	// #2
 4000438:	b9400280 	ldr	w0, [x20]
 400043c:	1a812273 	csel	w19, w19, w1, cs  // cs = hs, nlast
 4000440:	12105400 	and	w0, w0, #0xffff003f
 4000444:	2a132013 	orr	w19, w0, w19, lsl #8
 4000448:	b9000293 	str	w19, [x20]
 400044c:	52800140 	mov	w0, #0xa                   	// #10
 4000450:	5284e213 	mov	w19, #0x2710                	// #10000
 4000454:	94000925 	bl	40028e8 <wait_micros>
 4000458:	b9400280 	ldr	w0, [x20]
 400045c:	321e0000 	orr	w0, w0, #0x4
 4000460:	b9000280 	str	w0, [x20]
 4000464:	52800140 	mov	w0, #0xa                   	// #10
 4000468:	94000920 	bl	40028e8 <wait_micros>
 400046c:	b9400280 	ldr	w0, [x20]
 4000470:	37080120 	tbnz	w0, #1, 4000494 <_start+0x494>
 4000474:	51000673 	sub	w19, w19, #0x1
 4000478:	3100067f 	cmn	w19, #0x1
 400047c:	54fff8e0 	b.eq	4000398 <_start+0x398>  // b.none
 4000480:	52800140 	mov	w0, #0xa                   	// #10
 4000484:	94000919 	bl	40028e8 <wait_micros>
 4000488:	17fffff9 	b	400046c <_start+0x46c>
 400048c:	52800100 	mov	w0, #0x8                   	// #8
 4000490:	17ffffd9 	b	40003f4 <_start+0x3f4>
 4000494:	34fff833 	cbz	w19, 4000398 <_start+0x398>
 4000498:	52800000 	mov	w0, #0x0                   	// #0
 400049c:	17ffffc0 	b	400039c <_start+0x39c>
 40004a0:	51000400 	sub	w0, w0, #0x1
 40004a4:	3100041f 	cmn	w0, #0x1
 40004a8:	54000041 	b.ne	40004b0 <_start+0x4b0>  // b.any
 40004ac:	d65f03c0 	ret
 40004b0:	d503201f 	nop
 40004b4:	17fffffb 	b	40004a0 <_start+0x4a0>

00000000040004b8 <sd_readsector>:
 40004b8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 40004bc:	910003fd 	mov	x29, sp
 40004c0:	a90153f3 	stp	x19, x20, [sp, #16]
 40004c4:	a9025bf5 	stp	x21, x22, [sp, #32]
 40004c8:	2a0003f5 	mov	w21, w0
 40004cc:	aa0103f6 	mov	x22, x1
 40004d0:	52800040 	mov	w0, #0x2                   	// #2
 40004d4:	97fffed7 	bl	4000030 <_start+0x30>
 40004d8:	34000140 	cbz	w0, 4000500 <sd_readsector+0x48>
 40004dc:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 40004e0:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
 40004e4:	52800013 	mov	w19, #0x0                   	// #0
 40004e8:	f9040c01 	str	x1, [x0, #2072]
 40004ec:	2a1303e0 	mov	w0, w19
 40004f0:	a94153f3 	ldp	x19, x20, [sp, #16]
 40004f4:	a9425bf5 	ldp	x21, x22, [sp, #32]
 40004f8:	a8c37bfd 	ldp	x29, x30, [sp], #48
 40004fc:	d65f03c0 	ret
 4000500:	2a0003f3 	mov	w19, w0
 4000504:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4000508:	911f8001 	add	x1, x0, #0x7e0
 400050c:	aa0003f4 	mov	x20, x0
 4000510:	d2800080 	mov	x0, #0x4                   	// #4
 4000514:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4000518:	f9400822 	ldr	x2, [x1, #16]
 400051c:	52804001 	mov	w1, #0x200                 	// #512
 4000520:	72a00021 	movk	w1, #0x1, lsl #16
 4000524:	b9000001 	str	w1, [x0]
 4000528:	36000102 	tbz	w2, #0, 4000548 <sd_readsector+0x90>
 400052c:	2a1503e1 	mov	w1, w21
 4000530:	52800200 	mov	w0, #0x10                  	// #16
 4000534:	72a22440 	movk	w0, #0x1122, lsl #16
 4000538:	97ffff18 	bl	4000198 <_start+0x198>
 400053c:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4000540:	f9440c00 	ldr	x0, [x0, #2072]
 4000544:	b5fffd40 	cbnz	x0, 40004ec <sd_readsector+0x34>
 4000548:	911f8280 	add	x0, x20, #0x7e0
 400054c:	f9400800 	ldr	x0, [x0, #16]
 4000550:	37000100 	tbnz	w0, #0, 4000570 <sd_readsector+0xb8>
 4000554:	53175aa1 	lsl	w1, w21, #9
 4000558:	52800200 	mov	w0, #0x10                  	// #16
 400055c:	72a22440 	movk	w0, #0x1122, lsl #16
 4000560:	97ffff0e 	bl	4000198 <_start+0x198>
 4000564:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4000568:	f9440c00 	ldr	x0, [x0, #2072]
 400056c:	b5fffc00 	cbnz	x0, 40004ec <sd_readsector+0x34>
 4000570:	52800400 	mov	w0, #0x20                  	// #32
 4000574:	97fffed9 	bl	40000d8 <_start+0xd8>
 4000578:	d2800001 	mov	x1, #0x0                   	// #0
 400057c:	350001c0 	cbnz	w0, 40005b4 <sd_readsector+0xfc>
 4000580:	d2800402 	mov	x2, #0x20                  	// #32
 4000584:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 4000588:	b9400040 	ldr	w0, [x2]
 400058c:	b8217ac0 	str	w0, [x22, x1, lsl #2]
 4000590:	91000421 	add	x1, x1, #0x1
 4000594:	f102003f 	cmp	x1, #0x80
 4000598:	54ffff81 	b.ne	4000588 <sd_readsector+0xd0>  // b.any
 400059c:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 40005a0:	f9440c00 	ldr	x0, [x0, #2072]
 40005a4:	52804013 	mov	w19, #0x200                 	// #512
 40005a8:	f100001f 	cmp	x0, #0x0
 40005ac:	1a9313f3 	csel	w19, wzr, w19, ne  // ne = any
 40005b0:	17ffffcf 	b	40004ec <sd_readsector+0x34>
 40005b4:	90000021 	adrp	x1, 4004000 <__func__.2797+0xca0>
 40005b8:	93407c00 	sxtw	x0, w0
 40005bc:	f9040c20 	str	x0, [x1, #2072]
 40005c0:	17ffffcb 	b	40004ec <sd_readsector+0x34>

00000000040005c4 <sd_init>:
 40005c4:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
 40005c8:	d2800203 	mov	x3, #0x10                  	// #16
 40005cc:	f2a7e403 	movk	x3, #0x3f20, lsl #16
 40005d0:	910003fd 	mov	x29, sp
 40005d4:	b9400060 	ldr	w0, [x3]
 40005d8:	d2801282 	mov	x2, #0x94                  	// #148
 40005dc:	f2a7e402 	movk	x2, #0x3f20, lsl #16
 40005e0:	a90153f3 	stp	x19, x20, [sp, #16]
 40005e4:	52800044 	mov	w4, #0x2                   	// #2
 40005e8:	a9025bf5 	stp	x21, x22, [sp, #32]
 40005ec:	2a0003e0 	mov	w0, w0
 40005f0:	a90363f7 	stp	x23, x24, [sp, #48]
 40005f4:	9268f000 	and	x0, x0, #0xffffffffff1fffff
 40005f8:	a9046bf9 	stp	x25, x26, [sp, #64]
 40005fc:	d2800593 	mov	x19, #0x2c                  	// #44
 4000600:	f2a7e613 	movk	x19, #0x3f30, lsl #16
 4000604:	f9002bfb 	str	x27, [sp, #80]
 4000608:	d284e215 	mov	x21, #0x2710                	// #10000
 400060c:	b9000060 	str	w0, [x3]
 4000610:	528012c0 	mov	w0, #0x96                  	// #150
 4000614:	b9000044 	str	w4, [x2]
 4000618:	97ffffa2 	bl	40004a0 <_start+0x4a0>
 400061c:	d2801381 	mov	x1, #0x9c                  	// #156
 4000620:	f2a7e401 	movk	x1, #0x3f20, lsl #16
 4000624:	52900000 	mov	w0, #0x8000                	// #32768
 4000628:	b9000020 	str	w0, [x1]
 400062c:	528012c0 	mov	w0, #0x96                  	// #150
 4000630:	97ffff9c 	bl	40004a0 <_start+0x4a0>
 4000634:	b900005f 	str	wzr, [x2]
 4000638:	b900003f 	str	wzr, [x1]
 400063c:	d2800d05 	mov	x5, #0x68                  	// #104
 4000640:	f2a7e405 	movk	x5, #0x3f20, lsl #16
 4000644:	b94000a0 	ldr	w0, [x5]
 4000648:	32110000 	orr	w0, w0, #0x8000
 400064c:	b90000a0 	str	w0, [x5]
 4000650:	b9400060 	ldr	w0, [x3]
 4000654:	32081400 	orr	w0, w0, #0x3f000000
 4000658:	b9000060 	str	w0, [x3]
 400065c:	b9000044 	str	w4, [x2]
 4000660:	528012c0 	mov	w0, #0x96                  	// #150
 4000664:	97ffff8f 	bl	40004a0 <_start+0x4a0>
 4000668:	52a00060 	mov	w0, #0x30000               	// #196608
 400066c:	b9000020 	str	w0, [x1]
 4000670:	528012c0 	mov	w0, #0x96                  	// #150
 4000674:	97ffff8b 	bl	40004a0 <_start+0x4a0>
 4000678:	b900005f 	str	wzr, [x2]
 400067c:	b900003f 	str	wzr, [x1]
 4000680:	d2800283 	mov	x3, #0x14                  	// #20
 4000684:	f2a7e403 	movk	x3, #0x3f20, lsl #16
 4000688:	b9400060 	ldr	w0, [x3]
 400068c:	32002c00 	orr	w0, w0, #0xfff
 4000690:	b9000060 	str	w0, [x3]
 4000694:	b9000044 	str	w4, [x2]
 4000698:	528012c0 	mov	w0, #0x96                  	// #150
 400069c:	97ffff81 	bl	40004a0 <_start+0x4a0>
 40006a0:	52a00780 	mov	w0, #0x3c0000              	// #3932160
 40006a4:	b9000020 	str	w0, [x1]
 40006a8:	528012c0 	mov	w0, #0x96                  	// #150
 40006ac:	97ffff7d 	bl	40004a0 <_start+0x4a0>
 40006b0:	b900005f 	str	wzr, [x2]
 40006b4:	b900003f 	str	wzr, [x1]
 40006b8:	d2801f80 	mov	x0, #0xfc                  	// #252
 40006bc:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40006c0:	90000034 	adrp	x20, 4004000 <__func__.2797+0xca0>
 40006c4:	911f8281 	add	x1, x20, #0x7e0
 40006c8:	b9400000 	ldr	w0, [x0]
 40006cc:	d3505c00 	ubfx	x0, x0, #16, #8
 40006d0:	f9000420 	str	x0, [x1, #8]
 40006d4:	d2800500 	mov	x0, #0x28                  	// #40
 40006d8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40006dc:	b900001f 	str	wzr, [x0]
 40006e0:	b9400260 	ldr	w0, [x19]
 40006e4:	32080000 	orr	w0, w0, #0x1000000
 40006e8:	b9000260 	str	w0, [x19]
 40006ec:	52800140 	mov	w0, #0xa                   	// #10
 40006f0:	9400087e 	bl	40028e8 <wait_micros>
 40006f4:	b9400260 	ldr	w0, [x19]
 40006f8:	36c001a0 	tbz	w0, #24, 400072c <sd_init+0x168>
 40006fc:	d10006b5 	sub	x21, x21, #0x1
 4000700:	b10006bf 	cmn	x21, #0x1
 4000704:	54ffff41 	b.ne	40006ec <sd_init+0x128>  // b.any
 4000708:	12800033 	mov	w19, #0xfffffffe            	// #-2
 400070c:	2a1303e0 	mov	w0, w19
 4000710:	f9402bfb 	ldr	x27, [sp, #80]
 4000714:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000718:	a9425bf5 	ldp	x21, x22, [sp, #32]
 400071c:	a94363f7 	ldp	x23, x24, [sp, #48]
 4000720:	a9446bf9 	ldp	x25, x26, [sp, #64]
 4000724:	a8c67bfd 	ldp	x29, x30, [sp], #96
 4000728:	d65f03c0 	ret
 400072c:	b4fffef5 	cbz	x21, 4000708 <sd_init+0x144>
 4000730:	b9400260 	ldr	w0, [x19]
 4000734:	52800021 	mov	w1, #0x1                   	// #1
 4000738:	72a001c1 	movk	w1, #0xe, lsl #16
 400073c:	2a010000 	orr	w0, w0, w1
 4000740:	b9000260 	str	w0, [x19]
 4000744:	52800140 	mov	w0, #0xa                   	// #10
 4000748:	94000868 	bl	40028e8 <wait_micros>
 400074c:	52835000 	mov	w0, #0x1a80                	// #6784
 4000750:	72a000c0 	movk	w0, #0x6, lsl #16
 4000754:	97ffff00 	bl	4000354 <_start+0x354>
 4000758:	2a0003f3 	mov	w19, w0
 400075c:	35fffd80 	cbnz	w0, 400070c <sd_init+0x148>
 4000760:	d2800702 	mov	x2, #0x38                  	// #56
 4000764:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 4000768:	12800001 	mov	w1, #0xffffffff            	// #-1
 400076c:	90000035 	adrp	x21, 4004000 <__func__.2797+0xca0>
 4000770:	b9000041 	str	w1, [x2]
 4000774:	d2800682 	mov	x2, #0x34                  	// #52
 4000778:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 400077c:	aa1503f7 	mov	x23, x21
 4000780:	b9000041 	str	w1, [x2]
 4000784:	911f8281 	add	x1, x20, #0x7e0
 4000788:	f9040ebf 	str	xzr, [x21, #2072]
 400078c:	f903f29f 	str	xzr, [x20, #2016]
 4000790:	a9017c3f 	stp	xzr, xzr, [x1, #16]
 4000794:	52800001 	mov	w1, #0x0                   	// #0
 4000798:	97fffe80 	bl	4000198 <_start+0x198>
 400079c:	f9440eb3 	ldr	x19, [x21, #2072]
 40007a0:	b5fffb73 	cbnz	x19, 400070c <sd_init+0x148>
 40007a4:	52803541 	mov	w1, #0x1aa                 	// #426
 40007a8:	52a10040 	mov	w0, #0x8020000             	// #134348800
 40007ac:	97fffe7b 	bl	4000198 <_start+0x198>
 40007b0:	f9440eb3 	ldr	x19, [x21, #2072]
 40007b4:	b5fffad3 	cbnz	x19, 400070c <sd_init+0x148>
 40007b8:	52900016 	mov	w22, #0x8000                	// #32768
 40007bc:	72aa3ff6 	movk	w22, #0x51ff, lsl #16
 40007c0:	d28000d5 	mov	x21, #0x6                   	// #6
 40007c4:	d2800001 	mov	x1, #0x0                   	// #0
 40007c8:	1400000f 	b	4000804 <sd_init+0x240>
 40007cc:	52803200 	mov	w0, #0x190                 	// #400
 40007d0:	97ffff34 	bl	40004a0 <_start+0x4a0>
 40007d4:	2a1603e1 	mov	w1, w22
 40007d8:	52b52040 	mov	w0, #0xa9020000            	// #-1459486720
 40007dc:	97fffe6f 	bl	4000198 <_start+0x198>
 40007e0:	93407c01 	sxtw	x1, w0
 40007e4:	36f80100 	tbz	w0, #31, 4000804 <sd_init+0x240>
 40007e8:	7211201f 	tst	w0, #0xff8000
 40007ec:	540000c0 	b.eq	4000804 <sd_init+0x240>  // b.none
 40007f0:	36f000a0 	tbz	w0, #30, 4000804 <sd_init+0x240>
 40007f4:	f9440ef3 	ldr	x19, [x23, #2072]
 40007f8:	d1000660 	sub	x0, x19, #0x1
 40007fc:	b1000c1f 	cmn	x0, #0x3
 4000800:	54fff869 	b.ls	400070c <sd_init+0x148>  // b.plast
 4000804:	b7f80381 	tbnz	x1, #63, 4000874 <sd_init+0x2b0>
 4000808:	d10006b5 	sub	x21, x21, #0x1
 400080c:	b10006bf 	cmn	x21, #0x1
 4000810:	54fffde1 	b.ne	40007cc <sd_init+0x208>  // b.any
 4000814:	12800013 	mov	w19, #0xffffffff            	// #-1
 4000818:	17ffffbd 	b	400070c <sd_init+0x148>
 400081c:	52800020 	mov	w0, #0x1                   	// #1
 4000820:	94000832 	bl	40028e8 <wait_micros>
 4000824:	aa1603e0 	mov	x0, x22
 4000828:	aa0003f6 	mov	x22, x0
 400082c:	14000043 	b	4000938 <sd_init+0x374>
 4000830:	d2800501 	mov	x1, #0x28                  	// #40
 4000834:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 4000838:	b9400020 	ldr	w0, [x1]
 400083c:	321f0000 	orr	w0, w0, #0x2
 4000840:	b9000020 	str	w0, [x1]
 4000844:	911f8281 	add	x1, x20, #0x7e0
 4000848:	f9400820 	ldr	x0, [x1, #16]
 400084c:	36c80080 	tbz	w0, #25, 400085c <sd_init+0x298>
 4000850:	b4000078 	cbz	x24, 400085c <sd_init+0x298>
 4000854:	927ff800 	and	x0, x0, #0xfffffffffffffffe
 4000858:	f9000820 	str	x0, [x1, #16]
 400085c:	911f8294 	add	x20, x20, #0x7e0
 4000860:	92401ea1 	and	x1, x21, #0xff
 4000864:	f9400a95 	ldr	x21, [x20, #16]
 4000868:	aa0102a1 	orr	x1, x21, x1
 400086c:	f9000a81 	str	x1, [x20, #16]
 4000870:	17ffffa7 	b	400070c <sd_init+0x148>
 4000874:	b4fffd15 	cbz	x21, 4000814 <sd_init+0x250>
 4000878:	f271203f 	tst	x1, #0xff8000
 400087c:	54fff460 	b.eq	4000708 <sd_init+0x144>  // b.none
 4000880:	92620038 	and	x24, x1, #0x40000000
 4000884:	531e7835 	ubfx	w21, w1, #30, #1
 4000888:	52a04020 	mov	w0, #0x2010000             	// #33619968
 400088c:	52800001 	mov	w1, #0x0                   	// #0
 4000890:	97fffe42 	bl	4000198 <_start+0x198>
 4000894:	52800001 	mov	w1, #0x0                   	// #0
 4000898:	52a06040 	mov	w0, #0x3020000             	// #50462720
 400089c:	97fffe3f 	bl	4000198 <_start+0x198>
 40008a0:	f9440ef3 	ldr	x19, [x23, #2072]
 40008a4:	93407c00 	sxtw	x0, w0
 40008a8:	f903f280 	str	x0, [x20, #2016]
 40008ac:	b5fff313 	cbnz	x19, 400070c <sd_init+0x148>
 40008b0:	528f0800 	mov	w0, #0x7840                	// #30784
 40008b4:	72a02fa0 	movk	w0, #0x17d, lsl #16
 40008b8:	97fffea7 	bl	4000354 <_start+0x354>
 40008bc:	2a0003f3 	mov	w19, w0
 40008c0:	35fff260 	cbnz	w0, 400070c <sd_init+0x148>
 40008c4:	b947e281 	ldr	w1, [x20, #2016]
 40008c8:	52a0e060 	mov	w0, #0x7030000             	// #117637120
 40008cc:	97fffe33 	bl	4000198 <_start+0x198>
 40008d0:	f9440ef3 	ldr	x19, [x23, #2072]
 40008d4:	b5fff1d3 	cbnz	x19, 400070c <sd_init+0x148>
 40008d8:	52800040 	mov	w0, #0x2                   	// #2
 40008dc:	97fffdd5 	bl	4000030 <_start+0x30>
 40008e0:	35fff9a0 	cbnz	w0, 4000814 <sd_init+0x250>
 40008e4:	d2800080 	mov	x0, #0x4                   	// #4
 40008e8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 40008ec:	52800101 	mov	w1, #0x8                   	// #8
 40008f0:	72a00021 	movk	w1, #0x1, lsl #16
 40008f4:	b9000001 	str	w1, [x0]
 40008f8:	52800001 	mov	w1, #0x0                   	// #0
 40008fc:	52800200 	mov	w0, #0x10                  	// #16
 4000900:	72b66440 	movk	w0, #0xb322, lsl #16
 4000904:	97fffe25 	bl	4000198 <_start+0x198>
 4000908:	f9440ef3 	ldr	x19, [x23, #2072]
 400090c:	b5fff013 	cbnz	x19, 400070c <sd_init+0x148>
 4000910:	52800400 	mov	w0, #0x20                  	// #32
 4000914:	97fffdf1 	bl	40000d8 <_start+0xd8>
 4000918:	2a0003f3 	mov	w19, w0
 400091c:	35fff7c0 	cbnz	w0, 4000814 <sd_init+0x250>
 4000920:	911f8299 	add	x25, x20, #0x7e0
 4000924:	d280049a 	mov	x26, #0x24                  	// #36
 4000928:	f2a7e61a 	movk	x26, #0x3f30, lsl #16
 400092c:	d280041b 	mov	x27, #0x20                  	// #32
 4000930:	f2a7e61b 	movk	x27, #0x3f30, lsl #16
 4000934:	d2800016 	mov	x22, #0x0                   	// #0
 4000938:	b9400340 	ldr	w0, [x26]
 400093c:	365ff700 	tbz	w0, #11, 400081c <sd_init+0x258>
 4000940:	910006c0 	add	x0, x22, #0x1
 4000944:	b9400361 	ldr	w1, [x27]
 4000948:	8b160f36 	add	x22, x25, x22, lsl #3
 400094c:	f100081f 	cmp	x0, #0x2
 4000950:	2a0103e1 	mov	w1, w1
 4000954:	f9000ac1 	str	x1, [x22, #16]
 4000958:	54fff681 	b.ne	4000828 <sd_init+0x264>  // b.any
 400095c:	f9400b20 	ldr	x0, [x25, #16]
 4000960:	3657f720 	tbz	w0, #10, 4000844 <sd_init+0x280>
 4000964:	f9400321 	ldr	x1, [x25]
 4000968:	52b0c040 	mov	w0, #0x86020000            	// #-2046689280
 400096c:	321f0021 	orr	w1, w1, #0x2
 4000970:	97fffe0a 	bl	4000198 <_start+0x198>
 4000974:	f9440ee0 	ldr	x0, [x23, #2072]
 4000978:	b4fff5c0 	cbz	x0, 4000830 <sd_init+0x26c>
 400097c:	2a0003f3 	mov	w19, w0
 4000980:	17ffff63 	b	400070c <sd_init+0x148>
 4000984:	00000000 	.inst	0x00000000 ; undefined

0000000004000988 <memcpy>:
 4000988:	b40000e2 	cbz	x2, 40009a4 <memcpy+0x1c>
 400098c:	d2800003 	mov	x3, #0x0                   	// #0
 4000990:	38636824 	ldrb	w4, [x1, x3]
 4000994:	38236804 	strb	w4, [x0, x3]
 4000998:	91000463 	add	x3, x3, #0x1
 400099c:	eb03005f 	cmp	x2, x3
 40009a0:	54ffff81 	b.ne	4000990 <memcpy+0x8>  // b.any
 40009a4:	d65f03c0 	ret

00000000040009a8 <strlen>:
 40009a8:	aa0003e3 	mov	x3, x0
 40009ac:	d2800000 	mov	x0, #0x0                   	// #0
 40009b0:	14000002 	b	40009b8 <strlen+0x10>
 40009b4:	aa0203e0 	mov	x0, x2
 40009b8:	38606861 	ldrb	w1, [x3, x0]
 40009bc:	91000402 	add	x2, x0, #0x1
 40009c0:	35ffffa1 	cbnz	w1, 40009b4 <strlen+0xc>
 40009c4:	d65f03c0 	ret

00000000040009c8 <strcmp>:
 40009c8:	39400002 	ldrb	w2, [x0]
 40009cc:	39400024 	ldrb	w4, [x1]
 40009d0:	34000162 	cbz	w2, 40009fc <strcmp+0x34>
 40009d4:	6b04005f 	cmp	w2, w4
 40009d8:	54000181 	b.ne	4000a08 <strcmp+0x40>  // b.any
 40009dc:	d2800022 	mov	x2, #0x1                   	// #1
 40009e0:	14000002 	b	40009e8 <strcmp+0x20>
 40009e4:	54000121 	b.ne	4000a08 <strcmp+0x40>  // b.any
 40009e8:	38626803 	ldrb	w3, [x0, x2]
 40009ec:	38626824 	ldrb	w4, [x1, x2]
 40009f0:	91000442 	add	x2, x2, #0x1
 40009f4:	6b04007f 	cmp	w3, w4
 40009f8:	35ffff63 	cbnz	w3, 40009e4 <strcmp+0x1c>
 40009fc:	7100009f 	cmp	w4, #0x0
 4000a00:	1a9f07e0 	cset	w0, ne  // ne = any
 4000a04:	d65f03c0 	ret
 4000a08:	52800020 	mov	w0, #0x1                   	// #1
 4000a0c:	d65f03c0 	ret

0000000004000a10 <strcpy>:
 4000a10:	39400022 	ldrb	w2, [x1]
 4000a14:	aa0003e3 	mov	x3, x0
 4000a18:	340000a2 	cbz	w2, 4000a2c <strcpy+0x1c>
 4000a1c:	d503201f 	nop
 4000a20:	38001462 	strb	w2, [x3], #1
 4000a24:	38401c22 	ldrb	w2, [x1, #1]!
 4000a28:	35ffffc2 	cbnz	w2, 4000a20 <strcpy+0x10>
 4000a2c:	3900007f 	strb	wzr, [x3]
 4000a30:	d65f03c0 	ret
 4000a34:	d503201f 	nop

0000000004000a38 <strncpy>:
 4000a38:	b4000182 	cbz	x2, 4000a68 <strncpy+0x30>
 4000a3c:	39400024 	ldrb	w4, [x1]
 4000a40:	d2800003 	mov	x3, #0x0                   	// #0
 4000a44:	39000004 	strb	w4, [x0]
 4000a48:	350000a4 	cbnz	w4, 4000a5c <strncpy+0x24>
 4000a4c:	14000007 	b	4000a68 <strncpy+0x30>
 4000a50:	38636824 	ldrb	w4, [x1, x3]
 4000a54:	38236804 	strb	w4, [x0, x3]
 4000a58:	34000084 	cbz	w4, 4000a68 <strncpy+0x30>
 4000a5c:	91000463 	add	x3, x3, #0x1
 4000a60:	eb03005f 	cmp	x2, x3
 4000a64:	54ffff61 	b.ne	4000a50 <strncpy+0x18>  // b.any
 4000a68:	d65f03c0 	ret
 4000a6c:	d503201f 	nop

0000000004000a70 <utf16toascii>:
 4000a70:	79400022 	ldrh	w2, [x1]
 4000a74:	34000122 	cbz	w2, 4000a98 <utf16toascii+0x28>
 4000a78:	aa0003e2 	mov	x2, x0
 4000a7c:	d503201f 	nop
 4000a80:	39400024 	ldrb	w4, [x1]
 4000a84:	78402c23 	ldrh	w3, [x1, #2]!
 4000a88:	38001444 	strb	w4, [x2], #1
 4000a8c:	35ffffa3 	cbnz	w3, 4000a80 <utf16toascii+0x10>
 4000a90:	3900005f 	strb	wzr, [x2]
 4000a94:	d65f03c0 	ret
 4000a98:	aa0003e2 	mov	x2, x0
 4000a9c:	3900005f 	strb	wzr, [x2]
 4000aa0:	d65f03c0 	ret
 4000aa4:	d503201f 	nop

0000000004000aa8 <asciitoutf16>:
 4000aa8:	39400022 	ldrb	w2, [x1]
 4000aac:	aa0003e3 	mov	x3, x0
 4000ab0:	340000a2 	cbz	w2, 4000ac4 <asciitoutf16+0x1c>
 4000ab4:	d503201f 	nop
 4000ab8:	78002462 	strh	w2, [x3], #2
 4000abc:	38401c22 	ldrb	w2, [x1, #1]!
 4000ac0:	35ffffc2 	cbnz	w2, 4000ab8 <asciitoutf16+0x10>
 4000ac4:	7900007f 	strh	wzr, [x3]
 4000ac8:	d65f03c0 	ret
 4000acc:	d503201f 	nop

0000000004000ad0 <strcat>:
 4000ad0:	aa0003e3 	mov	x3, x0
 4000ad4:	38401402 	ldrb	w2, [x0], #1
 4000ad8:	35ffffc2 	cbnz	w2, 4000ad0 <strcat>
 4000adc:	39400022 	ldrb	w2, [x1]
 4000ae0:	aa0303e0 	mov	x0, x3
 4000ae4:	34000082 	cbz	w2, 4000af4 <strcat+0x24>
 4000ae8:	38001402 	strb	w2, [x0], #1
 4000aec:	38401c22 	ldrb	w2, [x1, #1]!
 4000af0:	35ffffc2 	cbnz	w2, 4000ae8 <strcat+0x18>
 4000af4:	3900001f 	strb	wzr, [x0]
 4000af8:	aa0303e0 	mov	x0, x3
 4000afc:	d65f03c0 	ret

0000000004000b00 <strtok>:
 4000b00:	90000027 	adrp	x7, 4004000 <__func__.2797+0xca0>
 4000b04:	b4000740 	cbz	x0, 4000bec <strtok+0xec>
 4000b08:	912000e2 	add	x2, x7, #0x800
 4000b0c:	39400004 	ldrb	w4, [x0]
 4000b10:	f90400e0 	str	x0, [x7, #2048]
 4000b14:	f9000440 	str	x0, [x2, #8]
 4000b18:	34000704 	cbz	w4, 4000bf8 <strtok+0xf8>
 4000b1c:	39400026 	ldrb	w6, [x1]
 4000b20:	aa0003e5 	mov	x5, x0
 4000b24:	d503201f 	nop
 4000b28:	34000126 	cbz	w6, 4000b4c <strtok+0x4c>
 4000b2c:	6b0400df 	cmp	w6, w4
 4000b30:	540004e0 	b.eq	4000bcc <strtok+0xcc>  // b.none
 4000b34:	aa0103e3 	mov	x3, x1
 4000b38:	14000002 	b	4000b40 <strtok+0x40>
 4000b3c:	54000480 	b.eq	4000bcc <strtok+0xcc>  // b.none
 4000b40:	38401c62 	ldrb	w2, [x3, #1]!
 4000b44:	6b04005f 	cmp	w2, w4
 4000b48:	35ffffa2 	cbnz	w2, 4000b3c <strtok+0x3c>
 4000b4c:	38401ca4 	ldrb	w4, [x5, #1]!
 4000b50:	35fffec4 	cbnz	w4, 4000b28 <strtok+0x28>
 4000b54:	912000e1 	add	x1, x7, #0x800
 4000b58:	39400002 	ldrb	w2, [x0]
 4000b5c:	f9000825 	str	x5, [x1, #16]
 4000b60:	912000e1 	add	x1, x7, #0x800
 4000b64:	f9000420 	str	x0, [x1, #8]
 4000b68:	35000202 	cbnz	w2, 4000ba8 <strtok+0xa8>
 4000b6c:	912000e1 	add	x1, x7, #0x800
 4000b70:	f9400823 	ldr	x3, [x1, #16]
 4000b74:	eb00007f 	cmp	x3, x0
 4000b78:	54000369 	b.ls	4000be4 <strtok+0xe4>  // b.plast
 4000b7c:	91000401 	add	x1, x0, #0x1
 4000b80:	91000463 	add	x3, x3, #0x1
 4000b84:	14000002 	b	4000b8c <strtok+0x8c>
 4000b88:	540002a0 	b.eq	4000bdc <strtok+0xdc>  // b.none
 4000b8c:	39400022 	ldrb	w2, [x1]
 4000b90:	aa0103e0 	mov	x0, x1
 4000b94:	91000421 	add	x1, x1, #0x1
 4000b98:	eb03003f 	cmp	x1, x3
 4000b9c:	34ffff62 	cbz	w2, 4000b88 <strtok+0x88>
 4000ba0:	912000e1 	add	x1, x7, #0x800
 4000ba4:	f9000420 	str	x0, [x1, #8]
 4000ba8:	d2800003 	mov	x3, #0x0                   	// #0
 4000bac:	14000003 	b	4000bb8 <strtok+0xb8>
 4000bb0:	38616802 	ldrb	w2, [x0, x1]
 4000bb4:	aa0103e3 	mov	x3, x1
 4000bb8:	91000461 	add	x1, x3, #0x1
 4000bbc:	35ffffa2 	cbnz	w2, 4000bb0 <strtok+0xb0>
 4000bc0:	8b030003 	add	x3, x0, x3
 4000bc4:	f90400e3 	str	x3, [x7, #2048]
 4000bc8:	d65f03c0 	ret
 4000bcc:	390000bf 	strb	wzr, [x5]
 4000bd0:	38401ca4 	ldrb	w4, [x5, #1]!
 4000bd4:	35fffaa4 	cbnz	w4, 4000b28 <strtok+0x28>
 4000bd8:	17ffffdf 	b	4000b54 <strtok+0x54>
 4000bdc:	912000e7 	add	x7, x7, #0x800
 4000be0:	f90004e0 	str	x0, [x7, #8]
 4000be4:	d2800000 	mov	x0, #0x0                   	// #0
 4000be8:	d65f03c0 	ret
 4000bec:	f94400e0 	ldr	x0, [x7, #2048]
 4000bf0:	39400002 	ldrb	w2, [x0]
 4000bf4:	17ffffdb 	b	4000b60 <strtok+0x60>
 4000bf8:	f9000840 	str	x0, [x2, #16]
 4000bfc:	17ffffdc 	b	4000b6c <strtok+0x6c>

0000000004000c00 <memset>:
 4000c00:	b40000e2 	cbz	x2, 4000c1c <memset+0x1c>
 4000c04:	12001c21 	and	w1, w1, #0xff
 4000c08:	aa0003e3 	mov	x3, x0
 4000c0c:	8b020002 	add	x2, x0, x2
 4000c10:	38001461 	strb	w1, [x3], #1
 4000c14:	eb02007f 	cmp	x3, x2
 4000c18:	54ffffc1 	b.ne	4000c10 <memset+0x10>  // b.any
 4000c1c:	d65f03c0 	ret

0000000004000c20 <kernel_main>:
 4000c20:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4000c24:	910da000 	add	x0, x0, #0x368
 4000c28:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 4000c2c:	910003fd 	mov	x29, sp
 4000c30:	a9400c02 	ldp	x2, x3, [x0]
 4000c34:	f9000bf3 	str	x19, [sp, #16]
 4000c38:	f9400800 	ldr	x0, [x0, #16]
 4000c3c:	a9028fa2 	stp	x2, x3, [x29, #40]
 4000c40:	f9001fa0 	str	x0, [x29, #56]
 4000c44:	94000869 	bl	4002de8 <mu_init>
 4000c48:	940008b6 	bl	4002f20 <mu_read_byte>
 4000c4c:	12001c00 	and	w0, w0, #0xff
 4000c50:	7100341f 	cmp	w0, #0xd
 4000c54:	54ffffa1 	b.ne	4000c48 <kernel_main+0x28>  // b.any
 4000c58:	90000033 	adrp	x19, 4004000 <__func__.2797+0xca0>
 4000c5c:	f0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4000c60:	91030000 	add	x0, x0, #0xc0
 4000c64:	f943de61 	ldr	x1, [x19, #1976]
 4000c68:	940007e4 	bl	4002bf8 <kprintf>
 4000c6c:	97fffe56 	bl	40005c4 <sd_init>
 4000c70:	340001a0 	cbz	w0, 4000ca4 <kernel_main+0x84>
 4000c74:	3100041f 	cmn	w0, #0x1
 4000c78:	54000300 	b.eq	4000cd8 <kernel_main+0xb8>  // b.none
 4000c7c:	3100081f 	cmn	w0, #0x2
 4000c80:	54000340 	b.eq	4000ce8 <kernel_main+0xc8>  // b.none
 4000c84:	f0000003 	adrp	x3, 4003000 <atag_display+0x58>
 4000c88:	f0000002 	adrp	x2, 4003000 <atag_display+0x58>
 4000c8c:	f0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4000c90:	91040063 	add	x3, x3, #0x100
 4000c94:	9102c042 	add	x2, x2, #0xb0
 4000c98:	52800381 	mov	w1, #0x1c                  	// #28
 4000c9c:	91048000 	add	x0, x0, #0x120
 4000ca0:	940007f4 	bl	4002c70 <__panic>
 4000ca4:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4000ca8:	9109c000 	add	x0, x0, #0x270
 4000cac:	940007d3 	bl	4002bf8 <kprintf>
 4000cb0:	940002ec 	bl	4001860 <mem_init>
 4000cb4:	9100a3a0 	add	x0, x29, #0x28
 4000cb8:	9400008a 	bl	4000ee0 <fat32_init>
 4000cbc:	f943da73 	ldr	x19, [x19, #1968]
 4000cc0:	f9000260 	str	x0, [x19]
 4000cc4:	9400064d 	bl	40025f8 <shell_loop>
 4000cc8:	52800000 	mov	w0, #0x0                   	// #0
 4000ccc:	f9400bf3 	ldr	x19, [sp, #16]
 4000cd0:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4000cd4:	d65f03c0 	ret
 4000cd8:	f0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4000cdc:	91038000 	add	x0, x0, #0xe0
 4000ce0:	940007c6 	bl	4002bf8 <kprintf>
 4000ce4:	17ffffe8 	b	4000c84 <kernel_main+0x64>
 4000ce8:	f0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4000cec:	9103c000 	add	x0, x0, #0xf0
 4000cf0:	940007c2 	bl	4002bf8 <kprintf>
 4000cf4:	17ffffe4 	b	4000c84 <kernel_main+0x64>

0000000004000cf8 <mbr_parse>:
 4000cf8:	d10983ff 	sub	sp, sp, #0x260
 4000cfc:	a9007bfd 	stp	x29, x30, [sp]
 4000d00:	910003fd 	mov	x29, sp
 4000d04:	a90153f3 	stp	x19, x20, [sp, #16]
 4000d08:	aa0003f3 	mov	x19, x0
 4000d0c:	a9025bf5 	stp	x21, x22, [sp, #32]
 4000d10:	f0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4000d14:	a90363f7 	stp	x23, x24, [sp, #48]
 4000d18:	9105a000 	add	x0, x0, #0x168
 4000d1c:	aa0103f8 	mov	x24, x1
 4000d20:	a9046bf9 	stp	x25, x26, [sp, #64]
 4000d24:	f9002bfb 	str	x27, [sp, #80]
 4000d28:	940007b4 	bl	4002bf8 <kprintf>
 4000d2c:	f9400a62 	ldr	x2, [x19, #16]
 4000d30:	910183b7 	add	x23, x29, #0x60
 4000d34:	aa1703e1 	mov	x1, x23
 4000d38:	52800000 	mov	w0, #0x0                   	// #0
 4000d3c:	f000001a 	adrp	x26, 4003000 <atag_display+0x58>
 4000d40:	f0000019 	adrp	x25, 4003000 <atag_display+0x58>
 4000d44:	9106faf6 	add	x22, x23, #0x1be
 4000d48:	f000001b 	adrp	x27, 4003000 <atag_display+0x58>
 4000d4c:	d63f0040 	blr	x2
 4000d50:	91003313 	add	x19, x24, #0xc
 4000d54:	90000020 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4000d58:	9109c000 	add	x0, x0, #0x270
 4000d5c:	940007a7 	bl	4002bf8 <kprintf>
 4000d60:	911de3b5 	add	x21, x29, #0x778
 4000d64:	9106d2e1 	add	x1, x23, #0x1b4
 4000d68:	d2800142 	mov	x2, #0xa                   	// #10
 4000d6c:	aa1803e0 	mov	x0, x24
 4000d70:	97ffff06 	bl	4000988 <memcpy>
 4000d74:	9100f300 	add	x0, x24, #0x3c
 4000d78:	f0000017 	adrp	x23, 4003000 <atag_display+0x58>
 4000d7c:	f0000018 	adrp	x24, 4003000 <atag_display+0x58>
 4000d80:	9106235a 	add	x26, x26, #0x188
 4000d84:	9106a339 	add	x25, x25, #0x1a8
 4000d88:	9105e37b 	add	x27, x27, #0x178
 4000d8c:	91070318 	add	x24, x24, #0x1c0
 4000d90:	910762f7 	add	x23, x23, #0x1d8
 4000d94:	52800014 	mov	w20, #0x0                   	// #0
 4000d98:	d2800042 	mov	x2, #0x2                   	// #2
 4000d9c:	910983a1 	add	x1, x29, #0x260
 4000da0:	97fffefa 	bl	4000988 <memcpy>
 4000da4:	2a1403e1 	mov	w1, w20
 4000da8:	aa1b03e0 	mov	x0, x27
 4000dac:	94000793 	bl	4002bf8 <kprintf>
 4000db0:	91003273 	add	x19, x19, #0xc
 4000db4:	394002c1 	ldrb	w1, [x22]
 4000db8:	aa1a03e0 	mov	x0, x26
 4000dbc:	381f4261 	sturb	w1, [x19, #-12]
 4000dc0:	11000694 	add	w20, w20, #0x1
 4000dc4:	910042d6 	add	x22, x22, #0x10
 4000dc8:	910102b5 	add	x21, x21, #0x40
 4000dcc:	9400078b 	bl	4002bf8 <kprintf>
 4000dd0:	385f42c1 	ldurb	w1, [x22, #-12]
 4000dd4:	aa1903e0 	mov	x0, x25
 4000dd8:	381f5261 	sturb	w1, [x19, #-11]
 4000ddc:	94000787 	bl	4002bf8 <kprintf>
 4000de0:	b85c02a1 	ldur	w1, [x21, #-64]
 4000de4:	aa1803e0 	mov	x0, x24
 4000de8:	b81f8261 	stur	w1, [x19, #-8]
 4000dec:	94000783 	bl	4002bf8 <kprintf>
 4000df0:	b85d02a1 	ldur	w1, [x21, #-48]
 4000df4:	aa1703e0 	mov	x0, x23
 4000df8:	b81fc261 	stur	w1, [x19, #-4]
 4000dfc:	9400077f 	bl	4002bf8 <kprintf>
 4000e00:	7100129f 	cmp	w20, #0x4
 4000e04:	54fffd01 	b.ne	4000da4 <mbr_parse+0xac>  // b.any
 4000e08:	a9407bfd 	ldp	x29, x30, [sp]
 4000e0c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000e10:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4000e14:	a94363f7 	ldp	x23, x24, [sp, #48]
 4000e18:	a9446bf9 	ldp	x25, x26, [sp, #64]
 4000e1c:	f9402bfb 	ldr	x27, [sp, #80]
 4000e20:	910983ff 	add	sp, sp, #0x260
 4000e24:	d65f03c0 	ret

0000000004000e28 <ebpb_parse>:
 4000e28:	d10883ff 	sub	sp, sp, #0x220
 4000e2c:	aa0003e6 	mov	x6, x0
 4000e30:	91003425 	add	x5, x1, #0xd
 4000e34:	52800004 	mov	w4, #0x0                   	// #0
 4000e38:	a9007bfd 	stp	x29, x30, [sp]
 4000e3c:	910003fd 	mov	x29, sp
 4000e40:	f9000bf3 	str	x19, [sp, #16]
 4000e44:	aa0203f3 	mov	x19, x2
 4000e48:	394000a3 	ldrb	w3, [x5]
 4000e4c:	910030a5 	add	x5, x5, #0xc
 4000e50:	51002c63 	sub	w3, w3, #0xb
 4000e54:	12001c63 	and	w3, w3, #0xff
 4000e58:	7100047f 	cmp	w3, #0x1
 4000e5c:	54000369 	b.ls	4000ec8 <ebpb_parse+0xa0>  // b.plast
 4000e60:	11000484 	add	w4, w4, #0x1
 4000e64:	7100109f 	cmp	w4, #0x4
 4000e68:	54ffff01 	b.ne	4000e48 <ebpb_parse+0x20>  // b.any
 4000e6c:	b9400260 	ldr	w0, [x19]
 4000e70:	f94008c2 	ldr	x2, [x6, #16]
 4000e74:	910083a1 	add	x1, x29, #0x20
 4000e78:	d63f0040 	blr	x2
 4000e7c:	79408fa1 	ldrh	w1, [x29, #70]
 4000e80:	3940b7a5 	ldrb	w5, [x29, #45]
 4000e84:	3940c3a3 	ldrb	w3, [x29, #48]
 4000e88:	7100003f 	cmp	w1, #0x0
 4000e8c:	39001a65 	strb	w5, [x19, #6]
 4000e90:	39004263 	strb	w3, [x19, #16]
 4000e94:	b940a3a0 	ldr	w0, [x29, #160]
 4000e98:	79406fa6 	ldrh	w6, [x29, #54]
 4000e9c:	79407ba4 	ldrh	w4, [x29, #60]
 4000ea0:	1a810000 	csel	w0, w0, w1, eq  // eq = none
 4000ea4:	b940b3a2 	ldr	w2, [x29, #176]
 4000ea8:	79000a66 	strh	w6, [x19, #4]
 4000eac:	a9407bfd 	ldp	x29, x30, [sp]
 4000eb0:	79001264 	strh	w4, [x19, #8]
 4000eb4:	b9000e60 	str	w0, [x19, #12]
 4000eb8:	b9001662 	str	w2, [x19, #20]
 4000ebc:	f9400bf3 	ldr	x19, [sp, #16]
 4000ec0:	910883ff 	add	sp, sp, #0x220
 4000ec4:	d65f03c0 	ret
 4000ec8:	93407c84 	sxtw	x4, w4
 4000ecc:	8b040484 	add	x4, x4, x4, lsl #1
 4000ed0:	8b040821 	add	x1, x1, x4, lsl #2
 4000ed4:	b9401020 	ldr	w0, [x1, #16]
 4000ed8:	b9000260 	str	w0, [x19]
 4000edc:	17ffffe5 	b	4000e70 <ebpb_parse+0x48>

0000000004000ee0 <fat32_init>:
 4000ee0:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
 4000ee4:	910003fd 	mov	x29, sp
 4000ee8:	a90153f3 	stp	x19, x20, [sp, #16]
 4000eec:	aa0003f4 	mov	x20, x0
 4000ef0:	f90013f5 	str	x21, [sp, #32]
 4000ef4:	d2801700 	mov	x0, #0xb8                  	// #184
 4000ef8:	94000296 	bl	4001950 <malloc>
 4000efc:	aa0003f3 	mov	x19, x0
 4000f00:	b40004c0 	cbz	x0, 4000f98 <fat32_init+0xb8>
 4000f04:	910143b5 	add	x21, x29, #0x50
 4000f08:	aa1403e0 	mov	x0, x20
 4000f0c:	aa1503e1 	mov	x1, x21
 4000f10:	97ffff7a 	bl	4000cf8 <mbr_parse>
 4000f14:	9100c3a2 	add	x2, x29, #0x30
 4000f18:	aa1503e1 	mov	x1, x21
 4000f1c:	aa1403e0 	mov	x0, x20
 4000f20:	97ffffc2 	bl	4000e28 <ebpb_parse>
 4000f24:	3940dba1 	ldrb	w1, [x29, #54]
 4000f28:	b94063a0 	ldr	w0, [x29, #96]
 4000f2c:	794073a2 	ldrh	w2, [x29, #56]
 4000f30:	39028a61 	strb	w1, [x19, #162]
 4000f34:	29489ba3 	ldp	w3, w6, [x29, #68]
 4000f38:	0b000042 	add	w2, w2, w0
 4000f3c:	394103a1 	ldrb	w1, [x29, #64]
 4000f40:	aa1303e0 	mov	x0, x19
 4000f44:	a9401684 	ldp	x4, x5, [x20]
 4000f48:	a9009664 	stp	x4, x5, [x19, #8]
 4000f4c:	79406ba4 	ldrh	w4, [x29, #52]
 4000f50:	f9400a85 	ldr	x5, [x20, #16]
 4000f54:	1b030821 	madd	w1, w1, w3, w2
 4000f58:	b9000664 	str	w4, [x19, #4]
 4000f5c:	f9000e65 	str	x5, [x19, #24]
 4000f60:	79014264 	strh	w4, [x19, #160]
 4000f64:	29148a63 	stp	w3, w2, [x19, #164]
 4000f68:	29159a61 	stp	w1, w6, [x19, #172]
 4000f6c:	91028261 	add	x1, x19, #0xa0
 4000f70:	b8020402 	str	w2, [x0], #32
 4000f74:	d503201f 	nop
 4000f78:	f800841f 	str	xzr, [x0], #8
 4000f7c:	eb00003f 	cmp	x1, x0
 4000f80:	54ffffc1 	b.ne	4000f78 <fat32_init+0x98>  // b.any
 4000f84:	aa1303e0 	mov	x0, x19
 4000f88:	f94013f5 	ldr	x21, [sp, #32]
 4000f8c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4000f90:	a8c97bfd 	ldp	x29, x30, [sp], #144
 4000f94:	d65f03c0 	ret
 4000f98:	f0000003 	adrp	x3, 4003000 <atag_display+0x58>
 4000f9c:	f0000002 	adrp	x2, 4003000 <atag_display+0x58>
 4000fa0:	f0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4000fa4:	9107c063 	add	x3, x3, #0x1f0
 4000fa8:	9104c042 	add	x2, x2, #0x130
 4000fac:	52800821 	mov	w1, #0x41                  	// #65
 4000fb0:	91088000 	add	x0, x0, #0x220
 4000fb4:	9400072f 	bl	4002c70 <__panic>
 4000fb8:	17ffffd3 	b	4000f04 <fat32_init+0x24>
 4000fbc:	d503201f 	nop

0000000004000fc0 <fat32_read_cluster>:
 4000fc0:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 4000fc4:	910003fd 	mov	x29, sp
 4000fc8:	a902dff6 	stp	x22, x23, [sp, #40]
 4000fcc:	f90023f9 	str	x25, [sp, #64]
 4000fd0:	79414019 	ldrh	w25, [x0, #160]
 4000fd4:	39428817 	ldrb	w23, [x0, #162]
 4000fd8:	34000457 	cbz	w23, 4001060 <fat32_read_cluster+0xa0>
 4000fdc:	d1000821 	sub	x1, x1, #0x2
 4000fe0:	f90027ba 	str	x26, [x29, #72]
 4000fe4:	92401efa 	and	x26, x23, #0xff
 4000fe8:	f90013b5 	str	x21, [x29, #32]
 4000fec:	f9001fb8 	str	x24, [x29, #56]
 4000ff0:	aa0003f5 	mov	x21, x0
 4000ff4:	aa0203f8 	mov	x24, x2
 4000ff8:	a90153b3 	stp	x19, x20, [x29, #16]
 4000ffc:	9b1a7c3a 	mul	x26, x1, x26
 4001000:	52800014 	mov	w20, #0x0                   	// #0
 4001004:	d2800013 	mov	x19, #0x0                   	// #0
 4001008:	d2800016 	mov	x22, #0x0                   	// #0
 400100c:	d503201f 	nop
 4001010:	b940aea1 	ldr	w1, [x21, #172]
 4001014:	8b344302 	add	x2, x24, w20, uxtw
 4001018:	aa1503e0 	mov	x0, x21
 400101c:	0b190294 	add	w20, w20, w25
 4001020:	8b1a0021 	add	x1, x1, x26
 4001024:	8b130021 	add	x1, x1, x19
 4001028:	91000673 	add	x19, x19, #0x1
 400102c:	9400018b 	bl	4001658 <cd_read_sector>
 4001030:	8b0002d6 	add	x22, x22, x0
 4001034:	6b1302ff 	cmp	w23, w19
 4001038:	54fffec8 	b.hi	4001010 <fat32_read_cluster+0x50>  // b.pmore
 400103c:	aa1603e0 	mov	x0, x22
 4001040:	f94013b5 	ldr	x21, [x29, #32]
 4001044:	a94153b3 	ldp	x19, x20, [x29, #16]
 4001048:	f9401fb8 	ldr	x24, [x29, #56]
 400104c:	f94027ba 	ldr	x26, [x29, #72]
 4001050:	a942dff6 	ldp	x22, x23, [sp, #40]
 4001054:	f94023f9 	ldr	x25, [sp, #64]
 4001058:	a8c57bfd 	ldp	x29, x30, [sp], #80
 400105c:	d65f03c0 	ret
 4001060:	d2800016 	mov	x22, #0x0                   	// #0
 4001064:	f94023f9 	ldr	x25, [sp, #64]
 4001068:	aa1603e0 	mov	x0, x22
 400106c:	a942dff6 	ldp	x22, x23, [sp, #40]
 4001070:	a8c57bfd 	ldp	x29, x30, [sp], #80
 4001074:	d65f03c0 	ret

0000000004001078 <fat32_read_chain>:
 4001078:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 400107c:	910003fd 	mov	x29, sp
 4001080:	a90153f3 	stp	x19, x20, [sp, #16]
 4001084:	aa0003f3 	mov	x19, x0
 4001088:	a903e7f8 	stp	x24, x25, [sp, #56]
 400108c:	aa0103f4 	mov	x20, x1
 4001090:	a90573fb 	stp	x27, x28, [sp, #80]
 4001094:	aa0203f9 	mov	x25, x2
 4001098:	b940a818 	ldr	w24, [x0, #168]
 400109c:	d280001c 	mov	x28, #0x0                   	// #0
 40010a0:	f90013f5 	str	x21, [sp, #32]
 40010a4:	79414015 	ldrh	w21, [x0, #160]
 40010a8:	3942881b 	ldrb	w27, [x0, #162]
 40010ac:	92403ea0 	and	x0, x21, #0xffff
 40010b0:	94000228 	bl	4001950 <malloc>
 40010b4:	b4000260 	cbz	x0, 4001100 <fat32_read_chain+0x88>
 40010b8:	a902dfb6 	stp	x22, x23, [x29, #40]
 40010bc:	aa0003f6 	mov	x22, x0
 40010c0:	1ad50a97 	udiv	w23, w20, w21
 40010c4:	f90027ba 	str	x26, [x29, #72]
 40010c8:	2a1403fa 	mov	w26, w20
 40010cc:	2a1803f8 	mov	w24, w24
 40010d0:	aa0003e2 	mov	x2, x0
 40010d4:	aa1303e0 	mov	x0, x19
 40010d8:	1b15d2f4 	msub	w20, w23, w21, w20
 40010dc:	8b374301 	add	x1, x24, w23, uxtw
 40010e0:	9400015e 	bl	4001658 <cd_read_sector>
 40010e4:	38744ad4 	ldrb	w20, [x22, w20, uxtw]
 40010e8:	350001b4 	cbnz	w20, 400111c <fat32_read_chain+0xa4>
 40010ec:	d280001c 	mov	x28, #0x0                   	// #0
 40010f0:	aa1603e0 	mov	x0, x22
 40010f4:	94000273 	bl	4001ac0 <free>
 40010f8:	a942dfb6 	ldp	x22, x23, [x29, #40]
 40010fc:	f94027ba 	ldr	x26, [x29, #72]
 4001100:	aa1c03e0 	mov	x0, x28
 4001104:	f94013f5 	ldr	x21, [sp, #32]
 4001108:	a94153f3 	ldp	x19, x20, [sp, #16]
 400110c:	a943e7f8 	ldp	x24, x25, [sp, #56]
 4001110:	a94573fb 	ldp	x27, x28, [sp, #80]
 4001114:	a8c77bfd 	ldp	x29, x30, [sp], #112
 4001118:	d65f03c0 	ret
 400111c:	1b157f60 	mul	w0, w27, w21
 4001120:	92405c00 	and	x0, x0, #0xffffff
 4001124:	9400020b 	bl	4001950 <malloc>
 4001128:	f9000320 	str	x0, [x25]
 400112c:	b4fffe00 	cbz	x0, 40010ec <fat32_read_chain+0x74>
 4001130:	51000a81 	sub	w1, w20, #0x2
 4001134:	529ffda2 	mov	w2, #0xffed                	// #65517
 4001138:	72a1ffe2 	movk	w2, #0xfff, lsl #16
 400113c:	6b02003f 	cmp	w1, w2
 4001140:	54fffd68 	b.hi	40010ec <fat32_read_chain+0x74>  // b.pmore
 4001144:	d280001c 	mov	x28, #0x0                   	// #0
 4001148:	b9006ba2 	str	w2, [x29, #104]
 400114c:	d503201f 	nop
 4001150:	8b1c0002 	add	x2, x0, x28
 4001154:	2a1a03e1 	mov	w1, w26
 4001158:	aa1303e0 	mov	x0, x19
 400115c:	97ffff99 	bl	4000fc0 <fat32_read_cluster>
 4001160:	1ad50a84 	udiv	w4, w20, w21
 4001164:	8b00039c 	add	x28, x28, x0
 4001168:	2a1403fa 	mov	w26, w20
 400116c:	aa1603e2 	mov	x2, x22
 4001170:	aa1303e0 	mov	x0, x19
 4001174:	6b17009f 	cmp	w4, w23
 4001178:	540000a0 	b.eq	400118c <fat32_read_chain+0x114>  // b.none
 400117c:	8b244301 	add	x1, x24, w4, uxtw
 4001180:	b9006fa4 	str	w4, [x29, #108]
 4001184:	94000135 	bl	4001658 <cd_read_sector>
 4001188:	b9406fa4 	ldr	w4, [x29, #108]
 400118c:	1b15d094 	msub	w20, w4, w21, w20
 4001190:	2a0403f7 	mov	w23, w4
 4001194:	9bbb72a1 	umaddl	x1, w21, w27, x28
 4001198:	f9400320 	ldr	x0, [x25]
 400119c:	38744ac4 	ldrb	w4, [x22, w20, uxtw]
 40011a0:	b9006fa4 	str	w4, [x29, #108]
 40011a4:	94000231 	bl	4001a68 <realloc>
 40011a8:	f9000320 	str	x0, [x25]
 40011ac:	294d13a1 	ldp	w1, w4, [x29, #104]
 40011b0:	2a0403f4 	mov	w20, w4
 40011b4:	51000884 	sub	w4, w4, #0x2
 40011b8:	6b01009f 	cmp	w4, w1
 40011bc:	54fffca9 	b.ls	4001150 <fat32_read_chain+0xd8>  // b.plast
 40011c0:	17ffffcc 	b	40010f0 <fat32_read_chain+0x78>
 40011c4:	d503201f 	nop

00000000040011c8 <fat32_parse_name>:
 40011c8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 40011cc:	910003fd 	mov	x29, sp
 40011d0:	a90153f3 	stp	x19, x20, [sp, #16]
 40011d4:	aa0003f4 	mov	x20, x0
 40011d8:	a9025bf5 	stp	x21, x22, [sp, #32]
 40011dc:	aa0103f5 	mov	x21, x1
 40011e0:	39402c00 	ldrb	w0, [x0, #11]
 40011e4:	71003c1f 	cmp	w0, #0xf
 40011e8:	54000520 	b.eq	400128c <fat32_parse_name+0xc4>  // b.none
 40011ec:	d2800000 	mov	x0, #0x0                   	// #0
 40011f0:	38606a81 	ldrb	w1, [x20, x0]
 40011f4:	2a0003f6 	mov	w22, w0
 40011f8:	91000400 	add	x0, x0, #0x1
 40011fc:	f100201f 	cmp	x0, #0x8
 4001200:	34000961 	cbz	w1, 400132c <fat32_parse_name+0x164>
 4001204:	54ffff61 	b.ne	40011f0 <fat32_parse_name+0x28>  // b.any
 4001208:	aa0003f3 	mov	x19, x0
 400120c:	2a0003f6 	mov	w22, w0
 4001210:	aa1303e2 	mov	x2, x19
 4001214:	aa1403e1 	mov	x1, x20
 4001218:	aa1503e0 	mov	x0, x21
 400121c:	97fffe07 	bl	4000a38 <strncpy>
 4001220:	39402280 	ldrb	w0, [x20, #8]
 4001224:	34000760 	cbz	w0, 4001310 <fat32_parse_name+0x148>
 4001228:	f9001bb7 	str	x23, [x29, #48]
 400122c:	528005c0 	mov	w0, #0x2e                  	// #46
 4001230:	38336aa0 	strb	w0, [x21, x19]
 4001234:	39400280 	ldrb	w0, [x20]
 4001238:	340007e0 	cbz	w0, 4001334 <fat32_parse_name+0x16c>
 400123c:	39400680 	ldrb	w0, [x20, #1]
 4001240:	34000800 	cbz	w0, 4001340 <fat32_parse_name+0x178>
 4001244:	39400a80 	ldrb	w0, [x20, #2]
 4001248:	d2800062 	mov	x2, #0x3                   	// #3
 400124c:	2a0203f7 	mov	w23, w2
 4001250:	340007e0 	cbz	w0, 400134c <fat32_parse_name+0x184>
 4001254:	91000660 	add	x0, x19, #0x1
 4001258:	91002281 	add	x1, x20, #0x8
 400125c:	8b0002a0 	add	x0, x21, x0
 4001260:	110006d6 	add	w22, w22, #0x1
 4001264:	97fffdf5 	bl	4000a38 <strncpy>
 4001268:	0b1702c0 	add	w0, w22, w23
 400126c:	d2800016 	mov	x22, #0x0                   	// #0
 4001270:	3820cabf 	strb	wzr, [x21, w0, sxtw]
 4001274:	aa1603e0 	mov	x0, x22
 4001278:	f9401bb7 	ldr	x23, [x29, #48]
 400127c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001280:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4001284:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4001288:	d65f03c0 	ret
 400128c:	91000694 	add	x20, x20, #0x1
 4001290:	f9001bb7 	str	x23, [x29, #48]
 4001294:	d2800016 	mov	x22, #0x0                   	// #0
 4001298:	52800357 	mov	w23, #0x1a                  	// #26
 400129c:	d503201f 	nop
 40012a0:	385ff293 	ldurb	w19, [x20, #-1]
 40012a4:	aa1403e1 	mov	x1, x20
 40012a8:	d2800142 	mov	x2, #0xa                   	// #10
 40012ac:	910006d6 	add	x22, x22, #0x1
 40012b0:	12001273 	and	w19, w19, #0x1f
 40012b4:	51000673 	sub	w19, w19, #0x1
 40012b8:	1b177e73 	mul	w19, w19, w23
 40012bc:	8b33c2b3 	add	x19, x21, w19, sxtw
 40012c0:	aa1303e0 	mov	x0, x19
 40012c4:	97fffddd 	bl	4000a38 <strncpy>
 40012c8:	91003681 	add	x1, x20, #0xd
 40012cc:	d2800182 	mov	x2, #0xc                   	// #12
 40012d0:	91002a60 	add	x0, x19, #0xa
 40012d4:	97fffdd9 	bl	4000a38 <strncpy>
 40012d8:	91006e81 	add	x1, x20, #0x1b
 40012dc:	91008294 	add	x20, x20, #0x20
 40012e0:	d28001c2 	mov	x2, #0xe                   	// #14
 40012e4:	91005a60 	add	x0, x19, #0x16
 40012e8:	97fffdd4 	bl	4000a38 <strncpy>
 40012ec:	39402a80 	ldrb	w0, [x20, #10]
 40012f0:	71003c1f 	cmp	w0, #0xf
 40012f4:	54fffd60 	b.eq	40012a0 <fat32_parse_name+0xd8>  // b.none
 40012f8:	aa1603e0 	mov	x0, x22
 40012fc:	f9401bb7 	ldr	x23, [x29, #48]
 4001300:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001304:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4001308:	a8c47bfd 	ldp	x29, x30, [sp], #64
 400130c:	d65f03c0 	ret
 4001310:	38336abf 	strb	wzr, [x21, x19]
 4001314:	d2800016 	mov	x22, #0x0                   	// #0
 4001318:	aa1603e0 	mov	x0, x22
 400131c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001320:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4001324:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4001328:	d65f03c0 	ret
 400132c:	93407ed3 	sxtw	x19, w22
 4001330:	17ffffb8 	b	4001210 <fat32_parse_name+0x48>
 4001334:	d2800002 	mov	x2, #0x0                   	// #0
 4001338:	52800017 	mov	w23, #0x0                   	// #0
 400133c:	17ffffc6 	b	4001254 <fat32_parse_name+0x8c>
 4001340:	d2800022 	mov	x2, #0x1                   	// #1
 4001344:	2a0203f7 	mov	w23, w2
 4001348:	17ffffc3 	b	4001254 <fat32_parse_name+0x8c>
 400134c:	d2800042 	mov	x2, #0x2                   	// #2
 4001350:	2a0203f7 	mov	w23, w2
 4001354:	17ffffc0 	b	4001254 <fat32_parse_name+0x8c>

0000000004001358 <fat32_find_entry>:
 4001358:	b40008c2 	cbz	x2, 4001470 <fat32_find_entry+0x118>
 400135c:	d10983ff 	sub	sp, sp, #0x260
 4001360:	a9007bfd 	stp	x29, x30, [sp]
 4001364:	910003fd 	mov	x29, sp
 4001368:	a9046bf9 	stp	x25, x26, [sp, #64]
 400136c:	d000001a 	adrp	x26, 4003000 <atag_display+0x58>
 4001370:	9104c35a 	add	x26, x26, #0x130
 4001374:	a90153f3 	stp	x19, x20, [sp, #16]
 4001378:	a9025bf5 	stp	x21, x22, [sp, #32]
 400137c:	aa0103f9 	mov	x25, x1
 4001380:	a90363f7 	stp	x23, x24, [sp, #48]
 4001384:	aa0003f6 	mov	x22, x0
 4001388:	f9002bfb 	str	x27, [sp, #80]
 400138c:	aa0203f8 	mov	x24, x2
 4001390:	d000001b 	adrp	x27, 4003000 <atag_display+0x58>
 4001394:	910183b7 	add	x23, x29, #0x60
 4001398:	9100435a 	add	x26, x26, #0x10
 400139c:	d2800015 	mov	x21, #0x0                   	// #0
 40013a0:	9108c37b 	add	x27, x27, #0x230
 40013a4:	1400000c 	b	40013d4 <fat32_find_entry+0x7c>
 40013a8:	aa1603e1 	mov	x1, x22
 40013ac:	aa1403e0 	mov	x0, x20
 40013b0:	8b150273 	add	x19, x19, x21
 40013b4:	97fffdbd 	bl	4000aa8 <asciitoutf16>
 40013b8:	aa1703e1 	mov	x1, x23
 40013bc:	aa1403e0 	mov	x0, x20
 40013c0:	91000675 	add	x21, x19, #0x1
 40013c4:	97fffd81 	bl	40009c8 <strcmp>
 40013c8:	34000280 	cbz	w0, 4001418 <fat32_find_entry+0xc0>
 40013cc:	eb15031f 	cmp	x24, x21
 40013d0:	540003a9 	b.ls	4001444 <fat32_find_entry+0xec>  // b.plast
 40013d4:	aa1703e1 	mov	x1, x23
 40013d8:	8b151720 	add	x0, x25, x21, lsl #5
 40013dc:	97ffff7b 	bl	40011c8 <fat32_parse_name>
 40013e0:	aa0003f3 	mov	x19, x0
 40013e4:	aa1603e0 	mov	x0, x22
 40013e8:	97fffd70 	bl	40009a8 <strlen>
 40013ec:	91000400 	add	x0, x0, #0x1
 40013f0:	94000158 	bl	4001950 <malloc>
 40013f4:	aa0003f4 	mov	x20, x0
 40013f8:	b5fffd80 	cbnz	x0, 40013a8 <fat32_find_entry+0x50>
 40013fc:	aa1b03e3 	mov	x3, x27
 4001400:	aa1a03e2 	mov	x2, x26
 4001404:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001408:	528016c1 	mov	w1, #0xb6                  	// #182
 400140c:	91088000 	add	x0, x0, #0x220
 4001410:	94000618 	bl	4002c70 <__panic>
 4001414:	17ffffe5 	b	40013a8 <fat32_find_entry+0x50>
 4001418:	aa1403e0 	mov	x0, x20
 400141c:	940001a9 	bl	4001ac0 <free>
 4001420:	8b131720 	add	x0, x25, x19, lsl #5
 4001424:	f9402bfb 	ldr	x27, [sp, #80]
 4001428:	a9407bfd 	ldp	x29, x30, [sp]
 400142c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001430:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4001434:	a94363f7 	ldp	x23, x24, [sp, #48]
 4001438:	a9446bf9 	ldp	x25, x26, [sp, #64]
 400143c:	910983ff 	add	sp, sp, #0x260
 4001440:	d65f03c0 	ret
 4001444:	aa1403e0 	mov	x0, x20
 4001448:	9400019e 	bl	4001ac0 <free>
 400144c:	a9407bfd 	ldp	x29, x30, [sp]
 4001450:	d2800000 	mov	x0, #0x0                   	// #0
 4001454:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001458:	a9425bf5 	ldp	x21, x22, [sp, #32]
 400145c:	a94363f7 	ldp	x23, x24, [sp, #48]
 4001460:	a9446bf9 	ldp	x25, x26, [sp, #64]
 4001464:	f9402bfb 	ldr	x27, [sp, #80]
 4001468:	910983ff 	add	sp, sp, #0x260
 400146c:	d65f03c0 	ret
 4001470:	d2800000 	mov	x0, #0x0                   	// #0
 4001474:	d65f03c0 	ret

0000000004001478 <fat32_open>:
 4001478:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 400147c:	910003fd 	mov	x29, sp
 4001480:	a90153f3 	stp	x19, x20, [sp, #16]
 4001484:	aa0103f3 	mov	x19, x1
 4001488:	f9001bf7 	str	x23, [sp, #48]
 400148c:	aa0003f7 	mov	x23, x0
 4001490:	f90023f9 	str	x25, [sp, #64]
 4001494:	b4000b61 	cbz	x1, 4001600 <fat32_open+0x188>
 4001498:	aa1303e0 	mov	x0, x19
 400149c:	97fffd43 	bl	40009a8 <strlen>
 40014a0:	9400012c 	bl	4001950 <malloc>
 40014a4:	aa0003f9 	mov	x25, x0
 40014a8:	b4000c00 	cbz	x0, 4001628 <fat32_open+0x1b0>
 40014ac:	a9025bb5 	stp	x21, x22, [x29, #32]
 40014b0:	aa1303e1 	mov	x1, x19
 40014b4:	a904efba 	stp	x26, x27, [x29, #72]
 40014b8:	d0000015 	adrp	x21, 4003000 <atag_display+0x58>
 40014bc:	f9001fb8 	str	x24, [x29, #56]
 40014c0:	910962b5 	add	x21, x21, #0x258
 40014c4:	97fffd53 	bl	4000a10 <strcpy>
 40014c8:	aa1503e1 	mov	x1, x21
 40014cc:	aa1903e0 	mov	x0, x25
 40014d0:	97fffd8c 	bl	4000b00 <strtok>
 40014d4:	aa0003f4 	mov	x20, x0
 40014d8:	b4000ac0 	cbz	x0, 4001630 <fat32_open+0x1b8>
 40014dc:	b940b2e1 	ldr	w1, [x23, #176]
 40014e0:	9101a3b8 	add	x24, x29, #0x68
 40014e4:	aa1803e2 	mov	x2, x24
 40014e8:	aa1703e0 	mov	x0, x23
 40014ec:	97fffee3 	bl	4001078 <fat32_read_chain>
 40014f0:	d345fc02 	lsr	x2, x0, #5
 40014f4:	f94037a1 	ldr	x1, [x29, #104]
 40014f8:	aa1403e0 	mov	x0, x20
 40014fc:	97ffff97 	bl	4001358 <fat32_find_entry>
 4001500:	aa0003f3 	mov	x19, x0
 4001504:	b40002c0 	cbz	x0, 400155c <fat32_open+0xe4>
 4001508:	aa1503e1 	mov	x1, x21
 400150c:	d2800000 	mov	x0, #0x0                   	// #0
 4001510:	97fffd7c 	bl	4000b00 <strtok>
 4001514:	aa0003f4 	mov	x20, x0
 4001518:	b40003e0 	cbz	x0, 4001594 <fat32_open+0x11c>
 400151c:	36200216 	tbz	w22, #4, 400155c <fat32_open+0xe4>
 4001520:	f94037a0 	ldr	x0, [x29, #104]
 4001524:	79402a7b 	ldrh	w27, [x19, #20]
 4001528:	7940367a 	ldrh	w26, [x19, #26]
 400152c:	39402e76 	ldrb	w22, [x19, #11]
 4001530:	94000164 	bl	4001ac0 <free>
 4001534:	aa1803e2 	mov	x2, x24
 4001538:	0b1b4341 	add	w1, w26, w27, lsl #16
 400153c:	aa1703e0 	mov	x0, x23
 4001540:	97fffece 	bl	4001078 <fat32_read_chain>
 4001544:	f94037a1 	ldr	x1, [x29, #104]
 4001548:	d345fc02 	lsr	x2, x0, #5
 400154c:	aa1403e0 	mov	x0, x20
 4001550:	97ffff82 	bl	4001358 <fat32_find_entry>
 4001554:	aa0003f3 	mov	x19, x0
 4001558:	b5fffd80 	cbnz	x0, 4001508 <fat32_open+0x90>
 400155c:	d2800014 	mov	x20, #0x0                   	// #0
 4001560:	aa1903e0 	mov	x0, x25
 4001564:	94000157 	bl	4001ac0 <free>
 4001568:	f94037a0 	ldr	x0, [x29, #104]
 400156c:	94000155 	bl	4001ac0 <free>
 4001570:	f9401fb8 	ldr	x24, [x29, #56]
 4001574:	a9425bb5 	ldp	x21, x22, [x29, #32]
 4001578:	a944efba 	ldp	x26, x27, [x29, #72]
 400157c:	aa1403e0 	mov	x0, x20
 4001580:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001584:	f9401bf7 	ldr	x23, [sp, #48]
 4001588:	f94023f9 	ldr	x25, [sp, #64]
 400158c:	a8c77bfd 	ldp	x29, x30, [sp], #112
 4001590:	d65f03c0 	ret
 4001594:	d2800400 	mov	x0, #0x20                  	// #32
 4001598:	940000ee 	bl	4001950 <malloc>
 400159c:	aa0003f4 	mov	x20, x0
 40015a0:	b4fffe00 	cbz	x0, 4001560 <fat32_open+0xe8>
 40015a4:	39402e62 	ldrb	w2, [x19, #11]
 40015a8:	79403661 	ldrh	w1, [x19, #26]
 40015ac:	79402a60 	ldrh	w0, [x19, #20]
 40015b0:	39004282 	strb	w2, [x20, #16]
 40015b4:	f94037a6 	ldr	x6, [x29, #104]
 40015b8:	39403662 	ldrb	w2, [x19, #13]
 40015bc:	0b004020 	add	w0, w1, w0, lsl #16
 40015c0:	39004682 	strb	w2, [x20, #17]
 40015c4:	79401e65 	ldrh	w5, [x19, #14]
 40015c8:	79402264 	ldrh	w4, [x19, #16]
 40015cc:	79402663 	ldrh	w3, [x19, #18]
 40015d0:	79402e62 	ldrh	w2, [x19, #22]
 40015d4:	79403261 	ldrh	w1, [x19, #24]
 40015d8:	b9000280 	str	w0, [x20]
 40015dc:	b9401cc0 	ldr	w0, [x6, #28]
 40015e0:	f9000697 	str	x23, [x20, #8]
 40015e4:	79002685 	strh	w5, [x20, #18]
 40015e8:	79002a84 	strh	w4, [x20, #20]
 40015ec:	79002e83 	strh	w3, [x20, #22]
 40015f0:	79003282 	strh	w2, [x20, #24]
 40015f4:	79003681 	strh	w1, [x20, #26]
 40015f8:	b9001e80 	str	w0, [x20, #28]
 40015fc:	17ffffd9 	b	4001560 <fat32_open+0xe8>
 4001600:	d0000002 	adrp	x2, 4003000 <atag_display+0x58>
 4001604:	9104c042 	add	x2, x2, #0x130
 4001608:	d0000003 	adrp	x3, 4003000 <atag_display+0x58>
 400160c:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001610:	91092063 	add	x3, x3, #0x248
 4001614:	9100a042 	add	x2, x2, #0x28
 4001618:	52801f61 	mov	w1, #0xfb                  	// #251
 400161c:	91088000 	add	x0, x0, #0x220
 4001620:	94000594 	bl	4002c70 <__panic>
 4001624:	17ffff9d 	b	4001498 <fat32_open+0x20>
 4001628:	d2800014 	mov	x20, #0x0                   	// #0
 400162c:	17ffffd4 	b	400157c <fat32_open+0x104>
 4001630:	d2800400 	mov	x0, #0x20                  	// #32
 4001634:	940000c7 	bl	4001950 <malloc>
 4001638:	aa0003f4 	mov	x20, x0
 400163c:	b4fff920 	cbz	x0, 4001560 <fat32_open+0xe8>
 4001640:	b940b2e1 	ldr	w1, [x23, #176]
 4001644:	52800200 	mov	w0, #0x10                  	// #16
 4001648:	b9000281 	str	w1, [x20]
 400164c:	39004280 	strb	w0, [x20, #16]
 4001650:	17ffffc4 	b	4001560 <fat32_open+0xe8>
 4001654:	00000000 	.inst	0x00000000 ; undefined

0000000004001658 <cd_read_sector>:
 4001658:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
 400165c:	910003fd 	mov	x29, sp
 4001660:	a90153f3 	stp	x19, x20, [sp, #16]
 4001664:	92400c33 	and	x19, x1, #0xf
 4001668:	a9025bf5 	stp	x21, x22, [sp, #32]
 400166c:	aa0203f5 	mov	x21, x2
 4001670:	8b130c14 	add	x20, x0, x19, lsl #3
 4001674:	a90363f7 	stp	x23, x24, [sp, #48]
 4001678:	2940d817 	ldp	w23, w22, [x0, #4]
 400167c:	f90027fa 	str	x26, [sp, #72]
 4001680:	aa0003fa 	mov	x26, x0
 4001684:	f9401280 	ldr	x0, [x20, #32]
 4001688:	f9002ffc 	str	x28, [sp, #88]
 400168c:	2a0103f8 	mov	w24, w1
 4001690:	aa0103fc 	mov	x28, x1
 4001694:	b40002c0 	cbz	x0, 40016ec <cd_read_sector+0x94>
 4001698:	f1004001 	subs	x1, x0, #0x10
 400169c:	54000280 	b.eq	40016ec <cd_read_sector+0x94>  // b.none
 40016a0:	f85f8000 	ldur	x0, [x0, #-8]
 40016a4:	eb00039f 	cmp	x28, x0
 40016a8:	54000100 	b.eq	40016c8 <cd_read_sector+0x70>  // b.none
 40016ac:	d503201f 	nop
 40016b0:	f9400820 	ldr	x0, [x1, #16]
 40016b4:	f1004001 	subs	x1, x0, #0x10
 40016b8:	540001a0 	b.eq	40016ec <cd_read_sector+0x94>  // b.none
 40016bc:	f85f8000 	ldur	x0, [x0, #-8]
 40016c0:	eb1c001f 	cmp	x0, x28
 40016c4:	54ffff61 	b.ne	40016b0 <cd_read_sector+0x58>  // b.any
 40016c8:	b9400340 	ldr	w0, [x26]
 40016cc:	f9400021 	ldr	x1, [x1]
 40016d0:	eb1c001f 	cmp	x0, x28
 40016d4:	54000529 	b.ls	4001778 <cd_read_sector+0x120>  // b.plast
 40016d8:	aa1603e2 	mov	x2, x22
 40016dc:	aa1503e0 	mov	x0, x21
 40016e0:	97fffcaa 	bl	4000988 <memcpy>
 40016e4:	b9400341 	ldr	w1, [x26]
 40016e8:	1400001b 	b	4001754 <cd_read_sector+0xfc>
 40016ec:	f9002bbb 	str	x27, [x29, #80]
 40016f0:	d2800400 	mov	x0, #0x20                  	// #32
 40016f4:	94000097 	bl	4001950 <malloc>
 40016f8:	aa0003fb 	mov	x27, x0
 40016fc:	b9400340 	ldr	w0, [x26]
 4001700:	f900077c 	str	x28, [x27, #8]
 4001704:	2a0003e1 	mov	w1, w0
 4001708:	eb1c003f 	cmp	x1, x28
 400170c:	54000409 	b.ls	400178c <cd_read_sector+0x134>  // b.plast
 4001710:	f9400f42 	ldr	x2, [x26, #24]
 4001714:	aa1503e1 	mov	x1, x21
 4001718:	2a1c03e0 	mov	w0, w28
 400171c:	d63f0040 	blr	x2
 4001720:	340007a0 	cbz	w0, 4001814 <cd_read_sector+0x1bc>
 4001724:	b9400341 	ldr	w1, [x26]
 4001728:	aa1b03e0 	mov	x0, x27
 400172c:	f9401282 	ldr	x2, [x20, #32]
 4001730:	91001273 	add	x19, x19, #0x4
 4001734:	f8010415 	str	x21, [x0], #16
 4001738:	8b130f44 	add	x4, x26, x19, lsl #3
 400173c:	f9000b62 	str	x2, [x27, #16]
 4001740:	f9001280 	str	x0, [x20, #32]
 4001744:	f9000f64 	str	x4, [x27, #24]
 4001748:	b4000622 	cbz	x2, 400180c <cd_read_sector+0x1b4>
 400174c:	f9402bbb 	ldr	x27, [x29, #80]
 4001750:	f9000440 	str	x0, [x2, #8]
 4001754:	eb01039f 	cmp	x28, x1
 4001758:	f94027fa 	ldr	x26, [sp, #72]
 400175c:	9a9622e0 	csel	x0, x23, x22, cs  // cs = hs, nlast
 4001760:	f9402ffc 	ldr	x28, [sp, #88]
 4001764:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001768:	a9425bf5 	ldp	x21, x22, [sp, #32]
 400176c:	a94363f7 	ldp	x23, x24, [sp, #48]
 4001770:	a8c87bfd 	ldp	x29, x30, [sp], #128
 4001774:	d65f03c0 	ret
 4001778:	aa1703e2 	mov	x2, x23
 400177c:	aa1503e0 	mov	x0, x21
 4001780:	97fffc82 	bl	4000988 <memcpy>
 4001784:	b9400341 	ldr	w1, [x26]
 4001788:	17fffff3 	b	4001754 <cd_read_sector+0xfc>
 400178c:	f90023b9 	str	x25, [x29, #64]
 4001790:	9ad60af9 	udiv	x25, x23, x22
 4001794:	b9007fb9 	str	w25, [x29, #124]
 4001798:	7100033f 	cmp	w25, #0x0
 400179c:	5400052d 	b.le	4001840 <cd_read_sector+0x1e8>
 40017a0:	d0000002 	adrp	x2, 4003000 <atag_display+0x58>
 40017a4:	d0000001 	adrp	x1, 4003000 <atag_display+0x58>
 40017a8:	8b1602a3 	add	x3, x21, x22
 40017ac:	910ac042 	add	x2, x2, #0x2b0
 40017b0:	910a8021 	add	x1, x1, #0x2a0
 40017b4:	a9060ba1 	stp	x1, x2, [x29, #96]
 40017b8:	f9003ba3 	str	x3, [x29, #112]
 40017bc:	b9007bb9 	str	w25, [x29, #120]
 40017c0:	52800019 	mov	w25, #0x0                   	// #0
 40017c4:	14000005 	b	40017d8 <cd_read_sector+0x180>
 40017c8:	b9407fa1 	ldr	w1, [x29, #124]
 40017cc:	b9400340 	ldr	w0, [x26]
 40017d0:	6b19003f 	cmp	w1, w25
 40017d4:	54000300 	b.eq	4001834 <cd_read_sector+0x1dc>  // b.none
 40017d8:	b9407ba3 	ldr	w3, [x29, #120]
 40017dc:	4b000302 	sub	w2, w24, w0
 40017e0:	f9400f47 	ldr	x7, [x26, #24]
 40017e4:	11000739 	add	w25, w25, #0x1
 40017e8:	f9403ba1 	ldr	x1, [x29, #112]
 40017ec:	1b037c42 	mul	w2, w2, w3
 40017f0:	4b000040 	sub	w0, w2, w0
 40017f4:	d63f00e0 	blr	x7
 40017f8:	35fffe80 	cbnz	w0, 40017c8 <cd_read_sector+0x170>
 40017fc:	a9460ba0 	ldp	x0, x2, [x29, #96]
 4001800:	52800581 	mov	w1, #0x2c                  	// #44
 4001804:	94000011 	bl	4001848 <__assert>
 4001808:	17fffff0 	b	40017c8 <cd_read_sector+0x170>
 400180c:	f9402bbb 	ldr	x27, [x29, #80]
 4001810:	17ffffd1 	b	4001754 <cd_read_sector+0xfc>
 4001814:	528004a1 	mov	w1, #0x25                  	// #37
 4001818:	d0000002 	adrp	x2, 4003000 <atag_display+0x58>
 400181c:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001820:	91098042 	add	x2, x2, #0x260
 4001824:	910a8000 	add	x0, x0, #0x2a0
 4001828:	94000008 	bl	4001848 <__assert>
 400182c:	b9400341 	ldr	w1, [x26]
 4001830:	17ffffbe 	b	4001728 <cd_read_sector+0xd0>
 4001834:	2a0003e1 	mov	w1, w0
 4001838:	f94023b9 	ldr	x25, [x29, #64]
 400183c:	17ffffbb 	b	4001728 <cd_read_sector+0xd0>
 4001840:	f94023b9 	ldr	x25, [x29, #64]
 4001844:	17ffffb9 	b	4001728 <cd_read_sector+0xd0>

0000000004001848 <__assert>:
 4001848:	d0000004 	adrp	x4, 4003000 <atag_display+0x58>
 400184c:	aa0203e3 	mov	x3, x2
 4001850:	2a0103e2 	mov	w2, w1
 4001854:	aa0003e1 	mov	x1, x0
 4001858:	910cc080 	add	x0, x4, #0x330
 400185c:	140004e7 	b	4002bf8 <kprintf>

0000000004001860 <mem_init>:
 4001860:	f0000003 	adrp	x3, 4004000 <__func__.2797+0xca0>
 4001864:	f943d060 	ldr	x0, [x3, #1952]
 4001868:	91068001 	add	x1, x0, #0x1a0
 400186c:	d503201f 	nop
 4001870:	a9000000 	stp	x0, x0, [x0]
 4001874:	91004000 	add	x0, x0, #0x10
 4001878:	eb01001f 	cmp	x0, x1
 400187c:	54ffffa1 	b.ne	4001870 <mem_init+0x10>  // b.any
 4001880:	d2802000 	mov	x0, #0x100                 	// #256
 4001884:	b9400401 	ldr	w1, [x0, #4]
 4001888:	34000181 	cbz	w1, 40018b8 <mem_init+0x58>
 400188c:	52800042 	mov	w2, #0x2                   	// #2
 4001890:	72aa8822 	movk	w2, #0x5441, lsl #16
 4001894:	6b02003f 	cmp	w1, w2
 4001898:	54000061 	b.ne	40018a4 <mem_init+0x44>  // b.any
 400189c:	1400000f 	b	40018d8 <mem_init+0x78>
 40018a0:	540001c0 	b.eq	40018d8 <mem_init+0x78>  // b.none
 40018a4:	b9400001 	ldr	w1, [x0]
 40018a8:	8b214800 	add	x0, x0, w1, uxtw #2
 40018ac:	b9400401 	ldr	w1, [x0, #4]
 40018b0:	6b02003f 	cmp	w1, w2
 40018b4:	35ffff61 	cbnz	w1, 40018a0 <mem_init+0x40>
 40018b8:	d0000003 	adrp	x3, 4003000 <atag_display+0x58>
 40018bc:	d0000002 	adrp	x2, 4003000 <atag_display+0x58>
 40018c0:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40018c4:	910f0063 	add	x3, x3, #0x3c0
 40018c8:	910d8042 	add	x2, x2, #0x360
 40018cc:	52800581 	mov	w1, #0x2c                  	// #44
 40018d0:	910ec000 	add	x0, x0, #0x3b0
 40018d4:	140004e7 	b	4002c70 <__panic>
 40018d8:	b9400805 	ldr	w5, [x0, #8]
 40018dc:	f943c862 	ldr	x2, [x3, #1936]
 40018e0:	b9400c00 	ldr	w0, [x0, #12]
 40018e4:	f943e064 	ldr	x4, [x3, #1984]
 40018e8:	2a0003e0 	mov	w0, w0
 40018ec:	8b254005 	add	x5, x0, w5, uxtw
 40018f0:	a9001444 	stp	x4, x5, [x2]
 40018f4:	eb0400bf 	cmp	x5, x4
 40018f8:	54000049 	b.ls	4001900 <mem_init+0xa0>  // b.plast
 40018fc:	d65f03c0 	ret
 4001900:	d0000003 	adrp	x3, 4003000 <atag_display+0x58>
 4001904:	d0000002 	adrp	x2, 4003000 <atag_display+0x58>
 4001908:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 400190c:	910dc063 	add	x3, x3, #0x370
 4001910:	910d8042 	add	x2, x2, #0x360
 4001914:	52800441 	mov	w1, #0x22                  	// #34
 4001918:	910ec000 	add	x0, x0, #0x3b0
 400191c:	140004d5 	b	4002c70 <__panic>

0000000004001920 <bump_alloc>:
 4001920:	f0000002 	adrp	x2, 4004000 <__func__.2797+0xca0>
 4001924:	f0000003 	adrp	x3, 4004000 <__func__.2797+0xca0>
 4001928:	91001c01 	add	x1, x0, #0x7
 400192c:	f943c842 	ldr	x2, [x2, #1936]
 4001930:	927df021 	and	x1, x1, #0xfffffffffffffff8
 4001934:	f941c060 	ldr	x0, [x3, #896]
 4001938:	8b010001 	add	x1, x0, x1
 400193c:	f901c061 	str	x1, [x3, #896]
 4001940:	f9400442 	ldr	x2, [x2, #8]
 4001944:	eb02003f 	cmp	x1, x2
 4001948:	9a9f9000 	csel	x0, x0, xzr, ls  // ls = plast
 400194c:	d65f03c0 	ret

0000000004001950 <malloc>:
 4001950:	91006001 	add	x1, x0, #0x18
 4001954:	f100803f 	cmp	x1, #0x20
 4001958:	54000789 	b.ls	4001a48 <malloc+0xf8>  // b.plast
 400195c:	91005c02 	add	x2, x0, #0x17
 4001960:	dac01023 	clz	x3, x1
 4001964:	ea01005f 	tst	x2, x1
 4001968:	52800804 	mov	w4, #0x40                  	// #64
 400196c:	1a9f17e1 	cset	w1, eq  // eq = none
 4001970:	4b030084 	sub	w4, w4, w3
 4001974:	4b010084 	sub	w4, w4, w1
 4001978:	f0000005 	adrp	x5, 4004000 <__func__.2797+0xca0>
 400197c:	51001484 	sub	w4, w4, #0x5
 4001980:	f943d0a3 	ldr	x3, [x5, #1952]
 4001984:	93407c81 	sxtw	x1, w4
 4001988:	8b011063 	add	x3, x3, x1, lsl #4
 400198c:	f943d0a2 	ldr	x2, [x5, #1952]
 4001990:	8b011041 	add	x1, x2, x1, lsl #4
 4001994:	f9400421 	ldr	x1, [x1, #8]
 4001998:	d1002022 	sub	x2, x1, #0x8
 400199c:	eb01007f 	cmp	x3, x1
 40019a0:	540000c1 	b.ne	40019b8 <malloc+0x68>  // b.any
 40019a4:	1400000d 	b	40019d8 <malloc+0x88>
 40019a8:	f9400841 	ldr	x1, [x2, #16]
 40019ac:	eb01007f 	cmp	x3, x1
 40019b0:	d1002022 	sub	x2, x1, #0x8
 40019b4:	54000120 	b.eq	40019d8 <malloc+0x88>  // b.none
 40019b8:	b85f8021 	ldur	w1, [x1, #-8]
 40019bc:	3707ff61 	tbnz	w1, #0, 40019a8 <malloc+0x58>
 40019c0:	11000c00 	add	w0, w0, #0x3
 40019c4:	121e7400 	and	w0, w0, #0xfffffffc
 40019c8:	32000000 	orr	w0, w0, #0x1
 40019cc:	b8018440 	str	w0, [x2], #24
 40019d0:	aa0203e0 	mov	x0, x2
 40019d4:	d65f03c0 	ret
 40019d8:	11001484 	add	w4, w4, #0x5
 40019dc:	52800021 	mov	w1, #0x1                   	// #1
 40019e0:	f0000002 	adrp	x2, 4004000 <__func__.2797+0xca0>
 40019e4:	f943c8a7 	ldr	x7, [x5, #1936]
 40019e8:	1ac42021 	lsl	w1, w1, w4
 40019ec:	93407c21 	sxtw	x1, w1
 40019f0:	f941c044 	ldr	x4, [x2, #896]
 40019f4:	91001c21 	add	x1, x1, #0x7
 40019f8:	927df021 	and	x1, x1, #0xfffffffffffffff8
 40019fc:	f94004e5 	ldr	x5, [x7, #8]
 4001a00:	8b010081 	add	x1, x4, x1
 4001a04:	f901c041 	str	x1, [x2, #896]
 4001a08:	f100009f 	cmp	x4, #0x0
 4001a0c:	fa451022 	ccmp	x1, x5, #0x2, ne  // ne = any
 4001a10:	54000268 	b.hi	4001a5c <malloc+0x10c>  // b.pmore
 4001a14:	f9400063 	ldr	x3, [x3]
 4001a18:	aa0403e1 	mov	x1, x4
 4001a1c:	11000c00 	add	w0, w0, #0x3
 4001a20:	91006082 	add	x2, x4, #0x18
 4001a24:	121e7400 	and	w0, w0, #0xfffffffc
 4001a28:	f9400465 	ldr	x5, [x3, #8]
 4001a2c:	32000000 	orr	w0, w0, #0x1
 4001a30:	b8008420 	str	w0, [x1], #8
 4001a34:	aa0203e0 	mov	x0, x2
 4001a38:	a9009483 	stp	x3, x5, [x4, #8]
 4001a3c:	f9000461 	str	x1, [x3, #8]
 4001a40:	f90000a1 	str	x1, [x5]
 4001a44:	d65f03c0 	ret
 4001a48:	f0000005 	adrp	x5, 4004000 <__func__.2797+0xca0>
 4001a4c:	52800004 	mov	w4, #0x0                   	// #0
 4001a50:	d2800001 	mov	x1, #0x0                   	// #0
 4001a54:	f943d0a3 	ldr	x3, [x5, #1952]
 4001a58:	17ffffcd 	b	400198c <malloc+0x3c>
 4001a5c:	d2800002 	mov	x2, #0x0                   	// #0
 4001a60:	17ffffdc 	b	40019d0 <malloc+0x80>
 4001a64:	d503201f 	nop

0000000004001a68 <realloc>:
 4001a68:	b85e8002 	ldur	w2, [x0, #-24]
 4001a6c:	b4000221 	cbz	x1, 4001ab0 <realloc+0x48>
 4001a70:	aa0003e8 	mov	x8, x0
 4001a74:	2a0203e9 	mov	w9, w2
 4001a78:	aa0103e6 	mov	x6, x1
 4001a7c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 4001a80:	aa0103e0 	mov	x0, x1
 4001a84:	910003fd 	mov	x29, sp
 4001a88:	97ffffb2 	bl	4001950 <malloc>
 4001a8c:	b40000c0 	cbz	x0, 4001aa4 <realloc+0x3c>
 4001a90:	a8c17bfd 	ldp	x29, x30, [sp], #16
 4001a94:	eb06013f 	cmp	x9, x6
 4001a98:	aa0803e1 	mov	x1, x8
 4001a9c:	9a869122 	csel	x2, x9, x6, ls  // ls = plast
 4001aa0:	17fffbba 	b	4000988 <memcpy>
 4001aa4:	d2800000 	mov	x0, #0x0                   	// #0
 4001aa8:	a8c17bfd 	ldp	x29, x30, [sp], #16
 4001aac:	d65f03c0 	ret
 4001ab0:	121f7842 	and	w2, w2, #0xfffffffe
 4001ab4:	b81e8002 	stur	w2, [x0, #-24]
 4001ab8:	d2800000 	mov	x0, #0x0                   	// #0
 4001abc:	d65f03c0 	ret

0000000004001ac0 <free>:
 4001ac0:	b85e8001 	ldur	w1, [x0, #-24]
 4001ac4:	121f7821 	and	w1, w1, #0xfffffffe
 4001ac8:	b81e8001 	stur	w1, [x0, #-24]
 4001acc:	d65f03c0 	ret

0000000004001ad0 <read_cmd>:
 4001ad0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 4001ad4:	910003fd 	mov	x29, sp
 4001ad8:	a9025bf5 	stp	x21, x22, [sp, #32]
 4001adc:	f0000015 	adrp	x21, 4004000 <__func__.2797+0xca0>
 4001ae0:	aa0003f6 	mov	x22, x0
 4001ae4:	9109c2b5 	add	x21, x21, #0x270
 4001ae8:	a90153f3 	stp	x19, x20, [sp, #16]
 4001aec:	52800014 	mov	w20, #0x0                   	// #0
 4001af0:	9400050c 	bl	4002f20 <mu_read_byte>
 4001af4:	12001c13 	and	w19, w0, #0xff
 4001af8:	7100367f 	cmp	w19, #0xd
 4001afc:	540001e0 	b.eq	4001b38 <read_cmd+0x68>  // b.none
 4001b00:	7100227f 	cmp	w19, #0x8
 4001b04:	540000c0 	b.eq	4001b1c <read_cmd+0x4c>  // b.none
 4001b08:	540002e9 	b.ls	4001b64 <read_cmd+0x94>  // b.plast
 4001b0c:	7100267f 	cmp	w19, #0x9
 4001b10:	540003a0 	b.eq	4001b84 <read_cmd+0xb4>  // b.none
 4001b14:	7101fe7f 	cmp	w19, #0x7f
 4001b18:	54000281 	b.ne	4001b68 <read_cmd+0x98>  // b.any
 4001b1c:	350003b4 	cbnz	w20, 4001b90 <read_cmd+0xc0>
 4001b20:	528000e0 	mov	w0, #0x7                   	// #7
 4001b24:	940004e9 	bl	4002ec8 <mu_write_byte>
 4001b28:	940004fe 	bl	4002f20 <mu_read_byte>
 4001b2c:	12001c13 	and	w19, w0, #0xff
 4001b30:	7100367f 	cmp	w19, #0xd
 4001b34:	54fffe61 	b.ne	4001b00 <read_cmd+0x30>  // b.any
 4001b38:	710ffe9f 	cmp	w20, #0x3ff
 4001b3c:	540003ac 	b.gt	4001bb0 <read_cmd+0xe0>
 4001b40:	3834cadf 	strb	wzr, [x22, w20, sxtw]
 4001b44:	f0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4001b48:	9109c000 	add	x0, x0, #0x270
 4001b4c:	9400042b 	bl	4002bf8 <kprintf>
 4001b50:	aa1603e0 	mov	x0, x22
 4001b54:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001b58:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4001b5c:	a8c37bfd 	ldp	x29, x30, [sp], #48
 4001b60:	d65f03c0 	ret
 4001b64:	34fffc73 	cbz	w19, 4001af0 <read_cmd+0x20>
 4001b68:	2a1303e0 	mov	w0, w19
 4001b6c:	940004d7 	bl	4002ec8 <mu_write_byte>
 4001b70:	710ffe9f 	cmp	w20, #0x3ff
 4001b74:	54fffbec 	b.gt	4001af0 <read_cmd+0x20>
 4001b78:	3834cad3 	strb	w19, [x22, w20, sxtw]
 4001b7c:	11000694 	add	w20, w20, #0x1
 4001b80:	17ffffdc 	b	4001af0 <read_cmd+0x20>
 4001b84:	aa1503e0 	mov	x0, x21
 4001b88:	9400041c 	bl	4002bf8 <kprintf>
 4001b8c:	17ffffd9 	b	4001af0 <read_cmd+0x20>
 4001b90:	52800100 	mov	w0, #0x8                   	// #8
 4001b94:	940004cd 	bl	4002ec8 <mu_write_byte>
 4001b98:	52800400 	mov	w0, #0x20                  	// #32
 4001b9c:	940004cb 	bl	4002ec8 <mu_write_byte>
 4001ba0:	52800100 	mov	w0, #0x8                   	// #8
 4001ba4:	51000694 	sub	w20, w20, #0x1
 4001ba8:	940004c8 	bl	4002ec8 <mu_write_byte>
 4001bac:	17ffffd1 	b	4001af0 <read_cmd+0x20>
 4001bb0:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001bb4:	911f8000 	add	x0, x0, #0x7e0
 4001bb8:	94000410 	bl	4002bf8 <kprintf>
 4001bbc:	d2800000 	mov	x0, #0x0                   	// #0
 4001bc0:	17ffffe5 	b	4001b54 <read_cmd+0x84>
 4001bc4:	d503201f 	nop

0000000004001bc8 <parse_cmd>:
 4001bc8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 4001bcc:	910003fd 	mov	x29, sp
 4001bd0:	a90153f3 	stp	x19, x20, [sp, #16]
 4001bd4:	aa0003f3 	mov	x19, x0
 4001bd8:	d0000014 	adrp	x20, 4003000 <atag_display+0x58>
 4001bdc:	911fe294 	add	x20, x20, #0x7f8
 4001be0:	aa0103e0 	mov	x0, x1
 4001be4:	aa1403e1 	mov	x1, x20
 4001be8:	b910067f 	str	wzr, [x19, #4100]
 4001bec:	97fffbc5 	bl	4000b00 <strtok>
 4001bf0:	b5000180 	cbnz	x0, 4001c20 <parse_cmd+0x58>
 4001bf4:	14000015 	b	4001c48 <parse_cmd+0x80>
 4001bf8:	11000443 	add	w3, w2, #0x1
 4001bfc:	d37a7c42 	ubfiz	x2, x2, #6, #32
 4001c00:	b9100663 	str	w3, [x19, #4100]
 4001c04:	aa0003e1 	mov	x1, x0
 4001c08:	8b020260 	add	x0, x19, x2
 4001c0c:	97fffb81 	bl	4000a10 <strcpy>
 4001c10:	aa1403e1 	mov	x1, x20
 4001c14:	d2800000 	mov	x0, #0x0                   	// #0
 4001c18:	97fffbba 	bl	4000b00 <strtok>
 4001c1c:	b4000160 	cbz	x0, 4001c48 <parse_cmd+0x80>
 4001c20:	b9500662 	ldr	w2, [x19, #4100]
 4001c24:	7100fc5f 	cmp	w2, #0x3f
 4001c28:	54fffe89 	b.ls	4001bf8 <parse_cmd+0x30>  // b.plast
 4001c2c:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001c30:	91200000 	add	x0, x0, #0x800
 4001c34:	940003f1 	bl	4002bf8 <kprintf>
 4001c38:	12800000 	mov	w0, #0xffffffff            	// #-1
 4001c3c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001c40:	a8c27bfd 	ldp	x29, x30, [sp], #32
 4001c44:	d65f03c0 	ret
 4001c48:	b9500660 	ldr	w0, [x19, #4100]
 4001c4c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001c50:	a8c27bfd 	ldp	x29, x30, [sp], #32
 4001c54:	d65f03c0 	ret

0000000004001c58 <echo>:
 4001c58:	34000401 	cbz	w1, 4001cd8 <echo+0x80>
 4001c5c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 4001c60:	910003fd 	mov	x29, sp
 4001c64:	a90153f3 	stp	x19, x20, [sp, #16]
 4001c68:	aa0003f4 	mov	x20, x0
 4001c6c:	a9025bf5 	stp	x21, x22, [sp, #32]
 4001c70:	d0000016 	adrp	x22, 4003000 <atag_display+0x58>
 4001c74:	a90363f7 	stp	x23, x24, [sp, #48]
 4001c78:	2a0103f5 	mov	w21, w1
 4001c7c:	d0000017 	adrp	x23, 4003000 <atag_display+0x58>
 4001c80:	51000438 	sub	w24, w1, #0x1
 4001c84:	912062d6 	add	x22, x22, #0x818
 4001c88:	911fe2f7 	add	x23, x23, #0x7f8
 4001c8c:	52800013 	mov	w19, #0x0                   	// #0
 4001c90:	aa1403e1 	mov	x1, x20
 4001c94:	aa1603e0 	mov	x0, x22
 4001c98:	940003d8 	bl	4002bf8 <kprintf>
 4001c9c:	91010294 	add	x20, x20, #0x40
 4001ca0:	6b18027f 	cmp	w19, w24
 4001ca4:	11000673 	add	w19, w19, #0x1
 4001ca8:	54000060 	b.eq	4001cb4 <echo+0x5c>  // b.none
 4001cac:	aa1703e0 	mov	x0, x23
 4001cb0:	940003d2 	bl	4002bf8 <kprintf>
 4001cb4:	6b1302bf 	cmp	w21, w19
 4001cb8:	54fffec1 	b.ne	4001c90 <echo+0x38>  // b.any
 4001cbc:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001cc0:	f0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4001cc4:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4001cc8:	9109c000 	add	x0, x0, #0x270
 4001ccc:	a94363f7 	ldp	x23, x24, [sp, #48]
 4001cd0:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4001cd4:	140003c9 	b	4002bf8 <kprintf>
 4001cd8:	d65f03c0 	ret
 4001cdc:	d503201f 	nop

0000000004001ce0 <cat>:
 4001ce0:	d11183ff 	sub	sp, sp, #0x460
 4001ce4:	d0000003 	adrp	x3, 4003000 <atag_display+0x58>
 4001ce8:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
 4001cec:	a9007bfd 	stp	x29, x30, [sp]
 4001cf0:	910003fd 	mov	x29, sp
 4001cf4:	f9000bf3 	str	x19, [sp, #16]
 4001cf8:	aa0003f3 	mov	x19, x0
 4001cfc:	7947c060 	ldrh	w0, [x3, #992]
 4001d00:	f90017f6 	str	x22, [sp, #40]
 4001d04:	2a0103f6 	mov	w22, w1
 4001d08:	7900c3a0 	strh	w0, [x29, #96]
 4001d0c:	52800001 	mov	w1, #0x0                   	// #0
 4001d10:	91018ba0 	add	x0, x29, #0x62
 4001d14:	97fffbbb 	bl	4000c00 <memset>
 4001d18:	34000736 	cbz	w22, 4001dfc <cat+0x11c>
 4001d1c:	510006d6 	sub	w22, w22, #0x1
 4001d20:	91010260 	add	x0, x19, #0x40
 4001d24:	52800801 	mov	w1, #0x40                  	// #64
 4001d28:	a901d7b4 	stp	x20, x21, [x29, #24]
 4001d2c:	a90363b7 	stp	x23, x24, [x29, #48]
 4001d30:	910183b4 	add	x20, x29, #0x60
 4001d34:	a9046bb9 	stp	x25, x26, [x29, #64]
 4001d38:	f0000017 	adrp	x23, 4004000 <__func__.2797+0xca0>
 4001d3c:	d0000018 	adrp	x24, 4003000 <atag_display+0x58>
 4001d40:	910e22f7 	add	x23, x23, #0x388
 4001d44:	9ba102d6 	umaddl	x22, w22, w1, x0
 4001d48:	910163ba 	add	x26, x29, #0x58
 4001d4c:	91254318 	add	x24, x24, #0x950
 4001d50:	f0000019 	adrp	x25, 4004000 <__func__.2797+0xca0>
 4001d54:	1400000e 	b	4001d8c <cat+0xac>
 4001d58:	39404000 	ldrb	w0, [x0, #16]
 4001d5c:	37200600 	tbnz	w0, #4, 4001e1c <cat+0x13c>
 4001d60:	b9400021 	ldr	w1, [x1]
 4001d64:	91010273 	add	x19, x19, #0x40
 4001d68:	f94002a0 	ldr	x0, [x21]
 4001d6c:	97fffcc3 	bl	4001078 <fat32_read_chain>
 4001d70:	f9402fa1 	ldr	x1, [x29, #88]
 4001d74:	3820683f 	strb	wzr, [x1, x0]
 4001d78:	aa1803e0 	mov	x0, x24
 4001d7c:	f9402fa1 	ldr	x1, [x29, #88]
 4001d80:	9400039e 	bl	4002bf8 <kprintf>
 4001d84:	eb16027f 	cmp	x19, x22
 4001d88:	54000620 	b.eq	4001e4c <cat+0x16c>  // b.none
 4001d8c:	39400262 	ldrb	w2, [x19]
 4001d90:	aa1703e1 	mov	x1, x23
 4001d94:	aa1403e0 	mov	x0, x20
 4001d98:	7100bc5f 	cmp	w2, #0x2f
 4001d9c:	54000040 	b.eq	4001da4 <cat+0xc4>  // b.none
 4001da0:	97fffb1c 	bl	4000a10 <strcpy>
 4001da4:	aa1303e1 	mov	x1, x19
 4001da8:	aa1403e0 	mov	x0, x20
 4001dac:	97fffb49 	bl	4000ad0 <strcat>
 4001db0:	f943db35 	ldr	x21, [x25, #1968]
 4001db4:	aa1403e1 	mov	x1, x20
 4001db8:	f94002a0 	ldr	x0, [x21]
 4001dbc:	97fffdaf 	bl	4001478 <fat32_open>
 4001dc0:	aa0003e1 	mov	x1, x0
 4001dc4:	aa1a03e2 	mov	x2, x26
 4001dc8:	b5fffc80 	cbnz	x0, 4001d58 <cat+0x78>
 4001dcc:	aa1303e1 	mov	x1, x19
 4001dd0:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001dd4:	9120c000 	add	x0, x0, #0x830
 4001dd8:	94000388 	bl	4002bf8 <kprintf>
 4001ddc:	a941d7b4 	ldp	x20, x21, [x29, #24]
 4001de0:	a94363b7 	ldp	x23, x24, [x29, #48]
 4001de4:	a9446bb9 	ldp	x25, x26, [x29, #64]
 4001de8:	a9407bfd 	ldp	x29, x30, [sp]
 4001dec:	f9400bf3 	ldr	x19, [sp, #16]
 4001df0:	f94017f6 	ldr	x22, [sp, #40]
 4001df4:	911183ff 	add	sp, sp, #0x460
 4001df8:	d65f03c0 	ret
 4001dfc:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001e00:	91208000 	add	x0, x0, #0x820
 4001e04:	9400037d 	bl	4002bf8 <kprintf>
 4001e08:	f9400bf3 	ldr	x19, [sp, #16]
 4001e0c:	a9407bfd 	ldp	x29, x30, [sp]
 4001e10:	f94017f6 	ldr	x22, [sp, #40]
 4001e14:	911183ff 	add	sp, sp, #0x460
 4001e18:	d65f03c0 	ret
 4001e1c:	aa1303e1 	mov	x1, x19
 4001e20:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4001e24:	91214000 	add	x0, x0, #0x850
 4001e28:	94000374 	bl	4002bf8 <kprintf>
 4001e2c:	a941d7b4 	ldp	x20, x21, [x29, #24]
 4001e30:	a94363b7 	ldp	x23, x24, [x29, #48]
 4001e34:	a9446bb9 	ldp	x25, x26, [x29, #64]
 4001e38:	a9407bfd 	ldp	x29, x30, [sp]
 4001e3c:	f9400bf3 	ldr	x19, [sp, #16]
 4001e40:	f94017f6 	ldr	x22, [sp, #40]
 4001e44:	911183ff 	add	sp, sp, #0x460
 4001e48:	d65f03c0 	ret
 4001e4c:	a941d7b4 	ldp	x20, x21, [x29, #24]
 4001e50:	a94363b7 	ldp	x23, x24, [x29, #48]
 4001e54:	a9446bb9 	ldp	x25, x26, [x29, #64]
 4001e58:	a9407bfd 	ldp	x29, x30, [sp]
 4001e5c:	f9400bf3 	ldr	x19, [sp, #16]
 4001e60:	f94017f6 	ldr	x22, [sp, #40]
 4001e64:	911183ff 	add	sp, sp, #0x460
 4001e68:	d65f03c0 	ret
 4001e6c:	d503201f 	nop

0000000004001e70 <cd>:
 4001e70:	d12143ff 	sub	sp, sp, #0x850
 4001e74:	d0000003 	adrp	x3, 4003000 <atag_display+0x58>
 4001e78:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
 4001e7c:	a9007bfd 	stp	x29, x30, [sp]
 4001e80:	910003fd 	mov	x29, sp
 4001e84:	a90153f3 	stp	x19, x20, [sp, #16]
 4001e88:	aa0003f4 	mov	x20, x0
 4001e8c:	7947c060 	ldrh	w0, [x3, #992]
 4001e90:	2a0103f3 	mov	w19, w1
 4001e94:	7900a3a0 	strh	w0, [x29, #80]
 4001e98:	52800001 	mov	w1, #0x0                   	// #0
 4001e9c:	91014ba0 	add	x0, x29, #0x52
 4001ea0:	97fffb58 	bl	4000c00 <memset>
 4001ea4:	7100067f 	cmp	w19, #0x1
 4001ea8:	54000aa8 	b.hi	4001ffc <cd+0x18c>  // b.pmore
 4001eac:	34000a13 	cbz	w19, 4001fec <cd+0x17c>
 4001eb0:	f9001bb7 	str	x23, [x29, #48]
 4001eb4:	910143b3 	add	x19, x29, #0x50
 4001eb8:	39400280 	ldrb	w0, [x20]
 4001ebc:	7100bc1f 	cmp	w0, #0x2f
 4001ec0:	54000ac1 	b.ne	4002018 <cd+0x1a8>  // b.any
 4001ec4:	aa1403e1 	mov	x1, x20
 4001ec8:	aa1303e0 	mov	x0, x19
 4001ecc:	97fffb01 	bl	4000ad0 <strcat>
 4001ed0:	f0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4001ed4:	aa1303e1 	mov	x1, x19
 4001ed8:	f943d800 	ldr	x0, [x0, #1968]
 4001edc:	f9400000 	ldr	x0, [x0]
 4001ee0:	97fffd66 	bl	4001478 <fat32_open>
 4001ee4:	aa0003f7 	mov	x23, x0
 4001ee8:	b4000b40 	cbz	x0, 4002050 <cd+0x1e0>
 4001eec:	39404000 	ldrb	w0, [x0, #16]
 4001ef0:	362009e0 	tbz	w0, #4, 400202c <cd+0x1bc>
 4001ef4:	f90013b5 	str	x21, [x29, #32]
 4001ef8:	d0000015 	adrp	x21, 4003000 <atag_display+0x58>
 4001efc:	910962b5 	add	x21, x21, #0x258
 4001f00:	aa1303e0 	mov	x0, x19
 4001f04:	aa1503e1 	mov	x1, x21
 4001f08:	97fffafe 	bl	4000b00 <strtok>
 4001f0c:	aa0003f4 	mov	x20, x0
 4001f10:	b4000ac0 	cbz	x0, 4002068 <cd+0x1f8>
 4001f14:	f90017b6 	str	x22, [x29, #40]
 4001f18:	d0000016 	adrp	x22, 4003000 <atag_display+0x58>
 4001f1c:	a903e7b8 	stp	x24, x25, [x29, #56]
 4001f20:	912222d6 	add	x22, x22, #0x888
 4001f24:	d0000018 	adrp	x24, 4003000 <atag_display+0x58>
 4001f28:	911143b9 	add	x25, x29, #0x450
 4001f2c:	91220318 	add	x24, x24, #0x880
 4001f30:	12800013 	mov	w19, #0xffffffff            	// #-1
 4001f34:	d503201f 	nop
 4001f38:	aa1403e1 	mov	x1, x20
 4001f3c:	aa1803e0 	mov	x0, x24
 4001f40:	97fffaa2 	bl	40009c8 <strcmp>
 4001f44:	35000080 	cbnz	w0, 4001f54 <cd+0xe4>
 4001f48:	3100067f 	cmn	w19, #0x1
 4001f4c:	1a9f07e0 	cset	w0, ne  // ne = any
 4001f50:	4b000273 	sub	w19, w19, w0
 4001f54:	aa1403e1 	mov	x1, x20
 4001f58:	aa1603e0 	mov	x0, x22
 4001f5c:	97fffa9b 	bl	40009c8 <strcmp>
 4001f60:	34000060 	cbz	w0, 4001f6c <cd+0xfc>
 4001f64:	11000673 	add	w19, w19, #0x1
 4001f68:	f833db34 	str	x20, [x25, w19, sxtw #3]
 4001f6c:	aa1503e1 	mov	x1, x21
 4001f70:	d2800000 	mov	x0, #0x0                   	// #0
 4001f74:	97fffae3 	bl	4000b00 <strtok>
 4001f78:	aa0003f4 	mov	x20, x0
 4001f7c:	b5fffde0 	cbnz	x0, 4001f38 <cd+0xc8>
 4001f80:	f0000016 	adrp	x22, 4004000 <__func__.2797+0xca0>
 4001f84:	910e22d6 	add	x22, x22, #0x388
 4001f88:	aa1503e1 	mov	x1, x21
 4001f8c:	aa1603e0 	mov	x0, x22
 4001f90:	97fffaa0 	bl	4000a10 <strcpy>
 4001f94:	3100067f 	cmn	w19, #0x1
 4001f98:	540001e0 	b.eq	4001fd4 <cd+0x164>  // b.none
 4001f9c:	93407e73 	sxtw	x19, w19
 4001fa0:	911143b8 	add	x24, x29, #0x450
 4001fa4:	91000673 	add	x19, x19, #0x1
 4001fa8:	d2800014 	mov	x20, #0x0                   	// #0
 4001fac:	d503201f 	nop
 4001fb0:	f8747b01 	ldr	x1, [x24, x20, lsl #3]
 4001fb4:	aa1603e0 	mov	x0, x22
 4001fb8:	91000694 	add	x20, x20, #0x1
 4001fbc:	97fffac5 	bl	4000ad0 <strcat>
 4001fc0:	aa1503e1 	mov	x1, x21
 4001fc4:	aa1603e0 	mov	x0, x22
 4001fc8:	97fffac2 	bl	4000ad0 <strcat>
 4001fcc:	eb14027f 	cmp	x19, x20
 4001fd0:	54ffff01 	b.ne	4001fb0 <cd+0x140>  // b.any
 4001fd4:	f94017b6 	ldr	x22, [x29, #40]
 4001fd8:	a943e7b8 	ldp	x24, x25, [x29, #56]
 4001fdc:	aa1703e0 	mov	x0, x23
 4001fe0:	97fffeb8 	bl	4001ac0 <free>
 4001fe4:	f94013b5 	ldr	x21, [x29, #32]
 4001fe8:	f9401bb7 	ldr	x23, [x29, #48]
 4001fec:	a9407bfd 	ldp	x29, x30, [sp]
 4001ff0:	a94153f3 	ldp	x19, x20, [sp, #16]
 4001ff4:	912143ff 	add	sp, sp, #0x850
 4001ff8:	d65f03c0 	ret
 4001ffc:	d0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002000:	91200000 	add	x0, x0, #0x800
 4002004:	940002fd 	bl	4002bf8 <kprintf>
 4002008:	a9407bfd 	ldp	x29, x30, [sp]
 400200c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4002010:	912143ff 	add	sp, sp, #0x850
 4002014:	d65f03c0 	ret
 4002018:	d0000001 	adrp	x1, 4004000 <__func__.2797+0xca0>
 400201c:	aa1303e0 	mov	x0, x19
 4002020:	910e2021 	add	x1, x1, #0x388
 4002024:	97fffa7b 	bl	4000a10 <strcpy>
 4002028:	17ffffa7 	b	4001ec4 <cd+0x54>
 400202c:	aa1303e1 	mov	x1, x19
 4002030:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002034:	9121a000 	add	x0, x0, #0x868
 4002038:	940002f0 	bl	4002bf8 <kprintf>
 400203c:	f9401bb7 	ldr	x23, [x29, #48]
 4002040:	a9407bfd 	ldp	x29, x30, [sp]
 4002044:	a94153f3 	ldp	x19, x20, [sp, #16]
 4002048:	912143ff 	add	sp, sp, #0x850
 400204c:	d65f03c0 	ret
 4002050:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002054:	aa1303e1 	mov	x1, x19
 4002058:	9120c000 	add	x0, x0, #0x830
 400205c:	940002e7 	bl	4002bf8 <kprintf>
 4002060:	f9401bb7 	ldr	x23, [x29, #48]
 4002064:	17ffffe2 	b	4001fec <cd+0x17c>
 4002068:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 400206c:	aa1503e1 	mov	x1, x21
 4002070:	910e2000 	add	x0, x0, #0x388
 4002074:	97fffa67 	bl	4000a10 <strcpy>
 4002078:	17ffffd9 	b	4001fdc <cd+0x16c>
 400207c:	d503201f 	nop

0000000004002080 <pwd>:
 4002080:	d0000001 	adrp	x1, 4004000 <__func__.2797+0xca0>
 4002084:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002088:	910e2021 	add	x1, x1, #0x388
 400208c:	91254000 	add	x0, x0, #0x950
 4002090:	140002da 	b	4002bf8 <kprintf>
 4002094:	d503201f 	nop

0000000004002098 <ls>:
 4002098:	d11b43ff 	sub	sp, sp, #0x6d0
 400209c:	b0000003 	adrp	x3, 4003000 <atag_display+0x58>
 40020a0:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
 40020a4:	a9047bfd 	stp	x29, x30, [sp, #64]
 40020a8:	910103fd 	add	x29, sp, #0x40
 40020ac:	a90553f3 	stp	x19, x20, [sp, #80]
 40020b0:	aa0003f4 	mov	x20, x0
 40020b4:	7947c060 	ldrh	w0, [x3, #992]
 40020b8:	2a0103f3 	mov	w19, w1
 40020bc:	a9065bf5 	stp	x21, x22, [sp, #96]
 40020c0:	52800001 	mov	w1, #0x0                   	// #0
 40020c4:	790523a0 	strh	w0, [x29, #656]
 40020c8:	910a4ba0 	add	x0, x29, #0x292
 40020cc:	f9003bf7 	str	x23, [sp, #112]
 40020d0:	97fffacc 	bl	4000c00 <memset>
 40020d4:	b0000015 	adrp	x21, 4003000 <atag_display+0x58>
 40020d8:	912422a0 	add	x0, x21, #0x908
 40020dc:	7100067f 	cmp	w19, #0x1
 40020e0:	b9400000 	ldr	w0, [x0]
 40020e4:	b90083a0 	str	w0, [x29, #128]
 40020e8:	54001560 	b.eq	4002394 <ls+0x2fc>  // b.none
 40020ec:	71000a7f 	cmp	w19, #0x2
 40020f0:	54000501 	b.ne	4002190 <ls+0xf8>  // b.any
 40020f4:	b0000013 	adrp	x19, 4003000 <atag_display+0x58>
 40020f8:	91224273 	add	x19, x19, #0x890
 40020fc:	aa1403e1 	mov	x1, x20
 4002100:	aa1303e0 	mov	x0, x19
 4002104:	91010297 	add	x23, x20, #0x40
 4002108:	97fffa30 	bl	40009c8 <strcmp>
 400210c:	34001540 	cbz	w0, 40023b4 <ls+0x31c>
 4002110:	aa1703e1 	mov	x1, x23
 4002114:	aa1303e0 	mov	x0, x19
 4002118:	97fffa2c 	bl	40009c8 <strcmp>
 400211c:	350016c0 	cbnz	w0, 40023f4 <ls+0x35c>
 4002120:	39400280 	ldrb	w0, [x20]
 4002124:	910a43b6 	add	x22, x29, #0x290
 4002128:	7100bc1f 	cmp	w0, #0x2f
 400212c:	540000a0 	b.eq	4002140 <ls+0xa8>  // b.none
 4002130:	d0000001 	adrp	x1, 4004000 <__func__.2797+0xca0>
 4002134:	aa1603e0 	mov	x0, x22
 4002138:	910e2021 	add	x1, x1, #0x388
 400213c:	97fffa35 	bl	4000a10 <strcpy>
 4002140:	d0000013 	adrp	x19, 4004000 <__func__.2797+0xca0>
 4002144:	aa1403e1 	mov	x1, x20
 4002148:	aa1603e0 	mov	x0, x22
 400214c:	97fffa61 	bl	4000ad0 <strcat>
 4002150:	f943da73 	ldr	x19, [x19, #1968]
 4002154:	52800037 	mov	w23, #0x1                   	// #1
 4002158:	aa1603e1 	mov	x1, x22
 400215c:	f9400260 	ldr	x0, [x19]
 4002160:	97fffcc6 	bl	4001478 <fat32_open>
 4002164:	b50003c0 	cbnz	x0, 40021dc <ls+0x144>
 4002168:	aa1403e1 	mov	x1, x20
 400216c:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002170:	91226000 	add	x0, x0, #0x898
 4002174:	940002a1 	bl	4002bf8 <kprintf>
 4002178:	a9447bfd 	ldp	x29, x30, [sp, #64]
 400217c:	a94553f3 	ldp	x19, x20, [sp, #80]
 4002180:	a9465bf5 	ldp	x21, x22, [sp, #96]
 4002184:	f9403bf7 	ldr	x23, [sp, #112]
 4002188:	911b43ff 	add	sp, sp, #0x6d0
 400218c:	d65f03c0 	ret
 4002190:	350013b3 	cbnz	w19, 4002404 <ls+0x36c>
 4002194:	39400280 	ldrb	w0, [x20]
 4002198:	910a43b6 	add	x22, x29, #0x290
 400219c:	7100bc1f 	cmp	w0, #0x2f
 40021a0:	540000a0 	b.eq	40021b4 <ls+0x11c>  // b.none
 40021a4:	d0000001 	adrp	x1, 4004000 <__func__.2797+0xca0>
 40021a8:	aa1603e0 	mov	x0, x22
 40021ac:	910e2021 	add	x1, x1, #0x388
 40021b0:	97fffa18 	bl	4000a10 <strcpy>
 40021b4:	aa1403e1 	mov	x1, x20
 40021b8:	aa1603e0 	mov	x0, x22
 40021bc:	52800017 	mov	w23, #0x0                   	// #0
 40021c0:	97fffa44 	bl	4000ad0 <strcat>
 40021c4:	d0000013 	adrp	x19, 4004000 <__func__.2797+0xca0>
 40021c8:	aa1603e1 	mov	x1, x22
 40021cc:	f943da73 	ldr	x19, [x19, #1968]
 40021d0:	f9400260 	ldr	x0, [x19]
 40021d4:	97fffca9 	bl	4001478 <fat32_open>
 40021d8:	b4fffc80 	cbz	x0, 4002168 <ls+0xd0>
 40021dc:	39404001 	ldrb	w1, [x0, #16]
 40021e0:	37200161 	tbnz	w1, #4, 400220c <ls+0x174>
 40021e4:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40021e8:	aa1403e1 	mov	x1, x20
 40021ec:	9122e000 	add	x0, x0, #0x8b8
 40021f0:	94000282 	bl	4002bf8 <kprintf>
 40021f4:	a9447bfd 	ldp	x29, x30, [sp, #64]
 40021f8:	a94553f3 	ldp	x19, x20, [sp, #80]
 40021fc:	a9465bf5 	ldp	x21, x22, [sp, #96]
 4002200:	f9403bf7 	ldr	x23, [sp, #112]
 4002204:	911b43ff 	add	sp, sp, #0x6d0
 4002208:	d65f03c0 	ret
 400220c:	b9400001 	ldr	w1, [x0]
 4002210:	910223a2 	add	x2, x29, #0x88
 4002214:	f9400260 	ldr	x0, [x19]
 4002218:	f9001fb8 	str	x24, [x29, #56]
 400221c:	97fffb97 	bl	4001078 <fat32_read_chain>
 4002220:	d345fc18 	lsr	x24, x0, #5
 4002224:	b4000e58 	cbz	x24, 40023ec <ls+0x354>
 4002228:	a9046bb9 	stp	x25, x26, [x29, #64]
 400222c:	910243b4 	add	x20, x29, #0x90
 4002230:	b0000019 	adrp	x25, 4003000 <atag_display+0x58>
 4002234:	529999ba 	mov	w26, #0xcccd                	// #52429
 4002238:	910203b6 	add	x22, x29, #0x80
 400223c:	91236339 	add	x25, x25, #0x8d8
 4002240:	912422b5 	add	x21, x21, #0x908
 4002244:	a90573bb 	stp	x27, x28, [x29, #80]
 4002248:	d2800013 	mov	x19, #0x0                   	// #0
 400224c:	72b9999a 	movk	w26, #0xcccc, lsl #16
 4002250:	f94047a0 	ldr	x0, [x29, #136]
 4002254:	aa1403e1 	mov	x1, x20
 4002258:	8b131400 	add	x0, x0, x19, lsl #5
 400225c:	97fffbdb 	bl	40011c8 <fat32_parse_name>
 4002260:	8b000273 	add	x19, x19, x0
 4002264:	f94047a1 	ldr	x1, [x29, #136]
 4002268:	d37bea64 	lsl	x4, x19, #5
 400226c:	91000673 	add	x19, x19, #0x1
 4002270:	8b040021 	add	x1, x1, x4
 4002274:	39402c23 	ldrb	w3, [x1, #11]
 4002278:	121f0066 	and	w6, w3, #0x2
 400227c:	35000057 	cbnz	w23, 4002284 <ls+0x1ec>
 4002280:	37080563 	tbnz	w3, #1, 400232c <ls+0x294>
 4002284:	79401c25 	ldrh	w5, [x1, #14]
 4002288:	79402022 	ldrh	w2, [x1, #16]
 400228c:	79402c3c 	ldrh	w28, [x1, #22]
 4002290:	7940303b 	ldrh	w27, [x1, #24]
 4002294:	37200623 	tbnz	w3, #4, 4002358 <ls+0x2c0>
 4002298:	37000063 	tbnz	w3, #0, 40022a4 <ls+0x20c>
 400229c:	52800ee0 	mov	w0, #0x77                  	// #119
 40022a0:	390207a0 	strb	w0, [x29, #129]
 40022a4:	34000066 	cbz	w6, 40022b0 <ls+0x218>
 40022a8:	52800d00 	mov	w0, #0x68                  	// #104
 40022ac:	39020ba0 	strb	w0, [x29, #130]
 40022b0:	39403420 	ldrb	w0, [x1, #13]
 40022b4:	531f10a7 	ubfiz	w7, w5, #1, #5
 40022b8:	f9001ff4 	str	x20, [sp, #56]
 40022bc:	531f1388 	ubfiz	w8, w28, #1, #5
 40022c0:	d34528a6 	ubfx	x6, x5, #5, #6
 40022c4:	53097c44 	lsr	w4, w2, #9
 40022c8:	b9401c21 	ldr	w1, [x1, #28]
 40022cc:	12001043 	and	w3, w2, #0x1f
 40022d0:	9bba7c00 	umull	x0, w0, w26
 40022d4:	b90033e1 	str	w1, [sp, #48]
 40022d8:	530b7ca5 	lsr	w5, w5, #11
 40022dc:	d3452b81 	ubfx	x1, x28, #5, #6
 40022e0:	d3452042 	ubfx	x2, x2, #5, #4
 40022e4:	b90023e1 	str	w1, [sp, #32]
 40022e8:	d363fc00 	lsr	x0, x0, #35
 40022ec:	b9002be8 	str	w8, [sp, #40]
 40022f0:	0b0000e7 	add	w7, w7, w0
 40022f4:	53097f60 	lsr	w0, w27, #9
 40022f8:	530b7f9c 	lsr	w28, w28, #11
 40022fc:	b90013e0 	str	w0, [sp, #16]
 4002300:	b9001bfc 	str	w28, [sp, #24]
 4002304:	12001360 	and	w0, w27, #0x1f
 4002308:	d345237b 	ubfx	x27, x27, #5, #4
 400230c:	b90003fb 	str	w27, [sp]
 4002310:	b9000be0 	str	w0, [sp, #8]
 4002314:	aa1603e1 	mov	x1, x22
 4002318:	aa1903e0 	mov	x0, x25
 400231c:	94000237 	bl	4002bf8 <kprintf>
 4002320:	aa1503e1 	mov	x1, x21
 4002324:	aa1603e0 	mov	x0, x22
 4002328:	97fff9ba 	bl	4000a10 <strcpy>
 400232c:	eb18027f 	cmp	x19, x24
 4002330:	54fff903 	b.cc	4002250 <ls+0x1b8>  // b.lo, b.ul, b.last
 4002334:	a943e7b8 	ldp	x24, x25, [x29, #56]
 4002338:	a944efba 	ldp	x26, x27, [x29, #72]
 400233c:	f9402fbc 	ldr	x28, [x29, #88]
 4002340:	a9447bfd 	ldp	x29, x30, [sp, #64]
 4002344:	a94553f3 	ldp	x19, x20, [sp, #80]
 4002348:	a9465bf5 	ldp	x21, x22, [sp, #96]
 400234c:	f9403bf7 	ldr	x23, [sp, #112]
 4002350:	911b43ff 	add	sp, sp, #0x6d0
 4002354:	d65f03c0 	ret
 4002358:	f90037a4 	str	x4, [x29, #104]
 400235c:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 4002360:	290e17a2 	stp	w2, w5, [x29, #112]
 4002364:	91096021 	add	x1, x1, #0x258
 4002368:	290f0fa6 	stp	w6, w3, [x29, #120]
 400236c:	aa1403e0 	mov	x0, x20
 4002370:	97fff9d8 	bl	4000ad0 <strcat>
 4002374:	f94037a4 	ldr	x4, [x29, #104]
 4002378:	52800c80 	mov	w0, #0x64                  	// #100
 400237c:	f94047a1 	ldr	x1, [x29, #136]
 4002380:	390203a0 	strb	w0, [x29, #128]
 4002384:	294e17a2 	ldp	w2, w5, [x29, #112]
 4002388:	8b040021 	add	x1, x1, x4
 400238c:	294f0fa6 	ldp	w6, w3, [x29, #120]
 4002390:	17ffffc2 	b	4002298 <ls+0x200>
 4002394:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002398:	aa1403e1 	mov	x1, x20
 400239c:	91224000 	add	x0, x0, #0x890
 40023a0:	97fff98a 	bl	40009c8 <strcmp>
 40023a4:	7100001f 	cmp	w0, #0x0
 40023a8:	910a43b6 	add	x22, x29, #0x290
 40023ac:	1a9f17f7 	cset	w23, eq  // eq = none
 40023b0:	17ffff85 	b	40021c4 <ls+0x12c>
 40023b4:	39410280 	ldrb	w0, [x20, #64]
 40023b8:	910a43b6 	add	x22, x29, #0x290
 40023bc:	7100bc1f 	cmp	w0, #0x2f
 40023c0:	540000a0 	b.eq	40023d4 <ls+0x33c>  // b.none
 40023c4:	d0000001 	adrp	x1, 4004000 <__func__.2797+0xca0>
 40023c8:	aa1603e0 	mov	x0, x22
 40023cc:	910e2021 	add	x1, x1, #0x388
 40023d0:	97fff990 	bl	4000a10 <strcpy>
 40023d4:	aa1703e1 	mov	x1, x23
 40023d8:	aa1603e0 	mov	x0, x22
 40023dc:	aa1703f4 	mov	x20, x23
 40023e0:	97fff9bc 	bl	4000ad0 <strcat>
 40023e4:	52800037 	mov	w23, #0x1                   	// #1
 40023e8:	17ffff77 	b	40021c4 <ls+0x12c>
 40023ec:	f9401fb8 	ldr	x24, [x29, #56]
 40023f0:	17ffff81 	b	40021f4 <ls+0x15c>
 40023f4:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40023f8:	91200000 	add	x0, x0, #0x800
 40023fc:	940001ff 	bl	4002bf8 <kprintf>
 4002400:	17ffff7d 	b	40021f4 <ls+0x15c>
 4002404:	910a43b6 	add	x22, x29, #0x290
 4002408:	52800017 	mov	w23, #0x0                   	// #0
 400240c:	17ffff6e 	b	40021c4 <ls+0x12c>

0000000004002410 <exe_cmd>:
 4002410:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 4002414:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 4002418:	91244021 	add	x1, x1, #0x910
 400241c:	910003fd 	mov	x29, sp
 4002420:	f9000bf3 	str	x19, [sp, #16]
 4002424:	aa0003f3 	mov	x19, x0
 4002428:	97fff968 	bl	40009c8 <strcmp>
 400242c:	34000480 	cbz	w0, 40024bc <exe_cmd+0xac>
 4002430:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 4002434:	aa1303e0 	mov	x0, x19
 4002438:	91246021 	add	x1, x1, #0x918
 400243c:	97fff963 	bl	40009c8 <strcmp>
 4002440:	34000340 	cbz	w0, 40024a8 <exe_cmd+0x98>
 4002444:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 4002448:	aa1303e0 	mov	x0, x19
 400244c:	91248021 	add	x1, x1, #0x920
 4002450:	97fff95e 	bl	40009c8 <strcmp>
 4002454:	34000500 	cbz	w0, 40024f4 <exe_cmd+0xe4>
 4002458:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 400245c:	aa1303e0 	mov	x0, x19
 4002460:	9124a021 	add	x1, x1, #0x928
 4002464:	97fff959 	bl	40009c8 <strcmp>
 4002468:	34000560 	cbz	w0, 4002514 <exe_cmd+0x104>
 400246c:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 4002470:	aa1303e0 	mov	x0, x19
 4002474:	9124c021 	add	x1, x1, #0x930
 4002478:	97fff954 	bl	40009c8 <strcmp>
 400247c:	34000300 	cbz	w0, 40024dc <exe_cmd+0xcc>
 4002480:	b0000001 	adrp	x1, 4003000 <atag_display+0x58>
 4002484:	aa1303e0 	mov	x0, x19
 4002488:	9124e021 	add	x1, x1, #0x938
 400248c:	97fff94f 	bl	40009c8 <strcmp>
 4002490:	34000520 	cbz	w0, 4002534 <exe_cmd+0x124>
 4002494:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002498:	aa1303e1 	mov	x1, x19
 400249c:	91250000 	add	x0, x0, #0x940
 40024a0:	940001d6 	bl	4002bf8 <kprintf>
 40024a4:	14000002 	b	40024ac <exe_cmd+0x9c>
 40024a8:	940002c0 	bl	4002fa8 <atag_display>
 40024ac:	52800000 	mov	w0, #0x0                   	// #0
 40024b0:	f9400bf3 	ldr	x19, [sp, #16]
 40024b4:	a8c27bfd 	ldp	x29, x30, [sp], #32
 40024b8:	d65f03c0 	ret
 40024bc:	b9500661 	ldr	w1, [x19, #4100]
 40024c0:	91010260 	add	x0, x19, #0x40
 40024c4:	51000421 	sub	w1, w1, #0x1
 40024c8:	97fffde4 	bl	4001c58 <echo>
 40024cc:	52800000 	mov	w0, #0x0                   	// #0
 40024d0:	f9400bf3 	ldr	x19, [sp, #16]
 40024d4:	a8c27bfd 	ldp	x29, x30, [sp], #32
 40024d8:	d65f03c0 	ret
 40024dc:	d0000001 	adrp	x1, 4004000 <__func__.2797+0xca0>
 40024e0:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40024e4:	910e2021 	add	x1, x1, #0x388
 40024e8:	91254000 	add	x0, x0, #0x950
 40024ec:	940001c3 	bl	4002bf8 <kprintf>
 40024f0:	17ffffef 	b	40024ac <exe_cmd+0x9c>
 40024f4:	b9500661 	ldr	w1, [x19, #4100]
 40024f8:	91010260 	add	x0, x19, #0x40
 40024fc:	51000421 	sub	w1, w1, #0x1
 4002500:	97fffe5c 	bl	4001e70 <cd>
 4002504:	52800000 	mov	w0, #0x0                   	// #0
 4002508:	f9400bf3 	ldr	x19, [sp, #16]
 400250c:	a8c27bfd 	ldp	x29, x30, [sp], #32
 4002510:	d65f03c0 	ret
 4002514:	b9500661 	ldr	w1, [x19, #4100]
 4002518:	91010260 	add	x0, x19, #0x40
 400251c:	51000421 	sub	w1, w1, #0x1
 4002520:	97fffdf0 	bl	4001ce0 <cat>
 4002524:	52800000 	mov	w0, #0x0                   	// #0
 4002528:	f9400bf3 	ldr	x19, [sp, #16]
 400252c:	a8c27bfd 	ldp	x29, x30, [sp], #32
 4002530:	d65f03c0 	ret
 4002534:	b9500661 	ldr	w1, [x19, #4100]
 4002538:	91010260 	add	x0, x19, #0x40
 400253c:	51000421 	sub	w1, w1, #0x1
 4002540:	97fffed6 	bl	4002098 <ls>
 4002544:	17ffffda 	b	40024ac <exe_cmd+0x9c>

0000000004002548 <display_banner_short>:
 4002548:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 400254c:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002550:	91256000 	add	x0, x0, #0x958
 4002554:	910003fd 	mov	x29, sp
 4002558:	940001a8 	bl	4002bf8 <kprintf>
 400255c:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002560:	91272000 	add	x0, x0, #0x9c8
 4002564:	940001a5 	bl	4002bf8 <kprintf>
 4002568:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 400256c:	9128e000 	add	x0, x0, #0xa38
 4002570:	940001a2 	bl	4002bf8 <kprintf>
 4002574:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002578:	912a8000 	add	x0, x0, #0xaa0
 400257c:	9400019f 	bl	4002bf8 <kprintf>
 4002580:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002584:	912c2000 	add	x0, x0, #0xb08
 4002588:	9400019c 	bl	4002bf8 <kprintf>
 400258c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 4002590:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 4002594:	912de000 	add	x0, x0, #0xb78
 4002598:	14000198 	b	4002bf8 <kprintf>
 400259c:	d503201f 	nop

00000000040025a0 <display_banner>:
 40025a0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 40025a4:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40025a8:	912f8000 	add	x0, x0, #0xbe0
 40025ac:	910003fd 	mov	x29, sp
 40025b0:	94000192 	bl	4002bf8 <kprintf>
 40025b4:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40025b8:	9132a000 	add	x0, x0, #0xca8
 40025bc:	9400018f 	bl	4002bf8 <kprintf>
 40025c0:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40025c4:	9135e000 	add	x0, x0, #0xd78
 40025c8:	9400018c 	bl	4002bf8 <kprintf>
 40025cc:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40025d0:	91390000 	add	x0, x0, #0xe40
 40025d4:	94000189 	bl	4002bf8 <kprintf>
 40025d8:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40025dc:	913c2000 	add	x0, x0, #0xf08
 40025e0:	94000186 	bl	4002bf8 <kprintf>
 40025e4:	a8c17bfd 	ldp	x29, x30, [sp], #16
 40025e8:	b0000000 	adrp	x0, 4003000 <atag_display+0x58>
 40025ec:	913fa000 	add	x0, x0, #0xfe8
 40025f0:	14000182 	b	4002bf8 <kprintf>
 40025f4:	d503201f 	nop

00000000040025f8 <shell_loop>:
 40025f8:	d2828810 	mov	x16, #0x1440                	// #5184
 40025fc:	cb3063ff 	sub	sp, sp, x16
 4002600:	d2800801 	mov	x1, #0x40                  	// #64
 4002604:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002608:	9102c000 	add	x0, x0, #0xb0
 400260c:	a9007bfd 	stp	x29, x30, [sp]
 4002610:	910003fd 	mov	x29, sp
 4002614:	a90153f3 	stp	x19, x20, [sp, #16]
 4002618:	9100e3b3 	add	x19, x29, #0x38
 400261c:	a9025bf5 	stp	x21, x22, [sp, #32]
 4002620:	9110e3b4 	add	x20, x29, #0x438
 4002624:	f90a1fa1 	str	x1, [x29, #5176]
 4002628:	94000174 	bl	4002bf8 <kprintf>
 400262c:	97ffffdd 	bl	40025a0 <display_banner>
 4002630:	d0000016 	adrp	x22, 4004000 <__func__.2797+0xca0>
 4002634:	d0000015 	adrp	x21, 4004000 <__func__.2797+0xca0>
 4002638:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 400263c:	910e22d6 	add	x22, x22, #0x388
 4002640:	910362b5 	add	x21, x21, #0xd8
 4002644:	9109c000 	add	x0, x0, #0x270
 4002648:	9400016c 	bl	4002bf8 <kprintf>
 400264c:	d503201f 	nop
 4002650:	aa1603e1 	mov	x1, x22
 4002654:	aa1503e0 	mov	x0, x21
 4002658:	94000168 	bl	4002bf8 <kprintf>
 400265c:	aa1303e0 	mov	x0, x19
 4002660:	97fffd1c 	bl	4001ad0 <read_cmd>
 4002664:	b4ffff60 	cbz	x0, 4002650 <shell_loop+0x58>
 4002668:	aa1303e1 	mov	x1, x19
 400266c:	aa1403e0 	mov	x0, x20
 4002670:	97fffd56 	bl	4001bc8 <parse_cmd>
 4002674:	7100001f 	cmp	w0, #0x0
 4002678:	54fffecd 	b.le	4002650 <shell_loop+0x58>
 400267c:	aa1403e0 	mov	x0, x20
 4002680:	97ffff64 	bl	4002410 <exe_cmd>
 4002684:	aa1603e1 	mov	x1, x22
 4002688:	aa1503e0 	mov	x0, x21
 400268c:	9400015b 	bl	4002bf8 <kprintf>
 4002690:	aa1303e0 	mov	x0, x19
 4002694:	97fffd0f 	bl	4001ad0 <read_cmd>
 4002698:	b5fffe80 	cbnz	x0, 4002668 <shell_loop+0x70>
 400269c:	17ffffed 	b	4002650 <shell_loop+0x58>

00000000040026a0 <test_malloc>:
 40026a0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 40026a4:	d2803f80 	mov	x0, #0x1fc                 	// #508
 40026a8:	910003fd 	mov	x29, sp
 40026ac:	a90153f3 	stp	x19, x20, [sp, #16]
 40026b0:	d2800013 	mov	x19, #0x0                   	// #0
 40026b4:	a9025bf5 	stp	x21, x22, [sp, #32]
 40026b8:	a90363f7 	stp	x23, x24, [sp, #48]
 40026bc:	97fffca5 	bl	4001950 <malloc>
 40026c0:	aa0003f5 	mov	x21, x0
 40026c4:	d503201f 	nop
 40026c8:	b8337ab3 	str	w19, [x21, x19, lsl #2]
 40026cc:	91000673 	add	x19, x19, #0x1
 40026d0:	f101fe7f 	cmp	x19, #0x7f
 40026d4:	54ffffa1 	b.ne	40026c8 <test_malloc+0x28>  // b.any
 40026d8:	d2803f80 	mov	x0, #0x1fc                 	// #508
 40026dc:	97fffc9d 	bl	4001950 <malloc>
 40026e0:	aa0003f7 	mov	x23, x0
 40026e4:	d503201f 	nop
 40026e8:	b8004413 	str	w19, [x0], #4
 40026ec:	71000673 	subs	w19, w19, #0x1
 40026f0:	54ffffc1 	b.ne	40026e8 <test_malloc+0x48>  // b.any
 40026f4:	d0000018 	adrp	x24, 4004000 <__func__.2797+0xca0>
 40026f8:	d0000016 	adrp	x22, 4004000 <__func__.2797+0xca0>
 40026fc:	91038318 	add	x24, x24, #0xe0
 4002700:	9103c2d6 	add	x22, x22, #0xf0
 4002704:	d2800013 	mov	x19, #0x0                   	// #0
 4002708:	52800ff4 	mov	w20, #0x7f                  	// #127
 400270c:	d503201f 	nop
 4002710:	b8737aa3 	ldr	w3, [x21, x19, lsl #2]
 4002714:	aa1803e2 	mov	x2, x24
 4002718:	52802fe1 	mov	w1, #0x17f                 	// #383
 400271c:	aa1603e0 	mov	x0, x22
 4002720:	6b13007f 	cmp	w3, w19
 4002724:	54000040 	b.eq	400272c <test_malloc+0x8c>  // b.none
 4002728:	97fffc48 	bl	4001848 <__assert>
 400272c:	b8737ae0 	ldr	w0, [x23, x19, lsl #2]
 4002730:	d0000002 	adrp	x2, 4004000 <__func__.2797+0xca0>
 4002734:	91000673 	add	x19, x19, #0x1
 4002738:	52803001 	mov	w1, #0x180                 	// #384
 400273c:	6b14001f 	cmp	w0, w20
 4002740:	54000080 	b.eq	4002750 <test_malloc+0xb0>  // b.none
 4002744:	91040042 	add	x2, x2, #0x100
 4002748:	aa1603e0 	mov	x0, x22
 400274c:	97fffc3f 	bl	4001848 <__assert>
 4002750:	71000694 	subs	w20, w20, #0x1
 4002754:	54fffde1 	b.ne	4002710 <test_malloc+0x70>  // b.any
 4002758:	aa1503e0 	mov	x0, x21
 400275c:	97fffcd9 	bl	4001ac0 <free>
 4002760:	d2803f80 	mov	x0, #0x1fc                 	// #508
 4002764:	97fffc7b 	bl	4001950 <malloc>
 4002768:	aa0003f3 	mov	x19, x0
 400276c:	eb0002bf 	cmp	x21, x0
 4002770:	540000e0 	b.eq	400278c <test_malloc+0xec>  // b.none
 4002774:	d0000002 	adrp	x2, 4004000 <__func__.2797+0xca0>
 4002778:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 400277c:	91046042 	add	x2, x2, #0x118
 4002780:	528030c1 	mov	w1, #0x186                 	// #390
 4002784:	9103c000 	add	x0, x0, #0xf0
 4002788:	97fffc30 	bl	4001848 <__assert>
 400278c:	b85e8260 	ldur	w0, [x19, #-24]
 4002790:	121f7800 	and	w0, w0, #0xfffffffe
 4002794:	7107f01f 	cmp	w0, #0x1fc
 4002798:	540000e0 	b.eq	40027b4 <test_malloc+0x114>  // b.none
 400279c:	d0000002 	adrp	x2, 4004000 <__func__.2797+0xca0>
 40027a0:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 40027a4:	91048042 	add	x2, x2, #0x120
 40027a8:	528030e1 	mov	w1, #0x187                 	// #391
 40027ac:	9103c000 	add	x0, x0, #0xf0
 40027b0:	97fffc26 	bl	4001848 <__assert>
 40027b4:	aa1703e0 	mov	x0, x23
 40027b8:	97fffcc2 	bl	4001ac0 <free>
 40027bc:	d2803f80 	mov	x0, #0x1fc                 	// #508
 40027c0:	97fffc64 	bl	4001950 <malloc>
 40027c4:	aa0003f4 	mov	x20, x0
 40027c8:	eb0002ff 	cmp	x23, x0
 40027cc:	540000e0 	b.eq	40027e8 <test_malloc+0x148>  // b.none
 40027d0:	d0000002 	adrp	x2, 4004000 <__func__.2797+0xca0>
 40027d4:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 40027d8:	9105c042 	add	x2, x2, #0x170
 40027dc:	52803181 	mov	w1, #0x18c                 	// #396
 40027e0:	9103c000 	add	x0, x0, #0xf0
 40027e4:	97fffc19 	bl	4001848 <__assert>
 40027e8:	aa1303e0 	mov	x0, x19
 40027ec:	97fffcb5 	bl	4001ac0 <free>
 40027f0:	aa1403e0 	mov	x0, x20
 40027f4:	a94153f3 	ldp	x19, x20, [sp, #16]
 40027f8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 40027fc:	a94363f7 	ldp	x23, x24, [sp, #48]
 4002800:	a8c47bfd 	ldp	x29, x30, [sp], #64
 4002804:	17fffcaf 	b	4001ac0 <free>

0000000004002808 <current_time>:
 4002808:	d2860102 	mov	x2, #0x3008                	// #12296
 400280c:	d2860083 	mov	x3, #0x3004                	// #12292
 4002810:	f2a7e002 	movk	x2, #0x3f00, lsl #16
 4002814:	f2a7e003 	movk	x3, #0x3f00, lsl #16
 4002818:	b9400041 	ldr	w1, [x2]
 400281c:	b9400064 	ldr	w4, [x3]
 4002820:	b9400042 	ldr	w2, [x2]
 4002824:	2a0103e0 	mov	w0, w1
 4002828:	6b02003f 	cmp	w1, w2
 400282c:	540000c0 	b.eq	4002844 <current_time+0x3c>  // b.none
 4002830:	b9400061 	ldr	w1, [x3]
 4002834:	91000400 	add	x0, x0, #0x1
 4002838:	2a0103e1 	mov	w1, w1
 400283c:	8b008020 	add	x0, x1, x0, lsl #32
 4002840:	d65f03c0 	ret
 4002844:	2a0403e4 	mov	w4, w4
 4002848:	8b008080 	add	x0, x4, x0, lsl #32
 400284c:	d65f03c0 	ret

0000000004002850 <spin_sleep_us>:
 4002850:	d2860103 	mov	x3, #0x3008                	// #12296
 4002854:	d2860084 	mov	x4, #0x3004                	// #12292
 4002858:	f2a7e003 	movk	x3, #0x3f00, lsl #16
 400285c:	f2a7e004 	movk	x4, #0x3f00, lsl #16
 4002860:	b9400061 	ldr	w1, [x3]
 4002864:	b9400085 	ldr	w5, [x4]
 4002868:	b9400063 	ldr	w3, [x3]
 400286c:	2a0103e2 	mov	w2, w1
 4002870:	6b03003f 	cmp	w1, w3
 4002874:	54000340 	b.eq	40028dc <spin_sleep_us+0x8c>  // b.none
 4002878:	b9400081 	ldr	w1, [x4]
 400287c:	91000442 	add	x2, x2, #0x1
 4002880:	2a0103e1 	mov	w1, w1
 4002884:	8b028022 	add	x2, x1, x2, lsl #32
 4002888:	d2860104 	mov	x4, #0x3008                	// #12296
 400288c:	d2860086 	mov	x6, #0x3004                	// #12292
 4002890:	f2a7e004 	movk	x4, #0x3f00, lsl #16
 4002894:	f2a7e006 	movk	x6, #0x3f00, lsl #16
 4002898:	b9400083 	ldr	w3, [x4]
 400289c:	b94000c7 	ldr	w7, [x6]
 40028a0:	b9400081 	ldr	w1, [x4]
 40028a4:	2a0303e5 	mov	w5, w3
 40028a8:	6b01007f 	cmp	w3, w1
 40028ac:	910004a1 	add	x1, x5, #0x1
 40028b0:	54000100 	b.eq	40028d0 <spin_sleep_us+0x80>  // b.none
 40028b4:	b94000c3 	ldr	w3, [x6]
 40028b8:	2a0303e3 	mov	w3, w3
 40028bc:	8b018061 	add	x1, x3, x1, lsl #32
 40028c0:	cb020021 	sub	x1, x1, x2
 40028c4:	eb00003f 	cmp	x1, x0
 40028c8:	54fffe89 	b.ls	4002898 <spin_sleep_us+0x48>  // b.plast
 40028cc:	d65f03c0 	ret
 40028d0:	2a0703e1 	mov	w1, w7
 40028d4:	8b058021 	add	x1, x1, x5, lsl #32
 40028d8:	17fffffa 	b	40028c0 <spin_sleep_us+0x70>
 40028dc:	2a0503e5 	mov	w5, w5
 40028e0:	8b0280a2 	add	x2, x5, x2, lsl #32
 40028e4:	17ffffe9 	b	4002888 <spin_sleep_us+0x38>

00000000040028e8 <wait_micros>:
 40028e8:	2a0003e0 	mov	w0, w0
 40028ec:	17ffffd9 	b	4002850 <spin_sleep_us>

00000000040028f0 <getDigit.constprop.0>:
 40028f0:	7100241f 	cmp	w0, #0x9
 40028f4:	5400008c 	b.gt	4002904 <getDigit.constprop.0+0x14>
 40028f8:	1100c000 	add	w0, w0, #0x30
 40028fc:	12001c00 	and	w0, w0, #0xff
 4002900:	d65f03c0 	ret
 4002904:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 4002908:	910003fd 	mov	x29, sp
 400290c:	a90153f3 	stp	x19, x20, [sp, #16]
 4002910:	528cccf4 	mov	w20, #0x6667                	// #26215
 4002914:	72acccd4 	movk	w20, #0x6666, lsl #16
 4002918:	a9025bf5 	stp	x21, x22, [sp, #32]
 400291c:	aa0203f5 	mov	x21, x2
 4002920:	aa0103f6 	mov	x22, x1
 4002924:	9b347c14 	smull	x20, w0, w20
 4002928:	2a0003f3 	mov	w19, w0
 400292c:	9362fe94 	asr	x20, x20, #34
 4002930:	4b807e94 	sub	w20, w20, w0, asr #31
 4002934:	2a1403e0 	mov	w0, w20
 4002938:	97ffffee 	bl	40028f0 <getDigit.constprop.0>
 400293c:	b98002a1 	ldrsw	x1, [x21]
 4002940:	0b140a94 	add	w20, w20, w20, lsl #2
 4002944:	4b140673 	sub	w19, w19, w20, lsl #1
 4002948:	1100c273 	add	w19, w19, #0x30
 400294c:	38216ac0 	strb	w0, [x22, x1]
 4002950:	12001e60 	and	w0, w19, #0xff
 4002954:	b94002a1 	ldr	w1, [x21]
 4002958:	a94153f3 	ldp	x19, x20, [sp, #16]
 400295c:	11000421 	add	w1, w1, #0x1
 4002960:	b90002a1 	str	w1, [x21]
 4002964:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4002968:	a8c37bfd 	ldp	x29, x30, [sp], #48
 400296c:	d65f03c0 	ret

0000000004002970 <__kprintf>:
 4002970:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
 4002974:	910003fd 	mov	x29, sp
 4002978:	a90153f3 	stp	x19, x20, [sp, #16]
 400297c:	9101b3b4 	add	x20, x29, #0x6c
 4002980:	a9025bf5 	stp	x21, x22, [sp, #32]
 4002984:	9101c3b3 	add	x19, x29, #0x70
 4002988:	a90363f7 	stp	x23, x24, [sp, #48]
 400298c:	52800018 	mov	w24, #0x0                   	// #0
 4002990:	b9401836 	ldr	w22, [x1, #24]
 4002994:	a9405c35 	ldp	x21, x23, [x1]
 4002998:	f9002bfb 	str	x27, [sp, #80]
 400299c:	aa0003fb 	mov	x27, x0
 40029a0:	a9046bf9 	stp	x25, x26, [sp, #64]
 40029a4:	d503201f 	nop
 40029a8:	38784b79 	ldrb	w25, [x27, w24, uxtw]
 40029ac:	1100071a 	add	w26, w24, #0x1
 40029b0:	34000379 	cbz	w25, 4002a1c <__kprintf+0xac>
 40029b4:	7100973f 	cmp	w25, #0x25
 40029b8:	540001e1 	b.ne	40029f4 <__kprintf+0x84>  // b.any
 40029bc:	387a4b60 	ldrb	w0, [x27, w26, uxtw]
 40029c0:	11000b18 	add	w24, w24, #0x2
 40029c4:	7101901f 	cmp	w0, #0x64
 40029c8:	54000660 	b.eq	4002a94 <__kprintf+0x124>  // b.none
 40029cc:	54000388 	b.hi	4002a3c <__kprintf+0xcc>  // b.pmore
 40029d0:	7100941f 	cmp	w0, #0x25
 40029d4:	540001c0 	b.eq	4002a0c <__kprintf+0x9c>  // b.none
 40029d8:	71018c1f 	cmp	w0, #0x63
 40029dc:	54fffe61 	b.ne	40029a8 <__kprintf+0x38>  // b.any
 40029e0:	37f80416 	tbnz	w22, #31, 4002a60 <__kprintf+0xf0>
 40029e4:	91002ea1 	add	x1, x21, #0xb
 40029e8:	aa1503e0 	mov	x0, x21
 40029ec:	927df035 	and	x21, x1, #0xfffffffffffffff8
 40029f0:	14000023 	b	4002a7c <__kprintf+0x10c>
 40029f4:	2a1903e0 	mov	w0, w25
 40029f8:	94000134 	bl	4002ec8 <mu_write_byte>
 40029fc:	2a1a03f8 	mov	w24, w26
 4002a00:	71002b3f 	cmp	w25, #0xa
 4002a04:	54fffd21 	b.ne	40029a8 <__kprintf+0x38>  // b.any
 4002a08:	528001a0 	mov	w0, #0xd                   	// #13
 4002a0c:	9400012f 	bl	4002ec8 <mu_write_byte>
 4002a10:	38784b79 	ldrb	w25, [x27, w24, uxtw]
 4002a14:	1100071a 	add	w26, w24, #0x1
 4002a18:	35fffcf9 	cbnz	w25, 40029b4 <__kprintf+0x44>
 4002a1c:	a94153f3 	ldp	x19, x20, [sp, #16]
 4002a20:	52800020 	mov	w0, #0x1                   	// #1
 4002a24:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4002a28:	a94363f7 	ldp	x23, x24, [sp, #48]
 4002a2c:	a9446bf9 	ldp	x25, x26, [sp, #64]
 4002a30:	f9402bfb 	ldr	x27, [sp, #80]
 4002a34:	a8c97bfd 	ldp	x29, x30, [sp], #144
 4002a38:	d65f03c0 	ret
 4002a3c:	7101cc1f 	cmp	w0, #0x73
 4002a40:	540004a0 	b.eq	4002ad4 <__kprintf+0x164>  // b.none
 4002a44:	7101e01f 	cmp	w0, #0x78
 4002a48:	54fffb01 	b.ne	40029a8 <__kprintf+0x38>  // b.any
 4002a4c:	37f807f6 	tbnz	w22, #31, 4002b48 <__kprintf+0x1d8>
 4002a50:	91002ea1 	add	x1, x21, #0xb
 4002a54:	aa1503e0 	mov	x0, x21
 4002a58:	927df035 	and	x21, x1, #0xfffffffffffffff8
 4002a5c:	14000042 	b	4002b64 <__kprintf+0x1f4>
 4002a60:	110022c1 	add	w1, w22, #0x8
 4002a64:	7100003f 	cmp	w1, #0x0
 4002a68:	5400010d 	b.le	4002a88 <__kprintf+0x118>
 4002a6c:	91002ea2 	add	x2, x21, #0xb
 4002a70:	aa1503e0 	mov	x0, x21
 4002a74:	2a0103f6 	mov	w22, w1
 4002a78:	927df055 	and	x21, x2, #0xfffffffffffffff8
 4002a7c:	39400000 	ldrb	w0, [x0]
 4002a80:	94000112 	bl	4002ec8 <mu_write_byte>
 4002a84:	17ffffc9 	b	40029a8 <__kprintf+0x38>
 4002a88:	8b36c2e0 	add	x0, x23, w22, sxtw
 4002a8c:	2a0103f6 	mov	w22, w1
 4002a90:	17fffffb 	b	4002a7c <__kprintf+0x10c>
 4002a94:	37f802f6 	tbnz	w22, #31, 4002af0 <__kprintf+0x180>
 4002a98:	91002ea1 	add	x1, x21, #0xb
 4002a9c:	aa1503e0 	mov	x0, x21
 4002aa0:	927df035 	and	x21, x1, #0xfffffffffffffff8
 4002aa4:	b9400000 	ldr	w0, [x0]
 4002aa8:	aa1403e2 	mov	x2, x20
 4002aac:	aa1303e1 	mov	x1, x19
 4002ab0:	b9006fbf 	str	wzr, [x29, #108]
 4002ab4:	97ffff8f 	bl	40028f0 <getDigit.constprop.0>
 4002ab8:	b9406fa1 	ldr	w1, [x29, #108]
 4002abc:	11000422 	add	w2, w1, #0x1
 4002ac0:	3821ca60 	strb	w0, [x19, w1, sxtw]
 4002ac4:	aa1303e0 	mov	x0, x19
 4002ac8:	3822ca7f 	strb	wzr, [x19, w2, sxtw]
 4002acc:	94000129 	bl	4002f70 <mu_write_str>
 4002ad0:	17ffffb6 	b	40029a8 <__kprintf+0x38>
 4002ad4:	37f801f6 	tbnz	w22, #31, 4002b10 <__kprintf+0x1a0>
 4002ad8:	91003ea1 	add	x1, x21, #0xf
 4002adc:	aa1503e0 	mov	x0, x21
 4002ae0:	927df035 	and	x21, x1, #0xfffffffffffffff8
 4002ae4:	f9400000 	ldr	x0, [x0]
 4002ae8:	94000122 	bl	4002f70 <mu_write_str>
 4002aec:	17ffffaf 	b	40029a8 <__kprintf+0x38>
 4002af0:	110022c1 	add	w1, w22, #0x8
 4002af4:	7100003f 	cmp	w1, #0x0
 4002af8:	540001cd 	b.le	4002b30 <__kprintf+0x1c0>
 4002afc:	91002ea2 	add	x2, x21, #0xb
 4002b00:	aa1503e0 	mov	x0, x21
 4002b04:	2a0103f6 	mov	w22, w1
 4002b08:	927df055 	and	x21, x2, #0xfffffffffffffff8
 4002b0c:	17ffffe6 	b	4002aa4 <__kprintf+0x134>
 4002b10:	110022c1 	add	w1, w22, #0x8
 4002b14:	7100003f 	cmp	w1, #0x0
 4002b18:	5400012d 	b.le	4002b3c <__kprintf+0x1cc>
 4002b1c:	91003ea2 	add	x2, x21, #0xf
 4002b20:	aa1503e0 	mov	x0, x21
 4002b24:	2a0103f6 	mov	w22, w1
 4002b28:	927df055 	and	x21, x2, #0xfffffffffffffff8
 4002b2c:	17ffffee 	b	4002ae4 <__kprintf+0x174>
 4002b30:	8b36c2e0 	add	x0, x23, w22, sxtw
 4002b34:	2a0103f6 	mov	w22, w1
 4002b38:	17ffffdb 	b	4002aa4 <__kprintf+0x134>
 4002b3c:	8b36c2e0 	add	x0, x23, w22, sxtw
 4002b40:	2a0103f6 	mov	w22, w1
 4002b44:	17ffffe8 	b	4002ae4 <__kprintf+0x174>
 4002b48:	110022c1 	add	w1, w22, #0x8
 4002b4c:	7100003f 	cmp	w1, #0x0
 4002b50:	540004cd 	b.le	4002be8 <__kprintf+0x278>
 4002b54:	91002ea2 	add	x2, x21, #0xb
 4002b58:	aa1503e0 	mov	x0, x21
 4002b5c:	2a0103f6 	mov	w22, w1
 4002b60:	927df055 	and	x21, x2, #0xfffffffffffffff8
 4002b64:	b9400004 	ldr	w4, [x0]
 4002b68:	52800383 	mov	w3, #0x1c                  	// #28
 4002b6c:	d2800002 	mov	x2, #0x0                   	// #0
 4002b70:	1ac32881 	asr	w1, w4, w3
 4002b74:	12000c21 	and	w1, w1, #0xf
 4002b78:	12001c20 	and	w0, w1, #0xff
 4002b7c:	7100283f 	cmp	w1, #0xa
 4002b80:	11015c01 	add	w1, w0, #0x57
 4002b84:	1100c000 	add	w0, w0, #0x30
 4002b88:	1a81b000 	csel	w0, w0, w1, lt  // lt = tstop
 4002b8c:	38226a60 	strb	w0, [x19, x2]
 4002b90:	91000442 	add	x2, x2, #0x1
 4002b94:	51001063 	sub	w3, w3, #0x4
 4002b98:	f100205f 	cmp	x2, #0x8
 4002b9c:	54fffea1 	b.ne	4002b70 <__kprintf+0x200>  // b.any
 4002ba0:	3941c3a0 	ldrb	w0, [x29, #112]
 4002ba4:	3901e3bf 	strb	wzr, [x29, #120]
 4002ba8:	7100c01f 	cmp	w0, #0x30
 4002bac:	54000181 	b.ne	4002bdc <__kprintf+0x26c>  // b.any
 4002bb0:	3941c7a1 	ldrb	w1, [x29, #113]
 4002bb4:	34000141 	cbz	w1, 4002bdc <__kprintf+0x26c>
 4002bb8:	91000662 	add	x2, x19, #0x1
 4002bbc:	14000003 	b	4002bc8 <__kprintf+0x258>
 4002bc0:	38401c41 	ldrb	w1, [x2, #1]!
 4002bc4:	34000081 	cbz	w1, 4002bd4 <__kprintf+0x264>
 4002bc8:	aa0203e0 	mov	x0, x2
 4002bcc:	7100c03f 	cmp	w1, #0x30
 4002bd0:	54ffff80 	b.eq	4002bc0 <__kprintf+0x250>  // b.none
 4002bd4:	940000e7 	bl	4002f70 <mu_write_str>
 4002bd8:	17ffff74 	b	40029a8 <__kprintf+0x38>
 4002bdc:	aa1303e0 	mov	x0, x19
 4002be0:	940000e4 	bl	4002f70 <mu_write_str>
 4002be4:	17ffff71 	b	40029a8 <__kprintf+0x38>
 4002be8:	8b36c2e0 	add	x0, x23, w22, sxtw
 4002bec:	2a0103f6 	mov	w22, w1
 4002bf0:	17ffffdd 	b	4002b64 <__kprintf+0x1f4>
 4002bf4:	d503201f 	nop

0000000004002bf8 <kprintf>:
 4002bf8:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
 4002bfc:	910003fd 	mov	x29, sp
 4002c00:	910443a8 	add	x8, x29, #0x110
 4002c04:	910343a9 	add	x9, x29, #0xd0
 4002c08:	a90323a8 	stp	x8, x8, [x29, #48]
 4002c0c:	128006e8 	mov	w8, #0xffffffc8            	// #-56
 4002c10:	f90023a9 	str	x9, [x29, #64]
 4002c14:	b9004ba8 	str	w8, [x29, #72]
 4002c18:	12800fe8 	mov	w8, #0xffffff80            	// #-128
 4002c1c:	b9004fa8 	str	w8, [x29, #76]
 4002c20:	a9432faa 	ldp	x10, x11, [x29, #48]
 4002c24:	a9012faa 	stp	x10, x11, [x29, #16]
 4002c28:	a94427a8 	ldp	x8, x9, [x29, #64]
 4002c2c:	a90227a8 	stp	x8, x9, [x29, #32]
 4002c30:	3d8017a0 	str	q0, [x29, #80]
 4002c34:	3d801ba1 	str	q1, [x29, #96]
 4002c38:	3d801fa2 	str	q2, [x29, #112]
 4002c3c:	3d8023a3 	str	q3, [x29, #128]
 4002c40:	3d8027a4 	str	q4, [x29, #144]
 4002c44:	3d802ba5 	str	q5, [x29, #160]
 4002c48:	3d802fa6 	str	q6, [x29, #176]
 4002c4c:	3d8033a7 	str	q7, [x29, #192]
 4002c50:	a90d8ba1 	stp	x1, x2, [x29, #216]
 4002c54:	910043a1 	add	x1, x29, #0x10
 4002c58:	a90e93a3 	stp	x3, x4, [x29, #232]
 4002c5c:	a90f9ba5 	stp	x5, x6, [x29, #248]
 4002c60:	f90087a7 	str	x7, [x29, #264]
 4002c64:	97ffff43 	bl	4002970 <__kprintf>
 4002c68:	a8d17bfd 	ldp	x29, x30, [sp], #272
 4002c6c:	d65f03c0 	ret

0000000004002c70 <__panic>:
 4002c70:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
 4002c74:	910003fd 	mov	x29, sp
 4002c78:	a90153f3 	stp	x19, x20, [sp, #16]
 4002c7c:	aa0303f4 	mov	x20, x3
 4002c80:	2a0103f3 	mov	w19, w1
 4002c84:	a9025bf5 	stp	x21, x22, [sp, #32]
 4002c88:	3d801fa0 	str	q0, [x29, #112]
 4002c8c:	aa0203f5 	mov	x21, x2
 4002c90:	3d8023a1 	str	q1, [x29, #128]
 4002c94:	aa0003f6 	mov	x22, x0
 4002c98:	3d8027a2 	str	q2, [x29, #144]
 4002c9c:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002ca0:	3d802ba3 	str	q3, [x29, #160]
 4002ca4:	91060000 	add	x0, x0, #0x180
 4002ca8:	3d802fa4 	str	q4, [x29, #176]
 4002cac:	3d8033a5 	str	q5, [x29, #192]
 4002cb0:	3d8037a6 	str	q6, [x29, #208]
 4002cb4:	3d803ba7 	str	q7, [x29, #224]
 4002cb8:	a90f17a4 	stp	x4, x5, [x29, #240]
 4002cbc:	a9101fa6 	stp	x6, x7, [x29, #256]
 4002cc0:	97ffffce 	bl	4002bf8 <kprintf>
 4002cc4:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002cc8:	91064000 	add	x0, x0, #0x190
 4002ccc:	97ffffcb 	bl	4002bf8 <kprintf>
 4002cd0:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002cd4:	9106a000 	add	x0, x0, #0x1a8
 4002cd8:	97ffffc8 	bl	4002bf8 <kprintf>
 4002cdc:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002ce0:	91070000 	add	x0, x0, #0x1c0
 4002ce4:	97ffffc5 	bl	4002bf8 <kprintf>
 4002ce8:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002cec:	91076000 	add	x0, x0, #0x1d8
 4002cf0:	97ffffc2 	bl	4002bf8 <kprintf>
 4002cf4:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002cf8:	9107e000 	add	x0, x0, #0x1f8
 4002cfc:	97ffffbf 	bl	4002bf8 <kprintf>
 4002d00:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d04:	91086000 	add	x0, x0, #0x218
 4002d08:	97ffffbc 	bl	4002bf8 <kprintf>
 4002d0c:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d10:	9108e000 	add	x0, x0, #0x238
 4002d14:	97ffffb9 	bl	4002bf8 <kprintf>
 4002d18:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d1c:	91096000 	add	x0, x0, #0x258
 4002d20:	97ffffb6 	bl	4002bf8 <kprintf>
 4002d24:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d28:	9109e000 	add	x0, x0, #0x278
 4002d2c:	97ffffb3 	bl	4002bf8 <kprintf>
 4002d30:	aa1603e1 	mov	x1, x22
 4002d34:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d38:	910a6000 	add	x0, x0, #0x298
 4002d3c:	97ffffaf 	bl	4002bf8 <kprintf>
 4002d40:	2a1303e1 	mov	w1, w19
 4002d44:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d48:	910aa000 	add	x0, x0, #0x2a8
 4002d4c:	97ffffab 	bl	4002bf8 <kprintf>
 4002d50:	aa1503e1 	mov	x1, x21
 4002d54:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002d58:	910ae000 	add	x0, x0, #0x2b8
 4002d5c:	97ffffa7 	bl	4002bf8 <kprintf>
 4002d60:	910443a0 	add	x0, x29, #0x110
 4002d64:	a90503a0 	stp	x0, x0, [x29, #80]
 4002d68:	128003e0 	mov	w0, #0xffffffe0            	// #-32
 4002d6c:	9103c3a1 	add	x1, x29, #0xf0
 4002d70:	f90033a1 	str	x1, [x29, #96]
 4002d74:	9100c3a1 	add	x1, x29, #0x30
 4002d78:	b9006ba0 	str	w0, [x29, #104]
 4002d7c:	12800fe0 	mov	w0, #0xffffff80            	// #-128
 4002d80:	b9006fa0 	str	w0, [x29, #108]
 4002d84:	aa1403e0 	mov	x0, x20
 4002d88:	a9451fa6 	ldp	x6, x7, [x29, #80]
 4002d8c:	a9031fa6 	stp	x6, x7, [x29, #48]
 4002d90:	a94617a4 	ldp	x4, x5, [x29, #96]
 4002d94:	a90417a4 	stp	x4, x5, [x29, #64]
 4002d98:	97fffef6 	bl	4002970 <__kprintf>
 4002d9c:	14000000 	b	4002d9c <__panic+0x12c>

0000000004002da0 <_cstartup>:
 4002da0:	d0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4002da4:	f943d403 	ldr	x3, [x0, #1960]
 4002da8:	f943cc02 	ldr	x2, [x0, #1944]
 4002dac:	eb02007f 	cmp	x3, x2
 4002db0:	54000182 	b.cs	4002de0 <_cstartup+0x40>  // b.hs, b.nlast
 4002db4:	91002060 	add	x0, x3, #0x8
 4002db8:	91001c41 	add	x1, x2, #0x7
 4002dbc:	cb000021 	sub	x1, x1, x0
 4002dc0:	91004063 	add	x3, x3, #0x10
 4002dc4:	927df021 	and	x1, x1, #0xfffffffffffffff8
 4002dc8:	8b030021 	add	x1, x1, x3
 4002dcc:	d503201f 	nop
 4002dd0:	f81f801f 	stur	xzr, [x0, #-8]
 4002dd4:	91002000 	add	x0, x0, #0x8
 4002dd8:	eb01001f 	cmp	x0, x1
 4002ddc:	54ffffa1 	b.ne	4002dd0 <_cstartup+0x30>  // b.any
 4002de0:	d65f03c0 	ret
 4002de4:	00000000 	.inst	0x00000000 ; undefined

0000000004002de8 <mu_init>:
 4002de8:	d28a0081 	mov	x1, #0x5004                	// #20484
 4002dec:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 4002df0:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002df4:	d28a0d06 	mov	x6, #0x5068                	// #20584
 4002df8:	910003fd 	mov	x29, sp
 4002dfc:	b9400020 	ldr	w0, [x1]
 4002e00:	f2a7e426 	movk	x6, #0x3f21, lsl #16
 4002e04:	f9000bf3 	str	x19, [sp, #16]
 4002e08:	d28a0984 	mov	x4, #0x504c                	// #20556
 4002e0c:	32000000 	orr	w0, w0, #0x1
 4002e10:	b9000020 	str	w0, [x1]
 4002e14:	f2a7e424 	movk	x4, #0x3f21, lsl #16
 4002e18:	528021c7 	mov	w7, #0x10e                 	// #270
 4002e1c:	b90000c7 	str	w7, [x6]
 4002e20:	d2a7e403 	mov	x3, #0x3f200000            	// #1059061760
 4002e24:	d2800082 	mov	x2, #0x4                   	// #4
 4002e28:	d2801285 	mov	x5, #0x94                  	// #148
 4002e2c:	b9400081 	ldr	w1, [x4]
 4002e30:	f2a7e402 	movk	x2, #0x3f20, lsl #16
 4002e34:	f2a7e405 	movk	x5, #0x3f20, lsl #16
 4002e38:	d2801313 	mov	x19, #0x98                  	// #152
 4002e3c:	32000421 	orr	w1, w1, #0x3
 4002e40:	b9000081 	str	w1, [x4]
 4002e44:	f2a7e413 	movk	x19, #0x3f20, lsl #16
 4002e48:	d28012c0 	mov	x0, #0x96                  	// #150
 4002e4c:	b9400061 	ldr	w1, [x3]
 4002e50:	12117021 	and	w1, w1, #0xffff8fff
 4002e54:	32140021 	orr	w1, w1, #0x1000
 4002e58:	b9000061 	str	w1, [x3]
 4002e5c:	b9400041 	ldr	w1, [x2]
 4002e60:	12117021 	and	w1, w1, #0xffff8fff
 4002e64:	32130021 	orr	w1, w1, #0x2000
 4002e68:	b9000041 	str	w1, [x2]
 4002e6c:	b9400041 	ldr	w1, [x2]
 4002e70:	120e7021 	and	w1, w1, #0xfffc7fff
 4002e74:	32100021 	orr	w1, w1, #0x10000
 4002e78:	b9000041 	str	w1, [x2]
 4002e7c:	b90000bf 	str	wzr, [x5]
 4002e80:	97fffe74 	bl	4002850 <spin_sleep_us>
 4002e84:	52980000 	mov	w0, #0xc000                	// #49152
 4002e88:	b9000260 	str	w0, [x19]
 4002e8c:	d28012c0 	mov	x0, #0x96                  	// #150
 4002e90:	97fffe70 	bl	4002850 <spin_sleep_us>
 4002e94:	b900027f 	str	wzr, [x19]
 4002e98:	d28a0900 	mov	x0, #0x5048                	// #20552
 4002e9c:	f9400bf3 	ldr	x19, [sp, #16]
 4002ea0:	f2a7e420 	movk	x0, #0x3f21, lsl #16
 4002ea4:	b9400001 	ldr	w1, [x0]
 4002ea8:	321f0021 	orr	w1, w1, #0x2
 4002eac:	b9000001 	str	w1, [x0]
 4002eb0:	b9400001 	ldr	w1, [x0]
 4002eb4:	321e0021 	orr	w1, w1, #0x4
 4002eb8:	b9000001 	str	w1, [x0]
 4002ebc:	a8c27bfd 	ldp	x29, x30, [sp], #32
 4002ec0:	d65f03c0 	ret
 4002ec4:	d503201f 	nop

0000000004002ec8 <mu_write_byte>:
 4002ec8:	d28a0a82 	mov	x2, #0x5054                	// #20564
 4002ecc:	12001c00 	and	w0, w0, #0xff
 4002ed0:	f2a7e422 	movk	x2, #0x3f21, lsl #16
 4002ed4:	d503201f 	nop
 4002ed8:	b9400041 	ldr	w1, [x2]
 4002edc:	362fffe1 	tbz	w1, #5, 4002ed8 <mu_write_byte+0x10>
 4002ee0:	d28a0801 	mov	x1, #0x5040                	// #20544
 4002ee4:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002ee8:	b9000020 	str	w0, [x1]
 4002eec:	d65f03c0 	ret

0000000004002ef0 <mu_write_fifo>:
 4002ef0:	d28a0c81 	mov	x1, #0x5064                	// #20580
 4002ef4:	12001c02 	and	w2, w0, #0xff
 4002ef8:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002efc:	52800000 	mov	w0, #0x0                   	// #0
 4002f00:	b9400021 	ldr	w1, [x1]
 4002f04:	360800a1 	tbz	w1, #1, 4002f18 <mu_write_fifo+0x28>
 4002f08:	d28a0801 	mov	x1, #0x5040                	// #20544
 4002f0c:	52800020 	mov	w0, #0x1                   	// #1
 4002f10:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002f14:	b9000022 	str	w2, [x1]
 4002f18:	d65f03c0 	ret
 4002f1c:	d503201f 	nop

0000000004002f20 <mu_read_byte>:
 4002f20:	d28a0a81 	mov	x1, #0x5054                	// #20564
 4002f24:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002f28:	b9400020 	ldr	w0, [x1]
 4002f2c:	3607ffe0 	tbz	w0, #0, 4002f28 <mu_read_byte+0x8>
 4002f30:	d28a0800 	mov	x0, #0x5040                	// #20544
 4002f34:	f2a7e420 	movk	x0, #0x3f21, lsl #16
 4002f38:	b9400000 	ldr	w0, [x0]
 4002f3c:	d65f03c0 	ret

0000000004002f40 <mu_read_fifo>:
 4002f40:	d28a0a81 	mov	x1, #0x5054                	// #20564
 4002f44:	aa0003e2 	mov	x2, x0
 4002f48:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002f4c:	52800000 	mov	w0, #0x0                   	// #0
 4002f50:	b9400021 	ldr	w1, [x1]
 4002f54:	360000c1 	tbz	w1, #0, 4002f6c <mu_read_fifo+0x2c>
 4002f58:	d28a0801 	mov	x1, #0x5040                	// #20544
 4002f5c:	52800020 	mov	w0, #0x1                   	// #1
 4002f60:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002f64:	b9400021 	ldr	w1, [x1]
 4002f68:	39000041 	strb	w1, [x2]
 4002f6c:	d65f03c0 	ret

0000000004002f70 <mu_write_str>:
 4002f70:	39400002 	ldrb	w2, [x0]
 4002f74:	34000182 	cbz	w2, 4002fa4 <mu_write_str+0x34>
 4002f78:	d28a0a81 	mov	x1, #0x5054                	// #20564
 4002f7c:	d28a0804 	mov	x4, #0x5040                	// #20544
 4002f80:	91000403 	add	x3, x0, #0x1
 4002f84:	f2a7e421 	movk	x1, #0x3f21, lsl #16
 4002f88:	f2a7e424 	movk	x4, #0x3f21, lsl #16
 4002f8c:	d503201f 	nop
 4002f90:	b9400020 	ldr	w0, [x1]
 4002f94:	362fffe0 	tbz	w0, #5, 4002f90 <mu_write_str+0x20>
 4002f98:	b9000082 	str	w2, [x4]
 4002f9c:	38401462 	ldrb	w2, [x3], #1
 4002fa0:	35ffff82 	cbnz	w2, 4002f90 <mu_write_str+0x20>
 4002fa4:	d65f03c0 	ret

0000000004002fa8 <atag_display>:
 4002fa8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 4002fac:	910003fd 	mov	x29, sp
 4002fb0:	f9000bf3 	str	x19, [sp, #16]
 4002fb4:	d2802013 	mov	x19, #0x100                 	// #256
 4002fb8:	b9400661 	ldr	w1, [x19, #4]
 4002fbc:	340004e1 	cbz	w1, 4003058 <atag_display+0xb0>
 4002fc0:	a901d7b4 	stp	x20, x21, [x29, #24]
 4002fc4:	52800054 	mov	w20, #0x2                   	// #2
 4002fc8:	d0000015 	adrp	x21, 4004000 <__func__.2797+0xca0>
 4002fcc:	f90017b6 	str	x22, [x29, #40]
 4002fd0:	910c62b5 	add	x21, x21, #0x318
 4002fd4:	d0000016 	adrp	x22, 4004000 <__func__.2797+0xca0>
 4002fd8:	72aa8834 	movk	w20, #0x5441, lsl #16
 4002fdc:	910c22d6 	add	x22, x22, #0x308
 4002fe0:	14000010 	b	4003020 <atag_display+0x78>
 4002fe4:	52800120 	mov	w0, #0x9                   	// #9
 4002fe8:	72aa8820 	movk	w0, #0x5441, lsl #16
 4002fec:	6b00003f 	cmp	w1, w0
 4002ff0:	540004e0 	b.eq	400308c <atag_display+0xe4>  // b.none
 4002ff4:	52800020 	mov	w0, #0x1                   	// #1
 4002ff8:	72aa8820 	movk	w0, #0x5441, lsl #16
 4002ffc:	6b00003f 	cmp	w1, w0
 4003000:	54000320 	b.eq	4003064 <atag_display+0xbc>  // b.none
 4003004:	b0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4003008:	910d6000 	add	x0, x0, #0x358
 400300c:	97fffefb 	bl	4002bf8 <kprintf>
 4003010:	b9400260 	ldr	w0, [x19]
 4003014:	8b204a73 	add	x19, x19, w0, uxtw #2
 4003018:	b9400661 	ldr	w1, [x19, #4]
 400301c:	340001a1 	cbz	w1, 4003050 <atag_display+0xa8>
 4003020:	6b14003f 	cmp	w1, w20
 4003024:	54fffe01 	b.ne	4002fe4 <atag_display+0x3c>  // b.any
 4003028:	aa1603e0 	mov	x0, x22
 400302c:	97fffef3 	bl	4002bf8 <kprintf>
 4003030:	b9400a61 	ldr	w1, [x19, #8]
 4003034:	aa1503e0 	mov	x0, x21
 4003038:	b9400e62 	ldr	w2, [x19, #12]
 400303c:	97fffeef 	bl	4002bf8 <kprintf>
 4003040:	b9400260 	ldr	w0, [x19]
 4003044:	8b204a73 	add	x19, x19, w0, uxtw #2
 4003048:	b9400661 	ldr	w1, [x19, #4]
 400304c:	35fffea1 	cbnz	w1, 4003020 <atag_display+0x78>
 4003050:	a941d7b4 	ldp	x20, x21, [x29, #24]
 4003054:	f94017b6 	ldr	x22, [x29, #40]
 4003058:	f9400bf3 	ldr	x19, [sp, #16]
 400305c:	a8c37bfd 	ldp	x29, x30, [sp], #48
 4003060:	d65f03c0 	ret
 4003064:	b0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4003068:	910b2000 	add	x0, x0, #0x2c8
 400306c:	97fffee3 	bl	4002bf8 <kprintf>
 4003070:	b9400a61 	ldr	w1, [x19, #8]
 4003074:	b0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4003078:	b9400e62 	ldr	w2, [x19, #12]
 400307c:	910b6000 	add	x0, x0, #0x2d8
 4003080:	b9401263 	ldr	w3, [x19, #16]
 4003084:	97fffedd 	bl	4002bf8 <kprintf>
 4003088:	17ffffe2 	b	4003010 <atag_display+0x68>
 400308c:	b0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 4003090:	910ce000 	add	x0, x0, #0x338
 4003094:	97fffed9 	bl	4002bf8 <kprintf>
 4003098:	b0000000 	adrp	x0, 4004000 <__func__.2797+0xca0>
 400309c:	91002261 	add	x1, x19, #0x8
 40030a0:	910d2000 	add	x0, x0, #0x348
 40030a4:	97fffed5 	bl	4002bf8 <kprintf>
 40030a8:	17ffffda 	b	4003010 <atag_display+0x68>
