
obj/fat32.o：     文件格式 elf64-littleaarch64


Disassembly of section .group:

0000000000000000 <wm4.0.2f0cafa158a1f1390eedbc95aefbed15>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000001c 	.inst	0x0000001c ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stdbool.h.29.07dce69c3b78884144b7f7bd19483461>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000001e 	.inst	0x0000001e ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000020 	.inst	0x00000020 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stddef.h.39.a38874c8f8a57e66301090908ec2a69f>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000022 	.inst	0x00000022 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.list.h.21.6d50c736f76f919e8bd21fe0fadf45b3>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000024 	.inst	0x00000024 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.hashmap.h.19.3d051ddf4b1e255ab4ab6dc3425a03a3>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000026 	.inst	0x00000026 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.fat32.h.8.993764843fac06860725439f201ce13e>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000028 	.inst	0x00000028 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.sdcard.h.2.ec8f388bad883ea39d54ba98164eb128>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000002a 	.inst	0x0000002a ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stdarg.h.31.b55da1089056868966f25de5dbfc7d3c>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000002c 	.inst	0x0000002c ; undefined

Disassembly of section .group:

0000000000000000 <wm4.console.h.6.c551f9a105870a4471c4cf4912f3688d>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000002e 	.inst	0x0000002e ; undefined

Disassembly of section .group:

0000000000000000 <wm4.malloc.h.9.8845f152a1da4c62bcf5f5e656e4db49>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000030 	.inst	0x00000030 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.assert.h.2.b70f19030aa61ded029ee82750072ee4>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000032 	.inst	0x00000032 ; undefined

Disassembly of section .text:

0000000000000000 <fat32_init>:
   0:	d11203ff 	sub	sp, sp, #0x480
   4:	a9007bfd 	stp	x29, x30, [sp]
   8:	910003fd 	mov	x29, sp
   c:	a90153f3 	stp	x19, x20, [sp, #16]
  10:	a9025bf5 	stp	x21, x22, [sp, #32]
  14:	a90363f7 	stp	x23, x24, [sp, #48]
  18:	aa0003f7 	mov	x23, x0
  1c:	90000013 	adrp	x19, 0 <fat32_init>
  20:	91000273 	add	x19, x19, #0x0
  24:	d2800402 	mov	x2, #0x20                  	// #32
  28:	90000001 	adrp	x1, 0 <fat32_init>
  2c:	91000021 	add	x1, x1, #0x0
  30:	aa1303e0 	mov	x0, x19
  34:	94000000 	bl	0 <__debug>
  38:	d2800402 	mov	x2, #0x20                  	// #32
  3c:	90000001 	adrp	x1, 0 <fat32_init>
  40:	91000021 	add	x1, x1, #0x0
  44:	aa1303e0 	mov	x0, x19
  48:	94000000 	bl	0 <__debug>
  4c:	d2800402 	mov	x2, #0x20                  	// #32
  50:	90000001 	adrp	x1, 0 <fat32_init>
  54:	91000021 	add	x1, x1, #0x0
  58:	aa1303e0 	mov	x0, x19
  5c:	94000000 	bl	0 <__debug>
  60:	d2801700 	mov	x0, #0xb8                  	// #184
  64:	94000000 	bl	0 <malloc>
  68:	aa0003f5 	mov	x21, x0
  6c:	b4000880 	cbz	x0, 17c <fat32_init+0x17c>
  70:	f9400ae2 	ldr	x2, [x23, #16]
  74:	910103a1 	add	x1, x29, #0x40
  78:	52800000 	mov	w0, #0x0                   	// #0
  7c:	d63f0040 	blr	x2
  80:	7108001f 	cmp	w0, #0x200
  84:	540008c1 	b.ne	19c <fat32_init+0x19c>  // b.any
  88:	910103b6 	add	x22, x29, #0x40
  8c:	911103b3 	add	x19, x29, #0x440
  90:	d2800142 	mov	x2, #0xa                   	// #10
  94:	9107d3a1 	add	x1, x29, #0x1f4
  98:	aa1303e0 	mov	x0, x19
  9c:	94000000 	bl	0 <memcpy>
  a0:	d2800042 	mov	x2, #0x2                   	// #2
  a4:	910802c1 	add	x1, x22, #0x200
  a8:	9100f260 	add	x0, x19, #0x3c
  ac:	94000000 	bl	0 <memcpy>
  b0:	91004273 	add	x19, x19, #0x10
  b4:	91071ad4 	add	x20, x22, #0x1c6
  b8:	91081ad6 	add	x22, x22, #0x206
  bc:	d2800098 	mov	x24, #0x4                   	// #4
  c0:	385f8280 	ldurb	w0, [x20, #-8]
  c4:	381fc260 	sturb	w0, [x19, #-4]
  c8:	385fc280 	ldurb	w0, [x20, #-4]
  cc:	381fd260 	sturb	w0, [x19, #-3]
  d0:	aa1803e2 	mov	x2, x24
  d4:	aa1403e1 	mov	x1, x20
  d8:	aa1303e0 	mov	x0, x19
  dc:	94000000 	bl	0 <memcpy>
  e0:	aa1803e2 	mov	x2, x24
  e4:	91001281 	add	x1, x20, #0x4
  e8:	91001260 	add	x0, x19, #0x4
  ec:	94000000 	bl	0 <memcpy>
  f0:	91003273 	add	x19, x19, #0xc
  f4:	91004294 	add	x20, x20, #0x10
  f8:	eb16029f 	cmp	x20, x22
  fc:	54fffe21 	b.ne	c0 <fat32_init+0xc0>  // b.any
 100:	395137a0 	ldrb	w0, [x29, #1101]
 104:	51002c00 	sub	w0, w0, #0xb
 108:	12001c00 	and	w0, w0, #0xff
 10c:	7100041f 	cmp	w0, #0x1
 110:	540006c9 	b.ls	1e8 <fat32_init+0x1e8>  // b.plast
 114:	395167a0 	ldrb	w0, [x29, #1113]
 118:	51002c00 	sub	w0, w0, #0xb
 11c:	12001c00 	and	w0, w0, #0xff
 120:	7100041f 	cmp	w0, #0x1
 124:	540005a9 	b.ls	1d8 <fat32_init+0x1d8>  // b.plast
 128:	395197a0 	ldrb	w0, [x29, #1125]
 12c:	51002c00 	sub	w0, w0, #0xb
 130:	12001c00 	and	w0, w0, #0xff
 134:	7100041f 	cmp	w0, #0x1
 138:	54000549 	b.ls	1e0 <fat32_init+0x1e0>  // b.plast
 13c:	3951c7a0 	ldrb	w0, [x29, #1137]
 140:	51002c00 	sub	w0, w0, #0xb
 144:	12001c00 	and	w0, w0, #0xff
 148:	7100041f 	cmp	w0, #0x1
 14c:	54000429 	b.ls	1d0 <fat32_init+0x1d0>  // b.plast
 150:	90000003 	adrp	x3, 0 <fat32_init>
 154:	91000063 	add	x3, x3, #0x0
 158:	90000002 	adrp	x2, 0 <fat32_init>
 15c:	91000042 	add	x2, x2, #0x0
 160:	91008042 	add	x2, x2, #0x20
 164:	528005c1 	mov	w1, #0x2e                  	// #46
 168:	90000000 	adrp	x0, 0 <fat32_init>
 16c:	91000000 	add	x0, x0, #0x0
 170:	94000000 	bl	0 <__panic>
 174:	52800013 	mov	w19, #0x0                   	// #0
 178:	14000022 	b	200 <fat32_init+0x200>
 17c:	90000003 	adrp	x3, 0 <fat32_init>
 180:	91000063 	add	x3, x3, #0x0
 184:	aa1303e2 	mov	x2, x19
 188:	52800821 	mov	w1, #0x41                  	// #65
 18c:	90000000 	adrp	x0, 0 <fat32_init>
 190:	91000000 	add	x0, x0, #0x0
 194:	94000000 	bl	0 <__panic>
 198:	17ffffb6 	b	70 <fat32_init+0x70>
 19c:	90000000 	adrp	x0, 0 <_GLOBAL_OFFSET_TABLE_>
 1a0:	f9400000 	ldr	x0, [x0]
 1a4:	b9400004 	ldr	w4, [x0]
 1a8:	90000003 	adrp	x3, 0 <fat32_init>
 1ac:	91000063 	add	x3, x3, #0x0
 1b0:	90000002 	adrp	x2, 0 <fat32_init>
 1b4:	91000042 	add	x2, x2, #0x0
 1b8:	91004042 	add	x2, x2, #0x10
 1bc:	52800241 	mov	w1, #0x12                  	// #18
 1c0:	90000000 	adrp	x0, 0 <fat32_init>
 1c4:	91000000 	add	x0, x0, #0x0
 1c8:	94000000 	bl	0 <__panic>
 1cc:	17ffffaf 	b	88 <fat32_init+0x88>
 1d0:	52800060 	mov	w0, #0x3                   	// #3
 1d4:	14000006 	b	1ec <fat32_init+0x1ec>
 1d8:	52800020 	mov	w0, #0x1                   	// #1
 1dc:	14000004 	b	1ec <fat32_init+0x1ec>
 1e0:	52800040 	mov	w0, #0x2                   	// #2
 1e4:	14000002 	b	1ec <fat32_init+0x1ec>
 1e8:	52800000 	mov	w0, #0x0                   	// #0
 1ec:	93407c00 	sxtw	x0, w0
 1f0:	8b000400 	add	x0, x0, x0, lsl #1
 1f4:	911143a1 	add	x1, x29, #0x450
 1f8:	b8607833 	ldr	w19, [x1, x0, lsl #2]
 1fc:	34fffab3 	cbz	w19, 150 <fat32_init+0x150>
 200:	f9400ae2 	ldr	x2, [x23, #16]
 204:	910903a1 	add	x1, x29, #0x240
 208:	2a1303e0 	mov	w0, w19
 20c:	d63f0040 	blr	x2
 210:	7108001f 	cmp	w0, #0x200
 214:	540001c0 	b.eq	24c <fat32_init+0x24c>  // b.none
 218:	90000000 	adrp	x0, 0 <_GLOBAL_OFFSET_TABLE_>
 21c:	f9400000 	ldr	x0, [x0]
 220:	b9400005 	ldr	w5, [x0]
 224:	2a1303e4 	mov	w4, w19
 228:	90000003 	adrp	x3, 0 <fat32_init>
 22c:	91000063 	add	x3, x3, #0x0
 230:	90000002 	adrp	x2, 0 <fat32_init>
 234:	91000042 	add	x2, x2, #0x0
 238:	91008042 	add	x2, x2, #0x20
 23c:	52800621 	mov	w1, #0x31                  	// #49
 240:	90000000 	adrp	x0, 0 <fat32_init>
 244:	91000000 	add	x0, x0, #0x0
 248:	94000000 	bl	0 <__panic>
 24c:	395133a0 	ldrb	w0, [x29, #1100]
 250:	7102001f 	cmp	w0, #0x80
 254:	54000780 	b.eq	344 <fat32_init+0x344>  // b.none
 258:	395163a0 	ldrb	w0, [x29, #1112]
 25c:	7102001f 	cmp	w0, #0x80
 260:	54000760 	b.eq	34c <fat32_init+0x34c>  // b.none
 264:	395193a0 	ldrb	w0, [x29, #1124]
 268:	7102001f 	cmp	w0, #0x80
 26c:	54000740 	b.eq	354 <fat32_init+0x354>  // b.none
 270:	3951c3a0 	ldrb	w0, [x29, #1136]
 274:	7102001f 	cmp	w0, #0x80
 278:	54000720 	b.eq	35c <fat32_init+0x35c>  // b.none
 27c:	90000003 	adrp	x3, 0 <fat32_init>
 280:	91000063 	add	x3, x3, #0x0
 284:	90000002 	adrp	x2, 0 <fat32_init>
 288:	91000042 	add	x2, x2, #0x0
 28c:	528009a1 	mov	w1, #0x4d                  	// #77
 290:	90000000 	adrp	x0, 0 <fat32_init>
 294:	91000000 	add	x0, x0, #0x0
 298:	94000000 	bl	0 <__panic>
 29c:	12800000 	mov	w0, #0xffffffff            	// #-1
 2a0:	93407c00 	sxtw	x0, w0
 2a4:	8b000400 	add	x0, x0, x0, lsl #1
 2a8:	79449fa1 	ldrh	w1, [x29, #590]
 2ac:	911143a2 	add	x2, x29, #0x450
 2b0:	b8607840 	ldr	w0, [x2, x0, lsl #2]
 2b4:	0b010000 	add	w0, w0, w1
 2b8:	b900aaa0 	str	w0, [x21, #168]
 2bc:	910282a0 	add	x0, x21, #0xa0
 2c0:	d2800042 	mov	x2, #0x2                   	// #2
 2c4:	91092fa1 	add	x1, x29, #0x24b
 2c8:	aa0003f3 	mov	x19, x0
 2cc:	94000000 	bl	0 <memcpy>
 2d0:	394937a0 	ldrb	w0, [x29, #589]
 2d4:	39028aa0 	strb	w0, [x21, #162]
 2d8:	b9426fa0 	ldr	w0, [x29, #620]
 2dc:	b900b2a0 	str	w0, [x21, #176]
 2e0:	b94267a1 	ldr	w1, [x29, #612]
 2e4:	b900a6a1 	str	w1, [x21, #164]
 2e8:	b940aaa2 	ldr	w2, [x21, #168]
 2ec:	394943a0 	ldrb	w0, [x29, #592]
 2f0:	1b010800 	madd	w0, w0, w1, w2
 2f4:	b900aea0 	str	w0, [x21, #172]
 2f8:	a94006e0 	ldp	x0, x1, [x23]
 2fc:	a90086a0 	stp	x0, x1, [x21, #8]
 300:	f9400ae0 	ldr	x0, [x23, #16]
 304:	f9000ea0 	str	x0, [x21, #24]
 308:	794142a0 	ldrh	w0, [x21, #160]
 30c:	b90006a0 	str	w0, [x21, #4]
 310:	aa1503e1 	mov	x1, x21
 314:	b8020422 	str	w2, [x1], #32
 318:	aa1303e0 	mov	x0, x19
 31c:	f800843f 	str	xzr, [x1], #8
 320:	eb01001f 	cmp	x0, x1
 324:	54ffffc1 	b.ne	31c <fat32_init+0x31c>  // b.any
 328:	aa1503e0 	mov	x0, x21
 32c:	a94153f3 	ldp	x19, x20, [sp, #16]
 330:	a9425bf5 	ldp	x21, x22, [sp, #32]
 334:	a94363f7 	ldp	x23, x24, [sp, #48]
 338:	a9407bfd 	ldp	x29, x30, [sp]
 33c:	911203ff 	add	sp, sp, #0x480
 340:	d65f03c0 	ret
 344:	52800000 	mov	w0, #0x0                   	// #0
 348:	17ffffd6 	b	2a0 <fat32_init+0x2a0>
 34c:	52800020 	mov	w0, #0x1                   	// #1
 350:	17ffffd4 	b	2a0 <fat32_init+0x2a0>
 354:	52800040 	mov	w0, #0x2                   	// #2
 358:	17ffffd2 	b	2a0 <fat32_init+0x2a0>
 35c:	52800060 	mov	w0, #0x3                   	// #3
 360:	17ffffd0 	b	2a0 <fat32_init+0x2a0>

0000000000000364 <fat32_read_cluster>:
 364:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 368:	910003fd 	mov	x29, sp
 36c:	f90017f6 	str	x22, [sp, #40]
 370:	f90027fa 	str	x26, [sp, #72]
 374:	39428803 	ldrb	w3, [x0, #162]
 378:	7941401a 	ldrh	w26, [x0, #160]
 37c:	34000443 	cbz	w3, 404 <fat32_read_cluster+0xa0>
 380:	a90153b3 	stp	x19, x20, [x29, #16]
 384:	f90013b5 	str	x21, [x29, #32]
 388:	a90363b7 	stp	x23, x24, [x29, #48]
 38c:	f90023b9 	str	x25, [x29, #64]
 390:	2a0303f9 	mov	w25, w3
 394:	aa0203f8 	mov	x24, x2
 398:	aa0003f5 	mov	x21, x0
 39c:	d1000837 	sub	x23, x1, #0x2
 3a0:	92401c63 	and	x3, x3, #0xff
 3a4:	9b037ef7 	mul	x23, x23, x3
 3a8:	52800014 	mov	w20, #0x0                   	// #0
 3ac:	d2800013 	mov	x19, #0x0                   	// #0
 3b0:	d2800016 	mov	x22, #0x0                   	// #0
 3b4:	b940aea1 	ldr	w1, [x21, #172]
 3b8:	8b170021 	add	x1, x1, x23
 3bc:	8b344302 	add	x2, x24, w20, uxtw
 3c0:	8b130021 	add	x1, x1, x19
 3c4:	aa1503e0 	mov	x0, x21
 3c8:	94000000 	bl	0 <cd_read_sector>
 3cc:	8b0002d6 	add	x22, x22, x0
 3d0:	91000673 	add	x19, x19, #0x1
 3d4:	0b1a0294 	add	w20, w20, w26
 3d8:	6b13033f 	cmp	w25, w19
 3dc:	54fffec8 	b.hi	3b4 <fat32_read_cluster+0x50>  // b.pmore
 3e0:	a94153b3 	ldp	x19, x20, [x29, #16]
 3e4:	f94013b5 	ldr	x21, [x29, #32]
 3e8:	a94363b7 	ldp	x23, x24, [x29, #48]
 3ec:	f94023b9 	ldr	x25, [x29, #64]
 3f0:	aa1603e0 	mov	x0, x22
 3f4:	f94017f6 	ldr	x22, [sp, #40]
 3f8:	f94027fa 	ldr	x26, [sp, #72]
 3fc:	a8c57bfd 	ldp	x29, x30, [sp], #80
 400:	d65f03c0 	ret
 404:	d2800016 	mov	x22, #0x0                   	// #0
 408:	17fffffa 	b	3f0 <fat32_read_cluster+0x8c>

000000000000040c <fat32_read_chain>:
 40c:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
 410:	910003fd 	mov	x29, sp
 414:	a90153f3 	stp	x19, x20, [sp, #16]
 418:	f90013f5 	str	x21, [sp, #32]
 41c:	a90363f7 	stp	x23, x24, [sp, #48]
 420:	f90027fa 	str	x26, [sp, #72]
 424:	f9002ffc 	str	x28, [sp, #88]
 428:	aa0003f4 	mov	x20, x0
 42c:	aa0103f8 	mov	x24, x1
 430:	aa0203f7 	mov	x23, x2
 434:	b940a813 	ldr	w19, [x0, #168]
 438:	7941401a 	ldrh	w26, [x0, #160]
 43c:	3942881c 	ldrb	w28, [x0, #162]
 440:	92403f40 	and	x0, x26, #0xffff
 444:	94000000 	bl	0 <malloc>
 448:	d2800015 	mov	x21, #0x0                   	// #0
 44c:	b4000380 	cbz	x0, 4bc <fat32_read_chain+0xb0>
 450:	f90017b6 	str	x22, [x29, #40]
 454:	f90023b9 	str	x25, [x29, #64]
 458:	f9002bbb 	str	x27, [x29, #80]
 45c:	aa0003f6 	mov	x22, x0
 460:	f9003fb4 	str	x20, [x29, #120]
 464:	2a1303e0 	mov	w0, w19
 468:	f9003ba0 	str	x0, [x29, #112]
 46c:	2a1a03f9 	mov	w25, w26
 470:	b9008fb8 	str	w24, [x29, #140]
 474:	1ada0b1b 	udiv	w27, w24, w26
 478:	8b3b4013 	add	x19, x0, w27, uxtw
 47c:	aa1603e2 	mov	x2, x22
 480:	aa1303e1 	mov	x1, x19
 484:	aa1403e0 	mov	x0, x20
 488:	94000000 	bl	0 <cd_read_sector>
 48c:	b4000280 	cbz	x0, 4dc <fat32_read_chain+0xd0>
 490:	1ada0b00 	udiv	w0, w24, w26
 494:	1b1ae000 	msub	w0, w0, w26, w24
 498:	b8607ad3 	ldr	w19, [x22, x0, lsl #2]
 49c:	d2800015 	mov	x21, #0x0                   	// #0
 4a0:	72006e73 	ands	w19, w19, #0xfffffff
 4a4:	54000321 	b.ne	508 <fat32_read_chain+0xfc>  // b.any
 4a8:	aa1603e0 	mov	x0, x22
 4ac:	94000000 	bl	0 <free>
 4b0:	f94017b6 	ldr	x22, [x29, #40]
 4b4:	f94023b9 	ldr	x25, [x29, #64]
 4b8:	f9402bbb 	ldr	x27, [x29, #80]
 4bc:	aa1503e0 	mov	x0, x21
 4c0:	a94153f3 	ldp	x19, x20, [sp, #16]
 4c4:	f94013f5 	ldr	x21, [sp, #32]
 4c8:	a94363f7 	ldp	x23, x24, [sp, #48]
 4cc:	f94027fa 	ldr	x26, [sp, #72]
 4d0:	f9402ffc 	ldr	x28, [sp, #88]
 4d4:	a8c97bfd 	ldp	x29, x30, [sp], #144
 4d8:	d65f03c0 	ret
 4dc:	aa1303e4 	mov	x4, x19
 4e0:	90000003 	adrp	x3, 0 <fat32_init>
 4e4:	91000063 	add	x3, x3, #0x0
 4e8:	90000002 	adrp	x2, 0 <fat32_init>
 4ec:	91000042 	add	x2, x2, #0x0
 4f0:	9100c042 	add	x2, x2, #0x30
 4f4:	52801381 	mov	w1, #0x9c                  	// #156
 4f8:	90000000 	adrp	x0, 0 <fat32_init>
 4fc:	91000000 	add	x0, x0, #0x0
 500:	94000000 	bl	0 <__panic>
 504:	17ffffe3 	b	490 <fat32_read_chain+0x84>
 508:	1b1a7f9a 	mul	w26, w28, w26
 50c:	2a1a03e0 	mov	w0, w26
 510:	f90043a0 	str	x0, [x29, #128]
 514:	94000000 	bl	0 <malloc>
 518:	f90002e0 	str	x0, [x23]
 51c:	b4fffc60 	cbz	x0, 4a8 <fat32_read_chain+0x9c>
 520:	90000000 	adrp	x0, 0 <fat32_init>
 524:	f90037a0 	str	x0, [x29, #104]
 528:	90000000 	adrp	x0, 0 <fat32_init>
 52c:	91000000 	add	x0, x0, #0x0
 530:	9100c000 	add	x0, x0, #0x30
 534:	f90033a0 	str	x0, [x29, #96]
 538:	1400000d 	b	56c <fat32_read_chain+0x160>
 53c:	1ad90a60 	udiv	w0, w19, w25
 540:	1b19cc00 	msub	w0, w0, w25, w19
 544:	b8607ada 	ldr	w26, [x22, x0, lsl #2]
 548:	12006f5a 	and	w26, w26, #0xfffffff
 54c:	f94043a0 	ldr	x0, [x29, #128]
 550:	8b150001 	add	x1, x0, x21
 554:	f94002e0 	ldr	x0, [x23]
 558:	94000000 	bl	0 <realloc>
 55c:	f90002e0 	str	x0, [x23]
 560:	b9008fb3 	str	w19, [x29, #140]
 564:	b4000577 	cbz	x23, 610 <fat32_read_chain+0x204>
 568:	2a1a03f3 	mov	w19, w26
 56c:	f94002e2 	ldr	x2, [x23]
 570:	8b150042 	add	x2, x2, x21
 574:	b9408fa1 	ldr	w1, [x29, #140]
 578:	aa1403e0 	mov	x0, x20
 57c:	94000000 	bl	364 <fat32_read_cluster>
 580:	8b0002b5 	add	x21, x21, x0
 584:	51000a60 	sub	w0, w19, #0x2
 588:	529ffda1 	mov	w1, #0xffed                	// #65517
 58c:	72a1ffe1 	movk	w1, #0xfff, lsl #16
 590:	6b01001f 	cmp	w0, w1
 594:	540002c8 	b.hi	5ec <fat32_read_chain+0x1e0>  // b.pmore
 598:	1ad90a7a 	udiv	w26, w19, w25
 59c:	6b1b035f 	cmp	w26, w27
 5a0:	54fffce0 	b.eq	53c <fat32_read_chain+0x130>  // b.none
 5a4:	2a1a03fc 	mov	w28, w26
 5a8:	f9403ba0 	ldr	x0, [x29, #112]
 5ac:	8b00039c 	add	x28, x28, x0
 5b0:	aa1603e2 	mov	x2, x22
 5b4:	aa1c03e1 	mov	x1, x28
 5b8:	f9403fa0 	ldr	x0, [x29, #120]
 5bc:	94000000 	bl	0 <cd_read_sector>
 5c0:	2a1a03fb 	mov	w27, w26
 5c4:	b5fffbc0 	cbnz	x0, 53c <fat32_read_chain+0x130>
 5c8:	aa1c03e4 	mov	x4, x28
 5cc:	f94037a0 	ldr	x0, [x29, #104]
 5d0:	91000003 	add	x3, x0, #0x0
 5d4:	f94033a2 	ldr	x2, [x29, #96]
 5d8:	52801801 	mov	w1, #0xc0                  	// #192
 5dc:	90000000 	adrp	x0, 0 <fat32_init>
 5e0:	91000000 	add	x0, x0, #0x0
 5e4:	94000000 	bl	0 <__panic>
 5e8:	17ffffd5 	b	53c <fat32_read_chain+0x130>
 5ec:	aa1803e3 	mov	x3, x24
 5f0:	aa1503e2 	mov	x2, x21
 5f4:	90000001 	adrp	x1, 0 <fat32_init>
 5f8:	91000021 	add	x1, x1, #0x0
 5fc:	90000000 	adrp	x0, 0 <fat32_init>
 600:	91000000 	add	x0, x0, #0x0
 604:	9100c000 	add	x0, x0, #0x30
 608:	94000000 	bl	0 <__debug>
 60c:	17ffffa7 	b	4a8 <fat32_read_chain+0x9c>
 610:	d2800015 	mov	x21, #0x0                   	// #0
 614:	17ffffa5 	b	4a8 <fat32_read_chain+0x9c>

0000000000000618 <fat32_parse_name>:
 618:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 61c:	910003fd 	mov	x29, sp
 620:	f9000ff4 	str	x20, [sp, #24]
 624:	a902dff6 	stp	x22, x23, [sp, #40]
 628:	aa0003f4 	mov	x20, x0
 62c:	aa0103f7 	mov	x23, x1
 630:	39402c00 	ldrb	w0, [x0, #11]
 634:	71003c1f 	cmp	w0, #0xf
 638:	54000620 	b.eq	6fc <fat32_parse_name+0xe4>  // b.none
 63c:	39400280 	ldrb	w0, [x20]
 640:	7103941f 	cmp	w0, #0xe5
 644:	54000c80 	b.eq	7d4 <fat32_parse_name+0x1bc>  // b.none
 648:	f9000bb3 	str	x19, [x29, #16]
 64c:	f90013b5 	str	x21, [x29, #32]
 650:	34000c80 	cbz	w0, 7e0 <fat32_parse_name+0x1c8>
 654:	d2800020 	mov	x0, #0x1                   	// #1
 658:	2a0003f3 	mov	w19, w0
 65c:	38606a81 	ldrb	w1, [x20, x0]
 660:	340000a1 	cbz	w1, 674 <fat32_parse_name+0x5c>
 664:	11000413 	add	w19, w0, #0x1
 668:	91000400 	add	x0, x0, #0x1
 66c:	f100201f 	cmp	x0, #0x8
 670:	54ffff41 	b.ne	658 <fat32_parse_name+0x40>  // b.any
 674:	93407e75 	sxtw	x21, w19
 678:	aa1503e2 	mov	x2, x21
 67c:	aa1403e1 	mov	x1, x20
 680:	aa1703e0 	mov	x0, x23
 684:	94000000 	bl	0 <strncpy>
 688:	39402280 	ldrb	w0, [x20, #8]
 68c:	34000b60 	cbz	w0, 7f8 <fat32_parse_name+0x1e0>
 690:	528005c0 	mov	w0, #0x2e                  	// #46
 694:	3833cae0 	strb	w0, [x23, w19, sxtw]
 698:	39400280 	ldrb	w0, [x20]
 69c:	34000aa0 	cbz	w0, 7f0 <fat32_parse_name+0x1d8>
 6a0:	39400680 	ldrb	w0, [x20, #1]
 6a4:	34000a20 	cbz	w0, 7e8 <fat32_parse_name+0x1d0>
 6a8:	39400a80 	ldrb	w0, [x20, #2]
 6ac:	7100001f 	cmp	w0, #0x0
 6b0:	1a9f07f6 	cset	w22, ne  // ne = any
 6b4:	11000ad6 	add	w22, w22, #0x2
 6b8:	910006b5 	add	x21, x21, #0x1
 6bc:	8b1502f5 	add	x21, x23, x21
 6c0:	d2800062 	mov	x2, #0x3                   	// #3
 6c4:	91002281 	add	x1, x20, #0x8
 6c8:	9101a3a0 	add	x0, x29, #0x68
 6cc:	94000000 	bl	0 <utf16ntoascii>
 6d0:	93407ec2 	sxtw	x2, w22
 6d4:	aa0003e1 	mov	x1, x0
 6d8:	aa1503e0 	mov	x0, x21
 6dc:	94000000 	bl	0 <strncpy>
 6e0:	11000673 	add	w19, w19, #0x1
 6e4:	0b160276 	add	w22, w19, w22
 6e8:	3836caff 	strb	wzr, [x23, w22, sxtw]
 6ec:	d2800016 	mov	x22, #0x0                   	// #0
 6f0:	f9400bb3 	ldr	x19, [x29, #16]
 6f4:	f94013b5 	ldr	x21, [x29, #32]
 6f8:	14000032 	b	7c0 <fat32_parse_name+0x1a8>
 6fc:	f9000bb3 	str	x19, [x29, #16]
 700:	f90013b5 	str	x21, [x29, #32]
 704:	a903e7b8 	stp	x24, x25, [x29, #56]
 708:	a904efba 	stp	x26, x27, [x29, #72]
 70c:	91000694 	add	x20, x20, #0x1
 710:	d2800016 	mov	x22, #0x0                   	// #0
 714:	528001bb 	mov	w27, #0xd                   	// #13
 718:	9101a3b5 	add	x21, x29, #0x68
 71c:	d280015a 	mov	x26, #0xa                   	// #10
 720:	d28000b9 	mov	x25, #0x5                   	// #5
 724:	d2800198 	mov	x24, #0xc                   	// #12
 728:	385ff293 	ldurb	w19, [x20, #-1]
 72c:	12001273 	and	w19, w19, #0x1f
 730:	51000673 	sub	w19, w19, #0x1
 734:	1b1b7e73 	mul	w19, w19, w27
 738:	8b33c2f3 	add	x19, x23, w19, sxtw
 73c:	aa1a03e2 	mov	x2, x26
 740:	aa1403e1 	mov	x1, x20
 744:	aa1503e0 	mov	x0, x21
 748:	94000000 	bl	0 <utf16ntoascii>
 74c:	aa1903e2 	mov	x2, x25
 750:	aa0003e1 	mov	x1, x0
 754:	aa1303e0 	mov	x0, x19
 758:	94000000 	bl	0 <strncpy>
 75c:	aa1803e2 	mov	x2, x24
 760:	91003681 	add	x1, x20, #0xd
 764:	aa1503e0 	mov	x0, x21
 768:	94000000 	bl	0 <utf16ntoascii>
 76c:	d28000c2 	mov	x2, #0x6                   	// #6
 770:	aa0003e1 	mov	x1, x0
 774:	91001660 	add	x0, x19, #0x5
 778:	94000000 	bl	0 <strncpy>
 77c:	d2800082 	mov	x2, #0x4                   	// #4
 780:	91006e81 	add	x1, x20, #0x1b
 784:	aa1503e0 	mov	x0, x21
 788:	94000000 	bl	0 <utf16ntoascii>
 78c:	d2800042 	mov	x2, #0x2                   	// #2
 790:	aa0003e1 	mov	x1, x0
 794:	91002e60 	add	x0, x19, #0xb
 798:	94000000 	bl	0 <strncpy>
 79c:	910006d6 	add	x22, x22, #0x1
 7a0:	91008294 	add	x20, x20, #0x20
 7a4:	39402a80 	ldrb	w0, [x20, #10]
 7a8:	71003c1f 	cmp	w0, #0xf
 7ac:	54fffbe0 	b.eq	728 <fat32_parse_name+0x110>  // b.none
 7b0:	f9400bb3 	ldr	x19, [x29, #16]
 7b4:	f94013b5 	ldr	x21, [x29, #32]
 7b8:	a943e7b8 	ldp	x24, x25, [x29, #56]
 7bc:	a944efba 	ldp	x26, x27, [x29, #72]
 7c0:	aa1603e0 	mov	x0, x22
 7c4:	f9400ff4 	ldr	x20, [sp, #24]
 7c8:	a942dff6 	ldp	x22, x23, [sp, #40]
 7cc:	a8c77bfd 	ldp	x29, x30, [sp], #112
 7d0:	d65f03c0 	ret
 7d4:	3900003f 	strb	wzr, [x1]
 7d8:	d2800016 	mov	x22, #0x0                   	// #0
 7dc:	17fffff9 	b	7c0 <fat32_parse_name+0x1a8>
 7e0:	52800013 	mov	w19, #0x0                   	// #0
 7e4:	17ffffa4 	b	674 <fat32_parse_name+0x5c>
 7e8:	52800036 	mov	w22, #0x1                   	// #1
 7ec:	17ffffb3 	b	6b8 <fat32_parse_name+0xa0>
 7f0:	52800016 	mov	w22, #0x0                   	// #0
 7f4:	17ffffb1 	b	6b8 <fat32_parse_name+0xa0>
 7f8:	3833caff 	strb	wzr, [x23, w19, sxtw]
 7fc:	d2800016 	mov	x22, #0x0                   	// #0
 800:	f9400bb3 	ldr	x19, [x29, #16]
 804:	f94013b5 	ldr	x21, [x29, #32]
 808:	17ffffee 	b	7c0 <fat32_parse_name+0x1a8>

000000000000080c <fat32_find_entry>:
 80c:	d10943ff 	sub	sp, sp, #0x250
 810:	a9007bfd 	stp	x29, x30, [sp]
 814:	910003fd 	mov	x29, sp
 818:	f9000bf3 	str	x19, [sp, #16]
 81c:	f9001ff8 	str	x24, [sp, #56]
 820:	aa0003f8 	mov	x24, x0
 824:	b4000662 	cbz	x2, 8f0 <fat32_find_entry+0xe4>
 828:	a901d7b4 	stp	x20, x21, [x29, #24]
 82c:	a902dfb6 	stp	x22, x23, [x29, #40]
 830:	a9046bb9 	stp	x25, x26, [x29, #64]
 834:	aa0103f7 	mov	x23, x1
 838:	aa0203f6 	mov	x22, x2
 83c:	d2800014 	mov	x20, #0x0                   	// #0
 840:	910143b5 	add	x21, x29, #0x50
 844:	9000001a 	adrp	x26, 0 <fat32_init>
 848:	90000019 	adrp	x25, 0 <fat32_init>
 84c:	91000339 	add	x25, x25, #0x0
 850:	91012339 	add	x25, x25, #0x48
 854:	1400000d 	b	888 <fat32_find_entry+0x7c>
 858:	aa1503e2 	mov	x2, x21
 85c:	91000341 	add	x1, x26, #0x0
 860:	aa1903e0 	mov	x0, x25
 864:	94000000 	bl	0 <__debug>
 868:	aa1503e1 	mov	x1, x21
 86c:	aa1803e0 	mov	x0, x24
 870:	94000000 	bl	0 <strcmp>
 874:	340001c0 	cbz	w0, 8ac <fat32_find_entry+0xa0>
 878:	8b140273 	add	x19, x19, x20
 87c:	91000674 	add	x20, x19, #0x1
 880:	eb16029f 	cmp	x20, x22
 884:	54000302 	b.cs	8e4 <fat32_find_entry+0xd8>  // b.hs, b.nlast
 888:	aa1503e1 	mov	x1, x21
 88c:	8b1416e0 	add	x0, x23, x20, lsl #5
 890:	94000000 	bl	618 <fat32_parse_name>
 894:	aa0003f3 	mov	x19, x0
 898:	394143a0 	ldrb	w0, [x29, #80]
 89c:	35fffde0 	cbnz	w0, 858 <fat32_find_entry+0x4c>
 8a0:	8b140273 	add	x19, x19, x20
 8a4:	91000674 	add	x20, x19, #0x1
 8a8:	17fffff6 	b	880 <fat32_find_entry+0x74>
 8ac:	8b140273 	add	x19, x19, x20
 8b0:	8b1316f3 	add	x19, x23, x19, lsl #5
 8b4:	aa1303e3 	mov	x3, x19
 8b8:	aa1803e2 	mov	x2, x24
 8bc:	90000001 	adrp	x1, 0 <fat32_init>
 8c0:	91000021 	add	x1, x1, #0x0
 8c4:	90000000 	adrp	x0, 0 <fat32_init>
 8c8:	91000000 	add	x0, x0, #0x0
 8cc:	91012000 	add	x0, x0, #0x48
 8d0:	94000000 	bl	0 <__debug>
 8d4:	a941d7b4 	ldp	x20, x21, [x29, #24]
 8d8:	a942dfb6 	ldp	x22, x23, [x29, #40]
 8dc:	a9446bb9 	ldp	x25, x26, [x29, #64]
 8e0:	1400000c 	b	910 <fat32_find_entry+0x104>
 8e4:	a941d7b4 	ldp	x20, x21, [x29, #24]
 8e8:	a942dfb6 	ldp	x22, x23, [x29, #40]
 8ec:	a9446bb9 	ldp	x25, x26, [x29, #64]
 8f0:	aa1803e2 	mov	x2, x24
 8f4:	90000001 	adrp	x1, 0 <fat32_init>
 8f8:	91000021 	add	x1, x1, #0x0
 8fc:	90000000 	adrp	x0, 0 <fat32_init>
 900:	91000000 	add	x0, x0, #0x0
 904:	91012000 	add	x0, x0, #0x48
 908:	94000000 	bl	0 <__debug>
 90c:	d2800013 	mov	x19, #0x0                   	// #0
 910:	aa1303e0 	mov	x0, x19
 914:	f9400bf3 	ldr	x19, [sp, #16]
 918:	f9401ff8 	ldr	x24, [sp, #56]
 91c:	a9407bfd 	ldp	x29, x30, [sp]
 920:	910943ff 	add	sp, sp, #0x250
 924:	d65f03c0 	ret

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
0000000000000928 <fat32_open>:
 928:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
 92c:	910003fd 	mov	x29, sp
 930:	f9000bf3 	str	x19, [sp, #16]
 934:	f90017f6 	str	x22, [sp, #40]
 938:	f9001ff8 	str	x24, [sp, #56]
 93c:	aa0003f6 	mov	x22, x0
 940:	aa0103f3 	mov	x19, x1
 944:	f9003fbf 	str	xzr, [x29, #120]
 948:	d2800402 	mov	x2, #0x20                  	// #32
 94c:	52800001 	mov	w1, #0x0                   	// #0
 950:	910163a0 	add	x0, x29, #0x58
 954:	94000000 	bl	0 <memset>
 958:	b4000353 	cbz	x19, 9c0 <fat32_open+0x98>
 95c:	aa1303e0 	mov	x0, x19
 960:	94000000 	bl	0 <strlen>
 964:	91000400 	add	x0, x0, #0x1
 968:	94000000 	bl	0 <malloc>
 96c:	aa0003f8 	mov	x24, x0
 970:	b40003c0 	cbz	x0, 9e8 <fat32_open+0xc0>
 974:	aa1303e1 	mov	x1, x19
 978:	aa1803e0 	mov	x0, x24
 97c:	94000000 	bl	0 <strcpy>
 980:	90000001 	adrp	x1, 0 <fat32_init>
 984:	91000021 	add	x1, x1, #0x0
 988:	aa1803e0 	mov	x0, x24
 98c:	94000000 	bl	0 <strtok>
 990:	aa0003f3 	mov	x19, x0
 994:	b4000ee0 	cbz	x0, b70 <fat32_open+0x248>
 998:	a901d7b4 	stp	x20, x21, [x29, #24]
 99c:	f9001bb7 	str	x23, [x29, #48]
 9a0:	f90023b9 	str	x25, [x29, #64]
 9a4:	52800021 	mov	w1, #0x1                   	// #1
 9a8:	9101e3b7 	add	x23, x29, #0x78
 9ac:	90000019 	adrp	x25, 0 <fat32_init>
 9b0:	90000015 	adrp	x21, 0 <fat32_init>
 9b4:	910002b5 	add	x21, x21, #0x0
 9b8:	910182b5 	add	x21, x21, #0x60
 9bc:	1400002f 	b	a78 <fat32_open+0x150>
 9c0:	90000003 	adrp	x3, 0 <fat32_init>
 9c4:	91000063 	add	x3, x3, #0x0
 9c8:	90000002 	adrp	x2, 0 <fat32_init>
 9cc:	91000042 	add	x2, x2, #0x0
 9d0:	91018042 	add	x2, x2, #0x60
 9d4:	52802881 	mov	w1, #0x144                 	// #324
 9d8:	90000000 	adrp	x0, 0 <fat32_init>
 9dc:	91000000 	add	x0, x0, #0x0
 9e0:	94000000 	bl	0 <__panic>
 9e4:	17ffffde 	b	95c <fat32_open+0x34>
 9e8:	90000003 	adrp	x3, 0 <fat32_init>
 9ec:	91000063 	add	x3, x3, #0x0
 9f0:	90000002 	adrp	x2, 0 <fat32_init>
 9f4:	91000042 	add	x2, x2, #0x0
 9f8:	91018042 	add	x2, x2, #0x60
 9fc:	52802941 	mov	w1, #0x14a                 	// #330
 a00:	90000000 	adrp	x0, 0 <fat32_init>
 a04:	91000000 	add	x0, x0, #0x0
 a08:	94000000 	bl	0 <__panic>
 a0c:	17ffffda 	b	974 <fat32_open+0x4c>
 a10:	aa1703e2 	mov	x2, x23
 a14:	b940b2c1 	ldr	w1, [x22, #176]
 a18:	aa1603e0 	mov	x0, x22
 a1c:	94000000 	bl	40c <fat32_read_chain>
 a20:	d345fc14 	lsr	x20, x0, #5
 a24:	91000321 	add	x1, x25, #0x0
 a28:	aa1503e0 	mov	x0, x21
 a2c:	94000000 	bl	0 <__debug>
 a30:	aa1303e2 	mov	x2, x19
 a34:	90000001 	adrp	x1, 0 <fat32_init>
 a38:	91000021 	add	x1, x1, #0x0
 a3c:	aa1503e0 	mov	x0, x21
 a40:	94000000 	bl	0 <__debug>
 a44:	aa1403e2 	mov	x2, x20
 a48:	f9403fa1 	ldr	x1, [x29, #120]
 a4c:	aa1303e0 	mov	x0, x19
 
 
 
 
 
 a50:	94000000 	bl	80c <fat32_find_entry>
 a54:	aa0003f4 	mov	x20, x0
 a58:	b40006e0 	cbz	x0, b34 <fat32_open+0x20c>
 a5c:	90000001 	adrp	x1, 0 <fat32_init>
 a60:	91000021 	add	x1, x1, #0x0
 a64:	d2800000 	mov	x0, #0x0                   	// #0
 a68:	94000000 	bl	0 <strtok>
 a6c:	aa0003f3 	mov	x19, x0
 a70:	52800001 	mov	w1, #0x0                   	// #0
 a74:	b4000900 	cbz	x0, b94 <fat32_open+0x26c>
 a78:	35fffcc1 	cbnz	w1, a10 <fat32_open+0xe8>
 a7c:	39402e80 	ldrb	w0, [x20, #11]
 a80:	36200500 	tbz	w0, #4, b20 <fat32_open+0x1f8>
 a84:	a9400680 	ldp	x0, x1, [x20]
 a88:	a90587a0 	stp	x0, x1, [x29, #88]
 a8c:	a9410680 	ldp	x0, x1, [x20, #16]
 a90:	a90687a0 	stp	x0, x1, [x29, #104]
 a94:	f9403fa0 	ldr	x0, [x29, #120]
 a98:	94000000 	bl	0 <free>
 a9c:	7940dba1 	ldrh	w1, [x29, #108]
 aa0:	7940e7a0 	ldrh	w0, [x29, #114]
 aa4:	aa1703e2 	mov	x2, x23
 aa8:	0b014001 	add	w1, w0, w1, lsl #16
 aac:	aa1603e0 	mov	x0, x22
 ab0:	94000000 	bl	40c <fat32_read_chain>
 ab4:	d345fc14 	lsr	x20, x0, #5
 ab8:	17ffffde 	b	a30 <fat32_open+0x108>
 abc:	7940dba0 	ldrh	w0, [x29, #108]
 ac0:	7940e7a1 	ldrh	w1, [x29, #114]
 ac4:	0b004020 	add	w0, w1, w0, lsl #16
 ac8:	b9000260 	str	w0, [x19]
 acc:	39418fa0 	ldrb	w0, [x29, #99]
 ad0:	39004260 	strb	w0, [x19, #16]
 ad4:	f9000676 	str	x22, [x19, #8]
 ad8:	394197a0 	ldrb	w0, [x29, #101]
 adc:	39004660 	strb	w0, [x19, #17]
 ae0:	7940cfa0 	ldrh	w0, [x29, #102]
 ae4:	79002660 	strh	w0, [x19, #18]
 ae8:	7940d3a0 	ldrh	w0, [x29, #104]
 aec:	79002a60 	strh	w0, [x19, #20]
 af0:	7940d7a0 	ldrh	w0, [x29, #106]
 af4:	79002e60 	strh	w0, [x19, #22]
 af8:	7940dfa0 	ldrh	w0, [x29, #110]
 afc:	79003260 	strh	w0, [x19, #24]
 b00:	7940e3a0 	ldrh	w0, [x29, #112]
 b04:	79003660 	strh	w0, [x19, #26]
 b08:	b94077a0 	ldr	w0, [x29, #116]
 b0c:	b9001e60 	str	w0, [x19, #28]
 b10:	a941d7b4 	ldp	x20, x21, [x29, #24]
 b14:	f9401bb7 	ldr	x23, [x29, #48]
 b18:	f94023b9 	ldr	x25, [x29, #64]
 b1c:	1400000a 	b	b44 <fat32_open+0x21c>
 b20:	d2800013 	mov	x19, #0x0                   	// #0
 b24:	a941d7b4 	ldp	x20, x21, [x29, #24]
 b28:	f9401bb7 	ldr	x23, [x29, #48]
 b2c:	f94023b9 	ldr	x25, [x29, #64]
 b30:	14000005 	b	b44 <fat32_open+0x21c>
 b34:	d2800013 	mov	x19, #0x0                   	// #0
 b38:	a941d7b4 	ldp	x20, x21, [x29, #24]
 b3c:	f9401bb7 	ldr	x23, [x29, #48]
 b40:	f94023b9 	ldr	x25, [x29, #64]
 b44:	aa1803e0 	mov	x0, x24
 b48:	94000000 	bl	0 <free>
 b4c:	f9403fa0 	ldr	x0, [x29, #120]
 b50:	b4000040 	cbz	x0, b58 <fat32_open+0x230>
 b54:	94000000 	bl	0 <free>
 b58:	aa1303e0 	mov	x0, x19
 b5c:	f9400bf3 	ldr	x19, [sp, #16]
 b60:	f94017f6 	ldr	x22, [sp, #40]
 b64:	f9401ff8 	ldr	x24, [sp, #56]
 b68:	a8c87bfd 	ldp	x29, x30, [sp], #128
 b6c:	d65f03c0 	ret
 b70:	d2800400 	mov	x0, #0x20                  	// #32
 b74:	94000000 	bl	0 <malloc>
 b78:	aa0003f3 	mov	x19, x0
 b7c:	b4fffe40 	cbz	x0, b44 <fat32_open+0x21c>
 b80:	b940b2c0 	ldr	w0, [x22, #176]
 b84:	b9000260 	str	w0, [x19]
 b88:	52800200 	mov	w0, #0x10                  	// #16
 b8c:	39004260 	strb	w0, [x19, #16]
 b90:	17ffffed 	b	b44 <fat32_open+0x21c>
 b94:	d2800400 	mov	x0, #0x20                  	// #32
 b98:	94000000 	bl	0 <malloc>
 b9c:	aa0003f3 	mov	x19, x0
 ba0:	b5fff8e0 	cbnz	x0, abc <fat32_open+0x194>
 ba4:	a941d7b4 	ldp	x20, x21, [x29, #24]
 ba8:	f9401bb7 	ldr	x23, [x29, #48]
 bac:	f94023b9 	ldr	x25, [x29, #64]
 bb0:	17ffffe5 	b	b44 <fat32_open+0x21c>

Disassembly of section .rodata:

0000000000000000 <__func__.3009>:
   0:	33746166 	.word	0x33746166
   4:	6e695f32 	.word	0x6e695f32
   8:	00007469 	.word	0x00007469
   c:	00000000 	.word	0x00000000

0000000000000010 <__func__.2984>:
  10:	5f72626d 	.word	0x5f72626d
  14:	73726170 	.word	0x73726170
  18:	00000065 	.word	0x00000065
  1c:	00000000 	.word	0x00000000

0000000000000020 <__func__.3000>:
  20:	62706265 	.word	0x62706265
  24:	7261705f 	.word	0x7261705f
  28:	00006573 	.word	0x00006573
  2c:	00000000 	.word	0x00000000

0000000000000030 <__func__.3044>:
  30:	33746166 	.word	0x33746166
  34:	65725f32 	.word	0x65725f32
  38:	635f6461 	.word	0x635f6461
  3c:	6e696168 	.word	0x6e696168
	...

0000000000000048 <__func__.3056>:
  48:	33746166 	.word	0x33746166
  4c:	69665f32 	.word	0x69665f32
  50:	655f646e 	.word	0x655f646e
  54:	7972746e 	.word	0x7972746e
	...

0000000000000060 <__func__.3090>:
  60:	33746166 	.word	0x33746166
  64:	706f5f32 	.word	0x706f5f32
  68:	地址 0x0000000000000068 越界。


Disassembly of section .rodata.str1.8:

0000000000000000 <.rodata.str1.8>:
   0:	657a6973 	.word	0x657a6973
   4:	7228666f 	.word	0x7228666f
   8:	6c756765 	.word	0x6c756765
   c:	645f7261 	.word	0x645f7261
  10:	655f7269 	.word	0x655f7269
  14:	7972746e 	.word	0x7972746e
  18:	203d2029 	.word	0x203d2029
  1c:	000a6425 	.word	0x000a6425
  20:	657a6973 	.word	0x657a6973
  24:	4c28666f 	.word	0x4c28666f
  28:	645f4e46 	.word	0x645f4e46
  2c:	655f7269 	.word	0x655f7269
  30:	7972746e 	.word	0x7972746e
  34:	203d2029 	.word	0x203d2029
  38:	000a6425 	.word	0x000a6425
  3c:	00000000 	.word	0x00000000
  40:	657a6973 	.word	0x657a6973
  44:	6428666f 	.word	0x6428666f
  48:	655f7269 	.word	0x655f7269
  4c:	7972746e 	.word	0x7972746e
  50:	2029745f 	.word	0x2029745f
  54:	6425203d 	.word	0x6425203d
  58:	0000000a 	.word	0x0000000a
  5c:	00000000 	.word	0x00000000
  60:	6f727245 	.word	0x6f727245
  64:	6e692072 	.word	0x6e692072
  68:	6c6c6120 	.word	0x6c6c6120
  6c:	7461636f 	.word	0x7461636f
  70:	20676e69 	.word	0x20676e69
  74:	6f6d656d 	.word	0x6f6d656d
  78:	66207972 	.word	0x66207972
  7c:	4620726f 	.word	0x4620726f
  80:	32335441 	.word	0x32335441
  84:	73797320 	.word	0x73797320
  88:	216d6574 	.word	0x216d6574
  8c:	0000000a 	.word	0x0000000a
  90:	2f637273 	.word	0x2f637273
  94:	33746166 	.word	0x33746166
  98:	00632e32 	.word	0x00632e32
  9c:	00000000 	.word	0x00000000
  a0:	276e6143 	.word	0x276e6143
  a4:	65722074 	.word	0x65722074
  a8:	4d206461 	.word	0x4d206461
  ac:	66205242 	.word	0x66205242
  b0:	206d6f72 	.word	0x206d6f72
  b4:	61636473 	.word	0x61636473
  b8:	202e6472 	.word	0x202e6472
  bc:	6f727245 	.word	0x6f727245
  c0:	6f632072 	.word	0x6f632072
  c4:	25206564 	.word	0x25206564
  c8:	000a2e64 	.word	0x000a2e64
  cc:	00000000 	.word	0x00000000
  d0:	46206f4e 	.word	0x46206f4e
  d4:	32335441 	.word	0x32335441
  d8:	72617020 	.word	0x72617020
  dc:	69746974 	.word	0x69746974
  e0:	77206e6f 	.word	0x77206e6f
  e4:	66207361 	.word	0x66207361
  e8:	646e756f 	.word	0x646e756f
  ec:	00000a21 	.word	0x00000a21
  f0:	276e6143 	.word	0x276e6143
  f4:	65722074 	.word	0x65722074
  f8:	61206461 	.word	0x61206461
  fc:	6420796e 	.word	0x6420796e
 100:	20617461 	.word	0x20617461
 104:	6d6f7266 	.word	0x6d6f7266
 108:	63657320 	.word	0x63657320
 10c:	20726f74 	.word	0x20726f74
 110:	202e6425 	.word	0x202e6425
 114:	6f727245 	.word	0x6f727245
 118:	6f632072 	.word	0x6f632072
 11c:	25206564 	.word	0x25206564
 120:	00000a64 	.word	0x00000a64
 124:	00000000 	.word	0x00000000
 128:	62206f4e 	.word	0x62206f4e
 12c:	20746f6f 	.word	0x20746f6f
 130:	74726170 	.word	0x74726170
 134:	6f697469 	.word	0x6f697469
 138:	6177206e 	.word	0x6177206e
 13c:	6f662073 	.word	0x6f662073
 140:	21646e75 	.word	0x21646e75
 144:	0000000a 	.word	0x0000000a
 148:	276e6143 	.word	0x276e6143
 14c:	65722074 	.word	0x65722074
 150:	61206461 	.word	0x61206461
 154:	6420796e 	.word	0x6420796e
 158:	63657269 	.word	0x63657269
 15c:	79726f74 	.word	0x79726f74
 160:	746e6520 	.word	0x746e6520
 164:	61207972 	.word	0x61207972
 168:	65732074 	.word	0x65732074
 16c:	726f7463 	.word	0x726f7463
 170:	2e642520 	.word	0x2e642520
 174:	0000000a 	.word	0x0000000a
 178:	61746f54 	.word	0x61746f54
 17c:	6425206c 	.word	0x6425206c
 180:	74796220 	.word	0x74796220
 184:	64207365 	.word	0x64207365
 188:	20617461 	.word	0x20617461
 18c:	64616572 	.word	0x64616572
 190:	6f726620 	.word	0x6f726620
 194:	6c63206d 	.word	0x6c63206d
 198:	65747375 	.word	0x65747375
 19c:	64252072 	.word	0x64252072
 1a0:	00000a2e 	.word	0x00000a2e
 1a4:	00000000 	.word	0x00000000
 1a8:	6e756f46 	.word	0x6e756f46
 1ac:	69642064 	.word	0x69642064
 1b0:	74636572 	.word	0x74636572
 1b4:	2079726f 	.word	0x2079726f
 1b8:	22732522 	.word	0x22732522
 1bc:	0000000a 	.word	0x0000000a
 1c0:	646e6946 	.word	0x646e6946
 1c4:	73252220 	.word	0x73252220
 1c8:	6e652022 	.word	0x6e652022
 1cc:	20797274 	.word	0x20797274
 1d0:	30207461 	.word	0x30207461
 1d4:	0a782578 	.word	0x0a782578
	...
 1e0:	65206f4e 	.word	0x65206f4e
 1e4:	7972746e 	.word	0x7972746e
 1e8:	6d616e20 	.word	0x6d616e20
 1ec:	25206465 	.word	0x25206465
 1f0:	6f662073 	.word	0x6f662073
 1f4:	2e646e75 	.word	0x2e646e75
 1f8:	0000000a 	.word	0x0000000a
 1fc:	00000000 	.word	0x00000000
 200:	68746170 	.word	0x68746170
 204:	20736920 	.word	0x20736920
 208:	4c4c554e 	.word	0x4c4c554e
 20c:	00000000 	.word	0x00000000
 210:	206e7552 	.word	0x206e7552
 214:	2074756f 	.word	0x2074756f
 218:	6d20666f 	.word	0x6d20666f
 21c:	726f6d65 	.word	0x726f6d65
 220:	000a2179 	.word	0x000a2179
 224:	00000000 	.word	0x00000000
 228:	0000002f 	.word	0x0000002f
 22c:	00000000 	.word	0x00000000
 230:	746f6f52 	.word	0x746f6f52
 234:	756c6320 	.word	0x756c6320
 238:	72657473 	.word	0x72657473
 23c:	61657220 	.word	0x61657220
 240:	000a2e64 	.word	0x000a2e64
 244:	00000000 	.word	0x00000000
 248:	646e6946 	.word	0x646e6946
 24c:	20676e69 	.word	0x20676e69
 250:	2d627573 	.word	0x2d627573
 254:	65726964 	.word	0x65726964
 258:	726f7463 	.word	0x726f7463
 25c:	25222079 	.word	0x25222079
 260:	0a2e2273 	.word	0x0a2e2273
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	00001653 	.inst	0x00001653 ; undefined
       4:	00000004 	.inst	0x00000004 ; undefined
       8:	01080000 	.inst	0x01080000 ; undefined
       c:	00000000 	.inst	0x00000000 ; undefined
      10:	0000000c 	.inst	0x0000000c ; undefined
	...
      20:	000bb400 	.inst	0x000bb400 ; undefined
	...
      30:	07040200 	.inst	0x07040200 ; undefined
      34:	00000000 	.inst	0x00000000 ; undefined
      38:	00060102 	.inst	0x00060102 ; undefined
      3c:	02000000 	.inst	0x02000000 ; undefined
      40:	00000502 	.inst	0x00000502 ; undefined
      44:	04030000 	subr	z0.b, p0/m, z0.b, z0.b
      48:	746e6905 	.inst	0x746e6905 ; undefined
      4c:	05080200 	.inst	0x05080200 ; undefined
      50:	00000000 	.inst	0x00000000 ; undefined
      54:	00000004 	.inst	0x00000004 ; undefined
      58:	5f2e0200 	.inst	0x5f2e0200 ; undefined
      5c:	02000000 	.inst	0x02000000 ; undefined
      60:	00000801 	.inst	0x00000801 ; undefined
      64:	00040000 	.inst	0x00040000 ; undefined
      68:	02000000 	.inst	0x02000000 ; undefined
      6c:	00007131 	.inst	0x00007131 ; undefined
      70:	07020200 	.inst	0x07020200 ; undefined
      74:	00000000 	.inst	0x00000000 ; undefined
      78:	00000004 	.inst	0x00000004 ; undefined
      7c:	31340200 	adds	w0, w16, #0xd00
      80:	04000000 	add	z0.b, p0/m, z0.b, z0.b
      84:	00000000 	.inst	0x00000000 ; undefined
      88:	008e3702 	.inst	0x008e3702 ; undefined
      8c:	08020000 	stxrb	w2, w0, [x0]
      90:	00000007 	.inst	0x00000007 ; undefined
      94:	00000400 	.inst	0x00000400 ; undefined
      98:	d8030000 	prfm	pldl1keep, 6098 <fat32_open+0x5770>
      9c:	0000008e 	.inst	0x0000008e ; undefined
      a0:	00050802 	.inst	0x00050802 ; undefined
      a4:	02000000 	.inst	0x02000000 ; undefined
      a8:	00000410 	.inst	0x00000410 ; undefined
      ac:	00050000 	.inst	0x00050000 ; undefined
      b0:	10000000 	adr	x0, b0 <.debug_info+0xb0>
      b4:	00d30a04 	.inst	0x00d30a04 ; undefined
      b8:	00060000 	.inst	0x00060000 ; undefined
      bc:	04000000 	add	z0.b, p0/m, z0.b, z0.b
      c0:	0000d30b 	.inst	0x0000d30b ; undefined
      c4:	00060000 	.inst	0x00060000 ; undefined
      c8:	04000000 	add	z0.b, p0/m, z0.b, z0.b
      cc:	0000d90c 	.inst	0x0000d90c ; undefined
      d0:	07000800 	.inst	0x07000800 ; undefined
      d4:	0000ae08 	.inst	0x0000ae08 ; undefined
      d8:	d3080700 	.inst	0xd3080700 ; undefined
      dc:	05000000 	orr	z0.s, z0.s, #0x1
      e0:	00000000 	.inst	0x00000000 ; undefined
      e4:	f80f0408 	str	x8, [x0], #240
      e8:	06000000 	.inst	0x06000000 ; undefined
      ec:	00000000 	.inst	0x00000000 ; undefined
      f0:	00d31004 	.inst	0x00d31004 ; undefined
      f4:	00000000 	.inst	0x00000000 ; undefined
      f8:	0a051808 	and	w8, w0, w5, lsl #6
      fc:	00000125 	.inst	0x00000125 ; undefined
     100:	00000006 	.inst	0x00000006 ; undefined
     104:	780b0500 	strh	w0, [x8], #176
     108:	00000000 	.inst	0x00000000 ; undefined
     10c:	00000006 	.inst	0x00000006 ; undefined
     110:	2a0c0500 	orr	w0, w8, w12, lsl #1
     114:	08000001 	stxrb	w0, w1, [x0]
     118:	00000006 	.inst	0x00000006 ; undefined
     11c:	560d0500 	.inst	0x560d0500 ; undefined
     120:	10000001 	adr	x1, 120 <.debug_info+0x120>
     124:	00460900 	.inst	0x00460900 ; undefined
     128:	08070000 	stxrb	w7, w0, [x0]
     12c:	00000125 	.inst	0x00000125 ; undefined
     130:	0000460a 	.inst	0x0000460a ; undefined
     134:	00014400 	.inst	0x00014400 ; undefined
     138:	00780b00 	.inst	0x00780b00 ; undefined
     13c:	440b0000 	.inst	0x440b0000 ; undefined
     140:	00000001 	.inst	0x00000001 ; undefined
     144:	014a0807 	.inst	0x014a0807 ; undefined
     148:	01020000 	.inst	0x01020000 ; undefined
     14c:	00000008 	.inst	0x00000008 ; undefined
     150:	014a0c00 	.inst	0x014a0c00 ; undefined
     154:	08070000 	stxrb	w7, w0, [x0]
     158:	00000130 	.inst	0x00000130 ; undefined
     15c:	00000004 	.inst	0x00000004 ; undefined
     160:	f80e0500 	str	x0, [x8], #224
     164:	08000000 	stxrb	w0, w0, [x0]
     168:	88100508 	stxr	w16, w8, [x8]
     16c:	06000001 	.inst	0x06000001 ; undefined
     170:	00000000 	.inst	0x00000000 ; undefined
     174:	00781105 	.inst	0x00781105 ; undefined
     178:	06000000 	.inst	0x06000000 ; undefined
     17c:	00000000 	.inst	0x00000000 ; undefined
     180:	00781205 	.inst	0x00781205 ; undefined
     184:	00040000 	.inst	0x00040000 ; undefined
     188:	00000004 	.inst	0x00000004 ; undefined
     18c:	67130500 	.inst	0x67130500 ; undefined
     190:	08000001 	stxrb	w0, w1, [x0]
     194:	c01505a0 	.inst	0xc01505a0 ; undefined
     198:	06000001 	.inst	0x06000001 ; undefined
     19c:	00000000 	.inst	0x00000000 ; undefined
     1a0:	01881605 	.inst	0x01881605 ; undefined
     1a4:	06000000 	.inst	0x06000000 ; undefined
     1a8:	00000000 	.inst	0x00000000 ; undefined
     1ac:	015c1705 	.inst	0x015c1705 ; undefined
     1b0:	06080000 	.inst	0x06080000 ; undefined
     1b4:	00000000 	.inst	0x00000000 ; undefined
     1b8:	01c01805 	.inst	0x01c01805 ; undefined
     1bc:	00200000 	.inst	0x00200000 ; NYI
     1c0:	0000df0d 	.inst	0x0000df0d ; undefined
     1c4:	0001d000 	.inst	0x0001d000 ; undefined
     1c8:	008e0e00 	.inst	0x008e0e00 ; undefined
     1cc:	000f0000 	.inst	0x000f0000 ; undefined
     1d0:	00000004 	.inst	0x00000004 ; undefined
     1d4:	93190500 	.inst	0x93190500 ; undefined
     1d8:	08000001 	stxrb	w0, w1, [x0]
     1dc:	383406b8 	.inst	0x383406b8 ; undefined
     1e0:	06000002 	.inst	0x06000002 ; undefined
     1e4:	00000000 	.inst	0x00000000 ; undefined
     1e8:	01d03506 	.inst	0x01d03506 ; undefined
     1ec:	06000000 	.inst	0x06000000 ; undefined
     1f0:	00000000 	.inst	0x00000000 ; undefined
     1f4:	00663606 	.inst	0x00663606 ; undefined
     1f8:	06a00000 	.inst	0x06a00000 ; undefined
     1fc:	00000000 	.inst	0x00000000 ; undefined
     200:	00543706 	.inst	0x00543706 ; undefined
     204:	06a20000 	.inst	0x06a20000 ; undefined
     208:	00000000 	.inst	0x00000000 ; undefined
     20c:	00783806 	.inst	0x00783806 ; undefined
     210:	06a40000 	.inst	0x06a40000 ; undefined
     214:	00000000 	.inst	0x00000000 ; undefined
     218:	00783906 	.inst	0x00783906 ; undefined
     21c:	06a80000 	.inst	0x06a80000 ; undefined
     220:	00000000 	.inst	0x00000000 ; undefined
     224:	00783a06 	.inst	0x00783a06 ; undefined
     228:	06ac0000 	.inst	0x06ac0000 ; undefined
     22c:	00000000 	.inst	0x00000000 ; undefined
     230:	00783b06 	.inst	0x00783b06 ; undefined
     234:	00b00000 	.inst	0x00b00000 ; undefined
     238:	00000004 	.inst	0x00000004 ; undefined
     23c:	db3c0600 	.inst	0xdb3c0600 ; undefined
     240:	08000001 	stxrb	w0, w1, [x0]
     244:	7c40060c 	ldr	h12, [x16], #0
     248:	06000002 	.inst	0x06000002 ; undefined
     24c:	00000000 	.inst	0x00000000 ; undefined
     250:	00544106 	.inst	0x00544106 ; undefined
     254:	06000000 	.inst	0x06000000 ; undefined
     258:	00000000 	.inst	0x00000000 ; undefined
     25c:	00544206 	.inst	0x00544206 ; undefined
     260:	06010000 	.inst	0x06010000 ; undefined
     264:	00000000 	.inst	0x00000000 ; undefined
     268:	00784306 	.inst	0x00784306 ; undefined
     26c:	06040000 	.inst	0x06040000 ; undefined
     270:	00000000 	.inst	0x00000000 ; undefined
     274:	00784406 	.inst	0x00784406 ; undefined
     278:	00080000 	.inst	0x00080000 ; undefined
     27c:	3e064008 	.inst	0x3e064008 ; undefined
     280:	000002a9 	.inst	0x000002a9 ; undefined
     284:	00000006 	.inst	0x00000006 ; undefined
     288:	a93f0600 	stp	x0, x1, [x16, #-16]
     28c:	00000002 	.inst	0x00000002 ; undefined
     290:	00000006 	.inst	0x00000006 ; undefined
     294:	b9450600 	ldr	w0, [x16, #1284]
     298:	0c000002 	st4	{v2.8b-v5.8b}, [x0]
     29c:	00000006 	.inst	0x00000006 ; undefined
     2a0:	66460600 	.inst	0x66460600 ; undefined
     2a4:	3c000000 	stur	b0, [x0]
     2a8:	00540d00 	.inst	0x00540d00 ; undefined
     2ac:	02b90000 	.inst	0x02b90000 ; undefined
     2b0:	8e0e0000 	.inst	0x8e0e0000 ; undefined
     2b4:	09000000 	.inst	0x09000000 ; undefined
     2b8:	02430d00 	.inst	0x02430d00 ; undefined
     2bc:	02c90000 	.inst	0x02c90000 ; undefined
     2c0:	8e0e0000 	.inst	0x8e0e0000 ; undefined
     2c4:	03000000 	.inst	0x03000000 ; undefined
     2c8:	00000400 	.inst	0x00000400 ; undefined
     2cc:	47060000 	.inst	0x47060000 ; undefined
     2d0:	0000027c 	.inst	0x0000027c ; undefined
     2d4:	0602000f 	.inst	0x0602000f ; undefined
     2d8:	00043b49 	.inst	0x00043b49 ; undefined
     2dc:	00000600 	.inst	0x00000600 ; undefined
     2e0:	4a060000 	eor	w0, w0, w6
     2e4:	0000043b 	.inst	0x0000043b ; undefined
     2e8:	00000600 	.inst	0x00000600 ; undefined
     2ec:	4b060000 	sub	w0, w0, w6
     2f0:	0000044b 	.inst	0x0000044b ; undefined
     2f4:	00000603 	.inst	0x00000603 ; undefined
     2f8:	4c060000 	.inst	0x4c060000 ; undefined
     2fc:	00000066 	.inst	0x00000066 ; undefined
     300:	0000060b 	.inst	0x0000060b ; undefined
     304:	4d060000 	.inst	0x4d060000 ; undefined
     308:	00000054 	.inst	0x00000054 ; undefined
     30c:	0000060d 	.inst	0x0000060d ; undefined
     310:	4e060000 	tbl	v0.16b, {v0.16b}, v6.16b
     314:	00000066 	.inst	0x00000066 ; undefined
     318:	0000060e 	.inst	0x0000060e ; undefined
     31c:	4f060000 	.inst	0x4f060000 ; undefined
     320:	00000054 	.inst	0x00000054 ; undefined
     324:	00000610 	.inst	0x00000610 ; undefined
     328:	50060000 	adr	x0, c32a <fat32_open+0xba02>
     32c:	00000066 	.inst	0x00000066 ; undefined
     330:	00000611 	.inst	0x00000611 ; undefined
     334:	51060000 	sub	w0, w0, #0x180
     338:	00000066 	.inst	0x00000066 ; undefined
     33c:	00000613 	.inst	0x00000613 ; undefined
     340:	52060000 	eor	w0, w0, #0x4000000
     344:	00000054 	.inst	0x00000054 ; undefined
     348:	00000615 	.inst	0x00000615 ; undefined
     34c:	53060000 	ubfiz	w0, w0, #26, #1
     350:	00000066 	.inst	0x00000066 ; undefined
     354:	00000616 	.inst	0x00000616 ; undefined
     358:	54060000 	b.eq	c358 <fat32_open+0xba30>  // b.none
     35c:	00000066 	.inst	0x00000066 ; undefined
     360:	00000618 	.inst	0x00000618 ; undefined
     364:	55060000 	.inst	0x55060000 ; undefined
     368:	00000066 	.inst	0x00000066 ; undefined
     36c:	0000061a 	.inst	0x0000061a ; undefined
     370:	56060000 	.inst	0x56060000 ; undefined
     374:	00000078 	.inst	0x00000078 ; undefined
     378:	0000061c 	.inst	0x0000061c ; undefined
     37c:	57060000 	.inst	0x57060000 ; undefined
     380:	00000078 	.inst	0x00000078 ; undefined
     384:	00000620 	.inst	0x00000620 ; undefined
     388:	58060000 	ldr	x0, c388 <fat32_open+0xba60>
     38c:	00000078 	.inst	0x00000078 ; undefined
     390:	00000624 	.inst	0x00000624 ; undefined
     394:	59060000 	.inst	0x59060000 ; undefined
     398:	00000066 	.inst	0x00000066 ; undefined
     39c:	00000628 	.inst	0x00000628 ; undefined
     3a0:	5a060000 	sbc	w0, w0, w6
     3a4:	00000066 	.inst	0x00000066 ; undefined
     3a8:	0000062a 	.inst	0x0000062a ; undefined
     3ac:	5b060000 	.inst	0x5b060000 ; undefined
     3b0:	00000078 	.inst	0x00000078 ; undefined
     3b4:	0000062c 	.inst	0x0000062c ; undefined
     3b8:	5c060000 	ldr	d0, c3b8 <fat32_open+0xba90>
     3bc:	00000066 	.inst	0x00000066 ; undefined
     3c0:	00000630 	.inst	0x00000630 ; undefined
     3c4:	5d060000 	.inst	0x5d060000 ; undefined
     3c8:	00000066 	.inst	0x00000066 ; undefined
     3cc:	00000632 	.inst	0x00000632 ; undefined
     3d0:	5e060000 	sha1c	q0, s0, v6.4s
     3d4:	0000045b 	.inst	0x0000045b ; undefined
     3d8:	00000634 	.inst	0x00000634 ; undefined
     3dc:	5f060000 	.inst	0x5f060000 ; undefined
     3e0:	00000054 	.inst	0x00000054 ; undefined
     3e4:	00000640 	.inst	0x00000640 ; undefined
     3e8:	60060000 	.inst	0x60060000 ; undefined
     3ec:	00000054 	.inst	0x00000054 ; undefined
     3f0:	00000641 	.inst	0x00000641 ; undefined
     3f4:	61060000 	.inst	0x61060000 ; undefined
     3f8:	00000054 	.inst	0x00000054 ; undefined
     3fc:	00000642 	.inst	0x00000642 ; undefined
     400:	62060000 	.inst	0x62060000 ; undefined
     404:	00000078 	.inst	0x00000078 ; undefined
     408:	00000643 	.inst	0x00000643 ; undefined
     40c:	63060000 	.inst	0x63060000 ; undefined
     410:	0000046b 	.inst	0x0000046b ; undefined
     414:	00000647 	.inst	0x00000647 ; undefined
     418:	64060000 	.inst	0x64060000 ; undefined
     41c:	0000044b 	.inst	0x0000044b ; undefined
     420:	00000652 	.inst	0x00000652 ; undefined
     424:	65060000 	.inst	0x65060000 ; undefined
     428:	0000047b 	.inst	0x0000047b ; undefined
     42c:	0000105a 	.inst	0x0000105a ; undefined
     430:	66060000 	.inst	0x66060000 ; undefined
     434:	00000066 	.inst	0x00000066 ; undefined
     438:	0d0001fe 	st1	{v30.b}[0], [x15]
     43c:	00000054 	.inst	0x00000054 ; undefined
     440:	0000044b 	.inst	0x0000044b ; undefined
     444:	00008e0e 	.inst	0x00008e0e ; undefined
     448:	0d000200 	st1	{v0.b}[0], [x16]
     44c:	00000054 	.inst	0x00000054 ; undefined
     450:	0000045b 	.inst	0x0000045b ; undefined
     454:	00008e0e 	.inst	0x00008e0e ; undefined
     458:	0d000700 	st1	{v0.b}[1], [x24]
     45c:	00000054 	.inst	0x00000054 ; undefined
     460:	0000046b 	.inst	0x0000046b ; undefined
     464:	00008e0e 	.inst	0x00008e0e ; undefined
     468:	0d000b00 	st1	{v0.b}[2], [x24]
     46c:	00000054 	.inst	0x00000054 ; undefined
     470:	0000047b 	.inst	0x0000047b ; undefined
     474:	00008e0e 	.inst	0x00008e0e ; undefined
     478:	0d000a00 	st1	{v0.b}[2], [x16]
     47c:	00000054 	.inst	0x00000054 ; undefined
     480:	0000048c 	.inst	0x0000048c ; undefined
     484:	00008e11 	.inst	0x00008e11 ; undefined
     488:	0001a300 	.inst	0x0001a300 ; undefined
     48c:	00000004 	.inst	0x00000004 ; undefined
     490:	d4670600 	.inst	0xd4670600 ; undefined
     494:	08000002 	stxrb	w0, w2, [x0]
     498:	3c6e0620 	.inst	0x3c6e0620 ; undefined
     49c:	06000005 	.inst	0x06000005 ; undefined
     4a0:	00000000 	.inst	0x00000000 ; undefined
     4a4:	053c6f06 	uzp2	z6.b, z24.b, z28.b
     4a8:	06000000 	.inst	0x06000000 ; undefined
     4ac:	00000000 	.inst	0x00000000 ; undefined
     4b0:	054c7006 	.inst	0x054c7006 ; undefined
     4b4:	06080000 	.inst	0x06080000 ; undefined
     4b8:	00000000 	.inst	0x00000000 ; undefined
     4bc:	00547106 	.inst	0x00547106 ; undefined
     4c0:	060b0000 	.inst	0x060b0000 ; undefined
     4c4:	00000000 	.inst	0x00000000 ; undefined
     4c8:	00547206 	.inst	0x00547206 ; undefined
     4cc:	060c0000 	.inst	0x060c0000 ; undefined
     4d0:	00000000 	.inst	0x00000000 ; undefined
     4d4:	00547306 	.inst	0x00547306 ; undefined
     4d8:	060d0000 	.inst	0x060d0000 ; undefined
     4dc:	00000000 	.inst	0x00000000 ; undefined
     4e0:	00667406 	.inst	0x00667406 ; undefined
     4e4:	060e0000 	.inst	0x060e0000 ; undefined
     4e8:	00000000 	.inst	0x00000000 ; undefined
     4ec:	00667506 	.inst	0x00667506 ; undefined
     4f0:	06100000 	.inst	0x06100000 ; undefined
     4f4:	00000000 	.inst	0x00000000 ; undefined
     4f8:	00667606 	.inst	0x00667606 ; undefined
     4fc:	06120000 	.inst	0x06120000 ; undefined
     500:	00000000 	.inst	0x00000000 ; undefined
     504:	00667706 	.inst	0x00667706 ; undefined
     508:	06140000 	.inst	0x06140000 ; undefined
     50c:	00000000 	.inst	0x00000000 ; undefined
     510:	00667806 	.inst	0x00667806 ; undefined
     514:	06160000 	.inst	0x06160000 ; undefined
     518:	00000000 	.inst	0x00000000 ; undefined
     51c:	00667906 	.inst	0x00667906 ; undefined
     520:	06180000 	.inst	0x06180000 ; undefined
     524:	00000000 	.inst	0x00000000 ; undefined
     528:	00667a06 	.inst	0x00667a06 ; undefined
     52c:	061a0000 	.inst	0x061a0000 ; undefined
     530:	00000000 	.inst	0x00000000 ; undefined
     534:	00787b06 	.inst	0x00787b06 ; undefined
     538:	001c0000 	.inst	0x001c0000 ; undefined
     53c:	00014a0d 	.inst	0x00014a0d ; undefined
     540:	00054c00 	.inst	0x00054c00 ; undefined
     544:	008e0e00 	.inst	0x008e0e00 ; undefined
     548:	00070000 	.inst	0x00070000 ; undefined
     54c:	00014a0d 	.inst	0x00014a0d ; undefined
     550:	00055c00 	.inst	0x00055c00 ; undefined
     554:	008e0e00 	.inst	0x008e0e00 ; undefined
     558:	00020000 	.inst	0x00020000 ; undefined
     55c:	00000004 	.inst	0x00000004 ; undefined
     560:	977c0600 	bl	fffffffffdf01d60 <fat32_open+0xfffffffffdf01438>
     564:	08000004 	stxrb	w0, w4, [x0]
     568:	d07e0620 	adrp	x0, fc0c6000 <fat32_open+0xfc0c56d8>
     56c:	06000005 	.inst	0x06000005 ; undefined
     570:	00000000 	.inst	0x00000000 ; undefined
     574:	00547f06 	.inst	0x00547f06 ; undefined
     578:	06000000 	.inst	0x06000000 ; undefined
     57c:	00000000 	.inst	0x00000000 ; undefined
     580:	05d08006 	.inst	0x05d08006 ; undefined
     584:	06010000 	.inst	0x06010000 ; undefined
     588:	00000000 	.inst	0x00000000 ; undefined
     58c:	00548106 	.inst	0x00548106 ; undefined
     590:	060b0000 	.inst	0x060b0000 ; undefined
     594:	00000000 	.inst	0x00000000 ; undefined
     598:	00548206 	.inst	0x00548206 ; undefined
     59c:	060c0000 	.inst	0x060c0000 ; undefined
     5a0:	00000000 	.inst	0x00000000 ; undefined
     5a4:	00548306 	.inst	0x00548306 ; undefined
     5a8:	060d0000 	.inst	0x060d0000 ; undefined
     5ac:	00000000 	.inst	0x00000000 ; undefined
     5b0:	05e08406 	mov	z6.d, p1/m, d0
     5b4:	060e0000 	.inst	0x060e0000 ; undefined
     5b8:	00000000 	.inst	0x00000000 ; undefined
     5bc:	00668506 	.inst	0x00668506 ; undefined
     5c0:	061a0000 	.inst	0x061a0000 ; undefined
     5c4:	00000000 	.inst	0x00000000 ; undefined
     5c8:	05f08606 	.inst	0x05f08606 ; undefined
     5cc:	001c0000 	.inst	0x001c0000 ; undefined
     5d0:	00014a0d 	.inst	0x00014a0d ; undefined
     5d4:	0005e000 	.inst	0x0005e000 ; undefined
     5d8:	008e0e00 	.inst	0x008e0e00 ; undefined
     5dc:	00090000 	.inst	0x00090000 ; undefined
     5e0:	00014a0d 	.inst	0x00014a0d ; undefined
     5e4:	0005f000 	.inst	0x0005f000 ; undefined
     5e8:	008e0e00 	.inst	0x008e0e00 ; undefined
     5ec:	000b0000 	.inst	0x000b0000 ; undefined
     5f0:	00014a0d 	.inst	0x00014a0d ; undefined
     5f4:	00060000 	.inst	0x00060000 ; undefined
     5f8:	008e0e00 	.inst	0x008e0e00 ; undefined
     5fc:	00030000 	.inst	0x00030000 ; undefined
     600:	00000004 	.inst	0x00000004 ; undefined
     604:	67870600 	.inst	0x67870600 ; undefined
     608:	12000005 	and	w5, w0, #0x1
     60c:	2a890620 	orr	w0, w17, w9, asr #1
     610:	13000006 	sbfx	w6, w0, #0, #1
     614:	00000000 	.inst	0x00000000 ; undefined
     618:	055c8a06 	.inst	0x055c8a06 ; undefined
     61c:	00130000 	.inst	0x00130000 ; undefined
     620:	06000000 	.inst	0x06000000 ; undefined
     624:	0006008b 	.inst	0x0006008b ; undefined
     628:	00040000 	.inst	0x00040000 ; undefined
     62c:	06000000 	.inst	0x06000000 ; undefined
     630:	00060b8c 	.inst	0x00060b8c ; undefined
     634:	06200800 	.inst	0x06200800 ; undefined
     638:	0006b68e 	.inst	0x0006b68e ; undefined
     63c:	00000600 	.inst	0x00000600 ; undefined
     640:	8f060000 	.inst	0x8f060000 ; undefined
     644:	00000078 	.inst	0x00000078 ; undefined
     648:	00000600 	.inst	0x00000600 ; undefined
     64c:	90060000 	adrp	x0, c000000 <fat32_open+0xbfff6d8>
     650:	000006b6 	.inst	0x000006b6 ; undefined
     654:	00000608 	.inst	0x00000608 ; undefined
     658:	91060000 	add	x0, x0, #0x180
     65c:	00000054 	.inst	0x00000054 ; undefined
     660:	00000610 	.inst	0x00000610 ; undefined
     664:	92060000 	and	x0, x0, #0x400000004000000
     668:	00000054 	.inst	0x00000054 ; undefined
     66c:	00000611 	.inst	0x00000611 ; undefined
     670:	93060000 	.inst	0x93060000 ; undefined
     674:	00000066 	.inst	0x00000066 ; undefined
     678:	00000612 	.inst	0x00000612 ; undefined
     67c:	94060000 	bl	18067c <fat32_open+0x17fd54>
     680:	00000066 	.inst	0x00000066 ; undefined
     684:	00000614 	.inst	0x00000614 ; undefined
     688:	95060000 	bl	4180688 <fat32_open+0x417fd60>
     68c:	00000066 	.inst	0x00000066 ; undefined
     690:	00000616 	.inst	0x00000616 ; undefined
     694:	96060000 	bl	fffffffff8180694 <fat32_open+0xfffffffff817fd6c>
     698:	00000066 	.inst	0x00000066 ; undefined
     69c:	00000618 	.inst	0x00000618 ; undefined
     6a0:	97060000 	bl	fffffffffc1806a0 <fat32_open+0xfffffffffc17fd78>
     6a4:	00000066 	.inst	0x00000066 ; undefined
     6a8:	0000061a 	.inst	0x0000061a ; undefined
     6ac:	98060000 	ldrsw	x0, c6ac <fat32_open+0xbd84>
     6b0:	00000078 	.inst	0x00000078 ; undefined
     6b4:	0807001c 	stxrb	w7, w28, [x0]
     6b8:	00000238 	.inst	0x00000238 ; undefined
     6bc:	00000004 	.inst	0x00000004 ; undefined
     6c0:	35990600 	cbnz	w0, fffffffffff32780 <fat32_open+0xfffffffffff31e58>
     6c4:	14000006 	b	6dc <.debug_info+0x6dc>
     6c8:	00000000 	.inst	0x00000000 ; undefined
     6cc:	00460b01 	.inst	0x00460b01 ; undefined
     6d0:	00150000 	.inst	0x00150000 ; undefined
     6d4:	01000000 	.inst	0x01000000 ; undefined
     6d8:	09ec0137 	.inst	0x09ec0137 ; undefined
	...
     6e4:	028c0000 	.inst	0x028c0000 ; undefined
     6e8:	00000000 	.inst	0x00000000 ; undefined
     6ec:	9c010000 	ldr	q0, 26ec <fat32_open+0x1dc4>
     6f0:	000009ec 	.inst	0x000009ec ; undefined
     6f4:	00000016 	.inst	0x00000016 ; undefined
     6f8:	01370100 	.inst	0x01370100 ; undefined
     6fc:	000006b6 	.inst	0x000006b6 ; undefined
     700:	00000000 	.inst	0x00000000 ; undefined
     704:	00000016 	.inst	0x00000016 ; undefined
     708:	01370100 	.inst	0x01370100 ; undefined
     70c:	000009f2 	.inst	0x000009f2 ; undefined
     710:	00000000 	.inst	0x00000000 ; undefined
     714:	01007017 	.inst	0x01007017 ; undefined
     718:	01440139 	.inst	0x01440139 ; undefined
     71c:	00000000 	.inst	0x00000000 ; undefined
     720:	00180000 	.inst	0x00180000 ; undefined
     724:	01000000 	.inst	0x01000000 ; undefined
     728:	01440139 	.inst	0x01440139 ; undefined
     72c:	00000000 	.inst	0x00000000 ; undefined
     730:	00190000 	.inst	0x00190000 ; undefined
     734:	01000000 	.inst	0x01000000 ; undefined
     738:	09f8013a 	.inst	0x09f8013a ; undefined
     73c:	91020000 	add	x0, x0, #0x80
     740:	00001878 	.inst	0x00001878 ; undefined
     744:	3b010000 	.inst	0x3b010000 ; undefined
     748:	0009f801 	.inst	0x0009f801 ; undefined
     74c:	00000000 	.inst	0x00000000 ; undefined
     750:	00001900 	.inst	0x00001900 ; undefined
     754:	3c010000 	stur	b0, [x0, #16]
     758:	00062a01 	.inst	0x00062a01 ; undefined
     75c:	58910200 	ldr	x0, fffffffffff2279c <fat32_open+0xfffffffffff21e74>
     760:	00000018 	.inst	0x00000018 ; undefined
     764:	013d0100 	.inst	0x013d0100 ; undefined
     768:	00000095 	.inst	0x00000095 ; undefined
     76c:	00000000 	.inst	0x00000000 ; undefined
     770:	00000018 	.inst	0x00000018 ; undefined
     774:	013e0100 	.inst	0x013e0100 ; undefined
     778:	000009fe 	.inst	0x000009fe ; undefined
     77c:	00000000 	.inst	0x00000000 ; undefined
     780:	00000018 	.inst	0x00000018 ; undefined
     784:	013f0100 	.inst	0x013f0100 ; undefined
     788:	000009ec 	.inst	0x000009ec ; undefined
     78c:	00000000 	.inst	0x00000000 ; undefined
     790:	0000001a 	.inst	0x0000001a ; undefined
     794:	000a1500 	.inst	0x000a1500 ; undefined
     798:	00030900 	.inst	0x00030900 ; undefined
     79c:	00000000 	.inst	0x00000000 ; undefined
     7a0:	1b000000 	madd	w0, w0, w0, w0
     7a4:	00000000 	.inst	0x00000000 ; undefined
     7a8:	00018901 	.inst	0x00018901 ; undefined
     7ac:	00000000 	.inst	0x00000000 ; undefined
     7b0:	1c000000 	ldr	s0, 7b0 <.debug_info+0x7b0>
	...
     7bc:	000015bc 	.inst	0x000015bc ; undefined
     7c0:	000007d7 	.inst	0x000007d7 ; undefined
     7c4:	0350011d 	.inst	0x0350011d ; undefined
     7c8:	1d01988f 	.inst	0x1d01988f ; undefined
     7cc:	30015101 	adr	x1, 31ed <fat32_open+0x28c5>
     7d0:	0252011d 	.inst	0x0252011d ; undefined
     7d4:	1c002008 	ldr	s8, bd4 <.debug_info+0xbd4>
	...
     7e0:	000015c7 	.inst	0x000015c7 ; undefined
     7e4:	000007ef 	.inst	0x000007ef ; undefined
     7e8:	0250011d 	.inst	0x0250011d ; undefined
     7ec:	1e000083 	.inst	0x1e000083 ; undefined
	...
     7f8:	000015d2 	.inst	0x000015d2 ; undefined
     7fc:	0000001c 	.inst	0x0000001c ; undefined
     800:	00000000 	.inst	0x00000000 ; undefined
     804:	0015dd00 	.inst	0x0015dd00 ; undefined
     808:	00081a00 	.inst	0x00081a00 ; undefined
     80c:	50011d00 	adr	x0, 2bae <fat32_open+0x2286>
     810:	1d008802 	.inst	0x1d008802 ; undefined
     814:	83025101 	.inst	0x83025101 ; undefined
     818:	001c0000 	.inst	0x001c0000 ; undefined
     81c:	00000000 	.inst	0x00000000 ; undefined
     820:	e8000000 	.inst	0xe8000000 ; undefined
     824:	3f000015 	.inst	0x3f000015 ; undefined
     828:	1d000008 	.inst	0x1d000008 ; undefined
     82c:	88025001 	stxr	w2, w1, [x0]
     830:	51011d00 	sub	w0, w8, #0x47
     834:	00000309 	.inst	0x00000309 ; undefined
     838:	00000000 	.inst	0x00000000 ; undefined
     83c:	1c000000 	ldr	s0, 83c <.debug_info+0x83c>
	...
     848:	000015f3 	.inst	0x000015f3 ; undefined
     84c:	0000087f 	.inst	0x0000087f ; undefined
     850:	0950011d 	.inst	0x0950011d ; undefined
     854:	00000003 	.inst	0x00000003 ; undefined
     858:	00000000 	.inst	0x00000000 ; undefined
     85c:	51011d00 	sub	w0, w8, #0x47
     860:	01440a03 	.inst	0x01440a03 ; undefined
     864:	0952011d 	.inst	0x0952011d ; undefined
     868:	00000003 	.inst	0x00000003 ; undefined
     86c:	00000000 	.inst	0x00000000 ; undefined
     870:	53011d00 	ubfx	w0, w8, #1, #7
     874:	00000309 	.inst	0x00000309 ; undefined
     878:	00000000 	.inst	0x00000000 ; undefined
     87c:	1c000000 	ldr	s0, 87c <.debug_info+0x87c>
	...
     888:	000015f3 	.inst	0x000015f3 ; undefined
     88c:	000008bf 	.inst	0x000008bf ; undefined
     890:	0950011d 	.inst	0x0950011d ; undefined
     894:	00000003 	.inst	0x00000003 ; undefined
     898:	00000000 	.inst	0x00000000 ; undefined
     89c:	51011d00 	sub	w0, w8, #0x47
     8a0:	014a0a03 	.inst	0x014a0a03 ; undefined
     8a4:	0952011d 	.inst	0x0952011d ; undefined
     8a8:	00000003 	.inst	0x00000003 ; undefined
     8ac:	00000000 	.inst	0x00000000 ; undefined
     8b0:	53011d00 	ubfx	w0, w8, #1, #7
     8b4:	00000309 	.inst	0x00000309 ; undefined
     8b8:	00000000 	.inst	0x00000000 ; undefined
     8bc:	1c000000 	ldr	s0, 8bc <.debug_info+0x8bc>
	...
     8c8:	00000d71 	.inst	0x00000d71 ; undefined
     8cc:	000008dd 	.inst	0x000008dd ; undefined
     8d0:	0250011d 	.inst	0x0250011d ; undefined
     8d4:	011d0086 	.inst	0x011d0086 ; undefined
     8d8:	00870252 	.inst	0x00870252 ; undefined
     8dc:	00001c00 	.inst	0x00001c00 ; undefined
     8e0:	00000000 	.inst	0x00000000 ; undefined
     8e4:	15fe0000 	b	7f808e4 <fat32_open+0x7f7ffbc>
     8e8:	09020000 	.inst	0x09020000 ; undefined
     8ec:	011d0000 	.inst	0x011d0000 ; undefined
     8f0:	00850250 	.inst	0x00850250 ; undefined
     8f4:	0951011d 	.inst	0x0951011d ; undefined
     8f8:	00000003 	.inst	0x00000003 ; undefined
     8fc:	00000000 	.inst	0x00000000 ; undefined
     900:	001c0000 	.inst	0x001c0000 ; undefined
     904:	00000000 	.inst	0x00000000 ; undefined
     908:	fe000000 	.inst	0xfe000000 ; undefined
     90c:	2d000015 	stp	s21, s0, [x0]
     910:	1d000009 	.inst	0x1d000009 ; undefined
     914:	85025001 	ld1w	{z1.s}, p4/z, [x0, z2.s, uxtw]
     918:	51011d00 	sub	w0, w8, #0x47
     91c:	00000309 	.inst	0x00000309 ; undefined
     920:	00000000 	.inst	0x00000000 ; undefined
     924:	011d0000 	.inst	0x011d0000 ; undefined
     928:	00830252 	.inst	0x00830252 ; undefined
     92c:	00001c00 	.inst	0x00001c00 ; undefined
     930:	00000000 	.inst	0x00000000 ; undefined
     934:	0bf30000 	.inst	0x0bf30000 ; undefined
     938:	094b0000 	.inst	0x094b0000 ; undefined
     93c:	011d0000 	.inst	0x011d0000 ; undefined
     940:	00830250 	.inst	0x00830250 ; undefined
     944:	0252011d 	.inst	0x0252011d ; undefined
     948:	1c000084 	ldr	s4, 958 <.debug_info+0x958>
	...
     954:	000015e8 	.inst	0x000015e8 ; undefined
     958:	0000096f 	.inst	0x0000096f ; undefined
     95c:	0150011d 	.inst	0x0150011d ; undefined
     960:	51011d30 	sub	w16, w9, #0x47
     964:	00000309 	.inst	0x00000309 ; undefined
     968:	00000000 	.inst	0x00000000 ; undefined
     96c:	1e000000 	.inst	0x1e000000 ; undefined
	...
     978:	00001609 	.inst	0x00001609 ; undefined
     97c:	0000001c 	.inst	0x0000001c ; undefined
     980:	00000000 	.inst	0x00000000 ; undefined
     984:	000d7100 	.inst	0x000d7100 ; undefined
     988:	00099a00 	.inst	0x00099a00 ; undefined
     98c:	50011d00 	adr	x0, 2d2e <fat32_open+0x2406>
     990:	1d008602 	.inst	0x1d008602 ; undefined
     994:	87025201 	.inst	0x87025201 ; undefined
     998:	001c0000 	.inst	0x001c0000 ; undefined
     99c:	00000000 	.inst	0x00000000 ; undefined
     9a0:	09000000 	.inst	0x09000000 ; undefined
     9a4:	b2000016 	orr	x22, x0, #0x100000001
     9a8:	1d000009 	.inst	0x1d000009 ; undefined
     9ac:	88025001 	stxr	w2, w1, [x0]
     9b0:	001e0000 	.inst	0x001e0000 ; undefined
     9b4:	00000000 	.inst	0x00000000 ; undefined
     9b8:	09000000 	.inst	0x09000000 ; undefined
     9bc:	1c000016 	ldr	s22, 9bc <.debug_info+0x9bc>
	...
     9c8:	000015d2 	.inst	0x000015d2 ; undefined
     9cc:	000009d7 	.inst	0x000009d7 ; undefined
     9d0:	0250011d 	.inst	0x0250011d ; undefined
     9d4:	1f002008 	fmadd	s8, s0, s0, s8
	...
     9e0:	000015d2 	.inst	0x000015d2 ; undefined
     9e4:	0250011d 	.inst	0x0250011d ; undefined
     9e8:	00002008 	.inst	0x00002008 ; undefined
     9ec:	06bc0807 	.inst	0x06bc0807 ; undefined
     9f0:	08070000 	stxrb	w7, w0, [x0]
     9f4:	00000151 	.inst	0x00000151 ; undefined
     9f8:	062a0807 	.inst	0x062a0807 ; undefined
     9fc:	01020000 	.inst	0x01020000 ; undefined
     a00:	00000002 	.inst	0x00000002 ; undefined
     a04:	01510d00 	.inst	0x01510d00 ; undefined
     a08:	0a150000 	and	w0, w0, w21
     a0c:	8e0e0000 	.inst	0x8e0e0000 ; undefined
     a10:	0a000000 	and	w0, w0, w0
     a14:	0a050c00 	and	w0, w0, w5, lsl #3
     a18:	00200000 	.inst	0x00200000 ; NYI
     a1c:	01000000 	.inst	0x01000000 ; undefined
     a20:	000095fd 	.inst	0x000095fd ; undefined
	...
     a2c:	0001f400 	.inst	0x0001f400 ; undefined
     a30:	00000000 	.inst	0x00000000 ; undefined
     a34:	e39c0100 	.inst	0xe39c0100 ; undefined
     a38:	2100000b 	.inst	0x2100000b ; undefined
     a3c:	00000000 	.inst	0x00000000 ; undefined
     a40:	09f8fd01 	.inst	0x09f8fd01 ; undefined
     a44:	00000000 	.inst	0x00000000 ; undefined
     a48:	00210000 	.inst	0x00210000 ; NYI
     a4c:	01000000 	.inst	0x01000000 ; undefined
     a50:	000144fd 	.inst	0x000144fd ; undefined
     a54:	00000000 	.inst	0x00000000 ; undefined
     a58:	00002200 	.inst	0x00002200 ; undefined
     a5c:	ff010000 	.inst	0xff010000 ; undefined
     a60:	00000095 	.inst	0x00000095 ; undefined
     a64:	00000000 	.inst	0x00000000 ; undefined
     a68:	00000018 	.inst	0x00000018 ; undefined
     a6c:	01000100 	.inst	0x01000100 ; undefined
     a70:	00000046 	.inst	0x00000046 ; undefined
     a74:	00000000 	.inst	0x00000000 ; undefined
     a78:	00000018 	.inst	0x00000018 ; undefined
     a7c:	01000100 	.inst	0x01000100 ; undefined
     a80:	00000046 	.inst	0x00000046 ; undefined
     a84:	00000000 	.inst	0x00000000 ; undefined
     a88:	00000019 	.inst	0x00000019 ; undefined
     a8c:	01010100 	.inst	0x01010100 ; undefined
     a90:	00000be3 	.inst	0x00000be3 ; undefined
     a94:	23789102 	.inst	0x23789102 ; undefined
	...
     aa0:	00000090 	.inst	0x00000090 ; undefined
     aa4:	00000000 	.inst	0x00000000 ; undefined
     aa8:	00000b7a 	.inst	0x00000b7a ; undefined
     aac:	01007017 	.inst	0x01007017 ; undefined
     ab0:	01440105 	.inst	0x01440105 ; undefined
     ab4:	00000000 	.inst	0x00000000 ; undefined
     ab8:	001c0000 	.inst	0x001c0000 ; undefined
     abc:	00000000 	.inst	0x00000000 ; undefined
     ac0:	14000000 	b	ac0 <.debug_info+0xac0>
     ac4:	de000016 	.inst	0xde000016 ; undefined
     ac8:	1d00000a 	.inst	0x1d00000a ; undefined
     acc:	85025001 	ld1w	{z1.s}, p4/z, [x0, z2.s, uxtw]
     ad0:	51011d00 	sub	w0, w8, #0x47
     ad4:	1d008402 	.inst	0x1d008402 ; undefined
     ad8:	8a025201 	and	x1, x16, x2, lsl #20
     adc:	001c0000 	.inst	0x001c0000 ; undefined
     ae0:	00000000 	.inst	0x00000000 ; undefined
     ae4:	1f000000 	fmadd	s0, s0, s0, s0
     ae8:	fc000016 	stur	d22, [x0]
     aec:	1d00000a 	.inst	0x1d00000a ; undefined
     af0:	83025001 	.inst	0x83025001 ; undefined
     af4:	52011d00 	eor	w0, w8, #0x8000007f
     af8:	00008902 	.inst	0x00008902 ; undefined
     afc:	0000001c 	.inst	0x0000001c ; undefined
     b00:	00000000 	.inst	0x00000000 ; undefined
     b04:	00161400 	.inst	0x00161400 ; undefined
     b08:	000b2000 	.inst	0x000b2000 ; undefined
     b0c:	50011d00 	adr	x0, 2eae <fat32_open+0x2586>
     b10:	1d008502 	.inst	0x1d008502 ; undefined
     b14:	84025101 	ld1b	{z1.s}, p4/z, [x8, z2.s, uxtw]
     b18:	52011d0d 	eor	w13, w8, #0x8000007f
     b1c:	00008802 	.inst	0x00008802 ; undefined
     b20:	0000001c 	.inst	0x0000001c ; undefined
     b24:	00000000 	.inst	0x00000000 ; undefined
     b28:	00161f00 	.inst	0x00161f00 ; undefined
     b2c:	000b3d00 	.inst	0x000b3d00 ; undefined
     b30:	50011d00 	adr	x0, 2ed2 <fat32_open+0x25aa>
     b34:	1d058302 	.inst	0x1d058302 ; undefined
     b38:	36015201 	tbz	w1, #0, 3578 <fat32_open+0x2c50>
     b3c:	00001c00 	.inst	0x00001c00 ; undefined
     b40:	00000000 	.inst	0x00000000 ; undefined
     b44:	16140000 	b	fffffffff8500b44 <fat32_open+0xfffffffff850021c>
     b48:	0b600000 	.inst	0x0b600000 ; undefined
     b4c:	011d0000 	.inst	0x011d0000 ; undefined
     b50:	00850250 	.inst	0x00850250 ; undefined
     b54:	0251011d 	.inst	0x0251011d ; undefined
     b58:	011d1b84 	.inst	0x011d1b84 ; undefined
     b5c:	00340152 	.inst	0x00340152 ; NYI
     b60:	0000001f 	.inst	0x0000001f ; undefined
     b64:	00000000 	.inst	0x00000000 ; undefined
     b68:	00161f00 	.inst	0x00161f00 ; undefined
     b6c:	50011d00 	adr	x0, 2f0e <fat32_open+0x25e6>
     b70:	1d0b8302 	.inst	0x1d0b8302 ; undefined
     b74:	32015201 	orr	w1, w16, #0x800fffff
     b78:	001c0000 	.inst	0x001c0000 ; undefined
     b7c:	00000000 	.inst	0x00000000 ; undefined
     b80:	1f000000 	fmadd	s0, s0, s0, s0
     b84:	9e000016 	.inst	0x9e000016 ; undefined
     b88:	1d00000b 	.inst	0x1d00000b ; undefined
     b8c:	87025001 	.inst	0x87025001 ; undefined
     b90:	51011d00 	sub	w0, w8, #0x47
     b94:	1d008402 	.inst	0x1d008402 ; undefined
     b98:	85025201 	ld1w	{z1.s}, p4/z, [x16, z2.s, uxtw]
     b9c:	001c0000 	.inst	0x001c0000 ; undefined
     ba0:	00000000 	.inst	0x00000000 ; undefined
     ba4:	14000000 	b	ba4 <.debug_info+0xba4>
     ba8:	c2000016 	.inst	0xc2000016 ; undefined
     bac:	1d00000b 	.inst	0x1d00000b ; undefined
     bb0:	8f035001 	.inst	0x8f035001 ; undefined
     bb4:	011d01b8 	.inst	0x011d01b8 ; undefined
     bb8:	08840251 	stllrb	w17, [x18]
     bbc:	0152011d 	.inst	0x0152011d ; undefined
     bc0:	001f0033 	.inst	0x001f0033 ; undefined
     bc4:	00000000 	.inst	0x00000000 ; undefined
     bc8:	1f000000 	fmadd	s0, s0, s0, s0
     bcc:	1d000016 	.inst	0x1d000016 ; undefined
     bd0:	85025001 	ld1w	{z1.s}, p4/z, [x0, z2.s, uxtw]
     bd4:	52011d00 	eor	w0, w8, #0x8000007f
     bd8:	08008608 	stlxrb	w0, w8, [x16]
     bdc:	20082420 	.inst	0x20082420 ; undefined
     be0:	0d000026 	st1	{v6.b}[0], [x1]
     be4:	0000014a 	.inst	0x0000014a ; undefined
     be8:	00000bf3 	.inst	0x00000bf3 ; undefined
     bec:	00008e0e 	.inst	0x00008e0e ; undefined
     bf0:	20000600 	.inst	0x20000600 ; undefined
     bf4:	00000000 	.inst	0x00000000 ; undefined
     bf8:	09f8df01 	.inst	0x09f8df01 ; undefined
	...
     c04:	011c0000 	.inst	0x011c0000 ; undefined
     c08:	00000000 	.inst	0x00000000 ; undefined
     c0c:	9c010000 	ldr	q0, 2c0c <fat32_open+0x22e4>
     c10:	00000d4b 	.inst	0x00000d4b ; undefined
     c14:	00000021 	.inst	0x00000021 ; undefined
     c18:	f2df0100 	movk	x0, #0xf808, lsl #32
     c1c:	00000009 	.inst	0x00000009 ; undefined
     c20:	21000000 	.inst	0x21000000 ; undefined
     c24:	00000000 	.inst	0x00000000 ; undefined
     c28:	09f8df01 	.inst	0x09f8df01 ; undefined
     c2c:	00000000 	.inst	0x00000000 ; undefined
     c30:	00210000 	.inst	0x00210000 ; NYI
     c34:	01000000 	.inst	0x01000000 ; undefined
     c38:	000095df 	.inst	0x000095df ; undefined
     c3c:	00000000 	.inst	0x00000000 ; undefined
     c40:	00632400 	.inst	0x00632400 ; undefined
     c44:	0095e101 	.inst	0x0095e101 ; undefined
     c48:	00000000 	.inst	0x00000000 ; undefined
     c4c:	00220000 	.inst	0x00220000 ; NYI
     c50:	01000000 	.inst	0x01000000 ; undefined
     c54:	000095e1 	.inst	0x000095e1 ; undefined
     c58:	00000000 	.inst	0x00000000 ; undefined
     c5c:	00002500 	.inst	0x00002500 ; undefined
     c60:	e2010000 	.inst	0xe2010000 ; undefined
     c64:	00000d4b 	.inst	0x00000d4b ; undefined
     c68:	7c809103 	.inst	0x7c809103 ; undefined
     c6c:	0000001a 	.inst	0x0000001a ; undefined
     c70:	000d6c00 	.inst	0x000d6c00 ; undefined
     c74:	00030900 	.inst	0x00030900 ; undefined
     c78:	00000000 	.inst	0x00000000 ; undefined
     c7c:	1c000000 	ldr	s0, c7c <.debug_info+0xc7c>
	...
     c88:	000015fe 	.inst	0x000015fe ; undefined
     c8c:	00000caa 	.inst	0x00000caa ; undefined
     c90:	0250011d 	.inst	0x0250011d ; undefined
     c94:	011d0089 	.inst	0x011d0089 ; undefined
     c98:	00030951 	.inst	0x00030951 ; undefined
     c9c:	00000000 	.inst	0x00000000 ; undefined
     ca0:	1d000000 	.inst	0x1d000000 ; undefined
     ca4:	85025201 	ld1w	{z1.s}, p4/z, [x16, z2.s, uxtw]
     ca8:	001c0000 	.inst	0x001c0000 ; undefined
     cac:	00000000 	.inst	0x00000000 ; undefined
     cb0:	2a000000 	orr	w0, w0, w0
     cb4:	c8000016 	stxr	w0, x22, [x0]
     cb8:	1d00000c 	.inst	0x1d00000c ; undefined
     cbc:	88025001 	stxr	w2, w1, [x0]
     cc0:	51011d00 	sub	w0, w8, #0x47
     cc4:	00008502 	.inst	0x00008502 ; undefined
     cc8:	0000001c 	.inst	0x0000001c ; undefined
     ccc:	00000000 	.inst	0x00000000 ; undefined
     cd0:	000a1a00 	.inst	0x000a1a00 ; undefined
     cd4:	000ceb00 	.inst	0x000ceb00 ; undefined
     cd8:	50011d00 	adr	x0, 307a <fat32_open+0x2752>
     cdc:	35008407 	cbnz	w7, 1d5c <fat32_open+0x1434>
     ce0:	22008724 	.inst	0x22008724 ; undefined
     ce4:	0251011d 	.inst	0x0251011d ; undefined
     ce8:	1c000085 	ldr	s5, cf8 <.debug_info+0xcf8>
	...
     cf4:	000015fe 	.inst	0x000015fe ; undefined
     cf8:	00000d1c 	.inst	0x00000d1c ; undefined
     cfc:	0250011d 	.inst	0x0250011d ; undefined
     d00:	011d0089 	.inst	0x011d0089 ; undefined
     d04:	00030951 	.inst	0x00030951 ; undefined
     d08:	00000000 	.inst	0x00000000 ; undefined
     d0c:	1d000000 	.inst	0x1d000000 ; undefined
     d10:	88025201 	stxr	w2, w1, [x16]
     d14:	53011d00 	ubfx	w0, w8, #1, #7
     d18:	00008302 	.inst	0x00008302 ; undefined
     d1c:	0000001f 	.inst	0x0000001f ; undefined
     d20:	00000000 	.inst	0x00000000 ; undefined
     d24:	0015fe00 	.inst	0x0015fe00 ; undefined
     d28:	50011d00 	adr	x0, 30ca <fat32_open+0x27a2>
     d2c:	00000309 	.inst	0x00000309 ; undefined
     d30:	00000000 	.inst	0x00000000 ; undefined
     d34:	011d0000 	.inst	0x011d0000 ; undefined
     d38:	00030951 	.inst	0x00030951 ; undefined
     d3c:	00000000 	.inst	0x00000000 ; undefined
     d40:	1d000000 	.inst	0x1d000000 ; undefined
     d44:	88025201 	stxr	w2, w1, [x16]
     d48:	0d000000 	st1	{v0.b}[0], [x0]
     d4c:	0000014a 	.inst	0x0000014a ; undefined
     d50:	00000d5c 	.inst	0x00000d5c ; undefined
     d54:	00008e11 	.inst	0x00008e11 ; undefined
     d58:	0001fe00 	.inst	0x0001fe00 ; undefined
     d5c:	0001510d 	.inst	0x0001510d ; undefined
     d60:	000d6c00 	.inst	0x000d6c00 ; undefined
     d64:	008e0e00 	.inst	0x008e0e00 ; undefined
     d68:	00100000 	.inst	0x00100000 ; undefined
     d6c:	000d5c0c 	.inst	0x000d5c0c ; undefined
     d70:	00002000 	.inst	0x00002000 ; undefined
     d74:	85010000 	.inst	0x85010000 ; undefined
     d78:	00000095 	.inst	0x00000095 ; undefined
	...
     d84:	0000020c 	.inst	0x0000020c ; undefined
     d88:	00000000 	.inst	0x00000000 ; undefined
     d8c:	0ff99c01 	.inst	0x0ff99c01 ; undefined
     d90:	00210000 	.inst	0x00210000 ; NYI
     d94:	01000000 	.inst	0x01000000 ; undefined
     d98:	0006b685 	.inst	0x0006b685 ; undefined
     d9c:	00000000 	.inst	0x00000000 ; undefined
     da0:	00002100 	.inst	0x00002100 ; undefined
     da4:	85010000 	.inst	0x85010000 ; undefined
     da8:	00000095 	.inst	0x00000095 ; undefined
     dac:	00000000 	.inst	0x00000000 ; undefined
     db0:	00000021 	.inst	0x00000021 ; undefined
     db4:	f9850100 	prfm	pldl1keep, [x8, #2560]
     db8:	0000000f 	.inst	0x0000000f ; undefined
     dbc:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
     dc0:	00646370 	.inst	0x00646370 ; undefined
     dc4:	0fff8701 	.inst	0x0fff8701 ; undefined
     dc8:	00000000 	.inst	0x00000000 ; undefined
     dcc:	00220000 	.inst	0x00220000 ; NYI
     dd0:	01000000 	.inst	0x01000000 ; undefined
     dd4:	00009588 	.inst	0x00009588 ; undefined
     dd8:	00000000 	.inst	0x00000000 ; undefined
     ddc:	00002200 	.inst	0x00002200 ; undefined
     de0:	89010000 	.inst	0x89010000 ; undefined
     de4:	00000095 	.inst	0x00000095 ; undefined
     de8:	00000000 	.inst	0x00000000 ; undefined
     dec:	00000022 	.inst	0x00000022 ; undefined
     df0:	788a0100 	ldursh	x0, [x8, #160]
     df4:	00000000 	.inst	0x00000000 ; undefined
     df8:	22000000 	.inst	0x22000000 ; undefined
     dfc:	00000000 	.inst	0x00000000 ; undefined
     e00:	00548b01 	.inst	0x00548b01 ; undefined
     e04:	00000000 	.inst	0x00000000 ; undefined
     e08:	00220000 	.inst	0x00220000 ; NYI
     e0c:	01000000 	.inst	0x01000000 ; undefined
     e10:	0000788c 	.inst	0x0000788c ; undefined
     e14:	00000000 	.inst	0x00000000 ; undefined
     e18:	00002200 	.inst	0x00002200 ; undefined
     e1c:	8d010000 	.inst	0x8d010000 ; undefined
     e20:	00000078 	.inst	0x00000078 ; undefined
     e24:	00000000 	.inst	0x00000000 ; undefined
     e28:	00000022 	.inst	0x00000022 ; undefined
     e2c:	788e0100 	ldursh	x0, [x8, #224]
     e30:	00000000 	.inst	0x00000000 ; undefined
     e34:	22000000 	.inst	0x22000000 ; undefined
     e38:	00000000 	.inst	0x00000000 ; undefined
     e3c:	10058f01 	adr	x1, c01c <fat32_open+0xb6f4>
     e40:	00000000 	.inst	0x00000000 ; undefined
     e44:	001a0000 	.inst	0x001a0000 ; undefined
     e48:	6c000000 	stnp	d0, d0, [x0]
     e4c:	0900000d 	.inst	0x0900000d ; undefined
     e50:	00000003 	.inst	0x00000003 ; undefined
     e54:	00000000 	.inst	0x00000000 ; undefined
     e58:	00002600 	.inst	0x00002600 ; undefined
     e5c:	d9010000 	.inst	0xd9010000 ; undefined
	...
     e68:	0000001c 	.inst	0x0000001c ; undefined
     e6c:	00000000 	.inst	0x00000000 ; undefined
     e70:	0015d200 	.inst	0x0015d200 ; undefined
     e74:	000e8400 	.inst	0x000e8400 ; undefined
     e78:	50011d00 	adr	x0, 321a <fat32_open+0x28f2>
     e7c:	0a008a06 	.inst	0x0a008a06 ; undefined
     e80:	001affff 	.inst	0x001affff ; undefined
     e84:	0000001c 	.inst	0x0000001c ; undefined
     e88:	00000000 	.inst	0x00000000 ; undefined
     e8c:	00163500 	.inst	0x00163500 ; undefined
     e90:	000ea800 	.inst	0x000ea800 ; undefined
     e94:	50011d00 	adr	x0, 3236 <fat32_open+0x290e>
     e98:	1d008402 	.inst	0x1d008402 ; undefined
     e9c:	83025101 	.inst	0x83025101 ; undefined
     ea0:	52011d00 	eor	w0, w8, #0x8000007f
     ea4:	00008602 	.inst	0x00008602 ; undefined
     ea8:	0000001c 	.inst	0x0000001c ; undefined
     eac:	00000000 	.inst	0x00000000 ; undefined
     eb0:	00160900 	.inst	0x00160900 ; undefined
     eb4:	000ec000 	.inst	0x000ec000 ; undefined
     eb8:	50011d00 	adr	x0, 325a <fat32_open+0x2932>
     ebc:	00008602 	.inst	0x00008602 ; undefined
     ec0:	0000001c 	.inst	0x0000001c ; undefined
     ec4:	00000000 	.inst	0x00000000 ; undefined
     ec8:	0015f300 	.inst	0x0015f300 ; undefined
     ecc:	000f0500 	.inst	0x000f0500 ; undefined
     ed0:	50011d00 	adr	x0, 3272 <fat32_open+0x294a>
     ed4:	00000309 	.inst	0x00000309 ; undefined
     ed8:	00000000 	.inst	0x00000000 ; undefined
     edc:	011d0000 	.inst	0x011d0000 ; undefined
     ee0:	9c080251 	ldr	q17, 10f28 <fat32_open+0x10600>
     ee4:	0952011d 	.inst	0x0952011d ; undefined
     ee8:	00000003 	.inst	0x00000003 ; undefined
     eec:	00000000 	.inst	0x00000000 ; undefined
     ef0:	53011d00 	ubfx	w0, w8, #1, #7
     ef4:	00000309 	.inst	0x00000309 ; undefined
     ef8:	00000000 	.inst	0x00000000 ; undefined
     efc:	011d0000 	.inst	0x011d0000 ; undefined
     f00:	00830254 	.inst	0x00830254 ; undefined
     f04:	00001c00 	.inst	0x00001c00 ; undefined
     f08:	00000000 	.inst	0x00000000 ; undefined
     f0c:	15d20000 	b	7480f0c <fat32_open+0x74805e4>
     f10:	0f1f0000 	.inst	0x0f1f0000 ; undefined
     f14:	011d0000 	.inst	0x011d0000 ; undefined
     f18:	808f0450 	.inst	0x808f0450 ; undefined
     f1c:	1c000602 	ldr	s2, fdc <.debug_info+0xfdc>
	...
     f28:	00001640 	.inst	0x00001640 ; undefined
     f2c:	00000f3c 	.inst	0x00000f3c ; undefined
     f30:	0751011d 	.inst	0x0751011d ; undefined
     f34:	0602808f 	.inst	0x0602808f ; undefined
     f38:	00220085 	.inst	0x00220085 ; NYI
     f3c:	0000001c 	.inst	0x0000001c ; undefined
     f40:	00000000 	.inst	0x00000000 ; undefined
     f44:	00100b00 	.inst	0x00100b00 ; undefined
     f48:	000f6300 	.inst	0x000f6300 ; undefined
     f4c:	50011d00 	adr	x0, 32ee <fat32_open+0x29c6>
     f50:	1d008402 	.inst	0x1d008402 ; undefined
     f54:	8f0b5101 	.inst	0x8f0b5101 ; undefined
     f58:	0494028c 	sdiv	z12.s, p0/m, z12.s, z20.s
     f5c:	ffffff0c 	.inst	0xffffff0c ; undefined
     f60:	1c001aff 	ldr	s31, 12bc <.debug_info+0x12bc>
	...
     f6c:	00001635 	.inst	0x00001635 ; undefined
     f70:	00000f89 	.inst	0x00000f89 ; undefined
     f74:	0450011d 	mul	z29.h, p0/m, z29.h, z8.h
     f78:	0601f88f 	.inst	0x0601f88f ; undefined
     f7c:	0251011d 	.inst	0x0251011d ; undefined
     f80:	011d008c 	.inst	0x011d008c ; undefined
     f84:	00860252 	.inst	0x00860252 ; undefined
     f88:	00001c00 	.inst	0x00001c00 ; undefined
     f8c:	00000000 	.inst	0x00000000 ; undefined
     f90:	15f30000 	b	7cc0f90 <fat32_open+0x7cc0668>
     f94:	0fc90000 	.inst	0x0fc90000 ; undefined
     f98:	011d0000 	.inst	0x011d0000 ; undefined
     f9c:	00030950 	.inst	0x00030950 ; undefined
     fa0:	00000000 	.inst	0x00000000 ; undefined
     fa4:	1d000000 	.inst	0x1d000000 ; undefined
     fa8:	08025101 	stxrb	w2, w1, [x8]
     fac:	52011dc0 	eor	w0, w14, #0x8000007f
     fb0:	01e08f04 	.inst	0x01e08f04 ; undefined
     fb4:	53011d06 	ubfx	w6, w8, #1, #7
     fb8:	00000309 	.inst	0x00000309 ; undefined
     fbc:	00000000 	.inst	0x00000000 ; undefined
     fc0:	011d0000 	.inst	0x011d0000 ; undefined
     fc4:	008c0254 	.inst	0x008c0254 ; undefined
     fc8:	00001f00 	.inst	0x00001f00 ; undefined
     fcc:	00000000 	.inst	0x00000000 ; undefined
     fd0:	15fe0000 	b	7f80fd0 <fat32_open+0x7f806a8>
     fd4:	011d0000 	.inst	0x011d0000 ; undefined
     fd8:	e08f0450 	.inst	0xe08f0450 ; undefined
     fdc:	011d0601 	.inst	0x011d0601 ; undefined
     fe0:	00030951 	.inst	0x00030951 ; undefined
     fe4:	00000000 	.inst	0x00000000 ; undefined
     fe8:	1d000000 	.inst	0x1d000000 ; undefined
     fec:	85025201 	ld1w	{z1.s}, p4/z, [x16, z2.s, uxtw]
     ff0:	53011d00 	ubfx	w0, w8, #1, #7
     ff4:	00008802 	.inst	0x00008802 ; undefined
     ff8:	44080700 	.inst	0x44080700 ; undefined
     ffc:	07000001 	.inst	0x07000001 ; undefined
    1000:	0001d008 	.inst	0x0001d008 ; undefined
    1004:	78080700 	strh	w0, [x24], #128
    1008:	20000000 	.inst	0x20000000 ; undefined
    100c:	00000000 	.inst	0x00000000 ; undefined
    1010:	00957001 	.inst	0x00957001 ; undefined
	...
    101c:	00a80000 	.inst	0x00a80000 ; undefined
    1020:	00000000 	.inst	0x00000000 ; undefined
    1024:	9c010000 	ldr	q0, 3024 <fat32_open+0x26fc>
    1028:	000010bd 	.inst	0x000010bd ; undefined
    102c:	00000021 	.inst	0x00000021 ; undefined
    1030:	b6700100 	tbz	x0, #46, 1050 <.debug_info+0x1050>
    1034:	00000006 	.inst	0x00000006 ; undefined
    1038:	21000000 	.inst	0x21000000 ; undefined
    103c:	00000000 	.inst	0x00000000 ; undefined
    1040:	00957001 	.inst	0x00957001 ; undefined
    1044:	00000000 	.inst	0x00000000 ; undefined
    1048:	00210000 	.inst	0x00210000 ; NYI
    104c:	01000000 	.inst	0x01000000 ; undefined
    1050:	00014470 	.inst	0x00014470 ; undefined
    1054:	00000000 	.inst	0x00000000 ; undefined
    1058:	00002200 	.inst	0x00002200 ; undefined
    105c:	72010000 	ands	w0, w0, #0x80000000
    1060:	00000078 	.inst	0x00000078 ; undefined
    1064:	00000000 	.inst	0x00000000 ; undefined
    1068:	00000022 	.inst	0x00000022 ; undefined
    106c:	78730100 	ldaddlh	w19, w0, [x8]
    1070:	00000000 	.inst	0x00000000 ; undefined
    1074:	22000000 	.inst	0x22000000 ; undefined
    1078:	00000000 	.inst	0x00000000 ; undefined
    107c:	00957401 	.inst	0x00957401 ; undefined
    1080:	00000000 	.inst	0x00000000 ; undefined
    1084:	00270000 	.inst	0x00270000 ; NYI
    1088:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
    108c:	76010069 	.inst	0x76010069 ; undefined
    1090:	00000078 	.inst	0x00000078 ; undefined
    1094:	00000000 	.inst	0x00000000 ; undefined
    1098:	0000001f 	.inst	0x0000001f ; undefined
    109c:	00000000 	.inst	0x00000000 ; undefined
    10a0:	00163500 	.inst	0x00163500 ; undefined
    10a4:	50011d00 	adr	x0, 3446 <fat32_open+0x2b1e>
    10a8:	1d008502 	.inst	0x1d008502 ; undefined
    10ac:	840b5201 	ld1b	{z1.s}, p4/z, [x16, z11.s, uxtw]
    10b0:	ffff0c00 	.inst	0xffff0c00 ; undefined
    10b4:	881affff 	stlxr	w26, wzr, [sp]
    10b8:	00002200 	.inst	0x00002200 ; undefined
    10bc:	00002000 	.inst	0x00002000 ; undefined
    10c0:	34010000 	cbz	w0, 30c0 <fat32_open+0x2798>
    10c4:	000006b6 	.inst	0x000006b6 ; undefined
	...
    10d0:	00000364 	.inst	0x00000364 ; undefined
    10d4:	00000000 	.inst	0x00000000 ; undefined
    10d8:	14e29c01 	b	38a80dc <fat32_open+0x38a77b4>
    10dc:	70280000 	adr	x0, 510df <fat32_open+0x507b7>
    10e0:	01006462 	.inst	0x01006462 ; undefined
    10e4:	0014e234 	.inst	0x0014e234 ; undefined
    10e8:	00000000 	.inst	0x00000000 ; undefined
    10ec:	00002200 	.inst	0x00002200 ; undefined
    10f0:	36010000 	tbz	w0, #0, 30f0 <fat32_open+0x27c8>
    10f4:	000006b6 	.inst	0x000006b6 ; undefined
    10f8:	00000000 	.inst	0x00000000 ; undefined
    10fc:	72626d29 	.inst	0x72626d29 ; undefined
    1100:	c9370100 	.inst	0xc9370100 ; undefined
    1104:	02000002 	.inst	0x02000002 ; undefined
    1108:	00254091 	.inst	0x00254091 ; NYI
    110c:	01000000 	.inst	0x01000000 ; undefined
    1110:	00048c38 	.inst	0x00048c38 ; undefined
    1114:	c0910300 	.inst	0xc0910300 ; undefined
    1118:	6370247b 	.inst	0x6370247b ; undefined
    111c:	39010064 	strb	w4, [x3, #64]
    1120:	00000fff 	.inst	0x00000fff ; undefined
    1124:	00000000 	.inst	0x00000000 ; undefined
    1128:	00000022 	.inst	0x00000022 ; undefined
    112c:	463a0100 	.inst	0x463a0100 ; undefined
    1130:	00000000 	.inst	0x00000000 ; undefined
    1134:	1a000000 	adc	w0, w0, w0
    1138:	00000000 	.inst	0x00000000 ; undefined
    113c:	00000a15 	.inst	0x00000a15 ; undefined
    1140:	00000309 	.inst	0x00000309 ; undefined
    1144:	00000000 	.inst	0x00000000 ; undefined
    1148:	002a0000 	.inst	0x002a0000 ; NYI
    114c:	61000000 	.inst	0x61000000 ; undefined
    1150:	24000011 	cmphi	p1.b, p0/z, z0.b, z0.b
    1154:	46010069 	.inst	0x46010069 ; undefined
    1158:	00000046 	.inst	0x00000046 ; undefined
    115c:	00000000 	.inst	0x00000000 ; undefined
    1160:	00002300 	.inst	0x00002300 ; undefined
    1164:	00000000 	.inst	0x00000000 ; undefined
    1168:	000c0000 	.inst	0x000c0000 ; undefined
    116c:	00000000 	.inst	0x00000000 ; undefined
    1170:	11840000 	.inst	0x11840000 ; undefined
    1174:	69240000 	.inst	0x69240000 ; undefined
    1178:	466a0100 	.inst	0x466a0100 ; undefined
	...
    1184:	0015452b 	.inst	0x0015452b ; undefined
	...
    1194:	c9430100 	.inst	0xc9430100 ; undefined
    1198:	2c000012 	stnp	s18, s0, [x0]
    119c:	0000155c 	.inst	0x0000155c ; undefined
    11a0:	00000000 	.inst	0x00000000 ; undefined
    11a4:	0015512c 	.inst	0x0015512c ; undefined
    11a8:	00000000 	.inst	0x00000000 ; undefined
    11ac:	00002700 	.inst	0x00002700 ; undefined
    11b0:	672d0000 	.inst	0x672d0000 ; undefined
    11b4:	03000015 	.inst	0x03000015 ; undefined
    11b8:	2e77c091 	umull	v17.4s, v4.4h, v23.4h
    11bc:	0000157f 	.inst	0x0000157f ; undefined
	...
    11c8:	00000044 	.inst	0x00000044 ; undefined
    11cc:	00000000 	.inst	0x00000000 ; undefined
    11d0:	0000122b 	.inst	0x0000122b ; undefined
    11d4:	0015802f 	.inst	0x0015802f ; undefined
    11d8:	00000000 	.inst	0x00000000 ; undefined
    11dc:	15892f00 	b	624cddc <fat32_open+0x624c4b4>
    11e0:	00000000 	.inst	0x00000000 ; undefined
    11e4:	001c0000 	.inst	0x001c0000 ; undefined
    11e8:	00000000 	.inst	0x00000000 ; undefined
    11ec:	4b000000 	sub	w0, w0, w0
    11f0:	0a000016 	and	w22, w0, w0
    11f4:	1d000012 	.inst	0x1d000012 ; undefined
    11f8:	83025001 	.inst	0x83025001 ; undefined
    11fc:	51011d00 	sub	w0, w8, #0x47
    1200:	1d008402 	.inst	0x1d008402 ; undefined
    1204:	88025201 	stxr	w2, w1, [x16]
    1208:	001f0000 	.inst	0x001f0000 ; undefined
    120c:	00000000 	.inst	0x00000000 ; undefined
    1210:	4b000000 	sub	w0, w0, w0
    1214:	1d000016 	.inst	0x1d000016 ; undefined
    1218:	83025001 	.inst	0x83025001 ; undefined
    121c:	51011d04 	sub	w4, w8, #0x47
    1220:	1d048402 	.inst	0x1d048402 ; undefined
    1224:	88025201 	stxr	w2, w1, [x16]
    1228:	30000000 	adr	x0, 1229 <.debug_info+0x1229>
	...
    1234:	00001245 	.inst	0x00001245 ; undefined
    1238:	0150011d 	.inst	0x0150011d ; undefined
    123c:	51011d30 	sub	w16, w9, #0x47
    1240:	00f08f03 	.inst	0x00f08f03 ; undefined
    1244:	00001c00 	.inst	0x00001c00 ; undefined
    1248:	00000000 	.inst	0x00000000 ; undefined
    124c:	164b0000 	b	fffffffff92c124c <fat32_open+0xfffffffff92c0924>
    1250:	12690000 	.inst	0x12690000 ; undefined
    1254:	011d0000 	.inst	0x011d0000 ; undefined
    1258:	00830250 	.inst	0x00830250 ; undefined
    125c:	0351011d 	.inst	0x0351011d ; undefined
    1260:	1d04a48f 	.inst	0x1d04a48f ; undefined
    1264:	3a015201 	.inst	0x3a015201 ; undefined
    1268:	00001c00 	.inst	0x00001c00 ; undefined
    126c:	00000000 	.inst	0x00000000 ; undefined
    1270:	164b0000 	b	fffffffff92c1270 <fat32_open+0xfffffffff92c0948>
    1274:	128d0000 	mov	w0, #0xffff97ff            	// #-26625
    1278:	011d0000 	.inst	0x011d0000 ; undefined
    127c:	3c830250 	stur	q16, [x18, #48]
    1280:	0351011d 	.inst	0x0351011d ; undefined
    1284:	1d048086 	.inst	0x1d048086 ; undefined
    1288:	32015201 	orr	w1, w16, #0x800fffff
    128c:	00001f00 	.inst	0x00001f00 ; undefined
    1290:	00000000 	.inst	0x00000000 ; undefined
    1294:	15f30000 	b	7cc1294 <fat32_open+0x7cc096c>
    1298:	011d0000 	.inst	0x011d0000 ; undefined
    129c:	00030950 	.inst	0x00030950 ; undefined
    12a0:	00000000 	.inst	0x00000000 ; undefined
    12a4:	1d000000 	.inst	0x1d000000 ; undefined
    12a8:	42015101 	.inst	0x42015101 ; undefined
    12ac:	0952011d 	.inst	0x0952011d ; undefined
    12b0:	00000003 	.inst	0x00000003 ; undefined
    12b4:	00000000 	.inst	0x00000000 ; undefined
    12b8:	53011d00 	ubfx	w0, w8, #1, #7
    12bc:	00000309 	.inst	0x00000309 ; undefined
	...
    12c8:	14e82b00 	b	3a0ac00 <fat32_open+0x3a0a2d8>
	...
    12d8:	44010000 	.inst	0x44010000 ; undefined
    12dc:	000013b1 	.inst	0x000013b1 ; undefined
    12e0:	00150a31 	.inst	0x00150a31 ; undefined
    12e4:	14ff3100 	b	3fcd6e4 <fat32_open+0x3fccdbc>
    12e8:	f4310000 	.inst	0xf4310000 ; undefined
    12ec:	27000014 	.inst	0x27000014 ; undefined
    12f0:	00000000 	.inst	0x00000000 ; undefined
    12f4:	0015152f 	.inst	0x0015152f ; undefined
    12f8:	00000000 	.inst	0x00000000 ; undefined
    12fc:	152d3200 	b	4b4dafc <fat32_open+0x4b4d1d4>
    1300:	00000000 	.inst	0x00000000 ; undefined
    1304:	13140000 	sbfiz	w0, w0, #12, #1
    1308:	2e2f0000 	uaddl	v0.8h, v0.8b, v15.8b
    130c:	00000015 	.inst	0x00000015 ; undefined
    1310:	00000000 	.inst	0x00000000 ; undefined
    1314:	0000001c 	.inst	0x0000001c ; undefined
    1318:	00000000 	.inst	0x00000000 ; undefined
    131c:	0015f300 	.inst	0x0015f300 ; undefined
    1320:	00135300 	.inst	0x00135300 ; undefined
    1324:	50011d00 	adr	x0, 36c6 <fat32_open+0x2d9e>
    1328:	00000309 	.inst	0x00000309 ; undefined
    132c:	00000000 	.inst	0x00000000 ; undefined
    1330:	011d0000 	.inst	0x011d0000 ; undefined
    1334:	2e080251 	ext	v17.8b, v18.8b, v8.8b, #0
    1338:	0952011d 	.inst	0x0952011d ; undefined
    133c:	00000003 	.inst	0x00000003 ; undefined
    1340:	00000000 	.inst	0x00000000 ; undefined
    1344:	53011d00 	ubfx	w0, w8, #1, #7
    1348:	00000309 	.inst	0x00000309 ; undefined
    134c:	00000000 	.inst	0x00000000 ; undefined
    1350:	30000000 	adr	x0, 1351 <.debug_info+0x1351>
	...
    135c:	0000136e 	.inst	0x0000136e ; undefined
    1360:	0250011d 	.inst	0x0250011d ; undefined
    1364:	011d0083 	.inst	0x011d0083 ; undefined
    1368:	f08f0351 	adrp	x17, ffffffff1e06c000 <fat32_open+0xffffffff1e06b6d8>
    136c:	001f0004 	.inst	0x001f0004 ; undefined
    1370:	00000000 	.inst	0x00000000 ; undefined
    1374:	f3000000 	.inst	0xf3000000 ; undefined
    1378:	1d000015 	.inst	0x1d000015 ; undefined
    137c:	03095001 	.inst	0x03095001 ; undefined
	...
    1388:	0251011d 	.inst	0x0251011d ; undefined
    138c:	011d3108 	.inst	0x011d3108 ; undefined
    1390:	00030952 	.inst	0x00030952 ; undefined
    1394:	00000000 	.inst	0x00000000 ; undefined
    1398:	1d000000 	.inst	0x1d000000 ; undefined
    139c:	03095301 	.inst	0x03095301 ; undefined
	...
    13a8:	0254011d 	.inst	0x0254011d ; undefined
    13ac:	00000083 	.inst	0x00000083 ; undefined
    13b0:	00001c00 	.inst	0x00001c00 ; undefined
    13b4:	00000000 	.inst	0x00000000 ; undefined
    13b8:	15fe0000 	b	7f813b8 <fat32_open+0x7f80a90>
    13bc:	13dc0000 	.inst	0x13dc0000 ; undefined
    13c0:	011d0000 	.inst	0x011d0000 ; undefined
    13c4:	00830250 	.inst	0x00830250 ; undefined
    13c8:	0951011d 	.inst	0x0951011d ; undefined
    13cc:	00000003 	.inst	0x00000003 ; undefined
    13d0:	00000000 	.inst	0x00000000 ; undefined
    13d4:	52011d00 	eor	w0, w8, #0x8000007f
    13d8:	00200802 	.inst	0x00200802 ; NYI
    13dc:	0000001c 	.inst	0x0000001c ; undefined
    13e0:	00000000 	.inst	0x00000000 ; undefined
    13e4:	0015fe00 	.inst	0x0015fe00 ; undefined
    13e8:	00140700 	.inst	0x00140700 ; undefined
    13ec:	50011d00 	adr	x0, 378e <fat32_open+0x2e66>
    13f0:	1d008302 	.inst	0x1d008302 ; undefined
    13f4:	03095101 	.inst	0x03095101 ; undefined
	...
    1400:	0252011d 	.inst	0x0252011d ; undefined
    1404:	1c002008 	ldr	s8, 1804 <fat32_open+0xedc>
	...
    1410:	000015fe 	.inst	0x000015fe ; undefined
    1414:	00001432 	.inst	0x00001432 ; undefined
    1418:	0250011d 	.inst	0x0250011d ; undefined
    141c:	011d0083 	.inst	0x011d0083 ; undefined
    1420:	00030951 	.inst	0x00030951 ; undefined
    1424:	00000000 	.inst	0x00000000 ; undefined
    1428:	1d000000 	.inst	0x1d000000 ; undefined
    142c:	08025201 	stxrb	w2, w1, [x16]
    1430:	001c0020 	.inst	0x001c0020 ; undefined
    1434:	00000000 	.inst	0x00000000 ; undefined
    1438:	d2000000 	eor	x0, x0, #0x100000001
    143c:	4a000015 	eor	w21, w0, w0
    1440:	1d000014 	.inst	0x1d000014 ; undefined
    1444:	08025001 	stxrb	w2, w1, [x0]
    1448:	001c00b8 	.inst	0x001c00b8 ; undefined
    144c:	00000000 	.inst	0x00000000 ; undefined
    1450:	f3000000 	.inst	0xf3000000 ; undefined
    1454:	82000015 	.inst	0x82000015 ; undefined
    1458:	1d000014 	.inst	0x1d000014 ; undefined
    145c:	03095001 	.inst	0x03095001 ; undefined
	...
    1468:	0251011d 	.inst	0x0251011d ; undefined
    146c:	011d4108 	.inst	0x011d4108 ; undefined
    1470:	00830252 	.inst	0x00830252 ; undefined
    1474:	0953011d 	.inst	0x0953011d ; undefined
    1478:	00000003 	.inst	0x00000003 ; undefined
    147c:	00000000 	.inst	0x00000000 ; undefined
    1480:	001c0000 	.inst	0x001c0000 ; undefined
    1484:	00000000 	.inst	0x00000000 ; undefined
    1488:	f3000000 	.inst	0xf3000000 ; undefined
    148c:	c1000015 	.inst	0xc1000015 ; undefined
    1490:	1d000014 	.inst	0x1d000014 ; undefined
    1494:	03095001 	.inst	0x03095001 ; undefined
	...
    14a0:	0251011d 	.inst	0x0251011d ; undefined
    14a4:	011d4d08 	.inst	0x011d4d08 ; undefined
    14a8:	00030952 	.inst	0x00030952 ; undefined
    14ac:	00000000 	.inst	0x00000000 ; undefined
    14b0:	1d000000 	.inst	0x1d000000 ; undefined
    14b4:	03095301 	.inst	0x03095301 ; undefined
	...
    14c0:	00001f00 	.inst	0x00001f00 ; undefined
    14c4:	00000000 	.inst	0x00000000 ; undefined
    14c8:	164b0000 	b	fffffffff92c14c8 <fat32_open+0xfffffffff92c0ba0>
    14cc:	011d0000 	.inst	0x011d0000 ; undefined
    14d0:	00830250 	.inst	0x00830250 ; undefined
    14d4:	0351011d 	.inst	0x0351011d ; undefined
    14d8:	1d04fb8f 	.inst	0x1d04fb8f ; undefined
    14dc:	32015201 	orr	w1, w16, #0x800fffff
    14e0:	08070000 	stxrb	w7, w0, [x0]
    14e4:	0000015c 	.inst	0x0000015c ; undefined
    14e8:	00000033 	.inst	0x00000033 ; undefined
    14ec:	03230100 	.inst	0x03230100 ; undefined
    14f0:	00001539 	.inst	0x00001539 ; undefined
    14f4:	64627034 	.inst	0x64627034 ; undefined
    14f8:	e2230100 	.inst	0xe2230100 ; undefined
    14fc:	35000014 	cbnz	w20, 14fc <.debug_info+0x14fc>
    1500:	00000000 	.inst	0x00000000 ; undefined
    1504:	15392301 	b	4e4a108 <fat32_open+0x4e497e0>
    1508:	00350000 	.inst	0x00350000 ; NYI
    150c:	01000000 	.inst	0x01000000 ; undefined
    1510:	00153f23 	.inst	0x00153f23 ; undefined
    1514:	00003600 	.inst	0x00003600 ; undefined
    1518:	25010000 	cmpge	p0.b, p0/z, z0.b, #1
    151c:	00000078 	.inst	0x00000078 ; undefined
    1520:	00000037 	.inst	0x00000037 ; undefined
    1524:	000a1500 	.inst	0x000a1500 ; undefined
    1528:	00000000 	.inst	0x00000000 ; undefined
    152c:	6e393800 	.inst	0x6e393800 ; undefined
    1530:	46270100 	.inst	0x46270100 ; undefined
    1534:	00000000 	.inst	0x00000000 ; undefined
    1538:	c9080700 	.inst	0xc9080700 ; undefined
    153c:	07000002 	.inst	0x07000002 ; undefined
    1540:	00048c08 	.inst	0x00048c08 ; undefined
    1544:	00003300 	.inst	0x00003300 ; undefined
    1548:	0d010000 	.inst	0x0d010000 ; undefined
    154c:	00159603 	.inst	0x00159603 ; undefined
    1550:	62703400 	.inst	0x62703400 ; undefined
    1554:	0d010064 	.inst	0x0d010064 ; undefined
    1558:	000014e2 	.inst	0x000014e2 ; undefined
    155c:	00000035 	.inst	0x00000035 ; undefined
    1560:	390d0100 	strb	w0, [x8, #832]
    1564:	36000015 	tbz	w21, #0, 1564 <.debug_info+0x1564>
    1568:	00000000 	.inst	0x00000000 ; undefined
    156c:	15960f01 	b	6585170 <fat32_open+0x6584848>
    1570:	00370000 	.inst	0x00370000 ; NYI
    1574:	b7000000 	tbnz	x0, #32, 1574 <.debug_info+0x1574>
    1578:	00000015 	.inst	0x00000015 ; undefined
    157c:	38000000 	sturb	w0, [x0]
    1580:	01006e39 	.inst	0x01006e39 ; undefined
    1584:	00004617 	.inst	0x00004617 ; undefined
    1588:	00003600 	.inst	0x00003600 ; undefined
    158c:	17010000 	b	fffffffffc04158c <fat32_open+0xfffffffffc040c64>
    1590:	00000046 	.inst	0x00000046 ; undefined
    1594:	4a0d0000 	eor	w0, w0, w13
    1598:	a7000001 	.inst	0xa7000001 ; undefined
    159c:	11000015 	add	w21, w0, #0x0
    15a0:	0000008e 	.inst	0x0000008e ; undefined
    15a4:	0d0001ff 	st1	{v31.b}[0], [x15]
    15a8:	00000151 	.inst	0x00000151 ; undefined
    15ac:	000015b7 	.inst	0x000015b7 ; undefined
    15b0:	00008e0e 	.inst	0x00008e0e ; undefined
    15b4:	0c000900 	st4	{v0.2s-v3.2s}, [x8]
    15b8:	000015a7 	.inst	0x000015a7 ; undefined
    15bc:	0000003a 	.inst	0x0000003a ; undefined
    15c0:	00000000 	.inst	0x00000000 ; undefined
    15c4:	3a2e0700 	.inst	0x3a2e0700 ; undefined
	...
    15d0:	003a0b07 	.inst	0x003a0b07 ; NYI
    15d4:	00000000 	.inst	0x00000000 ; undefined
    15d8:	08000000 	stxrb	w0, w0, [x0]
    15dc:	00003a45 	.inst	0x00003a45 ; undefined
    15e0:	00000000 	.inst	0x00000000 ; undefined
    15e4:	13070000 	sbfiz	w0, w0, #25, #1
    15e8:	0000003a 	.inst	0x0000003a ; undefined
    15ec:	00000000 	.inst	0x00000000 ; undefined
    15f0:	3a2a0700 	.inst	0x3a2a0700 ; undefined
	...
    15fc:	003a1209 	.inst	0x003a1209 ; NYI
    1600:	00000000 	.inst	0x00000000 ; undefined
    1604:	09000000 	.inst	0x09000000 ; undefined
    1608:	00003a14 	.inst	0x00003a14 ; undefined
    160c:	00000000 	.inst	0x00000000 ; undefined
    1610:	49080000 	.inst	0x49080000 ; undefined
    1614:	0000003a 	.inst	0x0000003a ; undefined
    1618:	00000000 	.inst	0x00000000 ; undefined
    161c:	3a1a0700 	.inst	0x3a1a0700 ; undefined
	...
    1628:	003a1707 	.inst	0x003a1707 ; NYI
    162c:	00000000 	.inst	0x00000000 ; undefined
    1630:	07000000 	.inst	0x07000000 ; undefined
    1634:	00003a0f 	.inst	0x00003a0f ; undefined
    1638:	00000000 	.inst	0x00000000 ; undefined
    163c:	28050000 	stnp	w0, w0, [x0, #40]
    1640:	0000003a 	.inst	0x0000003a ; undefined
    1644:	00000000 	.inst	0x00000000 ; undefined
    1648:	3a470800 	ccmn	w0, #0x7, #0x0, eq  // eq = none
	...
    1654:	地址 0x0000000000001654 越界。


Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <fat32_open+0xd924>
  10:	17429917 	b	fffffffffd0a646c <fat32_open+0xfffffffffd0a5b44>
  14:	24020000 	cmphs	p0.b, p0/z, z0.b, z2.b
  18:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  1c:	000e030b 	.inst	0x000e030b ; undefined
  20:	00240300 	.inst	0x00240300 ; NYI
  24:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
  28:	00000803 	.inst	0x00000803 ; undefined
  2c:	03001604 	.inst	0x03001604 ; undefined
  30:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  34:	0013490b 	.inst	0x0013490b ; undefined
  38:	01130500 	.inst	0x01130500 ; undefined
  3c:	0b0b0e03 	add	w3, w16, w11, lsl #3
  40:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  44:	00001301 	.inst	0x00001301 ; undefined
  48:	03000d06 	.inst	0x03000d06 ; undefined
  4c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  50:	3813490b 	sttrb	w11, [x8, #-204]
  54:	0700000b 	.inst	0x0700000b ; undefined
  58:	0b0b000f 	add	w15, w0, w11
  5c:	00001349 	.inst	0x00001349 ; undefined
  60:	0b011308 	add	w8, w24, w1, lsl #4
  64:	3b0b3a0b 	.inst	0x3b0b3a0b ; undefined
  68:	0013010b 	.inst	0x0013010b ; undefined
  6c:	00150900 	.inst	0x00150900 ; undefined
  70:	13491927 	.inst	0x13491927 ; undefined
  74:	150a0000 	b	4280074 <fat32_open+0x427f74c>
  78:	49192701 	.inst	0x49192701 ; undefined
  7c:	00130113 	.inst	0x00130113 ; undefined
  80:	00050b00 	.inst	0x00050b00 ; undefined
  84:	00001349 	.inst	0x00001349 ; undefined
  88:	4900260c 	.inst	0x4900260c ; undefined
  8c:	0d000013 	st1	{v19.b}[0], [x0]
  90:	13490101 	.inst	0x13490101 ; undefined
  94:	00001301 	.inst	0x00001301 ; undefined
  98:	4900210e 	.inst	0x4900210e ; undefined
  9c:	000b2f13 	.inst	0x000b2f13 ; undefined
  a0:	01130f00 	.inst	0x01130f00 ; undefined
  a4:	0b3a050b 	add	w11, w8, w26, uxtb #1
  a8:	13010b3b 	sbfx	w27, w25, #1, #2
  ac:	0d100000 	.inst	0x0d100000 ; undefined
  b0:	3a0e0300 	adcs	w0, w24, w14
  b4:	490b3b0b 	.inst	0x490b3b0b ; undefined
  b8:	00053813 	.inst	0x00053813 ; undefined
  bc:	00211100 	.inst	0x00211100 ; NYI
  c0:	052f1349 	ext	z9.b, z9.b, z26.b, #124
  c4:	17120000 	b	fffffffffc4800c4 <fat32_open+0xfffffffffc47f79c>
  c8:	3a0b0b01 	.inst	0x3a0b0b01 ; undefined
  cc:	010b3b0b 	.inst	0x010b3b0b ; undefined
  d0:	13000013 	sbfx	w19, w0, #0, #1
  d4:	0e03000d 	tbl	v13.8b, {v0.16b}, v3.8b
  d8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  dc:	00001349 	.inst	0x00001349 ; undefined
  e0:	03003414 	.inst	0x03003414 ; undefined
  e4:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  e8:	3f13490b 	.inst	0x3f13490b ; undefined
  ec:	00193c19 	.inst	0x00193c19 ; undefined
  f0:	012e1500 	.inst	0x012e1500 ; undefined
  f4:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
  f8:	053b0b3a 	ext	z26.b, z26.b, z25.b, #218
  fc:	13491927 	.inst	0x13491927 ; undefined
 100:	07120111 	.inst	0x07120111 ; undefined
 104:	42971840 	.inst	0x42971840 ; undefined
 108:	00130119 	.inst	0x00130119 ; undefined
 10c:	00051600 	.inst	0x00051600 ; undefined
 110:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 114:	1349053b 	.inst	0x1349053b ; undefined
 118:	00001702 	.inst	0x00001702 ; undefined
 11c:	03003417 	.inst	0x03003417 ; undefined
 120:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 124:	02134905 	.inst	0x02134905 ; undefined
 128:	18000017 	ldr	w23, 128 <.debug_abbrev+0x128>
 12c:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
 130:	053b0b3a 	ext	z26.b, z26.b, z25.b, #218
 134:	17021349 	b	fffffffffc084e58 <fat32_open+0xfffffffffc084530>
 138:	34190000 	cbz	w0, 32138 <fat32_open+0x31810>
 13c:	3a0e0300 	adcs	w0, w24, w14
 140:	49053b0b 	.inst	0x49053b0b ; undefined
 144:	00180213 	.inst	0x00180213 ; undefined
 148:	00341a00 	.inst	0x00341a00 ; NYI
 14c:	13490e03 	.inst	0x13490e03 ; undefined
 150:	18021934 	ldr	w20, 4474 <fat32_open+0x3b4c>
 154:	0a1b0000 	and	w0, w0, w27
 158:	3a0e0300 	adcs	w0, w24, w14
 15c:	11053b0b 	add	w11, w24, #0x14e
 160:	1c000001 	ldr	s1, 160 <.debug_abbrev+0x160>
 164:	01018289 	.inst	0x01018289 ; undefined
 168:	13310111 	.inst	0x13310111 ; undefined
 16c:	00001301 	.inst	0x00001301 ; undefined
 170:	01828a1d 	.inst	0x01828a1d ; undefined
 174:	91180200 	add	x0, x16, #0x600
 178:	00001842 	.inst	0x00001842 ; undefined
 17c:	0182891e 	.inst	0x0182891e ; undefined
 180:	31011100 	adds	w0, w8, #0x44
 184:	1f000013 	fmadd	s19, s0, s0, s0
 188:	01018289 	.inst	0x01018289 ; undefined
 18c:	13310111 	.inst	0x13310111 ; undefined
 190:	2e200000 	uaddl	v0.8h, v0.8b, v0.8b
 194:	03193f01 	.inst	0x03193f01 ; undefined
 198:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 19c:	4919270b 	.inst	0x4919270b ; undefined
 1a0:	12011113 	and	w19, w8, #0x8000000f
 1a4:	97184007 	bl	fffffffffc6101c0 <fat32_open+0xfffffffffc60f898>
 1a8:	13011942 	sbfx	w2, w10, #1, #6
 1ac:	05210000 	ext	z0.b, z0.b, z0.b, #8
 1b0:	3a0e0300 	adcs	w0, w24, w14
 1b4:	490b3b0b 	.inst	0x490b3b0b ; undefined
 1b8:	00170213 	.inst	0x00170213 ; undefined
 1bc:	00342200 	.inst	0x00342200 ; NYI
 1c0:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 1c4:	13490b3b 	.inst	0x13490b3b ; undefined
 1c8:	00001702 	.inst	0x00001702 ; undefined
 1cc:	11010b23 	add	w3, w25, #0x42
 1d0:	01071201 	.inst	0x01071201 ; undefined
 1d4:	24000013 	cmphi	p3.b, p0/z, z0.b, z0.b
 1d8:	08030034 	stxrb	w3, w20, [x1]
 1dc:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 1e0:	17021349 	b	fffffffffc084f04 <fat32_open+0xfffffffffc0845dc>
 1e4:	34250000 	cbz	w0, 4a1e4 <fat32_open+0x498bc>
 1e8:	3a0e0300 	adcs	w0, w24, w14
 1ec:	490b3b0b 	.inst	0x490b3b0b ; undefined
 1f0:	00180213 	.inst	0x00180213 ; undefined
 1f4:	000a2600 	.inst	0x000a2600 ; undefined
 1f8:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 1fc:	01110b3b 	.inst	0x01110b3b ; undefined
 200:	0b270000 	add	w0, w0, w7, uxtb
 204:	00175501 	.inst	0x00175501 ; undefined
 208:	00052800 	.inst	0x00052800 ; undefined
 20c:	0b3a0803 	add	w3, w0, w26, uxtb #2
 210:	13490b3b 	.inst	0x13490b3b ; undefined
 214:	00001702 	.inst	0x00001702 ; undefined
 218:	03003429 	.inst	0x03003429 ; undefined
 21c:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 220:	0213490b 	.inst	0x0213490b ; undefined
 224:	2a000018 	orr	w24, w0, w0
 228:	1755010b 	b	fffffffffd540654 <fat32_open+0xfffffffffd53fd2c>
 22c:	00001301 	.inst	0x00001301 ; undefined
 230:	31011d2b 	adds	w11, w9, #0x47
 234:	55015213 	.inst	0x55015213 ; undefined
 238:	590b5817 	.inst	0x590b5817 ; undefined
 23c:	0013010b 	.inst	0x0013010b ; undefined
 240:	00052c00 	.inst	0x00052c00 ; undefined
 244:	17021331 	b	fffffffffc084f08 <fat32_open+0xfffffffffc0845e0>
 248:	342d0000 	cbz	w0, 5a248 <fat32_open+0x59920>
 24c:	02133100 	.inst	0x02133100 ; undefined
 250:	2e000018 	ext	v24.8b, v0.8b, v0.8b, #0
 254:	1331010b 	.inst	0x1331010b ; undefined
 258:	07120111 	.inst	0x07120111 ; undefined
 25c:	00001301 	.inst	0x00001301 ; undefined
 260:	3100342f 	adds	w15, w1, #0xd
 264:	00170213 	.inst	0x00170213 ; undefined
 268:	82893000 	.inst	0x82893000 ; undefined
 26c:	01110101 	.inst	0x01110101 ; undefined
 270:	00001301 	.inst	0x00001301 ; undefined
 274:	31000531 	adds	w17, w9, #0x1
 278:	32000013 	orr	w19, w0, #0x1
 27c:	1331010b 	.inst	0x1331010b ; undefined
 280:	13011755 	sbfx	w21, w26, #1, #5
 284:	2e330000 	uaddl	v0.8h, v0.8b, v19.8b
 288:	3a0e0301 	adcs	w1, w24, w14
 28c:	270b3b0b 	.inst	0x270b3b0b ; undefined
 290:	010b2019 	.inst	0x010b2019 ; undefined
 294:	34000013 	cbz	w19, 294 <.debug_abbrev+0x294>
 298:	08030005 	stxrb	w3, w5, [x0]
 29c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 2a0:	00001349 	.inst	0x00001349 ; undefined
 2a4:	03000535 	.inst	0x03000535 ; undefined
 2a8:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 2ac:	0013490b 	.inst	0x0013490b ; undefined
 2b0:	00343600 	.inst	0x00343600 ; NYI
 2b4:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 2b8:	13490b3b 	.inst	0x13490b3b ; undefined
 2bc:	34370000 	cbz	w0, 6e2bc <fat32_open+0x6d994>
 2c0:	490e0300 	.inst	0x490e0300 ; undefined
 2c4:	1c193413 	ldr	s19, 32944 <fat32_open+0x3201c>
 2c8:	3800000e 	sturb	w14, [x0]
 2cc:	0000010b 	.inst	0x0000010b ; undefined
 2d0:	03003439 	.inst	0x03003439 ; undefined
 2d4:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 2d8:	0013490b 	.inst	0x0013490b ; undefined
 2dc:	002e3a00 	.inst	0x002e3a00 ; NYI
 2e0:	193c193f 	.inst	0x193c193f ; undefined
 2e4:	0e030e6e 	dup	v14.8b, w19
 2e8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 2ec:	地址 0x00000000000002ec 越界。


Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
       0:	00000928 	.inst	0x00000928 ; undefined
       4:	00000000 	.inst	0x00000000 ; undefined
       8:	00000954 	.inst	0x00000954 ; undefined
       c:	00000000 	.inst	0x00000000 ; undefined
      10:	54500001 	b.ne	a0010 <fat32_open+0x9f6e8>  // b.any
      14:	00000009 	.inst	0x00000009 ; undefined
      18:	64000000 	.inst	0x64000000 ; undefined
      1c:	0000000b 	.inst	0x0000000b ; undefined
      20:	01000000 	.inst	0x01000000 ; undefined
      24:	0b646600 	.inst	0x0b646600 ; undefined
      28:	00000000 	.inst	0x00000000 ; undefined
      2c:	0b700000 	.inst	0x0b700000 ; undefined
      30:	00000000 	.inst	0x00000000 ; undefined
      34:	00040000 	.inst	0x00040000 ; undefined
      38:	9f5001f3 	.inst	0x9f5001f3 ; undefined
      3c:	00000b70 	.inst	0x00000b70 ; undefined
      40:	00000000 	.inst	0x00000000 ; undefined
      44:	00000bb4 	.inst	0x00000bb4 ; undefined
      48:	00000000 	.inst	0x00000000 ; undefined
      4c:	00660001 	.inst	0x00660001 ; undefined
	...
      5c:	28000000 	stnp	w0, w0, [x0]
      60:	00000009 	.inst	0x00000009 ; undefined
      64:	50000000 	adr	x0, 66 <.debug_loc+0x66>
      68:	00000009 	.inst	0x00000009 ; undefined
      6c:	01000000 	.inst	0x01000000 ; undefined
      70:	09505100 	.inst	0x09505100 ; undefined
      74:	00000000 	.inst	0x00000000 ; undefined
      78:	09940000 	.inst	0x09940000 ; undefined
      7c:	00000000 	.inst	0x00000000 ; undefined
      80:	00010000 	.inst	0x00010000 ; undefined
      84:	00099463 	.inst	0x00099463 ; undefined
      88:	00000000 	.inst	0x00000000 ; undefined
      8c:	0009c000 	.inst	0x0009c000 ; undefined
      90:	00000000 	.inst	0x00000000 ; undefined
      94:	f3000400 	.inst	0xf3000400 ; undefined
      98:	c09f5101 	.inst	0xc09f5101 ; undefined
      9c:	00000009 	.inst	0x00000009 ; undefined
      a0:	10000000 	adr	x0, a0 <.debug_loc+0xa0>
      a4:	0000000a 	.inst	0x0000000a ; undefined
      a8:	01000000 	.inst	0x01000000 ; undefined
      ac:	0a106300 	and	w0, w24, w16, lsl #24
      b0:	00000000 	.inst	0x00000000 ; undefined
      b4:	0bb40000 	.inst	0x0bb40000 ; undefined
      b8:	00000000 	.inst	0x00000000 ; undefined
      bc:	00040000 	.inst	0x00040000 ; undefined
      c0:	9f5101f3 	.inst	0x9f5101f3 ; undefined
	...
      d4:	00000970 	.inst	0x00000970 ; undefined
      d8:	00000000 	.inst	0x00000000 ; undefined
      dc:	00000974 	.inst	0x00000974 ; undefined
      e0:	00000000 	.inst	0x00000000 ; undefined
      e4:	74500001 	.inst	0x74500001 ; undefined
      e8:	00000009 	.inst	0x00000009 ; undefined
      ec:	c0000000 	.inst	0xc0000000 ; undefined
      f0:	00000009 	.inst	0x00000009 ; undefined
      f4:	01000000 	.inst	0x01000000 ; undefined
      f8:	09e86800 	.inst	0x09e86800 ; undefined
      fc:	00000000 	.inst	0x00000000 ; undefined
     100:	0a040000 	and	w0, w0, w4
     104:	00000000 	.inst	0x00000000 ; undefined
     108:	00010000 	.inst	0x00010000 ; undefined
     10c:	000a0450 	.inst	0x000a0450 ; undefined
     110:	00000000 	.inst	0x00000000 ; undefined
     114:	000b6800 	.inst	0x000b6800 ; undefined
     118:	00000000 	.inst	0x00000000 ; undefined
     11c:	68000100 	.inst	0x68000100 ; undefined
     120:	00000b70 	.inst	0x00000b70 ; undefined
     124:	00000000 	.inst	0x00000000 ; undefined
     128:	00000bb4 	.inst	0x00000bb4 ; undefined
     12c:	00000000 	.inst	0x00000000 ; undefined
     130:	00680001 	.inst	0x00680001 ; undefined
	...
     140:	94000000 	bl	140 <.debug_loc+0x140>
     144:	00000009 	.inst	0x00000009 ; undefined
     148:	c0000000 	.inst	0xc0000000 ; undefined
     14c:	00000009 	.inst	0x00000009 ; undefined
     150:	01000000 	.inst	0x01000000 ; undefined
     154:	0a105000 	and	w0, w0, w16, lsl #20
     158:	00000000 	.inst	0x00000000 ; undefined
     15c:	0a1c0000 	and	w0, w0, w28
     160:	00000000 	.inst	0x00000000 ; undefined
     164:	00010000 	.inst	0x00010000 ; undefined
     168:	000a1c50 	.inst	0x000a1c50 ; undefined
     16c:	00000000 	.inst	0x00000000 ; undefined
     170:	000a7000 	.inst	0x000a7000 ; undefined
     174:	00000000 	.inst	0x00000000 ; undefined
     178:	63000100 	.inst	0x63000100 ; undefined
     17c:	00000a70 	.inst	0x00000a70 ; undefined
     180:	00000000 	.inst	0x00000000 ; undefined
     184:	00000a80 	.inst	0x00000a80 ; undefined
     188:	00000000 	.inst	0x00000000 ; undefined
     18c:	80500001 	.inst	0x80500001 ; undefined
     190:	0000000a 	.inst	0x0000000a ; undefined
     194:	bc000000 	stur	s0, [x0]
     198:	0000000a 	.inst	0x0000000a ; undefined
     19c:	01000000 	.inst	0x01000000 ; undefined
     1a0:	0b206300 	add	w0, w24, w0, uxtx
     1a4:	00000000 	.inst	0x00000000 ; undefined
     1a8:	0b240000 	add	w0, w0, w4, uxtb
     1ac:	00000000 	.inst	0x00000000 ; undefined
     1b0:	00010000 	.inst	0x00010000 ; undefined
     1b4:	000b3463 	.inst	0x000b3463 ; undefined
     1b8:	00000000 	.inst	0x00000000 ; undefined
     1bc:	000b3800 	.inst	0x000b3800 ; undefined
     1c0:	00000000 	.inst	0x00000000 ; undefined
     1c4:	63000100 	.inst	0x63000100 ; undefined
     1c8:	00000b70 	.inst	0x00000b70 ; undefined
     1cc:	00000000 	.inst	0x00000000 ; undefined
     1d0:	00000b74 	.inst	0x00000b74 ; undefined
     1d4:	00000000 	.inst	0x00000000 ; undefined
     1d8:	74500001 	.inst	0x74500001 ; undefined
     1dc:	0000000b 	.inst	0x0000000b ; undefined
     1e0:	7c000000 	stur	h0, [x0]
     1e4:	0000000b 	.inst	0x0000000b ; undefined
     1e8:	01000000 	.inst	0x01000000 ; undefined
     1ec:	0b946300 	add	w0, w24, w20, asr #24
     1f0:	00000000 	.inst	0x00000000 ; undefined
     1f4:	0b980000 	add	w0, w0, w24, asr #0
     1f8:	00000000 	.inst	0x00000000 ; undefined
     1fc:	00010000 	.inst	0x00010000 ; undefined
     200:	000b9850 	.inst	0x000b9850 ; undefined
     204:	00000000 	.inst	0x00000000 ; undefined
     208:	000ba000 	.inst	0x000ba000 ; undefined
     20c:	00000000 	.inst	0x00000000 ; undefined
     210:	63000100 	.inst	0x63000100 ; undefined
	...
     224:	00000a54 	.inst	0x00000a54 ; undefined
     228:	00000000 	.inst	0x00000000 ; undefined
     22c:	00000a68 	.inst	0x00000a68 ; undefined
     230:	00000000 	.inst	0x00000000 ; undefined
     234:	68500001 	.inst	0x68500001 ; undefined
     238:	0000000a 	.inst	0x0000000a ; undefined
     23c:	78000000 	sturh	w0, [x0]
     240:	0000000a 	.inst	0x0000000a ; undefined
     244:	01000000 	.inst	0x01000000 ; undefined
     248:	0abc6400 	bic	w0, w0, w28, asr #25
     24c:	00000000 	.inst	0x00000000 ; undefined
     250:	0b140000 	add	w0, w0, w20
     254:	00000000 	.inst	0x00000000 ; undefined
     258:	00010000 	.inst	0x00010000 ; undefined
     25c:	000b3464 	.inst	0x000b3464 ; undefined
     260:	00000000 	.inst	0x00000000 ; undefined
     264:	000b4400 	.inst	0x000b4400 ; undefined
     268:	00000000 	.inst	0x00000000 ; undefined
     26c:	50000100 	adr	x0, 28e <.debug_loc+0x28e>
     270:	00000b94 	.inst	0x00000b94 ; undefined
     274:	00000000 	.inst	0x00000000 ; undefined
     278:	00000ba8 	.inst	0x00000ba8 ; undefined
     27c:	00000000 	.inst	0x00000000 ; undefined
     280:	00640001 	.inst	0x00640001 ; undefined
	...
     290:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
     294:	0000000a 	.inst	0x0000000a ; undefined
     298:	58000000 	ldr	x0, 298 <.debug_loc+0x298>
     29c:	0000000a 	.inst	0x0000000a ; undefined
     2a0:	01000000 	.inst	0x01000000 ; undefined
     2a4:	0ab86400 	bic	w0, w0, w24, asr #25
     2a8:	00000000 	.inst	0x00000000 ; undefined
     2ac:	0abc0000 	bic	w0, w0, w28, asr #0
     2b0:	00000000 	.inst	0x00000000 ; undefined
     2b4:	00010000 	.inst	0x00010000 ; undefined
     2b8:	00000064 	.inst	0x00000064 ; undefined
	...
     2c8:	00094800 	.inst	0x00094800 ; undefined
     2cc:	00000000 	.inst	0x00000000 ; undefined
     2d0:	000a3000 	.inst	0x000a3000 ; undefined
     2d4:	00000000 	.inst	0x00000000 ; undefined
     2d8:	31000200 	adds	w0, w16, #0x0
     2dc:	000a309f 	.inst	0x000a309f ; undefined
     2e0:	00000000 	.inst	0x00000000 ; undefined
     2e4:	000a7800 	.inst	0x000a7800 ; undefined
     2e8:	00000000 	.inst	0x00000000 ; undefined
     2ec:	30000200 	adr	x0, 32d <.debug_loc+0x32d>
     2f0:	000a789f 	.inst	0x000a789f ; undefined
     2f4:	00000000 	.inst	0x00000000 ; undefined
     2f8:	000a9b00 	.inst	0x000a9b00 ; undefined
     2fc:	00000000 	.inst	0x00000000 ; undefined
     300:	51000100 	sub	w0, w8, #0x0
     304:	00000abc 	.inst	0x00000abc ; undefined
     308:	00000000 	.inst	0x00000000 ; undefined
     30c:	00000b20 	.inst	0x00000b20 ; undefined
     310:	00000000 	.inst	0x00000000 ; undefined
     314:	9f300002 	.inst	0x9f300002 ; undefined
     318:	00000b20 	.inst	0x00000b20 ; undefined
     31c:	00000000 	.inst	0x00000000 ; undefined
     320:	00000b34 	.inst	0x00000b34 ; undefined
     324:	00000000 	.inst	0x00000000 ; undefined
     328:	34510001 	cbz	w1, a2328 <fat32_open+0xa1a00>
     32c:	0000000b 	.inst	0x0000000b ; undefined
     330:	44000000 	.inst	0x44000000 ; undefined
     334:	0000000b 	.inst	0x0000000b ; undefined
     338:	02000000 	.inst	0x02000000 ; undefined
     33c:	709f3000 	adr	x0, fffffffffff3e93f <fat32_open+0xfffffffffff3e017>
     340:	0000000b 	.inst	0x0000000b ; undefined
     344:	94000000 	bl	344 <.debug_loc+0x344>
     348:	0000000b 	.inst	0x0000000b ; undefined
     34c:	02000000 	.inst	0x02000000 ; undefined
     350:	949f3100 	bl	27cc750 <fat32_open+0x27cbe28>
     354:	0000000b 	.inst	0x0000000b ; undefined
     358:	b4000000 	cbz	x0, 358 <.debug_loc+0x358>
     35c:	0000000b 	.inst	0x0000000b ; undefined
     360:	02000000 	.inst	0x02000000 ; undefined
     364:	009f3000 	.inst	0x009f3000 ; undefined
	...
     374:	48000000 	stxrh	w0, w0, [x0]
     378:	00000009 	.inst	0x00000009 ; undefined
     37c:	bc000000 	stur	s0, [x0]
     380:	0000000a 	.inst	0x0000000a ; undefined
     384:	02000000 	.inst	0x02000000 ; undefined
     388:	bc9f3000 	.inst	0xbc9f3000 ; undefined
     38c:	0000000a 	.inst	0x0000000a ; undefined
     390:	c0000000 	.inst	0xc0000000 ; undefined
     394:	0000000a 	.inst	0x0000000a ; undefined
     398:	01000000 	.inst	0x01000000 ; undefined
     39c:	0ac05000 	and	w0, w0, w0, ror #20
     3a0:	00000000 	.inst	0x00000000 ; undefined
     3a4:	0b200000 	add	w0, w0, w0, uxtb
     3a8:	00000000 	.inst	0x00000000 ; undefined
     3ac:	00010000 	.inst	0x00010000 ; undefined
     3b0:	000b2063 	.inst	0x000b2063 ; undefined
     3b4:	00000000 	.inst	0x00000000 ; undefined
     3b8:	000b4400 	.inst	0x000b4400 ; undefined
     3bc:	00000000 	.inst	0x00000000 ; undefined
     3c0:	30000200 	adr	x0, 401 <.debug_loc+0x401>
     3c4:	000b449f 	.inst	0x000b449f ; undefined
     3c8:	00000000 	.inst	0x00000000 ; undefined
     3cc:	000b6000 	.inst	0x000b6000 ; undefined
     3d0:	00000000 	.inst	0x00000000 ; undefined
     3d4:	63000100 	.inst	0x63000100 ; undefined
     3d8:	00000b60 	.inst	0x00000b60 ; undefined
     3dc:	00000000 	.inst	0x00000000 ; undefined
     3e0:	00000b70 	.inst	0x00000b70 ; undefined
     3e4:	00000000 	.inst	0x00000000 ; undefined
     3e8:	70500001 	adr	x1, a03eb <fat32_open+0x9fac3>
     3ec:	0000000b 	.inst	0x0000000b ; undefined
     3f0:	7c000000 	stur	h0, [x0]
     3f4:	0000000b 	.inst	0x0000000b ; undefined
     3f8:	02000000 	.inst	0x02000000 ; undefined
     3fc:	7c9f3000 	.inst	0x7c9f3000 ; undefined
     400:	0000000b 	.inst	0x0000000b ; undefined
     404:	84000000 	ld1sb	{z0.s}, p0/z, [x0, z0.s, uxtw]
     408:	0000000b 	.inst	0x0000000b ; undefined
     40c:	01000000 	.inst	0x01000000 ; undefined
     410:	0b845000 	add	w0, w0, w4, asr #20
     414:	00000000 	.inst	0x00000000 ; undefined
     418:	0b940000 	add	w0, w0, w20, asr #0
     41c:	00000000 	.inst	0x00000000 ; undefined
     420:	00010000 	.inst	0x00010000 ; undefined
     424:	000b9463 	.inst	0x000b9463 ; undefined
     428:	00000000 	.inst	0x00000000 ; undefined
     42c:	000ba000 	.inst	0x000ba000 ; undefined
     430:	00000000 	.inst	0x00000000 ; undefined
     434:	30000200 	adr	x0, 475 <.debug_loc+0x475>
     438:	000ba09f 	.inst	0x000ba09f ; undefined
     43c:	00000000 	.inst	0x00000000 ; undefined
     440:	000bb400 	.inst	0x000bb400 ; undefined
     444:	00000000 	.inst	0x00000000 ; undefined
     448:	50000100 	adr	x0, 46a <.debug_loc+0x46a>
	...
     45c:	00000618 	.inst	0x00000618 ; undefined
     460:	00000000 	.inst	0x00000000 ; undefined
     464:	00000634 	.inst	0x00000634 ; undefined
     468:	00000000 	.inst	0x00000000 ; undefined
     46c:	34500001 	cbz	w1, a046c <fat32_open+0x9fb44>
     470:	00000006 	.inst	0x00000006 ; undefined
     474:	10000000 	adr	x0, 474 <.debug_loc+0x474>
     478:	00000007 	.inst	0x00000007 ; undefined
     47c:	01000000 	.inst	0x01000000 ; undefined
     480:	07106400 	.inst	0x07106400 ; undefined
     484:	00000000 	.inst	0x00000000 ; undefined
     488:	07280000 	.inst	0x07280000 ; undefined
     48c:	00000000 	.inst	0x00000000 ; undefined
     490:	00030000 	.inst	0x00030000 ; undefined
     494:	289f7f84 	stp	w4, wzr, [x28], #248
     498:	00000007 	.inst	0x00000007 ; undefined
     49c:	d4000000 	.inst	0xd4000000 ; undefined
     4a0:	00000007 	.inst	0x00000007 ; undefined
     4a4:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     4a8:	5001f300 	adr	x0, 430a <fat32_open+0x39e2>
     4ac:	0007d49f 	.inst	0x0007d49f ; undefined
     4b0:	00000000 	.inst	0x00000000 ; undefined
     4b4:	00080c00 	.inst	0x00080c00 ; undefined
     4b8:	00000000 	.inst	0x00000000 ; undefined
     4bc:	64000100 	.inst	0x64000100 ; undefined
	...
     4d0:	00000618 	.inst	0x00000618 ; undefined
     4d4:	00000000 	.inst	0x00000000 ; undefined
     4d8:	00000658 	.inst	0x00000658 ; undefined
     4dc:	00000000 	.inst	0x00000000 ; undefined
     4e0:	58510001 	ldr	x1, a24e0 <fat32_open+0xa1bb8>
     4e4:	00000006 	.inst	0x00000006 ; undefined
     4e8:	fc000000 	stur	d0, [x0]
     4ec:	00000006 	.inst	0x00000006 ; undefined
     4f0:	01000000 	.inst	0x01000000 ; undefined
     4f4:	06fc6700 	.inst	0x06fc6700 ; undefined
     4f8:	00000000 	.inst	0x00000000 ; undefined
     4fc:	07280000 	.inst	0x07280000 ; undefined
     500:	00000000 	.inst	0x00000000 ; undefined
     504:	00010000 	.inst	0x00010000 ; undefined
     508:	00072851 	.inst	0x00072851 ; undefined
     50c:	00000000 	.inst	0x00000000 ; undefined
     510:	0007cc00 	.inst	0x0007cc00 ; undefined
     514:	00000000 	.inst	0x00000000 ; undefined
     518:	67000100 	.inst	0x67000100 ; undefined
     51c:	000007cc 	.inst	0x000007cc ; undefined
     520:	00000000 	.inst	0x00000000 ; undefined
     524:	000007d4 	.inst	0x000007d4 ; undefined
     528:	00000000 	.inst	0x00000000 ; undefined
     52c:	01f30004 	.inst	0x01f30004 ; undefined
     530:	07d49f51 	.inst	0x07d49f51 ; undefined
     534:	00000000 	.inst	0x00000000 ; undefined
     538:	07e80000 	.inst	0x07e80000 ; undefined
     53c:	00000000 	.inst	0x00000000 ; undefined
     540:	00010000 	.inst	0x00010000 ; undefined
     544:	0007e851 	.inst	0x0007e851 ; undefined
     548:	00000000 	.inst	0x00000000 ; undefined
     54c:	00080c00 	.inst	0x00080c00 ; undefined
     550:	00000000 	.inst	0x00000000 ; undefined
     554:	67000100 	.inst	0x67000100 ; undefined
	...
     568:	00000630 	.inst	0x00000630 ; undefined
     56c:	00000000 	.inst	0x00000000 ; undefined
     570:	00000728 	.inst	0x00000728 ; undefined
     574:	00000000 	.inst	0x00000000 ; undefined
     578:	9f300002 	.inst	0x9f300002 ; undefined
     57c:	00000728 	.inst	0x00000728 ; undefined
     580:	00000000 	.inst	0x00000000 ; undefined
     584:	000007c0 	.inst	0x000007c0 ; undefined
     588:	00000000 	.inst	0x00000000 ; undefined
     58c:	d4660001 	.inst	0xd4660001 ; undefined
     590:	00000007 	.inst	0x00000007 ; undefined
     594:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
     598:	00000008 	.inst	0x00000008 ; undefined
     59c:	02000000 	.inst	0x02000000 ; undefined
     5a0:	009f3000 	.inst	0x009f3000 ; undefined
	...
     5b0:	30000000 	adr	x0, 5b1 <.debug_loc+0x5b1>
     5b4:	00000006 	.inst	0x00000006 ; undefined
     5b8:	58000000 	ldr	x0, 5b8 <.debug_loc+0x5b8>
     5bc:	00000006 	.inst	0x00000006 ; undefined
     5c0:	02000000 	.inst	0x02000000 ; undefined
     5c4:	5c9f3000 	ldr	d0, fffffffffff3ebc4 <fat32_open+0xfffffffffff3e29c>
     5c8:	00000006 	.inst	0x00000006 ; undefined
     5cc:	64000000 	.inst	0x64000000 ; undefined
     5d0:	00000006 	.inst	0x00000006 ; undefined
     5d4:	01000000 	.inst	0x01000000 ; undefined
     5d8:	06645000 	.inst	0x06645000 ; undefined
     5dc:	00000000 	.inst	0x00000000 ; undefined
     5e0:	06680000 	.inst	0x06680000 ; undefined
     5e4:	00000000 	.inst	0x00000000 ; undefined
     5e8:	00030000 	.inst	0x00030000 ; undefined
     5ec:	689f0170 	.inst	0x689f0170 ; undefined
     5f0:	00000006 	.inst	0x00000006 ; undefined
     5f4:	74000000 	.inst	0x74000000 ; undefined
     5f8:	00000006 	.inst	0x00000006 ; undefined
     5fc:	01000000 	.inst	0x01000000 ; undefined
     600:	06906300 	.inst	0x06906300 ; undefined
     604:	00000000 	.inst	0x00000000 ; undefined
     608:	06a00000 	.inst	0x06a00000 ; undefined
     60c:	00000000 	.inst	0x00000000 ; undefined
     610:	00020000 	.inst	0x00020000 ; undefined
     614:	06a09f30 	.inst	0x06a09f30 ; undefined
     618:	00000000 	.inst	0x00000000 ; undefined
     61c:	06a80000 	.inst	0x06a80000 ; undefined
     620:	00000000 	.inst	0x00000000 ; undefined
     624:	00020000 	.inst	0x00020000 ; undefined
     628:	06a89f31 	.inst	0x06a89f31 ; undefined
     62c:	00000000 	.inst	0x00000000 ; undefined
     630:	06b80000 	.inst	0x06b80000 ; undefined
     634:	00000000 	.inst	0x00000000 ; undefined
     638:	00020000 	.inst	0x00020000 ; undefined
     63c:	06fc9f32 	.inst	0x06fc9f32 ; undefined
     640:	00000000 	.inst	0x00000000 ; undefined
     644:	07c00000 	.inst	0x07c00000 ; undefined
     648:	00000000 	.inst	0x00000000 ; undefined
     64c:	00020000 	.inst	0x00020000 ; undefined
     650:	07d49f30 	.inst	0x07d49f30 ; undefined
     654:	00000000 	.inst	0x00000000 ; undefined
     658:	07e80000 	.inst	0x07e80000 ; undefined
     65c:	00000000 	.inst	0x00000000 ; undefined
     660:	00020000 	.inst	0x00020000 ; undefined
     664:	07e89f30 	.inst	0x07e89f30 ; undefined
     668:	00000000 	.inst	0x00000000 ; undefined
     66c:	07f00000 	.inst	0x07f00000 ; undefined
     670:	00000000 	.inst	0x00000000 ; undefined
     674:	00020000 	.inst	0x00020000 ; undefined
     678:	07f09f31 	.inst	0x07f09f31 ; undefined
     67c:	00000000 	.inst	0x00000000 ; undefined
     680:	07f80000 	.inst	0x07f80000 ; undefined
     684:	00000000 	.inst	0x00000000 ; undefined
     688:	00020000 	.inst	0x00020000 ; undefined
     68c:	00009f30 	.inst	0x00009f30 ; undefined
	...
     69c:	06300000 	.inst	0x06300000 ; undefined
     6a0:	00000000 	.inst	0x00000000 ; undefined
     6a4:	06900000 	.inst	0x06900000 ; undefined
     6a8:	00000000 	.inst	0x00000000 ; undefined
     6ac:	00020000 	.inst	0x00020000 ; undefined
     6b0:	06fc9f30 	.inst	0x06fc9f30 ; undefined
     6b4:	00000000 	.inst	0x00000000 ; undefined
     6b8:	07c00000 	.inst	0x07c00000 ; undefined
     6bc:	00000000 	.inst	0x00000000 ; undefined
     6c0:	00020000 	.inst	0x00020000 ; undefined
     6c4:	07d49f30 	.inst	0x07d49f30 ; undefined
     6c8:	00000000 	.inst	0x00000000 ; undefined
     6cc:	07e80000 	.inst	0x07e80000 ; undefined
     6d0:	00000000 	.inst	0x00000000 ; undefined
     6d4:	00020000 	.inst	0x00020000 ; undefined
     6d8:	07f89f30 	.inst	0x07f89f30 ; undefined
     6dc:	00000000 	.inst	0x00000000 ; undefined
     6e0:	080c0000 	stxrb	w12, w0, [x0]
     6e4:	00000000 	.inst	0x00000000 ; undefined
     6e8:	00020000 	.inst	0x00020000 ; undefined
     6ec:	00009f30 	.inst	0x00009f30 ; undefined
	...
     6fc:	073c0000 	.inst	0x073c0000 ; undefined
     700:	00000000 	.inst	0x00000000 ; undefined
     704:	07b40000 	.inst	0x07b40000 ; undefined
     708:	00000000 	.inst	0x00000000 ; undefined
     70c:	00010000 	.inst	0x00010000 ; undefined
     710:	00000063 	.inst	0x00000063 ; undefined
	...
     720:	00080c00 	.inst	0x00080c00 ; undefined
     724:	00000000 	.inst	0x00000000 ; undefined
     728:	00085800 	.inst	0x00085800 ; undefined
     72c:	00000000 	.inst	0x00000000 ; undefined
     730:	50000100 	adr	x0, 752 <.debug_loc+0x752>
     734:	00000858 	.inst	0x00000858 ; undefined
     738:	00000000 	.inst	0x00000000 ; undefined
     73c:	0000091c 	.inst	0x0000091c ; undefined
     740:	00000000 	.inst	0x00000000 ; undefined
     744:	1c680001 	ldr	s1, d0744 <fat32_open+0xcfe1c>
     748:	00000009 	.inst	0x00000009 ; undefined
     74c:	28000000 	stnp	w0, w0, [x0]
     750:	00000009 	.inst	0x00000009 ; undefined
     754:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     758:	5001f300 	adr	x0, 45ba <fat32_open+0x3c92>
     75c:	0000009f 	.inst	0x0000009f ; undefined
	...
     76c:	00080c00 	.inst	0x00080c00 ; undefined
     770:	00000000 	.inst	0x00000000 ; undefined
     774:	00085800 	.inst	0x00085800 ; undefined
     778:	00000000 	.inst	0x00000000 ; undefined
     77c:	51000100 	sub	w0, w8, #0x0
     780:	00000858 	.inst	0x00000858 ; undefined
     784:	00000000 	.inst	0x00000000 ; undefined
     788:	000008dc 	.inst	0x000008dc ; undefined
     78c:	00000000 	.inst	0x00000000 ; undefined
     790:	dc670001 	.inst	0xdc670001 ; undefined
     794:	00000008 	.inst	0x00000008 ; undefined
     798:	e4000000 	.inst	0xe4000000 ; undefined
     79c:	00000008 	.inst	0x00000008 ; undefined
     7a0:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     7a4:	5101f300 	sub	w0, w24, #0x7c
     7a8:	0008e49f 	.inst	0x0008e49f ; undefined
     7ac:	00000000 	.inst	0x00000000 ; undefined
     7b0:	0008ec00 	.inst	0x0008ec00 ; undefined
     7b4:	00000000 	.inst	0x00000000 ; undefined
     7b8:	67000100 	.inst	0x67000100 ; undefined
     7bc:	000008ec 	.inst	0x000008ec ; undefined
     7c0:	00000000 	.inst	0x00000000 ; undefined
     7c4:	00000928 	.inst	0x00000928 ; undefined
     7c8:	00000000 	.inst	0x00000000 ; undefined
     7cc:	01f30004 	.inst	0x01f30004 ; undefined
     7d0:	00009f51 	.inst	0x00009f51 ; undefined
	...
     7e0:	080c0000 	stxrb	w12, w0, [x0]
     7e4:	00000000 	.inst	0x00000000 ; undefined
     7e8:	08580000 	ldxrb	w0, [x0]
     7ec:	00000000 	.inst	0x00000000 ; undefined
     7f0:	00010000 	.inst	0x00010000 ; undefined
     7f4:	00085852 	.inst	0x00085852 ; undefined
     7f8:	00000000 	.inst	0x00000000 ; undefined
     7fc:	0008dc00 	.inst	0x0008dc00 ; undefined
     800:	00000000 	.inst	0x00000000 ; undefined
     804:	66000100 	.inst	0x66000100 ; undefined
     808:	000008dc 	.inst	0x000008dc ; undefined
     80c:	00000000 	.inst	0x00000000 ; undefined
     810:	000008e4 	.inst	0x000008e4 ; undefined
     814:	00000000 	.inst	0x00000000 ; undefined
     818:	01f30004 	.inst	0x01f30004 ; undefined
     81c:	08e49f52 	.inst	0x08e49f52 ; undefined
     820:	00000000 	.inst	0x00000000 ; undefined
     824:	08ec0000 	.inst	0x08ec0000 ; undefined
     828:	00000000 	.inst	0x00000000 ; undefined
     82c:	00010000 	.inst	0x00010000 ; undefined
     830:	0008ec66 	.inst	0x0008ec66 ; undefined
     834:	00000000 	.inst	0x00000000 ; undefined
     838:	00092800 	.inst	0x00092800 ; undefined
     83c:	00000000 	.inst	0x00000000 ; undefined
     840:	f3000400 	.inst	0xf3000400 ; undefined
     844:	009f5201 	.inst	0x009f5201 ; undefined
	...
     854:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
     858:	00000008 	.inst	0x00000008 ; undefined
     85c:	58000000 	ldr	x0, 85c <.debug_loc+0x85c>
     860:	00000008 	.inst	0x00000008 ; undefined
     864:	02000000 	.inst	0x02000000 ; undefined
     868:	589f3000 	ldr	x0, fffffffffff3ee68 <fat32_open+0xfffffffffff3e540>
     86c:	00000008 	.inst	0x00000008 ; undefined
     870:	d8000000 	prfm	pldl1keep, 870 <.debug_loc+0x870>
     874:	00000008 	.inst	0x00000008 ; undefined
     878:	01000000 	.inst	0x01000000 ; undefined
     87c:	08e46400 	.inst	0x08e46400 ; undefined
     880:	00000000 	.inst	0x00000000 ; undefined
     884:	08e80000 	.inst	0x08e80000 ; undefined
     888:	00000000 	.inst	0x00000000 ; undefined
     88c:	00010000 	.inst	0x00010000 ; undefined
     890:	00000064 	.inst	0x00000064 ; undefined
	...
     8a0:	00085800 	.inst	0x00085800 ; undefined
     8a4:	00000000 	.inst	0x00000000 ; undefined
     8a8:	00087c00 	.inst	0x00087c00 ; undefined
     8ac:	00000000 	.inst	0x00000000 ; undefined
     8b0:	63000100 	.inst	0x63000100 ; undefined
     8b4:	00000898 	.inst	0x00000898 ; undefined
     8b8:	00000000 	.inst	0x00000000 ; undefined
     8bc:	0000089c 	.inst	0x0000089c ; undefined
     8c0:	00000000 	.inst	0x00000000 ; undefined
     8c4:	9c500001 	ldr	q1, a08c4 <fat32_open+0x9ff9c>
     8c8:	00000008 	.inst	0x00000008 ; undefined
     8cc:	a4000000 	ld1rqb	{z0.b}, p0/z, [x0, x0]
     8d0:	00000008 	.inst	0x00000008 ; undefined
     8d4:	01000000 	.inst	0x01000000 ; undefined
     8d8:	08ac6300 	.inst	0x08ac6300 ; undefined
     8dc:	00000000 	.inst	0x00000000 ; undefined
     8e0:	08b00000 	.inst	0x08b00000 ; undefined
     8e4:	00000000 	.inst	0x00000000 ; undefined
     8e8:	00010000 	.inst	0x00010000 ; undefined
     8ec:	00000063 	.inst	0x00000063 ; undefined
	...
     8fc:	00040c00 	.inst	0x00040c00 ; undefined
     900:	00000000 	.inst	0x00000000 ; undefined
     904:	00044400 	.inst	0x00044400 ; undefined
     908:	00000000 	.inst	0x00000000 ; undefined
     90c:	50000100 	adr	x0, 92e <.debug_loc+0x92e>
     910:	00000444 	.inst	0x00000444 ; undefined
     914:	00000000 	.inst	0x00000000 ; undefined
     918:	000004c4 	.inst	0x000004c4 ; undefined
     91c:	00000000 	.inst	0x00000000 ; undefined
     920:	c4640001 	prfb	pldl1strm, p0, [x0, z4.d, sxtw]
     924:	00000004 	.inst	0x00000004 ; undefined
     928:	dc000000 	.inst	0xdc000000 ; undefined
     92c:	00000004 	.inst	0x00000004 ; undefined
     930:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     934:	5001f300 	adr	x0, 4796 <fat32_open+0x3e6e>
     938:	0004dc9f 	.inst	0x0004dc9f ; undefined
     93c:	00000000 	.inst	0x00000000 ; undefined
     940:	00061800 	.inst	0x00061800 ; undefined
     944:	00000000 	.inst	0x00000000 ; undefined
     948:	64000100 	.inst	0x64000100 ; undefined
	...
     95c:	0000040c 	.inst	0x0000040c ; undefined
     960:	00000000 	.inst	0x00000000 ; undefined
     964:	00000447 	.inst	0x00000447 ; undefined
     968:	00000000 	.inst	0x00000000 ; undefined
     96c:	47510001 	.inst	0x47510001 ; undefined
     970:	00000004 	.inst	0x00000004 ; undefined
     974:	cc000000 	.inst	0xcc000000 ; undefined
     978:	00000004 	.inst	0x00000004 ; undefined
     97c:	01000000 	.inst	0x01000000 ; undefined
     980:	04cc6800 	mls	z0.d, p2/m, z0.d, z12.d
     984:	00000000 	.inst	0x00000000 ; undefined
     988:	04dc0000 	.inst	0x04dc0000 ; undefined
     98c:	00000000 	.inst	0x00000000 ; undefined
     990:	00040000 	.inst	0x00040000 ; undefined
     994:	9f5101f3 	.inst	0x9f5101f3 ; undefined
     998:	000004dc 	.inst	0x000004dc ; undefined
     99c:	00000000 	.inst	0x00000000 ; undefined
     9a0:	00000618 	.inst	0x00000618 ; undefined
     9a4:	00000000 	.inst	0x00000000 ; undefined
     9a8:	00680001 	.inst	0x00680001 ; undefined
	...
     9b8:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
     9bc:	00000004 	.inst	0x00000004 ; undefined
     9c0:	47000000 	.inst	0x47000000 ; undefined
     9c4:	00000004 	.inst	0x00000004 ; undefined
     9c8:	01000000 	.inst	0x01000000 ; undefined
     9cc:	04475200 	mla	z0.h, p4/m, z16.h, z7.h
     9d0:	00000000 	.inst	0x00000000 ; undefined
     9d4:	04cc0000 	sabd	z0.d, p0/m, z0.d, z0.d
     9d8:	00000000 	.inst	0x00000000 ; undefined
     9dc:	00010000 	.inst	0x00010000 ; undefined
     9e0:	0004cc67 	.inst	0x0004cc67 ; undefined
     9e4:	00000000 	.inst	0x00000000 ; undefined
     9e8:	0004dc00 	.inst	0x0004dc00 ; undefined
     9ec:	00000000 	.inst	0x00000000 ; undefined
     9f0:	f3000400 	.inst	0xf3000400 ; undefined
     9f4:	dc9f5201 	.inst	0xdc9f5201 ; undefined
     9f8:	00000004 	.inst	0x00000004 ; undefined
     9fc:	18000000 	ldr	w0, 9fc <.debug_loc+0x9fc>
     a00:	00000006 	.inst	0x00000006 ; undefined
     a04:	01000000 	.inst	0x01000000 ; undefined
     a08:	00006700 	.inst	0x00006700 ; undefined
	...
     a18:	04340000 	add	z0.b, z0.b, z20.b
     a1c:	00000000 	.inst	0x00000000 ; undefined
     a20:	04440000 	.inst	0x04440000 ; undefined
     a24:	00000000 	.inst	0x00000000 ; undefined
     a28:	00010000 	.inst	0x00010000 ; undefined
     a2c:	00044450 	.inst	0x00044450 ; undefined
     a30:	00000000 	.inst	0x00000000 ; undefined
     a34:	0004c400 	.inst	0x0004c400 ; undefined
     a38:	00000000 	.inst	0x00000000 ; undefined
     a3c:	64000100 	.inst	0x64000100 ; undefined
     a40:	000004c4 	.inst	0x000004c4 ; undefined
     a44:	00000000 	.inst	0x00000000 ; undefined
     a48:	000004dc 	.inst	0x000004dc ; undefined
     a4c:	00000000 	.inst	0x00000000 ; undefined
     a50:	01f30004 	.inst	0x01f30004 ; undefined
     a54:	04dc9f50 	.inst	0x04dc9f50 ; undefined
     a58:	00000000 	.inst	0x00000000 ; undefined
     a5c:	06180000 	.inst	0x06180000 ; undefined
     a60:	00000000 	.inst	0x00000000 ; undefined
     a64:	00010000 	.inst	0x00010000 ; undefined
     a68:	00000064 	.inst	0x00000064 ; undefined
	...
     a78:	00043800 	.inst	0x00043800 ; undefined
     a7c:	00000000 	.inst	0x00000000 ; undefined
     a80:	00046800 	.inst	0x00046800 ; undefined
     a84:	00000000 	.inst	0x00000000 ; undefined
     a88:	83000900 	.inst	0x83000900 ; undefined
     a8c:	ffff0c00 	.inst	0xffff0c00 ; undefined
     a90:	9f1affff 	.inst	0x9f1affff ; undefined
     a94:	00000468 	.inst	0x00000468 ; undefined
     a98:	00000000 	.inst	0x00000000 ; undefined
     a9c:	00000488 	.inst	0x00000488 ; undefined
     aa0:	00000000 	.inst	0x00000000 ; undefined
     aa4:	88500001 	ldxr	w1, [x0]
     aa8:	00000004 	.inst	0x00000004 ; undefined
     aac:	bc000000 	stur	s0, [x0]
     ab0:	00000004 	.inst	0x00000004 ; undefined
     ab4:	03000000 	.inst	0x03000000 ; undefined
     ab8:	01f08f00 	.inst	0x01f08f00 ; undefined
     abc:	000004dc 	.inst	0x000004dc ; undefined
     ac0:	00000000 	.inst	0x00000000 ; undefined
     ac4:	00000618 	.inst	0x00000618 ; undefined
     ac8:	00000000 	.inst	0x00000000 ; undefined
     acc:	f08f0003 	adrp	x3, ffffffff1e003000 <fat32_open+0xffffffff1e0026d8>
     ad0:	00000001 	.inst	0x00000001 ; undefined
	...
     ae0:	00043800 	.inst	0x00043800 ; undefined
     ae4:	00000000 	.inst	0x00000000 ; undefined
     ae8:	0004a800 	.inst	0x0004a800 ; undefined
     aec:	00000000 	.inst	0x00000000 ; undefined
     af0:	30000200 	adr	x0, b31 <.debug_loc+0xb31>
     af4:	0004a89f 	.inst	0x0004a89f ; undefined
     af8:	00000000 	.inst	0x00000000 ; undefined
     afc:	0004bc00 	.inst	0x0004bc00 ; undefined
     b00:	00000000 	.inst	0x00000000 ; undefined
     b04:	65000100 	.inst	0x65000100 ; undefined
     b08:	000004dc 	.inst	0x000004dc ; undefined
     b0c:	00000000 	.inst	0x00000000 ; undefined
     b10:	0000053c 	.inst	0x0000053c ; undefined
     b14:	00000000 	.inst	0x00000000 ; undefined
     b18:	9f300002 	.inst	0x9f300002 ; undefined
     b1c:	0000053c 	.inst	0x0000053c ; undefined
     b20:	00000000 	.inst	0x00000000 ; undefined
     b24:	00000614 	.inst	0x00000614 ; undefined
     b28:	00000000 	.inst	0x00000000 ; undefined
     b2c:	00650001 	.inst	0x00650001 ; undefined
	...
     b3c:	3c000000 	stur	b0, [x0]
     b40:	00000004 	.inst	0x00000004 ; undefined
     b44:	a8000000 	stnp	x0, x0, [x0]
     b48:	00000004 	.inst	0x00000004 ; undefined
     b4c:	07000000 	.inst	0x07000000 ; undefined
     b50:	0a008a00 	.inst	0x0a008a00 ; undefined
     b54:	9f1affff 	.inst	0x9f1affff ; undefined
     b58:	000004a8 	.inst	0x000004a8 ; undefined
     b5c:	00000000 	.inst	0x00000000 ; undefined
     b60:	000004b8 	.inst	0x000004b8 ; undefined
     b64:	00000000 	.inst	0x00000000 ; undefined
     b68:	00890007 	.inst	0x00890007 ; undefined
     b6c:	1affff0a 	.inst	0x1affff0a ; undefined
     b70:	0004dc9f 	.inst	0x0004dc9f ; undefined
     b74:	00000000 	.inst	0x00000000 ; undefined
     b78:	00050c00 	.inst	0x00050c00 ; undefined
     b7c:	00000000 	.inst	0x00000000 ; undefined
     b80:	8a000700 	and	x0, x24, x0, lsl #1
     b84:	ffff0a00 	.inst	0xffff0a00 ; undefined
     b88:	050c9f1a 	.inst	0x050c9f1a ; undefined
     b8c:	00000000 	.inst	0x00000000 ; undefined
     b90:	06180000 	.inst	0x06180000 ; undefined
     b94:	00000000 	.inst	0x00000000 ; undefined
     b98:	00070000 	.inst	0x00070000 ; undefined
     b9c:	ff0a0089 	.inst	0xff0a0089 ; undefined
     ba0:	009f1aff 	.inst	0x009f1aff ; undefined
	...
     bb0:	40000000 	.inst	0x40000000 ; undefined
     bb4:	00000004 	.inst	0x00000004 ; undefined
     bb8:	a8000000 	stnp	x0, x0, [x0]
     bbc:	00000004 	.inst	0x00000004 ; undefined
     bc0:	01000000 	.inst	0x01000000 ; undefined
     bc4:	04dc6c00 	mls	z0.d, p3/m, z0.d, z28.d
     bc8:	00000000 	.inst	0x00000000 ; undefined
     bcc:	053c0000 	ext	z0.b, z0.b, z0.b, #224
     bd0:	00000000 	.inst	0x00000000 ; undefined
     bd4:	00010000 	.inst	0x00010000 ; undefined
     bd8:	0000006c 	.inst	0x0000006c ; undefined
	...
     be8:	00049c00 	.inst	0x00049c00 ; undefined
     bec:	00000000 	.inst	0x00000000 ; undefined
     bf0:	0004a400 	.inst	0x0004a400 ; undefined
     bf4:	00000000 	.inst	0x00000000 ; undefined
     bf8:	83000900 	.inst	0x83000900 ; undefined
     bfc:	ffff0c00 	.inst	0xffff0c00 ; undefined
     c00:	9f1a0fff 	.inst	0x9f1a0fff ; undefined
     c04:	000004a4 	.inst	0x000004a4 ; undefined
     c08:	00000000 	.inst	0x00000000 ; undefined
     c0c:	000004a8 	.inst	0x000004a8 ; undefined
     c10:	00000000 	.inst	0x00000000 ; undefined
     c14:	08630001 	.inst	0x08630001 ; undefined
     c18:	00000005 	.inst	0x00000005 ; undefined
     c1c:	4c000000 	st4	{v0.16b-v3.16b}, [x0]
     c20:	00000005 	.inst	0x00000005 ; undefined
     c24:	01000000 	.inst	0x01000000 ; undefined
     c28:	054c6300 	.inst	0x054c6300 ; undefined
     c2c:	00000000 	.inst	0x00000000 ; undefined
     c30:	056c0000 	.inst	0x056c0000 ; undefined
     c34:	00000000 	.inst	0x00000000 ; undefined
     c38:	00010000 	.inst	0x00010000 ; undefined
     c3c:	00056c6a 	.inst	0x00056c6a ; undefined
     c40:	00000000 	.inst	0x00000000 ; undefined
     c44:	00061000 	.inst	0x00061000 ; undefined
     c48:	00000000 	.inst	0x00000000 ; undefined
     c4c:	63000100 	.inst	0x63000100 ; undefined
     c50:	00000610 	.inst	0x00000610 ; undefined
     c54:	00000000 	.inst	0x00000000 ; undefined
     c58:	00000618 	.inst	0x00000618 ; undefined
     c5c:	00000000 	.inst	0x00000000 ; undefined
     c60:	006a0001 	.inst	0x006a0001 ; undefined
	...
     c70:	40000000 	.inst	0x40000000 ; undefined
     c74:	00000004 	.inst	0x00000004 ; undefined
     c78:	a8000000 	stnp	x0, x0, [x0]
     c7c:	00000004 	.inst	0x00000004 ; undefined
     c80:	01000000 	.inst	0x01000000 ; undefined
     c84:	04dc6800 	mls	z0.d, p2/m, z0.d, z28.d
     c88:	00000000 	.inst	0x00000000 ; undefined
     c8c:	053c0000 	ext	z0.b, z0.b, z0.b, #224
     c90:	00000000 	.inst	0x00000000 ; undefined
     c94:	00010000 	.inst	0x00010000 ; undefined
     c98:	00053c68 	.inst	0x00053c68 ; undefined
     c9c:	00000000 	.inst	0x00000000 ; undefined
     ca0:	00056c00 	.inst	0x00056c00 ; undefined
     ca4:	00000000 	.inst	0x00000000 ; undefined
     ca8:	63000100 	.inst	0x63000100 ; undefined
     cac:	0000056c 	.inst	0x0000056c ; undefined
     cb0:	00000000 	.inst	0x00000000 ; undefined
     cb4:	00000610 	.inst	0x00000610 ; undefined
     cb8:	00000000 	.inst	0x00000000 ; undefined
     cbc:	8c8f0003 	.inst	0x8c8f0003 ; undefined
     cc0:	00061002 	.inst	0x00061002 ; undefined
     cc4:	00000000 	.inst	0x00000000 ; undefined
     cc8:	00061800 	.inst	0x00061800 ; undefined
     ccc:	00000000 	.inst	0x00000000 ; undefined
     cd0:	63000100 	.inst	0x63000100 ; undefined
	...
     ce4:	00000440 	.inst	0x00000440 ; undefined
     ce8:	00000000 	.inst	0x00000000 ; undefined
     cec:	000004a8 	.inst	0x000004a8 ; undefined
     cf0:	00000000 	.inst	0x00000000 ; undefined
     cf4:	00880010 	.inst	0x00880010 ; undefined
     cf8:	008a31f7 	.inst	0x008a31f7 ; undefined
     cfc:	1affff0a 	.inst	0x1affff0a ; undefined
     d00:	f71b31f7 	.inst	0xf71b31f7 ; undefined
     d04:	04dc9f00 	.inst	0x04dc9f00 ; undefined
     d08:	00000000 	.inst	0x00000000 ; undefined
     d0c:	050c0000 	.inst	0x050c0000 ; undefined
     d10:	00000000 	.inst	0x00000000 ; undefined
     d14:	00100000 	.inst	0x00100000 ; undefined
     d18:	31f70088 	.inst	0x31f70088 ; undefined
     d1c:	ff0a008a 	.inst	0xff0a008a ; undefined
     d20:	31f71aff 	.inst	0x31f71aff ; undefined
     d24:	9f00f71b 	.inst	0x9f00f71b ; undefined
     d28:	0000050c 	.inst	0x0000050c ; undefined
     d2c:	00000000 	.inst	0x00000000 ; undefined
     d30:	0000053c 	.inst	0x0000053c ; undefined
     d34:	00000000 	.inst	0x00000000 ; undefined
     d38:	00880010 	.inst	0x00880010 ; undefined
     d3c:	008931f7 	.inst	0x008931f7 ; undefined
     d40:	1affff0a 	.inst	0x1affff0a ; undefined
     d44:	f71b31f7 	.inst	0xf71b31f7 ; undefined
     d48:	053c9f00 	.inst	0x053c9f00 ; undefined
     d4c:	00000000 	.inst	0x00000000 ; undefined
     d50:	05a40000 	.inst	0x05a40000 ; undefined
     d54:	00000000 	.inst	0x00000000 ; undefined
     d58:	00010000 	.inst	0x00010000 ; undefined
     d5c:	0005a46b 	.inst	0x0005a46b ; undefined
     d60:	00000000 	.inst	0x00000000 ; undefined
     d64:	0005ec00 	.inst	0x0005ec00 ; undefined
     d68:	00000000 	.inst	0x00000000 ; undefined
     d6c:	6a000100 	ands	w0, w8, w0
     d70:	000005ec 	.inst	0x000005ec ; undefined
     d74:	00000000 	.inst	0x00000000 ; undefined
     d78:	00000618 	.inst	0x00000618 ; undefined
     d7c:	00000000 	.inst	0x00000000 ; undefined
     d80:	006b0001 	.inst	0x006b0001 ; undefined
	...
     d90:	48000000 	stxrh	w0, w0, [x0]
     d94:	00000004 	.inst	0x00000004 ; undefined
     d98:	68000000 	.inst	0x68000000 ; undefined
     d9c:	00000004 	.inst	0x00000004 ; undefined
     da0:	01000000 	.inst	0x01000000 ; undefined
     da4:	04685000 	addpl	x0, x8, #0
     da8:	00000000 	.inst	0x00000000 ; undefined
     dac:	04b40000 	add	z0.s, z0.s, z20.s
     db0:	00000000 	.inst	0x00000000 ; undefined
     db4:	00010000 	.inst	0x00010000 ; undefined
     db8:	0004dc66 	.inst	0x0004dc66 ; undefined
     dbc:	00000000 	.inst	0x00000000 ; undefined
     dc0:	00061800 	.inst	0x00061800 ; undefined
     dc4:	00000000 	.inst	0x00000000 ; undefined
     dc8:	66000100 	.inst	0x66000100 ; undefined
	...
     ddc:	00000364 	.inst	0x00000364 ; undefined
     de0:	00000000 	.inst	0x00000000 ; undefined
     de4:	000003b4 	.inst	0x000003b4 ; undefined
     de8:	00000000 	.inst	0x00000000 ; undefined
     dec:	b4500001 	cbz	x1, a0dec <fat32_open+0xa04c4>
     df0:	00000003 	.inst	0x00000003 ; undefined
     df4:	e8000000 	.inst	0xe8000000 ; undefined
     df8:	00000003 	.inst	0x00000003 ; undefined
     dfc:	01000000 	.inst	0x01000000 ; undefined
     e00:	03e86500 	.inst	0x03e86500 ; undefined
     e04:	00000000 	.inst	0x00000000 ; undefined
     e08:	04040000 	.inst	0x04040000 ; undefined
     e0c:	00000000 	.inst	0x00000000 ; undefined
     e10:	00040000 	.inst	0x00040000 ; undefined
     e14:	9f5001f3 	.inst	0x9f5001f3 ; undefined
     e18:	00000404 	.inst	0x00000404 ; undefined
     e1c:	00000000 	.inst	0x00000000 ; undefined
     e20:	0000040c 	.inst	0x0000040c ; undefined
     e24:	00000000 	.inst	0x00000000 ; undefined
     e28:	00500001 	.inst	0x00500001 ; undefined
	...
     e38:	64000000 	.inst	0x64000000 ; undefined
     e3c:	00000003 	.inst	0x00000003 ; undefined
     e40:	b4000000 	cbz	x0, e40 <.debug_loc+0xe40>
     e44:	00000003 	.inst	0x00000003 ; undefined
     e48:	01000000 	.inst	0x01000000 ; undefined
     e4c:	03b45100 	.inst	0x03b45100 ; undefined
     e50:	00000000 	.inst	0x00000000 ; undefined
     e54:	04040000 	.inst	0x04040000 ; undefined
     e58:	00000000 	.inst	0x00000000 ; undefined
     e5c:	00040000 	.inst	0x00040000 ; undefined
     e60:	9f5101f3 	.inst	0x9f5101f3 ; undefined
     e64:	00000404 	.inst	0x00000404 ; undefined
     e68:	00000000 	.inst	0x00000000 ; undefined
     e6c:	0000040c 	.inst	0x0000040c ; undefined
     e70:	00000000 	.inst	0x00000000 ; undefined
     e74:	00510001 	.inst	0x00510001 ; undefined
	...
     e84:	64000000 	.inst	0x64000000 ; undefined
     e88:	00000003 	.inst	0x00000003 ; undefined
     e8c:	b4000000 	cbz	x0, e8c <.debug_loc+0xe8c>
     e90:	00000003 	.inst	0x00000003 ; undefined
     e94:	01000000 	.inst	0x01000000 ; undefined
     e98:	03b45200 	.inst	0x03b45200 ; undefined
     e9c:	00000000 	.inst	0x00000000 ; undefined
     ea0:	03ec0000 	.inst	0x03ec0000 ; undefined
     ea4:	00000000 	.inst	0x00000000 ; undefined
     ea8:	00010000 	.inst	0x00010000 ; undefined
     eac:	0003ec68 	.inst	0x0003ec68 ; undefined
     eb0:	00000000 	.inst	0x00000000 ; undefined
     eb4:	00040400 	.inst	0x00040400 ; undefined
     eb8:	00000000 	.inst	0x00000000 ; undefined
     ebc:	f3000400 	.inst	0xf3000400 ; undefined
     ec0:	049f5201 	mla	z1.s, p4/m, z16.s, z31.s
     ec4:	00000004 	.inst	0x00000004 ; undefined
     ec8:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
     ecc:	00000004 	.inst	0x00000004 ; undefined
     ed0:	01000000 	.inst	0x01000000 ; undefined
     ed4:	00005200 	.inst	0x00005200 ; undefined
	...
     ee4:	03780000 	.inst	0x03780000 ; undefined
     ee8:	00000000 	.inst	0x00000000 ; undefined
     eec:	03a40000 	.inst	0x03a40000 ; undefined
     ef0:	00000000 	.inst	0x00000000 ; undefined
     ef4:	00010000 	.inst	0x00010000 ; undefined
     ef8:	0003a453 	.inst	0x0003a453 ; undefined
     efc:	00000000 	.inst	0x00000000 ; undefined
     f00:	0003f000 	.inst	0x0003f000 ; undefined
     f04:	00000000 	.inst	0x00000000 ; undefined
     f08:	69000100 	.inst	0x69000100 ; undefined
     f0c:	00000404 	.inst	0x00000404 ; undefined
     f10:	00000000 	.inst	0x00000000 ; undefined
     f14:	0000040c 	.inst	0x0000040c ; undefined
     f18:	00000000 	.inst	0x00000000 ; undefined
     f1c:	00530001 	.inst	0x00530001 ; undefined
	...
     f2c:	7c000000 	stur	h0, [x0]
     f30:	00000003 	.inst	0x00000003 ; undefined
     f34:	fc000000 	stur	d0, [x0]
     f38:	00000003 	.inst	0x00000003 ; undefined
     f3c:	01000000 	.inst	0x01000000 ; undefined
     f40:	04046a00 	mls	z0.b, p2/m, z16.b, z4.b
     f44:	00000000 	.inst	0x00000000 ; undefined
     f48:	040c0000 	sabd	z0.b, p0/m, z0.b, z0.b
     f4c:	00000000 	.inst	0x00000000 ; undefined
     f50:	00010000 	.inst	0x00010000 ; undefined
     f54:	0000006a 	.inst	0x0000006a ; undefined
	...
     f64:	00037c00 	.inst	0x00037c00 ; undefined
     f68:	00000000 	.inst	0x00000000 ; undefined
     f6c:	0003b400 	.inst	0x0003b400 ; undefined
     f70:	00000000 	.inst	0x00000000 ; undefined
     f74:	30000200 	adr	x0, fb5 <.debug_loc+0xfb5>
     f78:	0003b49f 	.inst	0x0003b49f ; undefined
     f7c:	00000000 	.inst	0x00000000 ; undefined
     f80:	0003f000 	.inst	0x0003f000 ; undefined
     f84:	00000000 	.inst	0x00000000 ; undefined
     f88:	66000100 	.inst	0x66000100 ; undefined
     f8c:	00000404 	.inst	0x00000404 ; undefined
     f90:	00000000 	.inst	0x00000000 ; undefined
     f94:	0000040c 	.inst	0x0000040c ; undefined
     f98:	00000000 	.inst	0x00000000 ; undefined
     f9c:	9f300002 	.inst	0x9f300002 ; undefined
	...
     fb0:	0000037c 	.inst	0x0000037c ; undefined
     fb4:	00000000 	.inst	0x00000000 ; undefined
     fb8:	000003b4 	.inst	0x000003b4 ; undefined
     fbc:	00000000 	.inst	0x00000000 ; undefined
     fc0:	9f300002 	.inst	0x9f300002 ; undefined
     fc4:	000003b4 	.inst	0x000003b4 ; undefined
     fc8:	00000000 	.inst	0x00000000 ; undefined
     fcc:	000003d0 	.inst	0x000003d0 ; undefined
     fd0:	00000000 	.inst	0x00000000 ; undefined
     fd4:	d0630001 	adrp	x1, c6002000 <fat32_open+0xc60016d8>
     fd8:	00000003 	.inst	0x00000003 ; undefined
     fdc:	d4000000 	.inst	0xd4000000 ; undefined
     fe0:	00000003 	.inst	0x00000003 ; undefined
     fe4:	03000000 	.inst	0x03000000 ; undefined
     fe8:	9f018300 	.inst	0x9f018300 ; undefined
     fec:	00000404 	.inst	0x00000404 ; undefined
     ff0:	00000000 	.inst	0x00000000 ; undefined
     ff4:	0000040c 	.inst	0x0000040c ; undefined
     ff8:	00000000 	.inst	0x00000000 ; undefined
     ffc:	9f300002 	.inst	0x9f300002 ; undefined
	...
    1018:	00000034 	.inst	0x00000034 ; undefined
    101c:	00000000 	.inst	0x00000000 ; undefined
    1020:	34500001 	cbz	w1, a1020 <fat32_open+0xa06f8>
    1024:	00000000 	.inst	0x00000000 ; undefined
    1028:	38000000 	sturb	w0, [x0]
    102c:	00000003 	.inst	0x00000003 ; undefined
    1030:	01000000 	.inst	0x01000000 ; undefined
    1034:	03386700 	.inst	0x03386700 ; undefined
    1038:	00000000 	.inst	0x00000000 ; undefined
    103c:	03440000 	.inst	0x03440000 ; undefined
    1040:	00000000 	.inst	0x00000000 ; undefined
    1044:	00040000 	.inst	0x00040000 ; undefined
    1048:	9f5001f3 	.inst	0x9f5001f3 ; undefined
    104c:	00000344 	.inst	0x00000344 ; undefined
    1050:	00000000 	.inst	0x00000000 ; undefined
    1054:	00000364 	.inst	0x00000364 ; undefined
    1058:	00000000 	.inst	0x00000000 ; undefined
    105c:	00670001 	.inst	0x00670001 ; undefined
	...
    106c:	6c000000 	stnp	d0, d0, [x0]
    1070:	00000000 	.inst	0x00000000 ; undefined
    1074:	70000000 	adr	x0, 1077 <.debug_loc+0x1077>
    1078:	00000000 	.inst	0x00000000 ; undefined
    107c:	01000000 	.inst	0x01000000 ; undefined
    1080:	00705000 	.inst	0x00705000 ; undefined
    1084:	00000000 	.inst	0x00000000 ; undefined
    1088:	017c0000 	.inst	0x017c0000 ; undefined
    108c:	00000000 	.inst	0x00000000 ; undefined
    1090:	00010000 	.inst	0x00010000 ; undefined
    1094:	00017c65 	.inst	0x00017c65 ; undefined
    1098:	00000000 	.inst	0x00000000 ; undefined
    109c:	00019000 	.inst	0x00019000 ; undefined
    10a0:	00000000 	.inst	0x00000000 ; undefined
    10a4:	50000100 	adr	x0, 10c6 <.debug_loc+0x10c6>
    10a8:	00000190 	.inst	0x00000190 ; undefined
    10ac:	00000000 	.inst	0x00000000 ; undefined
    10b0:	00000334 	.inst	0x00000334 ; undefined
    10b4:	00000000 	.inst	0x00000000 ; undefined
    10b8:	34650001 	cbz	w1, cb0b8 <fat32_open+0xca790>
    10bc:	00000003 	.inst	0x00000003 ; undefined
    10c0:	44000000 	.inst	0x44000000 ; undefined
    10c4:	00000003 	.inst	0x00000003 ; undefined
    10c8:	01000000 	.inst	0x01000000 ; undefined
    10cc:	03445000 	.inst	0x03445000 ; undefined
    10d0:	00000000 	.inst	0x00000000 ; undefined
    10d4:	03640000 	.inst	0x03640000 ; undefined
    10d8:	00000000 	.inst	0x00000000 ; undefined
    10dc:	00010000 	.inst	0x00010000 ; undefined
    10e0:	00000065 	.inst	0x00000065 ; undefined
	...
    10f0:	0002f800 	.inst	0x0002f800 ; undefined
    10f4:	00000000 	.inst	0x00000000 ; undefined
    10f8:	00033400 	.inst	0x00033400 ; undefined
    10fc:	00000000 	.inst	0x00000000 ; undefined
    1100:	65000100 	.inst	0x65000100 ; undefined
    1104:	00000334 	.inst	0x00000334 ; undefined
    1108:	00000000 	.inst	0x00000000 ; undefined
    110c:	00000344 	.inst	0x00000344 ; undefined
    1110:	00000000 	.inst	0x00000000 ; undefined
    1114:	00500001 	.inst	0x00500001 ; undefined
	...
    1124:	1c000000 	ldr	s0, 1124 <.debug_loc+0x1124>
    1128:	00000000 	.inst	0x00000000 ; undefined
    112c:	a0000000 	.inst	0xa0000000 ; undefined
    1130:	00000002 	.inst	0x00000002 ; undefined
    1134:	03000000 	.inst	0x03000000 ; undefined
    1138:	9fff0900 	.inst	0x9fff0900 ; undefined
    113c:	00000344 	.inst	0x00000344 ; undefined
    1140:	00000000 	.inst	0x00000000 ; undefined
    1144:	00000360 	.inst	0x00000360 ; undefined
    1148:	00000000 	.inst	0x00000000 ; undefined
    114c:	ff090003 	.inst	0xff090003 ; undefined
    1150:	0003609f 	.inst	0x0003609f ; undefined
    1154:	00000000 	.inst	0x00000000 ; undefined
    1158:	00036400 	.inst	0x00036400 ; undefined
    115c:	00000000 	.inst	0x00000000 ; undefined
    1160:	33000200 	bfxil	w0, w16, #0, #1
    1164:	0000009f 	.inst	0x0000009f ; undefined
	...
    1174:	00024c00 	.inst	0x00024c00 ; undefined
    1178:	00000000 	.inst	0x00000000 ; undefined
    117c:	00025800 	.inst	0x00025800 ; undefined
    1180:	00000000 	.inst	0x00000000 ; undefined
    1184:	30000200 	adr	x0, 11c5 <.debug_loc+0x11c5>
    1188:	0002589f 	.inst	0x0002589f ; undefined
    118c:	00000000 	.inst	0x00000000 ; undefined
    1190:	00026400 	.inst	0x00026400 ; undefined
    1194:	00000000 	.inst	0x00000000 ; undefined
    1198:	31000200 	adds	w0, w16, #0x0
    119c:	0002649f 	.inst	0x0002649f ; undefined
    11a0:	00000000 	.inst	0x00000000 ; undefined
    11a4:	00027000 	.inst	0x00027000 ; undefined
    11a8:	00000000 	.inst	0x00000000 ; undefined
    11ac:	32000200 	orr	w0, w16, #0x1
    11b0:	0002709f 	.inst	0x0002709f ; undefined
    11b4:	00000000 	.inst	0x00000000 ; undefined
    11b8:	00027c00 	.inst	0x00027c00 ; undefined
    11bc:	00000000 	.inst	0x00000000 ; undefined
    11c0:	33000200 	bfxil	w0, w16, #0, #1
    11c4:	00027c9f 	.inst	0x00027c9f ; undefined
    11c8:	00000000 	.inst	0x00000000 ; undefined
    11cc:	0002a000 	.inst	0x0002a000 ; undefined
    11d0:	00000000 	.inst	0x00000000 ; undefined
    11d4:	34000200 	cbz	w0, 1214 <.debug_loc+0x1214>
    11d8:	0003449f 	.inst	0x0003449f ; undefined
    11dc:	00000000 	.inst	0x00000000 ; undefined
    11e0:	00034c00 	.inst	0x00034c00 ; undefined
    11e4:	00000000 	.inst	0x00000000 ; undefined
    11e8:	30000200 	adr	x0, 1229 <.debug_loc+0x1229>
    11ec:	00034c9f 	.inst	0x00034c9f ; undefined
    11f0:	00000000 	.inst	0x00000000 ; undefined
    11f4:	00035400 	.inst	0x00035400 ; undefined
    11f8:	00000000 	.inst	0x00000000 ; undefined
    11fc:	31000200 	adds	w0, w16, #0x0
    1200:	0003549f 	.inst	0x0003549f ; undefined
    1204:	00000000 	.inst	0x00000000 ; undefined
    1208:	00035c00 	.inst	0x00035c00 ; undefined
    120c:	00000000 	.inst	0x00000000 ; undefined
    1210:	32000200 	orr	w0, w16, #0x1
    1214:	00035c9f 	.inst	0x00035c9f ; undefined
    1218:	00000000 	.inst	0x00000000 ; undefined
    121c:	00036400 	.inst	0x00036400 ; undefined
    1220:	00000000 	.inst	0x00000000 ; undefined
    1224:	33000200 	bfxil	w0, w16, #0, #1
    1228:	0000009f 	.inst	0x0000009f ; undefined
	...
    1238:	00031800 	.inst	0x00031800 ; undefined
    123c:	00000000 	.inst	0x00000000 ; undefined
    1240:	00031c00 	.inst	0x00031c00 ; undefined
    1244:	00000000 	.inst	0x00000000 ; undefined
    1248:	30000200 	adr	x0, 1289 <.debug_loc+0x1289>
    124c:	0000009f 	.inst	0x0000009f ; undefined
	...
    125c:	00007000 	.inst	0x00007000 ; undefined
    1260:	00000000 	.inst	0x00000000 ; undefined
    1264:	00009000 	.inst	0x00009000 ; undefined
    1268:	00000000 	.inst	0x00000000 ; undefined
    126c:	8f000400 	.inst	0x8f000400 ; undefined
    1270:	909f08f0 	adrp	x16, ffffffff3e11d000 <fat32_open+0xffffffff3e11c6d8>
    1274:	00000000 	.inst	0x00000000 ; undefined
    1278:	b4000000 	cbz	x0, 1278 <.debug_loc+0x1278>
    127c:	00000000 	.inst	0x00000000 ; undefined
    1280:	01000000 	.inst	0x01000000 ; undefined
    1284:	00b46300 	.inst	0x00b46300 ; undefined
    1288:	00000000 	.inst	0x00000000 ; undefined
    128c:	00c00000 	.inst	0x00c00000 ; undefined
    1290:	00000000 	.inst	0x00000000 ; undefined
    1294:	00030000 	.inst	0x00030000 ; undefined
    1298:	c09f7083 	.inst	0xc09f7083 ; undefined
    129c:	00000000 	.inst	0x00000000 ; undefined
    12a0:	7c000000 	stur	h0, [x0]
    12a4:	00000001 	.inst	0x00000001 ; undefined
    12a8:	04000000 	add	z0.b, p0/m, z0.b, z0.b
    12ac:	08f08f00 	.inst	0x08f08f00 ; undefined
    12b0:	00019c9f 	.inst	0x00019c9f ; undefined
    12b4:	00000000 	.inst	0x00000000 ; undefined
    12b8:	0001f800 	.inst	0x0001f800 ; undefined
    12bc:	00000000 	.inst	0x00000000 ; undefined
    12c0:	8f000400 	.inst	0x8f000400 ; undefined
    12c4:	f89f08f0 	.inst	0xf89f08f0 ; undefined
    12c8:	00000001 	.inst	0x00000001 ; undefined
    12cc:	00000000 	.inst	0x00000000 ; undefined
    12d0:	00000002 	.inst	0x00000002 ; undefined
    12d4:	03000000 	.inst	0x03000000 ; undefined
    12d8:	9f707100 	.inst	0x9f707100 ; undefined
    12dc:	00000200 	.inst	0x00000200 ; undefined
    12e0:	00000000 	.inst	0x00000000 ; undefined
    12e4:	000002b0 	.inst	0x000002b0 ; undefined
    12e8:	00000000 	.inst	0x00000000 ; undefined
    12ec:	f08f0004 	adrp	x4, ffffffff1e004000 <fat32_open+0xffffffff1e0036d8>
    12f0:	02b09f08 	.inst	0x02b09f08 ; undefined
    12f4:	00000000 	.inst	0x00000000 ; undefined
    12f8:	02c40000 	.inst	0x02c40000 ; undefined
    12fc:	00000000 	.inst	0x00000000 ; undefined
    1300:	00030000 	.inst	0x00030000 ; undefined
    1304:	c49f7072 	ldff1h	{z18.d}, p4/z, [x3, z31.d, uxtw]
    1308:	00000002 	.inst	0x00000002 ; undefined
    130c:	40000000 	.inst	0x40000000 ; undefined
    1310:	00000003 	.inst	0x00000003 ; undefined
    1314:	04000000 	add	z0.b, p0/m, z0.b, z0.b
    1318:	08f08f00 	.inst	0x08f08f00 ; undefined
    131c:	0003409f 	.inst	0x0003409f ; undefined
    1320:	00000000 	.inst	0x00000000 ; undefined
    1324:	00034400 	.inst	0x00034400 ; undefined
    1328:	00000000 	.inst	0x00000000 ; undefined
    132c:	8f000300 	.inst	0x8f000300 ; undefined
    1330:	03449f70 	.inst	0x03449f70 ; undefined
    1334:	00000000 	.inst	0x00000000 ; undefined
    1338:	03640000 	.inst	0x03640000 ; undefined
    133c:	00000000 	.inst	0x00000000 ; undefined
    1340:	00040000 	.inst	0x00040000 ; undefined
    1344:	9f08f08f 	.inst	0x9f08f08f ; undefined
	...
    1358:	00000070 	.inst	0x00000070 ; undefined
    135c:	00000000 	.inst	0x00000000 ; undefined
    1360:	0000017c 	.inst	0x0000017c ; undefined
    1364:	00000000 	.inst	0x00000000 ; undefined
    1368:	9c670001 	ldr	q1, cf368 <fat32_open+0xcea40>
    136c:	00000001 	.inst	0x00000001 ; undefined
    1370:	38000000 	sturb	w0, [x0]
    1374:	00000003 	.inst	0x00000003 ; undefined
    1378:	01000000 	.inst	0x01000000 ; undefined
    137c:	03386700 	.inst	0x03386700 ; undefined
    1380:	00000000 	.inst	0x00000000 ; undefined
    1384:	03440000 	.inst	0x03440000 ; undefined
    1388:	00000000 	.inst	0x00000000 ; undefined
    138c:	00040000 	.inst	0x00040000 ; undefined
    1390:	9f5001f3 	.inst	0x9f5001f3 ; undefined
    1394:	00000344 	.inst	0x00000344 ; undefined
    1398:	00000000 	.inst	0x00000000 ; undefined
    139c:	00000364 	.inst	0x00000364 ; undefined
    13a0:	00000000 	.inst	0x00000000 ; undefined
    13a4:	00670001 	.inst	0x00670001 ; undefined
	...
    13b4:	b0000000 	adrp	x0, 2000 <fat32_open+0x16d8>
    13b8:	00000000 	.inst	0x00000000 ; undefined
    13bc:	c0000000 	.inst	0xc0000000 ; undefined
    13c0:	00000000 	.inst	0x00000000 ; undefined
    13c4:	02000000 	.inst	0x02000000 ; undefined
    13c8:	009f3000 	.inst	0x009f3000 ; undefined
	...
    13d8:	b0000000 	adrp	x0, 2000 <fat32_open+0x16d8>
    13dc:	00000000 	.inst	0x00000000 ; undefined
    13e0:	c0000000 	.inst	0xc0000000 ; undefined
    13e4:	00000000 	.inst	0x00000000 ; undefined
    13e8:	04000000 	add	z0.b, p0/m, z0.b, z0.b
    13ec:	01be0a00 	.inst	0x01be0a00 ; undefined
    13f0:	0000c09f 	.inst	0x0000c09f ; undefined
    13f4:	00000000 	.inst	0x00000000 ; undefined
    13f8:	0000f000 	.inst	0x0000f000 ; undefined
    13fc:	00000000 	.inst	0x00000000 ; undefined
    1400:	84000900 	ld1sb	{z0.s}, p2/z, [x8, z0.s, uxtw]
    1404:	1c008d00 	ldr	s0, 25a4 <fat32_open+0x1c7c>
    1408:	9f1c4808 	.inst	0x9f1c4808 ; undefined
    140c:	000000f0 	.inst	0x000000f0 ; undefined
    1410:	00000000 	.inst	0x00000000 ; undefined
    1414:	000000f8 	.inst	0x000000f8 ; undefined
    1418:	00000000 	.inst	0x00000000 ; undefined
    141c:	00840009 	.inst	0x00840009 ; undefined
    1420:	081c008d 	stxrb	w28, w13, [x4]
    1424:	009f1c38 	.inst	0x009f1c38 ; undefined
	...
    1434:	50000000 	adr	x0, 1436 <.debug_loc+0x1436>
    1438:	00000001 	.inst	0x00000001 ; undefined
    143c:	7c000000 	stur	h0, [x0]
    1440:	00000001 	.inst	0x00000001 ; undefined
    1444:	02000000 	.inst	0x02000000 ; undefined
    1448:	fc9f3000 	.inst	0xfc9f3000 ; undefined
    144c:	00000001 	.inst	0x00000001 ; undefined
    1450:	00000000 	.inst	0x00000000 ; undefined
    1454:	00000002 	.inst	0x00000002 ; undefined
    1458:	01000000 	.inst	0x01000000 ; undefined
    145c:	00006300 	.inst	0x00006300 ; undefined
	...
    146c:	01000000 	.inst	0x01000000 ; undefined
    1470:	00000000 	.inst	0x00000000 ; undefined
    1474:	01140000 	.inst	0x01140000 ; undefined
    1478:	00000000 	.inst	0x00000000 ; undefined
    147c:	00020000 	.inst	0x00020000 ; undefined
    1480:	01149f30 	.inst	0x01149f30 ; undefined
    1484:	00000000 	.inst	0x00000000 ; undefined
    1488:	01280000 	.inst	0x01280000 ; undefined
    148c:	00000000 	.inst	0x00000000 ; undefined
    1490:	00020000 	.inst	0x00020000 ; undefined
    1494:	01289f31 	.inst	0x01289f31 ; undefined
    1498:	00000000 	.inst	0x00000000 ; undefined
    149c:	013c0000 	.inst	0x013c0000 ; undefined
    14a0:	00000000 	.inst	0x00000000 ; undefined
    14a4:	00020000 	.inst	0x00020000 ; undefined
    14a8:	013c9f32 	.inst	0x013c9f32 ; undefined
    14ac:	00000000 	.inst	0x00000000 ; undefined
    14b0:	01500000 	.inst	0x01500000 ; undefined
    14b4:	00000000 	.inst	0x00000000 ; undefined
    14b8:	00020000 	.inst	0x00020000 ; undefined
    14bc:	01d09f33 	.inst	0x01d09f33 ; undefined
    14c0:	00000000 	.inst	0x00000000 ; undefined
    14c4:	01d80000 	.inst	0x01d80000 ; undefined
    14c8:	00000000 	.inst	0x00000000 ; undefined
    14cc:	00020000 	.inst	0x00020000 ; undefined
    14d0:	01d89f33 	.inst	0x01d89f33 ; undefined
    14d4:	00000000 	.inst	0x00000000 ; undefined
    14d8:	01e00000 	.inst	0x01e00000 ; undefined
    14dc:	00000000 	.inst	0x00000000 ; undefined
    14e0:	00020000 	.inst	0x00020000 ; undefined
    14e4:	01e09f31 	.inst	0x01e09f31 ; undefined
    14e8:	00000000 	.inst	0x00000000 ; undefined
    14ec:	01e80000 	.inst	0x01e80000 ; undefined
    14f0:	00000000 	.inst	0x00000000 ; undefined
    14f4:	00020000 	.inst	0x00020000 ; undefined
    14f8:	01e89f32 	.inst	0x01e89f32 ; undefined
    14fc:	00000000 	.inst	0x00000000 ; undefined
    1500:	01ec0000 	.inst	0x01ec0000 ; undefined
    1504:	00000000 	.inst	0x00000000 ; undefined
    1508:	00020000 	.inst	0x00020000 ; undefined
    150c:	00009f30 	.inst	0x00009f30 ; undefined
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	.inst	0x0000002c ; undefined
   4:	00000002 	.inst	0x00000002 ; undefined
   8:	00080000 	.inst	0x00080000 ; undefined
	...
  18:	00000bb4 	.inst	0x00000bb4 ; undefined
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	00000070 	.inst	0x00000070 ; undefined
   4:	00000000 	.inst	0x00000000 ; undefined
   8:	00000100 	.inst	0x00000100 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined
  10:	0000019c 	.inst	0x0000019c ; undefined
  14:	00000000 	.inst	0x00000000 ; undefined
  18:	000001d0 	.inst	0x000001d0 ; undefined
	...
  30:	00000100 	.inst	0x00000100 ; undefined
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	0000017c 	.inst	0x0000017c ; undefined
  3c:	00000000 	.inst	0x00000000 ; undefined
  40:	000001d0 	.inst	0x000001d0 ; undefined
  44:	00000000 	.inst	0x00000000 ; undefined
  48:	0000024c 	.inst	0x0000024c ; undefined
	...
  60:	00000100 	.inst	0x00000100 ; undefined
  64:	00000000 	.inst	0x00000000 ; undefined
  68:	00000150 	.inst	0x00000150 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
  70:	000001d0 	.inst	0x000001d0 ; undefined
  74:	00000000 	.inst	0x00000000 ; undefined
  78:	000001fc 	.inst	0x000001fc ; undefined
	...
  90:	0000024c 	.inst	0x0000024c ; undefined
  94:	00000000 	.inst	0x00000000 ; undefined
  98:	0000027c 	.inst	0x0000027c ; undefined
  9c:	00000000 	.inst	0x00000000 ; undefined
  a0:	00000344 	.inst	0x00000344 ; undefined
  a4:	00000000 	.inst	0x00000000 ; undefined
  a8:	00000364 	.inst	0x00000364 ; undefined
	...
  c0:	0000037c 	.inst	0x0000037c ; undefined
  c4:	00000000 	.inst	0x00000000 ; undefined
  c8:	000003b0 	.inst	0x000003b0 ; undefined
  cc:	00000000 	.inst	0x00000000 ; undefined
  d0:	000003b4 	.inst	0x000003b4 ; undefined
  d4:	00000000 	.inst	0x00000000 ; undefined
  d8:	000003f0 	.inst	0x000003f0 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	00020004 	.inst	0x00020004 ; undefined
   4:	07000000 	.inst	0x07000000 ; undefined
   8:	00000000 	.inst	0x00000000 ; undefined
   c:	03010003 	.inst	0x03010003 ; undefined
  10:	00070a01 	.inst	0x00070a01 ; undefined
  14:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  18:	05060303 	.inst	0x05060303 ; undefined
  1c:	00000002 	.inst	0x00000002 ; undefined
  20:	0b040300 	add	w0, w24, w4
  24:	07020b03 	.inst	0x07020b03 ; undefined
  28:	00000000 	.inst	0x00000000 ; undefined
  2c:	000d0504 	.inst	0x000d0504 ; undefined
  30:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  34:	05050603 	.inst	0x05050603 ; undefined
  38:	00000002 	.inst	0x00000002 ; undefined
  3c:	04060300 	.inst	0x04060300 ; undefined
  40:	00000605 	.inst	0x00000605 ; undefined
  44:	08030000 	stxrb	w3, w0, [x0]
  48:	0006050c 	.inst	0x0006050c ; undefined
  4c:	03000000 	.inst	0x03000000 ; undefined
  50:	00070309 	.inst	0x00070309 ; undefined
  54:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  58:	00000007 	.inst	0x00000007 ; undefined
  5c:	00070400 	.inst	0x00070400 ; undefined
  60:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  64:	00000805 	.inst	0x00000805 ; undefined
  68:	07040000 	.inst	0x07040000 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
  70:	0d050304 	.inst	0x0d050304 ; undefined
  74:	00000007 	.inst	0x00000007 ; undefined
  78:	06030400 	.inst	0x06030400 ; undefined
  7c:	00020507 	.inst	0x00020507 ; undefined
  80:	03000000 	.inst	0x03000000 ; undefined
  84:	04040304 	.inst	0x04040304 ; undefined
  88:	05090703 	.inst	0x05090703 ; undefined
  8c:	00000002 	.inst	0x00000002 ; undefined
  90:	0e040300 	tbl	v0.8b, {v24.16b}, v4.8b
  94:	00000007 	.inst	0x00000007 ; undefined
  98:	00070400 	.inst	0x00070400 ; undefined
  9c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  a0:	05080803 	.inst	0x05080803 ; undefined
  a4:	00000002 	.inst	0x00000002 ; undefined
  a8:	03050300 	.inst	0x03050300 ; undefined
  ac:	00000704 	.inst	0x00000704 ; undefined
  b0:	03040000 	.inst	0x03040000 ; undefined
  b4:	00070f09 	.inst	0x00070f09 ; undefined
  b8:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  bc:	地址 0x00000000000000bc 越界。


Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000000 	.inst	0x00000000 ; undefined
   8:	00000500 	.inst	0x00000500 ; undefined
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	00000000 	.inst	0x00000000 ; undefined
  14:	00000500 	.inst	0x00000500 ; undefined
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	00000000 	.inst	0x00000000 ; undefined
  20:	00000500 	.inst	0x00000500 ; undefined
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	00000000 	.inst	0x00000000 ; undefined
  2c:	00000500 	.inst	0x00000500 ; undefined
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	00000500 	.inst	0x00000500 ; undefined
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	00000000 	.inst	0x00000000 ; undefined
  44:	00000500 	.inst	0x00000500 ; undefined
  48:	05000000 	orr	z0.s, z0.s, #0x1
  4c:	00000000 	.inst	0x00000000 ; undefined
  50:	00000500 	.inst	0x00000500 ; undefined
  54:	05000000 	orr	z0.s, z0.s, #0x1
  58:	00000000 	.inst	0x00000000 ; undefined
  5c:	00000500 	.inst	0x00000500 ; undefined
  60:	05000000 	orr	z0.s, z0.s, #0x1
  64:	00000000 	.inst	0x00000000 ; undefined
  68:	00000500 	.inst	0x00000500 ; undefined
  6c:	05000000 	orr	z0.s, z0.s, #0x1
  70:	00000000 	.inst	0x00000000 ; undefined
  74:	00000500 	.inst	0x00000500 ; undefined
  78:	05000000 	orr	z0.s, z0.s, #0x1
  7c:	00000000 	.inst	0x00000000 ; undefined
  80:	00000500 	.inst	0x00000500 ; undefined
  84:	05000000 	orr	z0.s, z0.s, #0x1
  88:	00000000 	.inst	0x00000000 ; undefined
  8c:	00000500 	.inst	0x00000500 ; undefined
  90:	05000000 	orr	z0.s, z0.s, #0x1
  94:	00000000 	.inst	0x00000000 ; undefined
  98:	00000500 	.inst	0x00000500 ; undefined
  9c:	05000000 	orr	z0.s, z0.s, #0x1
  a0:	00000000 	.inst	0x00000000 ; undefined
  a4:	00000500 	.inst	0x00000500 ; undefined
  a8:	05000000 	orr	z0.s, z0.s, #0x1
  ac:	00000000 	.inst	0x00000000 ; undefined
  b0:	00000500 	.inst	0x00000500 ; undefined
  b4:	05000000 	orr	z0.s, z0.s, #0x1
  b8:	00000000 	.inst	0x00000000 ; undefined
  bc:	00000500 	.inst	0x00000500 ; undefined
  c0:	05000000 	orr	z0.s, z0.s, #0x1
  c4:	00000000 	.inst	0x00000000 ; undefined
  c8:	00000500 	.inst	0x00000500 ; undefined
  cc:	05000000 	orr	z0.s, z0.s, #0x1
  d0:	00000000 	.inst	0x00000000 ; undefined
  d4:	00000500 	.inst	0x00000500 ; undefined
  d8:	05000000 	orr	z0.s, z0.s, #0x1
  dc:	00000000 	.inst	0x00000000 ; undefined
  e0:	00000500 	.inst	0x00000500 ; undefined
  e4:	05000000 	orr	z0.s, z0.s, #0x1
  e8:	00000000 	.inst	0x00000000 ; undefined
  ec:	00000500 	.inst	0x00000500 ; undefined
  f0:	05000000 	orr	z0.s, z0.s, #0x1
  f4:	00000000 	.inst	0x00000000 ; undefined
  f8:	00000500 	.inst	0x00000500 ; undefined
  fc:	05000000 	orr	z0.s, z0.s, #0x1
 100:	00000000 	.inst	0x00000000 ; undefined
 104:	00000500 	.inst	0x00000500 ; undefined
 108:	05000000 	orr	z0.s, z0.s, #0x1
 10c:	00000000 	.inst	0x00000000 ; undefined
 110:	00000500 	.inst	0x00000500 ; undefined
 114:	05000000 	orr	z0.s, z0.s, #0x1
 118:	00000000 	.inst	0x00000000 ; undefined
 11c:	00000500 	.inst	0x00000500 ; undefined
 120:	05000000 	orr	z0.s, z0.s, #0x1
 124:	00000000 	.inst	0x00000000 ; undefined
 128:	00000500 	.inst	0x00000500 ; undefined
 12c:	05000000 	orr	z0.s, z0.s, #0x1
 130:	00000000 	.inst	0x00000000 ; undefined
 134:	00000500 	.inst	0x00000500 ; undefined
 138:	05000000 	orr	z0.s, z0.s, #0x1
 13c:	00000000 	.inst	0x00000000 ; undefined
 140:	00000500 	.inst	0x00000500 ; undefined
 144:	05000000 	orr	z0.s, z0.s, #0x1
 148:	00000000 	.inst	0x00000000 ; undefined
 14c:	00000500 	.inst	0x00000500 ; undefined
 150:	05000000 	orr	z0.s, z0.s, #0x1
 154:	00000000 	.inst	0x00000000 ; undefined
 158:	00000500 	.inst	0x00000500 ; undefined
 15c:	05000000 	orr	z0.s, z0.s, #0x1
 160:	00000000 	.inst	0x00000000 ; undefined
 164:	00000500 	.inst	0x00000500 ; undefined
 168:	05000000 	orr	z0.s, z0.s, #0x1
 16c:	00000000 	.inst	0x00000000 ; undefined
 170:	00000500 	.inst	0x00000500 ; undefined
 174:	05000000 	orr	z0.s, z0.s, #0x1
 178:	00000000 	.inst	0x00000000 ; undefined
 17c:	00000500 	.inst	0x00000500 ; undefined
 180:	05000000 	orr	z0.s, z0.s, #0x1
 184:	00000000 	.inst	0x00000000 ; undefined
 188:	00000500 	.inst	0x00000500 ; undefined
 18c:	05000000 	orr	z0.s, z0.s, #0x1
 190:	00000000 	.inst	0x00000000 ; undefined
 194:	00000500 	.inst	0x00000500 ; undefined
 198:	05000000 	orr	z0.s, z0.s, #0x1
 19c:	00000000 	.inst	0x00000000 ; undefined
 1a0:	00000500 	.inst	0x00000500 ; undefined
 1a4:	05000000 	orr	z0.s, z0.s, #0x1
 1a8:	00000000 	.inst	0x00000000 ; undefined
 1ac:	00000500 	.inst	0x00000500 ; undefined
 1b0:	05000000 	orr	z0.s, z0.s, #0x1
 1b4:	00000000 	.inst	0x00000000 ; undefined
 1b8:	00000500 	.inst	0x00000500 ; undefined
 1bc:	05000000 	orr	z0.s, z0.s, #0x1
 1c0:	00000000 	.inst	0x00000000 ; undefined
 1c4:	00000500 	.inst	0x00000500 ; undefined
 1c8:	05000000 	orr	z0.s, z0.s, #0x1
 1cc:	00000000 	.inst	0x00000000 ; undefined
 1d0:	00000500 	.inst	0x00000500 ; undefined
 1d4:	05000000 	orr	z0.s, z0.s, #0x1
 1d8:	00000000 	.inst	0x00000000 ; undefined
 1dc:	00000500 	.inst	0x00000500 ; undefined
 1e0:	05000000 	orr	z0.s, z0.s, #0x1
 1e4:	00000000 	.inst	0x00000000 ; undefined
 1e8:	00000500 	.inst	0x00000500 ; undefined
 1ec:	05000000 	orr	z0.s, z0.s, #0x1
 1f0:	00000000 	.inst	0x00000000 ; undefined
 1f4:	00000500 	.inst	0x00000500 ; undefined
 1f8:	05000000 	orr	z0.s, z0.s, #0x1
 1fc:	00000000 	.inst	0x00000000 ; undefined
 200:	00000500 	.inst	0x00000500 ; undefined
 204:	05000000 	orr	z0.s, z0.s, #0x1
 208:	00000000 	.inst	0x00000000 ; undefined
 20c:	00000500 	.inst	0x00000500 ; undefined
 210:	05000000 	orr	z0.s, z0.s, #0x1
 214:	00000000 	.inst	0x00000000 ; undefined
 218:	00000500 	.inst	0x00000500 ; undefined
 21c:	05000000 	orr	z0.s, z0.s, #0x1
 220:	00000000 	.inst	0x00000000 ; undefined
 224:	00000500 	.inst	0x00000500 ; undefined
 228:	05000000 	orr	z0.s, z0.s, #0x1
 22c:	00000000 	.inst	0x00000000 ; undefined
 230:	00000500 	.inst	0x00000500 ; undefined
 234:	05000000 	orr	z0.s, z0.s, #0x1
 238:	00000000 	.inst	0x00000000 ; undefined
 23c:	00000500 	.inst	0x00000500 ; undefined
 240:	05000000 	orr	z0.s, z0.s, #0x1
 244:	00000000 	.inst	0x00000000 ; undefined
 248:	00000500 	.inst	0x00000500 ; undefined
 24c:	05000000 	orr	z0.s, z0.s, #0x1
 250:	00000000 	.inst	0x00000000 ; undefined
 254:	00000500 	.inst	0x00000500 ; undefined
 258:	05000000 	orr	z0.s, z0.s, #0x1
 25c:	00000000 	.inst	0x00000000 ; undefined
 260:	00000500 	.inst	0x00000500 ; undefined
 264:	05000000 	orr	z0.s, z0.s, #0x1
 268:	00000000 	.inst	0x00000000 ; undefined
 26c:	00000500 	.inst	0x00000500 ; undefined
 270:	05000000 	orr	z0.s, z0.s, #0x1
 274:	00000000 	.inst	0x00000000 ; undefined
 278:	00000500 	.inst	0x00000500 ; undefined
 27c:	05000000 	orr	z0.s, z0.s, #0x1
 280:	00000000 	.inst	0x00000000 ; undefined
 284:	00000500 	.inst	0x00000500 ; undefined
 288:	05000000 	orr	z0.s, z0.s, #0x1
 28c:	00000000 	.inst	0x00000000 ; undefined
 290:	00000500 	.inst	0x00000500 ; undefined
 294:	05000000 	orr	z0.s, z0.s, #0x1
 298:	00000000 	.inst	0x00000000 ; undefined
 29c:	00000500 	.inst	0x00000500 ; undefined
 2a0:	05000000 	orr	z0.s, z0.s, #0x1
 2a4:	00000000 	.inst	0x00000000 ; undefined
 2a8:	00000500 	.inst	0x00000500 ; undefined
 2ac:	05000000 	orr	z0.s, z0.s, #0x1
 2b0:	00000000 	.inst	0x00000000 ; undefined
 2b4:	00000500 	.inst	0x00000500 ; undefined
 2b8:	05000000 	orr	z0.s, z0.s, #0x1
 2bc:	00000000 	.inst	0x00000000 ; undefined
 2c0:	00000500 	.inst	0x00000500 ; undefined
 2c4:	05000000 	orr	z0.s, z0.s, #0x1
 2c8:	00000000 	.inst	0x00000000 ; undefined
 2cc:	00000500 	.inst	0x00000500 ; undefined
 2d0:	05000000 	orr	z0.s, z0.s, #0x1
 2d4:	00000000 	.inst	0x00000000 ; undefined
 2d8:	00000500 	.inst	0x00000500 ; undefined
 2dc:	05000000 	orr	z0.s, z0.s, #0x1
 2e0:	00000000 	.inst	0x00000000 ; undefined
 2e4:	00000500 	.inst	0x00000500 ; undefined
 2e8:	05000000 	orr	z0.s, z0.s, #0x1
 2ec:	00000000 	.inst	0x00000000 ; undefined
 2f0:	00000500 	.inst	0x00000500 ; undefined
 2f4:	05000000 	orr	z0.s, z0.s, #0x1
 2f8:	00000000 	.inst	0x00000000 ; undefined
 2fc:	00000500 	.inst	0x00000500 ; undefined
 300:	05000000 	orr	z0.s, z0.s, #0x1
 304:	00000000 	.inst	0x00000000 ; undefined
 308:	00000500 	.inst	0x00000500 ; undefined
 30c:	05000000 	orr	z0.s, z0.s, #0x1
 310:	00000000 	.inst	0x00000000 ; undefined
 314:	00000500 	.inst	0x00000500 ; undefined
 318:	05000000 	orr	z0.s, z0.s, #0x1
 31c:	00000000 	.inst	0x00000000 ; undefined
 320:	00000500 	.inst	0x00000500 ; undefined
 324:	05000000 	orr	z0.s, z0.s, #0x1
 328:	00000000 	.inst	0x00000000 ; undefined
 32c:	00000500 	.inst	0x00000500 ; undefined
 330:	05000000 	orr	z0.s, z0.s, #0x1
 334:	00000000 	.inst	0x00000000 ; undefined
 338:	00000500 	.inst	0x00000500 ; undefined
 33c:	05000000 	orr	z0.s, z0.s, #0x1
 340:	00000000 	.inst	0x00000000 ; undefined
 344:	00000500 	.inst	0x00000500 ; undefined
 348:	05000000 	orr	z0.s, z0.s, #0x1
 34c:	00000000 	.inst	0x00000000 ; undefined
 350:	00000500 	.inst	0x00000500 ; undefined
 354:	05000000 	orr	z0.s, z0.s, #0x1
 358:	00000000 	.inst	0x00000000 ; undefined
 35c:	00000500 	.inst	0x00000500 ; undefined
 360:	05000000 	orr	z0.s, z0.s, #0x1
 364:	00000000 	.inst	0x00000000 ; undefined
 368:	00000500 	.inst	0x00000500 ; undefined
 36c:	05000000 	orr	z0.s, z0.s, #0x1
 370:	00000000 	.inst	0x00000000 ; undefined
 374:	00000500 	.inst	0x00000500 ; undefined
 378:	05000000 	orr	z0.s, z0.s, #0x1
 37c:	00000000 	.inst	0x00000000 ; undefined
 380:	00000500 	.inst	0x00000500 ; undefined
 384:	05000000 	orr	z0.s, z0.s, #0x1
 388:	00000000 	.inst	0x00000000 ; undefined
 38c:	00000500 	.inst	0x00000500 ; undefined
 390:	05000000 	orr	z0.s, z0.s, #0x1
 394:	00000000 	.inst	0x00000000 ; undefined
 398:	00000500 	.inst	0x00000500 ; undefined
 39c:	05000000 	orr	z0.s, z0.s, #0x1
 3a0:	00000000 	.inst	0x00000000 ; undefined
 3a4:	00000500 	.inst	0x00000500 ; undefined
 3a8:	05000000 	orr	z0.s, z0.s, #0x1
 3ac:	00000000 	.inst	0x00000000 ; undefined
 3b0:	00000500 	.inst	0x00000500 ; undefined
 3b4:	05000000 	orr	z0.s, z0.s, #0x1
 3b8:	00000000 	.inst	0x00000000 ; undefined
 3bc:	00000500 	.inst	0x00000500 ; undefined
 3c0:	05000000 	orr	z0.s, z0.s, #0x1
 3c4:	00000000 	.inst	0x00000000 ; undefined
 3c8:	00000500 	.inst	0x00000500 ; undefined
 3cc:	05000000 	orr	z0.s, z0.s, #0x1
 3d0:	00000000 	.inst	0x00000000 ; undefined
 3d4:	00000500 	.inst	0x00000500 ; undefined
 3d8:	05000000 	orr	z0.s, z0.s, #0x1
 3dc:	00000000 	.inst	0x00000000 ; undefined
 3e0:	00000500 	.inst	0x00000500 ; undefined
 3e4:	05000000 	orr	z0.s, z0.s, #0x1
 3e8:	00000000 	.inst	0x00000000 ; undefined
 3ec:	00000500 	.inst	0x00000500 ; undefined
 3f0:	05000000 	orr	z0.s, z0.s, #0x1
 3f4:	00000000 	.inst	0x00000000 ; undefined
 3f8:	00000500 	.inst	0x00000500 ; undefined
 3fc:	05000000 	orr	z0.s, z0.s, #0x1
 400:	00000000 	.inst	0x00000000 ; undefined
 404:	00000500 	.inst	0x00000500 ; undefined
 408:	05000000 	orr	z0.s, z0.s, #0x1
 40c:	00000000 	.inst	0x00000000 ; undefined
 410:	00000500 	.inst	0x00000500 ; undefined
 414:	05000000 	orr	z0.s, z0.s, #0x1
 418:	00000000 	.inst	0x00000000 ; undefined
 41c:	00000500 	.inst	0x00000500 ; undefined
 420:	05000000 	orr	z0.s, z0.s, #0x1
 424:	00000000 	.inst	0x00000000 ; undefined
 428:	00000500 	.inst	0x00000500 ; undefined
 42c:	05000000 	orr	z0.s, z0.s, #0x1
 430:	00000000 	.inst	0x00000000 ; undefined
 434:	00000500 	.inst	0x00000500 ; undefined
 438:	05000000 	orr	z0.s, z0.s, #0x1
 43c:	00000000 	.inst	0x00000000 ; undefined
 440:	00000500 	.inst	0x00000500 ; undefined
 444:	05000000 	orr	z0.s, z0.s, #0x1
 448:	00000000 	.inst	0x00000000 ; undefined
 44c:	00000500 	.inst	0x00000500 ; undefined
 450:	05000000 	orr	z0.s, z0.s, #0x1
 454:	00000000 	.inst	0x00000000 ; undefined
 458:	00000500 	.inst	0x00000500 ; undefined
 45c:	05000000 	orr	z0.s, z0.s, #0x1
 460:	00000000 	.inst	0x00000000 ; undefined
 464:	00000500 	.inst	0x00000500 ; undefined
 468:	05000000 	orr	z0.s, z0.s, #0x1
 46c:	00000000 	.inst	0x00000000 ; undefined
 470:	00000500 	.inst	0x00000500 ; undefined
 474:	05000000 	orr	z0.s, z0.s, #0x1
 478:	00000000 	.inst	0x00000000 ; undefined
 47c:	00000500 	.inst	0x00000500 ; undefined
 480:	05000000 	orr	z0.s, z0.s, #0x1
 484:	00000000 	.inst	0x00000000 ; undefined
 488:	00000500 	.inst	0x00000500 ; undefined
 48c:	05000000 	orr	z0.s, z0.s, #0x1
 490:	00000000 	.inst	0x00000000 ; undefined
 494:	00000500 	.inst	0x00000500 ; undefined
 498:	05000000 	orr	z0.s, z0.s, #0x1
 49c:	00000000 	.inst	0x00000000 ; undefined
 4a0:	00000500 	.inst	0x00000500 ; undefined
 4a4:	05000000 	orr	z0.s, z0.s, #0x1
 4a8:	00000000 	.inst	0x00000000 ; undefined
 4ac:	00000500 	.inst	0x00000500 ; undefined
 4b0:	05000000 	orr	z0.s, z0.s, #0x1
 4b4:	00000000 	.inst	0x00000000 ; undefined
 4b8:	00000500 	.inst	0x00000500 ; undefined
 4bc:	05000000 	orr	z0.s, z0.s, #0x1
 4c0:	00000000 	.inst	0x00000000 ; undefined
 4c4:	00000500 	.inst	0x00000500 ; undefined
 4c8:	05000000 	orr	z0.s, z0.s, #0x1
 4cc:	00000000 	.inst	0x00000000 ; undefined
 4d0:	00000500 	.inst	0x00000500 ; undefined
 4d4:	05000000 	orr	z0.s, z0.s, #0x1
 4d8:	00000000 	.inst	0x00000000 ; undefined
 4dc:	00000500 	.inst	0x00000500 ; undefined
 4e0:	05000000 	orr	z0.s, z0.s, #0x1
 4e4:	00000000 	.inst	0x00000000 ; undefined
 4e8:	00000500 	.inst	0x00000500 ; undefined
 4ec:	05000000 	orr	z0.s, z0.s, #0x1
 4f0:	00000000 	.inst	0x00000000 ; undefined
 4f4:	00000500 	.inst	0x00000500 ; undefined
 4f8:	05000000 	orr	z0.s, z0.s, #0x1
 4fc:	00000000 	.inst	0x00000000 ; undefined
 500:	00000500 	.inst	0x00000500 ; undefined
 504:	05000000 	orr	z0.s, z0.s, #0x1
 508:	00000000 	.inst	0x00000000 ; undefined
 50c:	00000500 	.inst	0x00000500 ; undefined
 510:	05000000 	orr	z0.s, z0.s, #0x1
 514:	00000000 	.inst	0x00000000 ; undefined
 518:	00000500 	.inst	0x00000500 ; undefined
 51c:	05000000 	orr	z0.s, z0.s, #0x1
 520:	00000000 	.inst	0x00000000 ; undefined
 524:	00000500 	.inst	0x00000500 ; undefined
 528:	05000000 	orr	z0.s, z0.s, #0x1
 52c:	00000000 	.inst	0x00000000 ; undefined
 530:	00000500 	.inst	0x00000500 ; undefined
 534:	05000000 	orr	z0.s, z0.s, #0x1
 538:	00000000 	.inst	0x00000000 ; undefined
 53c:	00000500 	.inst	0x00000500 ; undefined
 540:	05000000 	orr	z0.s, z0.s, #0x1
 544:	00000000 	.inst	0x00000000 ; undefined
 548:	00000500 	.inst	0x00000500 ; undefined
 54c:	05000000 	orr	z0.s, z0.s, #0x1
 550:	00000000 	.inst	0x00000000 ; undefined
 554:	00000500 	.inst	0x00000500 ; undefined
 558:	05000000 	orr	z0.s, z0.s, #0x1
 55c:	00000000 	.inst	0x00000000 ; undefined
 560:	00000500 	.inst	0x00000500 ; undefined
 564:	05000000 	orr	z0.s, z0.s, #0x1
 568:	00000000 	.inst	0x00000000 ; undefined
 56c:	00000500 	.inst	0x00000500 ; undefined
 570:	05000000 	orr	z0.s, z0.s, #0x1
 574:	00000000 	.inst	0x00000000 ; undefined
 578:	00000500 	.inst	0x00000500 ; undefined
 57c:	05000000 	orr	z0.s, z0.s, #0x1
 580:	00000000 	.inst	0x00000000 ; undefined
 584:	00000500 	.inst	0x00000500 ; undefined
 588:	05000000 	orr	z0.s, z0.s, #0x1
 58c:	00000000 	.inst	0x00000000 ; undefined
 590:	00000500 	.inst	0x00000500 ; undefined
 594:	05000000 	orr	z0.s, z0.s, #0x1
 598:	00000000 	.inst	0x00000000 ; undefined
 59c:	00000500 	.inst	0x00000500 ; undefined
 5a0:	05000000 	orr	z0.s, z0.s, #0x1
 5a4:	00000000 	.inst	0x00000000 ; undefined
 5a8:	00000500 	.inst	0x00000500 ; undefined
 5ac:	05000000 	orr	z0.s, z0.s, #0x1
 5b0:	00000000 	.inst	0x00000000 ; undefined
 5b4:	00000500 	.inst	0x00000500 ; undefined
 5b8:	05000000 	orr	z0.s, z0.s, #0x1
 5bc:	00000000 	.inst	0x00000000 ; undefined
 5c0:	00000500 	.inst	0x00000500 ; undefined
 5c4:	05000000 	orr	z0.s, z0.s, #0x1
 5c8:	00000000 	.inst	0x00000000 ; undefined
 5cc:	00000500 	.inst	0x00000500 ; undefined
 5d0:	05000000 	orr	z0.s, z0.s, #0x1
 5d4:	00000000 	.inst	0x00000000 ; undefined
 5d8:	00000500 	.inst	0x00000500 ; undefined
 5dc:	05000000 	orr	z0.s, z0.s, #0x1
 5e0:	00000000 	.inst	0x00000000 ; undefined
 5e4:	00000500 	.inst	0x00000500 ; undefined
 5e8:	05000000 	orr	z0.s, z0.s, #0x1
 5ec:	00000000 	.inst	0x00000000 ; undefined
 5f0:	00000500 	.inst	0x00000500 ; undefined
 5f4:	05000000 	orr	z0.s, z0.s, #0x1
 5f8:	00000000 	.inst	0x00000000 ; undefined
 5fc:	00000500 	.inst	0x00000500 ; undefined
 600:	05000000 	orr	z0.s, z0.s, #0x1
 604:	00000000 	.inst	0x00000000 ; undefined
 608:	00000500 	.inst	0x00000500 ; undefined
 60c:	05000000 	orr	z0.s, z0.s, #0x1
 610:	00000000 	.inst	0x00000000 ; undefined
 614:	00000500 	.inst	0x00000500 ; undefined
 618:	05000000 	orr	z0.s, z0.s, #0x1
 61c:	00000000 	.inst	0x00000000 ; undefined
 620:	00000500 	.inst	0x00000500 ; undefined
 624:	05000000 	orr	z0.s, z0.s, #0x1
 628:	00000000 	.inst	0x00000000 ; undefined
 62c:	00000500 	.inst	0x00000500 ; undefined
 630:	05000000 	orr	z0.s, z0.s, #0x1
 634:	00000000 	.inst	0x00000000 ; undefined
 638:	00000500 	.inst	0x00000500 ; undefined
 63c:	05000000 	orr	z0.s, z0.s, #0x1
 640:	00000000 	.inst	0x00000000 ; undefined
 644:	00000500 	.inst	0x00000500 ; undefined
 648:	05000000 	orr	z0.s, z0.s, #0x1
 64c:	00000000 	.inst	0x00000000 ; undefined
 650:	00000500 	.inst	0x00000500 ; undefined
 654:	05000000 	orr	z0.s, z0.s, #0x1
 658:	00000000 	.inst	0x00000000 ; undefined
 65c:	00000500 	.inst	0x00000500 ; undefined
 660:	05000000 	orr	z0.s, z0.s, #0x1
 664:	00000000 	.inst	0x00000000 ; undefined
 668:	00000500 	.inst	0x00000500 ; undefined
 66c:	05000000 	orr	z0.s, z0.s, #0x1
 670:	00000000 	.inst	0x00000000 ; undefined
 674:	00000500 	.inst	0x00000500 ; undefined
 678:	05000000 	orr	z0.s, z0.s, #0x1
 67c:	00000000 	.inst	0x00000000 ; undefined
 680:	00000500 	.inst	0x00000500 ; undefined
 684:	05000000 	orr	z0.s, z0.s, #0x1
 688:	00000000 	.inst	0x00000000 ; undefined
 68c:	00000500 	.inst	0x00000500 ; undefined
 690:	05000000 	orr	z0.s, z0.s, #0x1
 694:	00000000 	.inst	0x00000000 ; undefined
 698:	00000500 	.inst	0x00000500 ; undefined
 69c:	05000000 	orr	z0.s, z0.s, #0x1
 6a0:	00000000 	.inst	0x00000000 ; undefined
 6a4:	00000500 	.inst	0x00000500 ; undefined
 6a8:	05000000 	orr	z0.s, z0.s, #0x1
 6ac:	00000000 	.inst	0x00000000 ; undefined
 6b0:	00000500 	.inst	0x00000500 ; undefined
 6b4:	05000000 	orr	z0.s, z0.s, #0x1
 6b8:	00000000 	.inst	0x00000000 ; undefined
 6bc:	00000500 	.inst	0x00000500 ; undefined
 6c0:	05000000 	orr	z0.s, z0.s, #0x1
 6c4:	00000000 	.inst	0x00000000 ; undefined
 6c8:	00000500 	.inst	0x00000500 ; undefined
 6cc:	05000000 	orr	z0.s, z0.s, #0x1
 6d0:	00000000 	.inst	0x00000000 ; undefined
 6d4:	00000500 	.inst	0x00000500 ; undefined
 6d8:	05000000 	orr	z0.s, z0.s, #0x1
 6dc:	00000000 	.inst	0x00000000 ; undefined
 6e0:	00000500 	.inst	0x00000500 ; undefined
 6e4:	05000000 	orr	z0.s, z0.s, #0x1
 6e8:	00000000 	.inst	0x00000000 ; undefined
 6ec:	00000500 	.inst	0x00000500 ; undefined
 6f0:	05000000 	orr	z0.s, z0.s, #0x1
 6f4:	00000000 	.inst	0x00000000 ; undefined
 6f8:	00000500 	.inst	0x00000500 ; undefined
 6fc:	05000000 	orr	z0.s, z0.s, #0x1
 700:	00000000 	.inst	0x00000000 ; undefined
 704:	00000500 	.inst	0x00000500 ; undefined
 708:	05000000 	orr	z0.s, z0.s, #0x1
 70c:	00000000 	.inst	0x00000000 ; undefined
 710:	00000500 	.inst	0x00000500 ; undefined
 714:	05000000 	orr	z0.s, z0.s, #0x1
 718:	00000000 	.inst	0x00000000 ; undefined
 71c:	00000500 	.inst	0x00000500 ; undefined
 720:	05000000 	orr	z0.s, z0.s, #0x1
 724:	00000000 	.inst	0x00000000 ; undefined
 728:	00000500 	.inst	0x00000500 ; undefined
 72c:	05000000 	orr	z0.s, z0.s, #0x1
 730:	00000000 	.inst	0x00000000 ; undefined
 734:	00000500 	.inst	0x00000500 ; undefined
 738:	05000000 	orr	z0.s, z0.s, #0x1
 73c:	00000000 	.inst	0x00000000 ; undefined
 740:	00000500 	.inst	0x00000500 ; undefined
 744:	05000000 	orr	z0.s, z0.s, #0x1
 748:	00000000 	.inst	0x00000000 ; undefined
 74c:	00000500 	.inst	0x00000500 ; undefined
 750:	05000000 	orr	z0.s, z0.s, #0x1
 754:	00000000 	.inst	0x00000000 ; undefined
 758:	00000500 	.inst	0x00000500 ; undefined
 75c:	05000000 	orr	z0.s, z0.s, #0x1
 760:	00000000 	.inst	0x00000000 ; undefined
 764:	00000500 	.inst	0x00000500 ; undefined
 768:	05000000 	orr	z0.s, z0.s, #0x1
 76c:	00000000 	.inst	0x00000000 ; undefined
 770:	00000500 	.inst	0x00000500 ; undefined
 774:	05000000 	orr	z0.s, z0.s, #0x1
 778:	00000000 	.inst	0x00000000 ; undefined
 77c:	00000500 	.inst	0x00000500 ; undefined
 780:	05000000 	orr	z0.s, z0.s, #0x1
 784:	00000000 	.inst	0x00000000 ; undefined
 788:	00000500 	.inst	0x00000500 ; undefined
 78c:	05000000 	orr	z0.s, z0.s, #0x1
 790:	00000000 	.inst	0x00000000 ; undefined
 794:	00000500 	.inst	0x00000500 ; undefined
 798:	05000000 	orr	z0.s, z0.s, #0x1
 79c:	00000000 	.inst	0x00000000 ; undefined
 7a0:	00000500 	.inst	0x00000500 ; undefined
 7a4:	05000000 	orr	z0.s, z0.s, #0x1
 7a8:	00000000 	.inst	0x00000000 ; undefined
 7ac:	00000500 	.inst	0x00000500 ; undefined
 7b0:	05000000 	orr	z0.s, z0.s, #0x1
 7b4:	00000000 	.inst	0x00000000 ; undefined
 7b8:	00000500 	.inst	0x00000500 ; undefined
 7bc:	05000000 	orr	z0.s, z0.s, #0x1
 7c0:	00000000 	.inst	0x00000000 ; undefined
 7c4:	00000500 	.inst	0x00000500 ; undefined
 7c8:	05000000 	orr	z0.s, z0.s, #0x1
 7cc:	00000000 	.inst	0x00000000 ; undefined
 7d0:	00000500 	.inst	0x00000500 ; undefined
 7d4:	05000000 	orr	z0.s, z0.s, #0x1
 7d8:	00000000 	.inst	0x00000000 ; undefined
 7dc:	00000500 	.inst	0x00000500 ; undefined
 7e0:	05000000 	orr	z0.s, z0.s, #0x1
 7e4:	00000000 	.inst	0x00000000 ; undefined
 7e8:	00000500 	.inst	0x00000500 ; undefined
 7ec:	05000000 	orr	z0.s, z0.s, #0x1
 7f0:	00000000 	.inst	0x00000000 ; undefined
 7f4:	00000500 	.inst	0x00000500 ; undefined
 7f8:	05000000 	orr	z0.s, z0.s, #0x1
 7fc:	00000000 	.inst	0x00000000 ; undefined
 800:	00000500 	.inst	0x00000500 ; undefined
 804:	05000000 	orr	z0.s, z0.s, #0x1
 808:	00000000 	.inst	0x00000000 ; undefined
 80c:	00000500 	.inst	0x00000500 ; undefined
 810:	06000000 	.inst	0x06000000 ; undefined
 814:	00000000 	.inst	0x00000000 ; undefined
 818:	00000500 	.inst	0x00000500 ; undefined
 81c:	05000000 	orr	z0.s, z0.s, #0x1
 820:	00000000 	.inst	0x00000000 ; undefined
 824:	00000600 	.inst	0x00000600 ; undefined
 828:	06000000 	.inst	0x06000000 ; undefined
 82c:	00000000 	.inst	0x00000000 ; undefined
 830:	00000500 	.inst	0x00000500 ; undefined
 834:	05000000 	orr	z0.s, z0.s, #0x1
 838:	00000000 	.inst	0x00000000 ; undefined
 83c:	00000500 	.inst	0x00000500 ; undefined
 840:	05000000 	orr	z0.s, z0.s, #0x1
 844:	00000000 	.inst	0x00000000 ; undefined
 848:	00000500 	.inst	0x00000500 ; undefined
 84c:	06000000 	.inst	0x06000000 ; undefined
 850:	00000000 	.inst	0x00000000 ; undefined
 854:	00000600 	.inst	0x00000600 ; undefined
 858:	05000000 	orr	z0.s, z0.s, #0x1
 85c:	00000000 	.inst	0x00000000 ; undefined
 860:	00000500 	.inst	0x00000500 ; undefined
 864:	06000000 	.inst	0x06000000 ; undefined
 868:	00000000 	.inst	0x00000000 ; undefined
 86c:	00000600 	.inst	0x00000600 ; undefined
 870:	06000000 	.inst	0x06000000 ; undefined
 874:	00000000 	.inst	0x00000000 ; undefined
 878:	00000600 	.inst	0x00000600 ; undefined
 87c:	06000000 	.inst	0x06000000 ; undefined
 880:	00000000 	.inst	0x00000000 ; undefined
 884:	00000600 	.inst	0x00000600 ; undefined
 888:	06000000 	.inst	0x06000000 ; undefined
 88c:	00000000 	.inst	0x00000000 ; undefined
 890:	00000600 	.inst	0x00000600 ; undefined
 894:	06000000 	.inst	0x06000000 ; undefined
 898:	00000000 	.inst	0x00000000 ; undefined
 89c:	00000500 	.inst	0x00000500 ; undefined
 8a0:	06000000 	.inst	0x06000000 ; undefined
 8a4:	00000000 	.inst	0x00000000 ; undefined
 8a8:	00000500 	.inst	0x00000500 ; undefined
 8ac:	05000000 	orr	z0.s, z0.s, #0x1
 8b0:	00000000 	.inst	0x00000000 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	0000001d 	.inst	0x0000001d ; undefined
   8:	00210500 	.inst	0x00210500 ; NYI
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	00000022 	.inst	0x00000022 ; undefined
  14:	00230500 	.inst	0x00230500 ; NYI
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	00000034 	.inst	0x00000034 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	0000001d 	.inst	0x0000001d ; undefined
   8:	00640600 	.inst	0x00640600 ; undefined
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	00000065 	.inst	0x00000065 ; undefined
  14:	00660600 	.inst	0x00660600 ; undefined
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	00000067 	.inst	0x00000067 ; undefined
  20:	006a0600 	.inst	0x006a0600 ; undefined
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	0000006b 	.inst	0x0000006b ; undefined
  2c:	006e0600 	.inst	0x006e0600 ; undefined
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	0000006f 	.inst	0x0000006f ; undefined
  38:	00700600 	.inst	0x00700600 ; undefined
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	00000071 	.inst	0x00000071 ; undefined
  44:	00740600 	.inst	0x00740600 ; undefined
  48:	05000000 	orr	z0.s, z0.s, #0x1
  4c:	00000075 	.inst	0x00000075 ; undefined
  50:	00780600 	.inst	0x00780600 ; undefined
  54:	05000000 	orr	z0.s, z0.s, #0x1
  58:	00000079 	.inst	0x00000079 ; undefined
  5c:	007a0600 	.inst	0x007a0600 ; undefined
  60:	05000000 	orr	z0.s, z0.s, #0x1
  64:	0000007b 	.inst	0x0000007b ; undefined
  68:	007e0600 	.inst	0x007e0600 ; undefined
  6c:	05000000 	orr	z0.s, z0.s, #0x1
  70:	0000007f 	.inst	0x0000007f ; undefined
  74:	01820600 	.inst	0x01820600 ; undefined
  78:	00000000 	.inst	0x00000000 ; undefined
  7c:	00018305 	.inst	0x00018305 ; undefined
  80:	06000000 	.inst	0x06000000 ; undefined
  84:	00000184 	.inst	0x00000184 ; undefined
  88:	85050000 	.inst	0x85050000 ; undefined
  8c:	00000001 	.inst	0x00000001 ; undefined
  90:	01880600 	.inst	0x01880600 ; undefined
  94:	00000000 	.inst	0x00000000 ; undefined
  98:	00018905 	.inst	0x00018905 ; undefined
  9c:	06000000 	.inst	0x06000000 ; undefined
  a0:	0000018c 	.inst	0x0000018c ; undefined
  a4:	8d050000 	.inst	0x8d050000 ; undefined
  a8:	00000001 	.inst	0x00000001 ; undefined
  ac:	018e0600 	.inst	0x018e0600 ; undefined
  b0:	00000000 	.inst	0x00000000 ; undefined
  b4:	00018f05 	.inst	0x00018f05 ; undefined
  b8:	06000000 	.inst	0x06000000 ; undefined
  bc:	00000190 	.inst	0x00000190 ; undefined
  c0:	91050000 	add	x0, x0, #0x140
  c4:	00000001 	.inst	0x00000001 ; undefined
  c8:	01920600 	.inst	0x01920600 ; undefined
  cc:	00000000 	.inst	0x00000000 ; undefined
  d0:	00019305 	.inst	0x00019305 ; undefined
  d4:	06000000 	.inst	0x06000000 ; undefined
  d8:	00000194 	.inst	0x00000194 ; undefined
  dc:	95050000 	bl	41400dc <fat32_open+0x413f7b4>
  e0:	00000001 	.inst	0x00000001 ; undefined
  e4:	01960600 	.inst	0x01960600 ; undefined
  e8:	00000000 	.inst	0x00000000 ; undefined
  ec:	00019705 	.inst	0x00019705 ; undefined
  f0:	06000000 	.inst	0x06000000 ; undefined
  f4:	00000198 	.inst	0x00000198 ; undefined
  f8:	99050000 	.inst	0x99050000 ; undefined
  fc:	00000001 	.inst	0x00000001 ; undefined
 100:	019a0600 	.inst	0x019a0600 ; undefined
 104:	00000000 	.inst	0x00000000 ; undefined
 108:	00019b05 	.inst	0x00019b05 ; undefined
 10c:	06000000 	.inst	0x06000000 ; undefined
 110:	0000019c 	.inst	0x0000019c ; undefined
 114:	9d050000 	.inst	0x9d050000 ; undefined
 118:	00000001 	.inst	0x00000001 ; undefined
 11c:	019e0600 	.inst	0x019e0600 ; undefined
 120:	00000000 	.inst	0x00000000 ; undefined
 124:	00019f05 	.inst	0x00019f05 ; undefined
 128:	06000000 	.inst	0x06000000 ; undefined
 12c:	000001a0 	.inst	0x000001a0 ; undefined
 130:	a1050000 	.inst	0xa1050000 ; undefined
 134:	00000001 	.inst	0x00000001 ; undefined
 138:	01a20600 	.inst	0x01a20600 ; undefined
 13c:	00000000 	.inst	0x00000000 ; undefined
 140:	0001a305 	.inst	0x0001a305 ; undefined
 144:	06000000 	.inst	0x06000000 ; undefined
 148:	000001a5 	.inst	0x000001a5 ; undefined
 14c:	a6050000 	.inst	0xa6050000 ; undefined
 150:	00000001 	.inst	0x00000001 ; undefined
 154:	01a70600 	.inst	0x01a70600 ; undefined
 158:	00000000 	.inst	0x00000000 ; undefined
 15c:	0001a805 	.inst	0x0001a805 ; undefined
 160:	06000000 	.inst	0x06000000 ; undefined
 164:	000001a9 	.inst	0x000001a9 ; undefined
 168:	aa050000 	orr	x0, x0, x5
 16c:	00000001 	.inst	0x00000001 ; undefined
 170:	01ab0600 	.inst	0x01ab0600 ; undefined
 174:	00000000 	.inst	0x00000000 ; undefined
 178:	0001ac05 	.inst	0x0001ac05 ; undefined
 17c:	06000000 	.inst	0x06000000 ; undefined
 180:	000001ad 	.inst	0x000001ad ; undefined
 184:	ae050000 	.inst	0xae050000 ; undefined
 188:	00000001 	.inst	0x00000001 ; undefined
 18c:	01af0600 	.inst	0x01af0600 ; undefined
 190:	00000000 	.inst	0x00000000 ; undefined
 194:	0001b005 	.inst	0x0001b005 ; undefined
 198:	06000000 	.inst	0x06000000 ; undefined
 19c:	000001b1 	.inst	0x000001b1 ; undefined
 1a0:	b2050000 	orr	x0, x0, #0x800000008000000
 1a4:	00000001 	.inst	0x00000001 ; undefined
 1a8:	01b30600 	.inst	0x01b30600 ; undefined
 1ac:	00000000 	.inst	0x00000000 ; undefined
 1b0:	0001b405 	.inst	0x0001b405 ; undefined
 1b4:	06000000 	.inst	0x06000000 ; undefined
 1b8:	000001b5 	.inst	0x000001b5 ; undefined
 1bc:	b6050000 	tbz	x0, #32, ffffffffffffa1bc <fat32_open+0xffffffffffff9894>
 1c0:	00000001 	.inst	0x00000001 ; undefined
 1c4:	01b70600 	.inst	0x01b70600 ; undefined
 1c8:	00000000 	.inst	0x00000000 ; undefined
 1cc:	0001b805 	.inst	0x0001b805 ; undefined
 1d0:	06000000 	.inst	0x06000000 ; undefined
 1d4:	000001b9 	.inst	0x000001b9 ; undefined
 1d8:	ba050000 	adcs	x0, x0, x5
 1dc:	00000001 	.inst	0x00000001 ; undefined
 1e0:	01bb0600 	.inst	0x01bb0600 ; undefined
 1e4:	00000000 	.inst	0x00000000 ; undefined
 1e8:	0001bc05 	.inst	0x0001bc05 ; undefined
 1ec:	06000000 	.inst	0x06000000 ; undefined
 1f0:	000001bf 	.inst	0x000001bf ; undefined
 1f4:	c0050000 	.inst	0xc0050000 ; undefined
 1f8:	00000001 	.inst	0x00000001 ; undefined
 1fc:	01c10600 	.inst	0x01c10600 ; undefined
 200:	00000000 	.inst	0x00000000 ; undefined
 204:	0001c205 	.inst	0x0001c205 ; undefined
 208:	06000000 	.inst	0x06000000 ; undefined
 20c:	000001c5 	.inst	0x000001c5 ; undefined
 210:	c6050000 	.inst	0xc6050000 ; undefined
 214:	00000001 	.inst	0x00000001 ; undefined
 218:	01c90600 	.inst	0x01c90600 ; undefined
 21c:	00000000 	.inst	0x00000000 ; undefined
 220:	0001ca05 	.inst	0x0001ca05 ; undefined
 224:	06000000 	.inst	0x06000000 ; undefined
 228:	000001cb 	.inst	0x000001cb ; undefined
 22c:	cc050000 	.inst	0xcc050000 ; undefined
 230:	00000001 	.inst	0x00000001 ; undefined
 234:	01cd0600 	.inst	0x01cd0600 ; undefined
 238:	00000000 	.inst	0x00000000 ; undefined
 23c:	0001ce05 	.inst	0x0001ce05 ; undefined
 240:	06000000 	.inst	0x06000000 ; undefined
 244:	000001d2 	.inst	0x000001d2 ; undefined
 248:	d3050000 	.inst	0xd3050000 ; undefined
 24c:	00000001 	.inst	0x00000001 ; undefined
 250:	01d40600 	.inst	0x01d40600 ; undefined
 254:	00000000 	.inst	0x00000000 ; undefined
 258:	0001d505 	.inst	0x0001d505 ; undefined
 25c:	06000000 	.inst	0x06000000 ; undefined
 260:	000001d7 	.inst	0x000001d7 ; undefined
 264:	d8050000 	prfm	pldl1keep, a264 <fat32_open+0x993c>
 268:	00000001 	.inst	0x00000001 ; undefined
 26c:	01d90600 	.inst	0x01d90600 ; undefined
 270:	00000000 	.inst	0x00000000 ; undefined
 274:	0001da05 	.inst	0x0001da05 ; undefined
 278:	06000000 	.inst	0x06000000 ; undefined
 27c:	000001dc 	.inst	0x000001dc ; undefined
 280:	dd050000 	.inst	0xdd050000 ; undefined
 284:	00000001 	.inst	0x00000001 ; undefined
 288:	01df0600 	.inst	0x01df0600 ; undefined
 28c:	00000000 	.inst	0x00000000 ; undefined
 290:	0001e005 	.inst	0x0001e005 ; undefined
 294:	06000000 	.inst	0x06000000 ; undefined
 298:	000001e1 	.inst	0x000001e1 ; undefined
 29c:	e2050000 	.inst	0xe2050000 ; undefined
 2a0:	00000001 	.inst	0x00000001 ; undefined
 2a4:	01e40600 	.inst	0x01e40600 ; undefined
 2a8:	00000000 	.inst	0x00000000 ; undefined
 2ac:	0001e505 	.inst	0x0001e505 ; undefined
 2b0:	06000000 	.inst	0x06000000 ; undefined
 2b4:	000001e6 	.inst	0x000001e6 ; undefined
 2b8:	e7050000 	.inst	0xe7050000 ; undefined
 2bc:	00000001 	.inst	0x00000001 ; undefined
 2c0:	01ef0600 	.inst	0x01ef0600 ; undefined
 2c4:	00000000 	.inst	0x00000000 ; undefined
 2c8:	0001f005 	.inst	0x0001f005 ; undefined
 2cc:	06000000 	.inst	0x06000000 ; undefined
 2d0:	000001f1 	.inst	0x000001f1 ; undefined
 2d4:	f2050000 	ands	x0, x0, #0x800000008000000
 2d8:	00000001 	.inst	0x00000001 ; undefined
 2dc:	01f30600 	.inst	0x01f30600 ; undefined
 2e0:	00000000 	.inst	0x00000000 ; undefined
 2e4:	0001f405 	.inst	0x0001f405 ; undefined
 2e8:	06000000 	.inst	0x06000000 ; undefined
 2ec:	000001f5 	.inst	0x000001f5 ; undefined
 2f0:	f6050000 	.inst	0xf6050000 ; undefined
 2f4:	00000001 	.inst	0x00000001 ; undefined
 2f8:	01f70600 	.inst	0x01f70600 ; undefined
 2fc:	00000000 	.inst	0x00000000 ; undefined
 300:	0001f805 	.inst	0x0001f805 ; undefined
 304:	06000000 	.inst	0x06000000 ; undefined
 308:	000001f9 	.inst	0x000001f9 ; undefined
 30c:	fa050000 	sbcs	x0, x0, x5
 310:	00000001 	.inst	0x00000001 ; undefined
 314:	01fb0600 	.inst	0x01fb0600 ; undefined
 318:	00000000 	.inst	0x00000000 ; undefined
 31c:	0001fc05 	.inst	0x0001fc05 ; undefined
 320:	06000000 	.inst	0x06000000 ; undefined
 324:	000001fd 	.inst	0x000001fd ; undefined
 328:	fe050000 	.inst	0xfe050000 ; undefined
 32c:	00000001 	.inst	0x00000001 ; undefined
 330:	01ff0600 	.inst	0x01ff0600 ; undefined
 334:	00000000 	.inst	0x00000000 ; undefined
 338:	00028005 	.inst	0x00028005 ; undefined
 33c:	06000000 	.inst	0x06000000 ; undefined
 340:	00000281 	.inst	0x00000281 ; undefined
 344:	82050000 	.inst	0x82050000 ; undefined
 348:	00000002 	.inst	0x00000002 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000027 	.inst	0x00000027 ; undefined
   8:	00280500 	.inst	0x00280500 ; NYI
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	0000002a 	.inst	0x0000002a ; undefined
  14:	01890500 	.inst	0x01890500 ; undefined
  18:	00000000 	.inst	0x00000000 ; undefined
  1c:	00018a05 	.inst	0x00018a05 ; undefined
  20:	05000000 	orr	z0.s, z0.s, #0x1
  24:	0000018b 	.inst	0x0000018b ; undefined
  28:	8c050000 	.inst	0x8c050000 ; undefined
  2c:	00000001 	.inst	0x00000001 ; undefined
  30:	018d0500 	.inst	0x018d0500 ; undefined
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	00018e05 	.inst	0x00018e05 ; undefined
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	0000018f 	.inst	0x0000018f ; undefined
  44:	90050000 	adrp	x0, a000000 <fat32_open+0x9fff6d8>
  48:	00000001 	.inst	0x00000001 ; undefined
  4c:	01910500 	.inst	0x01910500 ; undefined
  50:	00000000 	.inst	0x00000000 ; undefined
  54:	0001a106 	.inst	0x0001a106 ; undefined
  58:	05000000 	orr	z0.s, z0.s, #0x1
  5c:	000001bb 	.inst	0x000001bb ; undefined
  60:	bc050000 	stur	s0, [x0, #80]
  64:	00000001 	.inst	0x00000001 ; undefined
  68:	01bd0500 	.inst	0x01bd0500 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
  70:	0001be05 	.inst	0x0001be05 ; undefined
  74:	05000000 	orr	z0.s, z0.s, #0x1
  78:	000001bf 	.inst	0x000001bf ; undefined
  7c:	c0050000 	.inst	0xc0050000 ; undefined
  80:	00000001 	.inst	0x00000001 ; undefined
  84:	01c10500 	.inst	0x01c10500 ; undefined
  88:	00000000 	.inst	0x00000000 ; undefined
  8c:	0001c205 	.inst	0x0001c205 ; undefined
  90:	05000000 	orr	z0.s, z0.s, #0x1
  94:	000001c3 	.inst	0x000001c3 ; undefined
  98:	c4050000 	ld1sb	{z0.d}, p0/z, [x0, z5.d, uxtw]
  9c:	00000001 	.inst	0x00000001 ; undefined
  a0:	01c50500 	.inst	0x01c50500 ; undefined
  a4:	00000000 	.inst	0x00000000 ; undefined
  a8:	0001c605 	.inst	0x0001c605 ; undefined
  ac:	05000000 	orr	z0.s, z0.s, #0x1
  b0:	000001c7 	.inst	0x000001c7 ; undefined
  b4:	c8050000 	stxr	w5, x0, [x0]
  b8:	00000001 	.inst	0x00000001 ; undefined
  bc:	01c90500 	.inst	0x01c90500 ; undefined
  c0:	00000000 	.inst	0x00000000 ; undefined
  c4:	0001ca05 	.inst	0x0001ca05 ; undefined
  c8:	05000000 	orr	z0.s, z0.s, #0x1
  cc:	000001d2 	.inst	0x000001d2 ; undefined
  d0:	ee060000 	.inst	0xee060000 ; undefined
  d4:	00000001 	.inst	0x00000001 ; undefined
  d8:	028b0500 	.inst	0x028b0500 ; undefined
  dc:	00000000 	.inst	0x00000000 ; undefined
  e0:	00028c05 	.inst	0x00028c05 ; undefined
  e4:	05000000 	orr	z0.s, z0.s, #0x1
  e8:	0000028d 	.inst	0x0000028d ; undefined
  ec:	8e050000 	.inst	0x8e050000 ; undefined
  f0:	00000002 	.inst	0x00000002 ; undefined
  f4:	028f0500 	.inst	0x028f0500 ; undefined
  f8:	00000000 	.inst	0x00000000 ; undefined
  fc:	00029005 	.inst	0x00029005 ; undefined
 100:	05000000 	orr	z0.s, z0.s, #0x1
 104:	00000291 	.inst	0x00000291 ; undefined
 108:	92050000 	and	x0, x0, #0x800000008000000
 10c:	00000002 	.inst	0x00000002 ; undefined
 110:	02930500 	.inst	0x02930500 ; undefined
 114:	00000000 	.inst	0x00000000 ; undefined
 118:	00029405 	.inst	0x00029405 ; undefined
 11c:	05000000 	orr	z0.s, z0.s, #0x1
 120:	00000295 	.inst	0x00000295 ; undefined
 124:	96050000 	bl	fffffffff8140124 <fat32_open+0xfffffffff813f7fc>
 128:	00000002 	.inst	0x00000002 ; undefined
 12c:	02970500 	.inst	0x02970500 ; undefined
 130:	00000000 	.inst	0x00000000 ; undefined
 134:	00029805 	.inst	0x00029805 ; undefined
 138:	05000000 	orr	z0.s, z0.s, #0x1
 13c:	00000299 	.inst	0x00000299 ; undefined
 140:	a6060000 	.inst	0xa6060000 ; undefined
 144:	00000002 	.inst	0x00000002 ; undefined
 148:	02db0600 	.inst	0x02db0600 ; undefined
 14c:	00000000 	.inst	0x00000000 ; undefined
 150:	00039106 	.inst	0x00039106 ; undefined
 154:	05000000 	orr	z0.s, z0.s, #0x1
 158:	00000396 	.inst	0x00000396 ; undefined
 15c:	9c060000 	ldr	q0, c15c <fat32_open+0xb834>
 160:	00000003 	.inst	0x00000003 ; undefined
 164:	03a10500 	.inst	0x03a10500 ; undefined
 168:	00000000 	.inst	0x00000000 ; undefined
 16c:	0003a605 	.inst	0x0003a605 ; undefined
 170:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000015 	.inst	0x00000015 ; undefined
   8:	001e0500 	.inst	0x001e0500 ; undefined
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	00000021 	.inst	0x00000021 ; undefined
  14:	00250500 	.inst	0x00250500 ; NYI
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	00000028 	.inst	0x00000028 ; undefined
  20:	002b0500 	.inst	0x002b0500 ; NYI
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	00000031 	.inst	0x00000031 ; undefined
  2c:	00390500 	.inst	0x00390500 ; NYI
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	00000044 	.inst	0x00000044 ; undefined
  38:	004f0500 	.inst	0x004f0500 ; undefined
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	00000058 	.inst	0x00000058 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000013 	.inst	0x00000013 ; undefined
   8:	00160500 	.inst	0x00160500 ; undefined
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	00000019 	.inst	0x00000019 ; undefined
  14:	001e0500 	.inst	0x001e0500 ; undefined
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	00000021 	.inst	0x00000021 ; undefined
  20:	00240500 	.inst	0x00240500 ; NYI
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	00000027 	.inst	0x00000027 ; undefined
  2c:	002a0500 	.inst	0x002a0500 ; NYI
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	0000002d 	.inst	0x0000002d ; undefined
  38:	00320500 	.inst	0x00320500 ; NYI
  3c:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000008 	.inst	0x00000008 ; undefined
   8:	00090500 	.inst	0x00090500 ; undefined
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	0000000a 	.inst	0x0000000a ; undefined
  14:	000b0500 	.inst	0x000b0500 ; undefined
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	0000000c 	.inst	0x0000000c ; undefined
  20:	000d0500 	.inst	0x000d0500 ; undefined
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	0000000e 	.inst	0x0000000e ; undefined
  2c:	000f0500 	.inst	0x000f0500 ; undefined
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	00000010 	.inst	0x00000010 ; undefined
  38:	00110500 	.inst	0x00110500 ; undefined
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	00000013 	.inst	0x00000013 ; undefined
  44:	00160500 	.inst	0x00160500 ; undefined
  48:	05000000 	orr	z0.s, z0.s, #0x1
  4c:	00000019 	.inst	0x00000019 ; undefined
  50:	001c0500 	.inst	0x001c0500 ; undefined
  54:	05000000 	orr	z0.s, z0.s, #0x1
  58:	0000001f 	.inst	0x0000001f ; undefined
  5c:	00220500 	.inst	0x00220500 ; NYI
  60:	05000000 	orr	z0.s, z0.s, #0x1
  64:	00000025 	.inst	0x00000025 ; undefined
  68:	00280500 	.inst	0x00280500 ; NYI
  6c:	05000000 	orr	z0.s, z0.s, #0x1
  70:	0000002b 	.inst	0x0000002b ; undefined
  74:	002e0500 	.inst	0x002e0500 ; NYI
  78:	05000000 	orr	z0.s, z0.s, #0x1
  7c:	00000031 	.inst	0x00000031 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000002 	.inst	0x00000002 ; undefined
   8:	00040500 	.inst	0x00040500 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	0000001f 	.inst	0x0000001f ; undefined
   8:	00200500 	.inst	0x00200500 ; NYI
   c:	06000000 	.inst	0x06000000 ; undefined
  10:	00000022 	.inst	0x00000022 ; undefined
  14:	00270500 	.inst	0x00270500 ; NYI
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	0000002f 	.inst	0x0000002f ; undefined
  20:	00300500 	.inst	0x00300500 ; NYI
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	00000031 	.inst	0x00000031 ; undefined
  2c:	00340500 	.inst	0x00340500 ; NYI
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	00000036 	.inst	0x00000036 ; undefined
  38:	00690500 	.inst	0x00690500 ; undefined
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	0000006c 	.inst	0x0000006c ; undefined
  44:	006f0500 	.inst	0x006f0500 ; undefined
  48:	05000000 	orr	z0.s, z0.s, #0x1
  4c:	00000072 	.inst	0x00000072 ; undefined
  50:	00750500 	.inst	0x00750500 ; undefined
  54:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000006 	.inst	0x00000006 ; undefined
   8:	00170500 	.inst	0x00170500 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000009 	.inst	0x00000009 ; undefined
   8:	000c0500 	.inst	0x000c0500 ; undefined
   c:	05000000 	orr	z0.s, z0.s, #0x1
  10:	0000000f 	.inst	0x0000000f ; undefined
  14:	00120500 	.inst	0x00120500 ; undefined
  18:	05000000 	orr	z0.s, z0.s, #0x1
  1c:	00000015 	.inst	0x00000015 ; undefined
  20:	00180500 	.inst	0x00180500 ; undefined
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	0000001e 	.inst	0x0000001e ; undefined
  2c:	00210500 	.inst	0x00210500 ; NYI
  30:	05000000 	orr	z0.s, z0.s, #0x1
  34:	00000024 	.inst	0x00000024 ; undefined
  38:	00270500 	.inst	0x00270500 ; NYI
  3c:	05000000 	orr	z0.s, z0.s, #0x1
  40:	0000002c 	.inst	0x0000002c ; undefined
  44:	00310500 	.inst	0x00310500 ; NYI
  48:	05000000 	orr	z0.s, z0.s, #0x1
  4c:	00000034 	.inst	0x00000034 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	05000004 	orr	z4.s, z4.s, #0x1
   4:	00000002 	.inst	0x00000002 ; undefined
   8:	00070500 	.inst	0x00070500 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00000276 	.inst	0x00000276 ; undefined
   4:	01100002 	.inst	0x01100002 ; undefined
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	73010000 	.inst	0x73010000 ; undefined
  1c:	2f006372 	.inst	0x2f006372 ; undefined
  20:	2f727375 	.inst	0x2f727375 ; undefined
  24:	61636f6c 	.inst	0x61636f6c ; undefined
  28:	69622f6c 	ldpsw	x12, x11, [x27, #-240]
  2c:	61612f6e 	.inst	0x61612f6e ; undefined
  30:	36686372 	tbz	w18, #13, c9c <fat32_open+0x374>
  34:	6f6e2d34 	.inst	0x6f6e2d34 ; undefined
  38:	652d656e 	.inst	0x652d656e ; undefined
  3c:	6c2f666c 	stnp	d12, d25, [x19, #-272]
  40:	672f6269 	.inst	0x672f6269 ; undefined
  44:	612f6363 	.inst	0x612f6363 ; undefined
  48:	68637261 	.inst	0x68637261 ; undefined
  4c:	652d3436 	.inst	0x652d3436 ; undefined
  50:	372f666c 	tbnz	w12, #5, ffffffffffffed1c <fat32_open+0xffffffffffffe3f4>
  54:	312e322e 	adds	w14, w17, #0xb8c
  58:	636e692f 	.inst	0x636e692f ; undefined
  5c:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
  60:	61660000 	.inst	0x61660000 ; undefined
  64:	2e323374 	usubw	v20.8h, v27.8h, v18.8b
  68:	00010063 	.inst	0x00010063 ; undefined
  6c:	64747300 	.inst	0x64747300 ; undefined
  70:	2d746e69 	ldp	s9, s27, [x19, #-96]
  74:	2e636367 	rsubhn	v7.4h, v27.4s, v3.4s
  78:	00020068 	.inst	0x00020068 ; undefined
  7c:	64747300 	.inst	0x64747300 ; undefined
  80:	2e666564 	umax	v4.4h, v11.4h, v6.4h
  84:	00020068 	.inst	0x00020068 ; undefined
  88:	73616800 	.inst	0x73616800 ; undefined
  8c:	70616d68 	adr	x8, c2e3b <fat32_open+0xc2513>
  90:	0100682e 	.inst	0x0100682e ; undefined
  94:	65640000 	fmla	z0.h, p0/m, z0.h, z4.h
  98:	65636976 	fnmls	z22.h, p2/m, z11.h, z3.h
  9c:	0100682e 	.inst	0x0100682e ; undefined
  a0:	61660000 	.inst	0x61660000 ; undefined
  a4:	2e323374 	usubw	v20.8h, v27.8h, v18.8b
  a8:	00010068 	.inst	0x00010068 ; undefined
  ac:	72747300 	.inst	0x72747300 ; undefined
  b0:	2e676e69 	umin	v9.4h, v19.4h, v7.4h
  b4:	00010068 	.inst	0x00010068 ; undefined
  b8:	6c616d00 	ldnp	d0, d27, [x8, #-496]
  bc:	2e636f6c 	umin	v12.4h, v27.4h, v3.4h
  c0:	00010068 	.inst	0x00010068 ; undefined
  c4:	6e6f6300 	rsubhn2	v0.8h, v24.4s, v15.4s
  c8:	656c6f73 	fnmls	z19.h, p3/m, z27.h, z12.h
  cc:	0100682e 	.inst	0x0100682e ; undefined
  d0:	74730000 	.inst	0x74730000 ; undefined
  d4:	6f6f6264 	umlsl2	v4.4s, v19.8h, v15.h[2]
  d8:	00682e6c 	.inst	0x00682e6c ; undefined
  dc:	73000002 	.inst	0x73000002 ; undefined
  e0:	6e696474 	umax	v20.8h, v3.8h, v9.8h
  e4:	00682e74 	.inst	0x00682e74 ; undefined
  e8:	6c000002 	stnp	d2, d0, [x0]
  ec:	2e747369 	uabdl	v9.4s, v27.4h, v20.4h
  f0:	00010068 	.inst	0x00010068 ; undefined
  f4:	63647300 	.inst	0x63647300 ; undefined
  f8:	2e647261 	uabdl	v1.4s, v19.4h, v4.4h
  fc:	00010068 	.inst	0x00010068 ; undefined
 100:	64747300 	.inst	0x64747300 ; undefined
 104:	2e677261 	uabdl	v1.4s, v19.4h, v7.4h
 108:	00020068 	.inst	0x00020068 ; undefined
 10c:	73736100 	.inst	0x73736100 ; undefined
 110:	2e747265 	uabdl	v5.4s, v19.4h, v20.4h
 114:	00010068 	.inst	0x00010068 ; undefined
 118:	09000000 	.inst	0x09000000 ; undefined
 11c:	00000002 	.inst	0x00000002 ; undefined
 120:	00000000 	.inst	0x00000000 ; undefined
 124:	01340300 	.inst	0x01340300 ; undefined
 128:	5a59757b 	.inst	0x5a59757b ; undefined
 12c:	694a5103 	ldpsw	x3, x20, [x8, #80]
 130:	301c7b67 	adr	x7, 3909d <fat32_open+0x38775>
 134:	79034c30 	strh	w16, [x1, #422]
 138:	2e110366 	ext	v6.8b, v27.8b, v17.8b, #0
 13c:	13034208 	sbfx	w8, w16, #3, #14
 140:	825103ac 	.inst	0x825103ac ; undefined
 144:	76c81503 	.inst	0x76c81503 ; undefined
 148:	0067234e 	.inst	0x0067234e ; undefined
 14c:	03010402 	.inst	0x03010402 ; undefined
 150:	3c06c816 	.inst	0x3c06c816 ; undefined
 154:	02040200 	.inst	0x02040200 ; undefined
 158:	77929606 	.inst	0x77929606 ; undefined
 15c:	3136315b 	adds	w27, w10, #0xd8c
 160:	002f4b4e 	.inst	0x002f4b4e ; NYI
 164:	3e030402 	.inst	0x3e030402 ; undefined
 168:	03040200 	.inst	0x03040200 ; undefined
 16c:	5903321f 	.inst	0x5903321f ; undefined
 170:	2b032d74 	adds	w20, w11, w3, lsl #11
 174:	23214b66 	.inst	0x23214b66 ; undefined
 178:	58780388 	ldr	x8, f01e8 <fat32_open+0xef8c0>
 17c:	03040200 	.inst	0x03040200 ; undefined
 180:	04020028 	.inst	0x04020028 ; undefined
 184:	02002d03 	.inst	0x02002d03 ; undefined
 188:	036f0304 	.inst	0x036f0304 ; undefined
 18c:	7103660d 	subs	w13, w16, #0xd9
 190:	200e0358 	.inst	0x200e0358 ; undefined
 194:	2122a024 	.inst	0x2122a024 ; undefined
 198:	30200b03 	adr	x3, 402f9 <fat32_open+0x3f9d1>
 19c:	5870031f 	ldr	xzr, e01fc <fat32_open+0xdf8d4>
 1a0:	21283021 	.inst	0x21283021 ; undefined
 1a4:	6c036927 	stnp	d7, d26, [x9, #48]
 1a8:	201a033c 	.inst	0x201a033c ; undefined
 1ac:	2f2e3803 	.inst	0x2f2e3803 ; undefined
 1b0:	7fbe033d 	.inst	0x7fbe033d ; undefined
 1b4:	ac0d0382 	stnp	q2, q0, [x28, #416]
 1b8:	20160359 	.inst	0x20160359 ; undefined
 1bc:	7803517c 	sturh	w28, [x11, #53]
 1c0:	20090358 	.inst	0x20090358 ; undefined
 1c4:	03207803 	.inst	0x03207803 ; undefined
 1c8:	5a6e2069 	.inst	0x5a6e2069 ; undefined
 1cc:	2222723f 	.inst	0x2222723f ; undefined
 1d0:	03901803 	.inst	0x03901803 ; undefined
 1d4:	2e039079 	.inst	0x2e039079 ; undefined
 1d8:	0a036b2e 	and	w14, w25, w3, lsl #26
 1dc:	5809033c 	ldr	x28, 12240 <fat32_open+0x11918>
 1e0:	315b3573 	adds	w19, w11, #0x6cd, lsl #12
 1e4:	2f405a32 	.inst	0x2f405a32 ; undefined
 1e8:	50034d49 	adr	x9, 6b92 <fat32_open+0x626a>
 1ec:	3d22a43c 	str	b28, [x1, #2217]
 1f0:	83835a1d 	.inst	0x83835a1d ; undefined
 1f4:	2e790384 	uaddl	v4.4s, v28.4h, v25.4h
 1f8:	03743103 	.inst	0x03743103 ; undefined
 1fc:	7003585a 	adr	x26, 6d07 <fat32_open+0x63df>
 200:	28032f20 	stnp	w0, w11, [x25, #24]
 204:	2e79032e 	uaddl	v14.4s, v25.4h, v25.4h
 208:	032e1003 	.inst	0x032e1003 ; undefined
 20c:	3503204e 	cbnz	w14, 6614 <fat32_open+0x5cec>
 210:	7fac033c 	.inst	0x7fac033c ; undefined
 214:	24636a20 	cmplo	p0.h, p2/z, z17.h, #13
 218:	03519226 	.inst	0x03519226 ; undefined
 21c:	4c2f2e70 	.inst	0x4c2f2e70 ; undefined
 220:	7ba1422f 	.inst	0x7ba1422f ; undefined
 224:	3d032176 	str	b22, [x11, #200]
 228:	4c277666 	.inst	0x4c277666 ; undefined
 22c:	3e225925 	.inst	0x3e225925 ; undefined
 230:	4a700359 	eon	w25, w26, w16, lsr #0
 234:	03202503 	.inst	0x03202503 ; undefined
 238:	6e032073 	ext	v19.16b, v3.16b, v3.16b, #4
 23c:	5ca6a458 	ldr	d24, fffffffffff4d6c4 <fat32_open+0xfffffffffff4cd9c>
 240:	5a3c1303 	.inst	0x5a3c1303 ; undefined
 244:	5d03235b 	.inst	0x5d03235b ; undefined
 248:	0b032266 	add	w6, w19, w3, lsl #8
 24c:	324b3220 	.inst	0x324b3220 ; undefined
 250:	19031e21 	.inst	0x19031e21 ; undefined
 254:	301f2166 	adr	x6, 3e681 <fat32_open+0x3dd59>
 258:	2f2f212f 	.inst	0x2f2f212f ; undefined
 25c:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 260:	667fb903 	.inst	0x667fb903 ; undefined
 264:	9000cc03 	adrp	x3, 1980000 <fat32_open+0x197f6d8>
 268:	03242f2f 	.inst	0x03242f2f ; undefined
 26c:	243d6663 	cmplo	p3.b, p1/z, z19.b, #117
 270:	3c7a032f 	.inst	0x3c7a032f ; undefined
 274:	0005023d 	.inst	0x0005023d ; undefined
 278:	地址 0x0000000000000278 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
       0:	73756c63 	.inst	0x73756c63 ; undefined
       4:	5f726574 	.inst	0x5f726574 ; undefined
       8:	68676968 	.inst	0x68676968 ; undefined
       c:	465f5f00 	.inst	0x465f5f00 ; undefined
      10:	3231544c 	orr	w12, w2, #0xffff801f
      14:	494d5f38 	.inst	0x494d5f38 ; undefined
      18:	30315f4e 	adr	x14, 62c01 <fat32_open+0x622d9>
      1c:	5058455f 	adr	xzr, b08c6 <fat32_open+0xaff9e>
      20:	28205f5f 	stnp	wzr, w23, [x26, #-256]
      24:	3339342d 	.inst	0x3339342d ; undefined
      28:	5f002931 	.inst	0x5f002931 ; undefined
      2c:	4345445f 	.inst	0x4345445f ; undefined
      30:	5f383231 	.inst	0x5f383231 ; undefined
      34:	49535045 	.inst	0x49535045 ; undefined
      38:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
      3c:	4531205f 	.inst	0x4531205f ; undefined
      40:	4433332d 	.inst	0x4433332d ; undefined
      44:	5f5f004c 	.inst	0x5f5f004c ; undefined
      48:	544e4955 	.inst	0x544e4955 ; undefined
      4c:	545f3233 	.inst	0x545f3233 ; undefined
      50:	5f455059 	.inst	0x5f455059 ; undefined
      54:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
      58:	6e676973 	.inst	0x6e676973 ; undefined
      5c:	69206465 	.inst	0x69206465 ; undefined
      60:	5f00746e 	.inst	0x5f00746e ; undefined
      64:	4343475f 	.inst	0x4343475f ; undefined
      68:	4f54415f 	.inst	0x4f54415f ; undefined
      6c:	5f43494d 	.inst	0x5f43494d ; undefined
      70:	41484357 	.inst	0x41484357 ; undefined
      74:	5f545f52 	.inst	0x5f545f52 ; undefined
      78:	4b434f4c 	sub	w12, w26, w3, lsr #19
      7c:	4552465f 	.inst	0x4552465f ; undefined
      80:	00322045 	.inst	0x00322045 ; NYI
      84:	49555f5f 	.inst	0x49555f5f ; undefined
      88:	3233544e 	orr	w14, w2, #0xffffe007
      8c:	58414d5f 	ldr	xzr, 82a34 <fat32_open+0x8210c>
      90:	30205f5f 	adr	xzr, 40c79 <fat32_open+0x40351>
      94:	66666678 	.inst	0x66666678 ; undefined
      98:	66666666 	.inst	0x66666666 ; undefined
      9c:	5f005566 	.inst	0x5f005566 ; undefined
      a0:	4148435f 	.inst	0x4148435f ; undefined
      a4:	4e555f52 	.inst	0x4e555f52 ; undefined
      a8:	4e474953 	.inst	0x4e474953 ; undefined
      ac:	5f5f4445 	.inst	0x5f5f4445 ; undefined
      b0:	73003120 	.inst	0x73003120 ; undefined
      b4:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
      b8:	5f5f0074 	.inst	0x5f5f0074 ; undefined
      bc:	31544c46 	adds	w6, w2, #0x513, lsl #12
      c0:	445f3832 	.inst	0x445f3832 ; undefined
      c4:	4d494345 	.inst	0x4d494345 ; undefined
      c8:	445f4c41 	.inst	0x445f4c41 ; undefined
      cc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
      d0:	00363320 	.inst	0x00363320 ; NYI
      d4:	52415f5f 	.inst	0x52415f5f ; undefined
      d8:	52415f4d 	.inst	0x52415f4d ; undefined
      dc:	505f4843 	adr	x3, be9e6 <fat32_open+0xbe0be>
      e0:	49464f52 	.inst	0x49464f52 ; undefined
      e4:	3620454c 	tbz	w12, #4, 98c <.debug_str+0x98c>
      e8:	74730035 	.inst	0x74730035 ; undefined
      ec:	00747261 	.inst	0x00747261 ; undefined
      f0:	49535f5f 	.inst	0x49535f5f ; undefined
      f4:	575f455a 	.inst	0x575f455a ; undefined
      f8:	48544449 	ldxrh	w9, [x2]
      fc:	36205f5f 	tbz	wzr, #4, ce4 <.debug_str+0xce4>
     100:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     104:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     108:	54414546 	b.vs	829b0 <fat32_open+0x82088>
     10c:	5f455255 	.inst	0x5f455255 ; undefined
     110:	4d445251 	.inst	0x4d445251 ; undefined
     114:	41460058 	.inst	0x41460058 ; undefined
     118:	5f323354 	.inst	0x5f323354 ; undefined
     11c:	544e4f4d 	b.le	9cb04 <fat32_open+0x9c1dc>
     120:	414d5f48 	.inst	0x414d5f48 ; undefined
     124:	30204b53 	adr	x19, 40a8d <fat32_open+0x40165>
     128:	65313078 	.inst	0x65313078 ; undefined
     12c:	5f5f0030 	.inst	0x5f5f0030 ; undefined
     130:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     134:	54414546 	b.vs	829dc <fat32_open+0x820b4>
     138:	5f455255 	.inst	0x5f455255 ; undefined
     13c:	20414d46 	.inst	0x20414d46 ; undefined
     140:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     144:	3436504c 	cbz	w12, 6cb4c <fat32_open+0x6c224>
     148:	31205f5f 	cmn	w26, #0x817
     14c:	63616300 	.inst	0x63616300 ; undefined
     150:	625f6568 	.inst	0x625f6568 ; undefined
     154:	5f006e69 	.inst	0x5f006e69 ; undefined
     158:	4d52415f 	.inst	0x4d52415f ; undefined
     15c:	4145465f 	.inst	0x4145465f ; undefined
     160:	45525554 	.inst	0x45525554 ; undefined
     164:	4d554e5f 	.inst	0x4d554e5f ; undefined
     168:	43495245 	.inst	0x43495245 ; undefined
     16c:	58414d5f 	ldr	xzr, 82b14 <fat32_open+0x821ec>
     170:	204e494d 	.inst	0x204e494d ; undefined
     174:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     178:	33434544 	.inst	0x33434544 ; undefined
     17c:	55535f32 	.inst	0x55535f32 ; undefined
     180:	524f4e42 	.inst	0x524f4e42 ; undefined
     184:	5f4c414d 	.inst	0x5f4c414d ; undefined
     188:	5f4e494d 	.inst	0x5f4e494d ; undefined
     18c:	2e30205f 	usubl	v31.8h, v2.8b, v16.8b
     190:	30303030 	adr	x16, 60795 <fat32_open+0x5fe6d>
     194:	2d453130 	ldp	s16, s12, [x9, #40]
     198:	46443539 	.inst	0x46443539 ; undefined
     19c:	465f5f00 	.inst	0x465f5f00 ; undefined
     1a0:	3233544c 	orr	w12, w2, #0xffffe007
     1a4:	494d5f58 	.inst	0x494d5f58 ; undefined
     1a8:	58455f4e 	ldr	x14, 8ad90 <fat32_open+0x8a468>
     1ac:	205f5f50 	.inst	0x205f5f50 ; undefined
     1b0:	30312d28 	adr	x8, 62755 <fat32_open+0x61e2d>
     1b4:	00293132 	.inst	0x00293132 ; NYI
     1b8:	53494c48 	.inst	0x53494c48 ; undefined
     1bc:	45485f54 	.inst	0x45485f54 ; undefined
     1c0:	6e284441 	ushl	v1.16b, v2.16b, v8.16b
     1c4:	29656d61 	ldp	w1, w27, [x11, #-216]
     1c8:	72747320 	.inst	0x72747320 ; undefined
     1cc:	20746375 	.inst	0x20746375 ; undefined
     1d0:	73696c68 	.inst	0x73696c68 ; undefined
     1d4:	65685f74 	fnmla	z20.h, p7/m, z27.h, z8.h
     1d8:	6e206461 	umax	v1.16b, v3.16b, v0.16b
     1dc:	00656d61 	.inst	0x00656d61 ; undefined
     1e0:	5f544e49 	.inst	0x5f544e49 ; undefined
     1e4:	54534146 	b.vs	a6a0c <fat32_open+0xa60e4>
     1e8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     1ec:	5f005841 	fmls	h1, h2, v0.h[4]
     1f0:	4f54415f 	.inst	0x4f54415f ; undefined
     1f4:	5f43494d 	.inst	0x5f43494d ; undefined
     1f8:	534e4f43 	.inst	0x534e4f43 ; undefined
     1fc:	20454d55 	.inst	0x20454d55 ; undefined
     200:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     204:	41484357 	.inst	0x41484357 ; undefined
     208:	414d5f52 	.inst	0x414d5f52 ; undefined
     20c:	205f5f58 	.inst	0x205f5f58 ; undefined
     210:	66667830 	.inst	0x66667830 ; undefined
     214:	66666666 	.inst	0x66666666 ; undefined
     218:	00556666 	.inst	0x00556666 ; undefined
     21c:	5f746166 	.inst	0x5f746166 ; undefined
     220:	5f006469 	.inst	0x5f006469 ; undefined
     224:	544c465f 	.inst	0x544c465f ; undefined
     228:	5f583436 	srsra	d22, d1, #40
     22c:	49535045 	.inst	0x49535045 ; undefined
     230:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
     234:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
     238:	39353239 	strb	w25, [x17, #3404]
     23c:	34393932 	cbz	w18, 72960 <fat32_open+0x72038>
     240:	37383334 	tbnz	w20, #7, 8a4 <.debug_str+0x8a4>
     244:	38353332 	ldsetb	w21, w18, [x25]
     248:	35303335 	cbnz	w21, 608ac <fat32_open+0x5ff84>
     24c:	37373935 	tbnz	w21, #6, ffffffffffffe970 <fat32_open+0xffffffffffffe048>
     250:	35323439 	cbnz	w25, 648d4 <fat32_open+0x63fac>
     254:	32393438 	orr	w24, w1, #0x1fff80
     258:	65323337 	.inst	0x65323337 ; undefined
     25c:	4634332d 	.inst	0x4634332d ; undefined
     260:	00783436 	.inst	0x00783436 ; undefined
     264:	75665f5f 	.inst	0x75665f5f ; undefined
     268:	5f5f636e 	.inst	0x5f5f636e ; undefined
     26c:	544e4900 	b.eq	9cb8c <fat32_open+0x9c264>  // b.none
     270:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     274:	5f205841 	fmls	h1, h2, v0.h[6]
     278:	544e495f 	.inst	0x544e495f ; undefined
     27c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     280:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     284:	544e4900 	b.eq	9cba4 <fat32_open+0x9c27c>  // b.none
     288:	5f58414d 	.inst	0x5f58414d ; undefined
     28c:	004e494d 	.inst	0x004e494d ; undefined
     290:	49535f5f 	.inst	0x49535f5f ; undefined
     294:	464f455a 	.inst	0x464f455a ; undefined
     298:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
     29c:	4f4c5f47 	.inst	0x4f4c5f47 ; undefined
     2a0:	5f5f474e 	.inst	0x5f5f474e ; undefined
     2a4:	5f003820 	.inst	0x5f003820 ; undefined
     2a8:	4c42445f 	.inst	0x4c42445f ; undefined
     2ac:	58414d5f 	ldr	xzr, 82c54 <fat32_open+0x8232c>
     2b0:	5f30315f 	.inst	0x5f30315f ; undefined
     2b4:	5f505845 	.inst	0x5f505845 ; undefined
     2b8:	3033205f 	adr	xzr, 666c1 <fat32_open+0x65d99>
     2bc:	5f5f0038 	.inst	0x5f5f0038 ; undefined
     2c0:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     2c4:	48435241 	ldxrh	w1, [x18]
     2c8:	4153495f 	.inst	0x4153495f ; undefined
     2cc:	3436415f 	cbz	wzr, 6caf4 <fat32_open+0x6c1cc>
     2d0:	62003120 	.inst	0x62003120 ; undefined
     2d4:	5f746f6f 	.inst	0x5f746f6f ; undefined
     2d8:	65646f63 	fnmls	z3.h, p3/m, z27.h, z4.h
     2dc:	445f5f00 	.inst	0x445f5f00 ; undefined
     2e0:	32334345 	orr	w5, w26, #0x3fffe000
     2e4:	4e494d5f 	.inst	0x4e494d5f ; undefined
     2e8:	31205f5f 	cmn	w26, #0x817
     2ec:	35392d45 	cbnz	w5, 72894 <fat32_open+0x71f6c>
     2f0:	5f004644 	.inst	0x5f004644 ; undefined
     2f4:	544e495f 	.inst	0x544e495f ; undefined
     2f8:	5341465f 	.inst	0x5341465f ; undefined
     2fc:	5f343654 	.inst	0x5f343654 ; undefined
     300:	5f58414d 	.inst	0x5f58414d ; undefined
     304:	7830205f 	steorh	w16, [x2]
     308:	66666637 	.inst	0x66666637 ; undefined
     30c:	66666666 	.inst	0x66666666 ; undefined
     310:	66666666 	.inst	0x66666666 ; undefined
     314:	66666666 	.inst	0x66666666 ; undefined
     318:	4453004c 	.inst	0x4453004c ; undefined
     31c:	4145525f 	.inst	0x4145525f ; undefined
     320:	43455344 	.inst	0x43455344 ; undefined
     324:	5f524f54 	.inst	0x5f524f54 ; undefined
     328:	454d4954 	.inst	0x454d4954 ; undefined
     32c:	2054554f 	.inst	0x2054554f ; undefined
     330:	30303031 	adr	x17, 60935 <fat32_open+0x6000d>
     334:	30303030 	adr	x16, 60939 <fat32_open+0x60011>
     338:	4f5f5f00 	.inst	0x4f5f5f00 ; undefined
     33c:	52454452 	.inst	0x52454452 ; undefined
     340:	5044505f 	adr	xzr, 88d4a <fat32_open+0x88422>
     344:	444e455f 	.inst	0x444e455f ; undefined
     348:	5f4e4149 	.inst	0x5f4e4149 ; undefined
     34c:	3433205f 	cbz	wzr, 66754 <fat32_open+0x65e2c>
     350:	57003231 	.inst	0x57003231 ; undefined
     354:	52414843 	.inst	0x52414843 ; undefined
     358:	4e494d5f 	.inst	0x4e494d5f ; undefined
     35c:	575f5f20 	.inst	0x575f5f20 ; undefined
     360:	52414843 	.inst	0x52414843 ; undefined
     364:	4e494d5f 	.inst	0x4e494d5f ; undefined
     368:	5f005f5f 	.inst	0x5f005f5f ; undefined
     36c:	4345445f 	.inst	0x4345445f ; undefined
     370:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     374:	455f5841 	.inst	0x455f5841 ; undefined
     378:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     37c:	35383320 	cbnz	w0, 709e0 <fat32_open+0x700b8>
     380:	465f5f00 	.inst	0x465f5f00 ; undefined
     384:	41465f50 	.inst	0x41465f50 ; undefined
     388:	465f5453 	.inst	0x465f5453 ; undefined
     38c:	3120414d 	adds	w13, w10, #0x810
     390:	465f5f00 	.inst	0x465f5f00 ; undefined
     394:	485f544c 	ldxrh	w12, [x2]
     398:	445f5341 	.inst	0x445f5341 ; undefined
     39c:	524f4e45 	.inst	0x524f4e45 ; undefined
     3a0:	205f5f4d 	.inst	0x205f5f4d ; undefined
     3a4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     3a8:	38544e49 	ldrb	w9, [x18, #-188]!
     3ac:	5059545f 	adr	xzr, b2e36 <fat32_open+0xb250e>
     3b0:	205f5f45 	.inst	0x205f5f45 ; undefined
     3b4:	6e676973 	.inst	0x6e676973 ; undefined
     3b8:	63206465 	.inst	0x63206465 ; undefined
     3bc:	00726168 	.inst	0x00726168 ; undefined
     3c0:	4c414d5f 	.inst	0x4c414d5f ; undefined
     3c4:	5f434f4c 	.inst	0x5f434f4c ; undefined
     3c8:	5f002048 	.inst	0x5f002048 ; undefined
     3cc:	544c465f 	.inst	0x544c465f ; undefined
     3d0:	445f3233 	.inst	0x445f3233 ; undefined
     3d4:	4d494345 	.inst	0x4d494345 ; undefined
     3d8:	445f4c41 	.inst	0x445f4c41 ; undefined
     3dc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     3e0:	49003920 	.inst	0x49003920 ; undefined
     3e4:	465f544e 	.inst	0x465f544e ; undefined
     3e8:	36545341 	tbz	w1, #10, ffffffffffff8e50 <fat32_open+0xffffffffffff8528>
     3ec:	414d5f34 	.inst	0x414d5f34 ; undefined
     3f0:	5f5f2058 	.inst	0x5f5f2058 ; undefined
     3f4:	5f544e49 	.inst	0x5f544e49 ; undefined
     3f8:	54534146 	b.vs	a6c20 <fat32_open+0xa62f8>
     3fc:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     400:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     404:	4f5f5f00 	.inst	0x4f5f5f00 ; undefined
     408:	52454452 	.inst	0x52454452 ; undefined
     40c:	54494c5f 	.inst	0x54494c5f ; undefined
     410:	5f454c54 	.inst	0x5f454c54 ; undefined
     414:	49444e45 	.inst	0x49444e45 ; undefined
     418:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
     41c:	33323120 	.inst	0x33323120 ; undefined
     420:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     424:	43445453 	.inst	0x43445453 ; undefined
     428:	4654555f 	.inst	0x4654555f ; undefined
     42c:	5f36315f 	.inst	0x5f36315f ; undefined
     430:	0031205f 	.inst	0x0031205f ; NYI
     434:	49535f5f 	.inst	0x49535f5f ; undefined
     438:	545f455a 	.inst	0x545f455a ; undefined
     43c:	5f455059 	.inst	0x5f455059 ; undefined
     440:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
     444:	7520676e 	.inst	0x7520676e ; undefined
     448:	6769736e 	.inst	0x6769736e ; undefined
     44c:	2064656e 	.inst	0x2064656e ; undefined
     450:	00746e69 	.inst	0x00746e69 ; undefined
     454:	68746170 	.inst	0x68746170 ; undefined
     458:	555f5f00 	.inst	0x555f5f00 ; undefined
     45c:	38544e49 	ldrb	w9, [x18, #-188]!
     460:	6328435f 	.inst	0x6328435f ; undefined
     464:	00632029 	.inst	0x00632029 ; undefined
     468:	4e495f5f 	.inst	0x4e495f5f ; undefined
     46c:	5f363154 	.inst	0x5f363154 ; undefined
     470:	45505954 	.inst	0x45505954 ; undefined
     474:	73205f5f 	.inst	0x73205f5f ; undefined
     478:	74726f68 	.inst	0x74726f68 ; undefined
     47c:	746e6920 	.inst	0x746e6920 ; undefined
     480:	45445f00 	.inst	0x45445f00 ; undefined
     484:	45434956 	.inst	0x45434956 ; undefined
     488:	0020485f 	.inst	0x0020485f ; NYI
     48c:	4344535f 	.inst	0x4344535f ; undefined
     490:	5f445241 	.inst	0x5f445241 ; undefined
     494:	73002048 	.inst	0x73002048 ; undefined
     498:	662f6372 	.inst	0x662f6372 ; undefined
     49c:	32337461 	orr	w1, w3, #0xffffe7ff
     4a0:	5f00632e 	.inst	0x5f00632e ; undefined
     4a4:	4343475f 	.inst	0x4343475f ; undefined
     4a8:	5641485f 	.inst	0x5641485f ; undefined
     4ac:	59535f45 	.inst	0x59535f45 ; undefined
     4b0:	435f434e 	.inst	0x435f434e ; undefined
     4b4:	41504d4f 	.inst	0x41504d4f ; undefined
     4b8:	415f4552 	.inst	0x415f4552 ; undefined
     4bc:	535f444e 	.inst	0x535f444e ; undefined
     4c0:	5f504157 	.inst	0x5f504157 ; undefined
     4c4:	00312031 	.inst	0x00312031 ; NYI
     4c8:	45445f5f 	.inst	0x45445f5f ; undefined
     4cc:	414d4943 	.inst	0x414d4943 ; undefined
     4d0:	49445f4c 	.inst	0x49445f4c ; undefined
     4d4:	205f5f47 	.inst	0x205f5f47 ; undefined
     4d8:	5f003633 	.inst	0x5f003633 ; undefined
     4dc:	4454535f 	.inst	0x4454535f ; undefined
     4e0:	4f485f43 	.inst	0x4f485f43 ; undefined
     4e4:	44455453 	.inst	0x44455453 ; undefined
     4e8:	30205f5f 	adr	xzr, 410d1 <fat32_open+0x407a9>
     4ec:	494c4800 	.inst	0x494c4800 ; undefined
     4f0:	4e5f5453 	.inst	0x4e5f5453 ; undefined
     4f4:	2845444f 	ldnp	w15, w17, [x2, #40]
     4f8:	656d616e 	fnmls	z14.h, p0/m, z11.h, z13.h
     4fc:	74732029 	.inst	0x74732029 ; undefined
     500:	74637572 	.inst	0x74637572 ; undefined
     504:	696c6820 	ldpsw	x0, x26, [x1, #-160]
     508:	6e5f7473 	.inst	0x6e5f7473 ; undefined
     50c:	2065646f 	.inst	0x2065646f ; undefined
     510:	656d616e 	fnmls	z14.h, p0/m, z11.h, z13.h
     514:	415f5f00 	.inst	0x415f5f00 ; undefined
     518:	4e5f4d52 	.inst	0x4e5f4d52 ; undefined
     51c:	204e4f45 	.inst	0x204e4f45 ; undefined
     520:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     524:	455a4953 	.inst	0x455a4953 ; undefined
     528:	5f5f545f 	shl	d31, d2, #31
     52c:	5f5f0020 	.inst	0x5f5f0020 ; undefined
     530:	33544c46 	.inst	0x33544c46 ; undefined
     534:	494d5f32 	.inst	0x494d5f32 ; undefined
     538:	205f5f4e 	.inst	0x205f5f4e ; undefined
     53c:	37312e31 	tbnz	w17, #6, 2b00 <.debug_str+0x2b00>
     540:	34393435 	cbz	w21, 72bc4 <fat32_open+0x7229c>
     544:	38303533 	.inst	0x38303533 ; undefined
     548:	38323232 	ldsetb	w18, w18, [x17]
     54c:	37303537 	tbnz	w23, #6, bf0 <.debug_str+0xbf0>
     550:	37383639 	tbnz	w25, #7, c14 <.debug_str+0xc14>
     554:	33353633 	.inst	0x33353633 ; undefined
     558:	32323237 	orr	w23, w17, #0x7ffc000
     55c:	36353432 	tbz	w18, #6, ffffffffffffabe0 <fat32_open+0xffffffffffffa2b8>
     560:	332d6538 	.inst	0x332d6538 ; undefined
     564:	32334638 	orr	w24, w17, #0x7fffe000
     568:	544e4900 	b.eq	9ce88 <fat32_open+0x9c560>  // b.none
     56c:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     570:	28204e49 	stnp	w9, w19, [x18, #-256]
     574:	544e492d 	b.le	9ce98 <fat32_open+0x9c570>
     578:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     57c:	2d205841 	stp	s1, s22, [x2, #-256]
     580:	00293120 	.inst	0x00293120 ; NYI
     584:	4c465f5f 	.inst	0x4c465f5f ; undefined
     588:	5f323354 	.inst	0x5f323354 ; undefined
     58c:	5f58414d 	.inst	0x5f58414d ; undefined
     590:	455f3031 	.inst	0x455f3031 ; undefined
     594:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     598:	00383320 	.inst	0x00383320 ; NYI
     59c:	4e495f5f 	.inst	0x4e495f5f ; undefined
     5a0:	5f343654 	.inst	0x5f343654 ; undefined
     5a4:	5f58414d 	.inst	0x5f58414d ; undefined
     5a8:	7830205f 	steorh	w16, [x2]
     5ac:	66666637 	.inst	0x66666637 ; undefined
     5b0:	66666666 	.inst	0x66666666 ; undefined
     5b4:	66666666 	.inst	0x66666666 ; undefined
     5b8:	66666666 	.inst	0x66666666 ; undefined
     5bc:	6166004c 	.inst	0x6166004c ; undefined
     5c0:	5f323374 	.inst	0x5f323374 ; undefined
     5c4:	6e65706f 	uabdl2	v15.4s, v3.8h, v5.8h
     5c8:	7465725f 	.inst	0x7465725f ; undefined
     5cc:	006e7275 	.inst	0x006e7275 ; undefined
     5d0:	7473616c 	.inst	0x7473616c ; undefined
     5d4:	6363615f 	.inst	0x6363615f ; undefined
     5d8:	7461645f 	.inst	0x7461645f ; undefined
     5dc:	5f5f0065 	.inst	0x5f5f0065 ; undefined
     5e0:	6465656e 	.inst	0x6465656e ; undefined
     5e4:	6863775f 	.inst	0x6863775f ; undefined
     5e8:	745f7261 	.inst	0x745f7261 ; undefined
     5ec:	465f5f00 	.inst	0x465f5f00 ; undefined
     5f0:	3233544c 	orr	w12, w2, #0xffffe007
     5f4:	4e494d5f 	.inst	0x4e494d5f ; undefined
     5f8:	5058455f 	adr	xzr, b0ea2 <fat32_open+0xb057a>
     5fc:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     600:	3532312d 	cbnz	w13, 64c24 <fat32_open+0x642fc>
     604:	49420029 	.inst	0x49420029 ; undefined
     608:	45535f4e 	.inst	0x45535f4e ; undefined
     60c:	6e692854 	.inst	0x6e692854 ; undefined
     610:	2c786564 	ldnp	s4, s25, [x11, #-64]
     614:	6d746962 	ldp	d2, d26, [x11, #-192]
     618:	20297061 	.inst	0x20297061 ; undefined
     61c:	7b206f64 	.inst	0x7b206f64 ; undefined
     620:	74696220 	.inst	0x74696220 ; undefined
     624:	2070616d 	.inst	0x2070616d ; undefined
     628:	28203d7c 	stnp	w28, w15, [x11, #-256]
     62c:	3c3c2031 	.inst	0x3c3c2031 ; undefined
     630:	646e6920 	.inst	0x646e6920 ; undefined
     634:	3b297865 	.inst	0x3b297865 ; undefined
     638:	77207d20 	.inst	0x77207d20 ; undefined
     63c:	656c6968 	fnmls	z8.h, p2/m, z11.h, z12.h
     640:	29302820 	stp	w0, w10, [x1, #-128]
     644:	70797400 	adr	x0, f34c7 <fat32_open+0xf2b9f>
     648:	49550065 	.inst	0x49550065 ; undefined
     64c:	3233544e 	orr	w14, w2, #0xffffe007
     650:	58414d5f 	ldr	xzr, 82ff8 <fat32_open+0x826d0>
     654:	555f5f20 	.inst	0x555f5f20 ; undefined
     658:	33544e49 	.inst	0x33544e49 ; undefined
     65c:	414d5f32 	.inst	0x414d5f32 ; undefined
     660:	005f5f58 	.inst	0x005f5f58 ; undefined
     664:	4453425f 	.inst	0x4453425f ; undefined
     668:	5254505f 	.inst	0x5254505f ; undefined
     66c:	46464944 	.inst	0x46464944 ; undefined
     670:	205f545f 	.inst	0x205f545f ; undefined
     674:	494c4100 	.inst	0x494c4100 ; undefined
     678:	555f4e47 	.inst	0x555f4e47 ; undefined
     67c:	61622850 	.inst	0x61622850 ; undefined
     680:	732c6573 	.inst	0x732c6573 ; undefined
     684:	29657a69 	ldp	w9, w30, [x19, #-216]
     688:	494c4120 	.inst	0x494c4120 ; undefined
     68c:	445f4e47 	.inst	0x445f4e47 ; undefined
     690:	284e574f 	ldnp	w15, w21, [x26, #112]
     694:	73616228 	.inst	0x73616228 ; undefined
     698:	2b202965 	adds	w5, w11, w0, uxth #2
     69c:	69732820 	ldpsw	x0, x10, [x1, #-104]
     6a0:	2029657a 	.inst	0x2029657a ; undefined
     6a4:	2c31202d 	stnp	s13, s8, [x1, #-120]
     6a8:	7a697320 	.inst	0x7a697320 ; undefined
     6ac:	5f002965 	.inst	0x5f002965 ; undefined
     6b0:	544c465f 	.inst	0x544c465f ; undefined
     6b4:	485f3631 	ldxrh	w17, [x17]
     6b8:	495f5341 	.inst	0x495f5341 ; undefined
     6bc:	4e49464e 	.inst	0x4e49464e ; undefined
     6c0:	5f595449 	shl	d9, d2, #25
     6c4:	0031205f 	.inst	0x0031205f ; NYI
     6c8:	38544e49 	ldrb	w9, [x18, #-188]!
     6cc:	4e494d5f 	.inst	0x4e494d5f ; undefined
     6d0:	492d2820 	.inst	0x492d2820 ; undefined
     6d4:	5f38544e 	.inst	0x5f38544e ; undefined
     6d8:	2058414d 	.inst	0x2058414d ; undefined
     6dc:	2931202d 	stp	w13, w8, [x1, #-120]
     6e0:	465f5f00 	.inst	0x465f5f00 ; undefined
     6e4:	3436544c 	cbz	w12, 6d16c <fat32_open+0x6c844>
     6e8:	4e494d5f 	.inst	0x4e494d5f ; undefined
     6ec:	5f30315f 	.inst	0x5f30315f ; undefined
     6f0:	5f505845 	.inst	0x5f505845 ; undefined
     6f4:	2d28205f 	stp	s31, s8, [x2, #-192]
     6f8:	29373033 	stp	w19, w12, [x1, #-72]
     6fc:	61657200 	.inst	0x61657200 ; undefined
     700:	65735f64 	fnmla	z4.h, p7/m, z27.h, z19.h
     704:	726f7463 	.inst	0x726f7463 ; undefined
     708:	735f5f00 	.inst	0x735f5f00 ; undefined
     70c:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
     710:	62002074 	.inst	0x62002074 ; undefined
     714:	5f746f6f 	.inst	0x5f746f6f ; undefined
     718:	72746e65 	.inst	0x72746e65 ; undefined
     71c:	00695f79 	.inst	0x00695f79 ; undefined
     720:	4e495f5f 	.inst	0x4e495f5f ; undefined
     724:	41465f54 	.inst	0x41465f54 ; undefined
     728:	34365453 	cbz	w19, 6d1b0 <fat32_open+0x6c888>
     72c:	4449575f 	.inst	0x4449575f ; undefined
     730:	5f5f4854 	.inst	0x5f5f4854 ; undefined
     734:	00343620 	.inst	0x00343620 ; NYI
     738:	4c465f5f 	.inst	0x4c465f5f ; undefined
     73c:	5f343654 	.inst	0x5f343654 ; undefined
     740:	49434544 	.inst	0x49434544 ; undefined
     744:	5f4c414d 	.inst	0x5f4c414d ; undefined
     748:	5f474944 	.inst	0x5f474944 ; undefined
     74c:	3731205f 	tbnz	wzr, #6, 2b54 <.debug_str+0x2b54>
     750:	544e4900 	b.eq	9d070 <fat32_open+0x9c748>  // b.none
     754:	41454c5f 	.inst	0x41454c5f ; undefined
     758:	34365453 	cbz	w19, 6d1e0 <fat32_open+0x6c8b8>
     75c:	58414d5f 	ldr	xzr, 83104 <fat32_open+0x827dc>
     760:	495f5f20 	.inst	0x495f5f20 ; undefined
     764:	4c5f544e 	.inst	0x4c5f544e ; undefined
     768:	54534145 	b.pl	a6f90 <fat32_open+0xa6668>  // b.nfrst
     76c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     770:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     774:	6e666c00 	umin	v0.8h, v0.8h, v6.8h
     778:	746e655f 	.inst	0x746e655f ; undefined
     77c:	00737972 	.inst	0x00737972 ; undefined
     780:	48434143 	ldxrh	w3, [x10]
     784:	49425f45 	.inst	0x49425f45 ; undefined
     788:	49535f4e 	.inst	0x49535f4e ; undefined
     78c:	3120455a 	adds	w26, w10, #0x811
     790:	545f0036 	.inst	0x545f0036 ; undefined
     794:	5a49535f 	.inst	0x5a49535f ; undefined
     798:	5f002045 	.inst	0x5f002045 ; undefined
     79c:	4c42445f 	.inst	0x4c42445f ; undefined
     7a0:	4e494d5f 	.inst	0x4e494d5f ; undefined
     7a4:	5f30315f 	.inst	0x5f30315f ; undefined
     7a8:	5f505845 	.inst	0x5f505845 ; undefined
     7ac:	2d28205f 	stp	s31, s8, [x2, #-192]
     7b0:	29373033 	stp	w19, w12, [x1, #-72]
     7b4:	4e495500 	.inst	0x4e495500 ; undefined
     7b8:	5f323354 	.inst	0x5f323354 ; undefined
     7bc:	29632843 	ldp	w3, w10, [x2, #-232]
     7c0:	555f5f20 	.inst	0x555f5f20 ; undefined
     7c4:	33544e49 	.inst	0x33544e49 ; undefined
     7c8:	28435f32 	ldnp	w18, w23, [x25, #24]
     7cc:	5f002963 	.inst	0x5f002963 ; undefined
     7d0:	44524f5f 	.inst	0x44524f5f ; undefined
     7d4:	425f5245 	.inst	0x425f5245 ; undefined
     7d8:	455f4749 	.inst	0x455f4749 ; undefined
     7dc:	4149444e 	.inst	0x4149444e ; undefined
     7e0:	205f5f4e 	.inst	0x205f5f4e ; undefined
     7e4:	31323334 	adds	w20, w25, #0xc8c
     7e8:	5a495300 	.inst	0x5a495300 ; undefined
     7ec:	414d5f45 	.inst	0x414d5f45 ; undefined
     7f0:	6c660058 	ldnp	d24, d0, [x2, #-416]
     7f4:	6e5f6761 	.inst	0x6e5f6761 ; undefined
     7f8:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     7fc:	31434544 	adds	w4, w10, #0xd1, lsl #12
     800:	4d5f3832 	.inst	0x4d5f3832 ; undefined
     804:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
     808:	2d453120 	ldp	s0, s12, [x9, #40]
     80c:	33343136 	.inst	0x33343136 ; undefined
     810:	49004c44 	.inst	0x49004c44 ; undefined
     814:	4c5f544e 	.inst	0x4c5f544e ; undefined
     818:	54534145 	b.pl	a7040 <fat32_open+0xa6718>  // b.nfrst
     81c:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     820:	28204e49 	stnp	w9, w19, [x18, #-256]
     824:	544e492d 	b.le	9d148 <fat32_open+0x9c820>
     828:	41454c5f 	.inst	0x41454c5f ; undefined
     82c:	32335453 	orr	w19, w2, #0xffffe007
     830:	58414d5f 	ldr	xzr, 831d8 <fat32_open+0x828b0>
     834:	31202d20 	adds	w0, w9, #0x80b
     838:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     83c:	31544c46 	adds	w6, w2, #0x513, lsl #12
     840:	485f3832 	ldxrh	w18, [x1]
     844:	515f5341 	sub	w1, w26, #0x7d4, lsl #12
     848:	54454955 	.inst	0x54454955 ; undefined
     84c:	4e414e5f 	.inst	0x4e414e5f ; undefined
     850:	31205f5f 	cmn	w26, #0x817
     854:	465f5f00 	.inst	0x465f5f00 ; undefined
     858:	3436544c 	cbz	w12, 6d2e0 <fat32_open+0x6c9b8>
     85c:	4e494d5f 	.inst	0x4e494d5f ; undefined
     860:	5058455f 	adr	xzr, b110a <fat32_open+0xb07e2>
     864:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     868:	3230312d 	orr	w13, w9, #0x1fff0000
     86c:	5f002931 	.inst	0x5f002931 ; undefined
     870:	4e49555f 	.inst	0x4e49555f ; undefined
     874:	41465f54 	.inst	0x41465f54 ; undefined
     878:	5f385453 	.inst	0x5f385453 ; undefined
     87c:	5f58414d 	.inst	0x5f58414d ; undefined
     880:	7830205f 	steorh	w16, [x2]
     884:	66666666 	.inst	0x66666666 ; undefined
     888:	66666666 	.inst	0x66666666 ; undefined
     88c:	5f5f0055 	.inst	0x5f5f0055 ; undefined
     890:	33434544 	.inst	0x33434544 ; undefined
     894:	50455f32 	adr	x18, 8b47a <fat32_open+0x8ab52>
     898:	4f4c4953 	.inst	0x4f4c4953 ; undefined
     89c:	205f5f4e 	.inst	0x205f5f4e ; undefined
     8a0:	362d4531 	tbz	w17, #5, ffffffffffffb144 <fat32_open+0xffffffffffffa81c>
     8a4:	5f004644 	.inst	0x5f004644 ; undefined
     8a8:	544c465f 	.inst	0x544c465f ; undefined
     8ac:	485f3436 	ldxrh	w22, [x1]
     8b0:	445f5341 	.inst	0x445f5341 ; undefined
     8b4:	524f4e45 	.inst	0x524f4e45 ; undefined
     8b8:	205f5f4d 	.inst	0x205f5f4d ; undefined
     8bc:	49550031 	.inst	0x49550031 ; undefined
     8c0:	3631544e 	tbz	w14, #6, 3348 <.debug_str+0x3348>
     8c4:	6328435f 	.inst	0x6328435f ; undefined
     8c8:	5f5f2029 	.inst	0x5f5f2029 ; undefined
     8cc:	544e4955 	.inst	0x544e4955 ; undefined
     8d0:	435f3631 	.inst	0x435f3631 ; undefined
     8d4:	00296328 	.inst	0x00296328 ; NYI
     8d8:	4c465f5f 	.inst	0x4c465f5f ; undefined
     8dc:	58343654 	ldr	x20, 68fa4 <fat32_open+0x6867c>
     8e0:	58414d5f 	ldr	xzr, 83288 <fat32_open+0x82960>
     8e4:	5f30315f 	.inst	0x5f30315f ; undefined
     8e8:	5f505845 	.inst	0x5f505845 ; undefined
     8ec:	3934205f 	strb	wzr, [x2, #3336]
     8f0:	5f003233 	.inst	0x5f003233 ; undefined
     8f4:	4843535f 	ldxrh	wzr, [x26]
     8f8:	575f5241 	.inst	0x575f5241 ; undefined
     8fc:	48544449 	ldxrh	w9, [x2]
     900:	38205f5f 	.inst	0x38205f5f ; undefined
     904:	495f5f00 	.inst	0x495f5f00 ; undefined
     908:	465f544e 	.inst	0x465f544e ; undefined
     90c:	31545341 	adds	w1, w26, #0x514, lsl #12
     910:	49575f36 	.inst	0x49575f36 ; undefined
     914:	5f485444 	shl	d4, d2, #8
     918:	3233205f 	orr	wsp, w2, #0x3fe000
     91c:	544e4900 	b.eq	9d23c <fat32_open+0x9c914>  // b.none
     920:	5f58414d 	.inst	0x5f58414d ; undefined
     924:	61660043 	.inst	0x61660043 ; undefined
     928:	5f323374 	.inst	0x5f323374 ; undefined
     92c:	64616572 	.inst	0x64616572 ; undefined
     930:	756c635f 	.inst	0x756c635f ; undefined
     934:	72657473 	.inst	0x72657473 ; undefined
     938:	544e4900 	b.eq	9d258 <fat32_open+0x9c930>  // b.none
     93c:	5341465f 	.inst	0x5341465f ; undefined
     940:	4d5f3854 	.inst	0x4d5f3854 ; undefined
     944:	72005841 	ands	w1, w2, #0x7fffff
     948:	6c757365 	ldnp	d5, d28, [x27, #-176]
     94c:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     950:	544e4955 	.inst	0x544e4955 ; undefined
     954:	5341465f 	.inst	0x5341465f ; undefined
     958:	5f363154 	.inst	0x5f363154 ; undefined
     95c:	5f58414d 	.inst	0x5f58414d ; undefined
     960:	7830205f 	steorh	w16, [x2]
     964:	66666666 	.inst	0x66666666 ; undefined
     968:	66666666 	.inst	0x66666666 ; undefined
     96c:	5f5f0055 	.inst	0x5f5f0055 ; undefined
     970:	4d544e49 	.inst	0x4d544e49 ; undefined
     974:	545f5841 	b.ne	bf47c <fat32_open+0xbeb54>  // b.any
     978:	5f455059 	.inst	0x5f455059 ; undefined
     97c:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
     980:	6920676e 	.inst	0x6920676e ; undefined
     984:	5f00746e 	.inst	0x5f00746e ; undefined
     988:	544c465f 	.inst	0x544c465f ; undefined
     98c:	485f3631 	ldxrh	w17, [x17]
     990:	445f5341 	.inst	0x445f5341 ; undefined
     994:	524f4e45 	.inst	0x524f4e45 ; undefined
     998:	205f5f4d 	.inst	0x205f5f4d ; undefined
     99c:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     9a0:	33434544 	.inst	0x33434544 ; undefined
     9a4:	414d5f32 	.inst	0x414d5f32 ; undefined
     9a8:	205f5f58 	.inst	0x205f5f58 ; undefined
     9ac:	39392e39 	strb	w25, [x17, #3659]
     9b0:	39393939 	strb	w25, [x9, #3662]
     9b4:	44363945 	.inst	0x44363945 ; undefined
     9b8:	545f0046 	b.vs	be9c0 <fat32_open+0xbe098>
     9bc:	4843575f 	ldxrh	wzr, [x26]
     9c0:	00205241 	.inst	0x00205241 ; NYI
     9c4:	65727070 	fnmls	z16.h, p4/m, z3.h, z18.h
     9c8:	43570076 	.inst	0x43570076 ; undefined
     9cc:	5f524148 	.inst	0x5f524148 ; undefined
     9d0:	2058414d 	.inst	0x2058414d ; undefined
     9d4:	43575f5f 	.inst	0x43575f5f ; undefined
     9d8:	5f524148 	.inst	0x5f524148 ; undefined
     9dc:	5f58414d 	.inst	0x5f58414d ; undefined
     9e0:	5f5f005f 	.inst	0x5f5f005f ; undefined
     9e4:	33544c46 	.inst	0x33544c46 ; undefined
     9e8:	485f5832 	ldxrh	w18, [x1]
     9ec:	495f5341 	.inst	0x495f5341 ; undefined
     9f0:	4e49464e 	.inst	0x4e49464e ; undefined
     9f4:	5f595449 	shl	d9, d2, #25
     9f8:	0031205f 	.inst	0x0031205f ; NYI
     9fc:	544e4955 	.inst	0x544e4955 ; undefined
     a00:	5341465f 	.inst	0x5341465f ; undefined
     a04:	5f363154 	.inst	0x5f363154 ; undefined
     a08:	2058414d 	.inst	0x2058414d ; undefined
     a0c:	49555f5f 	.inst	0x49555f5f ; undefined
     a10:	465f544e 	.inst	0x465f544e ; undefined
     a14:	31545341 	adds	w1, w26, #0x514, lsl #12
     a18:	414d5f36 	.inst	0x414d5f36 ; undefined
     a1c:	005f5f58 	.inst	0x005f5f58 ; undefined
     a20:	5359535f 	.inst	0x5359535f ; undefined
     a24:	5a49535f 	.inst	0x5a49535f ; undefined
     a28:	5f545f45 	.inst	0x5f545f45 ; undefined
     a2c:	5f002048 	.inst	0x5f002048 ; undefined
     a30:	4e49555f 	.inst	0x4e49555f ; undefined
     a34:	454c5f54 	.inst	0x454c5f54 ; undefined
     a38:	38545341 	ldurb	w1, [x26, #-187]
     a3c:	5059545f 	adr	xzr, b34c6 <fat32_open+0xb2b9e>
     a40:	205f5f45 	.inst	0x205f5f45 ; undefined
     a44:	69736e75 	ldpsw	x21, x27, [x19, #-104]
     a48:	64656e67 	.inst	0x64656e67 ; undefined
     a4c:	61686320 	.inst	0x61686320 ; undefined
     a50:	5f5f0072 	.inst	0x5f5f0072 ; undefined
     a54:	6c5f6176 	ldnp	d22, d24, [x11, #496]
     a58:	5f747369 	sqdmlsl	s9, h27, v4.h[3]
     a5c:	6c00205f 	stnp	d31, d8, [x2]
     a60:	20676e6f 	.inst	0x20676e6f ; undefined
     a64:	00746e69 	.inst	0x00746e69 ; undefined
     a68:	544e4955 	.inst	0x544e4955 ; undefined
     a6c:	414d5f38 	.inst	0x414d5f38 ; undefined
     a70:	49530058 	.inst	0x49530058 ; undefined
     a74:	4d5f455a 	.inst	0x4d5f455a ; undefined
     a78:	5f205841 	fmls	h1, h2, v0.h[6]
     a7c:	5a49535f 	.inst	0x5a49535f ; undefined
     a80:	414d5f45 	.inst	0x414d5f45 ; undefined
     a84:	005f5f58 	.inst	0x005f5f58 ; undefined
     a88:	4c465f5f 	.inst	0x4c465f5f ; undefined
     a8c:	58323354 	ldr	x20, 650f4 <fat32_open+0x647cc>
     a90:	4345445f 	.inst	0x4345445f ; undefined
     a94:	4c414d49 	.inst	0x4c414d49 ; undefined
     a98:	4749445f 	.inst	0x4749445f ; undefined
     a9c:	31205f5f 	cmn	w26, #0x817
     aa0:	5f5f0037 	.inst	0x5f5f0037 ; undefined
     aa4:	33544c46 	.inst	0x33544c46 ; undefined
     aa8:	485f5832 	ldxrh	w18, [x1]
     aac:	515f5341 	sub	w1, w26, #0x7d4, lsl #12
     ab0:	54454955 	.inst	0x54454955 ; undefined
     ab4:	4e414e5f 	.inst	0x4e414e5f ; undefined
     ab8:	31205f5f 	cmn	w26, #0x817
     abc:	53494c00 	.inst	0x53494c00 ; undefined
     ac0:	454e5f54 	.inst	0x454e5f54 ; undefined
     ac4:	70285458 	adr	x24, 5154f <fat32_open+0x50c27>
     ac8:	6e2c7274 	uabdl2	v20.8h, v19.16b, v12.16b
     acc:	2965646f 	ldp	w15, w25, [x3, #-216]
     ad0:	4e4f4320 	.inst	0x4e4f4320 ; undefined
     ad4:	4e494154 	.inst	0x4e494154 ; undefined
     ad8:	4f5f5245 	.inst	0x4f5f5245 ; undefined
     adc:	5f5f2846 	.inst	0x5f5f2846 ; undefined
     ae0:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
     ae4:	5f5f666f 	.inst	0x5f5f666f ; undefined
     ae8:	74702a28 	.inst	0x74702a28 ; undefined
     aec:	202c2972 	.inst	0x202c2972 ; undefined
     af0:	72747028 	.inst	0x72747028 ; undefined
     af4:	6e3e2d29 	uqsub	v9.16b, v9.16b, v30.16b
     af8:	2e65646f 	umax	v15.4h, v3.4h, v5.4h
     afc:	7478656e 	.inst	0x7478656e ; undefined
     b00:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
     b04:	00296564 	.inst	0x00296564 ; NYI
     b08:	45445f5f 	.inst	0x45445f5f ; undefined
     b0c:	38323143 	ldsetb	w18, w3, [x10]
     b10:	4e494d5f 	.inst	0x4e494d5f ; undefined
     b14:	5058455f 	adr	xzr, b13be <fat32_open+0xb0a96>
     b18:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     b1c:	3431362d 	cbz	w13, 631e0 <fat32_open+0x628b8>
     b20:	5f002932 	.inst	0x5f002932 ; undefined
     b24:	544e495f 	.inst	0x544e495f ; undefined
     b28:	5341465f 	.inst	0x5341465f ; undefined
     b2c:	545f3854 	.inst	0x545f3854 ; undefined
     b30:	5f455059 	.inst	0x5f455059 ; undefined
     b34:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
     b38:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     b3c:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
     b40:	5f5f745f 	sqshl	d31, d2, #31
     b44:	5f5f0020 	.inst	0x5f5f0020 ; undefined
     b48:	31544c46 	adds	w6, w2, #0x513, lsl #12
     b4c:	4d5f3832 	.inst	0x4d5f3832 ; undefined
     b50:	455f4e49 	.inst	0x455f4e49 ; undefined
     b54:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     b58:	312d2820 	adds	w0, w1, #0xb4a
     b5c:	31383336 	adds	w22, w25, #0xe0c
     b60:	657a0029 	fmla	z9.h, p0/m, z1.h, z26.h
     b64:	5f006f72 	.inst	0x5f006f72 ; undefined
     b68:	4e49555f 	.inst	0x4e49555f ; undefined
     b6c:	41465f54 	.inst	0x41465f54 ; undefined
     b70:	34365453 	cbz	w19, 6d5f8 <fat32_open+0x6ccd0>
     b74:	5059545f 	adr	xzr, b35fe <fat32_open+0xb2cd6>
     b78:	205f5f45 	.inst	0x205f5f45 ; undefined
     b7c:	676e6f6c 	.inst	0x676e6f6c ; undefined
     b80:	736e7520 	.inst	0x736e7520 ; undefined
     b84:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     b88:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
     b8c:	494c0074 	.inst	0x494c0074 ; undefined
     b90:	4c5f5453 	.inst	0x4c5f5453 ; undefined
     b94:	28545341 	ldnp	w1, w20, [x26, #160]
     b98:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
     b9c:	6165682c 	.inst	0x6165682c ; undefined
     ba0:	6f6e2c64 	.inst	0x6f6e2c64 ; undefined
     ba4:	20296564 	.inst	0x20296564 ; undefined
     ba8:	544e4f43 	b.cc	9d590 <fat32_open+0x9cc68>  // b.lo, b.ul, b.last
     bac:	454e4941 	.inst	0x454e4941 ; undefined
     bb0:	464f5f52 	.inst	0x464f5f52 ; undefined
     bb4:	70797428 	adr	x8, f3a3b <fat32_open+0xf3113>
     bb8:	28202c65 	stnp	w5, w11, [x3, #-256]
     bbc:	64616568 	.inst	0x64616568 ; undefined
     bc0:	703e2d29 	adr	x9, 7d167 <fat32_open+0x7c83f>
     bc4:	2c766572 	ldnp	s18, s25, [x11, #-80]
     bc8:	646f6e20 	.inst	0x646f6e20 ; undefined
     bcc:	5f002965 	.inst	0x5f002965 ; undefined
     bd0:	544e495f 	.inst	0x544e495f ; undefined
     bd4:	41454c5f 	.inst	0x41454c5f ; undefined
     bd8:	5f385453 	.inst	0x5f385453 ; undefined
     bdc:	45505954 	.inst	0x45505954 ; undefined
     be0:	73205f5f 	.inst	0x73205f5f ; undefined
     be4:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     be8:	68632064 	.inst	0x68632064 ; undefined
     bec:	5f007261 	.inst	0x5f007261 ; undefined
     bf0:	5a49535f 	.inst	0x5a49535f ; undefined
     bf4:	5f464f45 	.inst	0x5f464f45 ; undefined
     bf8:	4e494f50 	.inst	0x4e494f50 ; undefined
     bfc:	5f524554 	.inst	0x5f524554 ; undefined
     c00:	0038205f 	.inst	0x0038205f ; NYI
     c04:	43475f5f 	.inst	0x43475f5f ; undefined
     c08:	54415f43 	b.cc	837f0 <fat32_open+0x82ec8>  // b.lo, b.ul, b.last
     c0c:	43494d4f 	.inst	0x43494d4f ; undefined
     c10:	4f4f425f 	.inst	0x4f4f425f ; undefined
     c14:	4f4c5f4c 	.inst	0x4f4c5f4c ; undefined
     c18:	465f4b43 	.inst	0x465f4b43 ; undefined
     c1c:	20454552 	.inst	0x20454552 ; undefined
     c20:	5f5f0032 	.inst	0x5f5f0032 ; undefined
     c24:	36544c46 	tbz	w6, #10, ffffffffffff95ac <fat32_open+0xffffffffffff8c84>
     c28:	485f5834 	ldxrh	w20, [x1]
     c2c:	445f5341 	.inst	0x445f5341 ; undefined
     c30:	524f4e45 	.inst	0x524f4e45 ; undefined
     c34:	205f5f4d 	.inst	0x205f5f4d ; undefined
     c38:	4e490031 	.inst	0x4e490031 ; undefined
     c3c:	41465f54 	.inst	0x41465f54 ; undefined
     c40:	32335453 	orr	w19, w2, #0xffffe007
     c44:	58414d5f 	ldr	xzr, 835ec <fat32_open+0x82cc4>
     c48:	74616600 	.inst	0x74616600 ; undefined
     c4c:	725f3233 	.inst	0x725f3233 ; undefined
     c50:	5f646165 	.inst	0x5f646165 ; undefined
     c54:	69616863 	ldpsw	x3, x26, [x3, #-248]
     c58:	5f5f006e 	.inst	0x5f5f006e ; undefined
     c5c:	33544c46 	.inst	0x33544c46 ; undefined
     c60:	414d5f32 	.inst	0x414d5f32 ; undefined
     c64:	58455f58 	ldr	x24, 8b84c <fat32_open+0x8af24>
     c68:	205f5f50 	.inst	0x205f5f50 ; undefined
     c6c:	00383231 	.inst	0x00383231 ; NYI
     c70:	544e4955 	.inst	0x544e4955 ; undefined
     c74:	41454c5f 	.inst	0x41454c5f ; undefined
     c78:	5f385453 	.inst	0x5f385453 ; undefined
     c7c:	2058414d 	.inst	0x2058414d ; undefined
     c80:	49555f5f 	.inst	0x49555f5f ; undefined
     c84:	4c5f544e 	.inst	0x4c5f544e ; undefined
     c88:	54534145 	b.pl	a74b0 <fat32_open+0xa6b88>  // b.nfrst
     c8c:	414d5f38 	.inst	0x414d5f38 ; undefined
     c90:	005f5f58 	.inst	0x005f5f58 ; undefined
     c94:	5453494c 	b.gt	a75bc <fat32_open+0xa6c94>
     c98:	4145485f 	.inst	0x4145485f ; undefined
     c9c:	616e2844 	.inst	0x616e2844 ; undefined
     ca0:	2029656d 	.inst	0x2029656d ; undefined
     ca4:	75727473 	.inst	0x75727473 ; undefined
     ca8:	6c207463 	stnp	d3, d29, [x3, #-512]
     cac:	5f747369 	sqdmlsl	s9, h27, v4.h[3]
     cb0:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
     cb4:	6d616e20 	ldp	d0, d27, [x17, #-496]
     cb8:	5f5f0065 	.inst	0x5f5f0065 ; undefined
     cbc:	4c42444c 	.inst	0x4c42444c ; undefined
     cc0:	4e45445f 	.inst	0x4e45445f ; undefined
     cc4:	5f4d524f 	.inst	0x5f4d524f ; undefined
     cc8:	5f4e494d 	.inst	0x5f4e494d ; undefined
     ccc:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
     cd0:	31353734 	adds	w20, w25, #0xd4d
     cd4:	31313537 	adds	w23, w9, #0xc4d
     cd8:	38333439 	.inst	0x38333439 ; undefined
     cdc:	31353230 	adds	w16, w17, #0xd4c
     ce0:	32393031 	orr	w17, w1, #0xfff80
     ce4:	38333434 	.inst	0x38333434 ; undefined
     ce8:	32383539 	orr	w25, w9, #0x3fff00
     cec:	34363732 	cbz	w18, 6d3d0 <fat32_open+0x6caa8>
     cf0:	65353536 	.inst	0x65353536 ; undefined
     cf4:	3639342d 	tbz	w13, #7, 3378 <.debug_str+0x3378>
     cf8:	73004c36 	.inst	0x73004c36 ; undefined
     cfc:	74726f68 	.inst	0x74726f68 ; undefined
     d00:	736e7520 	.inst	0x736e7520 ; undefined
     d04:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     d08:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
     d0c:	49550074 	.inst	0x49550074 ; undefined
     d10:	465f544e 	.inst	0x465f544e ; undefined
     d14:	38545341 	ldurb	w1, [x26, #-187]
     d18:	58414d5f 	ldr	xzr, 836c0 <fat32_open+0x82d98>
     d1c:	555f5f20 	.inst	0x555f5f20 ; undefined
     d20:	5f544e49 	.inst	0x5f544e49 ; undefined
     d24:	54534146 	b.vs	a754c <fat32_open+0xa6c24>
     d28:	414d5f38 	.inst	0x414d5f38 ; undefined
     d2c:	005f5f58 	.inst	0x005f5f58 ; undefined
     d30:	4c465f5f 	.inst	0x4c465f5f ; undefined
     d34:	58323354 	ldr	x20, 6539c <fat32_open+0x64a74>
     d38:	4e494d5f 	.inst	0x4e494d5f ; undefined
     d3c:	5f30315f 	.inst	0x5f30315f ; undefined
     d40:	5f505845 	.inst	0x5f505845 ; undefined
     d44:	2d28205f 	stp	s31, s8, [x2, #-192]
     d48:	29373033 	stp	w19, w12, [x1, #-72]
     d4c:	67657200 	.inst	0x67657200 ; undefined
     d50:	72616c75 	.inst	0x72616c75 ; undefined
     d54:	7269645f 	.inst	0x7269645f ; undefined
     d58:	746e655f 	.inst	0x746e655f ; undefined
     d5c:	55007972 	.inst	0x55007972 ; undefined
     d60:	38544e49 	ldrb	w9, [x18, #-188]!
     d64:	58414d5f 	ldr	xzr, 8370c <fat32_open+0x82de4>
     d68:	555f5f20 	.inst	0x555f5f20 ; undefined
     d6c:	38544e49 	ldrb	w9, [x18, #-188]!
     d70:	58414d5f 	ldr	xzr, 83718 <fat32_open+0x82df0>
     d74:	53005f5f 	ubfx	wzr, w26, #0, #24
     d78:	415f4749 	.inst	0x415f4749 ; undefined
     d7c:	494d4f54 	.inst	0x494d4f54 ; undefined
     d80:	494d5f43 	.inst	0x494d5f43 ; undefined
     d84:	5f5f004e 	.inst	0x5f5f004e ; undefined
     d88:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     d8c:	54414546 	b.vs	83634 <fat32_open+0x82d0c>
     d90:	5f455255 	.inst	0x5f455255 ; undefined
     d94:	36315046 	tbz	w6, #6, 379c <.debug_str+0x379c>
     d98:	4345565f 	.inst	0x4345565f ; undefined
     d9c:	5f524f54 	.inst	0x5f524f54 ; undefined
     da0:	54495241 	b.ne	937e8 <fat32_open+0x92ec0>  // b.any
     da4:	54454d48 	b.hi	8b74c <fat32_open+0x8ae24>  // b.pmore
     da8:	5f004349 	.inst	0x5f004349 ; undefined
     dac:	4e49555f 	.inst	0x4e49555f ; undefined
     db0:	41465f54 	.inst	0x41465f54 ; undefined
     db4:	34365453 	cbz	w19, 6d83c <fat32_open+0x6cf14>
     db8:	58414d5f 	ldr	xzr, 83760 <fat32_open+0x82e38>
     dbc:	30205f5f 	adr	xzr, 419a5 <fat32_open+0x4107d>
     dc0:	66666678 	.inst	0x66666678 ; undefined
     dc4:	66666666 	.inst	0x66666666 ; undefined
     dc8:	66666666 	.inst	0x66666666 ; undefined
     dcc:	66666666 	.inst	0x66666666 ; undefined
     dd0:	004c5566 	.inst	0x004c5566 ; undefined
     dd4:	676e656c 	.inst	0x676e656c ; undefined
     dd8:	63006874 	.inst	0x63006874 ; undefined
     ddc:	7473756c 	.inst	0x7473756c ; undefined
     de0:	735f7265 	.inst	0x735f7265 ; undefined
     de4:	00657a69 	.inst	0x00657a69 ; undefined
     de8:	5453494c 	b.gt	a7710 <fat32_open+0xa6de8>
     dec:	504d455f 	adr	xzr, 9b696 <fat32_open+0x9ad6e>
     df0:	68285954 	.inst	0x68285954 ; undefined
     df4:	29646165 	ldp	w5, w24, [x11, #-224]
     df8:	68282820 	.inst	0x68282820 ; undefined
     dfc:	29646165 	ldp	w5, w24, [x11, #-224]
     e00:	656e3e2d 	fmls	z13.h, p7/m, z17.h, z14.h
     e04:	3d207478 	str	b24, [x3, #2077]
     e08:	6568203d 	fmls	z29.h, p0/m, z1.h, z8.h
     e0c:	00296461 	.inst	0x00296461 ; NYI
     e10:	4c465f5f 	.inst	0x4c465f5f ; undefined
     e14:	414d5f54 	.inst	0x414d5f54 ; undefined
     e18:	58455f58 	ldr	x24, 8ba00 <fat32_open+0x8b0d8>
     e1c:	205f5f50 	.inst	0x205f5f50 ; undefined
     e20:	00383231 	.inst	0x00383231 ; NYI
     e24:	544e4957 	.inst	0x544e4957 ; undefined
     e28:	4e494d5f 	.inst	0x4e494d5f ; undefined
     e2c:	575f5f20 	.inst	0x575f5f20 ; undefined
     e30:	5f544e49 	.inst	0x5f544e49 ; undefined
     e34:	5f4e494d 	.inst	0x5f4e494d ; undefined
     e38:	5f5f005f 	.inst	0x5f5f005f ; undefined
     e3c:	455a4953 	.inst	0x455a4953 ; undefined
     e40:	4c5f464f 	.inst	0x4c5f464f ; undefined
     e44:	5f474e4f 	.inst	0x5f474e4f ; undefined
     e48:	0038205f 	.inst	0x0038205f ; NYI
     e4c:	696e6170 	ldpsw	x16, x24, [x11, #-144]
     e50:	6d662863 	ldp	d3, d10, [x3, #-416]
     e54:	2e2e2c74 	uqsub	v20.8b, v3.8b, v14.8b
     e58:	5f20292e 	.inst	0x5f20292e ; undefined
     e5c:	6e61705f 	uabdl2	v31.4s, v2.8h, v1.8h
     e60:	5f286369 	.inst	0x5f286369 ; undefined
     e64:	4c49465f 	.inst	0x4c49465f ; undefined
     e68:	2c5f5f45 	ldnp	s5, s23, [x26, #248]
     e6c:	4c5f5f20 	.inst	0x4c5f5f20 ; undefined
     e70:	5f454e49 	.inst	0x5f454e49 ; undefined
     e74:	5f202c5f 	.inst	0x5f202c5f ; undefined
     e78:	6e75665f 	umax	v31.8h, v18.8h, v21.8h
     e7c:	2c5f5f63 	ldnp	s3, s23, [x27, #248]
     e80:	746d6620 	.inst	0x746d6620 ; undefined
     e84:	2323202c 	.inst	0x2323202c ; undefined
     e88:	41565f5f 	.inst	0x41565f5f ; undefined
     e8c:	4752415f 	.inst	0x4752415f ; undefined
     e90:	295f5f53 	ldp	w19, w23, [x26, #248]
     e94:	544e4900 	b.eq	9d7b4 <fat32_open+0x9ce8c>  // b.none
     e98:	5f58414d 	.inst	0x5f58414d ; undefined
     e9c:	2058414d 	.inst	0x2058414d ; undefined
     ea0:	4e495f5f 	.inst	0x4e495f5f ; undefined
     ea4:	58414d54 	ldr	x20, 8384c <fat32_open+0x82f24>
     ea8:	58414d5f 	ldr	xzr, 83850 <fat32_open+0x82f28>
     eac:	5f005f5f 	.inst	0x5f005f5f ; undefined
     eb0:	544e495f 	.inst	0x544e495f ; undefined
     eb4:	41454c5f 	.inst	0x41454c5f ; undefined
     eb8:	32335453 	orr	w19, w2, #0xffffe007
     ebc:	4449575f 	.inst	0x4449575f ; undefined
     ec0:	5f5f4854 	.inst	0x5f5f4854 ; undefined
     ec4:	00323320 	.inst	0x00323320 ; NYI
     ec8:	444c5f5f 	.inst	0x444c5f5f ; undefined
     ecc:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
     ed0:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
     ed4:	58455f30 	ldr	x16, 8bab8 <fat32_open+0x8b190>
     ed8:	205f5f50 	.inst	0x205f5f50 ; undefined
     edc:	32333934 	orr	w20, w9, #0xfffe000
     ee0:	65726300 	fnmls	z0.h, p0/m, z24.h, z18.h
     ee4:	6f697461 	uqshl	v1.2d, v3.2d, #41
     ee8:	61645f6e 	.inst	0x61645f6e ; undefined
     eec:	5f006574 	.inst	0x5f006574 ; undefined
     ef0:	4e494c5f 	.inst	0x4e494c5f ; undefined
     ef4:	5f4f5241 	.inst	0x5f4f5241 ; undefined
     ef8:	454c4552 	.inst	0x454c4552 ; undefined
     efc:	5f455341 	.inst	0x5f455341 ; undefined
     f00:	3032205f 	adr	xzr, 65309 <fat32_open+0x649e1>
     f04:	31313731 	adds	w17, w25, #0xc4d
     f08:	505f5f00 	adr	x0, bfaea <fat32_open+0xbf1c2>
     f0c:	5f5f4549 	.inst	0x5f5f4549 ; undefined
     f10:	5f003120 	.inst	0x5f003120 ; undefined
     f14:	544c465f 	.inst	0x544c465f ; undefined
     f18:	445f3436 	.inst	0x445f3436 ; undefined
     f1c:	524f4e45 	.inst	0x524f4e45 ; undefined
     f20:	494d5f4d 	.inst	0x494d5f4d ; undefined
     f24:	205f5f4e 	.inst	0x205f5f4e ; undefined
     f28:	34392e34 	cbz	w20, 734ec <fat32_open+0x72bc4>
     f2c:	36353630 	tbz	w16, #6, ffffffffffffb5f0 <fat32_open+0xffffffffffffacc8>
     f30:	34383534 	cbz	w20, 715d4 <fat32_open+0x70cac>
     f34:	36343231 	tbz	w17, #6, ffffffffffff9578 <fat32_open+0xffffffffffff8c50>
     f38:	31343435 	adds	w21, w1, #0xd0d
     f3c:	36353637 	tbz	w23, #6, ffffffffffffb600 <fat32_open+0xffffffffffffacd8>
     f40:	32393738 	orr	w24, w25, #0x1fff80
     f44:	32383638 	orr	w24, w17, #0x3fff00
     f48:	37333132 	tbnz	w18, #6, 756c <fat32_open+0x6c44>
     f4c:	332d6532 	.inst	0x332d6532 ; undefined
     f50:	36463432 	tbz	w18, #8, ffffffffffffd5d4 <fat32_open+0xffffffffffffccac>
     f54:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     f58:	36434544 	tbz	w4, #8, 7800 <fat32_open+0x6ed8>
     f5c:	414d5f34 	.inst	0x414d5f34 ; undefined
     f60:	205f5f58 	.inst	0x205f5f58 ; undefined
     f64:	39392e39 	strb	w25, [x17, #3659]
     f68:	39393939 	strb	w25, [x9, #3662]
     f6c:	39393939 	strb	w25, [x9, #3662]
     f70:	39393939 	strb	w25, [x9, #3662]
     f74:	38334539 	.inst	0x38334539 ; undefined
     f78:	00444434 	.inst	0x00444434 ; undefined
     f7c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     f80:	494d5f54 	.inst	0x494d5f54 ; undefined
     f84:	30315f4e 	adr	x14, 63b6d <fat32_open+0x63245>
     f88:	5058455f 	adr	xzr, b1832 <fat32_open+0xb0f0a>
     f8c:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     f90:	2937332d 	stp	w13, w12, [x25, #-72]
     f94:	465f5f00 	.inst	0x465f5f00 ; undefined
     f98:	445f544c 	.inst	0x445f544c ; undefined
     f9c:	4d494345 	.inst	0x4d494345 ; undefined
     fa0:	445f4c41 	.inst	0x445f4c41 ; undefined
     fa4:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     fa8:	73003920 	.inst	0x73003920 ; undefined
     fac:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     fb0:	68632064 	.inst	0x68632064 ; undefined
     fb4:	75007261 	.inst	0x75007261 ; undefined
     fb8:	38746e69 	.inst	0x38746e69 ; undefined
     fbc:	4900745f 	.inst	0x4900745f ; undefined
     fc0:	5f38544e 	.inst	0x5f38544e ; undefined
     fc4:	0058414d 	.inst	0x0058414d ; undefined
     fc8:	4d544e49 	.inst	0x4d544e49 ; undefined
     fcc:	4d5f5841 	.inst	0x4d5f5841 ; undefined
     fd0:	28204e49 	stnp	w9, w19, [x18, #-256]
     fd4:	544e492d 	b.le	9d8f8 <fat32_open+0x9cfd0>
     fd8:	5f58414d 	.inst	0x5f58414d ; undefined
     fdc:	2058414d 	.inst	0x2058414d ; undefined
     fe0:	2931202d 	stp	w13, w8, [x1, #-120]
     fe4:	544e4900 	b.eq	9d904 <fat32_open+0x9cfdc>  // b.none
     fe8:	435f3233 	.inst	0x435f3233 ; undefined
     fec:	20296328 	.inst	0x20296328 ; undefined
     ff0:	4e495f5f 	.inst	0x4e495f5f ; undefined
     ff4:	5f323354 	.inst	0x5f323354 ; undefined
     ff8:	29632843 	ldp	w3, w10, [x2, #-232]
     ffc:	465f5f00 	.inst	0x465f5f00 ; undefined
    1000:	3233544c 	orr	w12, w2, #0xffffe007
    1004:	4e45445f 	.inst	0x4e45445f ; undefined
    1008:	5f4d524f 	.inst	0x5f4d524f ; undefined
    100c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1010:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1014:	32313034 	orr	w20, w1, #0xfff8000
    1018:	36343839 	tbz	w25, #6, ffffffffffff971c <fat32_open+0xffffffffffff8df4>
    101c:	34323334 	cbz	w20, 65680 <fat32_open+0x64d58>
    1020:	30373138 	adr	x24, 6f645 <fat32_open+0x6ed1d>
    1024:	32393037 	orr	w23, w1, #0xfff80
    1028:	39323733 	strb	w19, [x25, #3213]
    102c:	32333835 	orr	w21, w1, #0xfffe000
    1030:	31393938 	adds	w24, w9, #0xe4e
    1034:	65333136 	.inst	0x65333136 ; undefined
    1038:	4635342d 	.inst	0x4635342d ; undefined
    103c:	5f003233 	.inst	0x5f003233 ; undefined
    1040:	554e475f 	.inst	0x554e475f ; undefined
    1044:	54535f43 	b.cc	a7c2c <fat32_open+0xa7304>  // b.lo, b.ul, b.last
    1048:	495f4344 	.inst	0x495f4344 ; undefined
    104c:	4e494c4e 	.inst	0x4e494c4e ; undefined
    1050:	205f5f45 	.inst	0x205f5f45 ; undefined
    1054:	61660031 	.inst	0x61660031 ; undefined
    1058:	5f323374 	.inst	0x5f323374 ; undefined
    105c:	6e65706f 	uabdl2	v15.4s, v3.8h, v5.8h
    1060:	415f5f00 	.inst	0x415f5f00 ; undefined
    1064:	465f4d52 	.inst	0x465f4d52 ; undefined
    1068:	5f363150 	.inst	0x5f363150 ; undefined
    106c:	53475241 	.inst	0x53475241 ; undefined
    1070:	5f003120 	.inst	0x5f003120 ; undefined
    1074:	5245565f 	.inst	0x5245565f ; undefined
    1078:	4e4f4953 	.inst	0x4e4f4953 ; undefined
    107c:	22205f5f 	.inst	0x22205f5f ; undefined
    1080:	2e322e37 	uqsub	v23.8b, v17.8b, v18.8b
    1084:	30322031 	adr	x17, 65489 <fat32_open+0x64b61>
    1088:	30313731 	adr	x17, 6376d <fat32_open+0x62e45>
    108c:	00223131 	.inst	0x00223131 ; NYI
    1090:	4e475f5f 	.inst	0x4e475f5f ; undefined
    1094:	505f4355 	adr	x21, bf8fe <fat32_open+0xbefd6>
    1098:	48435441 	ldxrh	w1, [x2]
    109c:	4556454c 	.inst	0x4556454c ; undefined
    10a0:	205f5f4c 	.inst	0x205f5f4c ; undefined
    10a4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    10a8:	5f434347 	.inst	0x5f434347 ; undefined
    10ac:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    10b0:	435f4349 	.inst	0x435f4349 ; undefined
    10b4:	33524148 	.inst	0x33524148 ; undefined
    10b8:	5f545f32 	.inst	0x5f545f32 ; undefined
    10bc:	4b434f4c 	sub	w12, w26, w3, lsr #19
    10c0:	4552465f 	.inst	0x4552465f ; undefined
    10c4:	00322045 	.inst	0x00322045 ; NYI
    10c8:	33544146 	.inst	0x33544146 ; undefined
    10cc:	41445f32 	.inst	0x41445f32 ; undefined
    10d0:	414d5f59 	.inst	0x414d5f59 ; undefined
    10d4:	30204b53 	adr	x19, 41a3d <fat32_open+0x41115>
    10d8:	31303078 	adds	w24, w3, #0xc0c
    10dc:	54500066 	b.vs	a10e8 <fat32_open+0xa07c0>
    10e0:	46494452 	.inst	0x46494452 ; undefined
    10e4:	494d5f46 	.inst	0x494d5f46 ; undefined
    10e8:	5f5f004e 	.inst	0x5f5f004e ; undefined
    10ec:	44525450 	.inst	0x44525450 ; undefined
    10f0:	5f464649 	.inst	0x5f464649 ; undefined
    10f4:	54444957 	.inst	0x54444957 ; undefined
    10f8:	205f5f48 	.inst	0x205f5f48 ; undefined
    10fc:	5f003436 	.inst	0x5f003436 ; undefined
    1100:	4e49555f 	.inst	0x4e49555f ; undefined
    1104:	454c5f54 	.inst	0x454c5f54 ; undefined
    1108:	31545341 	adds	w1, w26, #0x514, lsl #12
    110c:	414d5f36 	.inst	0x414d5f36 ; undefined
    1110:	205f5f58 	.inst	0x205f5f58 ; undefined
    1114:	66667830 	.inst	0x66667830 ; undefined
    1118:	55006666 	.inst	0x55006666 ; undefined
    111c:	50544e49 	adr	x9, a9ae6 <fat32_open+0xa91be>
    1120:	4d5f5254 	.inst	0x4d5f5254 ; undefined
    1124:	5f205841 	fmls	h1, h2, v0.h[6]
    1128:	4e49555f 	.inst	0x4e49555f ; undefined
    112c:	52545054 	.inst	0x52545054 ; undefined
    1130:	58414d5f 	ldr	xzr, 83ad8 <fat32_open+0x831b0>
    1134:	70005f5f 	adr	xzr, 1d1f <.debug_str+0x1d1f>
    1138:	746e696f 	.inst	0x746e696f ; undefined
    113c:	646e695f 	.inst	0x646e695f ; undefined
    1140:	5f007865 	.inst	0x5f007865 ; undefined
    1144:	544c465f 	.inst	0x544c465f ; undefined
    1148:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    114c:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    1150:	4d5f4d52 	.inst	0x4d5f4d52 ; undefined
    1154:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    1158:	392e3420 	strb	w0, [x1, #2957]
    115c:	35363034 	cbnz	w20, 6d760 <fat32_open+0x6ce38>
    1160:	38353436 	.inst	0x38353436 ; undefined
    1164:	34323134 	cbz	w20, 65788 <fat32_open+0x64e60>
    1168:	34343536 	cbz	w22, 6980c <fat32_open+0x68ee4>
    116c:	35363731 	cbnz	w17, 6d850 <fat32_open+0x6cf28>
    1170:	39373836 	strb	w22, [x1, #3534]
    1174:	38363832 	.inst	0x38363832 ; undefined
    1178:	33313232 	.inst	0x33313232 ; undefined
    117c:	2d653237 	ldp	s23, s12, [x17, #-216]
    1180:	46343233 	.inst	0x46343233 ; undefined
    1184:	00783233 	.inst	0x00783233 ; undefined
    1188:	53494c48 	.inst	0x53494c48 ; undefined
    118c:	4f465f54 	.inst	0x4f465f54 ; undefined
    1190:	43414552 	.inst	0x43414552 ; undefined
    1194:	61762848 	.inst	0x61762848 ; undefined
    1198:	65682c72 	fmls	z18.h, p3/m, z3.h, z8.h
    119c:	6e2c6461 	umax	v1.16b, v3.16b, v12.16b
    11a0:	2965646f 	ldp	w15, w25, [x3, #-216]
    11a4:	726f6620 	.inst	0x726f6620 ; undefined
    11a8:	76282820 	.inst	0x76282820 ; undefined
    11ac:	20297261 	.inst	0x20297261 ; undefined
    11b0:	4c48203d 	.inst	0x4c48203d ; undefined
    11b4:	5f545349 	.inst	0x5f545349 ; undefined
    11b8:	53524946 	.inst	0x53524946 ; undefined
    11bc:	41535f54 	.inst	0x41535f54 ; undefined
    11c0:	5f284546 	.inst	0x5f284546 ; undefined
    11c4:	7079745f 	adr	xzr, f404f <fat32_open+0xf3727>
    11c8:	5f666f65 	.inst	0x5f666f65 ; undefined
    11cc:	762a285f 	.inst	0x762a285f ; undefined
    11d0:	2c297261 	stnp	s1, s28, [x19, #-184]
    11d4:	61656820 	.inst	0x61656820 ; undefined
    11d8:	6e202c64 	uqsub	v4.16b, v3.16b, v0.16b
    11dc:	2965646f 	ldp	w15, w25, [x3, #-216]
    11e0:	6176203b 	.inst	0x6176203b ; undefined
    11e4:	28203b72 	stnp	w18, w14, [x27, #-256]
    11e8:	29726176 	ldp	w22, w24, [x11, #-112]
    11ec:	48203d20 	.inst	0x48203d20 ; undefined
    11f0:	5453494c 	b.gt	a7b18 <fat32_open+0xa71f0>
    11f4:	58454e5f 	ldr	xzr, 8bbbc <fat32_open+0x8b294>
    11f8:	41535f54 	.inst	0x41535f54 ; undefined
    11fc:	76284546 	.inst	0x76284546 ; undefined
    1200:	202c7261 	.inst	0x202c7261 ; undefined
    1204:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    1208:	5f002929 	.inst	0x5f002929 ; undefined
    120c:	544c465f 	.inst	0x544c465f ; undefined
    1210:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1214:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
    1218:	58455f30 	ldr	x16, 8bdfc <fat32_open+0x8b4d4>
    121c:	205f5f50 	.inst	0x205f5f50 ; undefined
    1220:	00383033 	.inst	0x00383033 ; NYI
    1224:	544e4957 	.inst	0x544e4957 ; undefined
    1228:	4e494d5f 	.inst	0x4e494d5f ; undefined
    122c:	495f5f00 	.inst	0x495f5f00 ; undefined
    1230:	3436544e 	cbz	w14, 6dcb8 <fat32_open+0x6d390>
    1234:	6328435f 	.inst	0x6328435f ; undefined
    1238:	20632029 	.inst	0x20632029 ; undefined
    123c:	4c202323 	.inst	0x4c202323 ; undefined
    1240:	72696400 	.inst	0x72696400 ; undefined
    1244:	6275735f 	.inst	0x6275735f ; undefined
    1248:	006b625f 	.inst	0x006b625f ; undefined
    124c:	4453425f 	.inst	0x4453425f ; undefined
    1250:	5a49535f 	.inst	0x5a49535f ; undefined
    1254:	5f545f45 	.inst	0x5f545f45 ; undefined
    1258:	49464544 	.inst	0x49464544 ; undefined
    125c:	5f44454e 	.inst	0x5f44454e ; undefined
    1260:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    1264:	544e4955 	.inst	0x544e4955 ; undefined
    1268:	5341465f 	.inst	0x5341465f ; undefined
    126c:	5f323354 	.inst	0x5f323354 ; undefined
    1270:	45505954 	.inst	0x45505954 ; undefined
    1274:	75205f5f 	.inst	0x75205f5f ; undefined
    1278:	6769736e 	.inst	0x6769736e ; undefined
    127c:	2064656e 	.inst	0x2064656e ; undefined
    1280:	00746e69 	.inst	0x00746e69 ; undefined
    1284:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    1288:	64656e67 	.inst	0x64656e67 ; undefined
    128c:	61686320 	.inst	0x61686320 ; undefined
    1290:	5f5f0072 	.inst	0x5f5f0072 ; undefined
    1294:	43445453 	.inst	0x43445453 ; undefined
    1298:	4654555f 	.inst	0x4654555f ; undefined
    129c:	5f32335f 	.inst	0x5f32335f ; undefined
    12a0:	0031205f 	.inst	0x0031205f ; NYI
    12a4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    12a8:	5f323354 	.inst	0x5f323354 ; undefined
    12ac:	49535045 	.inst	0x49535045 ; undefined
    12b0:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    12b4:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    12b8:	30323931 	adr	x17, 659dd <fat32_open+0x650b5>
    12bc:	39383239 	strb	w25, [x17, #3596]
    12c0:	37303535 	tbnz	w21, #6, 1964 <.debug_str+0x1964>
    12c4:	35323138 	cbnz	w24, 658e8 <fat32_open+0x64fc0>
    12c8:	30303030 	adr	x16, 618cd <fat32_open+0x60fa5>
    12cc:	30303030 	adr	x16, 618d1 <fat32_open+0x60fa9>
    12d0:	30303030 	adr	x16, 618d5 <fat32_open+0x60fad>
    12d4:	30303030 	adr	x16, 618d9 <fat32_open+0x60fb1>
    12d8:	65303030 	.inst	0x65303030 ; undefined
    12dc:	3346372d 	.inst	0x3346372d ; undefined
    12e0:	49550032 	.inst	0x49550032 ; undefined
    12e4:	3436544e 	cbz	w14, 6dd6c <fat32_open+0x6d444>
    12e8:	58414d5f 	ldr	xzr, 83c90 <fat32_open+0x83368>
    12ec:	465f5f00 	.inst	0x465f5f00 ; undefined
    12f0:	4d5f544c 	.inst	0x4d5f544c ; undefined
    12f4:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
    12f8:	58455f30 	ldr	x16, 8bedc <fat32_open+0x8b5b4>
    12fc:	205f5f50 	.inst	0x205f5f50 ; undefined
    1300:	5f003833 	.inst	0x5f003833 ; undefined
    1304:	4345445f 	.inst	0x4345445f ; undefined
    1308:	5f383231 	.inst	0x5f383231 ; undefined
    130c:	5f58414d 	.inst	0x5f58414d ; undefined
    1310:	2e39205f 	usubl	v31.8h, v2.8b, v25.8b
    1314:	39393939 	strb	w25, [x9, #3662]
    1318:	39393939 	strb	w25, [x9, #3662]
    131c:	39393939 	strb	w25, [x9, #3662]
    1320:	39393939 	strb	w25, [x9, #3662]
    1324:	39393939 	strb	w25, [x9, #3662]
    1328:	39393939 	strb	w25, [x9, #3662]
    132c:	39393939 	strb	w25, [x9, #3662]
    1330:	39393939 	strb	w25, [x9, #3662]
    1334:	31364539 	adds	w25, w9, #0xd91
    1338:	4c443434 	.inst	0x4c443434 ; undefined
    133c:	445f5f00 	.inst	0x445f5f00 ; undefined
    1340:	32314345 	orr	w5, w26, #0xffff8000
    1344:	414d5f38 	.inst	0x414d5f38 ; undefined
    1348:	58455f58 	ldr	x24, 8bf30 <fat32_open+0x8b608>
    134c:	205f5f50 	.inst	0x205f5f50 ; undefined
    1350:	35343136 	cbnz	w22, 69974 <fat32_open+0x6904c>
    1354:	544e4900 	b.eq	9dc74 <fat32_open+0x9d34c>  // b.none
    1358:	41454c5f 	.inst	0x41454c5f ; undefined
    135c:	32335453 	orr	w19, w2, #0xffffe007
    1360:	58414d5f 	ldr	xzr, 83d08 <fat32_open+0x833e0>
    1364:	495f5f20 	.inst	0x495f5f20 ; undefined
    1368:	4c5f544e 	.inst	0x4c5f544e ; undefined
    136c:	54534145 	b.pl	a7b94 <fat32_open+0xa726c>  // b.nfrst
    1370:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1374:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1378:	41485f00 	.inst	0x41485f00 ; undefined
    137c:	414d4853 	.inst	0x414d4853 ; undefined
    1380:	20485f50 	.inst	0x20485f50 ; undefined
    1384:	494c5f00 	.inst	0x494c5f00 ; undefined
    1388:	485f5453 	ldxrh	w19, [x2]
    138c:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    1390:	36544c46 	tbz	w6, #10, ffffffffffff9d18 <fat32_open+0xffffffffffff93f0>
    1394:	4d5f5834 	.inst	0x4d5f5834 ; undefined
    1398:	455f4e49 	.inst	0x455f4e49 ; undefined
    139c:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    13a0:	312d2820 	adds	w0, w1, #0xb4a
    13a4:	31383336 	adds	w22, w25, #0xe0c
    13a8:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    13ac:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    13b0:	535f4349 	.inst	0x535f4349 ; undefined
    13b4:	435f5145 	.inst	0x435f5145 ; undefined
    13b8:	35205453 	cbnz	w19, 41e40 <fat32_open+0x41518>
    13bc:	54414600 	b.eq	83c7c <fat32_open+0x83354>  // b.none
    13c0:	455f3233 	.inst	0x455f3233 ; undefined
    13c4:	5952544e 	.inst	0x5952544e ; undefined
    13c8:	5345525f 	.inst	0x5345525f ; undefined
    13cc:	45565245 	.inst	0x45565245 ; undefined
    13d0:	78302044 	ldeorh	w16, w4, [x2]
    13d4:	30303030 	adr	x16, 619d9 <fat32_open+0x610b1>
    13d8:	00313030 	.inst	0x00313030 ; NYI
    13dc:	6c616572 	ldnp	d18, d25, [x11, #-496]
    13e0:	00636f6c 	.inst	0x00636f6c ; undefined
    13e4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    13e8:	38323154 	ldsetb	w18, w20, [x10]
    13ec:	5341485f 	.inst	0x5341485f ; undefined
    13f0:	4e45445f 	.inst	0x4e45445f ; undefined
    13f4:	5f4d524f 	.inst	0x5f4d524f ; undefined
    13f8:	0031205f 	.inst	0x0031205f ; NYI
    13fc:	5f4e4942 	.inst	0x5f4e4942 ; undefined
    1400:	45444e49 	.inst	0x45444e49 ; undefined
    1404:	69732858 	ldpsw	x24, x10, [x2, #-104]
    1408:	2029657a 	.inst	0x2029657a ; undefined
    140c:	73282828 	.inst	0x73282828 ; undefined
    1410:	29657a69 	ldp	w9, w30, [x19, #-216]
    1414:	203d3c20 	.inst	0x203d3c20 ; undefined
    1418:	3f203233 	.inst	0x3f203233 ; undefined
    141c:	3a203520 	.inst	0x3a203520 ; undefined
    1420:	5f5f2820 	.inst	0x5f5f2820 ; undefined
    1424:	4c525342 	.inst	0x4c525342 ; undefined
    1428:	73285f5f 	.inst	0x73285f5f ; undefined
    142c:	29657a69 	ldp	w9, w30, [x19, #-216]
    1430:	49202d20 	.inst	0x49202d20 ; undefined
    1434:	4f505f53 	.inst	0x4f505f53 ; undefined
    1438:	5f524557 	.inst	0x5f524557 ; undefined
    143c:	325f464f 	.inst	0x325f464f ; undefined
    1440:	7a697328 	.inst	0x7a697328 ; undefined
    1444:	29292965 	stp	w5, w10, [x11, #-184]
    1448:	35202d20 	cbnz	w0, 419ec <fat32_open+0x410c4>
    144c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1450:	544e4955 	.inst	0x544e4955 ; undefined
    1454:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    1458:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    145c:	66783020 	.inst	0x66783020 ; undefined
    1460:	00666666 	.inst	0x00666666 ; undefined
    1464:	74726170 	.inst	0x74726170 ; undefined
    1468:	6f697469 	uqshl	v9.2d, v3.2d, #41
    146c:	5f5f006e 	.inst	0x5f5f006e ; undefined
    1470:	544e4955 	.inst	0x544e4955 ; undefined
    1474:	435f3233 	.inst	0x435f3233 ; undefined
    1478:	20296328 	.inst	0x20296328 ; undefined
    147c:	23232063 	.inst	0x23232063 ; undefined
    1480:	49005520 	.inst	0x49005520 ; undefined
    1484:	465f544e 	.inst	0x465f544e ; undefined
    1488:	31545341 	adds	w1, w26, #0x514, lsl #12
    148c:	494d5f36 	.inst	0x494d5f36 ; undefined
    1490:	5f5f004e 	.inst	0x5f5f004e ; undefined
    1494:	4d544e49 	.inst	0x4d544e49 ; undefined
    1498:	435f5841 	.inst	0x435f5841 ; undefined
    149c:	20296328 	.inst	0x20296328 ; undefined
    14a0:	23232063 	.inst	0x23232063 ; undefined
    14a4:	5f004c20 	.inst	0x5f004c20 ; undefined
    14a8:	42444c5f 	.inst	0x42444c5f ; undefined
    14ac:	414d5f4c 	.inst	0x414d5f4c ; undefined
    14b0:	58455f58 	ldr	x24, 8c098 <fat32_open+0x8b770>
    14b4:	205f5f50 	.inst	0x205f5f50 ; undefined
    14b8:	38333631 	.inst	0x38333631 ; undefined
    14bc:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    14c0:	455a4953 	.inst	0x455a4953 ; undefined
    14c4:	535f464f 	.inst	0x535f464f ; undefined
    14c8:	54524f48 	b.hi	a5eb0 <fat32_open+0xa5588>  // b.pmore
    14cc:	32205f5f 	orr	wsp, w26, #0xffffff
    14d0:	6f425f00 	.inst	0x6f425f00 ; undefined
    14d4:	5f006c6f 	.inst	0x5f006c6f ; undefined
    14d8:	6569705f 	fnmls	z31.h, p4/m, z2.h, z9.h
    14dc:	31205f5f 	cmn	w26, #0x817
    14e0:	535f5f00 	.inst	0x535f5f00 ; undefined
    14e4:	43495254 	.inst	0x43495254 ; undefined
    14e8:	4e415f54 	.inst	0x4e415f54 ; undefined
    14ec:	5f5f4953 	.inst	0x5f5f4953 ; undefined
    14f0:	5f003120 	.inst	0x5f003120 ; undefined
    14f4:	455a4953 	.inst	0x455a4953 ; undefined
    14f8:	445f545f 	.inst	0x445f545f ; undefined
    14fc:	4e494645 	.inst	0x4e494645 ; undefined
    1500:	205f4445 	.inst	0x205f4445 ; undefined
    1504:	4c554e00 	.inst	0x4c554e00 ; undefined
    1508:	5f5f004c 	.inst	0x5f5f004c ; undefined
    150c:	5f544c46 	.inst	0x5f544c46 ; undefined
    1510:	4c415645 	.inst	0x4c415645 ; undefined
    1514:	54454d5f 	.inst	0x54454d5f ; undefined
    1518:	5f444f48 	.inst	0x5f444f48 ; undefined
    151c:	5f393943 	.inst	0x5f393943 ; undefined
    1520:	0030205f 	.inst	0x0030205f ; NYI
    1524:	544e4955 	.inst	0x544e4955 ; undefined
    1528:	28435f38 	ldnp	w24, w23, [x25, #24]
    152c:	5f202963 	.inst	0x5f202963 ; undefined
    1530:	4e49555f 	.inst	0x4e49555f ; undefined
    1534:	435f3854 	.inst	0x435f3854 ; undefined
    1538:	00296328 	.inst	0x00296328 ; NYI
    153c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1540:	38323154 	ldsetb	w18, w20, [x10]
    1544:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1548:	33205f5f 	.inst	0x33205f5f ; undefined
    154c:	3236332e 	orr	w14, w25, #0x7ffc00
    1550:	31333031 	adds	w17, w1, #0xccc
    1554:	31313334 	adds	w20, w25, #0xc4c
    1558:	33393032 	.inst	0x33393032 ; undefined
    155c:	32363035 	orr	w21, w1, #0x7ffc00
    1560:	37363236 	tbnz	w22, #6, ffffffffffffdba4 <fat32_open+0xffffffffffffd27c>
    1564:	37313837 	tbnz	w23, #6, 3c68 <.debug_str+0x3c68>
    1568:	37313233 	tbnz	w19, #6, 3bac <.debug_str+0x3bac>
    156c:	30363235 	adr	x21, 6dbb1 <fat32_open+0x6d289>
    1570:	39342d65 	strb	w5, [x11, #3339]
    1574:	31463233 	adds	w19, w17, #0x18c, lsl #12
    1578:	5f003832 	.inst	0x5f003832 ; undefined
    157c:	4152505f 	.inst	0x4152505f ; undefined
    1580:	5f414d47 	.inst	0x5f414d47 ; undefined
    1584:	45444552 	.inst	0x45444552 ; undefined
    1588:	454e4946 	.inst	0x454e4946 ; undefined
    158c:	5458455f 	.inst	0x5458455f ; undefined
    1590:	454d414e 	.inst	0x454d414e ; undefined
    1594:	5f003120 	.inst	0x5f003120 ; undefined
    1598:	4843575f 	ldxrh	wzr, [x26]
    159c:	545f5241 	b.ne	bffe4 <fat32_open+0xbf6bc>  // b.any
    15a0:	5f455059 	.inst	0x5f455059 ; undefined
    15a4:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    15a8:	6e676973 	.inst	0x6e676973 ; undefined
    15ac:	69206465 	.inst	0x69206465 ; undefined
    15b0:	5700746e 	.inst	0x5700746e ; undefined
    15b4:	5f544e49 	.inst	0x5f544e49 ; undefined
    15b8:	2058414d 	.inst	0x2058414d ; undefined
    15bc:	49575f5f 	.inst	0x49575f5f ; undefined
    15c0:	4d5f544e 	.inst	0x4d5f544e ; undefined
    15c4:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    15c8:	61686300 	.inst	0x61686300 ; undefined
    15cc:	5f5f0072 	.inst	0x5f5f0072 ; undefined
    15d0:	5f434347 	.inst	0x5f434347 ; undefined
    15d4:	45564148 	.inst	0x45564148 ; undefined
    15d8:	4e59535f 	.inst	0x4e59535f ; undefined
    15dc:	4f435f43 	.inst	0x4f435f43 ; undefined
    15e0:	5241504d 	.inst	0x5241504d ; undefined
    15e4:	4e415f45 	.inst	0x4e415f45 ; undefined
    15e8:	57535f44 	.inst	0x57535f44 ; undefined
    15ec:	325f5041 	.inst	0x325f5041 ; undefined
    15f0:	50003120 	adr	x0, 1c16 <.debug_str+0x1c16>
    15f4:	49445254 	.inst	0x49445254 ; undefined
    15f8:	4d5f4646 	.inst	0x4d5f4646 ; undefined
    15fc:	28204e49 	stnp	w9, w19, [x18, #-256]
    1600:	5254502d 	.inst	0x5254502d ; undefined
    1604:	46464944 	.inst	0x46464944 ; undefined
    1608:	58414d5f 	ldr	xzr, 83fb0 <fat32_open+0x83688>
    160c:	31202d20 	adds	w0, w9, #0x80b
    1610:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1614:	5f544e49 	.inst	0x5f544e49 ; undefined
    1618:	54534146 	b.vs	a7e40 <fat32_open+0xa7518>
    161c:	545f3436 	.inst	0x545f3436 ; undefined
    1620:	5f455059 	.inst	0x5f455059 ; undefined
    1624:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    1628:	6920676e 	.inst	0x6920676e ; undefined
    162c:	7000746e 	adr	x14, 24bb <.debug_str+0x24bb>
    1630:	00667562 	.inst	0x00667562 ; undefined
    1634:	49535f5f 	.inst	0x49535f5f ; undefined
    1638:	464f455a 	.inst	0x464f455a ; undefined
    163c:	544e495f 	.inst	0x544e495f ; undefined
    1640:	34205f5f 	cbz	wzr, 42228 <fat32_open+0x41900>
    1644:	425f5f00 	.inst	0x425f5f00 ; undefined
    1648:	45474749 	.inst	0x45474749 ; undefined
    164c:	415f5453 	.inst	0x415f5453 ; undefined
    1650:	4e47494c 	.inst	0x4e47494c ; undefined
    1654:	544e454d 	b.le	9defc <fat32_open+0x9d5d4>
    1658:	31205f5f 	cmn	w26, #0x817
    165c:	69740036 	ldpsw	x22, x0, [x1, #-96]
    1660:	745f656d 	.inst	0x745f656d ; undefined
    1664:	4e490073 	.inst	0x4e490073 ; undefined
    1668:	41465f54 	.inst	0x41465f54 ; undefined
    166c:	34365453 	cbz	w19, 6e0f4 <fat32_open+0x6d7cc>
    1670:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1674:	43475f00 	.inst	0x43475f00 ; undefined
    1678:	52575f43 	.inst	0x52575f43 ; undefined
    167c:	535f5041 	.inst	0x535f5041 ; undefined
    1680:	4e494454 	.inst	0x4e494454 ; undefined
    1684:	20485f54 	.inst	0x20485f54 ; undefined
    1688:	555f5f00 	.inst	0x555f5f00 ; undefined
    168c:	38544e49 	ldrb	w9, [x18, #-188]!
    1690:	58414d5f 	ldr	xzr, 84038 <fat32_open+0x83710>
    1694:	30205f5f 	adr	xzr, 4227d <fat32_open+0x41955>
    1698:	00666678 	.inst	0x00666678 ; undefined
    169c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    16a0:	50455f54 	adr	x20, 8c28a <fat32_open+0x8b962>
    16a4:	4f4c4953 	.inst	0x4f4c4953 ; undefined
    16a8:	205f5f4e 	.inst	0x205f5f4e ; undefined
    16ac:	39312e31 	strb	w17, [x17, #3147]
    16b0:	32393032 	orr	w18, w1, #0xfff80
    16b4:	35353938 	cbnz	w24, 6bdd8 <fat32_open+0x6b4b0>
    16b8:	31383730 	adds	w16, w25, #0xe0d
    16bc:	30303532 	adr	x18, 61d61 <fat32_open+0x61439>
    16c0:	30303030 	adr	x16, 61cc5 <fat32_open+0x6139d>
    16c4:	30303030 	adr	x16, 61cc9 <fat32_open+0x613a1>
    16c8:	30303030 	adr	x16, 61ccd <fat32_open+0x613a5>
    16cc:	30303030 	adr	x16, 61cd1 <fat32_open+0x613a9>
    16d0:	372d6530 	tbnz	w16, #5, ffffffffffffc374 <fat32_open+0xffffffffffffba4c>
    16d4:	5f5f0046 	.inst	0x5f5f0046 ; undefined
    16d8:	5f434347 	.inst	0x5f434347 ; undefined
    16dc:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    16e0:	535f4349 	.inst	0x535f4349 ; undefined
    16e4:	54524f48 	b.hi	a60cc <fat32_open+0xa57a4>  // b.pmore
    16e8:	434f4c5f 	.inst	0x434f4c5f ; undefined
    16ec:	52465f4b 	.inst	0x52465f4b ; undefined
    16f0:	32204545 	orr	w5, w10, #0x3ffff
    16f4:	73696400 	.inst	0x73696400 ; undefined
    16f8:	636e6174 	.inst	0x636e6174 ; undefined
    16fc:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    1700:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    1704:	5f534148 	.inst	0x5f534148 ; undefined
    1708:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    170c:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    1710:	5f003120 	.inst	0x5f003120 ; undefined
    1714:	544c465f 	.inst	0x544c465f ; undefined
    1718:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    171c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1720:	342e3320 	cbz	w0, 5dd84 <fat32_open+0x5d45c>
    1724:	32383230 	orr	w16, w17, #0x1fff00
    1728:	36363433 	tbz	w19, #6, ffffffffffffddac <fat32_open+0xffffffffffffd484>
    172c:	32353833 	orr	w19, w1, #0x3fff800
    1730:	39353838 	strb	w24, [x1, #3406]
    1734:	37313138 	tbnz	w24, #6, 3d58 <.debug_str+0x3d58>
    1738:	38313430 	.inst	0x38313430 ; undefined
    173c:	34383433 	cbz	w19, 71dc0 <fat32_open+0x71498>
    1740:	39363135 	strb	w21, [x9, #3468]
    1744:	2b653532 	.inst	0x2b653532 ; undefined
    1748:	33463833 	.inst	0x33463833 ; undefined
    174c:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1750:	5f585847 	.inst	0x5f585847 ; undefined
    1754:	5f494241 	.inst	0x5f494241 ; undefined
    1758:	53524556 	.inst	0x53524556 ; undefined
    175c:	204e4f49 	.inst	0x204e4f49 ; undefined
    1760:	31313031 	adds	w17, w1, #0xc4c
    1764:	4e495500 	.inst	0x4e495500 ; undefined
    1768:	41465f54 	.inst	0x41465f54 ; undefined
    176c:	32335453 	orr	w19, w2, #0xffffe007
    1770:	58414d5f 	ldr	xzr, 84118 <fat32_open+0x837f0>
    1774:	616c6600 	.inst	0x616c6600 ; undefined
    1778:	5f007367 	.inst	0x5f007367 ; undefined
    177c:	544e495f 	.inst	0x544e495f ; undefined
    1780:	41454c5f 	.inst	0x41454c5f ; undefined
    1784:	36315453 	tbz	w19, #6, 420c <.debug_str+0x420c>
    1788:	58414d5f 	ldr	xzr, 84130 <fat32_open+0x83808>
    178c:	30205f5f 	adr	xzr, 42375 <fat32_open+0x41a4d>
    1790:	66663778 	.inst	0x66663778 ; undefined
    1794:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    1798:	31544c46 	adds	w6, w2, #0x513, lsl #12
    179c:	4d5f3832 	.inst	0x4d5f3832 ; undefined
    17a0:	455f5841 	.inst	0x455f5841 ; undefined
    17a4:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    17a8:	33363120 	.inst	0x33363120 ; undefined
    17ac:	49003438 	.inst	0x49003438 ; undefined
    17b0:	4c5f544e 	.inst	0x4c5f544e ; undefined
    17b4:	54534145 	b.pl	a7fdc <fat32_open+0xa76b4>  // b.nfrst
    17b8:	414d5f38 	.inst	0x414d5f38 ; undefined
    17bc:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    17c0:	5f544e49 	.inst	0x5f544e49 ; undefined
    17c4:	5341454c 	.inst	0x5341454c ; undefined
    17c8:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    17cc:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    17d0:	685f5f00 	.inst	0x685f5f00 ; undefined
    17d4:	695f7361 	ldpsw	x1, x28, [x27, #248]
    17d8:	756c636e 	.inst	0x756c636e ; undefined
    17dc:	6e5f6564 	.inst	0x6e5f6564 ; undefined
    17e0:	28747865 	ldnp	w5, w30, [x3, #-96]
    17e4:	29525453 	ldp	w19, w21, [x2, #144]
    17e8:	685f5f20 	.inst	0x685f5f20 ; undefined
    17ec:	695f7361 	ldpsw	x1, x28, [x27, #248]
    17f0:	756c636e 	.inst	0x756c636e ; undefined
    17f4:	6e5f6564 	.inst	0x6e5f6564 ; undefined
    17f8:	5f747865 	sqdmlsl	s5, h3, v4.h[7]
    17fc:	5453285f 	.inst	0x5453285f ; undefined
    1800:	73002952 	.inst	0x73002952 ; undefined
    1804:	6d637274 	ldp	d20, d28, [x19, #-464]
    1808:	5f5f0070 	.inst	0x5f5f0070 ; undefined
    180c:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    1810:	47494c41 	.inst	0x47494c41 ; undefined
    1814:	414d5f4e 	.inst	0x414d5f4e ; undefined
    1818:	54535f58 	.inst	0x54535f58 ; undefined
    181c:	5f4b4341 	.inst	0x5f4b4341 ; undefined
    1820:	20525750 	.inst	0x20525750 ; undefined
    1824:	5f003631 	.inst	0x5f003631 ; undefined
    1828:	544c465f 	.inst	0x544c465f ; undefined
    182c:	445f3631 	.inst	0x445f3631 ; undefined
    1830:	4d494345 	.inst	0x4d494345 ; undefined
    1834:	445f4c41 	.inst	0x445f4c41 ; undefined
    1838:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    183c:	5f003520 	.inst	0x5f003520 ; undefined
    1840:	4d52415f 	.inst	0x4d52415f ; undefined
    1844:	3150465f 	cmn	w18, #0x411, lsl #12
    1848:	4f465f36 	.inst	0x4f465f36 ; undefined
    184c:	54414d52 	.inst	0x54414d52 ; undefined
    1850:	4545495f 	.inst	0x4545495f ; undefined
    1854:	00312045 	.inst	0x00312045 ; NYI
    1858:	49535f5f 	.inst	0x49535f5f ; undefined
    185c:	464f455a 	.inst	0x464f455a ; undefined
    1860:	554f445f 	.inst	0x554f445f ; undefined
    1864:	5f454c42 	.inst	0x5f454c42 ; undefined
    1868:	0038205f 	.inst	0x0038205f ; NYI
    186c:	61736964 	.inst	0x61736964 ; undefined
    1870:	6d657373 	ldp	d19, d28, [x27, #-432]
    1874:	00656c62 	.inst	0x00656c62 ; undefined
    1878:	736c6166 	.inst	0x736c6166 ; undefined
    187c:	00302065 	.inst	0x00302065 ; NYI
    1880:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1884:	43575f54 	.inst	0x43575f54 ; undefined
    1888:	5f524148 	.inst	0x5f524148 ; undefined
    188c:	20485f54 	.inst	0x20485f54 ; undefined
    1890:	475f5f00 	.inst	0x475f5f00 ; undefined
    1894:	415f4343 	.inst	0x415f4343 ; undefined
    1898:	494d4f54 	.inst	0x494d4f54 ; undefined
    189c:	45545f43 	.inst	0x45545f43 ; undefined
    18a0:	415f5453 	.inst	0x415f5453 ; undefined
    18a4:	535f444e 	.inst	0x535f444e ; undefined
    18a8:	545f5445 	b.pl	c0330 <fat32_open+0xbfa08>  // b.nfrst
    18ac:	56455552 	.inst	0x56455552 ; undefined
    18b0:	31204c41 	adds	w1, w2, #0x813
    18b4:	63616300 	.inst	0x63616300 ; undefined
    18b8:	645f6568 	fcmla	z8.h, p1/m, z11.h, z31.h, #270
    18bc:	63697665 	.inst	0x63697665 ; undefined
    18c0:	73660065 	.inst	0x73660065 ; undefined
    18c4:	6f666e69 	.inst	0x6f666e69 ; undefined
    18c8:	6365735f 	.inst	0x6365735f ; undefined
    18cc:	00726f74 	.inst	0x00726f74 ; undefined
    18d0:	4c455f5f 	.inst	0x4c455f5f ; undefined
    18d4:	205f5f46 	.inst	0x205f5f46 ; undefined
    18d8:	565f0031 	.inst	0x565f0031 ; undefined
    18dc:	494c5f41 	.inst	0x494c5f41 ; undefined
    18e0:	445f5453 	.inst	0x445f5453 ; undefined
    18e4:	4e494645 	.inst	0x4e494645 ; undefined
    18e8:	00204445 	.inst	0x00204445 ; NYI
    18ec:	656c6966 	fnmls	z6.h, p2/m, z11.h, z12.h
    18f0:	465f5f00 	.inst	0x465f5f00 ; undefined
    18f4:	3233544c 	orr	w12, w2, #0xffffe007
    18f8:	5341485f 	.inst	0x5341485f ; undefined
    18fc:	4955515f 	.inst	0x4955515f ; undefined
    1900:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    1904:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    1908:	5f003120 	.inst	0x5f003120 ; undefined
    190c:	455a4953 	.inst	0x455a4953 ; undefined
    1910:	00205f54 	.inst	0x00205f54 ; NYI
    1914:	444c5f5f 	.inst	0x444c5f5f ; undefined
    1918:	485f4c42 	ldxrh	w2, [x2]
    191c:	495f5341 	.inst	0x495f5341 ; undefined
    1920:	4e49464e 	.inst	0x4e49464e ; undefined
    1924:	5f595449 	shl	d9, d2, #25
    1928:	0031205f 	.inst	0x0031205f ; NYI
    192c:	544e4955 	.inst	0x544e4955 ; undefined
    1930:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    1934:	5f205841 	fmls	h1, h2, v0.h[6]
    1938:	4e49555f 	.inst	0x4e49555f ; undefined
    193c:	5f363154 	.inst	0x5f363154 ; undefined
    1940:	5f58414d 	.inst	0x5f58414d ; undefined
    1944:	4146005f 	.inst	0x4146005f ; undefined
    1948:	5f323354 	.inst	0x5f323354 ; undefined
    194c:	5f544547 	.inst	0x5f544547 ; undefined
    1950:	52414559 	.inst	0x52414559 ; undefined
    1954:	74616428 	.inst	0x74616428 ; undefined
    1958:	28202965 	stnp	w5, w10, [x11, #-256]
    195c:	61642828 	.inst	0x61642828 ; undefined
    1960:	20296574 	.inst	0x20296574 ; undefined
    1964:	41462026 	.inst	0x41462026 ; undefined
    1968:	5f323354 	.inst	0x5f323354 ; undefined
    196c:	52414559 	.inst	0x52414559 ; undefined
    1970:	53414d5f 	.inst	0x53414d5f ; undefined
    1974:	3e20294b 	.inst	0x3e20294b ; undefined
    1978:	2939203e 	stp	w30, w8, [x1, #-56]
    197c:	465f5f00 	.inst	0x465f5f00 ; undefined
    1980:	3233544c 	orr	w12, w2, #0xffffe007
    1984:	414d5f58 	.inst	0x414d5f58 ; undefined
    1988:	30315f58 	adr	x24, 64571 <fat32_open+0x63c49>
    198c:	5058455f 	adr	xzr, b2236 <fat32_open+0xb190e>
    1990:	33205f5f 	.inst	0x33205f5f ; undefined
    1994:	76003830 	.inst	0x76003830 ; undefined
    1998:	6d756c6f 	ldp	d15, d27, [x3, #-176]
    199c:	616c5f65 	.inst	0x616c5f65 ; undefined
    19a0:	00656c62 	.inst	0x00656c62 ; undefined
    19a4:	4e475f5f 	.inst	0x4e475f5f ; undefined
    19a8:	565f4355 	.inst	0x565f4355 ; undefined
    19ac:	494c5f41 	.inst	0x494c5f41 ; undefined
    19b0:	00205453 	.inst	0x00205453 ; NYI
    19b4:	65736572 	fnmls	z18.h, p1/m, z11.h, z19.h
    19b8:	64657672 	.inst	0x64657672 ; undefined
    19bc:	7a69735f 	.inst	0x7a69735f ; undefined
    19c0:	6f620065 	mla	v5.8h, v3.8h, v2.h[2]
    19c4:	5f206c6f 	.inst	0x5f206c6f ; undefined
    19c8:	6c6f6f42 	ldnp	d2, d27, [x26, #-272]
    19cc:	41465f00 	.inst	0x41465f00 ; undefined
    19d0:	5f323354 	.inst	0x5f323354 ; undefined
    19d4:	55002048 	.inst	0x55002048 ; undefined
    19d8:	4d544e49 	.inst	0x4d544e49 ; undefined
    19dc:	4d5f5841 	.inst	0x4d5f5841 ; undefined
    19e0:	5f205841 	fmls	h1, h2, v0.h[6]
    19e4:	4e49555f 	.inst	0x4e49555f ; undefined
    19e8:	58414d54 	ldr	x20, 84390 <fat32_open+0x83a68>
    19ec:	58414d5f 	ldr	xzr, 84394 <fat32_open+0x83a6c>
    19f0:	5f005f5f 	.inst	0x5f005f5f ; undefined
    19f4:	4749535f 	.inst	0x4749535f ; undefined
    19f8:	4f54415f 	.inst	0x4f54415f ; undefined
    19fc:	5f43494d 	.inst	0x5f43494d ; undefined
    1a00:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1a04:	2d28205f 	stp	s31, s8, [x2, #-192]
    1a08:	49535f5f 	.inst	0x49535f5f ; undefined
    1a0c:	54415f47 	b.vc	845f4 <fat32_open+0x83ccc>
    1a10:	43494d4f 	.inst	0x43494d4f ; undefined
    1a14:	58414d5f 	ldr	xzr, 843bc <fat32_open+0x83a94>
    1a18:	2d205f5f 	stp	s31, s23, [x26, #-256]
    1a1c:	00293120 	.inst	0x00293120 ; NYI
    1a20:	49555f5f 	.inst	0x49555f5f ; undefined
    1a24:	4c5f544e 	.inst	0x4c5f544e ; undefined
    1a28:	54534145 	b.pl	a8250 <fat32_open+0xa7928>  // b.nfrst
    1a2c:	414d5f38 	.inst	0x414d5f38 ; undefined
    1a30:	205f5f58 	.inst	0x205f5f58 ; undefined
    1a34:	66667830 	.inst	0x66667830 ; undefined
    1a38:	445f5f00 	.inst	0x445f5f00 ; undefined
    1a3c:	34364345 	cbz	w5, 6e2a4 <fat32_open+0x6d97c>
    1a40:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1a44:	5058455f 	adr	xzr, b22ee <fat32_open+0xb19c6>
    1a48:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    1a4c:	3238332d 	orr	w13, w25, #0x1fff00
    1a50:	425f0029 	.inst	0x425f0029 ; undefined
    1a54:	575f4453 	.inst	0x575f4453 ; undefined
    1a58:	52414843 	.inst	0x52414843 ; undefined
    1a5c:	205f545f 	.inst	0x205f545f ; undefined
    1a60:	66756200 	.inst	0x66756200 ; undefined
    1a64:	00726566 	.inst	0x00726566 ; undefined
    1a68:	64616568 	.inst	0x64616568 ; undefined
    1a6c:	4e490073 	.inst	0x4e490073 ; undefined
    1a70:	5f363154 	.inst	0x5f363154 ; undefined
    1a74:	2058414d 	.inst	0x2058414d ; undefined
    1a78:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1a7c:	5f363154 	.inst	0x5f363154 ; undefined
    1a80:	5f58414d 	.inst	0x5f58414d ; undefined
    1a84:	5f5f005f 	.inst	0x5f5f005f ; undefined
    1a88:	36544c46 	tbz	w6, #10, ffffffffffffa410 <fat32_open+0xffffffffffff9ae8>
    1a8c:	485f5834 	ldxrh	w20, [x1]
    1a90:	495f5341 	.inst	0x495f5341 ; undefined
    1a94:	4e49464e 	.inst	0x4e49464e ; undefined
    1a98:	5f595449 	shl	d9, d2, #25
    1a9c:	0031205f 	.inst	0x0031205f ; NYI
    1aa0:	50465f5f 	adr	xzr, 8e68a <fat32_open+0x8dd62>
    1aa4:	5341465f 	.inst	0x5341465f ; undefined
    1aa8:	4d465f54 	.inst	0x4d465f54 ; undefined
    1aac:	31204641 	adds	w1, w18, #0x811
    1ab0:	445f5f00 	.inst	0x445f5f00 ; undefined
    1ab4:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    1ab8:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1abc:	64282820 	.inst	0x64282820 ; undefined
    1ac0:	6c62756f 	ldnp	d15, d29, [x11, #-480]
    1ac4:	2e312965 	.inst	0x2e312965 ; undefined
    1ac8:	36373937 	tbz	w23, #6, 1ec <.debug_str+0x1ec>
    1acc:	33313339 	.inst	0x33313339 ; undefined
    1ad0:	32363834 	orr	w20, w1, #0x1fffc00
    1ad4:	37353133 	tbnz	w19, #6, ffffffffffffc0f8 <fat32_open+0xffffffffffffb7d0>
    1ad8:	34313830 	cbz	w16, 641dc <fat32_open+0x638b4>
    1adc:	34373235 	cbz	w21, 70120 <fat32_open+0x6f7f8>
    1ae0:	33373332 	.inst	0x33373332 ; undefined
    1ae4:	34303731 	cbz	w17, 621c8 <fat32_open+0x618a0>
    1ae8:	65373533 	.inst	0x65373533 ; undefined
    1aec:	3830332b 	ldsetb	w16, w11, [x25]
    1af0:	5500294c 	.inst	0x5500294c ; undefined
    1af4:	33544e49 	.inst	0x33544e49 ; undefined
    1af8:	414d5f32 	.inst	0x414d5f32 ; undefined
    1afc:	616c0058 	.inst	0x616c0058 ; undefined
    1b00:	6d5f7473 	ldp	d19, d29, [x3, #496]
    1b04:	745f646f 	.inst	0x745f646f ; undefined
    1b08:	00656d69 	.inst	0x00656d69 ; undefined
    1b0c:	5f41565f 	shl	d31, d18, #1
    1b10:	5453494c 	b.gt	a8438 <fat32_open+0xa7b10>
    1b14:	5f00205f 	.inst	0x5f00205f ; undefined
    1b18:	544e495f 	.inst	0x544e495f ; undefined
    1b1c:	41454c5f 	.inst	0x41454c5f ; undefined
    1b20:	36315453 	tbz	w19, #6, 45a8 <.debug_str+0x45a8>
    1b24:	4449575f 	.inst	0x4449575f ; undefined
    1b28:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1b2c:	00363120 	.inst	0x00363120 ; NYI
    1b30:	45445f5f 	.inst	0x45445f5f ; undefined
    1b34:	56455f43 	.inst	0x56455f43 ; undefined
    1b38:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    1b3c:	4f485445 	shl	v5.2d, v2.2d, #8
    1b40:	205f5f44 	.inst	0x205f5f44 ; undefined
    1b44:	616e0032 	.inst	0x616e0032 ; undefined
    1b48:	0033656d 	.inst	0x0033656d ; NYI
    1b4c:	49555f5f 	.inst	0x49555f5f ; undefined
    1b50:	465f544e 	.inst	0x465f544e ; undefined
    1b54:	33545341 	.inst	0x33545341 ; undefined
    1b58:	414d5f32 	.inst	0x414d5f32 ; undefined
    1b5c:	205f5f58 	.inst	0x205f5f58 ; undefined
    1b60:	66667830 	.inst	0x66667830 ; undefined
    1b64:	66666666 	.inst	0x66666666 ; undefined
    1b68:	00556666 	.inst	0x00556666 ; undefined
    1b6c:	45445f5f 	.inst	0x45445f5f ; undefined
    1b70:	5f343643 	.inst	0x5f343643 ; undefined
    1b74:	4e425553 	.inst	0x4e425553 ; undefined
    1b78:	414d524f 	.inst	0x414d524f ; undefined
    1b7c:	494d5f4c 	.inst	0x494d5f4c ; undefined
    1b80:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1b84:	30302e30 	adr	x16, 62149 <fat32_open+0x61821>
    1b88:	30303030 	adr	x16, 6218d <fat32_open+0x61865>
    1b8c:	30303030 	adr	x16, 62191 <fat32_open+0x61869>
    1b90:	30303030 	adr	x16, 62195 <fat32_open+0x6186d>
    1b94:	332d4531 	.inst	0x332d4531 ; undefined
    1b98:	44443338 	.inst	0x44443338 ; undefined
    1b9c:	54414600 	b.eq	8445c <fat32_open+0x83b34>  // b.none
    1ba0:	475f3233 	.inst	0x475f3233 ; undefined
    1ba4:	4d5f5445 	.inst	0x4d5f5445 ; undefined
    1ba8:	54554e49 	b.ls	ac570 <fat32_open+0xabc48>  // b.plast
    1bac:	69742845 	ldpsw	x5, x10, [x2, #-96]
    1bb0:	2029656d 	.inst	0x2029656d ; undefined
    1bb4:	74282828 	.inst	0x74282828 ; undefined
    1bb8:	29656d69 	ldp	w9, w27, [x11, #-216]
    1bbc:	46202620 	.inst	0x46202620 ; undefined
    1bc0:	32335441 	orr	w1, w2, #0xffffe007
    1bc4:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1bc8:	5f455455 	shl	d21, d2, #5
    1bcc:	4b53414d 	sub	w13, w10, w19, lsr #16
    1bd0:	3e3e2029 	.inst	0x3e3e2029 ; undefined
    1bd4:	00293520 	.inst	0x00293520 ; NYI
    1bd8:	4c4c554e 	.inst	0x4c4c554e ; undefined
    1bdc:	76282820 	.inst	0x76282820 ; undefined
    1be0:	2064696f 	.inst	0x2064696f ; undefined
    1be4:	2930292a 	stp	w10, w10, [x9, #-128]
    1be8:	65726300 	fnmls	z0.h, p0/m, z24.h, z18.h
    1bec:	6f697461 	uqshl	v1.2d, v3.2d, #41
    1bf0:	69745f6e 	ldpsw	x14, x23, [x27, #-96]
    1bf4:	5f00656d 	.inst	0x5f00656d ; undefined
    1bf8:	65656e5f 	fnmls	z31.h, p3/m, z18.h, z5.h
    1bfc:	554e5f64 	.inst	0x554e5f64 ; undefined
    1c00:	5f004c4c 	.inst	0x5f004c4c ; undefined
    1c04:	4553555f 	.inst	0x4553555f ; undefined
    1c08:	414c5f52 	.inst	0x414c5f52 ; undefined
    1c0c:	5f4c4542 	.inst	0x5f4c4542 ; undefined
    1c10:	46455250 	.inst	0x46455250 ; undefined
    1c14:	5f5f5849 	.inst	0x5f5f5849 ; undefined
    1c18:	78650020 	ldaddlh	w5, w0, [x1]
    1c1c:	736e6574 	.inst	0x736e6574 ; undefined
    1c20:	006e6f69 	.inst	0x006e6f69 ; undefined
    1c24:	5f544e49 	.inst	0x5f544e49 ; undefined
    1c28:	54534146 	b.vs	a8450 <fat32_open+0xa7b28>
    1c2c:	494d5f38 	.inst	0x494d5f38 ; undefined
    1c30:	4e49004e 	.inst	0x4e49004e ; undefined
    1c34:	41465f54 	.inst	0x41465f54 ; undefined
    1c38:	5f385453 	.inst	0x5f385453 ; undefined
    1c3c:	2058414d 	.inst	0x2058414d ; undefined
    1c40:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1c44:	41465f54 	.inst	0x41465f54 ; undefined
    1c48:	5f385453 	.inst	0x5f385453 ; undefined
    1c4c:	5f58414d 	.inst	0x5f58414d ; undefined
    1c50:	656f005f 	fmla	z31.h, p0/m, z2.h, z15.h
    1c54:	64695f6d 	.inst	0x64695f6d ; undefined
    1c58:	495f5f00 	.inst	0x495f5f00 ; undefined
    1c5c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    1c60:	54534145 	b.pl	a8488 <fat32_open+0xa7b60>  // b.nfrst
    1c64:	545f3436 	.inst	0x545f3436 ; undefined
    1c68:	5f455059 	.inst	0x5f455059 ; undefined
    1c6c:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    1c70:	6920676e 	.inst	0x6920676e ; undefined
    1c74:	7000746e 	adr	x14, 2b03 <.debug_str+0x2b03>
    1c78:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
    1c7c:	72746e65 	.inst	0x72746e65 ; undefined
    1c80:	5f5f0079 	.inst	0x5f5f0079 ; undefined
    1c84:	43445453 	.inst	0x43445453 ; undefined
    1c88:	5245565f 	.inst	0x5245565f ; undefined
    1c8c:	4e4f4953 	.inst	0x4e4f4953 ; undefined
    1c90:	32205f5f 	orr	wsp, w26, #0xffffff
    1c94:	31313130 	adds	w16, w9, #0xc4c
    1c98:	49004c32 	.inst	0x49004c32 ; undefined
    1c9c:	3436544e 	cbz	w14, 6e724 <fat32_open+0x6ddfc>
    1ca0:	6328435f 	.inst	0x6328435f ; undefined
    1ca4:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    1ca8:	36544e49 	tbz	w9, #10, ffffffffffffa670 <fat32_open+0xffffffffffff9d48>
    1cac:	28435f34 	ldnp	w20, w23, [x25, #24]
    1cb0:	5f002963 	.inst	0x5f002963 ; undefined
    1cb4:	544e495f 	.inst	0x544e495f ; undefined
    1cb8:	41454c5f 	.inst	0x41454c5f ; undefined
    1cbc:	5f385453 	.inst	0x5f385453 ; undefined
    1cc0:	5f58414d 	.inst	0x5f58414d ; undefined
    1cc4:	7830205f 	steorh	w16, [x2]
    1cc8:	5f006637 	.inst	0x5f006637 ; undefined
    1ccc:	4343475f 	.inst	0x4343475f ; undefined
    1cd0:	4f54415f 	.inst	0x4f54415f ; undefined
    1cd4:	5f43494d 	.inst	0x5f43494d ; undefined
    1cd8:	4e494f50 	.inst	0x4e494f50 ; undefined
    1cdc:	5f524554 	.inst	0x5f524554 ; undefined
    1ce0:	4b434f4c 	sub	w12, w26, w3, lsr #19
    1ce4:	4552465f 	.inst	0x4552465f ; undefined
    1ce8:	00322045 	.inst	0x00322045 ; NYI
    1cec:	52415f5f 	.inst	0x52415f5f ; undefined
    1cf0:	45465f4d 	.inst	0x45465f4d ; undefined
    1cf4:	52555441 	.inst	0x52555441 ; undefined
    1cf8:	4c435f45 	.inst	0x4c435f45 ; undefined
    1cfc:	0031205a 	.inst	0x0031205a ; NYI
    1d00:	54415f5f 	.inst	0x54415f5f ; undefined
    1d04:	43494d4f 	.inst	0x43494d4f ; undefined
    1d08:	5143415f 	sub	wsp, w10, #0xd0, lsl #12
    1d0c:	45524955 	.inst	0x45524955 ; undefined
    1d10:	46003220 	.inst	0x46003220 ; undefined
    1d14:	32335441 	orr	w1, w2, #0xffffe007
    1d18:	5445475f 	.inst	0x5445475f ; undefined
    1d1c:	4e4f4d5f 	.inst	0x4e4f4d5f ; undefined
    1d20:	64284854 	.inst	0x64284854 ; undefined
    1d24:	29657461 	ldp	w1, w29, [x3, #-216]
    1d28:	28282820 	stnp	w0, w10, [x1, #-192]
    1d2c:	65746164 	fnmls	z4.h, p0/m, z11.h, z20.h
    1d30:	20262029 	.inst	0x20262029 ; undefined
    1d34:	33544146 	.inst	0x33544146 ; undefined
    1d38:	4f4d5f32 	.inst	0x4f4d5f32 ; undefined
    1d3c:	5f48544e 	shl	d14, d2, #8
    1d40:	4b53414d 	sub	w13, w10, w19, lsr #16
    1d44:	3e3e2029 	.inst	0x3e3e2029 ; undefined
    1d48:	00293520 	.inst	0x00293520 ; NYI
    1d4c:	52415f5f 	.inst	0x52415f5f ; undefined
    1d50:	49425f4d 	.inst	0x49425f4d ; undefined
    1d54:	4e455f47 	.inst	0x4e455f47 ; undefined
    1d58:	4e414944 	.inst	0x4e414944 ; undefined
    1d5c:	415f5f00 	.inst	0x415f5f00 ; undefined
    1d60:	535f4d52 	.inst	0x535f4d52 ; undefined
    1d64:	4f455a49 	.inst	0x4f455a49 ; undefined
    1d68:	43575f46 	.inst	0x43575f46 ; undefined
    1d6c:	5f524148 	.inst	0x5f524148 ; undefined
    1d70:	00342054 	.inst	0x00342054 ; NYI
    1d74:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1d78:	58323354 	ldr	x20, 663e0 <fat32_open+0x65ab8>
    1d7c:	58414d5f 	ldr	xzr, 84724 <fat32_open+0x83dfc>
    1d80:	5058455f 	adr	xzr, b262a <fat32_open+0xb1d02>
    1d84:	31205f5f 	cmn	w26, #0x817
    1d88:	00343230 	.inst	0x00343230 ; NYI
    1d8c:	61685f5f 	.inst	0x61685f5f ; undefined
    1d90:	6e695f73 	uqrshl	v19.8h, v27.8h, v9.8h
    1d94:	64756c63 	.inst	0x64756c63 ; undefined
    1d98:	54532865 	b.pl	a82a4 <fat32_open+0xa797c>  // b.nfrst
    1d9c:	5f202952 	.inst	0x5f202952 ; undefined
    1da0:	7361685f 	.inst	0x7361685f ; undefined
    1da4:	636e695f 	.inst	0x636e695f ; undefined
    1da8:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
    1dac:	53285f5f 	.inst	0x53285f5f ; undefined
    1db0:	00295254 	.inst	0x00295254 ; NYI
    1db4:	5f544e49 	.inst	0x5f544e49 ; undefined
    1db8:	54534146 	b.vs	a85e0 <fat32_open+0xa7cb8>
    1dbc:	494d5f38 	.inst	0x494d5f38 ; undefined
    1dc0:	2d28204e 	stp	s14, s8, [x2, #-192]
    1dc4:	5f544e49 	.inst	0x5f544e49 ; undefined
    1dc8:	54534146 	b.vs	a85f0 <fat32_open+0xa7cc8>
    1dcc:	414d5f38 	.inst	0x414d5f38 ; undefined
    1dd0:	202d2058 	.inst	0x202d2058 ; undefined
    1dd4:	5f002931 	.inst	0x5f002931 ; undefined
    1dd8:	544e495f 	.inst	0x544e495f ; undefined
    1ddc:	41454c5f 	.inst	0x41454c5f ; undefined
    1de0:	34365453 	cbz	w19, 6e868 <fat32_open+0x6df40>
    1de4:	4449575f 	.inst	0x4449575f ; undefined
    1de8:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1dec:	00343620 	.inst	0x00343620 ; NYI
    1df0:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1df4:	41485f54 	.inst	0x41485f54 ; undefined
    1df8:	4e495f53 	.inst	0x4e495f53 ; undefined
    1dfc:	494e4946 	.inst	0x494e4946 ; undefined
    1e00:	5f5f5954 	.inst	0x5f5f5954 ; undefined
    1e04:	5f003120 	.inst	0x5f003120 ; undefined
    1e08:	544e495f 	.inst	0x544e495f ; undefined
    1e0c:	414d5f38 	.inst	0x414d5f38 ; undefined
    1e10:	205f5f58 	.inst	0x205f5f58 ; undefined
    1e14:	66377830 	.inst	0x66377830 ; undefined
    1e18:	54414600 	b.eq	846d8 <fat32_open+0x83db0>  // b.none
    1e1c:	455f3233 	.inst	0x455f3233 ; undefined
    1e20:	5952544e 	.inst	0x5952544e ; undefined
    1e24:	53414d5f 	.inst	0x53414d5f ; undefined
    1e28:	7830204b 	ldeorh	w16, w11, [x2]
    1e2c:	66666630 	.inst	0x66666630 ; undefined
    1e30:	66666666 	.inst	0x66666666 ; undefined
    1e34:	4e495500 	.inst	0x4e495500 ; undefined
    1e38:	41465f54 	.inst	0x41465f54 ; undefined
    1e3c:	34365453 	cbz	w19, 6e8c4 <fat32_open+0x6df9c>
    1e40:	58414d5f 	ldr	xzr, 847e8 <fat32_open+0x83ec0>
    1e44:	495f5f00 	.inst	0x495f5f00 ; undefined
    1e48:	465f544e 	.inst	0x465f544e ; undefined
    1e4c:	31545341 	adds	w1, w26, #0x514, lsl #12
    1e50:	59545f36 	.inst	0x59545f36 ; undefined
    1e54:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    1e58:	746e6920 	.inst	0x746e6920 ; undefined
    1e5c:	475f5f00 	.inst	0x475f5f00 ; undefined
    1e60:	485f4343 	ldxrh	w3, [x26]
    1e64:	5f455641 	shl	d1, d18, #5
    1e68:	52415744 	.inst	0x52415744 ; undefined
    1e6c:	435f3246 	.inst	0x435f3246 ; undefined
    1e70:	415f4946 	.inst	0x415f4946 ; undefined
    1e74:	31204d53 	adds	w19, w10, #0x813
    1e78:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
    1e7c:	6c626174 	ldnp	d20, d24, [x11, #-480]
    1e80:	6f6c0065 	mla	v5.8h, v3.8h, v12.h[2]
    1e84:	7520676e 	.inst	0x7520676e ; undefined
    1e88:	6769736e 	.inst	0x6769736e ; undefined
    1e8c:	2064656e 	.inst	0x2064656e ; undefined
    1e90:	00746e69 	.inst	0x00746e69 ; undefined
    1e94:	48535f5f 	ldxrh	wzr, [x26]
    1e98:	575f5452 	.inst	0x575f5452 ; undefined
    1e9c:	48544449 	ldxrh	w9, [x2]
    1ea0:	31205f5f 	cmn	w26, #0x817
    1ea4:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    1ea8:	5f434347 	.inst	0x5f434347 ; undefined
    1eac:	5f434549 	.inst	0x5f434549 ; undefined
    1eb0:	5f393535 	.inst	0x5f393535 ; undefined
    1eb4:	504d4f43 	adr	x3, 9c89e <fat32_open+0x9bf76>
    1eb8:	2058454c 	.inst	0x2058454c ; undefined
    1ebc:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1ec0:	43554e47 	.inst	0x43554e47 ; undefined
    1ec4:	37205f5f 	tbnz	wzr, #4, 2aac <.debug_str+0x2aac>
    1ec8:	555f5f00 	.inst	0x555f5f00 ; undefined
    1ecc:	31544e49 	adds	w9, w18, #0x513, lsl #12
    1ed0:	59545f36 	.inst	0x59545f36 ; undefined
    1ed4:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    1ed8:	6f687320 	fcmla	v0.8h, v25.8h, v8.h[1], #270
    1edc:	75207472 	.inst	0x75207472 ; undefined
    1ee0:	6769736e 	.inst	0x6769736e ; undefined
    1ee4:	2064656e 	.inst	0x2064656e ; undefined
    1ee8:	00746e69 	.inst	0x00746e69 ; undefined
    1eec:	444c5f5f 	.inst	0x444c5f5f ; undefined
    1ef0:	445f4c42 	.inst	0x445f4c42 ; undefined
    1ef4:	4d494345 	.inst	0x4d494345 ; undefined
    1ef8:	445f4c41 	.inst	0x445f4c41 ; undefined
    1efc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1f00:	00363320 	.inst	0x00363320 ; NYI
    1f04:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1f08:	41465f54 	.inst	0x41465f54 ; undefined
    1f0c:	32335453 	orr	w19, w2, #0xffffe007
    1f10:	58414d5f 	ldr	xzr, 848b8 <fat32_open+0x83f90>
    1f14:	30205f5f 	adr	xzr, 42afd <fat32_open+0x421d5>
    1f18:	66663778 	.inst	0x66663778 ; undefined
    1f1c:	66666666 	.inst	0x66666666 ; undefined
    1f20:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    1f24:	36544c46 	tbz	w6, #10, ffffffffffffa8ac <fat32_open+0xffffffffffff9f84>
    1f28:	4d5f5834 	.inst	0x4d5f5834 ; undefined
    1f2c:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
    1f30:	58455f30 	ldr	x16, 8cb14 <fat32_open+0x8c1ec>
    1f34:	205f5f50 	.inst	0x205f5f50 ; undefined
    1f38:	39342d28 	strb	w8, [x9, #3339]
    1f3c:	00293133 	.inst	0x00293133 ; NYI
    1f40:	63727473 	.inst	0x63727473 ; undefined
    1f44:	5f007970 	.inst	0x5f007970 ; undefined
    1f48:	4345445f 	.inst	0x4345445f ; undefined
    1f4c:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1f50:	455f5841 	.inst	0x455f5841 ; undefined
    1f54:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1f58:	00373920 	.inst	0x00373920 ; NYI
    1f5c:	5f544e49 	.inst	0x5f544e49 ; undefined
    1f60:	54534146 	b.vs	a8788 <fat32_open+0xa7e60>
    1f64:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1f68:	5f004e49 	.inst	0x5f004e49 ; undefined
    1f6c:	49535f54 	.inst	0x49535f54 ; undefined
    1f70:	205f455a 	.inst	0x205f455a ; undefined
    1f74:	465f5f00 	.inst	0x465f5f00 ; undefined
    1f78:	455f544c 	.inst	0x455f544c ; undefined
    1f7c:	5f4c4156 	.inst	0x5f4c4156 ; undefined
    1f80:	4854454d 	ldxrh	w13, [x10]
    1f84:	545f444f 	b.nv	c080c <fat32_open+0xbfee4>
    1f88:	38315f53 	.inst	0x38315f53 ; undefined
    1f8c:	5f313636 	.inst	0x5f313636 ; undefined
    1f90:	205f5f33 	.inst	0x205f5f33 ; undefined
    1f94:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    1f98:	63726161 	.inst	0x63726161 ; undefined
    1f9c:	5f343668 	.inst	0x5f343668 ; undefined
    1fa0:	0031205f 	.inst	0x0031205f ; NYI
    1fa4:	444c5f5f 	.inst	0x444c5f5f ; undefined
    1fa8:	455f4c42 	.inst	0x455f4c42 ; undefined
    1fac:	4c495350 	.inst	0x4c495350 ; undefined
    1fb0:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    1fb4:	392e3120 	strb	w0, [x9, #2956]
    1fb8:	32393532 	orr	w18, w9, #0x1fff80
    1fbc:	34343939 	cbz	w25, 6a6e0 <fat32_open+0x69db8>
    1fc0:	32373833 	orr	w19, w1, #0xfffe00
    1fc4:	35383533 	cbnz	w19, 72668 <fat32_open+0x71d40>
    1fc8:	35353033 	cbnz	w19, 6c5cc <fat32_open+0x6bca4>
    1fcc:	39373739 	strb	w25, [x25, #3533]
    1fd0:	38353234 	ldsetb	w21, w20, [x17]
    1fd4:	37323934 	tbnz	w20, #6, 66f8 <fat32_open+0x5dd0>
    1fd8:	2d653233 	ldp	s19, s12, [x17, #-216]
    1fdc:	004c3433 	.inst	0x004c3433 ; undefined
    1fe0:	5453494c 	b.gt	a8908 <fat32_open+0xa7fe0>
    1fe4:	5249465f 	.inst	0x5249465f ; undefined
    1fe8:	74285453 	.inst	0x74285453 ; undefined
    1fec:	2c657079 	ldnp	s25, s28, [x3, #-216]
    1ff0:	64616568 	.inst	0x64616568 ; undefined
    1ff4:	646f6e2c 	.inst	0x646f6e2c ; undefined
    1ff8:	43202965 	.inst	0x43202965 ; undefined
    1ffc:	41544e4f 	.inst	0x41544e4f ; undefined
    2000:	52454e49 	.inst	0x52454e49 ; undefined
    2004:	28464f5f 	ldnp	wzr, w19, [x26, #48]
    2008:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    200c:	6828202c 	.inst	0x6828202c ; undefined
    2010:	29646165 	ldp	w5, w24, [x11, #-224]
    2014:	656e3e2d 	fmls	z13.h, p7/m, z17.h, z14.h
    2018:	202c7478 	.inst	0x202c7478 ; undefined
    201c:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    2020:	49550029 	.inst	0x49550029 ; undefined
    2024:	465f544e 	.inst	0x465f544e ; undefined
    2028:	31545341 	adds	w1, w26, #0x514, lsl #12
    202c:	414d5f36 	.inst	0x414d5f36 ; undefined
    2030:	5f5f0058 	.inst	0x5f5f0058 ; undefined
    2034:	544e4955 	.inst	0x544e4955 ; undefined
    2038:	5341465f 	.inst	0x5341465f ; undefined
    203c:	545f3854 	.inst	0x545f3854 ; undefined
    2040:	5f455059 	.inst	0x5f455059 ; undefined
    2044:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    2048:	6e676973 	.inst	0x6e676973 ; undefined
    204c:	69206465 	.inst	0x69206465 ; undefined
    2050:	5f00746e 	.inst	0x5f00746e ; undefined
    2054:	544c465f 	.inst	0x544c465f ; undefined
    2058:	455f3631 	.inst	0x455f3631 ; undefined
    205c:	4c495350 	.inst	0x4c495350 ; undefined
    2060:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    2064:	372e3920 	tbnz	w0, #5, ffffffffffffe788 <fat32_open+0xffffffffffffde60>
    2068:	32363536 	orr	w22, w9, #0xfffc00
    206c:	30303035 	adr	x21, 62671 <fat32_open+0x61d49>
    2070:	30303030 	adr	x16, 62675 <fat32_open+0x61d4d>
    2074:	30303030 	adr	x16, 62679 <fat32_open+0x61d51>
    2078:	30303030 	adr	x16, 6267d <fat32_open+0x61d55>
    207c:	30303030 	adr	x16, 62681 <fat32_open+0x61d59>
    2080:	30303030 	adr	x16, 62685 <fat32_open+0x61d5d>
    2084:	30303030 	adr	x16, 62689 <fat32_open+0x61d61>
    2088:	2d653030 	ldp	s16, s12, [x1, #-216]
    208c:	36314634 	tbz	w20, #6, 4950 <.debug_str+0x4950>
    2090:	494c4800 	.inst	0x494c4800 ; undefined
    2094:	455f5453 	.inst	0x455f5453 ; undefined
    2098:	5954504d 	.inst	0x5954504d ; undefined
    209c:	61656828 	.inst	0x61656828 ; undefined
    20a0:	28202964 	stnp	w4, w10, [x11, #-256]
    20a4:	61656828 	.inst	0x61656828 ; undefined
    20a8:	3e2d2964 	.inst	0x3e2d2964 ; undefined
    20ac:	73726966 	.inst	0x73726966 ; undefined
    20b0:	3d3d2074 	str	b20, [x3, #3912]
    20b4:	4c554e20 	.inst	0x4c554e20 ; undefined
    20b8:	5f00294c 	.inst	0x5f00294c ; undefined
    20bc:	3436504c 	cbz	w12, 6eac4 <fat32_open+0x6e19c>
    20c0:	55003120 	.inst	0x55003120 ; undefined
    20c4:	4d544e49 	.inst	0x4d544e49 ; undefined
    20c8:	4d5f5841 	.inst	0x4d5f5841 ; undefined
    20cc:	5f005841 	fmls	h1, h2, v0.h[4]
    20d0:	544c465f 	.inst	0x544c465f ; undefined
    20d4:	5f583436 	srsra	d22, d1, #40
    20d8:	49434544 	.inst	0x49434544 ; undefined
    20dc:	5f4c414d 	.inst	0x5f4c414d ; undefined
    20e0:	5f474944 	.inst	0x5f474944 ; undefined
    20e4:	3633205f 	tbz	wzr, #6, 84ec <fat32_open+0x7bc4>
    20e8:	465f5f00 	.inst	0x465f5f00 ; undefined
    20ec:	3233544c 	orr	w12, w2, #0xffffe007
    20f0:	4e414d5f 	.inst	0x4e414d5f ; undefined
    20f4:	49445f54 	.inst	0x49445f54 ; undefined
    20f8:	205f5f47 	.inst	0x205f5f47 ; undefined
    20fc:	49003432 	.inst	0x49003432 ; undefined
    2100:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2104:	54534145 	b.pl	a892c <fat32_open+0xa8004>  // b.nfrst
    2108:	414d5f38 	.inst	0x414d5f38 ; undefined
    210c:	666f0058 	.inst	0x666f0058 ; undefined
    2110:	74657366 	.inst	0x74657366 ; undefined
    2114:	5428666f 	b.nv	52de0 <fat32_open+0x524b8>
    2118:	2c455059 	ldnp	s25, s20, [x2, #40]
    211c:	424d454d 	.inst	0x424d454d ; undefined
    2120:	20295245 	.inst	0x20295245 ; undefined
    2124:	75625f5f 	.inst	0x75625f5f ; undefined
    2128:	69746c69 	ldpsw	x9, x27, [x3, #-96]
    212c:	666f5f6e 	.inst	0x666f5f6e ; undefined
    2130:	74657366 	.inst	0x74657366 ; undefined
    2134:	2820666f 	stnp	w15, w25, [x19, #-256]
    2138:	45505954 	.inst	0x45505954 ; undefined
    213c:	454d202c 	.inst	0x454d202c ; undefined
    2140:	5245424d 	.inst	0x5245424d ; undefined
    2144:	4e490029 	.inst	0x4e490029 ; undefined
    2148:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    214c:	5f205841 	fmls	h1, h2, v0.h[6]
    2150:	544e495f 	.inst	0x544e495f ; undefined
    2154:	414d5f38 	.inst	0x414d5f38 ; undefined
    2158:	005f5f58 	.inst	0x005f5f58 ; undefined
    215c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2160:	58343654 	ldr	x20, 6a828 <fat32_open+0x69f00>
    2164:	4e414d5f 	.inst	0x4e414d5f ; undefined
    2168:	49445f54 	.inst	0x49445f54 ; undefined
    216c:	205f5f47 	.inst	0x205f5f47 ; undefined
    2170:	00333131 	.inst	0x00333131 ; NYI
    2174:	43475f5f 	.inst	0x43475f5f ; undefined
    2178:	54415f43 	b.cc	84d60 <fat32_open+0x84438>  // b.lo, b.ul, b.last
    217c:	43494d4f 	.inst	0x43494d4f ; undefined
    2180:	4148435f 	.inst	0x4148435f ; undefined
    2184:	5f363152 	.inst	0x5f363152 ; undefined
    2188:	4f4c5f54 	.inst	0x4f4c5f54 ; undefined
    218c:	465f4b43 	.inst	0x465f4b43 ; undefined
    2190:	20454552 	.inst	0x20454552 ; undefined
    2194:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    2198:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    219c:	5f58414d 	.inst	0x5f58414d ; undefined
    21a0:	5f505845 	.inst	0x5f505845 ; undefined
    21a4:	3031205f 	adr	xzr, 645ad <fat32_open+0x63c85>
    21a8:	5f003432 	.inst	0x5f003432 ; undefined
    21ac:	4f54415f 	.inst	0x4f54415f ; undefined
    21b0:	5f43494d 	.inst	0x5f43494d ; undefined
    21b4:	454c4552 	.inst	0x454c4552 ; undefined
    21b8:	20455341 	.inst	0x20455341 ; undefined
    21bc:	6f6c0033 	mla	v19.8h, v1.8h, v12.h[2]
    21c0:	65735f67 	fnmla	z7.h, p7/m, z27.h, z19.h
    21c4:	726f7463 	.inst	0x726f7463 ; undefined
    21c8:	00645f73 	.inst	0x00645f73 ; undefined
    21cc:	4c465f5f 	.inst	0x4c465f5f ; undefined
    21d0:	58323354 	ldr	x20, 66838 <fat32_open+0x65f10>
    21d4:	5341485f 	.inst	0x5341485f ; undefined
    21d8:	4e45445f 	.inst	0x4e45445f ; undefined
    21dc:	5f4d524f 	.inst	0x5f4d524f ; undefined
    21e0:	0031205f 	.inst	0x0031205f ; NYI
    21e4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    21e8:	414d5f54 	.inst	0x414d5f54 ; undefined
    21ec:	445f544e 	.inst	0x445f544e ; undefined
    21f0:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    21f4:	00343220 	.inst	0x00343220 ; NYI
    21f8:	4e495f5f 	.inst	0x4e495f5f ; undefined
    21fc:	41465f54 	.inst	0x41465f54 ; undefined
    2200:	32335453 	orr	w19, w2, #0xffffe007
    2204:	5059545f 	adr	xzr, b4c8e <fat32_open+0xb4366>
    2208:	205f5f45 	.inst	0x205f5f45 ; undefined
    220c:	00746e69 	.inst	0x00746e69 ; undefined
    2210:	4454535f 	.inst	0x4454535f ; undefined
    2214:	5f475241 	.inst	0x5f475241 ; undefined
    2218:	46002048 	.inst	0x46002048 ; undefined
    221c:	32335441 	orr	w1, w2, #0xffffe007
    2220:	554f485f 	.inst	0x554f485f ; undefined
    2224:	414d5f52 	.inst	0x414d5f52 ; undefined
    2228:	30204b53 	adr	x19, 42b91 <fat32_open+0x42269>
    222c:	30386678 	adr	x24, 72ef9 <fat32_open+0x725d1>
    2230:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    2234:	746e695f 	.inst	0x746e695f ; undefined
    2238:	7274705f 	.inst	0x7274705f ; undefined
    223c:	66666964 	.inst	0x66666964 ; undefined
    2240:	685f745f 	.inst	0x685f745f ; undefined
    2244:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    2248:	4954504f 	.inst	0x4954504f ; undefined
    224c:	455a494d 	.inst	0x455a494d ; undefined
    2250:	31205f5f 	cmn	w26, #0x817
    2254:	53414800 	.inst	0x53414800 ; undefined
    2258:	49425f48 	.inst	0x49425f48 ; undefined
    225c:	6f63284e 	umlal2	v14.4s, v2.8h, v3.h[6]
    2260:	6c2c6564 	stnp	d4, d25, [x11, #-320]
    2264:	74676e65 	.inst	0x74676e65 ; undefined
    2268:	28202968 	stnp	w8, w10, [x11, #-256]
    226c:	65646f63 	fnmls	z3.h, p3/m, z27.h, z4.h
    2270:	28202620 	stnp	w0, w9, [x17, #-256]
    2274:	676e656c 	.inst	0x676e656c ; undefined
    2278:	2d206874 	stp	s20, s26, [x3, #-256]
    227c:	29293120 	stp	w0, w12, [x9, #-184]
    2280:	676f6c00 	.inst	0x676f6c00 ; undefined
    2284:	6365735f 	.inst	0x6365735f ; undefined
    2288:	73726f74 	.inst	0x73726f74 ; undefined
    228c:	4900775f 	.inst	0x4900775f ; undefined
    2290:	3436544e 	cbz	w14, 6ed18 <fat32_open+0x6e3f0>
    2294:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2298:	492d2820 	.inst	0x492d2820 ; undefined
    229c:	3436544e 	cbz	w14, 6ed24 <fat32_open+0x6e3fc>
    22a0:	58414d5f 	ldr	xzr, 84c48 <fat32_open+0x84320>
    22a4:	31202d20 	adds	w0, w9, #0x80b
    22a8:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    22ac:	36544c46 	tbz	w6, #10, ffffffffffffac34 <fat32_open+0xffffffffffffa30c>
    22b0:	494d5f34 	.inst	0x494d5f34 ; undefined
    22b4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    22b8:	32322e32 	orr	w18, w17, #0x3ffc000
    22bc:	33373035 	.inst	0x33373035 ; undefined
    22c0:	35383538 	cbnz	w24, 72964 <fat32_open+0x7203c>
    22c4:	30323730 	adr	x16, 669a9 <fat32_open+0x66081>
    22c8:	33383331 	.inst	0x33383331 ; undefined
    22cc:	32303930 	orr	w16, w9, #0x7fff0000
    22d0:	31373233 	adds	w19, w17, #0xdcc
    22d4:	32333337 	orr	w23, w25, #0x3ffe000
    22d8:	30343034 	adr	x20, 6a8dd <fat32_open+0x69fb5>
    22dc:	332d6536 	.inst	0x332d6536 ; undefined
    22e0:	36463830 	tbz	w16, #8, ffffffffffffe9e4 <fat32_open+0xffffffffffffe0bc>
    22e4:	49550034 	.inst	0x49550034 ; undefined
    22e8:	5450544e 	b.al	a2d70 <fat32_open+0xa2448>
    22ec:	414d5f52 	.inst	0x414d5f52 ; undefined
    22f0:	545f0058 	.inst	0x545f0058 ; undefined
    22f4:	5254505f 	.inst	0x5254505f ; undefined
    22f8:	46464944 	.inst	0x46464944 ; undefined
    22fc:	6600205f 	.inst	0x6600205f ; undefined
    2300:	735f7461 	.inst	0x735f7461 ; undefined
    2304:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
    2308:	41460077 	.inst	0x41460077 ; undefined
    230c:	5f323354 	.inst	0x5f323354 ; undefined
    2310:	415f5349 	.inst	0x415f5349 ; undefined
    2314:	28484352 	ldnp	w18, w16, [x26, #64]
    2318:	72747461 	.inst	0x72747461 ; undefined
    231c:	74756269 	.inst	0x74756269 ; undefined
    2320:	28202965 	stnp	w5, w10, [x11, #-256]
    2324:	72747461 	.inst	0x72747461 ; undefined
    2328:	74756269 	.inst	0x74756269 ; undefined
    232c:	20262065 	.inst	0x20262065 ; undefined
    2330:	30327830 	adr	x16, 67235 <fat32_open+0x6690d>
    2334:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    2338:	544e4955 	.inst	0x544e4955 ; undefined
    233c:	5f58414d 	.inst	0x5f58414d ; undefined
    2340:	5f58414d 	.inst	0x5f58414d ; undefined
    2344:	7830205f 	steorh	w16, [x2]
    2348:	66666666 	.inst	0x66666666 ; undefined
    234c:	66666666 	.inst	0x66666666 ; undefined
    2350:	66666666 	.inst	0x66666666 ; undefined
    2354:	66666666 	.inst	0x66666666 ; undefined
    2358:	5f004c55 	.inst	0x5f004c55 ; undefined
    235c:	544c465f 	.inst	0x544c465f ; undefined
    2360:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2364:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
    2368:	58455f30 	ldr	x16, 8cf4c <fat32_open+0x8c624>
    236c:	205f5f50 	.inst	0x205f5f50 ; undefined
    2370:	29342d28 	stp	w8, w11, [x9, #-96]
    2374:	4e415f00 	.inst	0x4e415f00 ; undefined
    2378:	535f4953 	.inst	0x535f4953 ; undefined
    237c:	45444454 	.inst	0x45444454 ; undefined
    2380:	20485f46 	.inst	0x20485f46 ; undefined
    2384:	495f5f00 	.inst	0x495f5f00 ; undefined
    2388:	414d544e 	.inst	0x414d544e ; undefined
    238c:	49575f58 	.inst	0x49575f58 ; undefined
    2390:	5f485444 	shl	d4, d2, #8
    2394:	3436205f 	cbz	wzr, 6e79c <fat32_open+0x6de74>
    2398:	475f5f00 	.inst	0x475f5f00 ; undefined
    239c:	485f4343 	ldxrh	w3, [x26]
    23a0:	5f455641 	shl	d1, d18, #5
    23a4:	434e5953 	.inst	0x434e5953 ; undefined
    23a8:	4d4f435f 	.inst	0x4d4f435f ; undefined
    23ac:	45524150 	.inst	0x45524150 ; undefined
    23b0:	444e415f 	.inst	0x444e415f ; undefined
    23b4:	4157535f 	.inst	0x4157535f ; undefined
    23b8:	20385f50 	.inst	0x20385f50 ; undefined
    23bc:	43570031 	.inst	0x43570031 ; undefined
    23c0:	5f524148 	.inst	0x5f524148 ; undefined
    23c4:	0058414d 	.inst	0x0058414d ; undefined
    23c8:	575f545f 	.inst	0x575f545f ; undefined
    23cc:	52414843 	.inst	0x52414843 ; undefined
    23d0:	4600205f 	.inst	0x4600205f ; undefined
    23d4:	32335441 	orr	w1, w2, #0xffffe007
    23d8:	5445475f 	.inst	0x5445475f ; undefined
    23dc:	4345535f 	.inst	0x4345535f ; undefined
    23e0:	28444e4f 	ldnp	w15, w19, [x18, #32]
    23e4:	656d6974 	fnmls	z20.h, p2/m, z11.h, z13.h
    23e8:	28282029 	stnp	w9, w8, [x1, #-192]
    23ec:	6d697428 	ldp	d8, d29, [x1, #-368]
    23f0:	26202965 	.inst	0x26202965 ; undefined
    23f4:	54414620 	b.eq	84cb8 <fat32_open+0x84390>  // b.none
    23f8:	535f3233 	.inst	0x535f3233 ; undefined
    23fc:	4e4f4345 	.inst	0x4e4f4345 ; undefined
    2400:	414d5f44 	.inst	0x414d5f44 ; undefined
    2404:	20294b53 	.inst	0x20294b53 ; undefined
    2408:	31203c3c 	adds	w28, w1, #0x80f
    240c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    2410:	5f544e49 	.inst	0x5f544e49 ; undefined
    2414:	5341454c 	.inst	0x5341454c ; undefined
    2418:	5f323354 	.inst	0x5f323354 ; undefined
    241c:	5f58414d 	.inst	0x5f58414d ; undefined
    2420:	7830205f 	steorh	w16, [x2]
    2424:	66666637 	.inst	0x66666637 ; undefined
    2428:	66666666 	.inst	0x66666666 ; undefined
    242c:	494c4800 	.inst	0x494c4800 ; undefined
    2430:	495f5453 	.inst	0x495f5453 ; undefined
    2434:	2854494e 	ldnp	w14, w18, [x10, #160]
    2438:	64616568 	.inst	0x64616568 ; undefined
    243c:	6f642029 	umlal2	v9.4s, v1.8h, v4.h[2]
    2440:	28207b20 	stnp	w0, w30, [x25, #-256]
    2444:	64616568 	.inst	0x64616568 ; undefined
    2448:	663e2d29 	.inst	0x663e2d29 ; undefined
    244c:	74737269 	.inst	0x74737269 ; undefined
    2450:	4e203d20 	cmge	v0.16b, v9.16b, v0.16b
    2454:	3b4c4c55 	.inst	0x3b4c4c55 ; undefined
    2458:	77207d20 	.inst	0x77207d20 ; undefined
    245c:	656c6968 	fnmls	z8.h, p2/m, z11.h, z12.h
    2460:	29302820 	stp	w0, w10, [x1, #-128]
    2464:	575f5f00 	.inst	0x575f5f00 ; undefined
    2468:	52414843 	.inst	0x52414843 ; undefined
    246c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2470:	30205f5f 	adr	xzr, 43059 <fat32_open+0x42731>
    2474:	41460055 	.inst	0x41460055 ; undefined
    2478:	5f323354 	.inst	0x5f323354 ; undefined
    247c:	4f434553 	.inst	0x4f434553 ; undefined
    2480:	4d5f444e 	.inst	0x4d5f444e ; undefined
    2484:	204b5341 	.inst	0x204b5341 ; undefined
    2488:	30307830 	adr	x16, 6338d <fat32_open+0x62a65>
    248c:	5f006631 	.inst	0x5f006631 ; undefined
    2490:	544c465f 	.inst	0x544c465f ; undefined
    2494:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2498:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
    249c:	58455f30 	ldr	x16, 8d080 <fat32_open+0x8c758>
    24a0:	205f5f50 	.inst	0x205f5f50 ; undefined
    24a4:	494c0034 	.inst	0x494c0034 ; undefined
    24a8:	465f5453 	.inst	0x465f5453 ; undefined
    24ac:	4145524f 	.inst	0x4145524f ; undefined
    24b0:	76284843 	.inst	0x76284843 ; undefined
    24b4:	682c7261 	.inst	0x682c7261 ; undefined
    24b8:	2c646165 	ldnp	s5, s24, [x11, #-224]
    24bc:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    24c0:	6f662029 	umlal2	v9.4s, v1.8h, v6.h[2]
    24c4:	28282072 	stnp	w18, w8, [x3, #-192]
    24c8:	29726176 	ldp	w22, w24, [x11, #-112]
    24cc:	4c203d20 	.inst	0x4c203d20 ; undefined
    24d0:	5f545349 	.inst	0x5f545349 ; undefined
    24d4:	53524946 	.inst	0x53524946 ; undefined
    24d8:	5f5f2854 	.inst	0x5f5f2854 ; undefined
    24dc:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    24e0:	5f5f666f 	.inst	0x5f5f666f ; undefined
    24e4:	61762a28 	.inst	0x61762a28 ; undefined
    24e8:	202c2972 	.inst	0x202c2972 ; undefined
    24ec:	64616568 	.inst	0x64616568 ; undefined
    24f0:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
    24f4:	3b296564 	.inst	0x3b296564 ; undefined
    24f8:	28282620 	stnp	w0, w9, [x17, #-192]
    24fc:	29726176 	ldp	w22, w24, [x11, #-112]
    2500:	6f6e3e2d 	.inst	0x6f6e3e2d ; undefined
    2504:	20296564 	.inst	0x20296564 ; undefined
    2508:	68203d21 	.inst	0x68203d21 ; undefined
    250c:	3b646165 	.inst	0x3b646165 ; undefined
    2510:	61762820 	.inst	0x61762820 ; undefined
    2514:	3d202972 	str	b18, [x11, #2058]
    2518:	53494c20 	.inst	0x53494c20 ; undefined
    251c:	454e5f54 	.inst	0x454e5f54 ; undefined
    2520:	76285458 	.inst	0x76285458 ; undefined
    2524:	202c7261 	.inst	0x202c7261 ; undefined
    2528:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    252c:	5f002929 	.inst	0x5f002929 ; undefined
    2530:	4343475f 	.inst	0x4343475f ; undefined
    2534:	4f54415f 	.inst	0x4f54415f ; undefined
    2538:	5f43494d 	.inst	0x5f43494d ; undefined
    253c:	474e4f4c 	.inst	0x474e4f4c ; undefined
    2540:	434f4c5f 	.inst	0x434f4c5f ; undefined
    2544:	52465f4b 	.inst	0x52465f4b ; undefined
    2548:	32204545 	orr	w5, w10, #0x3ffff
    254c:	5f647300 	sqdmlsl	s0, h24, v4.h[2]
    2550:	00727265 	.inst	0x00727265 ; undefined
    2554:	656e5f5f 	fnmla	z31.h, p7/m, z26.h, z14.h
    2558:	735f6465 	.inst	0x735f6465 ; undefined
    255c:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
    2560:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    2564:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    2568:	48435241 	ldxrh	w1, [x18]
    256c:	5f003820 	.inst	0x5f003820 ; undefined
    2570:	455a4953 	.inst	0x455a4953 ; undefined
    2574:	205f545f 	.inst	0x205f545f ; undefined
    2578:	69667000 	ldpsw	x0, x28, [x0, #-208]
    257c:	5f00656c 	.inst	0x5f00656c ; undefined
    2580:	544c465f 	.inst	0x544c465f ; undefined
    2584:	4441525f 	.inst	0x4441525f ; undefined
    2588:	5f5f5849 	.inst	0x5f5f5849 ; undefined
    258c:	5f003220 	.inst	0x5f003220 ; undefined
    2590:	544c465f 	.inst	0x544c465f ; undefined
    2594:	485f3233 	ldxrh	w19, [x17]
    2598:	495f5341 	.inst	0x495f5341 ; undefined
    259c:	4e49464e 	.inst	0x4e49464e ; undefined
    25a0:	5f595449 	shl	d9, d2, #25
    25a4:	0031205f 	.inst	0x0031205f ; NYI
    25a8:	6d6f682f 	ldp	d15, d26, [x1, #-272]
    25ac:	69622f65 	ldpsw	x5, x11, [x27, #-240]
    25b0:	74736976 	.inst	0x74736976 ; undefined
    25b4:	6c617561 	ldnp	d1, d29, [x11, #-496]
    25b8:	7361722f 	.inst	0x7361722f ; undefined
    25bc:	722f6970 	ands	w16, w11, #0xfffe0fff
    25c0:	69707361 	ldpsw	x1, x28, [x27, #-128]
    25c4:	736f2d33 	.inst	0x736f2d33 ; undefined
    25c8:	7574732f 	.inst	0x7574732f ; undefined
    25cc:	49007964 	.inst	0x49007964 ; undefined
    25d0:	3631544e 	tbz	w14, #6, 5058 <fat32_open+0x4730>
    25d4:	58414d5f 	ldr	xzr, 84f7c <fat32_open+0x84654>
    25d8:	544e4900 	b.eq	9eef8 <fat32_open+0x9e5d0>  // b.none
    25dc:	5f525450 	shl	d16, d2, #18
    25e0:	0058414d 	.inst	0x0058414d ; undefined
    25e4:	48435f5f 	ldxrh	wzr, [x26]
    25e8:	32335241 	orr	w1, w18, #0xffffe003
    25ec:	5059545f 	adr	xzr, b5076 <fat32_open+0xb474e>
    25f0:	205f5f45 	.inst	0x205f5f45 ; undefined
    25f4:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    25f8:	64656e67 	.inst	0x64656e67 ; undefined
    25fc:	746e6920 	.inst	0x746e6920 ; undefined
    2600:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    2604:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    2608:	5f534148 	.inst	0x5f534148 ; undefined
    260c:	45495551 	.inst	0x45495551 ; undefined
    2610:	414e5f54 	.inst	0x414e5f54 ; undefined
    2614:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2618:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    261c:	474e4f4c 	.inst	0x474e4f4c ; undefined
    2620:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    2624:	49575f47 	.inst	0x49575f47 ; undefined
    2628:	5f485444 	shl	d4, d2, #8
    262c:	3436205f 	cbz	wzr, 6ea34 <fat32_open+0x6e10c>
    2630:	78656e00 	.inst	0x78656e00 ; undefined
    2634:	6e695f74 	uqrshl	v20.8h, v27.8h, v9.8h
    2638:	00786564 	.inst	0x00786564 ; undefined
    263c:	49505f5f 	.inst	0x49505f5f ; undefined
    2640:	205f5f43 	.inst	0x205f5f43 ; undefined
    2644:	69640031 	ldpsw	x17, x0, [x1, #-224]
    2648:	6e655f72 	uqrshl	v18.8h, v27.8h, v5.8h
    264c:	5f797274 	sqdmlsl	s20, h19, v9.h[3]
    2650:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    2654:	5f434347 	.inst	0x5f434347 ; undefined
    2658:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    265c:	4c5f4349 	.inst	0x4c5f4349 ; undefined
    2660:	474e4f4c 	.inst	0x474e4f4c ; undefined
    2664:	434f4c5f 	.inst	0x434f4c5f ; undefined
    2668:	52465f4b 	.inst	0x52465f4b ; undefined
    266c:	32204545 	orr	w5, w10, #0x3ffff
    2670:	6d656d00 	ldp	d0, d27, [x8, #-432]
    2674:	00797063 	.inst	0x00797063 ; undefined
    2678:	4c465f5f 	.inst	0x4c465f5f ; undefined
    267c:	5f343654 	.inst	0x5f343654 ; undefined
    2680:	5f58414d 	.inst	0x5f58414d ; undefined
    2684:	5f505845 	.inst	0x5f505845 ; undefined
    2688:	3031205f 	adr	xzr, 64a91 <fat32_open+0x64169>
    268c:	55003432 	.inst	0x55003432 ; undefined
    2690:	31544e49 	adds	w9, w18, #0x513, lsl #12
    2694:	414d5f36 	.inst	0x414d5f36 ; undefined
    2698:	5f5f0058 	.inst	0x5f5f0058 ; undefined
    269c:	4c42444c 	.inst	0x4c42444c ; undefined
    26a0:	58414d5f 	ldr	xzr, 85048 <fat32_open+0x84720>
    26a4:	31205f5f 	cmn	w26, #0x817
    26a8:	3938312e 	strb	w14, [x9, #3596]
    26ac:	34313337 	cbz	w23, 64d10 <fat32_open+0x643e8>
    26b0:	35333539 	cbnz	w25, 68d54 <fat32_open+0x6842c>
    26b4:	31333237 	adds	w23, w17, #0xccc
    26b8:	30353637 	adr	x23, 6cd7d <fat32_open+0x6c455>
    26bc:	35373538 	cbnz	w24, 70d60 <fat32_open+0x70438>
    26c0:	36323339 	tbz	w25, #6, 6d24 <fat32_open+0x63fc>
    26c4:	30383236 	adr	x22, 72d09 <fat32_open+0x723e1>
    26c8:	32303730 	orr	w16, w25, #0x3fff0000
    26cc:	39342b65 	strb	w5, [x27, #3338]
    26d0:	004c3233 	.inst	0x004c3233 ; undefined
    26d4:	49555f5f 	.inst	0x49555f5f ; undefined
    26d8:	414d544e 	.inst	0x414d544e ; undefined
    26dc:	59545f58 	.inst	0x59545f58 ; undefined
    26e0:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    26e4:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    26e8:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
    26ec:	6e676973 	.inst	0x6e676973 ; undefined
    26f0:	69206465 	.inst	0x69206465 ; undefined
    26f4:	5f00746e 	.inst	0x5f00746e ; undefined
    26f8:	4e49575f 	.inst	0x4e49575f ; undefined
    26fc:	49575f54 	.inst	0x49575f54 ; undefined
    2700:	5f485444 	shl	d4, d2, #8
    2704:	3233205f 	orr	wsp, w2, #0x3fe000
    2708:	435f5f00 	.inst	0x435f5f00 ; undefined
    270c:	5f524148 	.inst	0x5f524148 ; undefined
    2710:	5f544942 	.inst	0x5f544942 ; undefined
    2714:	0038205f 	.inst	0x0038205f ; NYI
    2718:	49535f5f 	.inst	0x49535f5f ; undefined
    271c:	464f455a 	.inst	0x464f455a ; undefined
    2720:	4843575f 	ldxrh	wzr, [x26]
    2724:	545f5241 	b.ne	c116c <fat32_open+0xc0844>  // b.any
    2728:	34205f5f 	cbz	wzr, 43310 <fat32_open+0x429e8>
    272c:	54505f00 	b.eq	a330c <fat32_open+0xa29e4>  // b.none
    2730:	46494452 	.inst	0x46494452 ; undefined
    2734:	20545f46 	.inst	0x20545f46 ; undefined
    2738:	696e6900 	ldpsw	x0, x26, [x8, #-144]
    273c:	49420074 	.inst	0x49420074 ; undefined
    2740:	49535f4e 	.inst	0x49535f4e ; undefined
    2744:	6928455a 	.inst	0x6928455a ; undefined
    2748:	7865646e 	.inst	0x7865646e ; undefined
    274c:	31282029 	adds	w9, w1, #0xa08
    2750:	203c3c20 	.inst	0x203c3c20 ; undefined
    2754:	646e6928 	.inst	0x646e6928 ; undefined
    2758:	2b207865 	.inst	0x2b207865 ; undefined
    275c:	29293520 	stp	w0, w13, [x9, #-184]
    2760:	41565f00 	.inst	0x41565f00 ; undefined
    2764:	53494c5f 	.inst	0x53494c5f ; undefined
    2768:	5f545f54 	.inst	0x5f545f54 ; undefined
    276c:	5f002048 	.inst	0x5f002048 ; undefined
    2770:	4343475f 	.inst	0x4343475f ; undefined
    2774:	4345495f 	.inst	0x4345495f ; undefined
    2778:	3935355f 	strb	wzr, [x10, #3405]
    277c:	64003220 	.inst	0x64003220 ; undefined
    2780:	00737269 	.inst	0x00737269 ; undefined
    2784:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2788:	5f363154 	.inst	0x5f363154 ; undefined
    278c:	5f58414d 	.inst	0x5f58414d ; undefined
    2790:	5f505845 	.inst	0x5f505845 ; undefined
    2794:	3631205f 	tbz	wzr, #6, 4b9c <fat32_open+0x4274>
    2798:	544e4900 	b.eq	9f0b8 <fat32_open+0x9e790>  // b.none
    279c:	5341465f 	.inst	0x5341465f ; undefined
    27a0:	5f343654 	.inst	0x5f343654 ; undefined
    27a4:	204e494d 	.inst	0x204e494d ; undefined
    27a8:	4e492d28 	.inst	0x4e492d28 ; undefined
    27ac:	41465f54 	.inst	0x41465f54 ; undefined
    27b0:	34365453 	cbz	w19, 6f238 <fat32_open+0x6e910>
    27b4:	58414d5f 	ldr	xzr, 8515c <fat32_open+0x84834>
    27b8:	31202d20 	adds	w0, w9, #0x80b
    27bc:	6c680029 	ldnp	d9, d0, [x1, #-384]
    27c0:	5f747369 	sqdmlsl	s9, h27, v4.h[3]
    27c4:	64616568 	.inst	0x64616568 ; undefined
    27c8:	425f5f00 	.inst	0x425f5f00 ; undefined
    27cc:	5f455459 	shl	d25, d2, #5
    27d0:	4544524f 	.inst	0x4544524f ; undefined
    27d4:	205f5f52 	.inst	0x205f5f52 ; undefined
    27d8:	524f5f5f 	.inst	0x524f5f5f ; undefined
    27dc:	5f524544 	.inst	0x5f524544 ; undefined
    27e0:	5454494c 	b.gt	ab108 <fat32_open+0xaa7e0>
    27e4:	455f454c 	.inst	0x455f454c ; undefined
    27e8:	4149444e 	.inst	0x4149444e ; undefined
    27ec:	005f5f4e 	.inst	0x005f5f4e ; undefined
    27f0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    27f4:	5f323354 	.inst	0x5f323354 ; undefined
    27f8:	29632843 	ldp	w3, w10, [x2, #-232]
    27fc:	49006320 	.inst	0x49006320 ; undefined
    2800:	5450544e 	b.al	a3288 <fat32_open+0xa2960>
    2804:	494d5f52 	.inst	0x494d5f52 ; undefined
    2808:	2d28204e 	stp	s14, s8, [x2, #-192]
    280c:	50544e49 	adr	x9, ab1d6 <fat32_open+0xaa8ae>
    2810:	4d5f5254 	.inst	0x4d5f5254 ; undefined
    2814:	2d205841 	stp	s1, s22, [x2, #-256]
    2818:	00293120 	.inst	0x00293120 ; NYI
    281c:	544e4955 	.inst	0x544e4955 ; undefined
    2820:	5341465f 	.inst	0x5341465f ; undefined
    2824:	5f343654 	.inst	0x5f343654 ; undefined
    2828:	2058414d 	.inst	0x2058414d ; undefined
    282c:	49555f5f 	.inst	0x49555f5f ; undefined
    2830:	465f544e 	.inst	0x465f544e ; undefined
    2834:	36545341 	tbz	w1, #10, ffffffffffffb29c <fat32_open+0xffffffffffffa974>
    2838:	414d5f34 	.inst	0x414d5f34 ; undefined
    283c:	005f5f58 	.inst	0x005f5f58 ; undefined
    2840:	49555f5f 	.inst	0x49555f5f ; undefined
    2844:	5450544e 	b.al	a32cc <fat32_open+0xa29a4>
    2848:	59545f52 	.inst	0x59545f52 ; undefined
    284c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    2850:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    2854:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
    2858:	6e676973 	.inst	0x6e676973 ; undefined
    285c:	69206465 	.inst	0x69206465 ; undefined
    2860:	5f00746e 	.inst	0x5f00746e ; undefined
    2864:	544c465f 	.inst	0x544c465f ; undefined
    2868:	5f583436 	srsra	d22, d1, #40
    286c:	5f474944 	.inst	0x5f474944 ; undefined
    2870:	3333205f 	.inst	0x3333205f ; undefined
    2874:	415f5f00 	.inst	0x415f5f00 ; undefined
    2878:	48435241 	ldxrh	w1, [x18]
    287c:	435f3436 	.inst	0x435f3436 ; undefined
    2880:	45444f4d 	.inst	0x45444f4d ; undefined
    2884:	49545f4c 	.inst	0x49545f4c ; undefined
    2888:	5f5f594e 	.inst	0x5f5f594e ; undefined
    288c:	54414600 	b.eq	8514c <fat32_open+0x84824>  // b.none
    2890:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    2894:	54554e49 	b.ls	ad25c <fat32_open+0xac934>  // b.plast
    2898:	414d5f45 	.inst	0x414d5f45 ; undefined
    289c:	30204b53 	adr	x19, 43205 <fat32_open+0x428dd>
    28a0:	65373078 	.inst	0x65373078 ; undefined
    28a4:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    28a8:	544e4957 	.inst	0x544e4957 ; undefined
    28ac:	5059545f 	adr	xzr, b5336 <fat32_open+0xb4a0e>
    28b0:	205f5f45 	.inst	0x205f5f45 ; undefined
    28b4:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    28b8:	64656e67 	.inst	0x64656e67 ; undefined
    28bc:	746e6920 	.inst	0x746e6920 ; undefined
    28c0:	544e4900 	b.eq	9f1e0 <fat32_open+0x9e8b8>  // b.none
    28c4:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    28c8:	28204e49 	stnp	w9, w19, [x18, #-256]
    28cc:	544e492d 	b.le	9f1f0 <fat32_open+0x9e8c8>
    28d0:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    28d4:	2d205841 	stp	s1, s22, [x2, #-256]
    28d8:	00293120 	.inst	0x00293120 ; NYI
    28dc:	494c5f5f 	.inst	0x494c5f5f ; undefined
    28e0:	4f52414e 	.inst	0x4f52414e ; undefined
    28e4:	4950535f 	.inst	0x4950535f ; undefined
    28e8:	205f5f4e 	.inst	0x205f5f4e ; undefined
    28ec:	62650030 	.inst	0x62650030 ; undefined
    28f0:	5f006270 	.inst	0x5f006270 ; undefined
    28f4:	544c465f 	.inst	0x544c465f ; undefined
    28f8:	485f3436 	ldxrh	w22, [x1]
    28fc:	495f5341 	.inst	0x495f5341 ; undefined
    2900:	4e49464e 	.inst	0x4e49464e ; undefined
    2904:	5f595449 	shl	d9, d2, #25
    2908:	0031205f 	.inst	0x0031205f ; NYI
    290c:	5f4d454d 	.inst	0x5f4d454d ; undefined
    2910:	43554843 	.inst	0x43554843 ; undefined
    2914:	4c435f4b 	.inst	0x4c435f4b ; undefined
    2918:	68632852 	.inst	0x68632852 ; undefined
    291c:	296b6375 	ldp	w21, w24, [x27, #-168]
    2920:	63282820 	.inst	0x63282820 ; undefined
    2924:	6b637568 	.inst	0x6b637568 ; undefined
    2928:	733e2d29 	.inst	0x733e2d29 ; undefined
    292c:	20657a69 	.inst	0x20657a69 ; undefined
    2930:	7e203d26 	.inst	0x7e203d26 ; undefined
    2934:	29317830 	stp	w16, w30, [x1, #-120]
    2938:	41565f00 	.inst	0x41565f00 ; undefined
    293c:	53494c5f 	.inst	0x53494c5f ; undefined
    2940:	5f002054 	.inst	0x5f002054 ; undefined
    2944:	5241415f 	.inst	0x5241415f ; undefined
    2948:	34364843 	cbz	w3, 6f250 <fat32_open+0x6e928>
    294c:	4f4d435f 	.inst	0x4f4d435f ; undefined
    2950:	5f4c4544 	.inst	0x5f4c4544 ; undefined
    2954:	4c414d53 	.inst	0x4c414d53 ; undefined
    2958:	005f5f4c 	.inst	0x005f5f4c ; undefined
    295c:	49555f5f 	.inst	0x49555f5f ; undefined
    2960:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2964:	54534145 	b.pl	a918c <fat32_open+0xa8864>  // b.nfrst
    2968:	545f3233 	.inst	0x545f3233 ; undefined
    296c:	5f455059 	.inst	0x5f455059 ; undefined
    2970:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    2974:	6e676973 	.inst	0x6e676973 ; undefined
    2978:	69206465 	.inst	0x69206465 ; undefined
    297c:	7500746e 	.inst	0x7500746e ; undefined
    2980:	6769736e 	.inst	0x6769736e ; undefined
    2984:	2064656e 	.inst	0x2064656e ; undefined
    2988:	00746e69 	.inst	0x00746e69 ; undefined
    298c:	33544146 	.inst	0x33544146 ; undefined
    2990:	4e455f32 	.inst	0x4e455f32 ; undefined
    2994:	5f595254 	.inst	0x5f595254 ; undefined
    2998:	53554e55 	.inst	0x53554e55 ; undefined
    299c:	30204445 	adr	x5, 43225 <fat32_open+0x428fd>
    29a0:	30303078 	adr	x24, 62fad <fat32_open+0x62685>
    29a4:	30303030 	adr	x16, 62fa9 <fat32_open+0x62681>
    29a8:	465f5f00 	.inst	0x465f5f00 ; undefined
    29ac:	4d5f544c 	.inst	0x4d5f544c ; undefined
    29b0:	455f4e49 	.inst	0x455f4e49 ; undefined
    29b4:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    29b8:	312d2820 	adds	w0, w1, #0xb4a
    29bc:	00293532 	.inst	0x00293532 ; NYI
    29c0:	4c465f5f 	.inst	0x4c465f5f ; undefined
    29c4:	5f343654 	.inst	0x5f343654 ; undefined
    29c8:	5f534148 	.inst	0x5f534148 ; undefined
    29cc:	45495551 	.inst	0x45495551 ; undefined
    29d0:	414e5f54 	.inst	0x414e5f54 ; undefined
    29d4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    29d8:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    29dc:	33544c46 	.inst	0x33544c46 ; undefined
    29e0:	4d5f5832 	.inst	0x4d5f5832 ; undefined
    29e4:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    29e8:	372e3120 	tbnz	w0, #5, fffffffffffff00c <fat32_open+0xffffffffffffe6e4>
    29ec:	39363739 	strb	w25, [x25, #3469]
    29f0:	34333133 	cbz	w19, 69014 <fat32_open+0x686ec>
    29f4:	33323638 	.inst	0x33323638 ; undefined
    29f8:	30373531 	adr	x17, 7109d <fat32_open+0x70775>
    29fc:	35343138 	cbnz	w24, 6b020 <fat32_open+0x6a6f8>
    2a00:	32343732 	orr	w18, w25, #0x3fff000
    2a04:	31333733 	adds	w19, w25, #0xccd
    2a08:	33343037 	.inst	0x33343037 ; undefined
    2a0c:	2b653735 	.inst	0x2b653735 ; undefined
    2a10:	46383033 	.inst	0x46383033 ; undefined
    2a14:	00783233 	.inst	0x00783233 ; undefined
    2a18:	64646968 	.inst	0x64646968 ; undefined
    2a1c:	735f6e65 	.inst	0x735f6e65 ; undefined
    2a20:	00657a69 	.inst	0x00657a69 ; undefined
    2a24:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2a28:	49445f54 	.inst	0x49445f54 ; undefined
    2a2c:	205f5f47 	.inst	0x205f5f47 ; undefined
    2a30:	535f0036 	.inst	0x535f0036 ; undefined
    2a34:	4f424454 	.inst	0x4f424454 ; undefined
    2a38:	485f4c4f 	ldxrh	w15, [x2]
    2a3c:	575f0020 	.inst	0x575f0020 ; undefined
    2a40:	52414843 	.inst	0x52414843 ; undefined
    2a44:	445f545f 	.inst	0x445f545f ; undefined
    2a48:	414c4345 	.inst	0x414c4345 ; undefined
    2a4c:	20444552 	.inst	0x20444552 ; undefined
    2a50:	465f5f00 	.inst	0x465f5f00 ; undefined
    2a54:	455f544c 	.inst	0x455f544c ; undefined
    2a58:	5f4c4156 	.inst	0x5f4c4156 ; undefined
    2a5c:	4854454d 	ldxrh	w13, [x10]
    2a60:	5f5f444f 	.inst	0x5f5f444f ; undefined
    2a64:	73003020 	.inst	0x73003020 ; undefined
    2a68:	6f746365 	umlsl2	v5.4s, v27.8h, v4.h[3]
    2a6c:	69735f72 	ldpsw	x18, x23, [x27, #-104]
    2a70:	5f00657a 	.inst	0x5f00657a ; undefined
    2a74:	544c465f 	.inst	0x544c465f ; undefined
    2a78:	58414d5f 	ldr	xzr, 85420 <fat32_open+0x84af8>
    2a7c:	33205f5f 	.inst	0x33205f5f ; undefined
    2a80:	3230342e 	orr	w14, w1, #0x3fff0000
    2a84:	34333238 	cbz	w24, 690c8 <fat32_open+0x687a0>
    2a88:	38333636 	.inst	0x38333636 ; undefined
    2a8c:	38383235 	ldsetb	w24, w21, [x17]
    2a90:	31383935 	adds	w21, w9, #0xe0e
    2a94:	34303731 	cbz	w17, 63178 <fat32_open+0x62850>
    2a98:	34333831 	cbz	w17, 6919c <fat32_open+0x68874>
    2a9c:	31353438 	adds	w24, w1, #0xd4d
    2aa0:	35323936 	cbnz	w22, 671c4 <fat32_open+0x6689c>
    2aa4:	38332b65 	.inst	0x38332b65 ; undefined
    2aa8:	5f5f0046 	.inst	0x5f5f0046 ; undefined
    2aac:	41484353 	.inst	0x41484353 ; undefined
    2ab0:	414d5f52 	.inst	0x414d5f52 ; undefined
    2ab4:	205f5f58 	.inst	0x205f5f58 ; undefined
    2ab8:	66377830 	.inst	0x66377830 ; undefined
    2abc:	544e4900 	b.eq	9f3dc <fat32_open+0x9eab4>  // b.none
    2ac0:	41454c5f 	.inst	0x41454c5f ; undefined
    2ac4:	32335453 	orr	w19, w2, #0xffffe007
    2ac8:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2acc:	495f5f00 	.inst	0x495f5f00 ; undefined
    2ad0:	465f544e 	.inst	0x465f544e ; undefined
    2ad4:	38545341 	ldurb	w1, [x26, #-187]
    2ad8:	4449575f 	.inst	0x4449575f ; undefined
    2adc:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    2ae0:	00323320 	.inst	0x00323320 ; NYI
    2ae4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2ae8:	38323154 	ldsetb	w18, w20, [x10]
    2aec:	5350455f 	.inst	0x5350455f ; undefined
    2af0:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    2af4:	31205f5f 	cmn	w26, #0x817
    2af8:	3532392e 	cbnz	w14, 6721c <fat32_open+0x668f4>
    2afc:	39393239 	strb	w25, [x17, #3660]
    2b00:	38333434 	.inst	0x38333434 ; undefined
    2b04:	35333237 	cbnz	w23, 69148 <fat32_open+0x68820>
    2b08:	30333538 	adr	x24, 691ad <fat32_open+0x68885>
    2b0c:	37393535 	tbnz	w21, #7, 51b0 <fat32_open+0x4888>
    2b10:	32343937 	orr	w23, w9, #0x7fff000
    2b14:	39343835 	strb	w21, [x1, #3342]
    2b18:	32333732 	orr	w18, w25, #0x7ffe000
    2b1c:	34332d65 	cbz	w5, 690c8 <fat32_open+0x687a0>
    2b20:	38323146 	ldsetb	w18, w6, [x10]
    2b24:	5f545f00 	.inst	0x5f545f00 ; undefined
    2b28:	44525450 	.inst	0x44525450 ; undefined
    2b2c:	20464649 	.inst	0x20464649 ; undefined
    2b30:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    2b34:	5f474e4f 	.inst	0x5f474e4f ; undefined
    2b38:	54444957 	.inst	0x54444957 ; undefined
    2b3c:	205f5f48 	.inst	0x205f5f48 ; undefined
    2b40:	49003436 	.inst	0x49003436 ; undefined
    2b44:	3631544e 	tbz	w14, #6, 55cc <fat32_open+0x4ca4>
    2b48:	5f00435f 	.inst	0x5f00435f ; undefined
    2b4c:	544c465f 	.inst	0x544c465f ; undefined
    2b50:	5f383231 	.inst	0x5f383231 ; undefined
    2b54:	5f58414d 	.inst	0x5f58414d ; undefined
    2b58:	455f3031 	.inst	0x455f3031 ; undefined
    2b5c:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    2b60:	33393420 	.inst	0x33393420 ; undefined
    2b64:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    2b68:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2b6c:	494d5f36 	.inst	0x494d5f36 ; undefined
    2b70:	58455f4e 	ldr	x14, 8d758 <fat32_open+0x8ce30>
    2b74:	205f5f50 	.inst	0x205f5f50 ; undefined
    2b78:	33312d28 	.inst	0x33312d28 ; undefined
    2b7c:	61660029 	.inst	0x61660029 ; undefined
    2b80:	5f323374 	.inst	0x5f323374 ; undefined
    2b84:	4e490074 	.inst	0x4e490074 ; undefined
    2b88:	454c5f54 	.inst	0x454c5f54 ; undefined
    2b8c:	38545341 	ldurb	w1, [x26, #-187]
    2b90:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2b94:	492d2820 	.inst	0x492d2820 ; undefined
    2b98:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2b9c:	54534145 	b.pl	a93c4 <fat32_open+0xa8a9c>  // b.nfrst
    2ba0:	414d5f38 	.inst	0x414d5f38 ; undefined
    2ba4:	202d2058 	.inst	0x202d2058 ; undefined
    2ba8:	49002931 	.inst	0x49002931 ; undefined
    2bac:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2bb0:	54534145 	b.pl	a93d8 <fat32_open+0xa8ab0>  // b.nfrst
    2bb4:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2bb8:	5f205841 	fmls	h1, h2, v0.h[6]
    2bbc:	544e495f 	.inst	0x544e495f ; undefined
    2bc0:	41454c5f 	.inst	0x41454c5f ; undefined
    2bc4:	36315453 	tbz	w19, #6, 564c <fat32_open+0x4d24>
    2bc8:	58414d5f 	ldr	xzr, 85570 <fat32_open+0x84c48>
    2bcc:	5f005f5f 	.inst	0x5f005f5f ; undefined
    2bd0:	4e49555f 	.inst	0x4e49555f ; undefined
    2bd4:	58414d54 	ldr	x20, 8557c <fat32_open+0x84c54>
    2bd8:	6328435f 	.inst	0x6328435f ; undefined
    2bdc:	20632029 	.inst	0x20632029 ; undefined
    2be0:	55202323 	.inst	0x55202323 ; undefined
    2be4:	505f004c 	adr	x12, c0bee <fat32_open+0xc02c6>
    2be8:	49445254 	.inst	0x49445254 ; undefined
    2bec:	545f4646 	b.vs	c14b4 <fat32_open+0xc0b8c>
    2bf0:	4345445f 	.inst	0x4345445f ; undefined
    2bf4:	4552414c 	.inst	0x4552414c ; undefined
    2bf8:	5f002044 	.inst	0x5f002044 ; undefined
    2bfc:	5a49535f 	.inst	0x5a49535f ; undefined
    2c00:	5f464f45 	.inst	0x5f464f45 ; undefined
    2c04:	44525450 	.inst	0x44525450 ; undefined
    2c08:	5f464649 	.inst	0x5f464649 ; undefined
    2c0c:	205f5f54 	.inst	0x205f5f54 ; undefined
    2c10:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    2c14:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    2c18:	54414546 	b.vs	854c0 <fat32_open+0x84b98>
    2c1c:	5f455255 	.inst	0x5f455255 ; undefined
    2c20:	56494449 	.inst	0x56494449 ; undefined
    2c24:	5f003120 	.inst	0x5f003120 ; undefined
    2c28:	4f4c465f 	.inst	0x4f4c465f ; undefined
    2c2c:	575f5441 	.inst	0x575f5441 ; undefined
    2c30:	5f44524f 	.inst	0x5f44524f ; undefined
    2c34:	4544524f 	.inst	0x4544524f ; undefined
    2c38:	205f5f52 	.inst	0x205f5f52 ; undefined
    2c3c:	524f5f5f 	.inst	0x524f5f5f ; undefined
    2c40:	5f524544 	.inst	0x5f524544 ; undefined
    2c44:	5454494c 	b.gt	ab56c <fat32_open+0xaac44>
    2c48:	455f454c 	.inst	0x455f454c ; undefined
    2c4c:	4149444e 	.inst	0x4149444e ; undefined
    2c50:	005f5f4e 	.inst	0x005f5f4e ; undefined
    2c54:	5453494c 	b.gt	a957c <fat32_open+0xa8c54>
    2c58:	444f4e5f 	.inst	0x444f4e5f ; undefined
    2c5c:	616e2845 	.inst	0x616e2845 ; undefined
    2c60:	2029656d 	.inst	0x2029656d ; undefined
    2c64:	75727473 	.inst	0x75727473 ; undefined
    2c68:	6c207463 	stnp	d3, d29, [x3, #-512]
    2c6c:	5f747369 	sqdmlsl	s9, h27, v4.h[3]
    2c70:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    2c74:	6d616e20 	ldp	d0, d27, [x17, #-496]
    2c78:	626d0065 	.inst	0x626d0065 ; undefined
    2c7c:	61705f72 	.inst	0x61705f72 ; undefined
    2c80:	00657372 	.inst	0x00657372 ; undefined
    2c84:	544e4955 	.inst	0x544e4955 ; undefined
    2c88:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    2c8c:	5f205841 	fmls	h1, h2, v0.h[6]
    2c90:	4e49555f 	.inst	0x4e49555f ; undefined
    2c94:	5f343654 	.inst	0x5f343654 ; undefined
    2c98:	5f58414d 	.inst	0x5f58414d ; undefined
    2c9c:	4e49005f 	.inst	0x4e49005f ; undefined
    2ca0:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    2ca4:	5f004e49 	.inst	0x5f004e49 ; undefined
    2ca8:	4345445f 	.inst	0x4345445f ; undefined
    2cac:	5f383231 	.inst	0x5f383231 ; undefined
    2cb0:	544e414d 	b.le	9f4d8 <fat32_open+0x9ebb0>
    2cb4:	4749445f 	.inst	0x4749445f ; undefined
    2cb8:	33205f5f 	.inst	0x33205f5f ; undefined
    2cbc:	72740034 	.inst	0x72740034 ; undefined
    2cc0:	31206575 	adds	w21, w11, #0x819
    2cc4:	66666f00 	.inst	0x66666f00 ; undefined
    2cc8:	00746573 	.inst	0x00746573 ; undefined
    2ccc:	544e4955 	.inst	0x544e4955 ; undefined
    2cd0:	5f58414d 	.inst	0x5f58414d ; undefined
    2cd4:	29632843 	ldp	w3, w10, [x2, #-232]
    2cd8:	555f5f20 	.inst	0x555f5f20 ; undefined
    2cdc:	4d544e49 	.inst	0x4d544e49 ; undefined
    2ce0:	435f5841 	.inst	0x435f5841 ; undefined
    2ce4:	00296328 	.inst	0x00296328 ; NYI
    2ce8:	42504245 	.inst	0x42504245 ; undefined
    2cec:	4900745f 	.inst	0x4900745f ; undefined
    2cf0:	3436544e 	cbz	w14, 6f778 <fat32_open+0x6ee50>
    2cf4:	58414d5f 	ldr	xzr, 8569c <fat32_open+0x84d74>
    2cf8:	544e4900 	b.eq	9f618 <fat32_open+0x9ecf0>  // b.none
    2cfc:	41454c5f 	.inst	0x41454c5f ; undefined
    2d00:	36315453 	tbz	w19, #6, 5788 <fat32_open+0x4e60>
    2d04:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2d08:	492d2820 	.inst	0x492d2820 ; undefined
    2d0c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2d10:	54534145 	b.pl	a9538 <fat32_open+0xa8c10>  // b.nfrst
    2d14:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2d18:	2d205841 	stp	s1, s22, [x2, #-256]
    2d1c:	00293120 	.inst	0x00293120 ; NYI
    2d20:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2d24:	41485f54 	.inst	0x41485f54 ; undefined
    2d28:	55515f53 	.inst	0x55515f53 ; undefined
    2d2c:	5f544549 	.inst	0x5f544549 ; undefined
    2d30:	5f4e414e 	.inst	0x5f4e414e ; undefined
    2d34:	0031205f 	.inst	0x0031205f ; NYI
    2d38:	43475f5f 	.inst	0x43475f5f ; undefined
    2d3c:	54415f43 	b.cc	85924 <fat32_open+0x84ffc>  // b.lo, b.ul, b.last
    2d40:	43494d4f 	.inst	0x43494d4f ; undefined
    2d44:	4148435f 	.inst	0x4148435f ; undefined
    2d48:	4f4c5f52 	.inst	0x4f4c5f52 ; undefined
    2d4c:	465f4b43 	.inst	0x465f4b43 ; undefined
    2d50:	20454552 	.inst	0x20454552 ; undefined
    2d54:	69660032 	ldpsw	x18, x0, [x1, #-208]
    2d58:	00747372 	.inst	0x00747372 ; undefined
    2d5c:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2d60:	5f323354 	.inst	0x5f323354 ; undefined
    2d64:	5f58414d 	.inst	0x5f58414d ; undefined
    2d68:	7830205f 	steorh	w16, [x2]
    2d6c:	66666637 	.inst	0x66666637 ; undefined
    2d70:	66666666 	.inst	0x66666666 ; undefined
    2d74:	415f5f00 	.inst	0x415f5f00 ; undefined
    2d78:	535f4d52 	.inst	0x535f4d52 ; undefined
    2d7c:	4f455a49 	.inst	0x4f455a49 ; undefined
    2d80:	494d5f46 	.inst	0x494d5f46 ; undefined
    2d84:	414d494e 	.inst	0x414d494e ; undefined
    2d88:	4e455f4c 	.inst	0x4e455f4c ; undefined
    2d8c:	34204d55 	cbz	w21, 43734 <fat32_open+0x42e0c>
    2d90:	494c4800 	.inst	0x494c4800 ; undefined
    2d94:	465f5453 	.inst	0x465f5453 ; undefined
    2d98:	54535249 	b.ls	a97e0 <fat32_open+0xa8eb8>  // b.plast
    2d9c:	4641535f 	.inst	0x4641535f ; undefined
    2da0:	79742845 	ldrh	w5, [x2, #6676]
    2da4:	682c6570 	.inst	0x682c6570 ; undefined
    2da8:	2c646165 	ldnp	s5, s24, [x11, #-224]
    2dac:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    2db0:	28282029 	stnp	w9, w8, [x1, #-192]
    2db4:	64616568 	.inst	0x64616568 ; undefined
    2db8:	663e2d29 	.inst	0x663e2d29 ; undefined
    2dbc:	74737269 	.inst	0x74737269 ; undefined
    2dc0:	48203f20 	.inst	0x48203f20 ; undefined
    2dc4:	5453494c 	b.gt	a96ec <fat32_open+0xa8dc4>
    2dc8:	5249465f 	.inst	0x5249465f ; undefined
    2dcc:	74285453 	.inst	0x74285453 ; undefined
    2dd0:	2c657079 	ldnp	s25, s28, [x3, #-216]
    2dd4:	61656820 	.inst	0x61656820 ; undefined
    2dd8:	6e202c64 	uqsub	v4.16b, v3.16b, v0.16b
    2ddc:	2965646f 	ldp	w15, w25, [x3, #-216]
    2de0:	4e203a20 	suqadd	v0.16b, v17.16b
    2de4:	294c4c55 	ldp	w21, w19, [x2, #96]
    2de8:	5f617600 	sqshl	d0, d16, #33
    2dec:	79706f63 	ldrh	w3, [x27, #6198]
    2df0:	732c6428 	.inst	0x732c6428 ; undefined
    2df4:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    2df8:	6c697562 	ldnp	d2, d29, [x11, #-368]
    2dfc:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    2e00:	635f6176 	.inst	0x635f6176 ; undefined
    2e04:	2879706f 	ldnp	w15, w28, [x3, #-56]
    2e08:	29732c64 	ldp	w4, w11, [x3, #-104]
    2e0c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2e10:	3233544c 	orr	w12, w2, #0xffffe007
    2e14:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2e18:	5f30315f 	.inst	0x5f30315f ; undefined
    2e1c:	5f505845 	.inst	0x5f505845 ; undefined
    2e20:	2d28205f 	stp	s31, s8, [x2, #-192]
    2e24:	00293733 	.inst	0x00293733 ; NYI
    2e28:	695f5f5f 	ldpsw	xzr, x23, [x26, #248]
    2e2c:	735f746e 	.inst	0x735f746e ; undefined
    2e30:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
    2e34:	20685f74 	.inst	0x20685f74 ; undefined
    2e38:	6c6f7600 	ldnp	d0, d29, [x16, #-272]
    2e3c:	5f656d75 	.inst	0x5f656d75 ; undefined
    2e40:	5f006469 	.inst	0x5f006469 ; undefined
    2e44:	41484357 	.inst	0x41484357 ; undefined
    2e48:	20545f52 	.inst	0x20545f52 ; undefined
    2e4c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2e50:	445f544c 	.inst	0x445f544c ; undefined
    2e54:	524f4e45 	.inst	0x524f4e45 ; undefined
    2e58:	494d5f4d 	.inst	0x494d5f4d ; undefined
    2e5c:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2e60:	30342e31 	adr	x17, 6b425 <fat32_open+0x6aafd>
    2e64:	38393231 	ldsetb	w25, w17, [x17]
    2e68:	33343634 	.inst	0x33343634 ; undefined
    2e6c:	31383432 	adds	w18, w1, #0xe0d
    2e70:	30373037 	adr	x23, 71475 <fat32_open+0x70b4d>
    2e74:	37333239 	tbnz	w25, #6, 94b8 <fat32_open+0x8b90>
    2e78:	38353932 	.inst	0x38353932 ; undefined
    2e7c:	39383233 	strb	w19, [x17, #3596]
    2e80:	31363139 	adds	w25, w9, #0xd8c
    2e84:	342d6533 	cbz	w19, 5db28 <fat32_open+0x5d200>
    2e88:	5f004635 	.inst	0x5f004635 ; undefined
    2e8c:	4345445f 	.inst	0x4345445f ; undefined
    2e90:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    2e94:	5f544e41 	.inst	0x5f544e41 ; undefined
    2e98:	5f474944 	.inst	0x5f474944 ; undefined
    2e9c:	0037205f 	.inst	0x0037205f ; NYI
    2ea0:	38544e49 	ldrb	w9, [x18, #-188]!
    2ea4:	6328435f 	.inst	0x6328435f ; undefined
    2ea8:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    2eac:	38544e49 	ldrb	w9, [x18, #-188]!
    2eb0:	6328435f 	.inst	0x6328435f ; undefined
    2eb4:	475f0029 	.inst	0x475f0029 ; undefined
    2eb8:	505f4343 	adr	x3, c1722 <fat32_open+0xc0dfa>
    2ebc:	49445254 	.inst	0x49445254 ; undefined
    2ec0:	545f4646 	b.vs	c1788 <fat32_open+0xc0e60>
    2ec4:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    2ec8:	4c42444c 	.inst	0x4c42444c ; undefined
    2ecc:	4e414d5f 	.inst	0x4e414d5f ; undefined
    2ed0:	49445f54 	.inst	0x49445f54 ; undefined
    2ed4:	205f5f47 	.inst	0x205f5f47 ; undefined
    2ed8:	00333131 	.inst	0x00333131 ; NYI
    2edc:	33544146 	.inst	0x33544146 ; undefined
    2ee0:	45595f32 	.inst	0x45595f32 ; undefined
    2ee4:	4d5f5241 	.inst	0x4d5f5241 ; undefined
    2ee8:	204b5341 	.inst	0x204b5341 ; undefined
    2eec:	65667830 	fnmls	z16.h, p6/m, z1.h, z6.h
    2ef0:	62003030 	.inst	0x62003030 ; undefined
    2ef4:	00746f6f 	.inst	0x00746f6f ; undefined
    2ef8:	5a49535f 	.inst	0x5a49535f ; undefined
    2efc:	20545f45 	.inst	0x20545f45 ; undefined
    2f00:	43575f00 	.inst	0x43575f00 ; undefined
    2f04:	5f524148 	.inst	0x5f524148 ; undefined
    2f08:	20485f54 	.inst	0x20485f54 ; undefined
    2f0c:	78656e00 	.inst	0x78656e00 ; undefined
    2f10:	75620074 	.inst	0x75620074 ; undefined
    2f14:	6e655f66 	uqrshl	v6.8h, v27.8h, v5.8h
    2f18:	00797274 	.inst	0x00797274 ; undefined
    2f1c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2f20:	58343654 	ldr	x20, 6b5e8 <fat32_open+0x6acc0>
    2f24:	58414d5f 	ldr	xzr, 858cc <fat32_open+0x84fa4>
    2f28:	31205f5f 	cmn	w26, #0x817
    2f2c:	3938312e 	strb	w14, [x9, #3596]
    2f30:	34313337 	cbz	w23, 65594 <fat32_open+0x64c6c>
    2f34:	35333539 	cbnz	w25, 695d8 <fat32_open+0x68cb0>
    2f38:	31333237 	adds	w23, w17, #0xccc
    2f3c:	30353637 	adr	x23, 6d601 <fat32_open+0x6ccd9>
    2f40:	35373538 	cbnz	w24, 715e4 <fat32_open+0x70cbc>
    2f44:	36323339 	tbz	w25, #6, 75a8 <fat32_open+0x6c80>
    2f48:	30383236 	adr	x22, 7358d <fat32_open+0x72c65>
    2f4c:	32303730 	orr	w16, w25, #0x3fff0000
    2f50:	39342b65 	strb	w5, [x27, #3338]
    2f54:	36463233 	tbz	w19, #8, fffffffffffff598 <fat32_open+0xffffffffffffec70>
    2f58:	46007834 	.inst	0x46007834 ; undefined
    2f5c:	32335441 	orr	w1, w2, #0xffffe007
    2f60:	5f53495f 	.inst	0x5f53495f ; undefined
    2f64:	44444948 	.inst	0x44444948 ; undefined
    2f68:	61284e45 	.inst	0x61284e45 ; undefined
    2f6c:	69727474 	ldpsw	x20, x29, [x3, #-112]
    2f70:	65747562 	fnmls	z2.h, p5/m, z11.h, z20.h
    2f74:	61282029 	.inst	0x61282029 ; undefined
    2f78:	69727474 	ldpsw	x20, x29, [x3, #-112]
    2f7c:	65747562 	fnmls	z2.h, p5/m, z11.h, z20.h
    2f80:	30202620 	adr	x0, 43445 <fat32_open+0x42b1d>
    2f84:	29323078 	stp	w24, w12, [x3, #-112]
    2f88:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    2f8c:	5f474e4f 	.inst	0x5f474e4f ; undefined
    2f90:	474e4f4c 	.inst	0x474e4f4c ; undefined
    2f94:	58414d5f 	ldr	xzr, 8593c <fat32_open+0x85014>
    2f98:	30205f5f 	adr	xzr, 43b81 <fat32_open+0x43259>
    2f9c:	66663778 	.inst	0x66663778 ; undefined
    2fa0:	66666666 	.inst	0x66666666 ; undefined
    2fa4:	66666666 	.inst	0x66666666 ; undefined
    2fa8:	66666666 	.inst	0x66666666 ; undefined
    2fac:	004c4c66 	.inst	0x004c4c66 ; undefined
    2fb0:	5f4e464c 	.inst	0x5f4e464c ; undefined
    2fb4:	5f726964 	.inst	0x5f726964 ; undefined
    2fb8:	72746e65 	.inst	0x72746e65 ; undefined
    2fbc:	5f5f0079 	.inst	0x5f5f0079 ; undefined
    2fc0:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2fc4:	414d5f36 	.inst	0x414d5f36 ; undefined
    2fc8:	445f544e 	.inst	0x445f544e ; undefined
    2fcc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    2fd0:	00313120 	.inst	0x00313120 ; NYI
    2fd4:	676e6f6c 	.inst	0x676e6f6c ; undefined
    2fd8:	756f6420 	.inst	0x756f6420 ; undefined
    2fdc:	00656c62 	.inst	0x00656c62 ; undefined
    2fe0:	5f474953 	.inst	0x5f474953 ; undefined
    2fe4:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    2fe8:	4d5f4349 	.inst	0x4d5f4349 ; undefined
    2fec:	5f205841 	fmls	h1, h2, v0.h[6]
    2ff0:	4749535f 	.inst	0x4749535f ; undefined
    2ff4:	4f54415f 	.inst	0x4f54415f ; undefined
    2ff8:	5f43494d 	.inst	0x5f43494d ; undefined
    2ffc:	5f58414d 	.inst	0x5f58414d ; undefined
    3000:	4f43005f 	.inst	0x4f43005f ; undefined
    3004:	4941544e 	.inst	0x4941544e ; undefined
    3008:	5f52454e 	.inst	0x5f52454e ; undefined
    300c:	7428464f 	.inst	0x7428464f ; undefined
    3010:	2c657079 	ldnp	s25, s28, [x3, #-216]
    3014:	2c727470 	ldnp	s16, s29, [x3, #-112]
    3018:	626d656d 	.inst	0x626d656d ; undefined
    301c:	20297265 	.inst	0x20297265 ; undefined
    3020:	79742828 	ldrh	w8, [x1, #6676]
    3024:	2a206570 	orn	w16, w11, w0, lsl #25
    3028:	75282829 	.inst	0x75282829 ; undefined
    302c:	38746e69 	.inst	0x38746e69 ; undefined
    3030:	2a20745f 	orn	wzr, w2, w0, lsl #29
    3034:	74702829 	.inst	0x74702829 ; undefined
    3038:	2d202972 	stp	s18, s10, [x11, #-256]
    303c:	66666f20 	.inst	0x66666f20 ; undefined
    3040:	6f746573 	sqshlu	v19.2d, v11.2d, #52
    3044:	79742866 	ldrh	w6, [x3, #6676]
    3048:	202c6570 	.inst	0x202c6570 ; undefined
    304c:	626d656d 	.inst	0x626d656d ; undefined
    3050:	29297265 	stp	w5, w28, [x19, #-184]
    3054:	61700029 	.inst	0x61700029 ; undefined
    3058:	735f7472 	.inst	0x735f7472 ; undefined
    305c:	00657a69 	.inst	0x00657a69 ; undefined
    3060:	47494c41 	.inst	0x47494c41 ; undefined
    3064:	4f445f4e 	.inst	0x4f445f4e ; undefined
    3068:	62284e57 	.inst	0x62284e57 ; undefined
    306c:	2c657361 	ldnp	s1, s28, [x27, #-216]
    3070:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    3074:	28282029 	stnp	w9, w8, [x1, #-192]
    3078:	65736162 	fnmls	z2.h, p0/m, z11.h, z19.h
    307c:	20262029 	.inst	0x20262029 ; undefined
    3080:	7328287e 	.inst	0x7328287e ; undefined
    3084:	29657a69 	ldp	w9, w30, [x19, #-216]
    3088:	31202d20 	adds	w0, w9, #0x80b
    308c:	55002929 	.inst	0x55002929 ; undefined
    3090:	5f544e49 	.inst	0x5f544e49 ; undefined
    3094:	5341454c 	.inst	0x5341454c ; undefined
    3098:	5f363154 	.inst	0x5f363154 ; undefined
    309c:	0058414d 	.inst	0x0058414d ; undefined
    30a0:	4c465f5f 	.inst	0x4c465f5f ; undefined
    30a4:	58343654 	ldr	x20, 6b76c <fat32_open+0x6ae44>
    30a8:	5341485f 	.inst	0x5341485f ; undefined
    30ac:	4955515f 	.inst	0x4955515f ; undefined
    30b0:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    30b4:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    30b8:	5f003120 	.inst	0x5f003120 ; undefined
    30bc:	544c465f 	.inst	0x544c465f ; undefined
    30c0:	5f383231 	.inst	0x5f383231 ; undefined
    30c4:	5f474944 	.inst	0x5f474944 ; undefined
    30c8:	3333205f 	.inst	0x3333205f ; undefined
    30cc:	495f5f00 	.inst	0x495f5f00 ; undefined
    30d0:	5f38544e 	.inst	0x5f38544e ; undefined
    30d4:	29632843 	ldp	w3, w10, [x2, #-232]
    30d8:	53006320 	ubfx	w0, w25, #0, #25
    30dc:	415f4749 	.inst	0x415f4749 ; undefined
    30e0:	494d4f54 	.inst	0x494d4f54 ; undefined
    30e4:	494d5f43 	.inst	0x494d5f43 ; undefined
    30e8:	5f5f204e 	.inst	0x5f5f204e ; undefined
    30ec:	5f474953 	.inst	0x5f474953 ; undefined
    30f0:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    30f4:	4d5f4349 	.inst	0x4d5f4349 ; undefined
    30f8:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    30fc:	54535f00 	b.eq	a9cdc <fat32_open+0xa93b4>  // b.none
    3100:	46454444 	.inst	0x46454444 ; undefined
    3104:	205f485f 	.inst	0x205f485f ; undefined
    3108:	544e4900 	b.eq	9fa28 <fat32_open+0x9f100>  // b.none
    310c:	41454c5f 	.inst	0x41454c5f ; undefined
    3110:	34365453 	cbz	w19, 6fb98 <fat32_open+0x6f270>
    3114:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3118:	492d2820 	.inst	0x492d2820 ; undefined
    311c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3120:	54534145 	b.pl	a9948 <fat32_open+0xa9020>  // b.nfrst
    3124:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    3128:	2d205841 	stp	s1, s22, [x2, #-256]
    312c:	00293120 	.inst	0x00293120 ; NYI
    3130:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3134:	58343654 	ldr	x20, 6b7fc <fat32_open+0x6aed4>
    3138:	4e45445f 	.inst	0x4e45445f ; undefined
    313c:	5f4d524f 	.inst	0x5f4d524f ; undefined
    3140:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3144:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
    3148:	31353734 	adds	w20, w25, #0xd4d
    314c:	31313537 	adds	w23, w9, #0xc4d
    3150:	38333439 	.inst	0x38333439 ; undefined
    3154:	31353230 	adds	w16, w17, #0xd4c
    3158:	32393031 	orr	w17, w1, #0xfff80
    315c:	38333434 	.inst	0x38333434 ; undefined
    3160:	32383539 	orr	w25, w9, #0x3fff00
    3164:	34363732 	cbz	w18, 6f848 <fat32_open+0x6ef20>
    3168:	65353536 	.inst	0x65353536 ; undefined
    316c:	3639342d 	tbz	w13, #7, 57f0 <fat32_open+0x4ec8>
    3170:	34364636 	cbz	w22, 6fa34 <fat32_open+0x6f10c>
    3174:	5f5f0078 	.inst	0x5f5f0078 ; undefined
    3178:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    317c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3180:	5f505845 	.inst	0x5f505845 ; undefined
    3184:	2d28205f 	stp	s31, s8, [x2, #-192]
    3188:	31323031 	adds	w17, w1, #0xc8c
    318c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    3190:	455a4953 	.inst	0x455a4953 ; undefined
    3194:	0020545f 	.inst	0x0020545f ; NYI
    3198:	4e495f5f 	.inst	0x4e495f5f ; undefined
    319c:	5f323354 	.inst	0x5f323354 ; undefined
    31a0:	45505954 	.inst	0x45505954 ; undefined
    31a4:	69205f5f 	.inst	0x69205f5f ; undefined
    31a8:	4900746e 	.inst	0x4900746e ; undefined
    31ac:	465f544e 	.inst	0x465f544e ; undefined
    31b0:	33545341 	.inst	0x33545341 ; undefined
    31b4:	494d5f32 	.inst	0x494d5f32 ; undefined
    31b8:	2d28204e 	stp	s14, s8, [x2, #-192]
    31bc:	5f544e49 	.inst	0x5f544e49 ; undefined
    31c0:	54534146 	b.vs	a99e8 <fat32_open+0xa90c0>
    31c4:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    31c8:	2d205841 	stp	s1, s22, [x2, #-256]
    31cc:	00293120 	.inst	0x00293120 ; NYI
    31d0:	725f7369 	.inst	0x725f7369 ; undefined
    31d4:	00746f6f 	.inst	0x00746f6f ; undefined
    31d8:	5f4d454d 	.inst	0x5f4d454d ; undefined
    31dc:	43554843 	.inst	0x43554843 ; undefined
    31e0:	4e555f4b 	.inst	0x4e555f4b ; undefined
    31e4:	28455355 	ldnp	w21, w20, [x26, #40]
    31e8:	63756863 	.inst	0x63756863 ; undefined
    31ec:	2820296b 	stnp	w11, w10, [x11, #-256]
    31f0:	28282821 	stnp	w1, w10, [x1, #-192]
    31f4:	63756863 	.inst	0x63756863 ; undefined
    31f8:	3e2d296b 	.inst	0x3e2d296b ; undefined
    31fc:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    3200:	20262029 	.inst	0x20262029 ; undefined
    3204:	29317830 	stp	w16, w30, [x1, #-120]
    3208:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    320c:	33544c46 	.inst	0x33544c46 ; undefined
    3210:	49445f32 	.inst	0x49445f32 ; undefined
    3214:	205f5f47 	.inst	0x205f5f47 ; undefined
    3218:	68630036 	.inst	0x68630036 ; undefined
    321c:	736b6365 	.inst	0x736b6365 ; undefined
    3220:	49006d75 	.inst	0x49006d75 ; undefined
    3224:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3228:	54534145 	b.pl	a9a50 <fat32_open+0xa9128>  // b.nfrst
    322c:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    3230:	46005841 	.inst	0x46005841 ; undefined
    3234:	32335441 	orr	w1, w2, #0xffffe007
    3238:	5445475f 	.inst	0x5445475f ; undefined
    323c:	5941445f 	.inst	0x5941445f ; undefined
    3240:	74616428 	.inst	0x74616428 ; undefined
    3244:	28202965 	stnp	w5, w10, [x11, #-256]
    3248:	74616428 	.inst	0x74616428 ; undefined
    324c:	26202965 	.inst	0x26202965 ; undefined
    3250:	54414620 	b.eq	85b14 <fat32_open+0x851ec>  // b.none
    3254:	445f3233 	.inst	0x445f3233 ; undefined
    3258:	4d5f5941 	.inst	0x4d5f5941 ; undefined
    325c:	294b5341 	ldp	w1, w20, [x26, #88]
    3260:	695f6300 	ldpsw	x0, x24, [x24, #248]
    3264:	7865646e 	.inst	0x7865646e ; undefined
    3268:	575f5f00 	.inst	0x575f5f00 ; undefined
    326c:	52414843 	.inst	0x52414843 ; undefined
    3270:	0020545f 	.inst	0x0020545f ; NYI
    3274:	444c5f5f 	.inst	0x444c5f5f ; undefined
    3278:	485f4c42 	ldxrh	w2, [x2]
    327c:	445f5341 	.inst	0x445f5341 ; undefined
    3280:	524f4e45 	.inst	0x524f4e45 ; undefined
    3284:	205f5f4d 	.inst	0x205f5f4d ; undefined
    3288:	4e490031 	.inst	0x4e490031 ; undefined
    328c:	5f323354 	.inst	0x5f323354 ; undefined
    3290:	0058414d 	.inst	0x0058414d ; undefined
    3294:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3298:	58323354 	ldr	x20, 67900 <fat32_open+0x66fd8>
    329c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    32a0:	32205f5f 	orr	wsp, w26, #0xffffff
    32a4:	3532322e 	cbnz	w14, 678e8 <fat32_open+0x66fc0>
    32a8:	38333730 	.inst	0x38333730 ; undefined
    32ac:	30353835 	adr	x21, 6d9b1 <fat32_open+0x6d089>
    32b0:	31303237 	adds	w23, w17, #0xc0c
    32b4:	30333833 	adr	x19, 699b9 <fat32_open+0x69091>
    32b8:	33323039 	.inst	0x33323039 ; undefined
    32bc:	37313732 	tbnz	w18, #6, 59a0 <fat32_open+0x5078>
    32c0:	34323333 	cbz	w19, 67924 <fat32_open+0x66ffc>
    32c4:	36303430 	tbz	w16, #6, 3948 <.debug_str+0x3948>
    32c8:	30332d65 	adr	x5, 69875 <fat32_open+0x68f4d>
    32cc:	32334638 	orr	w24, w17, #0x7fffe000
    32d0:	535f0078 	.inst	0x535f0078 ; undefined
    32d4:	4e495254 	.inst	0x4e495254 ; undefined
    32d8:	20485f47 	.inst	0x20485f47 ; undefined
    32dc:	43475f00 	.inst	0x43475f00 ; undefined
    32e0:	43575f43 	.inst	0x43575f43 ; undefined
    32e4:	5f524148 	.inst	0x5f524148 ; undefined
    32e8:	5f002054 	.inst	0x5f002054 ; undefined
    32ec:	4d52415f 	.inst	0x4d52415f ; undefined
    32f0:	4145465f 	.inst	0x4145465f ; undefined
    32f4:	45525554 	.inst	0x45525554 ; undefined
    32f8:	5952435f 	.inst	0x5952435f ; undefined
    32fc:	004f5450 	.inst	0x004f5450 ; undefined
    3300:	5f52424d 	.inst	0x5f52424d ; undefined
    3304:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    3308:	31544c46 	adds	w6, w2, #0x513, lsl #12
    330c:	485f3832 	ldxrh	w18, [x1]
    3310:	495f5341 	.inst	0x495f5341 ; undefined
    3314:	4e49464e 	.inst	0x4e49464e ; undefined
    3318:	5f595449 	shl	d9, d2, #25
    331c:	0031205f 	.inst	0x0031205f ; NYI
    3320:	544e4955 	.inst	0x544e4955 ; undefined
    3324:	41454c5f 	.inst	0x41454c5f ; undefined
    3328:	34365453 	cbz	w19, 6fdb0 <fat32_open+0x6f488>
    332c:	58414d5f 	ldr	xzr, 85cd4 <fat32_open+0x853ac>
    3330:	495f5f00 	.inst	0x495f5f00 ; undefined
    3334:	3436544e 	cbz	w14, 6fdbc <fat32_open+0x6f494>
    3338:	5059545f 	adr	xzr, b5dc2 <fat32_open+0xb549a>
    333c:	205f5f45 	.inst	0x205f5f45 ; undefined
    3340:	676e6f6c 	.inst	0x676e6f6c ; undefined
    3344:	746e6920 	.inst	0x746e6920 ; undefined
    3348:	76656400 	.inst	0x76656400 ; undefined
    334c:	00656369 	.inst	0x00656369 ; undefined
    3350:	534e415f 	.inst	0x534e415f ; undefined
    3354:	54535f49 	b.ls	a9f3c <fat32_open+0xa9614>  // b.plast
    3358:	47524144 	.inst	0x47524144 ; undefined
    335c:	205f485f 	.inst	0x205f485f ; undefined
    3360:	7a697300 	.inst	0x7a697300 ; undefined
    3364:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3368:	36434544 	tbz	w4, #8, 9c10 <fat32_open+0x92e8>
    336c:	414d5f34 	.inst	0x414d5f34 ; undefined
    3370:	445f544e 	.inst	0x445f544e ; undefined
    3374:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    3378:	00363120 	.inst	0x00363120 ; NYI
    337c:	735f6176 	.inst	0x735f6176 ; undefined
    3380:	74726174 	.inst	0x74726174 ; undefined
    3384:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    3388:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    338c:	6c697562 	ldnp	d2, d29, [x11, #-368]
    3390:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    3394:	735f6176 	.inst	0x735f6176 ; undefined
    3398:	74726174 	.inst	0x74726174 ; undefined
    339c:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    33a0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    33a4:	4d544e49 	.inst	0x4d544e49 ; undefined
    33a8:	4d5f5841 	.inst	0x4d5f5841 ; undefined
    33ac:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    33b0:	37783020 	tbnz	w0, #15, 39b4 <.debug_str+0x39b4>
    33b4:	66666666 	.inst	0x66666666 ; undefined
    33b8:	66666666 	.inst	0x66666666 ; undefined
    33bc:	66666666 	.inst	0x66666666 ; undefined
    33c0:	4c666666 	.inst	0x4c666666 ; undefined
    33c4:	535f5f00 	.inst	0x535f5f00 ; undefined
    33c8:	5f545248 	.inst	0x5f545248 ; undefined
    33cc:	5f58414d 	.inst	0x5f58414d ; undefined
    33d0:	7830205f 	steorh	w16, [x2]
    33d4:	66666637 	.inst	0x66666637 ; undefined
    33d8:	49535f00 	.inst	0x49535f00 ; undefined
    33dc:	545f455a 	.inst	0x545f455a ; undefined
    33e0:	4645445f 	.inst	0x4645445f ; undefined
    33e4:	44454e49 	.inst	0x44454e49 ; undefined
    33e8:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    33ec:	544e4957 	.inst	0x544e4957 ; undefined
    33f0:	58414d5f 	ldr	xzr, 85d98 <fat32_open+0x85470>
    33f4:	30205f5f 	adr	xzr, 43fdd <fat32_open+0x436b5>
    33f8:	66666678 	.inst	0x66666678 ; undefined
    33fc:	66666666 	.inst	0x66666666 ; undefined
    3400:	49005566 	.inst	0x49005566 ; undefined
    3404:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3408:	54534145 	b.pl	a9c30 <fat32_open+0xa9308>  // b.nfrst
    340c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    3410:	75005841 	.inst	0x75005841 ; undefined
    3414:	31746e69 	adds	w9, w19, #0xd1b, lsl #12
    3418:	00745f36 	.inst	0x00745f36 ; undefined
    341c:	72747461 	.inst	0x72747461 ; undefined
    3420:	74756269 	.inst	0x74756269 ; undefined
    3424:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3428:	44525450 	.inst	0x44525450 ; undefined
    342c:	5f464649 	.inst	0x5f464649 ; undefined
    3430:	5f002054 	.inst	0x5f002054 ; undefined
    3434:	544e495f 	.inst	0x544e495f ; undefined
    3438:	5f525450 	shl	d16, d2, #18
    343c:	45505954 	.inst	0x45505954 ; undefined
    3440:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    3444:	20676e6f 	.inst	0x20676e6f ; undefined
    3448:	00746e69 	.inst	0x00746e69 ; undefined
    344c:	615f6176 	.inst	0x615f6176 ; undefined
    3450:	76286772 	.inst	0x76286772 ; undefined
    3454:	20296c2c 	.inst	0x20296c2c ; undefined
    3458:	75625f5f 	.inst	0x75625f5f ; undefined
    345c:	69746c69 	ldpsw	x9, x27, [x3, #-96]
    3460:	61765f6e 	.inst	0x61765f6e ; undefined
    3464:	6772615f 	.inst	0x6772615f ; undefined
    3468:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    346c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    3470:	5f434347 	.inst	0x5f434347 ; undefined
    3474:	45564148 	.inst	0x45564148 ; undefined
    3478:	4e59535f 	.inst	0x4e59535f ; undefined
    347c:	4f435f43 	.inst	0x4f435f43 ; undefined
    3480:	5241504d 	.inst	0x5241504d ; undefined
    3484:	4e415f45 	.inst	0x4e415f45 ; undefined
    3488:	57535f44 	.inst	0x57535f44 ; undefined
    348c:	345f5041 	cbz	w1, c1e94 <fat32_open+0xc156c>
    3490:	5f003120 	.inst	0x5f003120 ; undefined
    3494:	544c465f 	.inst	0x544c465f ; undefined
    3498:	445f3631 	.inst	0x445f3631 ; undefined
    349c:	524f4e45 	.inst	0x524f4e45 ; undefined
    34a0:	494d5f4d 	.inst	0x494d5f4d ; undefined
    34a4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    34a8:	36392e35 	tbz	w21, #7, 5a6c <fat32_open+0x5144>
    34ac:	34363430 	cbz	w16, 6fb30 <fat32_open+0x6f208>
    34b0:	35373734 	cbnz	w20, 71b94 <fat32_open+0x7126c>
    34b4:	36303933 	tbz	w19, #6, 3bd8 <.debug_str+0x3bd8>
    34b8:	30303532 	adr	x18, 63b5d <fat32_open+0x63235>
    34bc:	30303030 	adr	x16, 63ac1 <fat32_open+0x63199>
    34c0:	30303030 	adr	x16, 63ac5 <fat32_open+0x6319d>
    34c4:	30303030 	adr	x16, 63ac9 <fat32_open+0x631a1>
    34c8:	30303030 	adr	x16, 63acd <fat32_open+0x631a5>
    34cc:	382d6530 	.inst	0x382d6530 ; undefined
    34d0:	00363146 	.inst	0x00363146 ; NYI
    34d4:	36544e49 	tbz	w9, #10, ffffffffffffbe9c <fat32_open+0xffffffffffffb574>
    34d8:	00435f34 	.inst	0x00435f34 ; undefined
    34dc:	49555f5f 	.inst	0x49555f5f ; undefined
    34e0:	4c5f544e 	.inst	0x4c5f544e ; undefined
    34e4:	54534145 	b.pl	a9d0c <fat32_open+0xa93e4>  // b.nfrst
    34e8:	545f3631 	.inst	0x545f3631 ; undefined
    34ec:	5f455059 	.inst	0x5f455059 ; undefined
    34f0:	6873205f 	.inst	0x6873205f ; undefined
    34f4:	2074726f 	.inst	0x2074726f ; undefined
    34f8:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    34fc:	64656e67 	.inst	0x64656e67 ; undefined
    3500:	746e6920 	.inst	0x746e6920 ; undefined
    3504:	62657000 	.inst	0x62657000 ; undefined
    3508:	5f006270 	.inst	0x5f006270 ; undefined
    350c:	4148435f 	.inst	0x4148435f ; undefined
    3510:	5f363152 	.inst	0x5f363152 ; undefined
    3514:	45505954 	.inst	0x45505954 ; undefined
    3518:	73205f5f 	.inst	0x73205f5f ; undefined
    351c:	74726f68 	.inst	0x74726f68 ; undefined
    3520:	736e7520 	.inst	0x736e7520 ; undefined
    3524:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    3528:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    352c:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    3530:	43524141 	.inst	0x43524141 ; undefined
    3534:	45343648 	.inst	0x45343648 ; undefined
    3538:	005f5f42 	.inst	0x005f5f42 ; undefined
    353c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3540:	58323354 	ldr	x20, 67ba8 <fat32_open+0x67280>
    3544:	4749445f 	.inst	0x4749445f ; undefined
    3548:	31205f5f 	cmn	w26, #0x817
    354c:	4e470035 	.inst	0x4e470035 ; undefined
    3550:	31432055 	adds	w21, w2, #0xc8, lsl #12
    3554:	2e372031 	usubl	v17.8h, v1.8b, v23.8b
    3558:	20312e32 	.inst	0x20312e32 ; undefined
    355c:	37313032 	tbnz	w18, #6, 5b60 <fat32_open+0x5238>
    3560:	31313031 	adds	w17, w1, #0xc4c
    3564:	616d2d20 	.inst	0x616d2d20 ; undefined
    3568:	3d686372 	ldr	b18, [x27, #2584]
    356c:	766d7261 	.inst	0x766d7261 ; undefined
    3570:	20612d38 	.inst	0x20612d38 ; undefined
    3574:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
    3578:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
    357c:	646e652d 	.inst	0x646e652d ; undefined
    3580:	206e6169 	.inst	0x206e6169 ; undefined
    3584:	62616d2d 	.inst	0x62616d2d ; undefined
    3588:	706c3d69 	adr	x9, dbd37 <fat32_open+0xdb40f>
    358c:	2d203436 	stp	s22, s13, [x1, #-256]
    3590:	2d203367 	stp	s7, s12, [x27, #-256]
    3594:	732d204f 	.inst	0x732d204f ; undefined
    3598:	633d6474 	.inst	0x633d6474 ; undefined
    359c:	2d203131 	stp	s17, s12, [x9, #-256]
    35a0:	65726666 	fnmls	z6.h, p1/m, z19.h, z18.h
    35a4:	61747365 	.inst	0x61747365 ; undefined
    35a8:	6e69646e 	umax	v14.8h, v3.8h, v9.8h
    35ac:	662d2067 	.inst	0x662d2067 ; undefined
    35b0:	00656970 	.inst	0x00656970 ; undefined
    35b4:	4e495f5f 	.inst	0x4e495f5f ; undefined
    35b8:	52545054 	.inst	0x52545054 ; undefined
    35bc:	58414d5f 	ldr	xzr, 85f64 <fat32_open+0x8563c>
    35c0:	30205f5f 	adr	xzr, 441a9 <fat32_open+0x43881>
    35c4:	66663778 	.inst	0x66663778 ; undefined
    35c8:	66666666 	.inst	0x66666666 ; undefined
    35cc:	66666666 	.inst	0x66666666 ; undefined
    35d0:	66666666 	.inst	0x66666666 ; undefined
    35d4:	5f004c66 	.inst	0x5f004c66 ; undefined
    35d8:	4e49465f 	.inst	0x4e49465f ; undefined
    35dc:	5f455449 	shl	d9, d2, #5
    35e0:	4854414d 	ldxrh	w13, [x10]
    35e4:	4c4e4f5f 	.inst	0x4c4e4f5f ; undefined
    35e8:	205f5f59 	.inst	0x205f5f59 ; undefined
    35ec:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    35f0:	5f544e49 	.inst	0x5f544e49 ; undefined
    35f4:	54534146 	b.vs	a9e1c <fat32_open+0xa94f4>
    35f8:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    35fc:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3600:	37783020 	tbnz	w0, #15, 3c04 <.debug_str+0x3c04>
    3604:	66666666 	.inst	0x66666666 ; undefined
    3608:	00666666 	.inst	0x00666666 ; undefined
    360c:	5f4e4942 	.inst	0x5f4e4942 ; undefined
    3610:	45455246 	.inst	0x45455246 ; undefined
    3614:	646e6928 	.inst	0x646e6928 ; undefined
    3618:	622c7865 	.inst	0x622c7865 ; undefined
    361c:	616d7469 	.inst	0x616d7469 ; undefined
    3620:	28202970 	stnp	w16, w10, [x11, #-256]
    3624:	69622821 	ldpsw	x1, x10, [x1, #-240]
    3628:	70616d74 	adr	x20, c63d7 <fat32_open+0xc5aaf>
    362c:	28202620 	stnp	w0, w9, [x17, #-256]
    3630:	3c3c2031 	.inst	0x3c3c2031 ; undefined
    3634:	646e6920 	.inst	0x646e6920 ; undefined
    3638:	29297865 	stp	w5, w30, [x3, #-184]
    363c:	54500029 	b.ls	a3640 <fat32_open+0xa2d18>  // b.plast
    3640:	46494452 	.inst	0x46494452 ; undefined
    3644:	414d5f46 	.inst	0x414d5f46 ; undefined
    3648:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    364c:	44525450 	.inst	0x44525450 ; undefined
    3650:	5f464649 	.inst	0x5f464649 ; undefined
    3654:	5f58414d 	.inst	0x5f58414d ; undefined
    3658:	5f5f005f 	.inst	0x5f5f005f ; undefined
    365c:	5f544c46 	.inst	0x5f544c46 ; undefined
    3660:	4c415645 	.inst	0x4c415645 ; undefined
    3664:	54454d5f 	.inst	0x54454d5f ; undefined
    3668:	5f444f48 	.inst	0x5f444f48 ; undefined
    366c:	575f005f 	.inst	0x575f005f ; undefined
    3670:	52414843 	.inst	0x52414843 ; undefined
    3674:	445f545f 	.inst	0x445f545f ; undefined
    3678:	4e494645 	.inst	0x4e494645 ; undefined
    367c:	00204445 	.inst	0x00204445 ; NYI
    3680:	52415f5f 	.inst	0x52415f5f ; undefined
    3684:	52415f4d 	.inst	0x52415f4d ; undefined
    3688:	385f4843 	ldtrb	w3, [x2, #-12]
    368c:	00312041 	.inst	0x00312041 ; NYI
    3690:	49535f5f 	.inst	0x49535f5f ; undefined
    3694:	464f455a 	.inst	0x464f455a ; undefined
    3698:	544e495f 	.inst	0x544e495f ; undefined
    369c:	5f383231 	.inst	0x5f383231 ; undefined
    36a0:	3631205f 	tbz	wzr, #6, 5aa8 <fat32_open+0x5180>
    36a4:	705f5f00 	adr	x0, c2287 <fat32_open+0xc195f>
    36a8:	5f5f6369 	.inst	0x5f5f6369 ; undefined
    36ac:	55003120 	.inst	0x55003120 ; undefined
    36b0:	5f544e49 	.inst	0x5f544e49 ; undefined
    36b4:	54534146 	b.vs	a9edc <fat32_open+0xa95b4>
    36b8:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    36bc:	5f205841 	fmls	h1, h2, v0.h[6]
    36c0:	4e49555f 	.inst	0x4e49555f ; undefined
    36c4:	41465f54 	.inst	0x41465f54 ; undefined
    36c8:	32335453 	orr	w19, w2, #0xffffe007
    36cc:	58414d5f 	ldr	xzr, 86074 <fat32_open+0x8574c>
    36d0:	5f005f5f 	.inst	0x5f005f5f ; undefined
    36d4:	5f434347 	.inst	0x5f434347 ; undefined
    36d8:	49445453 	.inst	0x49445453 ; undefined
    36dc:	485f544e 	ldxrh	w14, [x2]
    36e0:	41460020 	.inst	0x41460020 ; undefined
    36e4:	5f323354 	.inst	0x5f323354 ; undefined
    36e8:	525f5349 	.inst	0x525f5349 ; undefined
    36ec:	7461284f 	.inst	0x7461284f ; undefined
    36f0:	62697274 	.inst	0x62697274 ; undefined
    36f4:	29657475 	ldp	w21, w29, [x3, #-216]
    36f8:	74612820 	.inst	0x74612820 ; undefined
    36fc:	62697274 	.inst	0x62697274 ; undefined
    3700:	20657475 	.inst	0x20657475 ; undefined
    3704:	78302026 	ldeorh	w16, w6, [x1]
    3708:	00293130 	.inst	0x00293130 ; NYI
    370c:	4e495f5f 	.inst	0x4e495f5f ; undefined
    3710:	454c5f54 	.inst	0x454c5f54 ; undefined
    3714:	36545341 	tbz	w1, #10, ffffffffffffc17c <fat32_open+0xffffffffffffb854>
    3718:	414d5f34 	.inst	0x414d5f34 ; undefined
    371c:	205f5f58 	.inst	0x205f5f58 ; undefined
    3720:	66377830 	.inst	0x66377830 ; undefined
    3724:	66666666 	.inst	0x66666666 ; undefined
    3728:	66666666 	.inst	0x66666666 ; undefined
    372c:	66666666 	.inst	0x66666666 ; undefined
    3730:	004c6666 	.inst	0x004c6666 ; undefined
    3734:	4f435f5f 	.inst	0x4f435f5f ; undefined
    3738:	4941544e 	.inst	0x4941544e ; undefined
    373c:	5f52454e 	.inst	0x5f52454e ; undefined
    3740:	7428464f 	.inst	0x7428464f ; undefined
    3744:	2c657079 	ldnp	s25, s28, [x3, #-216]
    3748:	2c727470 	ldnp	s16, s29, [x3, #-112]
    374c:	626d656d 	.inst	0x626d656d ; undefined
    3750:	20297265 	.inst	0x20297265 ; undefined
    3754:	63207b28 	.inst	0x63207b28 ; undefined
    3758:	74736e6f 	.inst	0x74736e6f ; undefined
    375c:	70797420 	adr	x0, f65e3 <fat32_open+0xf5cbb>
    3760:	28666f65 	ldnp	w5, w27, [x27, #-208]
    3764:	74282820 	.inst	0x74282820 ; undefined
    3768:	20657079 	.inst	0x20657079 ; undefined
    376c:	2930292a 	stp	w10, w10, [x9, #-128]
    3770:	656d3e2d 	fmls	z13.h, p7/m, z17.h, z13.h
    3774:	7265626d 	.inst	0x7265626d ; undefined
    3778:	2a202920 	orn	w0, w9, w0, lsl #10
    377c:	706d5f5f 	adr	xzr, de367 <fat32_open+0xdda3f>
    3780:	3d207274 	str	b20, [x19, #2076]
    3784:	74702820 	.inst	0x74702820 ; undefined
    3788:	203b2972 	.inst	0x203b2972 ; undefined
    378c:	70797428 	adr	x8, f6613 <fat32_open+0xf5ceb>
    3790:	292a2065 	stp	w5, w8, [x3, #-176]
    3794:	63282028 	.inst	0x63282028 ; undefined
    3798:	20726168 	.inst	0x20726168 ; undefined
    379c:	5f5f292a 	.inst	0x5f5f292a ; undefined
    37a0:	7274706d 	.inst	0x7274706d ; undefined
    37a4:	6f202d20 	.inst	0x6f202d20 ; undefined
    37a8:	65736666 	fnmls	z6.h, p1/m, z19.h, z19.h
    37ac:	28666f74 	ldnp	w20, w27, [x27, #-208]
    37b0:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    37b4:	6d656d2c 	ldp	d12, d27, [x9, #-432]
    37b8:	29726562 	ldp	w2, w25, [x11, #-112]
    37bc:	7d3b2920 	str	h0, [x9, #7572]
    37c0:	425f0029 	.inst	0x425f0029 ; undefined
    37c4:	535f4453 	.inst	0x535f4453 ; undefined
    37c8:	5f455a49 	.inst	0x5f455a49 ; undefined
    37cc:	00205f54 	.inst	0x00205f54 ; NYI
    37d0:	41484357 	.inst	0x41484357 ; undefined
    37d4:	494d5f52 	.inst	0x494d5f52 ; undefined
    37d8:	464f004e 	.inst	0x464f004e ; undefined
    37dc:	54455346 	b.vs	8e244 <fat32_open+0x8d91c>
    37e0:	28464f5f 	ldnp	wzr, w19, [x26, #48]
    37e4:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    37e8:	6d656d2c 	ldp	d12, d27, [x9, #-432]
    37ec:	29726562 	ldp	w2, w25, [x11, #-112]
    37f0:	73282820 	.inst	0x73282820 ; undefined
    37f4:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
    37f8:	26202974 	.inst	0x26202974 ; undefined
    37fc:	74282828 	.inst	0x74282828 ; undefined
    3800:	20657079 	.inst	0x20657079 ; undefined
    3804:	3020292a 	adr	x10, 43d29 <fat32_open+0x43401>
    3808:	6d3e2d29 	stp	d9, d11, [x9, #-32]
    380c:	65626d65 	fnmls	z5.h, p3/m, z11.h, z2.h
    3810:	00292972 	.inst	0x00292972 ; NYI
    3814:	76726964 	.inst	0x76726964 ; undefined
    3818:	756e5f65 	.inst	0x756e5f65 ; undefined
    381c:	7265626d 	.inst	0x7265626d ; undefined
    3820:	43575f00 	.inst	0x43575f00 ; undefined
    3824:	5f524148 	.inst	0x5f524148 ; undefined
    3828:	00205f54 	.inst	0x00205f54 ; NYI
    382c:	736d656d 	.inst	0x736d656d ; undefined
    3830:	55007465 	.inst	0x55007465 ; undefined
    3834:	5f544e49 	.inst	0x5f544e49 ; undefined
    3838:	5341454c 	.inst	0x5341454c ; undefined
    383c:	5f363154 	.inst	0x5f363154 ; undefined
    3840:	2058414d 	.inst	0x2058414d ; undefined
    3844:	49555f5f 	.inst	0x49555f5f ; undefined
    3848:	4c5f544e 	.inst	0x4c5f544e ; undefined
    384c:	54534145 	b.pl	aa074 <fat32_open+0xa974c>  // b.nfrst
    3850:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    3854:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3858:	53494c00 	.inst	0x53494c00 ; undefined
    385c:	4e495f54 	.inst	0x4e495f54 ; undefined
    3860:	68285449 	.inst	0x68285449 ; undefined
    3864:	29646165 	ldp	w5, w24, [x11, #-224]
    3868:	206f6420 	.inst	0x206f6420 ; undefined
    386c:	6828207b 	.inst	0x6828207b ; undefined
    3870:	29646165 	ldp	w5, w24, [x11, #-224]
    3874:	72703e2d 	.inst	0x72703e2d ; undefined
    3878:	3d207665 	str	b5, [x19, #2077]
    387c:	61656820 	.inst	0x61656820 ; undefined
    3880:	28203b64 	stnp	w4, w14, [x27, #-256]
    3884:	64616568 	.inst	0x64616568 ; undefined
    3888:	6e3e2d29 	uqsub	v9.16b, v9.16b, v30.16b
    388c:	20747865 	.inst	0x20747865 ; undefined
    3890:	6568203d 	fmls	z29.h, p0/m, z1.h, z8.h
    3894:	203b6461 	.inst	0x203b6461 ; undefined
    3898:	6877207d 	.inst	0x6877207d ; undefined
    389c:	20656c69 	.inst	0x20656c69 ; undefined
    38a0:	00293028 	.inst	0x00293028 ; NYI
    38a4:	72626d70 	.inst	0x72626d70 ; undefined
    38a8:	765f5f00 	.inst	0x765f5f00 ; undefined
    38ac:	6f635f61 	.inst	0x6f635f61 ; undefined
    38b0:	64287970 	.inst	0x64287970 ; undefined
    38b4:	2029732c 	.inst	0x2029732c ; undefined
    38b8:	75625f5f 	.inst	0x75625f5f ; undefined
    38bc:	69746c69 	ldpsw	x9, x27, [x3, #-96]
    38c0:	61765f6e 	.inst	0x61765f6e ; undefined
    38c4:	706f635f 	adr	xzr, e252f <fat32_open+0xe1c07>
    38c8:	2c642879 	ldnp	s25, s10, [x3, #-224]
    38cc:	5f002973 	.inst	0x5f002973 ; undefined
    38d0:	4d52415f 	.inst	0x4d52415f ; undefined
    38d4:	2050465f 	.inst	0x2050465f ; undefined
    38d8:	5f003431 	.inst	0x5f003431 ; undefined
    38dc:	5a49535f 	.inst	0x5a49535f ; undefined
    38e0:	414d5f45 	.inst	0x414d5f45 ; undefined
    38e4:	205f5f58 	.inst	0x205f5f58 ; undefined
    38e8:	66667830 	.inst	0x66667830 ; undefined
    38ec:	66666666 	.inst	0x66666666 ; undefined
    38f0:	66666666 	.inst	0x66666666 ; undefined
    38f4:	66666666 	.inst	0x66666666 ; undefined
    38f8:	4c556666 	.inst	0x4c556666 ; undefined
    38fc:	74616600 	.inst	0x74616600 ; undefined
    3900:	705f3233 	adr	x19, c1f47 <fat32_open+0xc161f>
    3904:	65737261 	fnmls	z1.h, p4/m, z19.h, z19.h
    3908:	6d616e5f 	ldp	d31, d27, [x18, #-496]
    390c:	74730065 	.inst	0x74730065 ; undefined
    3910:	70636e72 	adr	x18, ca6df <fat32_open+0xc9db7>
    3914:	4e490079 	.inst	0x4e490079 ; undefined
    3918:	41465f54 	.inst	0x41465f54 ; undefined
    391c:	32335453 	orr	w19, w2, #0xffffe007
    3920:	58414d5f 	ldr	xzr, 862c8 <fat32_open+0x859a0>
    3924:	495f5f20 	.inst	0x495f5f20 ; undefined
    3928:	465f544e 	.inst	0x465f544e ; undefined
    392c:	33545341 	.inst	0x33545341 ; undefined
    3930:	414d5f32 	.inst	0x414d5f32 ; undefined
    3934:	005f5f58 	.inst	0x005f5f58 ; undefined
    3938:	49555f5f 	.inst	0x49555f5f ; undefined
    393c:	3436544e 	cbz	w14, 703c4 <fat32_open+0x6fa9c>
    3940:	6328435f 	.inst	0x6328435f ; undefined
    3944:	20632029 	.inst	0x20632029 ; undefined
    3948:	55202323 	.inst	0x55202323 ; undefined
    394c:	5f5f004c 	.inst	0x5f5f004c ; undefined
    3950:	5f474953 	.inst	0x5f474953 ; undefined
    3954:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    3958:	545f4349 	b.ls	c21c0 <fat32_open+0xc1898>  // b.plast
    395c:	5f455059 	.inst	0x5f455059 ; undefined
    3960:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
    3964:	4e490074 	.inst	0x4e490074 ; undefined
    3968:	5f363154 	.inst	0x5f363154 ; undefined
    396c:	004e494d 	.inst	0x004e494d ; undefined
    3970:	50544e49 	adr	x9, ac33a <fat32_open+0xaba12>
    3974:	4d5f5254 	.inst	0x4d5f5254 ; undefined
    3978:	61004e49 	.inst	0x61004e49 ; undefined
    397c:	72657373 	.inst	0x72657373 ; undefined
    3980:	78652874 	.inst	0x78652874 ; undefined
    3984:	28202970 	stnp	w16, w10, [x11, #-256]
    3988:	64696f76 	.inst	0x64696f76 ; undefined
    398c:	65282829 	.inst	0x65282829 ; undefined
    3990:	20297078 	.inst	0x20297078 ; undefined
    3994:	28207c7c 	stnp	w28, wzr, [x3, #-256]
    3998:	73615f5f 	.inst	0x73615f5f ; undefined
    399c:	74726573 	.inst	0x74726573 ; undefined
    39a0:	465f5f28 	.inst	0x465f5f28 ; undefined
    39a4:	5f454c49 	.inst	0x5f454c49 ; undefined
    39a8:	5f202c5f 	.inst	0x5f202c5f ; undefined
    39ac:	4e494c5f 	.inst	0x4e494c5f ; undefined
    39b0:	2c5f5f45 	ldnp	s5, s23, [x26, #248]
    39b4:	78652320 	ldeorlh	w5, w0, [x25]
    39b8:	202c2970 	.inst	0x202c2970 ; undefined
    39bc:	00292930 	.inst	0x00292930 ; NYI
    39c0:	33746166 	.inst	0x33746166 ; undefined
    39c4:	69665f32 	ldpsw	x18, x23, [x25, #-208]
    39c8:	655f646e 	fcmeq	p14.h, p1/z, z3.h, z31.h
    39cc:	7972746e 	ldrh	w14, [x3, #6458]
    39d0:	555f5f00 	.inst	0x555f5f00 ; undefined
    39d4:	5f544e49 	.inst	0x5f544e49 ; undefined
    39d8:	5341454c 	.inst	0x5341454c ; undefined
    39dc:	5f343654 	.inst	0x5f343654 ; undefined
    39e0:	45505954 	.inst	0x45505954 ; undefined
    39e4:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    39e8:	20676e6f 	.inst	0x20676e6f ; undefined
    39ec:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    39f0:	64656e67 	.inst	0x64656e67 ; undefined
    39f4:	746e6920 	.inst	0x746e6920 ; undefined
    39f8:	445f5f00 	.inst	0x445f5f00 ; undefined
    39fc:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    3a00:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    3a04:	64282820 	.inst	0x64282820 ; undefined
    3a08:	6c62756f 	ldnp	d15, d29, [x11, #-480]
    3a0c:	2e322965 	.inst	0x2e322965 ; undefined
    3a10:	30353232 	adr	x18, 6e055 <fat32_open+0x6d72d>
    3a14:	35383337 	cbnz	w23, 74078 <fat32_open+0x73750>
    3a18:	37303538 	tbnz	w24, #6, 40bc <.debug_str+0x40bc>
    3a1c:	33313032 	.inst	0x33313032 ; undefined
    3a20:	39303338 	strb	w24, [x25, #3084]
    3a24:	32333230 	orr	w16, w17, #0x3ffe000
    3a28:	33373137 	.inst	0x33373137 ; undefined
    3a2c:	30343233 	adr	x19, 6c071 <fat32_open+0x6b749>
    3a30:	65363034 	.inst	0x65363034 ; undefined
    3a34:	3830332d 	ldsetb	w16, w13, [x25]
    3a38:	5f00294c 	.inst	0x5f00294c ; undefined
    3a3c:	544c465f 	.inst	0x544c465f ; undefined
    3a40:	5f583436 	srsra	d22, d1, #40
    3a44:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3a48:	2e33205f 	usubl	v31.8h, v2.8b, v19.8b
    3a4c:	31323633 	adds	w19, w17, #0xc8d
    3a50:	34313330 	cbz	w16, 660b4 <fat32_open+0x6578c>
    3a54:	32313133 	orr	w19, w9, #0xfff8000
    3a58:	35333930 	cbnz	w16, 6a17c <fat32_open+0x69854>
    3a5c:	36323630 	tbz	w16, #6, 8120 <fat32_open+0x77f8>
    3a60:	37373632 	tbnz	w18, #6, 2124 <.debug_str+0x2124>
    3a64:	33373138 	.inst	0x33373138 ; undefined
    3a68:	35373132 	cbnz	w18, 7208c <fat32_open+0x71764>
    3a6c:	65303632 	.inst	0x65303632 ; undefined
    3a70:	3339342d 	.inst	0x3339342d ; undefined
    3a74:	34364632 	cbz	w18, 70338 <fat32_open+0x6fa10>
    3a78:	45440078 	.inst	0x45440078 ; undefined
    3a7c:	28475542 	ldnp	w2, w21, [x10, #56]
    3a80:	2c746d66 	ldnp	s6, s27, [x11, #-96]
    3a84:	292e2e2e 	stp	w14, w11, [x17, #-144]
    3a88:	645f5f20 	fcmla	z0.h, p7/m, z25.h, z31.h, #180
    3a8c:	67756265 	.inst	0x67756265 ; undefined
    3a90:	665f5f28 	.inst	0x665f5f28 ; undefined
    3a94:	5f636e75 	.inst	0x5f636e75 ; undefined
    3a98:	66202c5f 	.inst	0x66202c5f ; undefined
    3a9c:	202c746d 	.inst	0x202c746d ; undefined
    3aa0:	5f5f2323 	.inst	0x5f5f2323 ; undefined
    3aa4:	415f4156 	.inst	0x415f4156 ; undefined
    3aa8:	5f534752 	.inst	0x5f534752 ; undefined
    3aac:	5f00295f 	.inst	0x5f00295f ; undefined
    3ab0:	33504c49 	.inst	0x33504c49 ; undefined
    3ab4:	616d0032 	.inst	0x616d0032 ; undefined
    3ab8:	636f6c6c 	.inst	0x636f6c6c ; undefined
    3abc:	74616600 	.inst	0x74616600 ; undefined
    3ac0:	7265765f 	.inst	0x7265765f ; undefined
    3ac4:	6e6f6973 	.inst	0x6e6f6973 ; undefined
    3ac8:	495f5f00 	.inst	0x495f5f00 ; undefined
    3acc:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3ad0:	54534145 	b.pl	aa2f8 <fat32_open+0xa99d0>  // b.nfrst
    3ad4:	545f3233 	.inst	0x545f3233 ; undefined
    3ad8:	5f455059 	.inst	0x5f455059 ; undefined
    3adc:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
    3ae0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    3ae4:	43554e47 	.inst	0x43554e47 ; undefined
    3ae8:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3aec:	5f5f524f 	.inst	0x5f5f524f ; undefined
    3af0:	64003220 	.inst	0x64003220 ; undefined
    3af4:	655f7269 	fcmeq	p9.h, p4/z, z19.h, z31.h
    3af8:	6972746e 	ldpsw	x14, x29, [x3, #-112]
    3afc:	6d5f7365 	ldp	d5, d28, [x27, #496]
    3b00:	5f007861 	.inst	0x5f007861 ; undefined
    3b04:	4d52415f 	.inst	0x4d52415f ; undefined
    3b08:	4234365f 	.inst	0x4234365f ; undefined
    3b0c:	535f5449 	.inst	0x535f5449 ; undefined
    3b10:	45544154 	.inst	0x45544154 ; undefined
    3b14:	65003120 	.inst	0x65003120 ; undefined
    3b18:	5f627062 	sqdmlsl	s2, h3, v2.h[2]
    3b1c:	73726170 	.inst	0x73726170 ; undefined
    3b20:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3b24:	4c42444c 	.inst	0x4c42444c ; undefined
    3b28:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3b2c:	5f30315f 	.inst	0x5f30315f ; undefined
    3b30:	5f505845 	.inst	0x5f505845 ; undefined
    3b34:	2d28205f 	stp	s31, s8, [x2, #-192]
    3b38:	31333934 	adds	w20, w9, #0xcce
    3b3c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    3b40:	5f434347 	.inst	0x5f434347 ; undefined
    3b44:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    3b48:	495f4349 	.inst	0x495f4349 ; undefined
    3b4c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3b50:	5f4b434f 	.inst	0x5f4b434f ; undefined
    3b54:	45455246 	.inst	0x45455246 ; undefined
    3b58:	70003220 	adr	x0, 419f <.debug_str+0x419f>
    3b5c:	5f726964 	.inst	0x5f726964 ; undefined
    3b60:	00627573 	.inst	0x00627573 ; undefined
    3b64:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3b68:	58323354 	ldr	x20, 681d0 <fat32_open+0x678a8>
    3b6c:	5350455f 	.inst	0x5350455f ; undefined
    3b70:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    3b74:	32205f5f 	orr	wsp, w26, #0xffffff
    3b78:	3032322e 	adr	x14, 681bd <fat32_open+0x67895>
    3b7c:	30363434 	adr	x20, 70201 <fat32_open+0x6f8d9>
    3b80:	35323934 	cbnz	w20, 682a4 <fat32_open+0x6797c>
    3b84:	33313330 	.inst	0x33313330 ; undefined
    3b88:	38303830 	.inst	0x38303830 ; undefined
    3b8c:	36323734 	tbz	w20, #6, 8270 <fat32_open+0x7948>
    3b90:	36333333 	tbz	w19, #6, a1f4 <fat32_open+0x98cc>
    3b94:	36313831 	tbz	w17, #6, 6298 <fat32_open+0x5970>
    3b98:	32363034 	orr	w20, w1, #0x7ffc00
    3b9c:	36312d65 	tbz	w5, #6, 6148 <fat32_open+0x5820>
    3ba0:	78323346 	ldseth	w18, w6, [x26]
    3ba4:	544e4900 	b.eq	a04c4 <fat32_open+0x9fb9c>  // b.none
    3ba8:	41454c5f 	.inst	0x41454c5f ; undefined
    3bac:	5f385453 	.inst	0x5f385453 ; undefined
    3bb0:	004e494d 	.inst	0x004e494d ; undefined
    3bb4:	4d544e49 	.inst	0x4d544e49 ; undefined
    3bb8:	4d5f5841 	.inst	0x4d5f5841 ; undefined
    3bbc:	66005841 	.inst	0x66005841 ; undefined
    3bc0:	32337461 	orr	w1, w3, #0xffffe7ff
    3bc4:	6165725f 	.inst	0x6165725f ; undefined
    3bc8:	68635f64 	.inst	0x68635f64 ; undefined
    3bcc:	5f6e6961 	.inst	0x5f6e6961 ; undefined
    3bd0:	75746572 	.inst	0x75746572 ; undefined
    3bd4:	5f006e72 	.inst	0x5f006e72 ; undefined
    3bd8:	5f434347 	.inst	0x5f434347 ; undefined
    3bdc:	5f58414d 	.inst	0x5f58414d ; undefined
    3be0:	47494c41 	.inst	0x47494c41 ; undefined
    3be4:	20545f4e 	.inst	0x20545f4e ; undefined
    3be8:	5f646300 	.inst	0x5f646300 ; undefined
    3bec:	64616572 	.inst	0x64616572 ; undefined
    3bf0:	6365735f 	.inst	0x6365735f ; undefined
    3bf4:	00726f74 	.inst	0x00726f74 ; undefined
    3bf8:	53425f5f 	.inst	0x53425f5f ; undefined
    3bfc:	5f5f4c52 	.inst	0x5f5f4c52 ; undefined
    3c00:	20297828 	.inst	0x20297828 ; undefined
    3c04:	20343628 	.inst	0x20343628 ; undefined
    3c08:	5f5f202d 	.inst	0x5f5f202d ; undefined
    3c0c:	6c697562 	ldnp	d2, d29, [x11, #-368]
    3c10:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    3c14:	6c7a6c63 	ldnp	d3, d27, [x3, #-96]
    3c18:	29297828 	stp	w8, w30, [x1, #-184]
    3c1c:	415f5f00 	.inst	0x415f5f00 ; undefined
    3c20:	465f4d52 	.inst	0x465f4d52 ; undefined
    3c24:	55544145 	.inst	0x55544145 ; undefined
    3c28:	465f4552 	.inst	0x465f4552 ; undefined
    3c2c:	5f363150 	.inst	0x5f363150 ; undefined
    3c30:	4c414353 	.inst	0x4c414353 ; undefined
    3c34:	415f5241 	.inst	0x415f5241 ; undefined
    3c38:	48544952 	ldxrh	w18, [x10]
    3c3c:	4954454d 	.inst	0x4954454d ; undefined
    3c40:	435f0043 	.inst	0x435f0043 ; undefined
    3c44:	4f534e4f 	.inst	0x4f534e4f ; undefined
    3c48:	485f454c 	ldxrh	w12, [x10]
    3c4c:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    3c50:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    3c54:	5f534148 	.inst	0x5f534148 ; undefined
    3c58:	45495551 	.inst	0x45495551 ; undefined
    3c5c:	414e5f54 	.inst	0x414e5f54 ; undefined
    3c60:	205f5f4e 	.inst	0x205f5f4e ; undefined
    3c64:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    3c68:	33504c49 	.inst	0x33504c49 ; undefined
    3c6c:	005f5f32 	.inst	0x005f5f32 ; undefined
    3c70:	68746170 	.inst	0x68746170 ; undefined
    3c74:	7261705f 	.inst	0x7261705f ; undefined
    3c78:	4e490074 	.inst	0x4e490074 ; undefined
    3c7c:	5f323354 	.inst	0x5f323354 ; undefined
    3c80:	5f5f0043 	.inst	0x5f5f0043 ; undefined
    3c84:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    3c88:	54414546 	b.vs	86530 <fat32_open+0x85c08>
    3c8c:	5f455255 	.inst	0x5f455255 ; undefined
    3c90:	4c414e55 	.inst	0x4c414e55 ; undefined
    3c94:	454e4749 	.inst	0x454e4749 ; undefined
    3c98:	00312044 	.inst	0x00312044 ; NYI
    3c9c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3ca0:	38323154 	ldsetb	w18, w20, [x10]
    3ca4:	4e45445f 	.inst	0x4e45445f ; undefined
    3ca8:	5f4d524f 	.inst	0x5f4d524f ; undefined
    3cac:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3cb0:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
    3cb4:	31353734 	adds	w20, w25, #0xd4d
    3cb8:	31313537 	adds	w23, w9, #0xc4d
    3cbc:	38333439 	.inst	0x38333439 ; undefined
    3cc0:	31353230 	adds	w16, w17, #0xd4c
    3cc4:	32393031 	orr	w17, w1, #0xfff80
    3cc8:	38333434 	.inst	0x38333434 ; undefined
    3ccc:	32383539 	orr	w25, w9, #0x3fff00
    3cd0:	34363732 	cbz	w18, 703b4 <fat32_open+0x6fa8c>
    3cd4:	65353536 	.inst	0x65353536 ; undefined
    3cd8:	3639342d 	tbz	w13, #7, 635c <fat32_open+0x5a34>
    3cdc:	32314636 	orr	w22, w17, #0xffff8001
    3ce0:	4e490038 	.inst	0x4e490038 ; undefined
    3ce4:	5f343654 	.inst	0x5f343654 ; undefined
    3ce8:	004e494d 	.inst	0x004e494d ; undefined
    3cec:	544e4955 	.inst	0x544e4955 ; undefined
    3cf0:	00435f38 	.inst	0x00435f38 ; undefined
    3cf4:	544e4955 	.inst	0x544e4955 ; undefined
    3cf8:	435f3631 	.inst	0x435f3631 ; undefined
    3cfc:	525f5f00 	.inst	0x525f5f00 ; undefined
    3d00:	53494745 	.inst	0x53494745 ; undefined
    3d04:	5f524554 	.inst	0x5f524554 ; undefined
    3d08:	46455250 	.inst	0x46455250 ; undefined
    3d0c:	5f5f5849 	.inst	0x5f5f5849 ; undefined
    3d10:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    3d14:	31434544 	adds	w4, w10, #0xd1, lsl #12
    3d18:	535f3832 	.inst	0x535f3832 ; undefined
    3d1c:	4f4e4255 	.inst	0x4f4e4255 ; undefined
    3d20:	4c414d52 	.inst	0x4c414d52 ; undefined
    3d24:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3d28:	30205f5f 	adr	xzr, 44911 <fat32_open+0x43fe9>
    3d2c:	3030302e 	adr	x14, 64331 <fat32_open+0x63a09>
    3d30:	30303030 	adr	x16, 64335 <fat32_open+0x63a0d>
    3d34:	30303030 	adr	x16, 64339 <fat32_open+0x63a11>
    3d38:	30303030 	adr	x16, 6433d <fat32_open+0x63a15>
    3d3c:	30303030 	adr	x16, 64341 <fat32_open+0x63a19>
    3d40:	30303030 	adr	x16, 64345 <fat32_open+0x63a1d>
    3d44:	30303030 	adr	x16, 64349 <fat32_open+0x63a21>
    3d48:	30303030 	adr	x16, 6434d <fat32_open+0x63a25>
    3d4c:	2d453130 	ldp	s16, s12, [x9, #40]
    3d50:	33343136 	.inst	0x33343136 ; undefined
    3d54:	5f004c44 	.inst	0x5f004c44 ; undefined
    3d58:	4c42445f 	.inst	0x4c42445f ; undefined
    3d5c:	4749445f 	.inst	0x4749445f ; undefined
    3d60:	31205f5f 	cmn	w26, #0x817
    3d64:	616e0035 	.inst	0x616e0035 ; undefined
    3d68:	5f00656d 	.inst	0x5f00656d ; undefined
    3d6c:	5a49535f 	.inst	0x5a49535f ; undefined
    3d70:	5f464f45 	.inst	0x5f464f45 ; undefined
    3d74:	455a4953 	.inst	0x455a4953 ; undefined
    3d78:	5f5f545f 	shl	d31, d2, #31
    3d7c:	5f003820 	.inst	0x5f003820 ; undefined
    3d80:	5241415f 	.inst	0x5241415f ; undefined
    3d84:	34364843 	cbz	w3, 7068c <fat32_open+0x6fd64>
    3d88:	5f5f4c45 	.inst	0x5f5f4c45 ; undefined
    3d8c:	5f003120 	.inst	0x5f003120 ; undefined
    3d90:	544c465f 	.inst	0x544c465f ; undefined
    3d94:	455f3436 	.inst	0x455f3436 ; undefined
    3d98:	4c495350 	.inst	0x4c495350 ; undefined
    3d9c:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    3da0:	322e3220 	orr	w0, w17, #0x7ffc0000
    3da4:	34343032 	cbz	w18, 6c3a8 <fat32_open+0x6ba80>
    3da8:	39343036 	strb	w22, [x1, #3340]
    3dac:	33303532 	.inst	0x33303532 ; undefined
    3db0:	38303331 	ldsetb	w16, w17, [x25]
    3db4:	37343830 	tbnz	w16, #6, ffffffffffffc4b8 <fat32_open+0xffffffffffffbb90>
    3db8:	33333632 	.inst	0x33333632 ; undefined
    3dbc:	38313633 	.inst	0x38313633 ; undefined
    3dc0:	30343631 	adr	x17, 6c485 <fat32_open+0x6bb5d>
    3dc4:	2d653236 	ldp	s22, s12, [x17, #-216]
    3dc8:	36463631 	tbz	w17, #8, 48c <.debug_str+0x48c>
    3dcc:	74750034 	.inst	0x74750034 ; undefined
    3dd0:	6e363166 	usubw2	v6.8h, v11.8h, v22.16b
    3dd4:	73616f74 	.inst	0x73616f74 ; undefined
    3dd8:	00696963 	.inst	0x00696963 ; undefined
    3ddc:	49555f5f 	.inst	0x49555f5f ; undefined
    3de0:	3436544e 	cbz	w14, 70868 <fat32_open+0x6ff40>
    3de4:	58414d5f 	ldr	xzr, 8678c <fat32_open+0x85e64>
    3de8:	30205f5f 	adr	xzr, 449d1 <fat32_open+0x440a9>
    3dec:	66666678 	.inst	0x66666678 ; undefined
    3df0:	66666666 	.inst	0x66666666 ; undefined
    3df4:	66666666 	.inst	0x66666666 ; undefined
    3df8:	66666666 	.inst	0x66666666 ; undefined
    3dfc:	004c5566 	.inst	0x004c5566 ; undefined
    3e00:	74727473 	.inst	0x74727473 ; undefined
    3e04:	5f006b6f 	.inst	0x5f006b6f ; undefined
    3e08:	6265645f 	.inst	0x6265645f ; undefined
    3e0c:	70006775 	adr	x21, 4afb <.debug_str+0x4afb>
    3e10:	33746166 	.inst	0x33746166 ; undefined
    3e14:	6c680032 	ldnp	d18, d0, [x1, #-384]
    3e18:	5f747369 	sqdmlsl	s9, h27, v4.h[3]
    3e1c:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    3e20:	4d454d00 	.inst	0x4d454d00 ; undefined
    3e24:	5548435f 	.inst	0x5548435f ; undefined
    3e28:	535f4b43 	.inst	0x535f4b43 ; undefined
    3e2c:	28455a49 	ldnp	w9, w22, [x18, #40]
    3e30:	63756863 	.inst	0x63756863 ; undefined
    3e34:	2820296b 	stnp	w11, w10, [x11, #-256]
    3e38:	75686328 	.inst	0x75686328 ; undefined
    3e3c:	2d296b63 	stp	s3, s26, [x27, #-184]
    3e40:	7a69733e 	.inst	0x7a69733e ; undefined
    3e44:	20262065 	.inst	0x20262065 ; undefined
    3e48:	3178307e 	adds	w30, w3, #0xe0c, lsl #12
    3e4c:	68730029 	.inst	0x68730029 ; undefined
    3e50:	2074726f 	.inst	0x2074726f ; undefined
    3e54:	00746e69 	.inst	0x00746e69 ; undefined
    3e58:	4454535f 	.inst	0x4454535f ; undefined
    3e5c:	5f464544 	.inst	0x5f464544 ; undefined
    3e60:	48002048 	stxrh	w0, w8, [x2]
    3e64:	5453494c 	b.gt	aa78c <fat32_open+0xa9e64>
    3e68:	58454e5f 	ldr	xzr, 8e830 <fat32_open+0x8df08>
    3e6c:	41535f54 	.inst	0x41535f54 ; undefined
    3e70:	70284546 	adr	x6, 5471b <fat32_open+0x53df3>
    3e74:	6e2c7274 	uabdl2	v20.8h, v19.16b, v12.16b
    3e78:	2965646f 	ldp	w15, w25, [x3, #-216]
    3e7c:	70282820 	adr	x0, 54383 <fat32_open+0x53a5b>
    3e80:	2d297274 	stp	s20, s28, [x19, #-184]
    3e84:	646f6e3e 	.inst	0x646f6e3e ; undefined
    3e88:	656e2e65 	fmls	z5.h, p3/m, z19.h, z14.h
    3e8c:	3f207478 	.inst	0x3f207478 ; undefined
    3e90:	494c4820 	.inst	0x494c4820 ; undefined
    3e94:	4e5f5453 	.inst	0x4e5f5453 ; undefined
    3e98:	28545845 	ldnp	w5, w22, [x2, #160]
    3e9c:	2c727470 	ldnp	s16, s29, [x3, #-112]
    3ea0:	646f6e20 	.inst	0x646f6e20 ; undefined
    3ea4:	3a202965 	.inst	0x3a202965 ; undefined
    3ea8:	4c554e20 	.inst	0x4c554e20 ; undefined
    3eac:	5f00294c 	.inst	0x5f00294c ; undefined
    3eb0:	5254505f 	.inst	0x5254505f ; undefined
    3eb4:	46464944 	.inst	0x46464944 ; undefined
    3eb8:	58414d5f 	ldr	xzr, 86860 <fat32_open+0x85f38>
    3ebc:	30205f5f 	adr	xzr, 44aa5 <fat32_open+0x4417d>
    3ec0:	66663778 	.inst	0x66663778 ; undefined
    3ec4:	66666666 	.inst	0x66666666 ; undefined
    3ec8:	66666666 	.inst	0x66666666 ; undefined
    3ecc:	66666666 	.inst	0x66666666 ; undefined
    3ed0:	5f004c66 	.inst	0x5f004c66 ; undefined
    3ed4:	4e49555f 	.inst	0x4e49555f ; undefined
    3ed8:	5f363154 	.inst	0x5f363154 ; undefined
    3edc:	29632843 	ldp	w3, w10, [x2, #-232]
    3ee0:	5f006320 	.inst	0x5f006320 ; undefined
    3ee4:	544c465f 	.inst	0x544c465f ; undefined
    3ee8:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    3eec:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    3ef0:	312e3620 	adds	w0, w17, #0xb8d
    3ef4:	31353330 	adds	w16, w25, #0xd4c
    3ef8:	35323635 	cbnz	w21, 685bc <fat32_open+0x67c94>
    3efc:	30303030 	adr	x16, 64501 <fat32_open+0x63bd9>
    3f00:	30303030 	adr	x16, 64505 <fat32_open+0x63bdd>
    3f04:	30303030 	adr	x16, 64509 <fat32_open+0x63be1>
    3f08:	30303030 	adr	x16, 6450d <fat32_open+0x63be5>
    3f0c:	30303030 	adr	x16, 64511 <fat32_open+0x63be9>
    3f10:	30303030 	adr	x16, 64515 <fat32_open+0x63bed>
    3f14:	2d653030 	ldp	s16, s12, [x1, #-216]
    3f18:	36314635 	tbz	w21, #6, 67dc <fat32_open+0x5eb4>
    3f1c:	6e697500 	uabd	v0.8h, v8.8h, v9.8h
    3f20:	5f343674 	.inst	0x5f343674 ; undefined
    3f24:	49550074 	.inst	0x49550074 ; undefined
    3f28:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3f2c:	54534145 	b.pl	aa754 <fat32_open+0xa9e2c>  // b.nfrst
    3f30:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    3f34:	42005841 	.inst	0x42005841 ; undefined
    3f38:	435f4e49 	.inst	0x435f4e49 ; undefined
    3f3c:	6928524c 	.inst	0x6928524c ; undefined
    3f40:	7865646e 	.inst	0x7865646e ; undefined
    3f44:	7469622c 	.inst	0x7469622c ; undefined
    3f48:	2970616d 	ldp	w13, w24, [x11, #-128]
    3f4c:	206f6420 	.inst	0x206f6420 ; undefined
    3f50:	6962207b 	ldpsw	x27, x8, [x3, #-240]
    3f54:	70616d74 	adr	x20, c6d03 <fat32_open+0xc63db>
    3f58:	203d2620 	.inst	0x203d2620 ; undefined
    3f5c:	2031287e 	.inst	0x2031287e ; undefined
    3f60:	69203c3c 	.inst	0x69203c3c ; undefined
    3f64:	7865646e 	.inst	0x7865646e ; undefined
    3f68:	7d203b29 	str	h9, [x25, #4124]
    3f6c:	69687720 	ldpsw	x0, x29, [x25, #-192]
    3f70:	2820656c 	stnp	w12, w25, [x11, #-256]
    3f74:	5f002930 	.inst	0x5f002930 ; undefined
    3f78:	544c465f 	.inst	0x544c465f ; undefined
    3f7c:	5f583436 	srsra	d22, d1, #40
    3f80:	5f58414d 	.inst	0x5f58414d ; undefined
    3f84:	5f505845 	.inst	0x5f505845 ; undefined
    3f88:	3631205f 	tbz	wzr, #6, 6390 <fat32_open+0x5a68>
    3f8c:	00343833 	.inst	0x00343833 ; NYI
    3f90:	54415f5f 	.inst	0x54415f5f ; undefined
    3f94:	43494d4f 	.inst	0x43494d4f ; undefined
    3f98:	4c45525f 	.inst	0x4c45525f ; undefined
    3f9c:	44455841 	.inst	0x44455841 ; undefined
    3fa0:	6e003020 	ext	v0.16b, v1.16b, v0.16b, #6
    3fa4:	31656d61 	adds	w1, w11, #0x95b, lsl #12
    3fa8:	6d616e00 	ldp	d0, d27, [x16, #-496]
    3fac:	55003265 	.inst	0x55003265 ; undefined
    3fb0:	5f544e49 	.inst	0x5f544e49 ; undefined
    3fb4:	5341454c 	.inst	0x5341454c ; undefined
    3fb8:	5f343654 	.inst	0x5f343654 ; undefined
    3fbc:	2058414d 	.inst	0x2058414d ; undefined
    3fc0:	49555f5f 	.inst	0x49555f5f ; undefined
    3fc4:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3fc8:	54534145 	b.pl	aa7f0 <fat32_open+0xa9ec8>  // b.nfrst
    3fcc:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    3fd0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3fd4:	535f5f00 	.inst	0x535f5f00 ; undefined
    3fd8:	415f4749 	.inst	0x415f4749 ; undefined
    3fdc:	494d4f54 	.inst	0x494d4f54 ; undefined
    3fe0:	414d5f43 	.inst	0x414d5f43 ; undefined
    3fe4:	205f5f58 	.inst	0x205f5f58 ; undefined
    3fe8:	66377830 	.inst	0x66377830 ; undefined
    3fec:	66666666 	.inst	0x66666666 ; undefined
    3ff0:	55006666 	.inst	0x55006666 ; undefined
    3ff4:	5f544e49 	.inst	0x5f544e49 ; undefined
    3ff8:	5341454c 	.inst	0x5341454c ; undefined
    3ffc:	5f323354 	.inst	0x5f323354 ; undefined
    4000:	2058414d 	.inst	0x2058414d ; undefined
    4004:	49555f5f 	.inst	0x49555f5f ; undefined
    4008:	4c5f544e 	.inst	0x4c5f544e ; undefined
    400c:	54534145 	b.pl	aa834 <fat32_open+0xa9f0c>  // b.nfrst
    4010:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    4014:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4018:	465f5f00 	.inst	0x465f5f00 ; undefined
    401c:	3436544c 	cbz	w12, 70aa4 <fat32_open+0x7017c>
    4020:	4e414d5f 	.inst	0x4e414d5f ; undefined
    4024:	49445f54 	.inst	0x49445f54 ; undefined
    4028:	205f5f47 	.inst	0x205f5f47 ; undefined
    402c:	49003335 	.inst	0x49003335 ; undefined
    4030:	5f38544e 	.inst	0x5f38544e ; undefined
    4034:	4e490043 	.inst	0x4e490043 ; undefined
    4038:	454c5f54 	.inst	0x454c5f54 ; undefined
    403c:	33545341 	.inst	0x33545341 ; undefined
    4040:	414d5f32 	.inst	0x414d5f32 ; undefined
    4044:	5f5f0058 	.inst	0x5f5f0058 ; undefined
    4048:	455a4953 	.inst	0x455a4953 ; undefined
    404c:	465f464f 	.inst	0x465f464f ; undefined
    4050:	54414f4c 	b.gt	86a38 <fat32_open+0x86110>
    4054:	34205f5f 	cbz	wzr, 44c3c <fat32_open+0x44314>
    4058:	445f5f00 	.inst	0x445f5f00 ; undefined
    405c:	34364345 	cbz	w5, 708c4 <fat32_open+0x6ff9c>
    4060:	4e494d5f 	.inst	0x4e494d5f ; undefined
    4064:	31205f5f 	cmn	w26, #0x817
    4068:	38332d45 	.inst	0x38332d45 ; undefined
    406c:	00444433 	.inst	0x00444433 ; undefined
    4070:	656e5f5f 	fnmla	z31.h, p7/m, z26.h, z14.h
    4074:	705f6465 	adr	x5, c2d03 <fat32_open+0xc23db>
    4078:	69647274 	ldpsw	x20, x28, [x19, #-224]
    407c:	745f6666 	.inst	0x745f6666 ; undefined
    4080:	445f5f00 	.inst	0x445f5f00 ; undefined
    4084:	445f4c42 	.inst	0x445f4c42 ; undefined
    4088:	4d494345 	.inst	0x4d494345 ; undefined
    408c:	445f4c41 	.inst	0x445f4c41 ; undefined
    4090:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    4094:	00373120 	.inst	0x00373120 ; NYI
    4098:	65646e69 	fnmls	z9.h, p3/m, z19.h, z4.h
    409c:	505f0078 	adr	x24, c20aa <fat32_open+0xc1782>
    40a0:	49445254 	.inst	0x49445254 ; undefined
    40a4:	545f4646 	b.vs	c296c <fat32_open+0xc2044>
    40a8:	4900205f 	.inst	0x4900205f ; undefined
    40ac:	3631544e 	tbz	w14, #6, 6b34 <fat32_open+0x620c>
    40b0:	6328435f 	.inst	0x6328435f ; undefined
    40b4:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    40b8:	31544e49 	adds	w9, w18, #0x513, lsl #12
    40bc:	28435f36 	ldnp	w22, w23, [x25, #24]
    40c0:	5f002963 	.inst	0x5f002963 ; undefined
    40c4:	4d52415f 	.inst	0x4d52415f ; undefined
    40c8:	5f50465f 	.inst	0x5f50465f ; undefined
    40cc:	54534146 	b.vs	aa8f4 <fat32_open+0xa9fcc>
    40d0:	495f5f00 	.inst	0x495f5f00 ; undefined
    40d4:	3631544e 	tbz	w14, #6, 6b5c <fat32_open+0x6234>
    40d8:	58414d5f 	ldr	xzr, 86a80 <fat32_open+0x86158>
    40dc:	30205f5f 	adr	xzr, 44cc5 <fat32_open+0x4439d>
    40e0:	66663778 	.inst	0x66663778 ; undefined
    40e4:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    40e8:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    40ec:	5f534350 	.inst	0x5f534350 ; undefined
    40f0:	43504141 	.inst	0x43504141 ; undefined
    40f4:	20343653 	.inst	0x20343653 ; undefined
    40f8:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    40fc:	41484357 	.inst	0x41484357 ; undefined
    4100:	5f545f52 	.inst	0x5f545f52 ; undefined
    4104:	5f00205f 	.inst	0x5f00205f ; undefined
    4108:	544e495f 	.inst	0x544e495f ; undefined
    410c:	4449575f 	.inst	0x4449575f ; undefined
    4110:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    4114:	00323320 	.inst	0x00323320 ; NYI
    4118:	5f4d454d 	.inst	0x5f4d454d ; undefined
    411c:	43554843 	.inst	0x43554843 ; undefined
    4120:	45535f4b 	.inst	0x45535f4b ; undefined
    4124:	68632854 	.inst	0x68632854 ; undefined
    4128:	296b6375 	ldp	w21, w24, [x27, #-168]
    412c:	63282820 	.inst	0x63282820 ; undefined
    4130:	6b637568 	.inst	0x6b637568 ; undefined
    4134:	733e2d29 	.inst	0x733e2d29 ; undefined
    4138:	20657a69 	.inst	0x20657a69 ; undefined
    413c:	30203d7c 	adr	x28, 448e9 <fat32_open+0x43fc1>
    4140:	00293178 	.inst	0x00293178 ; NYI
    4144:	73756c63 	.inst	0x73756c63 ; undefined
    4148:	00726574 	.inst	0x00726574 ; undefined
    414c:	636f6c62 	.inst	0x636f6c62 ; undefined
    4150:	65645f6b 	fnmla	z11.h, p7/m, z27.h, z4.h
    4154:	65636976 	fnmls	z22.h, p2/m, z11.h, z3.h
    4158:	4e495500 	.inst	0x4e495500 ; undefined
    415c:	454c5f54 	.inst	0x454c5f54 ; undefined
    4160:	38545341 	ldurb	w1, [x26, #-187]
    4164:	58414d5f 	ldr	xzr, 86b0c <fat32_open+0x861e4>
    4168:	535f5f00 	.inst	0x535f5f00 ; undefined
    416c:	415f4749 	.inst	0x415f4749 ; undefined
    4170:	494d4f54 	.inst	0x494d4f54 ; undefined
    4174:	49575f43 	.inst	0x49575f43 ; undefined
    4178:	5f485444 	shl	d4, d2, #8
    417c:	3233205f 	orr	wsp, w2, #0x3fe000
    4180:	5f617600 	sqshl	d0, d16, #33
    4184:	28646e65 	ldnp	w5, w27, [x19, #-224]
    4188:	5f202976 	.inst	0x5f202976 ; undefined
    418c:	6975625f 	ldpsw	xzr, x24, [x18, #-88]
    4190:	6e69746c 	uabd	v12.8h, v3.8h, v9.8h
    4194:	5f61765f 	sqshl	d31, d18, #33
    4198:	28646e65 	ldnp	w5, w27, [x19, #-224]
    419c:	5f002976 	.inst	0x5f002976 ; undefined
    41a0:	4d52415f 	.inst	0x4d52415f ; undefined
    41a4:	4145465f 	.inst	0x4145465f ; undefined
    41a8:	45525554 	.inst	0x45525554 ; undefined
    41ac:	4352435f 	.inst	0x4352435f ; undefined
    41b0:	73003233 	.inst	0x73003233 ; undefined
    41b4:	616e6769 	.inst	0x616e6769 ; undefined
    41b8:	65727574 	fnmls	z20.h, p5/m, z11.h, z18.h
    41bc:	6c617600 	ldnp	d0, d29, [x16, #-496]
    41c0:	5f006469 	.inst	0x5f006469 ; undefined
    41c4:	5a49535f 	.inst	0x5a49535f ; undefined
    41c8:	5f464f45 	.inst	0x5f464f45 ; undefined
    41cc:	544e4957 	.inst	0x544e4957 ; undefined
    41d0:	5f5f545f 	shl	d31, d2, #31
    41d4:	73003420 	.inst	0x73003420 ; undefined
    41d8:	656c7274 	fnmls	z20.h, p4/m, z19.h, z12.h
    41dc:	5f5f006e 	.inst	0x5f5f006e ; undefined
    41e0:	43445453 	.inst	0x43445453 ; undefined
    41e4:	31205f5f 	cmn	w26, #0x817
    41e8:	495f5f00 	.inst	0x495f5f00 ; undefined
    41ec:	465f544e 	.inst	0x465f544e ; undefined
    41f0:	38545341 	ldurb	w1, [x26, #-187]
    41f4:	58414d5f 	ldr	xzr, 86b9c <fat32_open+0x86274>
    41f8:	30205f5f 	adr	xzr, 44de1 <fat32_open+0x444b9>
    41fc:	66663778 	.inst	0x66663778 ; undefined
    4200:	66666666 	.inst	0x66666666 ; undefined
    4204:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    4208:	33544c46 	.inst	0x33544c46 ; undefined
    420c:	41485f32 	.inst	0x41485f32 ; undefined
    4210:	45445f53 	.inst	0x45445f53 ; undefined
    4214:	4d524f4e 	.inst	0x4d524f4e ; undefined
    4218:	31205f5f 	cmn	w26, #0x817
    421c:	445f5f00 	.inst	0x445f5f00 ; undefined
    4220:	32334345 	orr	w5, w26, #0x3fffe000
    4224:	4e494d5f 	.inst	0x4e494d5f ; undefined
    4228:	5058455f 	adr	xzr, b4ad2 <fat32_open+0xb41aa>
    422c:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    4230:	2934392d 	stp	w13, w14, [x9, #-96]
    4234:	555f5f00 	.inst	0x555f5f00 ; undefined
    4238:	36544e49 	tbz	w9, #10, ffffffffffffcc00 <fat32_open+0xffffffffffffc2d8>
    423c:	59545f34 	.inst	0x59545f34 ; undefined
    4240:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    4244:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    4248:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
    424c:	6e676973 	.inst	0x6e676973 ; undefined
    4250:	69206465 	.inst	0x69206465 ; undefined
    4254:	5f00746e 	.inst	0x5f00746e ; undefined
    4258:	544e495f 	.inst	0x544e495f ; undefined
    425c:	5341465f 	.inst	0x5341465f ; undefined
    4260:	5f323354 	.inst	0x5f323354 ; undefined
    4264:	54444957 	.inst	0x54444957 ; undefined
    4268:	205f5f48 	.inst	0x205f5f48 ; undefined
    426c:	5f003233 	.inst	0x5f003233 ; undefined
    4270:	6e695f5f 	uqrshl	v31.8h, v26.8h, v9.8h
    4274:	63775f74 	.inst	0x63775f74 ; undefined
    4278:	5f726168 	.inst	0x5f726168 ; undefined
    427c:	20685f74 	.inst	0x20685f74 ; undefined
    4280:	74616600 	.inst	0x74616600 ; undefined
    4284:	6174735f 	.inst	0x6174735f ; undefined
    4288:	66007472 	.inst	0x66007472 ; undefined
    428c:	735f7461 	.inst	0x735f7461 ; undefined
    4290:	00657a69 	.inst	0x00657a69 ; undefined
    4294:	49535f5f 	.inst	0x49535f5f ; undefined
    4298:	464f455a 	.inst	0x464f455a ; undefined
    429c:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    42a0:	4f445f47 	.inst	0x4f445f47 ; undefined
    42a4:	454c4255 	.inst	0x454c4255 ; undefined
    42a8:	31205f5f 	cmn	w26, #0x817
    42ac:	41460036 	.inst	0x41460036 ; undefined
    42b0:	5f323354 	.inst	0x5f323354 ; undefined
    42b4:	4c5f5349 	.inst	0x4c5f5349 ; undefined
    42b8:	6128464e 	.inst	0x6128464e ; undefined
    42bc:	69727474 	ldpsw	x20, x29, [x3, #-112]
    42c0:	65747562 	fnmls	z2.h, p5/m, z11.h, z20.h
    42c4:	61282029 	.inst	0x61282029 ; undefined
    42c8:	69727474 	ldpsw	x20, x29, [x3, #-112]
    42cc:	65747562 	fnmls	z2.h, p5/m, z11.h, z20.h
    42d0:	203d3d20 	.inst	0x203d3d20 ; undefined
    42d4:	66307830 	.inst	0x66307830 ; undefined
    42d8:	535f0029 	.inst	0x535f0029 ; undefined
    42dc:	5f455a49 	.inst	0x5f455a49 ; undefined
    42e0:	45445f54 	.inst	0x45445f54 ; undefined
    42e4:	52414c43 	.inst	0x52414c43 ; undefined
    42e8:	00204445 	.inst	0x00204445 ; NYI
    42ec:	54505f5f 	.inst	0x54505f5f ; undefined
    42f0:	46494452 	.inst	0x46494452 ; undefined
    42f4:	59545f46 	.inst	0x59545f46 ; undefined
    42f8:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    42fc:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    4300:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
    4304:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    4308:	31544c46 	adds	w6, w2, #0x513, lsl #12
    430c:	4d5f3832 	.inst	0x4d5f3832 ; undefined
    4310:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4314:	312e3120 	adds	w0, w9, #0xb8c
    4318:	33373938 	.inst	0x33373938 ; undefined
    431c:	35393431 	cbnz	w17, 769a0 <fat32_open+0x76078>
    4320:	32373533 	orr	w19, w9, #0x7ffe00
    4324:	36373133 	tbz	w19, #6, 2948 <.debug_str+0x2948>
    4328:	35383035 	cbnz	w21, 7492c <fat32_open+0x74004>
    432c:	33393537 	.inst	0x33393537 ; undefined
    4330:	32363632 	orr	w18, w17, #0xfffc00
    4334:	37303038 	tbnz	w24, #6, 4938 <.debug_str+0x4938>
    4338:	2b653230 	.inst	0x2b653230 ; undefined
    433c:	32333934 	orr	w20, w9, #0xfffe000
    4340:	38323146 	ldsetb	w18, w6, [x10]
    4344:	54414600 	b.eq	86c04 <fat32_open+0x862dc>  // b.none
    4348:	495f3233 	.inst	0x495f3233 ; undefined
    434c:	49445f53 	.inst	0x49445f53 ; undefined
    4350:	74612852 	.inst	0x74612852 ; undefined
    4354:	62697274 	.inst	0x62697274 ; undefined
    4358:	29657475 	ldp	w21, w29, [x3, #-216]
    435c:	74612820 	.inst	0x74612820 ; undefined
    4360:	62697274 	.inst	0x62697274 ; undefined
    4364:	20657475 	.inst	0x20657475 ; undefined
    4368:	78302026 	ldeorh	w16, w6, [x1]
    436c:	00293031 	.inst	0x00293031 ; NYI
    4370:	50544e49 	adr	x9, acd3a <fat32_open+0xac412>
    4374:	4d5f5254 	.inst	0x4d5f5254 ; undefined
    4378:	5f205841 	fmls	h1, h2, v0.h[6]
    437c:	544e495f 	.inst	0x544e495f ; undefined
    4380:	5f525450 	shl	d16, d2, #18
    4384:	5f58414d 	.inst	0x5f58414d ; undefined
    4388:	5f5f005f 	.inst	0x5f5f005f ; undefined
    438c:	36544c46 	tbz	w6, #10, ffffffffffffcd14 <fat32_open+0xffffffffffffc3ec>
    4390:	414d5f34 	.inst	0x414d5f34 ; undefined
    4394:	205f5f58 	.inst	0x205f5f58 ; undefined
    4398:	39372e31 	strb	w17, [x17, #3531]
    439c:	33393637 	.inst	0x33393637 ; undefined
    43a0:	38343331 	ldsetb	w20, w17, [x25]
    43a4:	31333236 	adds	w22, w17, #0xccc
    43a8:	38303735 	.inst	0x38303735 ; undefined
    43ac:	32353431 	orr	w17, w1, #0x1fff800
    43b0:	33323437 	.inst	0x33323437 ; undefined
    43b4:	37313337 	tbnz	w23, #6, 6a18 <fat32_open+0x60f0>
    43b8:	35333430 	cbnz	w16, 6aa3c <fat32_open+0x6a114>
    43bc:	332b6537 	.inst	0x332b6537 ; undefined
    43c0:	36463830 	tbz	w16, #8, ac4 <.debug_str+0xac4>
    43c4:	475f0034 	.inst	0x475f0034 ; undefined
    43c8:	535f4343 	.inst	0x535f4343 ; undefined
    43cc:	5f455a49 	.inst	0x5f455a49 ; undefined
    43d0:	64002054 	.inst	0x64002054 ; undefined
    43d4:	5f6b7369 	sqdmlsl	s9, h27, v11.h[2]
    43d8:	55006469 	.inst	0x55006469 ; undefined
    43dc:	5f544e49 	.inst	0x5f544e49 ; undefined
    43e0:	54534146 	b.vs	aac08 <fat32_open+0xaa2e0>
    43e4:	414d5f38 	.inst	0x414d5f38 ; undefined
    43e8:	5f5f0058 	.inst	0x5f5f0058 ; undefined
    43ec:	31544c46 	adds	w6, w2, #0x513, lsl #12
    43f0:	414d5f36 	.inst	0x414d5f36 ; undefined
    43f4:	205f5f58 	.inst	0x205f5f58 ; undefined
    43f8:	35352e36 	cbnz	w22, 6e9bc <fat32_open+0x6e094>
    43fc:	30303430 	adr	x16, 64a81 <fat32_open+0x64159>
    4400:	30303030 	adr	x16, 64a05 <fat32_open+0x640dd>
    4404:	30303030 	adr	x16, 64a09 <fat32_open+0x640e1>
    4408:	30303030 	adr	x16, 64a0d <fat32_open+0x640e5>
    440c:	30303030 	adr	x16, 64a11 <fat32_open+0x640e9>
    4410:	30303030 	adr	x16, 64a15 <fat32_open+0x640ed>
    4414:	30303030 	adr	x16, 64a19 <fat32_open+0x640f1>
    4418:	30303030 	adr	x16, 64a1d <fat32_open+0x640f5>
    441c:	342b6530 	cbz	w16, 5b0c0 <fat32_open+0x5a798>
    4420:	00363146 	.inst	0x00363146 ; NYI
    4424:	4f4c5f5f 	.inst	0x4f4c5f5f ; undefined
    4428:	4d5f474e 	.inst	0x4d5f474e ; undefined
    442c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4430:	37783020 	tbnz	w0, #15, 4a34 <.debug_str+0x4a34>
    4434:	66666666 	.inst	0x66666666 ; undefined
    4438:	66666666 	.inst	0x66666666 ; undefined
    443c:	66666666 	.inst	0x66666666 ; undefined
    4440:	4c666666 	.inst	0x4c666666 ; undefined
    4444:	415f5f00 	.inst	0x415f5f00 ; undefined
    4448:	415f4d52 	.inst	0x415f4d52 ; undefined
    444c:	4e47494c 	.inst	0x4e47494c ; undefined
    4450:	58414d5f 	ldr	xzr, 86df8 <fat32_open+0x864d0>
    4454:	5257505f 	.inst	0x5257505f ; undefined
    4458:	00383220 	.inst	0x00383220 ; NYI
    445c:	4453425f 	.inst	0x4453425f ; undefined
    4460:	4843575f 	ldxrh	wzr, [x26]
    4464:	545f5241 	b.ne	c2eac <fat32_open+0xc2584>  // b.any
    4468:	6f6c005f 	mla	v31.8h, v2.8h, v12.h[2]
    446c:	6c20676e 	stnp	d14, d25, [x27, #-512]
    4470:	20676e6f 	.inst	0x20676e6f ; undefined
    4474:	00746e69 	.inst	0x00746e69 ; undefined
    4478:	746e6975 	.inst	0x746e6975 ; undefined
    447c:	745f3233 	.inst	0x745f3233 ; undefined
    4480:	69647000 	ldpsw	x0, x28, [x0, #-224]
    4484:	6e655f72 	uqrshl	v18.8h, v27.8h, v5.8h
    4488:	00797274 	.inst	0x00797274 ; undefined
    448c:	7473616c 	.inst	0x7473616c ; undefined
    4490:	646f6d5f 	.inst	0x646f6d5f ; undefined
    4494:	7461645f 	.inst	0x7461645f ; undefined
    4498:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    449c:	31544c46 	adds	w6, w2, #0x513, lsl #12
    44a0:	49445f36 	.inst	0x49445f36 ; undefined
    44a4:	205f5f47 	.inst	0x205f5f47 ; undefined
    44a8:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    44ac:	544e4955 	.inst	0x544e4955 ; undefined
    44b0:	5f525450 	shl	d16, d2, #18
    44b4:	5f58414d 	.inst	0x5f58414d ; undefined
    44b8:	7830205f 	steorh	w16, [x2]
    44bc:	66666666 	.inst	0x66666666 ; undefined
    44c0:	66666666 	.inst	0x66666666 ; undefined
    44c4:	66666666 	.inst	0x66666666 ; undefined
    44c8:	66666666 	.inst	0x66666666 ; undefined
    44cc:	64004c55 	.inst	0x64004c55 ; undefined
    44d0:	5f617461 	sqshl	d1, d3, #33
    44d4:	72617473 	.inst	0x72617473 ; undefined
    44d8:	61660074 	.inst	0x61660074 ; undefined
    44dc:	5f323374 	.inst	0x5f323374 ; undefined
    44e0:	74696e69 	.inst	0x74696e69 ; undefined
    44e4:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    44e8:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    44ec:	5f4e494d 	.inst	0x5f4e494d ; undefined
    44f0:	2e33205f 	usubl	v31.8h, v2.8b, v19.8b
    44f4:	31323633 	adds	w19, w17, #0xc8d
    44f8:	34313330 	cbz	w16, 66b5c <fat32_open+0x66234>
    44fc:	32313133 	orr	w19, w9, #0xfff8000
    4500:	35333930 	cbnz	w16, 6ac24 <fat32_open+0x6a2fc>
    4504:	36323630 	tbz	w16, #6, 8bc8 <fat32_open+0x82a0>
    4508:	37373632 	tbnz	w18, #6, 2bcc <.debug_str+0x2bcc>
    450c:	33373138 	.inst	0x33373138 ; undefined
    4510:	35373132 	cbnz	w18, 72b34 <fat32_open+0x7220c>
    4514:	65303632 	.inst	0x65303632 ; undefined
    4518:	3339342d 	.inst	0x3339342d ; undefined
    451c:	5f004c32 	.inst	0x5f004c32 ; undefined
    4520:	4e49555f 	.inst	0x4e49555f ; undefined
    4524:	41465f54 	.inst	0x41465f54 ; undefined
    4528:	36315453 	tbz	w19, #6, 6fb0 <fat32_open+0x6688>
    452c:	5059545f 	adr	xzr, b6fb6 <fat32_open+0xb668e>
    4530:	205f5f45 	.inst	0x205f5f45 ; undefined
    4534:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    4538:	64656e67 	.inst	0x64656e67 ; undefined
    453c:	746e6920 	.inst	0x746e6920 ; undefined
    4540:	544e4900 	b.eq	a0e60 <fat32_open+0xa0538>  // b.none
    4544:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    4548:	5f205841 	fmls	h1, h2, v0.h[6]
    454c:	544e495f 	.inst	0x544e495f ; undefined
    4550:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    4554:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4558:	494c4800 	.inst	0x494c4800 ; undefined
    455c:	465f5453 	.inst	0x465f5453 ; undefined
    4560:	54535249 	b.ls	aafa8 <fat32_open+0xaa680>  // b.plast
    4564:	70797428 	adr	x8, f73eb <fat32_open+0xf6ac3>
    4568:	65682c65 	fmls	z5.h, p3/m, z3.h, z8.h
    456c:	6e2c6461 	umax	v1.16b, v3.16b, v12.16b
    4570:	2965646f 	ldp	w15, w25, [x3, #-216]
    4574:	4e4f4320 	.inst	0x4e4f4320 ; undefined
    4578:	4e494154 	.inst	0x4e494154 ; undefined
    457c:	4f5f5245 	.inst	0x4f5f5245 ; undefined
    4580:	79742846 	ldrh	w6, [x2, #6676]
    4584:	202c6570 	.inst	0x202c6570 ; undefined
    4588:	61656828 	.inst	0x61656828 ; undefined
    458c:	3e2d2964 	.inst	0x3e2d2964 ; undefined
    4590:	73726966 	.inst	0x73726966 ; undefined
    4594:	6e202c74 	uqsub	v20.16b, v3.16b, v0.16b
    4598:	2965646f 	ldp	w15, w25, [x3, #-216]
    459c:	4e495500 	.inst	0x4e495500 ; undefined
    45a0:	5f343654 	.inst	0x5f343654 ; undefined
    45a4:	49530043 	.inst	0x49530043 ; undefined
    45a8:	54415f47 	b.vc	87190 <fat32_open+0x86868>
    45ac:	43494d4f 	.inst	0x43494d4f ; undefined
    45b0:	58414d5f 	ldr	xzr, 86f58 <fat32_open+0x86630>
    45b4:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
    45b8:	65735f74 	fnmla	z20.h, p7/m, z27.h, z19.h
    45bc:	726f7463 	.inst	0x726f7463 ; undefined
    45c0:	006b625f 	.inst	0x006b625f ; undefined
    45c4:	49575f5f 	.inst	0x49575f5f ; undefined
    45c8:	4d5f544e 	.inst	0x4d5f544e ; undefined
    45cc:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    45d0:	00553020 	.inst	0x00553020 ; undefined
    45d4:	5f544e49 	.inst	0x5f544e49 ; undefined
    45d8:	5341454c 	.inst	0x5341454c ; undefined
    45dc:	5f363154 	.inst	0x5f363154 ; undefined
    45e0:	004e494d 	.inst	0x004e494d ; undefined
    45e4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    45e8:	5f343654 	.inst	0x5f343654 ; undefined
    45ec:	5f474944 	.inst	0x5f474944 ; undefined
    45f0:	3531205f 	cbnz	wzr, 669f8 <fat32_open+0x660d0>
    45f4:	445f5f00 	.inst	0x445f5f00 ; undefined
    45f8:	34364345 	cbz	w5, 70e60 <fat32_open+0x70538>
    45fc:	5350455f 	.inst	0x5350455f ; undefined
    4600:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    4604:	31205f5f 	cmn	w26, #0x817
    4608:	35312d45 	cbnz	w5, 66bb0 <fat32_open+0x66288>
    460c:	66004444 	.inst	0x66004444 ; undefined
    4610:	00656572 	.inst	0x00656572 ; undefined
    4614:	4c465f5f 	.inst	0x4c465f5f ; undefined
    4618:	494d5f54 	.inst	0x494d5f54 ; undefined
    461c:	205f5f4e 	.inst	0x205f5f4e ; undefined
    4620:	37312e31 	tbnz	w17, #6, 6be4 <fat32_open+0x62bc>
    4624:	34393435 	cbz	w21, 76ca8 <fat32_open+0x76380>
    4628:	38303533 	.inst	0x38303533 ; undefined
    462c:	38323232 	ldsetb	w18, w18, [x17]
    4630:	37303537 	tbnz	w23, #6, 4cd4 <fat32_open+0x43ac>
    4634:	37383639 	tbnz	w25, #7, 4cf8 <fat32_open+0x43d0>
    4638:	33353633 	.inst	0x33353633 ; undefined
    463c:	32323237 	orr	w23, w17, #0x7ffc000
    4640:	36353432 	tbz	w18, #6, ffffffffffffecc4 <fat32_open+0xffffffffffffe39c>
    4644:	332d6538 	.inst	0x332d6538 ; undefined
    4648:	5f004638 	.inst	0x5f004638 ; undefined
    464c:	544e495f 	.inst	0x544e495f ; undefined
    4650:	41454c5f 	.inst	0x41454c5f ; undefined
    4654:	5f385453 	.inst	0x5f385453 ; undefined
    4658:	54444957 	.inst	0x54444957 ; undefined
    465c:	205f5f48 	.inst	0x205f5f48 ; undefined
    4660:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    4664:	5f544e49 	.inst	0x5f544e49 ; undefined
    4668:	5341454c 	.inst	0x5341454c ; undefined
    466c:	5f363154 	.inst	0x5f363154 ; undefined
    4670:	45505954 	.inst	0x45505954 ; undefined
    4674:	73205f5f 	.inst	0x73205f5f ; undefined
    4678:	74726f68 	.inst	0x74726f68 ; undefined
    467c:	746e6920 	.inst	0x746e6920 ; undefined
    4680:	6f6f7200 	fcmla	v0.8h, v16.8h, v15.h[1], #270
    4684:	6c635f74 	ldnp	d20, d23, [x27, #-464]
    4688:	65747375 	fnmls	z21.h, p4/m, z27.h, z20.h
    468c:	41460072 	.inst	0x41460072 ; undefined
    4690:	5f323354 	.inst	0x5f323354 ; undefined
    4694:	52544e45 	.inst	0x52544e45 ; undefined
    4698:	41425f59 	.inst	0x41425f59 ; undefined
    469c:	78302044 	ldeorh	w16, w4, [x2]
    46a0:	66666666 	.inst	0x66666666 ; undefined
    46a4:	00376666 	.inst	0x00376666 ; NYI
    46a8:	33544e49 	.inst	0x33544e49 ; undefined
    46ac:	494d5f32 	.inst	0x494d5f32 ; undefined
    46b0:	5f5f004e 	.inst	0x5f5f004e ; undefined
    46b4:	61686377 	.inst	0x61686377 ; undefined
    46b8:	5f745f72 	.inst	0x5f745f72 ; undefined
    46bc:	5500205f 	.inst	0x5500205f ; undefined
    46c0:	4d544e49 	.inst	0x4d544e49 ; undefined
    46c4:	435f5841 	.inst	0x435f5841 ; undefined
    46c8:	465f5f00 	.inst	0x465f5f00 ; undefined
    46cc:	3231544c 	orr	w12, w2, #0xffff801f
    46d0:	414d5f38 	.inst	0x414d5f38 ; undefined
    46d4:	445f544e 	.inst	0x445f544e ; undefined
    46d8:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    46dc:	33313120 	.inst	0x33313120 ; undefined
    46e0:	544e4900 	b.eq	a1000 <fat32_open+0xa06d8>  // b.none
    46e4:	5341465f 	.inst	0x5341465f ; undefined
    46e8:	5f363154 	.inst	0x5f363154 ; undefined
    46ec:	2058414d 	.inst	0x2058414d ; undefined
    46f0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    46f4:	41465f54 	.inst	0x41465f54 ; undefined
    46f8:	36315453 	tbz	w19, #6, 7180 <fat32_open+0x6858>
    46fc:	58414d5f 	ldr	xzr, 870a4 <fat32_open+0x8677c>
    4700:	5f005f5f 	.inst	0x5f005f5f ; undefined
    4704:	42444c5f 	.inst	0x42444c5f ; undefined
    4708:	494d5f4c 	.inst	0x494d5f4c ; undefined
    470c:	58455f4e 	ldr	x14, 8f2f4 <fat32_open+0x8e9cc>
    4710:	205f5f50 	.inst	0x205f5f50 ; undefined
    4714:	36312d28 	tbz	w8, #6, 6cb8 <fat32_open+0x6390>
    4718:	29313833 	stp	w19, w14, [x1, #-120]
    471c:	625f5f00 	.inst	0x625f5f00 ; undefined
    4720:	5f6c6f6f 	.inst	0x5f6c6f6f ; undefined
    4724:	65757274 	fnmls	z20.h, p4/m, z19.h, z21.h
    4728:	6c61665f 	ldnp	d31, d25, [x18, #-496]
    472c:	615f6573 	.inst	0x615f6573 ; undefined
    4730:	645f6572 	fcmla	z18.h, p1/m, z11.h, z31.h, #270
    4734:	6e696665 	umax	v5.8h, v19.8h, v9.8h
    4738:	31206465 	adds	w5, w3, #0x819
    473c:	445f5f00 	.inst	0x445f5f00 ; undefined
    4740:	455f4c42 	.inst	0x455f4c42 ; undefined
    4744:	4c495350 	.inst	0x4c495350 ; undefined
    4748:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    474c:	64282820 	.inst	0x64282820 ; undefined
    4750:	6c62756f 	ldnp	d15, d29, [x11, #-480]
    4754:	2e322965 	.inst	0x2e322965 ; undefined
    4758:	34303232 	cbz	w18, 64d9c <fat32_open+0x64474>
    475c:	34303634 	cbz	w20, 64e20 <fat32_open+0x644f8>
    4760:	30353239 	adr	x25, 6eda5 <fat32_open+0x6e47d>
    4764:	30333133 	adr	x19, 6ad89 <fat32_open+0x6a461>
    4768:	34383038 	cbz	w24, 74d6c <fat32_open+0x74444>
    476c:	33363237 	.inst	0x33363237 ; undefined
    4770:	31363333 	adds	w19, w25, #0xd8c
    4774:	34363138 	cbz	w24, 70d98 <fat32_open+0x70470>
    4778:	65323630 	.inst	0x65323630 ; undefined
    477c:	4c36312d 	.inst	0x4c36312d ; undefined
    4780:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    4784:	6465656e 	.inst	0x6465656e ; undefined
    4788:	765f5f5f 	.inst	0x765f5f5f ; undefined
    478c:	696c5f61 	ldpsw	x1, x23, [x27, #-160]
    4790:	72007473 	ands	w19, w3, #0x3fffffff
    4794:	645f6765 	fcmla	z5.h, p1/m, z27.h, z31.h, #270
    4798:	5f007269 	.inst	0x5f007269 ; undefined
    479c:	4e49555f 	.inst	0x4e49555f ; undefined
    47a0:	454c5f54 	.inst	0x454c5f54 ; undefined
    47a4:	33545341 	.inst	0x33545341 ; undefined
    47a8:	414d5f32 	.inst	0x414d5f32 ; undefined
    47ac:	205f5f58 	.inst	0x205f5f58 ; undefined
    47b0:	66667830 	.inst	0x66667830 ; undefined
    47b4:	66666666 	.inst	0x66666666 ; undefined
    47b8:	00556666 	.inst	0x00556666 ; undefined
    47bc:	4d544e49 	.inst	0x4d544e49 ; undefined
    47c0:	435f5841 	.inst	0x435f5841 ; undefined
    47c4:	20296328 	.inst	0x20296328 ; undefined
    47c8:	4e495f5f 	.inst	0x4e495f5f ; undefined
    47cc:	58414d54 	ldr	x20, 87174 <fat32_open+0x8684c>
    47d0:	6328435f 	.inst	0x6328435f ; undefined
    47d4:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    47d8:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    47dc:	5f534148 	.inst	0x5f534148 ; undefined
    47e0:	49464e49 	.inst	0x49464e49 ; undefined
    47e4:	5954494e 	.inst	0x5954494e ; undefined
    47e8:	31205f5f 	cmn	w26, #0x817
    47ec:	705f5f00 	adr	x0, c33cf <fat32_open+0xc2aa7>
    47f0:	63696e61 	.inst	0x63696e61 ; undefined
    47f4:	415f5f00 	.inst	0x415f5f00 ; undefined
    47f8:	48435241 	ldxrh	w1, [x18]
    47fc:	435f3436 	.inst	0x435f3436 ; undefined
    4800:	45444f4d 	.inst	0x45444f4d ; undefined
    4804:	414c5f4c 	.inst	0x414c5f4c ; undefined
    4808:	5f454752 	.inst	0x5f454752 ; undefined
    480c:	4e49005f 	.inst	0x4e49005f ; undefined
    4810:	454c5f54 	.inst	0x454c5f54 ; undefined
    4814:	36545341 	tbz	w1, #10, ffffffffffffd27c <fat32_open+0xffffffffffffc954>
    4818:	494d5f34 	.inst	0x494d5f34 ; undefined
    481c:	6573004e 	fmla	z14.h, p0/m, z2.h, z19.h
    4820:	756e5f71 	.inst	0x756e5f71 ; undefined
    4824:	7265626d 	.inst	0x7265626d ; undefined
    4828:	52545000 	.inst	0x52545000 ; undefined
    482c:	46464944 	.inst	0x46464944 ; undefined
    4830:	58414d5f 	ldr	xzr, 871d8 <fat32_open+0x868b0>
    4834:	5f534900 	.inst	0x5f534900 ; undefined
    4838:	45574f50 	.inst	0x45574f50 ; undefined
    483c:	464f5f52 	.inst	0x464f5f52 ; undefined
    4840:	7828325f 	stseth	w8, [x18]
    4844:	28282029 	stnp	w9, w8, [x1, #-192]
    4848:	26202978 	.inst	0x26202978 ; undefined
    484c:	28212026 	stnp	w6, w8, [x1, #-248]
    4850:	20297828 	.inst	0x20297828 ; undefined
    4854:	28282026 	stnp	w6, w8, [x1, #-192]
    4858:	2d202978 	stp	s24, s10, [x11, #-256]
    485c:	29293120 	stp	w0, w12, [x9, #-184]
    4860:	79730029 	ldrh	w9, [x1, #6528]
    4864:	6d657473 	ldp	d19, d29, [x3, #-432]
    4868:	0064695f 	.inst	0x0064695f ; undefined
    486c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    4870:	56455f54 	.inst	0x56455f54 ; undefined
    4874:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    4878:	4f485445 	shl	v5.2d, v2.2d, #8
    487c:	39435f44 	ldrb	w4, [x26, #215]
    4880:	005f5f39 	.inst	0x005f5f39 ; undefined
    4884:	49555f5f 	.inst	0x49555f5f ; undefined
    4888:	5f38544e 	.inst	0x5f38544e ; undefined
    488c:	45505954 	.inst	0x45505954 ; undefined
    4890:	75205f5f 	.inst	0x75205f5f ; undefined
    4894:	6769736e 	.inst	0x6769736e ; undefined
    4898:	2064656e 	.inst	0x2064656e ; undefined
    489c:	72616863 	.inst	0x72616863 ; undefined
    48a0:	465f5f00 	.inst	0x465f5f00 ; undefined
    48a4:	3233544c 	orr	w12, w2, #0xffffe007
    48a8:	414d5f58 	.inst	0x414d5f58 ; undefined
    48ac:	445f544e 	.inst	0x445f544e ; undefined
    48b0:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    48b4:	00333520 	.inst	0x00333520 ; NYI
    48b8:	73756c63 	.inst	0x73756c63 ; undefined
    48bc:	5f726574 	.inst	0x5f726574 ; undefined
    48c0:	00776f6c 	.inst	0x00776f6c ; undefined
    48c4:	43575f5f 	.inst	0x43575f5f ; undefined
    48c8:	5f524148 	.inst	0x5f524148 ; undefined
    48cc:	54444957 	.inst	0x54444957 ; undefined
    48d0:	205f5f48 	.inst	0x205f5f48 ; undefined
    48d4:	74003233 	.inst	0x74003233 ; undefined
    48d8:	00706d65 	.inst	0x00706d65 ; undefined
    48dc:	544e4957 	.inst	0x544e4957 ; undefined
    48e0:	58414d5f 	ldr	xzr, 87288 <fat32_open+0x86960>
    48e4:	61727400 	.inst	0x61727400 ; undefined
    48e8:	735f6b63 	.inst	0x735f6b63 ; undefined
    48ec:	00657a69 	.inst	0x00657a69 ; undefined
    48f0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    48f4:	5f363154 	.inst	0x5f363154 ; undefined
    48f8:	29632843 	ldp	w3, w10, [x2, #-232]
    48fc:	49006320 	.inst	0x49006320 ; undefined
    4900:	465f544e 	.inst	0x465f544e ; undefined
    4904:	31545341 	adds	w1, w26, #0x514, lsl #12
    4908:	494d5f36 	.inst	0x494d5f36 ; undefined
    490c:	2d28204e 	stp	s14, s8, [x2, #-192]
    4910:	5f544e49 	.inst	0x5f544e49 ; undefined
    4914:	54534146 	b.vs	ab13c <fat32_open+0xaa814>
    4918:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    491c:	2d205841 	stp	s1, s22, [x2, #-256]
    4920:	00293120 	.inst	0x00293120 ; NYI
    4924:	74735f63 	.inst	0x74735f63 ; undefined
    4928:	00747261 	.inst	0x00747261 ; undefined
    492c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    4930:	5f363154 	.inst	0x5f363154 ; undefined
    4934:	5f534148 	.inst	0x5f534148 ; undefined
    4938:	45495551 	.inst	0x45495551 ; undefined
    493c:	414e5f54 	.inst	0x414e5f54 ; undefined
    4940:	205f5f4e 	.inst	0x205f5f4e ; undefined
    4944:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    4948:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    494c:	415f4349 	.inst	0x415f4349 ; undefined
    4950:	525f5143 	.inst	0x525f5143 ; undefined
    4954:	34204c45 	cbz	w5, 452dc <fat32_open+0x449b4>
    4958:	495f5f00 	.inst	0x495f5f00 ; undefined
    495c:	5450544e 	b.al	a53e4 <fat32_open+0xa4abc>
    4960:	49575f52 	.inst	0x49575f52 ; undefined
    4964:	5f485444 	shl	d4, d2, #8
    4968:	3436205f 	cbz	wzr, 70d70 <fat32_open+0x70448>
    496c:	73657200 	.inst	0x73657200 ; undefined
    4970:	65767265 	fnmls	z5.h, p4/m, z19.h, z22.h
    4974:	575f0064 	.inst	0x575f0064 ; undefined
    4978:	52414843 	.inst	0x52414843 ; undefined
    497c:	445f545f 	.inst	0x445f545f ; undefined
    4980:	4e494645 	.inst	0x4e494645 ; undefined
    4984:	205f4445 	.inst	0x205f4445 ; undefined
    4988:	445f5f00 	.inst	0x445f5f00 ; undefined
    498c:	445f4c42 	.inst	0x445f4c42 ; undefined
    4990:	524f4e45 	.inst	0x524f4e45 ; undefined
    4994:	494d5f4d 	.inst	0x494d5f4d ; undefined
    4998:	205f5f4e 	.inst	0x205f5f4e ; undefined
    499c:	6f642828 	umlal2	v8.4s, v1.8h, v4.h[6]
    49a0:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
    49a4:	392e3429 	strb	w9, [x1, #2957]
    49a8:	35363034 	cbnz	w20, 70fac <fat32_open+0x70684>
    49ac:	38353436 	.inst	0x38353436 ; undefined
    49b0:	34323134 	cbz	w20, 68fd4 <fat32_open+0x686ac>
    49b4:	34343536 	cbz	w22, 6d058 <fat32_open+0x6c730>
    49b8:	35363731 	cbnz	w17, 7109c <fat32_open+0x70774>
    49bc:	39373836 	strb	w22, [x1, #3534]
    49c0:	38363832 	.inst	0x38363832 ; undefined
    49c4:	33313232 	.inst	0x33313232 ; undefined
    49c8:	2d653237 	ldp	s23, s12, [x17, #-216]
    49cc:	4c343233 	.inst	0x4c343233 ; undefined
    49d0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    49d4:	4c42444c 	.inst	0x4c42444c ; undefined
    49d8:	4749445f 	.inst	0x4749445f ; undefined
    49dc:	33205f5f 	.inst	0x33205f5f ; undefined
    49e0:	61700033 	.inst	0x61700033 ; undefined
    49e4:	55007472 	.inst	0x55007472 ; undefined
    49e8:	36544e49 	tbz	w9, #10, ffffffffffffd3b0 <fat32_open+0xffffffffffffca88>
    49ec:	28435f34 	ldnp	w20, w23, [x25, #24]
    49f0:	5f202963 	.inst	0x5f202963 ; undefined
    49f4:	4e49555f 	.inst	0x4e49555f ; undefined
    49f8:	5f343654 	.inst	0x5f343654 ; undefined
    49fc:	29632843 	ldp	w3, w10, [x2, #-232]
    4a00:	666e6c00 	.inst	0x666e6c00 ; undefined
    4a04:	7269645f 	.inst	0x7269645f ; undefined
    4a08:	445f5f00 	.inst	0x445f5f00 ; undefined
    4a0c:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    4a10:	5f544e41 	.inst	0x5f544e41 ; undefined
    4a14:	5f474944 	.inst	0x5f474944 ; undefined
    4a18:	3335205f 	.inst	0x3335205f ; undefined
    4a1c:	494c4800 	.inst	0x494c4800 ; undefined
    4a20:	4e5f5453 	.inst	0x4e5f5453 ; undefined
    4a24:	28545845 	ldnp	w5, w22, [x2, #160]
    4a28:	2c727470 	ldnp	s16, s29, [x3, #-112]
    4a2c:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    4a30:	4f432029 	smlal2	v9.4s, v1.8h, v3.h[0]
    4a34:	4941544e 	.inst	0x4941544e ; undefined
    4a38:	5f52454e 	.inst	0x5f52454e ; undefined
    4a3c:	5f28464f 	.inst	0x5f28464f ; undefined
    4a40:	7079745f 	adr	xzr, f78cb <fat32_open+0xf6fa3>
    4a44:	5f666f65 	.inst	0x5f666f65 ; undefined
    4a48:	702a285f 	adr	xzr, 58f53 <fat32_open+0x5862b>
    4a4c:	2c297274 	stnp	s20, s28, [x19, #-184]
    4a50:	74702820 	.inst	0x74702820 ; undefined
    4a54:	3e2d2972 	.inst	0x3e2d2972 ; undefined
    4a58:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    4a5c:	78656e2e 	.inst	0x78656e2e ; undefined
    4a60:	6e202c74 	uqsub	v20.16b, v3.16b, v0.16b
    4a64:	2965646f 	ldp	w15, w25, [x3, #-216]
    4a68:	54414600 	b.eq	87328 <fat32_open+0x86a00>  // b.none
    4a6c:	475f3233 	.inst	0x475f3233 ; undefined
    4a70:	485f5445 	ldxrh	w5, [x2]
    4a74:	2852554f 	ldnp	w15, w21, [x10, #144]
    4a78:	656d6974 	fnmls	z20.h, p2/m, z11.h, z13.h
    4a7c:	28282029 	stnp	w9, w8, [x1, #-192]
    4a80:	6d697428 	ldp	d8, d29, [x1, #-368]
    4a84:	26202965 	.inst	0x26202965 ; undefined
    4a88:	54414620 	b.eq	8734c <fat32_open+0x86a24>  // b.none
    4a8c:	485f3233 	ldxrh	w19, [x17]
    4a90:	5f52554f 	shl	d15, d10, #18
    4a94:	4b53414d 	sub	w13, w10, w19, lsr #16
    4a98:	3e3e2029 	.inst	0x3e3e2029 ; undefined
    4a9c:	29313120 	stp	w0, w12, [x9, #-120]
    4aa0:	544e4900 	b.eq	a13c0 <fat32_open+0xa0a98>  // b.none
    4aa4:	5341465f 	.inst	0x5341465f ; undefined
    4aa8:	5f363154 	.inst	0x5f363154 ; undefined
    4aac:	0058414d 	.inst	0x0058414d ; undefined
    4ab0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    4ab4:	414d5f54 	.inst	0x414d5f54 ; undefined
    4ab8:	205f5f58 	.inst	0x205f5f58 ; undefined
    4abc:	66377830 	.inst	0x66377830 ; undefined
    4ac0:	66666666 	.inst	0x66666666 ; undefined
    4ac4:	5f006666 	.inst	0x5f006666 ; undefined
    4ac8:	4e49555f 	.inst	0x4e49555f ; undefined
    4acc:	454c5f54 	.inst	0x454c5f54 ; undefined
    4ad0:	36545341 	tbz	w1, #10, ffffffffffffd538 <fat32_open+0xffffffffffffcc10>
    4ad4:	414d5f34 	.inst	0x414d5f34 ; undefined
    4ad8:	205f5f58 	.inst	0x205f5f58 ; undefined
    4adc:	66667830 	.inst	0x66667830 ; undefined
    4ae0:	66666666 	.inst	0x66666666 ; undefined
    4ae4:	66666666 	.inst	0x66666666 ; undefined
    4ae8:	66666666 	.inst	0x66666666 ; undefined
    4aec:	4c556666 	.inst	0x4c556666 ; undefined
    4af0:	74616600 	.inst	0x74616600 ; undefined
    4af4:	415f0073 	.inst	0x415f0073 ; undefined
    4af8:	52455353 	.inst	0x52455353 ; undefined
    4afc:	20485f54 	.inst	0x20485f54 ; undefined
    4b00:	4e495500 	.inst	0x4e495500 ; undefined
    4b04:	5f323354 	.inst	0x5f323354 ; undefined
    4b08:	地址 0x0000000000004b08 越界。


Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	43434700 	.inst	0x43434700 ; undefined
   4:	4c28203a 	.inst	0x4c28203a ; undefined
   8:	72616e69 	.inst	0x72616e69 ; undefined
   c:	4347206f 	.inst	0x4347206f ; undefined
  10:	2e372043 	usubl	v3.8h, v2.8b, v23.8b
  14:	30322d32 	adr	x18, 645b9 <fat32_open+0x63c91>
  18:	312e3731 	adds	w17, w25, #0xb8d
  1c:	37202931 	tbnz	w17, #4, 540 <fat32_read_chain+0x134>
  20:	312e322e 	adds	w14, w17, #0xb8c
  24:	31303220 	adds	w0, w17, #0xc0c
  28:	31303137 	adds	w23, w9, #0xc0c
  2c:	地址 0x000000000000002c 越界。


Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	0000000c 	.inst	0x0000000c ; undefined
   4:	ffffffff 	.inst	0xffffffff ; undefined
   8:	78040001 	sturh	w1, [x0, #64]
   c:	001f0c1e 	.inst	0x001f0c1e ; undefined
  10:	0000004c 	.word	0x0000004c
	...
  20:	00000364 	.word	0x00000364
  24:	00000000 	.word	0x00000000
  28:	09800e41 	.word	0x09800e41
  2c:	01909d41 	.word	0x01909d41
  30:	41018f9e 	.word	0x41018f9e
  34:	93431d0d 	.word	0x93431d0d
  38:	8d94018e 	.word	0x8d94018e
  3c:	018c9501 	.word	0x018c9501
  40:	97018b96 	.word	0x97018b96
  44:	8998018a 	.word	0x8998018a
  48:	0aca0201 	.word	0x0aca0201
  4c:	d8d7dedd 	.word	0xd8d7dedd
  50:	d4d3d6d5 	.word	0xd4d3d6d5
  54:	41001f0c 	.word	0x41001f0c
  58:	0000000b 	.word	0x0000000b
  5c:	00000000 	.word	0x00000000
  60:	0000004c 	.word	0x0000004c
	...
  70:	000000a8 	.word	0x000000a8
  74:	00000000 	.word	0x00000000
  78:	9d500e41 	.word	0x9d500e41
  7c:	41099e0a 	.word	0x41099e0a
  80:	96421d0d 	.word	0x96421d0d
  84:	44019a05 	.word	0x44019a05
  88:	08930794 	.word	0x08930794
  8c:	41069541 	.word	0x41069541
  90:	04970398 	.word	0x04970398
  94:	55029941 	.word	0x55029941
  98:	d541d3d4 	.word	0xd541d3d4
  9c:	41d7d841 	.word	0x41d7d841
  a0:	de0a44d9 	.word	0xde0a44d9
  a4:	0cd6dadd 	.word	0x0cd6dadd
  a8:	0b41001f 	.word	0x0b41001f
  ac:	00000000 	.word	0x00000000
  b0:	0000006c 	.word	0x0000006c
	...
  c0:	0000020c 	.word	0x0000020c
  c4:	00000000 	.word	0x00000000
  c8:	01900e41 	.word	0x01900e41
  cc:	119e129d 	.word	0x119e129d
  d0:	451d0d41 	.word	0x451d0d41
  d4:	0f941093 	.word	0x0f941093
  d8:	0c970e95 	.word	0x0c970e95
  dc:	099a0b98 	.word	0x099a0b98
  e0:	964b079c 	.word	0x964b079c
  e4:	0a99410d 	.word	0x0a99410d
  e8:	56089b41 	.word	0x56089b41
  ec:	41d941d6 	.word	0x41d941d6
  f0:	ddde47db 	.word	0xddde47db
  f4:	d8d7dadc 	.word	0xd8d7dadc
  f8:	0cd4d3d5 	.word	0x0cd4d3d5
  fc:	0c41001f 	.word	0x0c41001f
 100:	9301901d 	.word	0x9301901d
 104:	950f9410 	.word	0x950f9410
 108:	970d960e 	.word	0x970d960e
 10c:	990b980c 	.word	0x990b980c
 110:	9b099a0a 	.word	0x9b099a0a
 114:	9d079c08 	.word	0x9d079c08
 118:	00119e12 	.word	0x00119e12
 11c:	00000000 	.word	0x00000000
 120:	00000064 	.word	0x00000064
	...
 130:	000001f4 	.word	0x000001f4
 134:	00000000 	.word	0x00000000
 138:	9d700e41 	.word	0x9d700e41
 13c:	410d9e0e 	.word	0x410d9e0e
 140:	94421d0d 	.word	0x94421d0d
 144:	9709960b 	.word	0x9709960b
 148:	0c934908 	.word	0x0c934908
 14c:	690a9541 	.word	0x690a9541
 150:	42d541d3 	.word	0x42d541d3
 154:	95410c93 	.word	0x95410c93
 158:	0699410a 	.word	0x0699410a
 15c:	9b410798 	.word	0x9b410798
 160:	6a059a04 	.word	0x6a059a04
 164:	41d541d3 	.word	0x41d541d3
 168:	db41d8d9 	.word	0xdb41d8d9
 16c:	de0a44da 	.word	0xde0a44da
 170:	d4d7d6dd 	.word	0xd4d7d6dd
 174:	41001f0c 	.word	0x41001f0c
 178:	0c93430b 	.word	0x0c93430b
 17c:	d3490a95 	.word	0xd3490a95
 180:	0000d541 	.word	0x0000d541
 184:	00000000 	.word	0x00000000
 188:	00000054 	.word	0x00000054
	...
 198:	0000011c 	.word	0x0000011c
 19c:	00000000 	.word	0x00000000
 1a0:	04d00e41 	.word	0x04d00e41
 1a4:	9e4a9d41 	.word	0x9e4a9d41
 1a8:	1d0d4149 	.word	0x1d0d4149
 1ac:	98489342 	.word	0x98489342
 1b0:	46954343 	.word	0x46954343
 1b4:	97414794 	.word	0x97414794
 1b8:	41459644 	.word	0x41459644
 1bc:	4299419a 	.word	0x4299419a
 1c0:	d4d50a69 	.word	0xd4d50a69
 1c4:	41d6d741 	.word	0x41d6d741
 1c8:	0b41d9da 	.word	0x0b41d9da
 1cc:	41d4d541 	.word	0x41d4d541
 1d0:	da41d6d7 	.word	0xda41d6d7
 1d4:	dedd4dd9 	.word	0xdedd4dd9
 1d8:	1f0cd3d8 	.word	0x1f0cd3d8
 1dc:	00000000 	.word	0x00000000
 1e0:	0000007c 	.word	0x0000007c
	...
 1f0:	0000028c 	.word	0x0000028c
 1f4:	00000000 	.word	0x00000000
 1f8:	01800e41 	.word	0x01800e41
 1fc:	0f9e109d 	.word	0x0f9e109d
 200:	431d0d41 	.word	0x431d0d41
 204:	0b960e93 	.word	0x0b960e93
 208:	0a580998 	.word	0x0a580998
 20c:	0d940c95 	.word	0x0d940c95
 210:	410a9741 	.word	0x410a9741
 214:	0b470899 	.word	0x0b470899
 218:	950d9454 	.word	0x950d9454
 21c:	990a970c 	.word	0x990a970c
 220:	0a410208 	.word	0x0a410208
 224:	d741d4d5 	.word	0xd741d4d5
 228:	0b41d941 	.word	0x0b41d941
 22c:	d4d50a42 	.word	0xd4d50a42
 230:	d941d741 	.word	0xd941d741
 234:	d5420b41 	.word	0xd5420b41
 238:	41d741d4 	.word	0x41d741d4
 23c:	de0a4ad9 	.word	0xde0a4ad9
 240:	d3d6d8dd 	.word	0xd3d6d8dd
 244:	41001f0c 	.word	0x41001f0c
 248:	0d94490b 	.word	0x0d94490b
 24c:	0a970c95 	.word	0x0a970c95
 250:	d5450899 	.word	0xd5450899
 254:	41d741d4 	.word	0x41d741d4
 258:	000000d9 	.word	0x000000d9
 25c:	00000000 	.word	0x00000000
