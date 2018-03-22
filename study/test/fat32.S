
obj/fat32.o：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <fat32_init>:
   0:	d10a43ff 	sub	sp, sp, #0x290
   4:	d2800282 	mov	x2, #0x14                  	// #20
   8:	90000001 	adrp	x1, 0 <fat32_init>
   c:	91000021 	add	x1, x1, #0x0
  10:	a9007bfd 	stp	x29, x30, [sp]
  14:	910003fd 	mov	x29, sp
  18:	a90153f3 	stp	x19, x20, [sp, #16]
  1c:	a90363f7 	stp	x23, x24, [sp, #48]
  20:	90000018 	adrp	x24, 0 <fat32_init>
  24:	91000313 	add	x19, x24, #0x0
  28:	a9025bf5 	stp	x21, x22, [sp, #32]
  2c:	a9046bf9 	stp	x25, x26, [sp, #64]
  30:	aa0003f6 	mov	x22, x0
  34:	aa1303e0 	mov	x0, x19
  38:	94000000 	bl	0 <__debug>
  3c:	90000001 	adrp	x1, 0 <fat32_init>
  40:	91000021 	add	x1, x1, #0x0
  44:	d2800342 	mov	x2, #0x1a                  	// #26
  48:	aa1303e0 	mov	x0, x19
  4c:	94000000 	bl	0 <__debug>
  50:	d2801700 	mov	x0, #0xb8                  	// #184
  54:	94000000 	bl	0 <malloc>
  58:	aa0003f5 	mov	x21, x0
  5c:	b4001240 	cbz	x0, 2a4 <fat32_init+0x2a4>
  60:	f9400ac2 	ldr	x2, [x22, #16]
  64:	910243b7 	add	x23, x29, #0x90
  68:	aa1703e1 	mov	x1, x23
  6c:	52800000 	mov	w0, #0x0                   	// #0
  70:	d63f0040 	blr	x2
  74:	7108001f 	cmp	w0, #0x200
  78:	54000140 	b.eq	a0 <fat32_init+0xa0>  // b.none
  7c:	91000302 	add	x2, x24, #0x0
  80:	90000003 	adrp	x3, 0 <fat32_init>
  84:	90000000 	adrp	x0, 0 <fat32_init>
  88:	52800004 	mov	w4, #0x0                   	// #0
  8c:	91000063 	add	x3, x3, #0x0
  90:	91004042 	add	x2, x2, #0x10
  94:	52800241 	mov	w1, #0x12                  	// #18
  98:	91000000 	add	x0, x0, #0x0
  9c:	94000000 	bl	0 <__panic>
  a0:	910143b9 	add	x25, x29, #0x50
  a4:	d2800142 	mov	x2, #0xa                   	// #10
  a8:	9106d2e1 	add	x1, x23, #0x1b4
  ac:	aa1903e0 	mov	x0, x25
  b0:	94000000 	bl	0 <memcpy>
  b4:	91071af3 	add	x19, x23, #0x1c6
  b8:	91004334 	add	x20, x25, #0x10
  bc:	910a5bba 	add	x26, x29, #0x296
  c0:	d2800042 	mov	x2, #0x2                   	// #2
  c4:	910a43a1 	add	x1, x29, #0x290
  c8:	9100f320 	add	x0, x25, #0x3c
  cc:	94000000 	bl	0 <memcpy>
  d0:	385f8262 	ldurb	w2, [x19, #-8]
  d4:	aa1303e1 	mov	x1, x19
  d8:	385fc260 	ldurb	w0, [x19, #-4]
  dc:	381fc282 	sturb	w2, [x20, #-4]
  e0:	d2800082 	mov	x2, #0x4                   	// #4
  e4:	381fd280 	sturb	w0, [x20, #-3]
  e8:	aa1403e0 	mov	x0, x20
  ec:	94000000 	bl	0 <memcpy>
  f0:	91001261 	add	x1, x19, #0x4
  f4:	91001280 	add	x0, x20, #0x4
  f8:	d2800082 	mov	x2, #0x4                   	// #4
  fc:	91004273 	add	x19, x19, #0x10
 100:	94000000 	bl	0 <memcpy>
 104:	91003294 	add	x20, x20, #0xc
 108:	eb13035f 	cmp	x26, x19
 10c:	54fffe21 	b.ne	d0 <fat32_init+0xd0>  // b.any
 110:	91003722 	add	x2, x25, #0xd
 114:	52800001 	mov	w1, #0x0                   	// #0
 118:	39400040 	ldrb	w0, [x2]
 11c:	91003042 	add	x2, x2, #0xc
 120:	51002c00 	sub	w0, w0, #0xb
 124:	12001c00 	and	w0, w0, #0xff
 128:	7100041f 	cmp	w0, #0x1
 12c:	54000b09 	b.ls	28c <fat32_init+0x28c>  // b.plast
 130:	11000421 	add	w1, w1, #0x1
 134:	7100103f 	cmp	w1, #0x4
 138:	54ffff01 	b.ne	118 <fat32_init+0x118>  // b.any
 13c:	910183b4 	add	x20, x29, #0x60
 140:	91000302 	add	x2, x24, #0x0
 144:	90000003 	adrp	x3, 0 <fat32_init>
 148:	90000000 	adrp	x0, 0 <fat32_init>
 14c:	52800013 	mov	w19, #0x0                   	// #0
 150:	91000063 	add	x3, x3, #0x0
 154:	91008042 	add	x2, x2, #0x20
 158:	528005c1 	mov	w1, #0x2e                  	// #46
 15c:	91000000 	add	x0, x0, #0x0
 160:	94000000 	bl	0 <__panic>
 164:	f9400ac2 	ldr	x2, [x22, #16]
 168:	aa1703e1 	mov	x1, x23
 16c:	2a1303e0 	mov	w0, w19
 170:	d63f0040 	blr	x2
 174:	7108001f 	cmp	w0, #0x200
 178:	54000160 	b.eq	1a4 <fat32_init+0x1a4>  // b.none
 17c:	91000302 	add	x2, x24, #0x0
 180:	90000003 	adrp	x3, 0 <fat32_init>
 184:	90000000 	adrp	x0, 0 <fat32_init>
 188:	52800005 	mov	w5, #0x0                   	// #0
 18c:	2a1303e4 	mov	w4, w19
 190:	91000063 	add	x3, x3, #0x0
 194:	91008042 	add	x2, x2, #0x20
 198:	52800621 	mov	w1, #0x31                  	// #49
 19c:	91000000 	add	x0, x0, #0x0
 1a0:	94000000 	bl	0 <__panic>
 1a4:	91003339 	add	x25, x25, #0xc
 1a8:	52800000 	mov	w0, #0x0                   	// #0
 1ac:	39400321 	ldrb	w1, [x25]
 1b0:	91003339 	add	x25, x25, #0xc
 1b4:	7102003f 	cmp	w1, #0x80
 1b8:	54000180 	b.eq	1e8 <fat32_init+0x1e8>  // b.none
 1bc:	11000400 	add	w0, w0, #0x1
 1c0:	7100101f 	cmp	w0, #0x4
 1c4:	54ffff41 	b.ne	1ac <fat32_init+0x1ac>  // b.any
 1c8:	90000003 	adrp	x3, 0 <fat32_init>
 1cc:	90000000 	adrp	x0, 0 <fat32_init>
 1d0:	91000063 	add	x3, x3, #0x0
 1d4:	91000000 	add	x0, x0, #0x0
 1d8:	91000302 	add	x2, x24, #0x0
 1dc:	52800a01 	mov	w1, #0x50                  	// #80
 1e0:	94000000 	bl	0 <__panic>
 1e4:	12800000 	mov	w0, #0xffffffff            	// #-1
 1e8:	93407c00 	sxtw	x0, w0
 1ec:	79413fa4 	ldrh	w4, [x29, #158]
 1f0:	910282b3 	add	x19, x21, #0xa0
 1f4:	d2800042 	mov	x2, #0x2                   	// #2
 1f8:	8b000403 	add	x3, x0, x0, lsl #1
 1fc:	91002ee1 	add	x1, x23, #0xb
 200:	aa1303e0 	mov	x0, x19
 204:	b8637a83 	ldr	w3, [x20, x3, lsl #2]
 208:	0b040063 	add	w3, w3, w4
 20c:	b900aaa3 	str	w3, [x21, #168]
 210:	94000000 	bl	0 <memcpy>
 214:	394277a0 	ldrb	w0, [x29, #157]
 218:	39028aa0 	strb	w0, [x21, #162]
 21c:	aa1503e0 	mov	x0, x21
 220:	b940aaa2 	ldr	w2, [x21, #168]
 224:	b940b7a3 	ldr	w3, [x29, #180]
 228:	b940bfa1 	ldr	w1, [x29, #188]
 22c:	a94016c4 	ldp	x4, x5, [x22]
 230:	b900a6a3 	str	w3, [x21, #164]
 234:	b900b2a1 	str	w1, [x21, #176]
 238:	794142a6 	ldrh	w6, [x21, #160]
 23c:	394283a1 	ldrb	w1, [x29, #160]
 240:	a90096a4 	stp	x4, x5, [x21, #8]
 244:	f9400ac4 	ldr	x4, [x22, #16]
 248:	1b030821 	madd	w1, w1, w3, w2
 24c:	b90006a6 	str	w6, [x21, #4]
 250:	f9000ea4 	str	x4, [x21, #24]
 254:	b900aea1 	str	w1, [x21, #172]
 258:	b8020402 	str	w2, [x0], #32
 25c:	d503201f 	nop
 260:	f800841f 	str	xzr, [x0], #8
 264:	eb00027f 	cmp	x19, x0
 268:	54ffffc1 	b.ne	260 <fat32_init+0x260>  // b.any
 26c:	aa1503e0 	mov	x0, x21
 270:	a9407bfd 	ldp	x29, x30, [sp]
 274:	a94153f3 	ldp	x19, x20, [sp, #16]
 278:	a9425bf5 	ldp	x21, x22, [sp, #32]
 27c:	a94363f7 	ldp	x23, x24, [sp, #48]
 280:	a9446bf9 	ldp	x25, x26, [sp, #64]
 284:	910a43ff 	add	sp, sp, #0x290
 288:	d65f03c0 	ret
 28c:	93407c21 	sxtw	x1, w1
 290:	910183b4 	add	x20, x29, #0x60
 294:	8b010421 	add	x1, x1, x1, lsl #1
 298:	b8617a93 	ldr	w19, [x20, x1, lsl #2]
 29c:	35fff653 	cbnz	w19, 164 <fat32_init+0x164>
 2a0:	17ffffa8 	b	140 <fat32_init+0x140>
 2a4:	90000003 	adrp	x3, 0 <fat32_init>
 2a8:	90000000 	adrp	x0, 0 <fat32_init>
 2ac:	91000063 	add	x3, x3, #0x0
 2b0:	aa1303e2 	mov	x2, x19
 2b4:	52800881 	mov	w1, #0x44                  	// #68
 2b8:	91000000 	add	x0, x0, #0x0
 2bc:	94000000 	bl	0 <__panic>
 2c0:	17ffff68 	b	60 <fat32_init+0x60>
 2c4:	d503201f 	nop

00000000000002c8 <fat32_read_cluster>:
 2c8:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 2cc:	910003fd 	mov	x29, sp
 2d0:	a902dff6 	stp	x22, x23, [sp, #40]
 2d4:	f90023f9 	str	x25, [sp, #64]
 2d8:	79414019 	ldrh	w25, [x0, #160]
 2dc:	39428817 	ldrb	w23, [x0, #162]
 2e0:	34000457 	cbz	w23, 368 <fat32_read_cluster+0xa0>
 2e4:	d1000821 	sub	x1, x1, #0x2
 2e8:	f90027ba 	str	x26, [x29, #72]
 2ec:	92401efa 	and	x26, x23, #0xff
 2f0:	f90013b5 	str	x21, [x29, #32]
 2f4:	f9001fb8 	str	x24, [x29, #56]
 2f8:	aa0003f5 	mov	x21, x0
 2fc:	aa0203f8 	mov	x24, x2
 300:	a90153b3 	stp	x19, x20, [x29, #16]
 304:	9b1a7c3a 	mul	x26, x1, x26
 308:	52800014 	mov	w20, #0x0                   	// #0
 30c:	d2800013 	mov	x19, #0x0                   	// #0
 310:	d2800016 	mov	x22, #0x0                   	// #0
 314:	d503201f 	nop
 318:	b940aea1 	ldr	w1, [x21, #172]
 31c:	8b344302 	add	x2, x24, w20, uxtw
 320:	aa1503e0 	mov	x0, x21
 324:	0b190294 	add	w20, w20, w25
 328:	8b1a0021 	add	x1, x1, x26
 32c:	8b130021 	add	x1, x1, x19
 330:	91000673 	add	x19, x19, #0x1
 334:	94000000 	bl	0 <cd_read_sector>
 338:	8b0002d6 	add	x22, x22, x0
 33c:	6b1302ff 	cmp	w23, w19
 340:	54fffec8 	b.hi	318 <fat32_read_cluster+0x50>  // b.pmore
 344:	aa1603e0 	mov	x0, x22
 348:	f94013b5 	ldr	x21, [x29, #32]
 34c:	a94153b3 	ldp	x19, x20, [x29, #16]
 350:	f9401fb8 	ldr	x24, [x29, #56]
 354:	f94027ba 	ldr	x26, [x29, #72]
 358:	a942dff6 	ldp	x22, x23, [sp, #40]
 35c:	f94023f9 	ldr	x25, [sp, #64]
 360:	a8c57bfd 	ldp	x29, x30, [sp], #80
 364:	d65f03c0 	ret
 368:	d2800016 	mov	x22, #0x0                   	// #0
 36c:	f94023f9 	ldr	x25, [sp, #64]
 370:	aa1603e0 	mov	x0, x22
 374:	a942dff6 	ldp	x22, x23, [sp, #40]
 378:	a8c57bfd 	ldp	x29, x30, [sp], #80
 37c:	d65f03c0 	ret

0000000000000380 <fat32_read_chain>:
 380:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
 384:	910003fd 	mov	x29, sp
 388:	a90153f3 	stp	x19, x20, [sp, #16]
 38c:	aa0003f3 	mov	x19, x0
 390:	79414014 	ldrh	w20, [x0, #160]
 394:	a90363f7 	stp	x23, x24, [sp, #48]
 398:	aa0103f8 	mov	x24, x1
 39c:	b940a817 	ldr	w23, [x0, #168]
 3a0:	f90013f5 	str	x21, [sp, #32]
 3a4:	d2800015 	mov	x21, #0x0                   	// #0
 3a8:	f90023f9 	str	x25, [sp, #64]
 3ac:	aa0203f9 	mov	x25, x2
 3b0:	f9002bfb 	str	x27, [sp, #80]
 3b4:	3942881b 	ldrb	w27, [x0, #162]
 3b8:	92403e80 	and	x0, x20, #0xffff
 3bc:	94000000 	bl	0 <malloc>
 3c0:	b4000320 	cbz	x0, 424 <fat32_read_chain+0xa4>
 3c4:	1ad40b15 	udiv	w21, w24, w20
 3c8:	2a1703f7 	mov	w23, w23
 3cc:	f9002fbc 	str	x28, [x29, #88]
 3d0:	aa0003e2 	mov	x2, x0
 3d4:	f90017b6 	str	x22, [x29, #40]
 3d8:	aa0003f6 	mov	x22, x0
 3dc:	f90027ba 	str	x26, [x29, #72]
 3e0:	aa1303e0 	mov	x0, x19
 3e4:	8b3542fc 	add	x28, x23, w21, uxtw
 3e8:	b9008fb5 	str	w21, [x29, #140]
 3ec:	2a1803fa 	mov	w26, w24
 3f0:	aa1c03e1 	mov	x1, x28
 3f4:	94000000 	bl	0 <cd_read_sector>
 3f8:	b4000260 	cbz	x0, 444 <fat32_read_chain+0xc4>
 3fc:	1b14e2b5 	msub	w21, w21, w20, w24
 400:	b8757ac5 	ldr	w5, [x22, x21, lsl #2]
 404:	72006cbc 	ands	w28, w5, #0xfffffff
 408:	540003a1 	b.ne	47c <fat32_read_chain+0xfc>  // b.any
 40c:	d2800015 	mov	x21, #0x0                   	// #0
 410:	aa1603e0 	mov	x0, x22
 414:	94000000 	bl	0 <free>
 418:	f94017b6 	ldr	x22, [x29, #40]
 41c:	f94027ba 	ldr	x26, [x29, #72]
 420:	f9402fbc 	ldr	x28, [x29, #88]
 424:	aa1503e0 	mov	x0, x21
 428:	f94013f5 	ldr	x21, [sp, #32]
 42c:	a94153f3 	ldp	x19, x20, [sp, #16]
 430:	a94363f7 	ldp	x23, x24, [sp, #48]
 434:	f94023f9 	ldr	x25, [sp, #64]
 438:	f9402bfb 	ldr	x27, [sp, #80]
 43c:	a8c97bfd 	ldp	x29, x30, [sp], #144
 440:	d65f03c0 	ret
 444:	1b14e2b5 	msub	w21, w21, w20, w24
 448:	90000000 	adrp	x0, 0 <fat32_init>
 44c:	91000002 	add	x2, x0, #0x0
 450:	aa1c03e4 	mov	x4, x28
 454:	90000003 	adrp	x3, 0 <fat32_init>
 458:	90000000 	adrp	x0, 0 <fat32_init>
 45c:	91000063 	add	x3, x3, #0x0
 460:	9100c042 	add	x2, x2, #0x30
 464:	528013e1 	mov	w1, #0x9f                  	// #159
 468:	91000000 	add	x0, x0, #0x0
 46c:	94000000 	bl	0 <__panic>
 470:	b8757ac5 	ldr	w5, [x22, x21, lsl #2]
 474:	72006cbc 	ands	w28, w5, #0xfffffff
 478:	54fffca0 	b.eq	40c <fat32_read_chain+0x8c>  // b.none
 47c:	1b147f60 	mul	w0, w27, w20
 480:	92405c00 	and	x0, x0, #0xffffff
 484:	94000000 	bl	0 <malloc>
 488:	f9000320 	str	x0, [x25]
 48c:	b4fffc00 	cbz	x0, 40c <fat32_read_chain+0x8c>
 490:	90000001 	adrp	x1, 0 <fat32_init>
 494:	91000022 	add	x2, x1, #0x0
 498:	9100c042 	add	x2, x2, #0x30
 49c:	f9003fa1 	str	x1, [x29, #120]
 4a0:	d2800015 	mov	x21, #0x0                   	// #0
 4a4:	90000001 	adrp	x1, 0 <fat32_init>
 4a8:	f90037a2 	str	x2, [x29, #104]
 4ac:	91000021 	add	x1, x1, #0x0
 4b0:	f9003ba1 	str	x1, [x29, #112]
 4b4:	14000019 	b	518 <fat32_read_chain+0x198>
 4b8:	1ad40b84 	udiv	w4, w28, w20
 4bc:	b9408fa1 	ldr	w1, [x29, #140]
 4c0:	2a1c03fa 	mov	w26, w28
 4c4:	aa1603e2 	mov	x2, x22
 4c8:	aa1303e0 	mov	x0, x19
 4cc:	aa0403e5 	mov	x5, x4
 4d0:	8b170084 	add	x4, x4, x23
 4d4:	6b0100bf 	cmp	w5, w1
 4d8:	54000100 	b.eq	4f8 <fat32_read_chain+0x178>  // b.none
 4dc:	aa0403e1 	mov	x1, x4
 4e0:	f90043a4 	str	x4, [x29, #128]
 4e4:	291117a5 	stp	w5, w5, [x29, #136]
 4e8:	94000000 	bl	0 <cd_read_sector>
 4ec:	b9408ba5 	ldr	w5, [x29, #136]
 4f0:	f94043a4 	ldr	x4, [x29, #128]
 4f4:	b4000380 	cbz	x0, 564 <fat32_read_chain+0x1e4>
 4f8:	1b14f0a5 	msub	w5, w5, w20, w28
 4fc:	f9400320 	ldr	x0, [x25]
 500:	d503201f 	nop
 504:	9bbb5681 	umaddl	x1, w20, w27, x21
 508:	b8657ac5 	ldr	w5, [x22, x5, lsl #2]
 50c:	12006cbc 	and	w28, w5, #0xfffffff
 510:	94000000 	bl	0 <realloc>
 514:	f9000320 	str	x0, [x25]
 518:	8b150002 	add	x2, x0, x21
 51c:	2a1a03e1 	mov	w1, w26
 520:	aa1303e0 	mov	x0, x19
 524:	94000000 	bl	2c8 <fat32_read_cluster>
 528:	51000b81 	sub	w1, w28, #0x2
 52c:	8b0002b5 	add	x21, x21, x0
 530:	529ffda0 	mov	w0, #0xffed                	// #65517
 534:	72a1ffe0 	movk	w0, #0xfff, lsl #16
 538:	6b00003f 	cmp	w1, w0
 53c:	54fffbe9 	b.ls	4b8 <fat32_read_chain+0x138>  // b.plast
 540:	f9403fa0 	ldr	x0, [x29, #120]
 544:	90000001 	adrp	x1, 0 <fat32_init>
 548:	aa1803e3 	mov	x3, x24
 54c:	aa1503e2 	mov	x2, x21
 550:	91000000 	add	x0, x0, #0x0
 554:	91000021 	add	x1, x1, #0x0
 558:	9100c000 	add	x0, x0, #0x30
 55c:	94000000 	bl	0 <__debug>
 560:	17ffffac 	b	410 <fat32_read_chain+0x90>
 564:	a9468fa2 	ldp	x2, x3, [x29, #104]
 568:	b9008ba5 	str	w5, [x29, #136]
 56c:	90000000 	adrp	x0, 0 <fat32_init>
 570:	52801861 	mov	w1, #0xc3                  	// #195
 574:	91000000 	add	x0, x0, #0x0
 578:	94000000 	bl	0 <__panic>
 57c:	b9408ba5 	ldr	w5, [x29, #136]
 580:	17ffffde 	b	4f8 <fat32_read_chain+0x178>
 584:	d503201f 	nop

0000000000000588 <fat32_parse_name>:
 588:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 58c:	910003fd 	mov	x29, sp
 590:	a901d7f4 	stp	x20, x21, [sp, #24]
 594:	aa0003f4 	mov	x20, x0
 598:	aa0103f5 	mov	x21, x1
 59c:	39402c00 	ldrb	w0, [x0, #11]
 5a0:	39400281 	ldrb	w1, [x20]
 5a4:	71003c1f 	cmp	w0, #0xf
 5a8:	f9001bf7 	str	x23, [sp, #48]
 5ac:	540004c0 	b.eq	644 <fat32_parse_name+0xbc>  // b.none
 5b0:	d2800002 	mov	x2, #0x0                   	// #0
 5b4:	7103943f 	cmp	w1, #0xe5
 5b8:	54000380 	b.eq	628 <fat32_parse_name+0xa0>  // b.none
 5bc:	f9000bb3 	str	x19, [x29, #16]
 5c0:	f90017b6 	str	x22, [x29, #40]
 5c4:	2a0203f6 	mov	w22, w2
 5c8:	91000442 	add	x2, x2, #0x1
 5cc:	340000e1 	cbz	w1, 5e8 <fat32_parse_name+0x60>
 5d0:	f100205f 	cmp	x2, #0x8
 5d4:	540009c0 	b.eq	70c <fat32_parse_name+0x184>  // b.none
 5d8:	38626a81 	ldrb	w1, [x20, x2]
 5dc:	2a0203f6 	mov	w22, w2
 5e0:	91000442 	add	x2, x2, #0x1
 5e4:	35ffff61 	cbnz	w1, 5d0 <fat32_parse_name+0x48>
 5e8:	93407ed3 	sxtw	x19, w22
 5ec:	aa1403e1 	mov	x1, x20
 5f0:	aa1303e2 	mov	x2, x19
 5f4:	aa1503e0 	mov	x0, x21
 5f8:	94000000 	bl	0 <strncpy>
 5fc:	39402280 	ldrb	w0, [x20, #8]
 600:	35000960 	cbnz	w0, 72c <fat32_parse_name+0x1a4>
 604:	38336abf 	strb	wzr, [x21, x19]
 608:	d2800017 	mov	x23, #0x0                   	// #0
 60c:	aa1703e0 	mov	x0, x23
 610:	f9400bb3 	ldr	x19, [x29, #16]
 614:	f94017b6 	ldr	x22, [x29, #40]
 618:	a941d7f4 	ldp	x20, x21, [sp, #24]
 61c:	f9401bf7 	ldr	x23, [sp, #48]
 620:	a8c57bfd 	ldp	x29, x30, [sp], #80
 624:	d65f03c0 	ret
 628:	390002bf 	strb	wzr, [x21]
 62c:	d2800017 	mov	x23, #0x0                   	// #0
 630:	aa1703e0 	mov	x0, x23
 634:	a941d7f4 	ldp	x20, x21, [sp, #24]
 638:	f9401bf7 	ldr	x23, [sp, #48]
 63c:	a8c57bfd 	ldp	x29, x30, [sp], #80
 640:	d65f03c0 	ret
 644:	91000694 	add	x20, x20, #0x1
 648:	d2800017 	mov	x23, #0x0                   	// #0
 64c:	f9000bb3 	str	x19, [x29, #16]
 650:	f90017b6 	str	x22, [x29, #40]
 654:	910123b6 	add	x22, x29, #0x48
 658:	f9001fb8 	str	x24, [x29, #56]
 65c:	528001b8 	mov	w24, #0xd                   	// #13
 660:	14000002 	b	668 <fat32_parse_name+0xe0>
 664:	385ff281 	ldurb	w1, [x20, #-1]
 668:	12001033 	and	w19, w1, #0x1f
 66c:	d2800142 	mov	x2, #0xa                   	// #10
 670:	51000673 	sub	w19, w19, #0x1
 674:	aa1403e1 	mov	x1, x20
 678:	aa1603e0 	mov	x0, x22
 67c:	94000000 	bl	0 <utf16ntoascii>
 680:	d28000a2 	mov	x2, #0x5                   	// #5
 684:	aa0003e1 	mov	x1, x0
 688:	1b187e73 	mul	w19, w19, w24
 68c:	910006f7 	add	x23, x23, #0x1
 690:	8b33c2b3 	add	x19, x21, w19, sxtw
 694:	aa1303e0 	mov	x0, x19
 698:	94000000 	bl	0 <strncpy>
 69c:	91003681 	add	x1, x20, #0xd
 6a0:	d2800182 	mov	x2, #0xc                   	// #12
 6a4:	aa1603e0 	mov	x0, x22
 6a8:	94000000 	bl	0 <utf16ntoascii>
 6ac:	d28000c2 	mov	x2, #0x6                   	// #6
 6b0:	aa0003e1 	mov	x1, x0
 6b4:	91001660 	add	x0, x19, #0x5
 6b8:	94000000 	bl	0 <strncpy>
 6bc:	91006e81 	add	x1, x20, #0x1b
 6c0:	91008294 	add	x20, x20, #0x20
 6c4:	d2800082 	mov	x2, #0x4                   	// #4
 6c8:	aa1603e0 	mov	x0, x22
 6cc:	94000000 	bl	0 <utf16ntoascii>
 6d0:	aa0003e1 	mov	x1, x0
 6d4:	d2800042 	mov	x2, #0x2                   	// #2
 6d8:	91002e60 	add	x0, x19, #0xb
 6dc:	94000000 	bl	0 <strncpy>
 6e0:	39402a80 	ldrb	w0, [x20, #10]
 6e4:	71003c1f 	cmp	w0, #0xf
 6e8:	54fffbe0 	b.eq	664 <fat32_parse_name+0xdc>  // b.none
 6ec:	f9400bb3 	ldr	x19, [x29, #16]
 6f0:	aa1703e0 	mov	x0, x23
 6f4:	f94017b6 	ldr	x22, [x29, #40]
 6f8:	f9401fb8 	ldr	x24, [x29, #56]
 6fc:	a941d7f4 	ldp	x20, x21, [sp, #24]
 700:	f9401bf7 	ldr	x23, [sp, #48]
 704:	a8c57bfd 	ldp	x29, x30, [sp], #80
 708:	d65f03c0 	ret
 70c:	aa0203f3 	mov	x19, x2
 710:	2a0203f6 	mov	w22, w2
 714:	aa1403e1 	mov	x1, x20
 718:	aa1303e2 	mov	x2, x19
 71c:	aa1503e0 	mov	x0, x21
 720:	94000000 	bl	0 <strncpy>
 724:	39402280 	ldrb	w0, [x20, #8]
 728:	34fff6e0 	cbz	w0, 604 <fat32_parse_name+0x7c>
 72c:	f9001fb8 	str	x24, [x29, #56]
 730:	528005c0 	mov	w0, #0x2e                  	// #46
 734:	38336aa0 	strb	w0, [x21, x19]
 738:	39400280 	ldrb	w0, [x20]
 73c:	34000400 	cbz	w0, 7bc <fat32_parse_name+0x234>
 740:	39400680 	ldrb	w0, [x20, #1]
 744:	34000420 	cbz	w0, 7c8 <fat32_parse_name+0x240>
 748:	39400a80 	ldrb	w0, [x20, #2]
 74c:	d2800077 	mov	x23, #0x3                   	// #3
 750:	2a1703f8 	mov	w24, w23
 754:	340002e0 	cbz	w0, 7b0 <fat32_parse_name+0x228>
 758:	110006d6 	add	w22, w22, #0x1
 75c:	91000673 	add	x19, x19, #0x1
 760:	0b1802d6 	add	w22, w22, w24
 764:	8b1302b3 	add	x19, x21, x19
 768:	91002281 	add	x1, x20, #0x8
 76c:	d2800062 	mov	x2, #0x3                   	// #3
 770:	910123a0 	add	x0, x29, #0x48
 774:	94000000 	bl	0 <utf16ntoascii>
 778:	aa1703e2 	mov	x2, x23
 77c:	aa0003e1 	mov	x1, x0
 780:	aa1303e0 	mov	x0, x19
 784:	94000000 	bl	0 <strncpy>
 788:	3836cabf 	strb	wzr, [x21, w22, sxtw]
 78c:	d2800017 	mov	x23, #0x0                   	// #0
 790:	aa1703e0 	mov	x0, x23
 794:	f9400bb3 	ldr	x19, [x29, #16]
 798:	f94017b6 	ldr	x22, [x29, #40]
 79c:	f9401fb8 	ldr	x24, [x29, #56]
 7a0:	a941d7f4 	ldp	x20, x21, [sp, #24]
 7a4:	f9401bf7 	ldr	x23, [sp, #48]
 7a8:	a8c57bfd 	ldp	x29, x30, [sp], #80
 7ac:	d65f03c0 	ret
 7b0:	d2800057 	mov	x23, #0x2                   	// #2
 7b4:	2a1703f8 	mov	w24, w23
 7b8:	17ffffe8 	b	758 <fat32_parse_name+0x1d0>
 7bc:	d2800017 	mov	x23, #0x0                   	// #0
 7c0:	52800018 	mov	w24, #0x0                   	// #0
 7c4:	17ffffe5 	b	758 <fat32_parse_name+0x1d0>
 7c8:	d2800037 	mov	x23, #0x1                   	// #1
 7cc:	2a1703f8 	mov	w24, w23
 7d0:	17ffffe2 	b	758 <fat32_parse_name+0x1d0>
 7d4:	d503201f 	nop

00000000000007d8 <fat32_find_entry>:
 7d8:	d10943ff 	sub	sp, sp, #0x250
 7dc:	a9007bfd 	stp	x29, x30, [sp]
 7e0:	910003fd 	mov	x29, sp
 7e4:	f9000ff4 	str	x20, [sp, #24]
 7e8:	b4000702 	cbz	x2, 8c8 <fat32_find_entry+0xf0>
 7ec:	a90363b7 	stp	x23, x24, [x29, #48]
 7f0:	90000018 	adrp	x24, 0 <fat32_init>
 7f4:	91000318 	add	x24, x24, #0x0
 7f8:	f9000bb3 	str	x19, [x29, #16]
 7fc:	a9025bb5 	stp	x21, x22, [x29, #32]
 800:	aa0103f7 	mov	x23, x1
 804:	a9046bb9 	stp	x25, x26, [x29, #64]
 808:	aa0203f6 	mov	x22, x2
 80c:	9000001a 	adrp	x26, 0 <fat32_init>
 810:	aa0003f9 	mov	x25, x0
 814:	910143b5 	add	x21, x29, #0x50
 818:	9100035a 	add	x26, x26, #0x0
 81c:	91012318 	add	x24, x24, #0x48
 820:	d2800013 	mov	x19, #0x0                   	// #0
 824:	14000004 	b	834 <fat32_find_entry+0x5c>
 828:	91000413 	add	x19, x0, #0x1
 82c:	eb16027f 	cmp	x19, x22
 830:	54000442 	b.cs	8b8 <fat32_find_entry+0xe0>  // b.hs, b.nlast
 834:	8b1316e0 	add	x0, x23, x19, lsl #5
 838:	aa1503e1 	mov	x1, x21
 83c:	94000000 	bl	588 <fat32_parse_name>
 840:	aa0003f4 	mov	x20, x0
 844:	394143a3 	ldrb	w3, [x29, #80]
 848:	8b130000 	add	x0, x0, x19
 84c:	34fffee3 	cbz	w3, 828 <fat32_find_entry+0x50>
 850:	aa1503e2 	mov	x2, x21
 854:	aa1a03e1 	mov	x1, x26
 858:	aa1803e0 	mov	x0, x24
 85c:	8b130294 	add	x20, x20, x19
 860:	94000000 	bl	0 <__debug>
 864:	91000693 	add	x19, x20, #0x1
 868:	aa1503e1 	mov	x1, x21
 86c:	aa1903e0 	mov	x0, x25
 870:	94000000 	bl	0 <strcmp>
 874:	35fffdc0 	cbnz	w0, 82c <fat32_find_entry+0x54>
 878:	8b1416f4 	add	x20, x23, x20, lsl #5
 87c:	aa1903e2 	mov	x2, x25
 880:	aa1403e3 	mov	x3, x20
 884:	aa1803e0 	mov	x0, x24
 888:	90000001 	adrp	x1, 0 <fat32_init>
 88c:	91000021 	add	x1, x1, #0x0
 890:	94000000 	bl	0 <__debug>
 894:	f9400bb3 	ldr	x19, [x29, #16]
 898:	a9425bb5 	ldp	x21, x22, [x29, #32]
 89c:	aa1403e0 	mov	x0, x20
 8a0:	a94363b7 	ldp	x23, x24, [x29, #48]
 8a4:	a9446bb9 	ldp	x25, x26, [x29, #64]
 8a8:	a9407bfd 	ldp	x29, x30, [sp]
 8ac:	f9400ff4 	ldr	x20, [sp, #24]
 8b0:	910943ff 	add	sp, sp, #0x250
 8b4:	d65f03c0 	ret
 8b8:	f9400bb3 	ldr	x19, [x29, #16]
 8bc:	a9425bb5 	ldp	x21, x22, [x29, #32]
 8c0:	a94363b7 	ldp	x23, x24, [x29, #48]
 8c4:	a9446bb9 	ldp	x25, x26, [x29, #64]
 8c8:	d2800014 	mov	x20, #0x0                   	// #0
 8cc:	a9407bfd 	ldp	x29, x30, [sp]
 8d0:	aa1403e0 	mov	x0, x20
 8d4:	f9400ff4 	ldr	x20, [sp, #24]
 8d8:	910943ff 	add	sp, sp, #0x250
 8dc:	d65f03c0 	ret

00000000000008e0 <fat32_open>:
 8e0:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
 8e4:	910003fd 	mov	x29, sp
 8e8:	a90153f3 	stp	x19, x20, [sp, #16]
 8ec:	a9025bf5 	stp	x21, x22, [sp, #32]
 8f0:	a90363f7 	stp	x23, x24, [sp, #48]
 8f4:	aa0003f8 	mov	x24, x0
 8f8:	a9046bf9 	stp	x25, x26, [sp, #64]
 8fc:	9000001a 	adrp	x26, 0 <fat32_init>
 900:	a90573fb 	stp	x27, x28, [sp, #80]
 904:	f90037a1 	str	x1, [x29, #104]
 908:	f9003fbf 	str	xzr, [x29, #120]
 90c:	b40011a1 	cbz	x1, b40 <fat32_open+0x260>
 910:	f94037a0 	ldr	x0, [x29, #104]
 914:	94000000 	bl	0 <strlen>
 918:	91000400 	add	x0, x0, #0x1
 91c:	94000000 	bl	0 <malloc>
 920:	aa0003fb 	mov	x27, x0
 924:	b40012a0 	cbz	x0, b78 <fat32_open+0x298>
 928:	f94037a1 	ldr	x1, [x29, #104]
 92c:	aa1b03e0 	mov	x0, x27
 930:	90000014 	adrp	x20, 0 <fat32_init>
 934:	91000294 	add	x20, x20, #0x0
 938:	94000000 	bl	0 <strcpy>
 93c:	aa1b03e0 	mov	x0, x27
 940:	aa1403e1 	mov	x1, x20
 944:	94000000 	bl	0 <strtok>
 948:	aa0003fc 	mov	x28, x0
 94c:	b4001280 	cbz	x0, b9c <fat32_open+0x2bc>
 950:	b940b301 	ldr	w1, [x24, #176]
 954:	9101e3b9 	add	x25, x29, #0x78
 958:	aa1903e2 	mov	x2, x25
 95c:	aa1803e0 	mov	x0, x24
 960:	90000016 	adrp	x22, 0 <fat32_init>
 964:	90000017 	adrp	x23, 0 <fat32_init>
 968:	910002d6 	add	x22, x22, #0x0
 96c:	910002f7 	add	x23, x23, #0x0
 970:	94000000 	bl	380 <fat32_read_chain>
 974:	d345fc13 	lsr	x19, x0, #5
 978:	91000342 	add	x2, x26, #0x0
 97c:	90000001 	adrp	x1, 0 <fat32_init>
 980:	91018042 	add	x2, x2, #0x60
 984:	91000021 	add	x1, x1, #0x0
 988:	aa0203e0 	mov	x0, x2
 98c:	aa0203f5 	mov	x21, x2
 990:	94000000 	bl	0 <__debug>
 994:	aa1c03e2 	mov	x2, x28
 998:	aa1603e1 	mov	x1, x22
 99c:	aa1503e0 	mov	x0, x21
 9a0:	94000000 	bl	0 <__debug>
 9a4:	f9403fa1 	ldr	x1, [x29, #120]
 9a8:	aa1303e2 	mov	x2, x19
 9ac:	aa1c03e0 	mov	x0, x28
 9b0:	94000000 	bl	7d8 <fat32_find_entry>
 9b4:	aa0003f3 	mov	x19, x0
 9b8:	b40002e0 	cbz	x0, a14 <fat32_open+0x134>
 9bc:	aa1403e1 	mov	x1, x20
 9c0:	d2800000 	mov	x0, #0x0                   	// #0
 9c4:	94000000 	bl	0 <strtok>
 9c8:	aa0003fc 	mov	x28, x0
 9cc:	b4000580 	cbz	x0, a7c <fat32_open+0x19c>
 9d0:	39402e60 	ldrb	w0, [x19, #11]
 9d4:	36200200 	tbz	w0, #4, a14 <fat32_open+0x134>
 9d8:	79402a62 	ldrh	w2, [x19, #20]
 9dc:	79403661 	ldrh	w1, [x19, #26]
 9e0:	f9403fa0 	ldr	x0, [x29, #120]
 9e4:	0b024033 	add	w19, w1, w2, lsl #16
 9e8:	94000000 	bl	0 <free>
 9ec:	aa1903e2 	mov	x2, x25
 9f0:	2a1303e1 	mov	w1, w19
 9f4:	aa1803e0 	mov	x0, x24
 9f8:	94000000 	bl	380 <fat32_read_chain>
 9fc:	2a1303e2 	mov	w2, w19
 a00:	aa1703e1 	mov	x1, x23
 a04:	d345fc13 	lsr	x19, x0, #5
 a08:	aa1503e0 	mov	x0, x21
 a0c:	94000000 	bl	0 <__debug>
 a10:	17ffffe1 	b	994 <fat32_open+0xb4>
 a14:	d2800016 	mov	x22, #0x0                   	// #0
 a18:	d2800014 	mov	x20, #0x0                   	// #0
 a1c:	90000001 	adrp	x1, 0 <fat32_init>
 a20:	91000021 	add	x1, x1, #0x0
 a24:	91000340 	add	x0, x26, #0x0
 a28:	91018000 	add	x0, x0, #0x60
 a2c:	94000000 	bl	0 <__debug>
 a30:	aa1b03e0 	mov	x0, x27
 a34:	94000000 	bl	0 <free>
 a38:	f9403fa0 	ldr	x0, [x29, #120]
 a3c:	b4000040 	cbz	x0, a44 <fat32_open+0x164>
 a40:	94000000 	bl	0 <free>
 a44:	91000340 	add	x0, x26, #0x0
 a48:	aa1603e2 	mov	x2, x22
 a4c:	90000001 	adrp	x1, 0 <fat32_init>
 a50:	91018000 	add	x0, x0, #0x60
 a54:	91000021 	add	x1, x1, #0x0
 a58:	94000000 	bl	0 <__debug>
 a5c:	aa1403e0 	mov	x0, x20
 a60:	a94153f3 	ldp	x19, x20, [sp, #16]
 a64:	a9425bf5 	ldp	x21, x22, [sp, #32]
 a68:	a94363f7 	ldp	x23, x24, [sp, #48]
 a6c:	a9446bf9 	ldp	x25, x26, [sp, #64]
 a70:	a94573fb 	ldp	x27, x28, [sp, #80]
 a74:	a8c87bfd 	ldp	x29, x30, [sp], #128
 a78:	d65f03c0 	ret
 a7c:	90000001 	adrp	x1, 0 <fat32_init>
 a80:	91000021 	add	x1, x1, #0x0
 a84:	aa1503e0 	mov	x0, x21
 a88:	94000000 	bl	0 <__debug>
 a8c:	d2800400 	mov	x0, #0x20                  	// #32
 a90:	d2800016 	mov	x22, #0x0                   	// #0
 a94:	94000000 	bl	0 <malloc>
 a98:	aa0003f4 	mov	x20, x0
 a9c:	b4fffc00 	cbz	x0, a1c <fat32_open+0x13c>
 aa0:	aa1403e2 	mov	x2, x20
 aa4:	90000001 	adrp	x1, 0 <fat32_init>
 aa8:	aa1503e0 	mov	x0, x21
 aac:	91000021 	add	x1, x1, #0x0
 ab0:	94000000 	bl	0 <__debug>
 ab4:	f94037b6 	ldr	x22, [x29, #104]
 ab8:	aa1403e3 	mov	x3, x20
 abc:	90000001 	adrp	x1, 0 <fat32_init>
 ac0:	aa1603e2 	mov	x2, x22
 ac4:	91000021 	add	x1, x1, #0x0
 ac8:	aa1503e0 	mov	x0, x21
 acc:	94000000 	bl	0 <__debug>
 ad0:	aa1603e2 	mov	x2, x22
 ad4:	90000001 	adrp	x1, 0 <fat32_init>
 ad8:	aa1503e0 	mov	x0, x21
 adc:	91000021 	add	x1, x1, #0x0
 ae0:	94000000 	bl	0 <__debug>
 ae4:	aa1403f6 	mov	x22, x20
 ae8:	39402e62 	ldrb	w2, [x19, #11]
 aec:	79403661 	ldrh	w1, [x19, #26]
 af0:	79402a60 	ldrh	w0, [x19, #20]
 af4:	39004282 	strb	w2, [x20, #16]
 af8:	39403662 	ldrb	w2, [x19, #13]
 afc:	0b004020 	add	w0, w1, w0, lsl #16
 b00:	39004682 	strb	w2, [x20, #17]
 b04:	79401e65 	ldrh	w5, [x19, #14]
 b08:	79402264 	ldrh	w4, [x19, #16]
 b0c:	79402663 	ldrh	w3, [x19, #18]
 b10:	79402e62 	ldrh	w2, [x19, #22]
 b14:	79403261 	ldrh	w1, [x19, #24]
 b18:	b9000280 	str	w0, [x20]
 b1c:	b9401e60 	ldr	w0, [x19, #28]
 b20:	f9000698 	str	x24, [x20, #8]
 b24:	79002685 	strh	w5, [x20, #18]
 b28:	79002a84 	strh	w4, [x20, #20]
 b2c:	79002e83 	strh	w3, [x20, #22]
 b30:	79003282 	strh	w2, [x20, #24]
 b34:	79003681 	strh	w1, [x20, #26]
 b38:	b9001e80 	str	w0, [x20, #28]
 b3c:	17ffffb8 	b	a1c <fat32_open+0x13c>
 b40:	91000342 	add	x2, x26, #0x0
 b44:	52802821 	mov	w1, #0x141                 	// #321
 b48:	91018042 	add	x2, x2, #0x60
 b4c:	90000003 	adrp	x3, 0 <fat32_init>
 b50:	90000000 	adrp	x0, 0 <fat32_init>
 b54:	91000063 	add	x3, x3, #0x0
 b58:	91000000 	add	x0, x0, #0x0
 b5c:	94000000 	bl	0 <__panic>
 b60:	f94037a0 	ldr	x0, [x29, #104]
 b64:	94000000 	bl	0 <strlen>
 b68:	91000400 	add	x0, x0, #0x1
 b6c:	94000000 	bl	0 <malloc>
 b70:	aa0003fb 	mov	x27, x0
 b74:	b5ffeda0 	cbnz	x0, 928 <fat32_open+0x48>
 b78:	91000342 	add	x2, x26, #0x0
 b7c:	90000003 	adrp	x3, 0 <fat32_init>
 b80:	90000000 	adrp	x0, 0 <fat32_init>
 b84:	91000063 	add	x3, x3, #0x0
 b88:	91018042 	add	x2, x2, #0x60
 b8c:	528028c1 	mov	w1, #0x146                 	// #326
 b90:	91000000 	add	x0, x0, #0x0
 b94:	94000000 	bl	0 <__panic>
 b98:	17ffff64 	b	928 <fat32_open+0x48>
 b9c:	90000001 	adrp	x1, 0 <fat32_init>
 ba0:	91000353 	add	x19, x26, #0x0
 ba4:	91000021 	add	x1, x1, #0x0
 ba8:	91018273 	add	x19, x19, #0x60
 bac:	aa1303e0 	mov	x0, x19
 bb0:	94000000 	bl	0 <__debug>
 bb4:	d2800400 	mov	x0, #0x20                  	// #32
 bb8:	94000000 	bl	0 <malloc>
 bbc:	aa0003f4 	mov	x20, x0
 bc0:	b40002c0 	cbz	x0, c18 <fat32_open+0x338>
 bc4:	aa1403e2 	mov	x2, x20
 bc8:	90000001 	adrp	x1, 0 <fat32_init>
 bcc:	aa1303e0 	mov	x0, x19
 bd0:	91000021 	add	x1, x1, #0x0
 bd4:	94000000 	bl	0 <__debug>
 bd8:	aa1403f6 	mov	x22, x20
 bdc:	f94037a2 	ldr	x2, [x29, #104]
 be0:	aa1403e3 	mov	x3, x20
 be4:	90000001 	adrp	x1, 0 <fat32_init>
 be8:	aa1303e0 	mov	x0, x19
 bec:	91000021 	add	x1, x1, #0x0
 bf0:	94000000 	bl	0 <__debug>
 bf4:	90000001 	adrp	x1, 0 <fat32_init>
 bf8:	aa1303e0 	mov	x0, x19
 bfc:	91000021 	add	x1, x1, #0x0
 c00:	94000000 	bl	0 <__debug>
 c04:	b940b301 	ldr	w1, [x24, #176]
 c08:	52800200 	mov	w0, #0x10                  	// #16
 c0c:	b9000281 	str	w1, [x20]
 c10:	39004280 	strb	w0, [x20, #16]
 c14:	17ffff82 	b	a1c <fat32_open+0x13c>
 c18:	d2800016 	mov	x22, #0x0                   	// #0
 c1c:	17ffff80 	b	a1c <fat32_open+0x13c>

Disassembly of section .rodata:

0000000000000000 <__func__.2975>:
   0:	33746166 	.word	0x33746166
   4:	6e695f32 	.word	0x6e695f32
   8:	00007469 	.word	0x00007469
   c:	00000000 	.word	0x00000000

0000000000000010 <__func__.2950>:
  10:	5f72626d 	.word	0x5f72626d
  14:	73726170 	.word	0x73726170
  18:	00000065 	.word	0x00000065
  1c:	00000000 	.word	0x00000000

0000000000000020 <__func__.2966>:
  20:	62706265 	.word	0x62706265
  24:	7261705f 	.word	0x7261705f
  28:	00006573 	.word	0x00006573
  2c:	00000000 	.word	0x00000000

0000000000000030 <__func__.3010>:
  30:	33746166 	.word	0x33746166
  34:	65725f32 	.word	0x65725f32
  38:	635f6461 	.word	0x635f6461
  3c:	6e696168 	.word	0x6e696168
	...

0000000000000048 <__func__.3022>:
  48:	33746166 	.word	0x33746166
  4c:	69665f32 	.word	0x69665f32
  50:	655f646e 	.word	0x655f646e
  54:	7972746e 	.word	0x7972746e
	...

0000000000000060 <__func__.3056>:
  60:	33746166 	.word	0x33746166
  64:	706f5f32 	.word	0x706f5f32
  68:	地址 0x0000000000000068 越界。


Disassembly of section .rodata.str1.8:

0000000000000000 <.rodata.str1.8>:
   0:	73756c63 	.word	0x73756c63
   4:	5f726574 	.word	0x5f726574
   8:	68676968 	.word	0x68676968
   c:	25203d20 	.word	0x25203d20
  10:	00000a64 	.word	0x00000a64
  14:	00000000 	.word	0x00000000
  18:	73756c63 	.word	0x73756c63
  1c:	5f726574 	.word	0x5f726574
  20:	20776f6c 	.word	0x20776f6c
  24:	6425203d 	.word	0x6425203d
  28:	0000000a 	.word	0x0000000a
  2c:	00000000 	.word	0x00000000
  30:	6f727245 	.word	0x6f727245
  34:	6e692072 	.word	0x6e692072
  38:	6c6c6120 	.word	0x6c6c6120
  3c:	7461636f 	.word	0x7461636f
  40:	20676e69 	.word	0x20676e69
  44:	6f6d656d 	.word	0x6f6d656d
  48:	66207972 	.word	0x66207972
  4c:	4620726f 	.word	0x4620726f
  50:	32335441 	.word	0x32335441
  54:	73797320 	.word	0x73797320
  58:	216d6574 	.word	0x216d6574
  5c:	0000000a 	.word	0x0000000a
  60:	2f637273 	.word	0x2f637273
  64:	33746166 	.word	0x33746166
  68:	00632e32 	.word	0x00632e32
  6c:	00000000 	.word	0x00000000
  70:	276e6143 	.word	0x276e6143
  74:	65722074 	.word	0x65722074
  78:	4d206461 	.word	0x4d206461
  7c:	66205242 	.word	0x66205242
  80:	206d6f72 	.word	0x206d6f72
  84:	61636473 	.word	0x61636473
  88:	202e6472 	.word	0x202e6472
  8c:	6f727245 	.word	0x6f727245
  90:	6f632072 	.word	0x6f632072
  94:	25206564 	.word	0x25206564
  98:	000a2e64 	.word	0x000a2e64
  9c:	00000000 	.word	0x00000000
  a0:	46206f4e 	.word	0x46206f4e
  a4:	32335441 	.word	0x32335441
  a8:	72617020 	.word	0x72617020
  ac:	69746974 	.word	0x69746974
  b0:	77206e6f 	.word	0x77206e6f
  b4:	66207361 	.word	0x66207361
  b8:	646e756f 	.word	0x646e756f
  bc:	00000a21 	.word	0x00000a21
  c0:	276e6143 	.word	0x276e6143
  c4:	65722074 	.word	0x65722074
  c8:	61206461 	.word	0x61206461
  cc:	6420796e 	.word	0x6420796e
  d0:	20617461 	.word	0x20617461
  d4:	6d6f7266 	.word	0x6d6f7266
  d8:	63657320 	.word	0x63657320
  dc:	20726f74 	.word	0x20726f74
  e0:	202e6425 	.word	0x202e6425
  e4:	6f727245 	.word	0x6f727245
  e8:	6f632072 	.word	0x6f632072
  ec:	25206564 	.word	0x25206564
  f0:	00000a64 	.word	0x00000a64
  f4:	00000000 	.word	0x00000000
  f8:	62206f4e 	.word	0x62206f4e
  fc:	20746f6f 	.word	0x20746f6f
 100:	74726170 	.word	0x74726170
 104:	6f697469 	.word	0x6f697469
 108:	6177206e 	.word	0x6177206e
 10c:	6f662073 	.word	0x6f662073
 110:	21646e75 	.word	0x21646e75
 114:	0000000a 	.word	0x0000000a
 118:	276e6143 	.word	0x276e6143
 11c:	65722074 	.word	0x65722074
 120:	61206461 	.word	0x61206461
 124:	6420796e 	.word	0x6420796e
 128:	63657269 	.word	0x63657269
 12c:	79726f74 	.word	0x79726f74
 130:	746e6520 	.word	0x746e6520
 134:	61207972 	.word	0x61207972
 138:	65732074 	.word	0x65732074
 13c:	726f7463 	.word	0x726f7463
 140:	2e642520 	.word	0x2e642520
 144:	0000000a 	.word	0x0000000a
 148:	61746f54 	.word	0x61746f54
 14c:	6425206c 	.word	0x6425206c
 150:	74796220 	.word	0x74796220
 154:	64207365 	.word	0x64207365
 158:	20617461 	.word	0x20617461
 15c:	64616572 	.word	0x64616572
 160:	6f726620 	.word	0x6f726620
 164:	6c63206d 	.word	0x6c63206d
 168:	65747375 	.word	0x65747375
 16c:	64252072 	.word	0x64252072
 170:	00000a2e 	.word	0x00000a2e
 174:	00000000 	.word	0x00000000
 178:	6e756f46 	.word	0x6e756f46
 17c:	69642064 	.word	0x69642064
 180:	74636572 	.word	0x74636572
 184:	2079726f 	.word	0x2079726f
 188:	22732522 	.word	0x22732522
 18c:	0000000a 	.word	0x0000000a
 190:	646e6946 	.word	0x646e6946
 194:	73252220 	.word	0x73252220
 198:	6e652022 	.word	0x6e652022
 19c:	20797274 	.word	0x20797274
 1a0:	30207461 	.word	0x30207461
 1a4:	0a782578 	.word	0x0a782578
	...
 1b0:	68746170 	.word	0x68746170
 1b4:	20736920 	.word	0x20736920
 1b8:	4c4c554e 	.word	0x4c4c554e
 1bc:	00000000 	.word	0x00000000
 1c0:	206e7552 	.word	0x206e7552
 1c4:	2074756f 	.word	0x2074756f
 1c8:	6d20666f 	.word	0x6d20666f
 1cc:	726f6d65 	.word	0x726f6d65
 1d0:	000a2179 	.word	0x000a2179
 1d4:	00000000 	.word	0x00000000
 1d8:	0000002f 	.word	0x0000002f
 1dc:	00000000 	.word	0x00000000
 1e0:	746f6f52 	.word	0x746f6f52
 1e4:	756c6320 	.word	0x756c6320
 1e8:	72657473 	.word	0x72657473
 1ec:	61657220 	.word	0x61657220
 1f0:	000a2e64 	.word	0x000a2e64
 1f4:	00000000 	.word	0x00000000
 1f8:	73756c43 	.word	0x73756c43
 1fc:	20726574 	.word	0x20726574
 200:	72206425 	.word	0x72206425
 204:	2e646165 	.word	0x2e646165
 208:	0000000a 	.word	0x0000000a
 20c:	00000000 	.word	0x00000000
 210:	646e6946 	.word	0x646e6946
 214:	20676e69 	.word	0x20676e69
 218:	2d627573 	.word	0x2d627573
 21c:	65726964 	.word	0x65726964
 220:	726f7463 	.word	0x726f7463
 224:	25222079 	.word	0x25222079
 228:	0a2e2273 	.word	0x0a2e2273
 22c:	00000000 	.word	0x00000000
 230:	6c616544 	.word	0x6c616544
 234:	69636f6c 	.word	0x69636f6c
 238:	0a2e676e 	.word	0x0a2e676e
 23c:	00000000 	.word	0x00000000
 240:	75746552 	.word	0x75746552
 244:	70206e72 	.word	0x70206e72
 248:	656c6966 	.word	0x656c6966
 24c:	30203d20 	.word	0x30203d20
 250:	0a782578 	.word	0x0a782578
 254:	00000000 	.word	0x00000000
 258:	6c696670 	.word	0x6c696670
 25c:	203d2065 	.word	0x203d2065
 260:	78257830 	.word	0x78257830
 264:	0000000a 	.word	0x0000000a
 268:	68746170 	.word	0x68746170
 26c:	20732520 	.word	0x20732520
 270:	6f207369 	.word	0x6f207369
 274:	6e6e6570 	.word	0x6e6e6570
 278:	20676e69 	.word	0x20676e69
 27c:	20646e61 	.word	0x20646e61
 280:	69766173 	.word	0x69766173
 284:	6120676e 	.word	0x6120676e
 288:	64612074 	.word	0x64612074
 28c:	73657264 	.word	0x73657264
 290:	78302073 	.word	0x78302073
 294:	0a2e7825 	.word	0x0a2e7825
	...
 2a0:	696b614d 	.word	0x696b614d
 2a4:	7220676e 	.word	0x7220676e
 2a8:	20746f6f 	.word	0x20746f6f
 2ac:	656c6966 	.word	0x656c6966
 2b0:	72747320 	.word	0x72747320
 2b4:	2e746375 	.word	0x2e746375
	...
 2c0:	6f6c6c41 	.word	0x6f6c6c41
 2c4:	69746163 	.word	0x69746163
 2c8:	6d20676e 	.word	0x6d20676e
 2cc:	726f6d65 	.word	0x726f6d65
 2d0:	6f662079 	.word	0x6f662079
 2d4:	69662072 	.word	0x69662072
 2d8:	0a2e656c 	.word	0x0a2e656c
 2dc:	00000000 	.word	0x00000000
 2e0:	696b614d 	.word	0x696b614d
 2e4:	2520676e 	.word	0x2520676e
 2e8:	69662073 	.word	0x69662073
 2ec:	7320656c 	.word	0x7320656c
 2f0:	63757274 	.word	0x63757274
 2f4:	000a2e74 	.word	0x000a2e74

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	43434700 	.inst	0x43434700 ; undefined
   4:	4c28203a 	.inst	0x4c28203a ; undefined
   8:	72616e69 	.inst	0x72616e69 ; undefined
   c:	4347206f 	.inst	0x4347206f ; undefined
  10:	2e372043 	usubl	v3.8h, v2.8b, v23.8b
  14:	30322d32 	adr	x18, 645b9 <fat32_open+0x63cd9>
  18:	312e3731 	adds	w17, w25, #0xb8d
  1c:	37202931 	tbnz	w17, #4, 540 <fat32_read_chain+0x1c0>
  20:	312e322e 	adds	w14, w17, #0xb8c
  24:	31303220 	adds	w0, w17, #0xc0c
  28:	31303137 	adds	w23, w9, #0xc0c
  2c:	地址 0x000000000000002c 越界。

