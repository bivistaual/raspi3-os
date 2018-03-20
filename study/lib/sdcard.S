
sd.o：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sd_readsector-0x488>:
   0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   4:	910003fd 	add	x29, sp, #0x0
   8:	a90153f3 	stp	x19, x20, [sp, #16]
   c:	2a0003f4 	orr	w20, wzr, w0
  10:	a9025bf5 	stp	x21, x22, [sp, #32]
  14:	52942413 	movz	w19, #0xa120
  18:	72a000f3 	movk	w19, #0x7, lsl #16
  1c:	d2800495 	movz	x21, #0x24
  20:	f2a7e615 	movk	x21, #0x3f30, lsl #16
  24:	d2800616 	movz	x22, #0x30
  28:	f2a7e616 	movk	x22, #0x3f30, lsl #16
  2c:	f9001bf7 	str	x23, [sp, #48]
  30:	52900017 	movz	w23, #0x8000
  34:	72a02fd7 	movk	w23, #0x17e, lsl #16
  38:	b94002a0 	ldr	w0, [x21]
  3c:	6a14001f 	ands	wzr, w0, w20
  40:	54000180 	b.eq	70 <sd_readsector-0x418>  // b.none
  44:	b94002c0 	ldr	w0, [x22]
  48:	6a17001f 	ands	wzr, w0, w23
  4c:	54000121 	b.ne	70 <sd_readsector-0x418>  // b.any
  50:	51000673 	sub	w19, w19, #0x1
  54:	3100067f 	adds	wzr, w19, #0x1
  58:	54000061 	b.ne	64 <sd_readsector-0x424>  // b.any
  5c:	12800020 	movn	w0, #0x1
  60:	1400000d 	b	94 <sd_readsector-0x3f4>
  64:	52800020 	movz	w0, #0x1
  68:	94000000 	bl	0 <wait_micros>
  6c:	17fffff3 	b	38 <sd_readsector-0x450>
  70:	34ffff73 	cbz	w19, 5c <sd_readsector-0x42c>
  74:	d2800600 	movz	x0, #0x30
  78:	f2a7e600 	movk	x0, #0x3f30, lsl #16
  7c:	b9400001 	ldr	w1, [x0]
  80:	52900000 	movz	w0, #0x8000
  84:	72a02fc0 	movk	w0, #0x17e, lsl #16
  88:	6a00003f 	ands	wzr, w1, w0
  8c:	12800020 	movn	w0, #0x1
  90:	1a9f1000 	csel	w0, w0, wzr, ne  // ne = any
  94:	a94153f3 	ldp	x19, x20, [sp, #16]
  98:	a9425bf5 	ldp	x21, x22, [sp, #32]
  9c:	f9401bf7 	ldr	x23, [sp, #48]
  a0:	a8c47bfd 	ldp	x29, x30, [sp], #64
  a4:	d65f03c0 	ret
  a8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  ac:	910003fd 	add	x29, sp, #0x0
  b0:	a90153f3 	stp	x19, x20, [sp, #16]
  b4:	52884813 	movz	w19, #0x4240
  b8:	72a001f3 	movk	w19, #0xf, lsl #16
  bc:	a9025bf5 	stp	x21, x22, [sp, #32]
  c0:	52900015 	movz	w21, #0x8000
  c4:	72a02fd5 	movk	w21, #0x17e, lsl #16
  c8:	2a150015 	orr	w21, w0, w21
  cc:	f9001bf7 	str	x23, [sp, #48]
  d0:	2a0003f6 	orr	w22, wzr, w0
  d4:	d2800617 	movz	x23, #0x30
  d8:	f2a7e617 	movk	x23, #0x3f30, lsl #16
  dc:	aa1703f4 	orr	x20, xzr, x23
  e0:	b94002e0 	ldr	w0, [x23]
  e4:	6a15001f 	ands	wzr, w0, w21
  e8:	54000081 	b.ne	f8 <sd_readsector-0x390>  // b.any
  ec:	51000673 	sub	w19, w19, #0x1
  f0:	3100067f 	adds	wzr, w19, #0x1
  f4:	54000201 	b.ne	134 <sd_readsector-0x354>  // b.any
  f8:	b9400280 	ldr	w0, [x20]
  fc:	7100027f 	subs	wzr, w19, #0x0
 100:	5400008d 	b.le	110 <sd_readsector-0x378>
 104:	52a00221 	movz	w1, #0x11, lsl #16
 108:	6a01001f 	ands	wzr, w0, w1
 10c:	540001a0 	b.eq	140 <sd_readsector-0x348>  // b.none
 110:	d2800601 	movz	x1, #0x30
 114:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 118:	b9000020 	str	w0, [x1]
 11c:	12800000 	movn	w0, #0x0
 120:	a94153f3 	ldp	x19, x20, [sp, #16]
 124:	a9425bf5 	ldp	x21, x22, [sp, #32]
 128:	f9401bf7 	ldr	x23, [sp, #48]
 12c:	a8c47bfd 	ldp	x29, x30, [sp], #64
 130:	d65f03c0 	ret
 134:	52800020 	movz	w0, #0x1
 138:	94000000 	bl	0 <wait_micros>
 13c:	17ffffe9 	b	e0 <sd_readsector-0x3a8>
 140:	52900001 	movz	w1, #0x8000
 144:	72a02fc1 	movk	w1, #0x17e, lsl #16
 148:	6a01001f 	ands	wzr, w0, w1
 14c:	54000080 	b.eq	15c <sd_readsector-0x32c>  // b.none
 150:	b9000280 	str	w0, [x20]
 154:	12800020 	movn	w0, #0x1
 158:	17fffff2 	b	120 <sd_readsector-0x368>
 15c:	52800000 	movz	w0, #0x0
 160:	b9000296 	str	w22, [x20]
 164:	17ffffef 	b	120 <sd_readsector-0x368>
 168:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 16c:	910003fd 	add	x29, sp, #0x0
 170:	a9025bf5 	stp	x21, x22, [sp, #32]
 174:	90000015 	adrp	x21, 8 <sd_readsector-0x480>
 178:	a90153f3 	stp	x19, x20, [sp, #16]
 17c:	2a0103f6 	orr	w22, wzr, w1
 180:	f90002bf 	str	xzr, [x21]
 184:	2a0003f3 	orr	w19, wzr, w0
 188:	f9001bf7 	str	x23, [sp, #48]
 18c:	aa1503f4 	orr	x20, xzr, x21
 190:	36f80260 	tbz	w0, #31, 1dc <sd_readsector-0x2ac>
 194:	90000017 	adrp	x23, 0 <sd_readsector-0x488>
 198:	f94002e1 	ldr	x1, [x23]
 19c:	52a6e042 	movz	w2, #0x3702, lsl #16
 1a0:	52a6e000 	movz	w0, #0x3700, lsl #16
 1a4:	f100003f 	subs	xzr, x1, #0x0
 1a8:	1a801040 	csel	w0, w2, w0, ne  // ne = any
 1ac:	97ffffef 	bl	168 <sd_readsector-0x320>
 1b0:	f94002e1 	ldr	x1, [x23]
 1b4:	b4000121 	cbz	x1, 1d8 <sd_readsector-0x2b0>
 1b8:	35000100 	cbnz	w0, 1d8 <sd_readsector-0x2b0>
 1bc:	92800021 	movn	x1, #0x1
 1c0:	f90002a1 	str	x1, [x21]
 1c4:	a94153f3 	ldp	x19, x20, [sp, #16]
 1c8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 1cc:	f9401bf7 	ldr	x23, [sp, #48]
 1d0:	a8c47bfd 	ldp	x29, x30, [sp], #64
 1d4:	d65f03c0 	ret
 1d8:	12007a73 	and	w19, w19, #0x7fffffff
 1dc:	52800020 	movz	w0, #0x1
 1e0:	97ffff88 	bl	0 <sd_readsector-0x488>
 1e4:	340000a0 	cbz	w0, 1f8 <sd_readsector-0x290>
 1e8:	92800000 	movn	x0, #0x0
 1ec:	f9000280 	str	x0, [x20]
 1f0:	52800000 	movz	w0, #0x0
 1f4:	17fffff4 	b	1c4 <sd_readsector-0x2c4>
 1f8:	d2800600 	movz	x0, #0x30
 1fc:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 200:	b9400001 	ldr	w1, [x0]
 204:	b9000001 	str	w1, [x0]
 208:	d2800100 	movz	x0, #0x8
 20c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 210:	b9000016 	str	w22, [x0]
 214:	b9000413 	str	w19, [x0, #4]
 218:	52a6e000 	movz	w0, #0x3700, lsl #16
 21c:	6b00027f 	subs	wzr, w19, w0
 220:	52a10040 	movz	w0, #0x802, lsl #16
 224:	1a9f17f5 	csinc	w21, wzr, wzr, ne  // ne = any
 228:	6b00027f 	subs	wzr, w19, w0
 22c:	1a9f16a0 	csinc	w0, w21, wzr, ne  // ne = any
 230:	34000060 	cbz	w0, 23c <sd_readsector-0x24c>
 234:	52800c80 	movz	w0, #0x64
 238:	94000000 	bl	0 <wait_micros>
 23c:	52800020 	movz	w0, #0x1
 240:	97ffff9a 	bl	a8 <sd_readsector-0x3e0>
 244:	34000060 	cbz	w0, 250 <sd_readsector-0x238>
 248:	93407c00 	sbfm	x0, x0, #0, #31
 24c:	17ffffe8 	b	1ec <sd_readsector-0x29c>
 250:	d2800201 	movz	x1, #0x10
 254:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 258:	7100027f 	subs	wzr, w19, #0x0
 25c:	b9400021 	ldr	w1, [x1]
 260:	1a9f16b5 	csinc	w21, w21, wzr, ne  // ne = any
 264:	35fffb15 	cbnz	w21, 1c4 <sd_readsector-0x2c4>
 268:	52a6e040 	movz	w0, #0x3702, lsl #16
 26c:	6b00027f 	subs	wzr, w19, w0
 270:	54000061 	b.ne	27c <sd_readsector-0x20c>  // b.any
 274:	121b0020 	and	w0, w1, #0x20
 278:	17ffffd3 	b	1c4 <sd_readsector-0x2c4>
 27c:	52a10040 	movz	w0, #0x802, lsl #16
 280:	6b00027f 	subs	wzr, w19, w0
 284:	540000a1 	b.ne	298 <sd_readsector-0x1f0>  // b.any
 288:	6b16003f 	subs	wzr, w1, w22
 28c:	12800020 	movn	w0, #0x1
 290:	1a8003e0 	csel	w0, wzr, w0, eq  // eq = none
 294:	17ffffcc 	b	1c4 <sd_readsector-0x2c4>
 298:	52a04020 	movz	w0, #0x201, lsl #16
 29c:	6b00027f 	subs	wzr, w19, w0
 2a0:	540001c1 	b.ne	2d8 <sd_readsector-0x1b0>  // b.any
 2a4:	d2800380 	movz	x0, #0x1c
 2a8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 2ac:	d2800282 	movz	x2, #0x14
 2b0:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 2b4:	b9400003 	ldr	w3, [x0]
 2b8:	d2800300 	movz	x0, #0x18
 2bc:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 2c0:	2a030021 	orr	w1, w1, w3
 2c4:	b9400000 	ldr	w0, [x0]
 2c8:	b9400042 	ldr	w2, [x2]
 2cc:	2a020000 	orr	w0, w0, w2
 2d0:	2a000020 	orr	w0, w1, w0
 2d4:	17ffffbc 	b	1c4 <sd_readsector-0x2c4>
 2d8:	52a06040 	movz	w0, #0x302, lsl #16
 2dc:	6b00027f 	subs	wzr, w19, w0
 2e0:	540001a1 	b.ne	314 <sd_readsector-0x174>  // b.any
 2e4:	53185c20 	ubfm	w0, w1, #24, #23
 2e8:	531a6422 	ubfm	w2, w1, #26, #25
 2ec:	120a0003 	and	w3, w0, #0x400000
 2f0:	120d0042 	and	w2, w2, #0x80000
 2f4:	2a030042 	orr	w2, w2, w3
 2f8:	12090003 	and	w3, w0, #0x800000
 2fc:	121e0020 	and	w0, w1, #0x4
 300:	2a030000 	orr	w0, w0, w3
 304:	2a020000 	orr	w0, w0, w2
 308:	f9000280 	str	x0, [x20]
 30c:	12103c20 	and	w0, w1, #0xffff0000
 310:	17ffffad 	b	1c4 <sd_readsector-0x2c4>
 314:	52980080 	movz	w0, #0xc004
 318:	72bfff20 	movk	w0, #0xfff9, lsl #16
 31c:	0a000020 	and	w0, w1, w0
 320:	17ffffa9 	b	1c4 <sd_readsector-0x2c4>
 324:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 328:	910003fd 	add	x29, sp, #0x0
 32c:	a90153f3 	stp	x19, x20, [sp, #16]
 330:	52990d53 	movz	w19, #0xc86a
 334:	72a04f73 	movk	w19, #0x27b, lsl #16
 338:	5290d414 	movz	w20, #0x86a0
 33c:	72a00034 	movk	w20, #0x1, lsl #16
 340:	1ac00a73 	udiv	w19, w19, w0
 344:	f90013f5 	str	x21, [sp, #32]
 348:	d2800495 	movz	x21, #0x24
 34c:	f2a7e615 	movk	x21, #0x3f30, lsl #16
 350:	b94002a0 	ldr	w0, [x21]
 354:	f240041f 	ands	xzr, x0, #0x3
 358:	54000180 	b.eq	388 <sd_readsector-0x100>  // b.none
 35c:	51000694 	sub	w20, w20, #0x1
 360:	3100069f 	adds	wzr, w20, #0x1
 364:	540000c1 	b.ne	37c <sd_readsector-0x10c>  // b.any
 368:	12800020 	movn	w0, #0x1
 36c:	a94153f3 	ldp	x19, x20, [sp, #16]
 370:	f94013f5 	ldr	x21, [sp, #32]
 374:	a8c37bfd 	ldp	x29, x30, [sp], #48
 378:	d65f03c0 	ret
 37c:	52800020 	movz	w0, #0x1
 380:	94000000 	bl	0 <wait_micros>
 384:	17fffff3 	b	350 <sd_readsector-0x138>
 388:	34ffff14 	cbz	w20, 368 <sd_readsector-0x120>
 38c:	d2800581 	movz	x1, #0x2c
 390:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 394:	b9400020 	ldr	w0, [x1]
 398:	121d7800 	and	w0, w0, #0xfffffffb
 39c:	b9000020 	str	w0, [x1]
 3a0:	52800140 	movz	w0, #0xa
 3a4:	94000000 	bl	0 <wait_micros>
 3a8:	71000660 	subs	w0, w19, #0x1
 3ac:	540001a0 	b.eq	3e0 <sd_readsector-0xa8>  // b.none
 3b0:	53081c01 	ubfm	w1, w0, #8, #7
 3b4:	72040c3f 	ands	wzr, w1, #0xf0000000
 3b8:	54000521 	b.ne	45c <sd_readsector-0x2c>  // b.any
 3bc:	53040c01 	ubfm	w1, w0, #4, #3
 3c0:	52800080 	movz	w0, #0x4
 3c4:	7202043f 	ands	wzr, w1, #0xc0000000
 3c8:	54000061 	b.ne	3d4 <sd_readsector-0xb4>  // b.any
 3cc:	531e7421 	ubfm	w1, w1, #30, #29
 3d0:	51000800 	sub	w0, w0, #0x2
 3d4:	2a2103e1 	orn	w1, wzr, w1
 3d8:	4b417c00 	sub	w0, w0, w1, lsr #31
 3dc:	51000400 	sub	w0, w0, #0x1
 3e0:	90000001 	adrp	x1, 0 <sd_readsector-0x488>
 3e4:	f9400021 	ldr	x1, [x1]
 3e8:	f100043f 	subs	xzr, x1, #0x1
 3ec:	54000068 	b.hi	3f8 <sd_readsector-0x90>  // b.pmore
 3f0:	52800033 	movz	w19, #0x1
 3f4:	1ac02273 	lslv	w19, w19, w0
 3f8:	d2800594 	movz	x20, #0x2c
 3fc:	f2a7e614 	movk	x20, #0x3f30, lsl #16
 400:	71000a7f 	subs	wzr, w19, #0x2
 404:	52800041 	movz	w1, #0x2
 408:	b9400280 	ldr	w0, [x20]
 40c:	1a812273 	csel	w19, w19, w1, cs  // cs = hs, nlast
 410:	12105400 	and	w0, w0, #0xffff003f
 414:	2a132013 	orr	w19, w0, w19, lsl #8
 418:	b9000293 	str	w19, [x20]
 41c:	52800140 	movz	w0, #0xa
 420:	5284e213 	movz	w19, #0x2710
 424:	94000000 	bl	0 <wait_micros>
 428:	b9400280 	ldr	w0, [x20]
 42c:	321e0000 	orr	w0, w0, #0x4
 430:	b9000280 	str	w0, [x20]
 434:	52800140 	movz	w0, #0xa
 438:	94000000 	bl	0 <wait_micros>
 43c:	b9400280 	ldr	w0, [x20]
 440:	37080120 	tbnz	w0, #1, 464 <sd_readsector-0x24>
 444:	51000673 	sub	w19, w19, #0x1
 448:	3100067f 	adds	wzr, w19, #0x1
 44c:	54fff8e0 	b.eq	368 <sd_readsector-0x120>  // b.none
 450:	52800140 	movz	w0, #0xa
 454:	94000000 	bl	0 <wait_micros>
 458:	17fffff9 	b	43c <sd_readsector-0x4c>
 45c:	52800100 	movz	w0, #0x8
 460:	17ffffd9 	b	3c4 <sd_readsector-0xc4>
 464:	34fff833 	cbz	w19, 368 <sd_readsector-0x120>
 468:	52800000 	movz	w0, #0x0
 46c:	17ffffc0 	b	36c <sd_readsector-0x11c>
 470:	51000400 	sub	w0, w0, #0x1
 474:	3100041f 	adds	wzr, w0, #0x1
 478:	54000041 	b.ne	480 <sd_readsector-0x8>  // b.any
 47c:	d65f03c0 	ret
 480:	d503201f 	hint	#0x0
 484:	17fffffb 	b	470 <sd_readsector-0x18>

0000000000000488 <sd_readsector>:
 488:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
 48c:	910003fd 	add	x29, sp, #0x0
 490:	a90153f3 	stp	x19, x20, [sp, #16]
 494:	a9025bf5 	stp	x21, x22, [sp, #32]
 498:	2a0003f5 	orr	w21, wzr, w0
 49c:	aa0103f6 	orr	x22, xzr, x1
 4a0:	52800040 	movz	w0, #0x2
 4a4:	97fffed7 	bl	0 <sd_readsector-0x488>
 4a8:	34000140 	cbz	w0, 4d0 <sd_readsector+0x48>
 4ac:	90000000 	adrp	x0, 8 <sd_readsector-0x480>
 4b0:	92800001 	movn	x1, #0x0
 4b4:	52800013 	movz	w19, #0x0
 4b8:	f9000001 	str	x1, [x0]
 4bc:	2a1303e0 	orr	w0, wzr, w19
 4c0:	a94153f3 	ldp	x19, x20, [sp, #16]
 4c4:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4c8:	a8c37bfd 	ldp	x29, x30, [sp], #48
 4cc:	d65f03c0 	ret
 4d0:	2a0003f3 	orr	w19, wzr, w0
 4d4:	90000000 	adrp	x0, 0 <sd_readsector-0x488>
 4d8:	91000001 	add	x1, x0, #0x0
 4dc:	aa0003f4 	orr	x20, xzr, x0
 4e0:	d2800080 	movz	x0, #0x4
 4e4:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 4e8:	f9400822 	ldr	x2, [x1, #16]
 4ec:	52804001 	movz	w1, #0x200
 4f0:	72a00021 	movk	w1, #0x1, lsl #16
 4f4:	b9000001 	str	w1, [x0]
 4f8:	36000102 	tbz	w2, #0, 518 <sd_readsector+0x90>
 4fc:	2a1503e1 	orr	w1, wzr, w21
 500:	52800200 	movz	w0, #0x10
 504:	72a22440 	movk	w0, #0x1122, lsl #16
 508:	97ffff18 	bl	168 <sd_readsector-0x320>
 50c:	90000000 	adrp	x0, 8 <sd_readsector-0x480>
 510:	f9400000 	ldr	x0, [x0]
 514:	b5fffd40 	cbnz	x0, 4bc <sd_readsector+0x34>
 518:	91000280 	add	x0, x20, #0x0
 51c:	f9400800 	ldr	x0, [x0, #16]
 520:	37000100 	tbnz	w0, #0, 540 <sd_readsector+0xb8>
 524:	53175aa1 	ubfm	w1, w21, #23, #22
 528:	52800200 	movz	w0, #0x10
 52c:	72a22440 	movk	w0, #0x1122, lsl #16
 530:	97ffff0e 	bl	168 <sd_readsector-0x320>
 534:	90000000 	adrp	x0, 8 <sd_readsector-0x480>
 538:	f9400000 	ldr	x0, [x0]
 53c:	b5fffc00 	cbnz	x0, 4bc <sd_readsector+0x34>
 540:	52800400 	movz	w0, #0x20
 544:	97fffed9 	bl	a8 <sd_readsector-0x3e0>
 548:	d2800001 	movz	x1, #0x0
 54c:	350001c0 	cbnz	w0, 584 <sd_readsector+0xfc>
 550:	d2800402 	movz	x2, #0x20
 554:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 558:	b9400040 	ldr	w0, [x2]
 55c:	b8217ac0 	str	w0, [x22, x1, lsl #2]
 560:	91000421 	add	x1, x1, #0x1
 564:	f102003f 	subs	xzr, x1, #0x80
 568:	54ffff81 	b.ne	558 <sd_readsector+0xd0>  // b.any
 56c:	90000000 	adrp	x0, 8 <sd_readsector-0x480>
 570:	f9400000 	ldr	x0, [x0]
 574:	52804013 	movz	w19, #0x200
 578:	f100001f 	subs	xzr, x0, #0x0
 57c:	1a9313f3 	csel	w19, wzr, w19, ne  // ne = any
 580:	17ffffcf 	b	4bc <sd_readsector+0x34>
 584:	90000001 	adrp	x1, 8 <sd_readsector-0x480>
 588:	93407c00 	sbfm	x0, x0, #0, #31
 58c:	f9000020 	str	x0, [x1]
 590:	17ffffcb 	b	4bc <sd_readsector+0x34>

0000000000000594 <sd_init>:
 594:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
 598:	d2800203 	movz	x3, #0x10
 59c:	f2a7e403 	movk	x3, #0x3f20, lsl #16
 5a0:	910003fd 	add	x29, sp, #0x0
 5a4:	b9400060 	ldr	w0, [x3]
 5a8:	d2801282 	movz	x2, #0x94
 5ac:	f2a7e402 	movk	x2, #0x3f20, lsl #16
 5b0:	a90153f3 	stp	x19, x20, [sp, #16]
 5b4:	52800044 	movz	w4, #0x2
 5b8:	a9025bf5 	stp	x21, x22, [sp, #32]
 5bc:	2a0003e0 	orr	w0, wzr, w0
 5c0:	a90363f7 	stp	x23, x24, [sp, #48]
 5c4:	9268f000 	and	x0, x0, #0xffffffffff1fffff
 5c8:	a9046bf9 	stp	x25, x26, [sp, #64]
 5cc:	d2800593 	movz	x19, #0x2c
 5d0:	f2a7e613 	movk	x19, #0x3f30, lsl #16
 5d4:	f9002bfb 	str	x27, [sp, #80]
 5d8:	d284e215 	movz	x21, #0x2710
 5dc:	b9000060 	str	w0, [x3]
 5e0:	528012c0 	movz	w0, #0x96
 5e4:	b9000044 	str	w4, [x2]
 5e8:	97ffffa2 	bl	470 <sd_readsector-0x18>
 5ec:	d2801381 	movz	x1, #0x9c
 5f0:	f2a7e401 	movk	x1, #0x3f20, lsl #16
 5f4:	52900000 	movz	w0, #0x8000
 5f8:	b9000020 	str	w0, [x1]
 5fc:	528012c0 	movz	w0, #0x96
 600:	97ffff9c 	bl	470 <sd_readsector-0x18>
 604:	b900005f 	str	wzr, [x2]
 608:	b900003f 	str	wzr, [x1]
 60c:	d2800d05 	movz	x5, #0x68
 610:	f2a7e405 	movk	x5, #0x3f20, lsl #16
 614:	b94000a0 	ldr	w0, [x5]
 618:	32110000 	orr	w0, w0, #0x8000
 61c:	b90000a0 	str	w0, [x5]
 620:	b9400060 	ldr	w0, [x3]
 624:	32081400 	orr	w0, w0, #0x3f000000
 628:	b9000060 	str	w0, [x3]
 62c:	b9000044 	str	w4, [x2]
 630:	528012c0 	movz	w0, #0x96
 634:	97ffff8f 	bl	470 <sd_readsector-0x18>
 638:	52a00060 	movz	w0, #0x3, lsl #16
 63c:	b9000020 	str	w0, [x1]
 640:	528012c0 	movz	w0, #0x96
 644:	97ffff8b 	bl	470 <sd_readsector-0x18>
 648:	b900005f 	str	wzr, [x2]
 64c:	b900003f 	str	wzr, [x1]
 650:	d2800283 	movz	x3, #0x14
 654:	f2a7e403 	movk	x3, #0x3f20, lsl #16
 658:	b9400060 	ldr	w0, [x3]
 65c:	32002c00 	orr	w0, w0, #0xfff
 660:	b9000060 	str	w0, [x3]
 664:	b9000044 	str	w4, [x2]
 668:	528012c0 	movz	w0, #0x96
 66c:	97ffff81 	bl	470 <sd_readsector-0x18>
 670:	52a00780 	movz	w0, #0x3c, lsl #16
 674:	b9000020 	str	w0, [x1]
 678:	528012c0 	movz	w0, #0x96
 67c:	97ffff7d 	bl	470 <sd_readsector-0x18>
 680:	b900005f 	str	wzr, [x2]
 684:	b900003f 	str	wzr, [x1]
 688:	d2801f80 	movz	x0, #0xfc
 68c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 690:	90000014 	adrp	x20, 0 <sd_readsector-0x488>
 694:	91000281 	add	x1, x20, #0x0
 698:	b9400000 	ldr	w0, [x0]
 69c:	d3505c00 	ubfm	x0, x0, #16, #23
 6a0:	f9000420 	str	x0, [x1, #8]
 6a4:	d2800500 	movz	x0, #0x28
 6a8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 6ac:	b900001f 	str	wzr, [x0]
 6b0:	b9400260 	ldr	w0, [x19]
 6b4:	32080000 	orr	w0, w0, #0x1000000
 6b8:	b9000260 	str	w0, [x19]
 6bc:	52800140 	movz	w0, #0xa
 6c0:	94000000 	bl	0 <wait_micros>
 6c4:	b9400260 	ldr	w0, [x19]
 6c8:	36c001a0 	tbz	w0, #24, 6fc <sd_init+0x168>
 6cc:	d10006b5 	sub	x21, x21, #0x1
 6d0:	b10006bf 	adds	xzr, x21, #0x1
 6d4:	54ffff41 	b.ne	6bc <sd_init+0x128>  // b.any
 6d8:	12800033 	movn	w19, #0x1
 6dc:	2a1303e0 	orr	w0, wzr, w19
 6e0:	f9402bfb 	ldr	x27, [sp, #80]
 6e4:	a94153f3 	ldp	x19, x20, [sp, #16]
 6e8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 6ec:	a94363f7 	ldp	x23, x24, [sp, #48]
 6f0:	a9446bf9 	ldp	x25, x26, [sp, #64]
 6f4:	a8c67bfd 	ldp	x29, x30, [sp], #96
 6f8:	d65f03c0 	ret
 6fc:	b4fffef5 	cbz	x21, 6d8 <sd_init+0x144>
 700:	b9400260 	ldr	w0, [x19]
 704:	52800021 	movz	w1, #0x1
 708:	72a001c1 	movk	w1, #0xe, lsl #16
 70c:	2a010000 	orr	w0, w0, w1
 710:	b9000260 	str	w0, [x19]
 714:	52800140 	movz	w0, #0xa
 718:	94000000 	bl	0 <wait_micros>
 71c:	52835000 	movz	w0, #0x1a80
 720:	72a000c0 	movk	w0, #0x6, lsl #16
 724:	97ffff00 	bl	324 <sd_readsector-0x164>
 728:	2a0003f3 	orr	w19, wzr, w0
 72c:	35fffd80 	cbnz	w0, 6dc <sd_init+0x148>
 730:	d2800702 	movz	x2, #0x38
 734:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 738:	12800001 	movn	w1, #0x0
 73c:	90000015 	adrp	x21, 8 <sd_readsector-0x480>
 740:	b9000041 	str	w1, [x2]
 744:	d2800682 	movz	x2, #0x34
 748:	f2a7e602 	movk	x2, #0x3f30, lsl #16
 74c:	aa1503f7 	orr	x23, xzr, x21
 750:	b9000041 	str	w1, [x2]
 754:	91000281 	add	x1, x20, #0x0
 758:	f90002bf 	str	xzr, [x21]
 75c:	f900029f 	str	xzr, [x20]
 760:	a9017c3f 	stp	xzr, xzr, [x1, #16]
 764:	52800001 	movz	w1, #0x0
 768:	97fffe80 	bl	168 <sd_readsector-0x320>
 76c:	f94002b3 	ldr	x19, [x21]
 770:	b5fffb73 	cbnz	x19, 6dc <sd_init+0x148>
 774:	52803541 	movz	w1, #0x1aa
 778:	52a10040 	movz	w0, #0x802, lsl #16
 77c:	97fffe7b 	bl	168 <sd_readsector-0x320>
 780:	f94002b3 	ldr	x19, [x21]
 784:	b5fffad3 	cbnz	x19, 6dc <sd_init+0x148>
 788:	52900016 	movz	w22, #0x8000
 78c:	72aa3ff6 	movk	w22, #0x51ff, lsl #16
 790:	d28000d5 	movz	x21, #0x6
 794:	d2800001 	movz	x1, #0x0
 798:	1400000f 	b	7d4 <sd_init+0x240>
 79c:	52803200 	movz	w0, #0x190
 7a0:	97ffff34 	bl	470 <sd_readsector-0x18>
 7a4:	2a1603e1 	orr	w1, wzr, w22
 7a8:	52b52040 	movz	w0, #0xa902, lsl #16
 7ac:	97fffe6f 	bl	168 <sd_readsector-0x320>
 7b0:	93407c01 	sbfm	x1, x0, #0, #31
 7b4:	36f80100 	tbz	w0, #31, 7d4 <sd_init+0x240>
 7b8:	7211201f 	ands	wzr, w0, #0xff8000
 7bc:	540000c0 	b.eq	7d4 <sd_init+0x240>  // b.none
 7c0:	36f000a0 	tbz	w0, #30, 7d4 <sd_init+0x240>
 7c4:	f94002f3 	ldr	x19, [x23]
 7c8:	d1000660 	sub	x0, x19, #0x1
 7cc:	b1000c1f 	adds	xzr, x0, #0x3
 7d0:	54fff869 	b.ls	6dc <sd_init+0x148>  // b.plast
 7d4:	b7f80381 	tbnz	x1, #63, 844 <sd_init+0x2b0>
 7d8:	d10006b5 	sub	x21, x21, #0x1
 7dc:	b10006bf 	adds	xzr, x21, #0x1
 7e0:	54fffde1 	b.ne	79c <sd_init+0x208>  // b.any
 7e4:	12800013 	movn	w19, #0x0
 7e8:	17ffffbd 	b	6dc <sd_init+0x148>
 7ec:	52800020 	movz	w0, #0x1
 7f0:	94000000 	bl	0 <wait_micros>
 7f4:	aa1603e0 	orr	x0, xzr, x22
 7f8:	aa0003f6 	orr	x22, xzr, x0
 7fc:	14000043 	b	908 <sd_init+0x374>
 800:	d2800501 	movz	x1, #0x28
 804:	f2a7e601 	movk	x1, #0x3f30, lsl #16
 808:	b9400020 	ldr	w0, [x1]
 80c:	321f0000 	orr	w0, w0, #0x2
 810:	b9000020 	str	w0, [x1]
 814:	91000281 	add	x1, x20, #0x0
 818:	f9400820 	ldr	x0, [x1, #16]
 81c:	36c80080 	tbz	w0, #25, 82c <sd_init+0x298>
 820:	b4000078 	cbz	x24, 82c <sd_init+0x298>
 824:	927ff800 	and	x0, x0, #0xfffffffffffffffe
 828:	f9000820 	str	x0, [x1, #16]
 82c:	91000294 	add	x20, x20, #0x0
 830:	92401ea1 	and	x1, x21, #0xff
 834:	f9400a95 	ldr	x21, [x20, #16]
 838:	aa0102a1 	orr	x1, x21, x1
 83c:	f9000a81 	str	x1, [x20, #16]
 840:	17ffffa7 	b	6dc <sd_init+0x148>
 844:	b4fffd15 	cbz	x21, 7e4 <sd_init+0x250>
 848:	f271203f 	ands	xzr, x1, #0xff8000
 84c:	54fff460 	b.eq	6d8 <sd_init+0x144>  // b.none
 850:	92620038 	and	x24, x1, #0x40000000
 854:	531e7835 	ubfm	w21, w1, #30, #30
 858:	52a04020 	movz	w0, #0x201, lsl #16
 85c:	52800001 	movz	w1, #0x0
 860:	97fffe42 	bl	168 <sd_readsector-0x320>
 864:	52800001 	movz	w1, #0x0
 868:	52a06040 	movz	w0, #0x302, lsl #16
 86c:	97fffe3f 	bl	168 <sd_readsector-0x320>
 870:	f94002f3 	ldr	x19, [x23]
 874:	93407c00 	sbfm	x0, x0, #0, #31
 878:	f9000280 	str	x0, [x20]
 87c:	b5fff313 	cbnz	x19, 6dc <sd_init+0x148>
 880:	528f0800 	movz	w0, #0x7840
 884:	72a02fa0 	movk	w0, #0x17d, lsl #16
 888:	97fffea7 	bl	324 <sd_readsector-0x164>
 88c:	2a0003f3 	orr	w19, wzr, w0
 890:	35fff260 	cbnz	w0, 6dc <sd_init+0x148>
 894:	b9400281 	ldr	w1, [x20]
 898:	52a0e060 	movz	w0, #0x703, lsl #16
 89c:	97fffe33 	bl	168 <sd_readsector-0x320>
 8a0:	f94002f3 	ldr	x19, [x23]
 8a4:	b5fff1d3 	cbnz	x19, 6dc <sd_init+0x148>
 8a8:	52800040 	movz	w0, #0x2
 8ac:	97fffdd5 	bl	0 <sd_readsector-0x488>
 8b0:	35fff9a0 	cbnz	w0, 7e4 <sd_init+0x250>
 8b4:	d2800080 	movz	x0, #0x4
 8b8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
 8bc:	52800101 	movz	w1, #0x8
 8c0:	72a00021 	movk	w1, #0x1, lsl #16
 8c4:	b9000001 	str	w1, [x0]
 8c8:	52800001 	movz	w1, #0x0
 8cc:	52800200 	movz	w0, #0x10
 8d0:	72b66440 	movk	w0, #0xb322, lsl #16
 8d4:	97fffe25 	bl	168 <sd_readsector-0x320>
 8d8:	f94002f3 	ldr	x19, [x23]
 8dc:	b5fff013 	cbnz	x19, 6dc <sd_init+0x148>
 8e0:	52800400 	movz	w0, #0x20
 8e4:	97fffdf1 	bl	a8 <sd_readsector-0x3e0>
 8e8:	2a0003f3 	orr	w19, wzr, w0
 8ec:	35fff7c0 	cbnz	w0, 7e4 <sd_init+0x250>
 8f0:	91000299 	add	x25, x20, #0x0
 8f4:	d280049a 	movz	x26, #0x24
 8f8:	f2a7e61a 	movk	x26, #0x3f30, lsl #16
 8fc:	d280041b 	movz	x27, #0x20
 900:	f2a7e61b 	movk	x27, #0x3f30, lsl #16
 904:	d2800016 	movz	x22, #0x0
 908:	b9400340 	ldr	w0, [x26]
 90c:	365ff700 	tbz	w0, #11, 7ec <sd_init+0x258>
 910:	910006c0 	add	x0, x22, #0x1
 914:	b9400361 	ldr	w1, [x27]
 918:	8b160f36 	add	x22, x25, x22, lsl #3
 91c:	f100081f 	subs	xzr, x0, #0x2
 920:	2a0103e1 	orr	w1, wzr, w1
 924:	f9000ac1 	str	x1, [x22, #16]
 928:	54fff681 	b.ne	7f8 <sd_init+0x264>  // b.any
 92c:	f9400b20 	ldr	x0, [x25, #16]
 930:	3657f720 	tbz	w0, #10, 814 <sd_init+0x280>
 934:	f9400321 	ldr	x1, [x25]
 938:	52b0c040 	movz	w0, #0x8602, lsl #16
 93c:	321f0021 	orr	w1, w1, #0x2
 940:	97fffe0a 	bl	168 <sd_readsector-0x320>
 944:	f94002e0 	ldr	x0, [x23]
 948:	b4fff5c0 	cbz	x0, 800 <sd_init+0x26c>
 94c:	2a0003f3 	orr	w19, wzr, w0
 950:	17ffff63 	b	6dc <sd_init+0x148>
