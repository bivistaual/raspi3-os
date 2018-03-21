
obj/fat32.o：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <fat32_init>:
   0:	d10a43ff 	sub	sp, sp, #0x290
   4:	a9007bfd 	stp	x29, x30, [sp]
   8:	910003fd 	mov	x29, sp
   c:	a90153f3 	stp	x19, x20, [sp, #16]
  10:	a9025bf5 	stp	x21, x22, [sp, #32]
  14:	aa0003f6 	mov	x22, x0
  18:	a90363f7 	stp	x23, x24, [sp, #48]
  1c:	d2801700 	mov	x0, #0xb8                  	// #184
  20:	f90023f9 	str	x25, [sp, #64]
  24:	94000000 	bl	0 <malloc>
  28:	aa0003f5 	mov	x21, x0
  2c:	b40010c0 	cbz	x0, 244 <fat32_init+0x244>
  30:	90000000 	adrp	x0, 0 <fat32_init>
  34:	91000000 	add	x0, x0, #0x0
  38:	94000000 	bl	0 <kprintf>
  3c:	910243b9 	add	x25, x29, #0x90
  40:	f9400ac2 	ldr	x2, [x22, #16]
  44:	910143b7 	add	x23, x29, #0x50
  48:	aa1903e1 	mov	x1, x25
  4c:	52800000 	mov	w0, #0x0                   	// #0
  50:	910042f4 	add	x20, x23, #0x10
  54:	91071b33 	add	x19, x25, #0x1c6
  58:	910a5bb8 	add	x24, x29, #0x296
  5c:	d63f0040 	blr	x2
  60:	d2800142 	mov	x2, #0xa                   	// #10
  64:	9106d321 	add	x1, x25, #0x1b4
  68:	aa1703e0 	mov	x0, x23
  6c:	94000000 	bl	0 <memcpy>
  70:	d2800042 	mov	x2, #0x2                   	// #2
  74:	910a43a1 	add	x1, x29, #0x290
  78:	9100f2e0 	add	x0, x23, #0x3c
  7c:	94000000 	bl	0 <memcpy>
  80:	385f8262 	ldurb	w2, [x19, #-8]
  84:	aa1303e1 	mov	x1, x19
  88:	385fc260 	ldurb	w0, [x19, #-4]
  8c:	381fc282 	sturb	w2, [x20, #-4]
  90:	d2800082 	mov	x2, #0x4                   	// #4
  94:	381fd280 	sturb	w0, [x20, #-3]
  98:	aa1403e0 	mov	x0, x20
  9c:	94000000 	bl	0 <memcpy>
  a0:	91001261 	add	x1, x19, #0x4
  a4:	91001280 	add	x0, x20, #0x4
  a8:	d2800082 	mov	x2, #0x4                   	// #4
  ac:	91004273 	add	x19, x19, #0x10
  b0:	94000000 	bl	0 <memcpy>
  b4:	91003294 	add	x20, x20, #0xc
  b8:	eb18027f 	cmp	x19, x24
  bc:	54fffe21 	b.ne	80 <fat32_init+0x80>  // b.any
  c0:	90000000 	adrp	x0, 0 <fat32_init>
  c4:	91000000 	add	x0, x0, #0x0
  c8:	94000000 	bl	0 <kprintf>
  cc:	910036e2 	add	x2, x23, #0xd
  d0:	52800001 	mov	w1, #0x0                   	// #0
  d4:	39400040 	ldrb	w0, [x2]
  d8:	91003042 	add	x2, x2, #0xc
  dc:	51002c00 	sub	w0, w0, #0xb
  e0:	12001c00 	and	w0, w0, #0xff
  e4:	7100041f 	cmp	w0, #0x1
  e8:	54000a29 	b.ls	22c <fat32_init+0x22c>  // b.plast
  ec:	11000421 	add	w1, w1, #0x1
  f0:	7100103f 	cmp	w1, #0x4
  f4:	54ffff01 	b.ne	d4 <fat32_init+0xd4>  // b.any
  f8:	910183b8 	add	x24, x29, #0x60
  fc:	90000002 	adrp	x2, 0 <fat32_init>
 100:	91000042 	add	x2, x2, #0x0
 104:	90000003 	adrp	x3, 0 <fat32_init>
 108:	90000000 	adrp	x0, 0 <fat32_init>
 10c:	91000063 	add	x3, x3, #0x0
 110:	91000000 	add	x0, x0, #0x0
 114:	91004042 	add	x2, x2, #0x10
 118:	528005a1 	mov	w1, #0x2d                  	// #45
 11c:	94000000 	bl	0 <__panic>
 120:	52800000 	mov	w0, #0x0                   	// #0
 124:	f9400ac2 	ldr	x2, [x22, #16]
 128:	aa1903e1 	mov	x1, x25
 12c:	90000014 	adrp	x20, 0 <fat32_init>
 130:	52800013 	mov	w19, #0x0                   	// #0
 134:	910032f7 	add	x23, x23, #0xc
 138:	d63f0040 	blr	x2
 13c:	91000280 	add	x0, x20, #0x0
 140:	94000000 	bl	0 <kprintf>
 144:	394002e0 	ldrb	w0, [x23]
 148:	910032f7 	add	x23, x23, #0xc
 14c:	7102001f 	cmp	w0, #0x80
 150:	540001a0 	b.eq	184 <fat32_init+0x184>  // b.none
 154:	11000673 	add	w19, w19, #0x1
 158:	7100127f 	cmp	w19, #0x4
 15c:	54ffff41 	b.ne	144 <fat32_init+0x144>  // b.any
 160:	90000003 	adrp	x3, 0 <fat32_init>
 164:	90000002 	adrp	x2, 0 <fat32_init>
 168:	90000000 	adrp	x0, 0 <fat32_init>
 16c:	91000063 	add	x3, x3, #0x0
 170:	91000042 	add	x2, x2, #0x0
 174:	528009c1 	mov	w1, #0x4e                  	// #78
 178:	91000000 	add	x0, x0, #0x0
 17c:	12800013 	mov	w19, #0xffffffff            	// #-1
 180:	94000000 	bl	0 <__panic>
 184:	93407e73 	sxtw	x19, w19
 188:	90000000 	adrp	x0, 0 <fat32_init>
 18c:	91000000 	add	x0, x0, #0x0
 190:	94000000 	bl	0 <kprintf>
 194:	8b130673 	add	x19, x19, x19, lsl #1
 198:	79413fa2 	ldrh	w2, [x29, #158]
 19c:	7849b3a7 	ldurh	w7, [x29, #155]
 1a0:	aa1503e0 	mov	x0, x21
 1a4:	790142a7 	strh	w7, [x21, #160]
 1a8:	910282a1 	add	x1, x21, #0xa0
 1ac:	b8737b03 	ldr	w3, [x24, x19, lsl #2]
 1b0:	0b030042 	add	w2, w2, w3
 1b4:	b900aaa2 	str	w2, [x21, #168]
 1b8:	394277a3 	ldrb	w3, [x29, #157]
 1bc:	39028aa3 	strb	w3, [x21, #162]
 1c0:	b940b7a6 	ldr	w6, [x29, #180]
 1c4:	b940bfa3 	ldr	w3, [x29, #188]
 1c8:	a94016c4 	ldp	x4, x5, [x22]
 1cc:	b900a6a6 	str	w6, [x21, #164]
 1d0:	b900b2a3 	str	w3, [x21, #176]
 1d4:	394283a3 	ldrb	w3, [x29, #160]
 1d8:	a90096a4 	stp	x4, x5, [x21, #8]
 1dc:	f9400ac4 	ldr	x4, [x22, #16]
 1e0:	1b060863 	madd	w3, w3, w6, w2
 1e4:	b90006a7 	str	w7, [x21, #4]
 1e8:	f9000ea4 	str	x4, [x21, #24]
 1ec:	b900aea3 	str	w3, [x21, #172]
 1f0:	b8020402 	str	w2, [x0], #32
 1f4:	d503201f 	nop
 1f8:	f800841f 	str	xzr, [x0], #8
 1fc:	eb00003f 	cmp	x1, x0
 200:	54ffffc1 	b.ne	1f8 <fat32_init+0x1f8>  // b.any
 204:	91000280 	add	x0, x20, #0x0
 208:	94000000 	bl	0 <kprintf>
 20c:	aa1503e0 	mov	x0, x21
 210:	f94023f9 	ldr	x25, [sp, #64]
 214:	a9407bfd 	ldp	x29, x30, [sp]
 218:	a94153f3 	ldp	x19, x20, [sp, #16]
 21c:	a9425bf5 	ldp	x21, x22, [sp, #32]
 220:	a94363f7 	ldp	x23, x24, [sp, #48]
 224:	910a43ff 	add	sp, sp, #0x290
 228:	d65f03c0 	ret
 22c:	93407c21 	sxtw	x1, w1
 230:	910183b8 	add	x24, x29, #0x60
 234:	8b010421 	add	x1, x1, x1, lsl #1
 238:	b8617b00 	ldr	w0, [x24, x1, lsl #2]
 23c:	35fff740 	cbnz	w0, 124 <fat32_init+0x124>
 240:	17ffffaf 	b	fc <fat32_init+0xfc>
 244:	90000003 	adrp	x3, 0 <fat32_init>
 248:	90000002 	adrp	x2, 0 <fat32_init>
 24c:	90000000 	adrp	x0, 0 <fat32_init>
 250:	91000063 	add	x3, x3, #0x0
 254:	91000042 	add	x2, x2, #0x0
 258:	528007e1 	mov	w1, #0x3f                  	// #63
 25c:	91000000 	add	x0, x0, #0x0
 260:	94000000 	bl	0 <__panic>
 264:	17ffff73 	b	30 <fat32_init+0x30>

0000000000000268 <fat32_read_cluster>:
 268:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 26c:	910003fd 	mov	x29, sp
 270:	a902dff6 	stp	x22, x23, [sp, #40]
 274:	f90023f9 	str	x25, [sp, #64]
 278:	79414019 	ldrh	w25, [x0, #160]
 27c:	39428817 	ldrb	w23, [x0, #162]
 280:	34000457 	cbz	w23, 308 <fat32_read_cluster+0xa0>
 284:	d1000821 	sub	x1, x1, #0x2
 288:	f90027ba 	str	x26, [x29, #72]
 28c:	92401efa 	and	x26, x23, #0xff
 290:	f90013b5 	str	x21, [x29, #32]
 294:	f9001fb8 	str	x24, [x29, #56]
 298:	aa0003f5 	mov	x21, x0
 29c:	aa0203f8 	mov	x24, x2
 2a0:	a90153b3 	stp	x19, x20, [x29, #16]
 2a4:	9b1a7c3a 	mul	x26, x1, x26
 2a8:	52800014 	mov	w20, #0x0                   	// #0
 2ac:	d2800013 	mov	x19, #0x0                   	// #0
 2b0:	d2800016 	mov	x22, #0x0                   	// #0
 2b4:	d503201f 	nop
 2b8:	b940aea1 	ldr	w1, [x21, #172]
 2bc:	8b344302 	add	x2, x24, w20, uxtw
 2c0:	aa1503e0 	mov	x0, x21
 2c4:	0b190294 	add	w20, w20, w25
 2c8:	8b1a0021 	add	x1, x1, x26
 2cc:	8b130021 	add	x1, x1, x19
 2d0:	91000673 	add	x19, x19, #0x1
 2d4:	94000000 	bl	0 <cd_read_sector>
 2d8:	8b0002d6 	add	x22, x22, x0
 2dc:	6b1302ff 	cmp	w23, w19
 2e0:	54fffec8 	b.hi	2b8 <fat32_read_cluster+0x50>  // b.pmore
 2e4:	aa1603e0 	mov	x0, x22
 2e8:	f94013b5 	ldr	x21, [x29, #32]
 2ec:	a94153b3 	ldp	x19, x20, [x29, #16]
 2f0:	f9401fb8 	ldr	x24, [x29, #56]
 2f4:	f94027ba 	ldr	x26, [x29, #72]
 2f8:	a942dff6 	ldp	x22, x23, [sp, #40]
 2fc:	f94023f9 	ldr	x25, [sp, #64]
 300:	a8c57bfd 	ldp	x29, x30, [sp], #80
 304:	d65f03c0 	ret
 308:	d2800016 	mov	x22, #0x0                   	// #0
 30c:	f94023f9 	ldr	x25, [sp, #64]
 310:	aa1603e0 	mov	x0, x22
 314:	a942dff6 	ldp	x22, x23, [sp, #40]
 318:	a8c57bfd 	ldp	x29, x30, [sp], #80
 31c:	d65f03c0 	ret

0000000000000320 <fat32_read_chain>:
 320:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 324:	910003fd 	mov	x29, sp
 328:	a90153f3 	stp	x19, x20, [sp, #16]
 32c:	aa0003f3 	mov	x19, x0
 330:	a903e7f8 	stp	x24, x25, [sp, #56]
 334:	aa0103f4 	mov	x20, x1
 338:	a90573fb 	stp	x27, x28, [sp, #80]
 33c:	aa0203f9 	mov	x25, x2
 340:	b940a818 	ldr	w24, [x0, #168]
 344:	d280001c 	mov	x28, #0x0                   	// #0
 348:	f90013f5 	str	x21, [sp, #32]
 34c:	79414015 	ldrh	w21, [x0, #160]
 350:	3942881b 	ldrb	w27, [x0, #162]
 354:	92403ea0 	and	x0, x21, #0xffff
 358:	94000000 	bl	0 <malloc>
 35c:	b4000260 	cbz	x0, 3a8 <fat32_read_chain+0x88>
 360:	a902dfb6 	stp	x22, x23, [x29, #40]
 364:	aa0003f6 	mov	x22, x0
 368:	1ad50a97 	udiv	w23, w20, w21
 36c:	f90027ba 	str	x26, [x29, #72]
 370:	2a1403fa 	mov	w26, w20
 374:	2a1803f8 	mov	w24, w24
 378:	aa0003e2 	mov	x2, x0
 37c:	aa1303e0 	mov	x0, x19
 380:	1b15d2f4 	msub	w20, w23, w21, w20
 384:	8b374301 	add	x1, x24, w23, uxtw
 388:	94000000 	bl	0 <cd_read_sector>
 38c:	38744ad4 	ldrb	w20, [x22, w20, uxtw]
 390:	350001b4 	cbnz	w20, 3c4 <fat32_read_chain+0xa4>
 394:	d280001c 	mov	x28, #0x0                   	// #0
 398:	aa1603e0 	mov	x0, x22
 39c:	94000000 	bl	0 <free>
 3a0:	a942dfb6 	ldp	x22, x23, [x29, #40]
 3a4:	f94027ba 	ldr	x26, [x29, #72]
 3a8:	aa1c03e0 	mov	x0, x28
 3ac:	f94013f5 	ldr	x21, [sp, #32]
 3b0:	a94153f3 	ldp	x19, x20, [sp, #16]
 3b4:	a943e7f8 	ldp	x24, x25, [sp, #56]
 3b8:	a94573fb 	ldp	x27, x28, [sp, #80]
 3bc:	a8c77bfd 	ldp	x29, x30, [sp], #112
 3c0:	d65f03c0 	ret
 3c4:	1b157f60 	mul	w0, w27, w21
 3c8:	92405c00 	and	x0, x0, #0xffffff
 3cc:	94000000 	bl	0 <malloc>
 3d0:	f9000320 	str	x0, [x25]
 3d4:	b4fffe00 	cbz	x0, 394 <fat32_read_chain+0x74>
 3d8:	51000a81 	sub	w1, w20, #0x2
 3dc:	529ffda2 	mov	w2, #0xffed                	// #65517
 3e0:	72a1ffe2 	movk	w2, #0xfff, lsl #16
 3e4:	6b02003f 	cmp	w1, w2
 3e8:	54fffd68 	b.hi	394 <fat32_read_chain+0x74>  // b.pmore
 3ec:	d280001c 	mov	x28, #0x0                   	// #0
 3f0:	b9006ba2 	str	w2, [x29, #104]
 3f4:	d503201f 	nop
 3f8:	8b1c0002 	add	x2, x0, x28
 3fc:	2a1a03e1 	mov	w1, w26
 400:	aa1303e0 	mov	x0, x19
 404:	94000000 	bl	268 <fat32_read_cluster>
 408:	1ad50a84 	udiv	w4, w20, w21
 40c:	8b00039c 	add	x28, x28, x0
 410:	2a1403fa 	mov	w26, w20
 414:	aa1603e2 	mov	x2, x22
 418:	aa1303e0 	mov	x0, x19
 41c:	6b17009f 	cmp	w4, w23
 420:	540000a0 	b.eq	434 <fat32_read_chain+0x114>  // b.none
 424:	8b244301 	add	x1, x24, w4, uxtw
 428:	b9006fa4 	str	w4, [x29, #108]
 42c:	94000000 	bl	0 <cd_read_sector>
 430:	b9406fa4 	ldr	w4, [x29, #108]
 434:	1b15d094 	msub	w20, w4, w21, w20
 438:	2a0403f7 	mov	w23, w4
 43c:	9bbb72a1 	umaddl	x1, w21, w27, x28
 440:	f9400320 	ldr	x0, [x25]
 444:	38744ac4 	ldrb	w4, [x22, w20, uxtw]
 448:	b9006fa4 	str	w4, [x29, #108]
 44c:	94000000 	bl	0 <realloc>
 450:	f9000320 	str	x0, [x25]
 454:	294d13a1 	ldp	w1, w4, [x29, #104]
 458:	2a0403f4 	mov	w20, w4
 45c:	51000884 	sub	w4, w4, #0x2
 460:	6b01009f 	cmp	w4, w1
 464:	54fffca9 	b.ls	3f8 <fat32_read_chain+0xd8>  // b.plast
 468:	17ffffcc 	b	398 <fat32_read_chain+0x78>
 46c:	d503201f 	nop

0000000000000470 <fat32_parse_name>:
 470:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 474:	910003fd 	mov	x29, sp
 478:	a90153f3 	stp	x19, x20, [sp, #16]
 47c:	aa0003f4 	mov	x20, x0
 480:	a9025bf5 	stp	x21, x22, [sp, #32]
 484:	aa0103f5 	mov	x21, x1
 488:	39402c00 	ldrb	w0, [x0, #11]
 48c:	71003c1f 	cmp	w0, #0xf
 490:	54000520 	b.eq	534 <fat32_parse_name+0xc4>  // b.none
 494:	d2800000 	mov	x0, #0x0                   	// #0
 498:	38606a81 	ldrb	w1, [x20, x0]
 49c:	2a0003f6 	mov	w22, w0
 4a0:	91000400 	add	x0, x0, #0x1
 4a4:	f100201f 	cmp	x0, #0x8
 4a8:	34000961 	cbz	w1, 5d4 <fat32_parse_name+0x164>
 4ac:	54ffff61 	b.ne	498 <fat32_parse_name+0x28>  // b.any
 4b0:	aa0003f3 	mov	x19, x0
 4b4:	2a0003f6 	mov	w22, w0
 4b8:	aa1303e2 	mov	x2, x19
 4bc:	aa1403e1 	mov	x1, x20
 4c0:	aa1503e0 	mov	x0, x21
 4c4:	94000000 	bl	0 <strncpy>
 4c8:	39402280 	ldrb	w0, [x20, #8]
 4cc:	34000760 	cbz	w0, 5b8 <fat32_parse_name+0x148>
 4d0:	f9001bb7 	str	x23, [x29, #48]
 4d4:	528005c0 	mov	w0, #0x2e                  	// #46
 4d8:	38336aa0 	strb	w0, [x21, x19]
 4dc:	39400280 	ldrb	w0, [x20]
 4e0:	340007e0 	cbz	w0, 5dc <fat32_parse_name+0x16c>
 4e4:	39400680 	ldrb	w0, [x20, #1]
 4e8:	34000800 	cbz	w0, 5e8 <fat32_parse_name+0x178>
 4ec:	39400a80 	ldrb	w0, [x20, #2]
 4f0:	d2800062 	mov	x2, #0x3                   	// #3
 4f4:	2a0203f7 	mov	w23, w2
 4f8:	340007e0 	cbz	w0, 5f4 <fat32_parse_name+0x184>
 4fc:	91000660 	add	x0, x19, #0x1
 500:	91002281 	add	x1, x20, #0x8
 504:	8b0002a0 	add	x0, x21, x0
 508:	110006d6 	add	w22, w22, #0x1
 50c:	94000000 	bl	0 <strncpy>
 510:	0b1702c0 	add	w0, w22, w23
 514:	d2800016 	mov	x22, #0x0                   	// #0
 518:	3820cabf 	strb	wzr, [x21, w0, sxtw]
 51c:	aa1603e0 	mov	x0, x22
 520:	f9401bb7 	ldr	x23, [x29, #48]
 524:	a94153f3 	ldp	x19, x20, [sp, #16]
 528:	a9425bf5 	ldp	x21, x22, [sp, #32]
 52c:	a8c47bfd 	ldp	x29, x30, [sp], #64
 530:	d65f03c0 	ret
 534:	91000694 	add	x20, x20, #0x1
 538:	f9001bb7 	str	x23, [x29, #48]
 53c:	d2800016 	mov	x22, #0x0                   	// #0
 540:	52800357 	mov	w23, #0x1a                  	// #26
 544:	d503201f 	nop
 548:	385ff293 	ldurb	w19, [x20, #-1]
 54c:	aa1403e1 	mov	x1, x20
 550:	d2800142 	mov	x2, #0xa                   	// #10
 554:	910006d6 	add	x22, x22, #0x1
 558:	12001273 	and	w19, w19, #0x1f
 55c:	51000673 	sub	w19, w19, #0x1
 560:	1b177e73 	mul	w19, w19, w23
 564:	8b33c2b3 	add	x19, x21, w19, sxtw
 568:	aa1303e0 	mov	x0, x19
 56c:	94000000 	bl	0 <strncpy>
 570:	91003681 	add	x1, x20, #0xd
 574:	d2800182 	mov	x2, #0xc                   	// #12
 578:	91002a60 	add	x0, x19, #0xa
 57c:	94000000 	bl	0 <strncpy>
 580:	91006e81 	add	x1, x20, #0x1b
 584:	91008294 	add	x20, x20, #0x20
 588:	d28001c2 	mov	x2, #0xe                   	// #14
 58c:	91005a60 	add	x0, x19, #0x16
 590:	94000000 	bl	0 <strncpy>
 594:	39402a80 	ldrb	w0, [x20, #10]
 598:	71003c1f 	cmp	w0, #0xf
 59c:	54fffd60 	b.eq	548 <fat32_parse_name+0xd8>  // b.none
 5a0:	aa1603e0 	mov	x0, x22
 5a4:	f9401bb7 	ldr	x23, [x29, #48]
 5a8:	a94153f3 	ldp	x19, x20, [sp, #16]
 5ac:	a9425bf5 	ldp	x21, x22, [sp, #32]
 5b0:	a8c47bfd 	ldp	x29, x30, [sp], #64
 5b4:	d65f03c0 	ret
 5b8:	38336abf 	strb	wzr, [x21, x19]
 5bc:	d2800016 	mov	x22, #0x0                   	// #0
 5c0:	aa1603e0 	mov	x0, x22
 5c4:	a94153f3 	ldp	x19, x20, [sp, #16]
 5c8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 5cc:	a8c47bfd 	ldp	x29, x30, [sp], #64
 5d0:	d65f03c0 	ret
 5d4:	93407ed3 	sxtw	x19, w22
 5d8:	17ffffb8 	b	4b8 <fat32_parse_name+0x48>
 5dc:	d2800002 	mov	x2, #0x0                   	// #0
 5e0:	52800017 	mov	w23, #0x0                   	// #0
 5e4:	17ffffc6 	b	4fc <fat32_parse_name+0x8c>
 5e8:	d2800022 	mov	x2, #0x1                   	// #1
 5ec:	2a0203f7 	mov	w23, w2
 5f0:	17ffffc3 	b	4fc <fat32_parse_name+0x8c>
 5f4:	d2800042 	mov	x2, #0x2                   	// #2
 5f8:	2a0203f7 	mov	w23, w2
 5fc:	17ffffc0 	b	4fc <fat32_parse_name+0x8c>

0000000000000600 <fat32_find_entry>:
 600:	b40008c2 	cbz	x2, 718 <fat32_find_entry+0x118>
 604:	d10983ff 	sub	sp, sp, #0x260
 608:	a9007bfd 	stp	x29, x30, [sp]
 60c:	910003fd 	mov	x29, sp
 610:	a9046bf9 	stp	x25, x26, [sp, #64]
 614:	9000001a 	adrp	x26, 0 <fat32_init>
 618:	9100035a 	add	x26, x26, #0x0
 61c:	a90153f3 	stp	x19, x20, [sp, #16]
 620:	a9025bf5 	stp	x21, x22, [sp, #32]
 624:	aa0103f9 	mov	x25, x1
 628:	a90363f7 	stp	x23, x24, [sp, #48]
 62c:	aa0003f6 	mov	x22, x0
 630:	f9002bfb 	str	x27, [sp, #80]
 634:	aa0203f8 	mov	x24, x2
 638:	9000001b 	adrp	x27, 0 <fat32_init>
 63c:	910183b7 	add	x23, x29, #0x60
 640:	9100835a 	add	x26, x26, #0x20
 644:	d2800015 	mov	x21, #0x0                   	// #0
 648:	9100037b 	add	x27, x27, #0x0
 64c:	1400000c 	b	67c <fat32_find_entry+0x7c>
 650:	aa1603e1 	mov	x1, x22
 654:	aa1403e0 	mov	x0, x20
 658:	8b150273 	add	x19, x19, x21
 65c:	94000000 	bl	0 <asciitoutf16>
 660:	aa1703e1 	mov	x1, x23
 664:	aa1403e0 	mov	x0, x20
 668:	91000675 	add	x21, x19, #0x1
 66c:	94000000 	bl	0 <strcmp>
 670:	34000280 	cbz	w0, 6c0 <fat32_find_entry+0xc0>
 674:	eb15031f 	cmp	x24, x21
 678:	540003a9 	b.ls	6ec <fat32_find_entry+0xec>  // b.plast
 67c:	aa1703e1 	mov	x1, x23
 680:	8b151720 	add	x0, x25, x21, lsl #5
 684:	94000000 	bl	470 <fat32_parse_name>
 688:	aa0003f3 	mov	x19, x0
 68c:	aa1603e0 	mov	x0, x22
 690:	94000000 	bl	0 <strlen>
 694:	91000400 	add	x0, x0, #0x1
 698:	94000000 	bl	0 <malloc>
 69c:	aa0003f4 	mov	x20, x0
 6a0:	b5fffd80 	cbnz	x0, 650 <fat32_find_entry+0x50>
 6a4:	aa1b03e3 	mov	x3, x27
 6a8:	aa1a03e2 	mov	x2, x26
 6ac:	90000000 	adrp	x0, 0 <fat32_init>
 6b0:	52801801 	mov	w1, #0xc0                  	// #192
 6b4:	91000000 	add	x0, x0, #0x0
 6b8:	94000000 	bl	0 <__panic>
 6bc:	17ffffe5 	b	650 <fat32_find_entry+0x50>
 6c0:	aa1403e0 	mov	x0, x20
 6c4:	94000000 	bl	0 <free>
 6c8:	8b131720 	add	x0, x25, x19, lsl #5
 6cc:	f9402bfb 	ldr	x27, [sp, #80]
 6d0:	a9407bfd 	ldp	x29, x30, [sp]
 6d4:	a94153f3 	ldp	x19, x20, [sp, #16]
 6d8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 6dc:	a94363f7 	ldp	x23, x24, [sp, #48]
 6e0:	a9446bf9 	ldp	x25, x26, [sp, #64]
 6e4:	910983ff 	add	sp, sp, #0x260
 6e8:	d65f03c0 	ret
 6ec:	aa1403e0 	mov	x0, x20
 6f0:	94000000 	bl	0 <free>
 6f4:	a9407bfd 	ldp	x29, x30, [sp]
 6f8:	d2800000 	mov	x0, #0x0                   	// #0
 6fc:	a94153f3 	ldp	x19, x20, [sp, #16]
 700:	a9425bf5 	ldp	x21, x22, [sp, #32]
 704:	a94363f7 	ldp	x23, x24, [sp, #48]
 708:	a9446bf9 	ldp	x25, x26, [sp, #64]
 70c:	f9402bfb 	ldr	x27, [sp, #80]
 710:	910983ff 	add	sp, sp, #0x260
 714:	d65f03c0 	ret
 718:	d2800000 	mov	x0, #0x0                   	// #0
 71c:	d65f03c0 	ret

0000000000000720 <fat32_open>:
 720:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 724:	910003fd 	mov	x29, sp
 728:	a90153f3 	stp	x19, x20, [sp, #16]
 72c:	aa0103f3 	mov	x19, x1
 730:	f9001bf7 	str	x23, [sp, #48]
 734:	aa0003f7 	mov	x23, x0
 738:	f90023f9 	str	x25, [sp, #64]
 73c:	b4000b61 	cbz	x1, 8a8 <fat32_open+0x188>
 740:	aa1303e0 	mov	x0, x19
 744:	94000000 	bl	0 <strlen>
 748:	94000000 	bl	0 <malloc>
 74c:	aa0003f9 	mov	x25, x0
 750:	b4000c00 	cbz	x0, 8d0 <fat32_open+0x1b0>
 754:	a9025bb5 	stp	x21, x22, [x29, #32]
 758:	aa1303e1 	mov	x1, x19
 75c:	a904efba 	stp	x26, x27, [x29, #72]
 760:	90000015 	adrp	x21, 0 <fat32_init>
 764:	f9001fb8 	str	x24, [x29, #56]
 768:	910002b5 	add	x21, x21, #0x0
 76c:	94000000 	bl	0 <strcpy>
 770:	aa1503e1 	mov	x1, x21
 774:	aa1903e0 	mov	x0, x25
 778:	94000000 	bl	0 <strtok>
 77c:	aa0003f4 	mov	x20, x0
 780:	b4000ac0 	cbz	x0, 8d8 <fat32_open+0x1b8>
 784:	b940b2e1 	ldr	w1, [x23, #176]
 788:	9101a3b8 	add	x24, x29, #0x68
 78c:	aa1803e2 	mov	x2, x24
 790:	aa1703e0 	mov	x0, x23
 794:	94000000 	bl	320 <fat32_read_chain>
 798:	d345fc02 	lsr	x2, x0, #5
 79c:	f94037a1 	ldr	x1, [x29, #104]
 7a0:	aa1403e0 	mov	x0, x20
 7a4:	94000000 	bl	600 <fat32_find_entry>
 7a8:	aa0003f3 	mov	x19, x0
 7ac:	b40002c0 	cbz	x0, 804 <fat32_open+0xe4>
 7b0:	aa1503e1 	mov	x1, x21
 7b4:	d2800000 	mov	x0, #0x0                   	// #0
 7b8:	94000000 	bl	0 <strtok>
 7bc:	aa0003f4 	mov	x20, x0
 7c0:	b40003e0 	cbz	x0, 83c <fat32_open+0x11c>
 7c4:	36200216 	tbz	w22, #4, 804 <fat32_open+0xe4>
 7c8:	f94037a0 	ldr	x0, [x29, #104]
 7cc:	79402a7b 	ldrh	w27, [x19, #20]
 7d0:	7940367a 	ldrh	w26, [x19, #26]
 7d4:	39402e76 	ldrb	w22, [x19, #11]
 7d8:	94000000 	bl	0 <free>
 7dc:	aa1803e2 	mov	x2, x24
 7e0:	0b1b4341 	add	w1, w26, w27, lsl #16
 7e4:	aa1703e0 	mov	x0, x23
 7e8:	94000000 	bl	320 <fat32_read_chain>
 7ec:	f94037a1 	ldr	x1, [x29, #104]
 7f0:	d345fc02 	lsr	x2, x0, #5
 7f4:	aa1403e0 	mov	x0, x20
 7f8:	94000000 	bl	600 <fat32_find_entry>
 7fc:	aa0003f3 	mov	x19, x0
 800:	b5fffd80 	cbnz	x0, 7b0 <fat32_open+0x90>
 804:	d2800014 	mov	x20, #0x0                   	// #0
 808:	aa1903e0 	mov	x0, x25
 80c:	94000000 	bl	0 <free>
 810:	f94037a0 	ldr	x0, [x29, #104]
 814:	94000000 	bl	0 <free>
 818:	f9401fb8 	ldr	x24, [x29, #56]
 81c:	a9425bb5 	ldp	x21, x22, [x29, #32]
 820:	a944efba 	ldp	x26, x27, [x29, #72]
 824:	aa1403e0 	mov	x0, x20
 828:	a94153f3 	ldp	x19, x20, [sp, #16]
 82c:	f9401bf7 	ldr	x23, [sp, #48]
 830:	f94023f9 	ldr	x25, [sp, #64]
 834:	a8c77bfd 	ldp	x29, x30, [sp], #112
 838:	d65f03c0 	ret
 83c:	d2800400 	mov	x0, #0x20                  	// #32
 840:	94000000 	bl	0 <malloc>
 844:	aa0003f4 	mov	x20, x0
 848:	b4fffe00 	cbz	x0, 808 <fat32_open+0xe8>
 84c:	39402e62 	ldrb	w2, [x19, #11]
 850:	79403661 	ldrh	w1, [x19, #26]
 854:	79402a60 	ldrh	w0, [x19, #20]
 858:	39004282 	strb	w2, [x20, #16]
 85c:	f94037a6 	ldr	x6, [x29, #104]
 860:	39403662 	ldrb	w2, [x19, #13]
 864:	0b004020 	add	w0, w1, w0, lsl #16
 868:	39004682 	strb	w2, [x20, #17]
 86c:	79401e65 	ldrh	w5, [x19, #14]
 870:	79402264 	ldrh	w4, [x19, #16]
 874:	79402663 	ldrh	w3, [x19, #18]
 878:	79402e62 	ldrh	w2, [x19, #22]
 87c:	79403261 	ldrh	w1, [x19, #24]
 880:	b9000280 	str	w0, [x20]
 884:	b9401cc0 	ldr	w0, [x6, #28]
 888:	f9000697 	str	x23, [x20, #8]
 88c:	79002685 	strh	w5, [x20, #18]
 890:	79002a84 	strh	w4, [x20, #20]
 894:	79002e83 	strh	w3, [x20, #22]
 898:	79003282 	strh	w2, [x20, #24]
 89c:	79003681 	strh	w1, [x20, #26]
 8a0:	b9001e80 	str	w0, [x20, #28]
 8a4:	17ffffd9 	b	808 <fat32_open+0xe8>
 8a8:	90000002 	adrp	x2, 0 <fat32_init>
 8ac:	91000042 	add	x2, x2, #0x0
 8b0:	90000003 	adrp	x3, 0 <fat32_init>
 8b4:	90000000 	adrp	x0, 0 <fat32_init>
 8b8:	91000063 	add	x3, x3, #0x0
 8bc:	9100e042 	add	x2, x2, #0x38
 8c0:	528020a1 	mov	w1, #0x105                 	// #261
 8c4:	91000000 	add	x0, x0, #0x0
 8c8:	94000000 	bl	0 <__panic>
 8cc:	17ffff9d 	b	740 <fat32_open+0x20>
 8d0:	d2800014 	mov	x20, #0x0                   	// #0
 8d4:	17ffffd4 	b	824 <fat32_open+0x104>
 8d8:	d2800400 	mov	x0, #0x20                  	// #32
 8dc:	94000000 	bl	0 <malloc>
 8e0:	aa0003f4 	mov	x20, x0
 8e4:	b4fff920 	cbz	x0, 808 <fat32_open+0xe8>
 8e8:	b940b2e1 	ldr	w1, [x23, #176]
 8ec:	52800200 	mov	w0, #0x10                  	// #16
 8f0:	b9000281 	str	w1, [x20]
 8f4:	39004280 	strb	w0, [x20, #16]
 8f8:	17ffffc4 	b	808 <fat32_open+0xe8>
