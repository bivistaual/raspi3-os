
obj/fat32.o：     文件格式 elf64-littleaarch64


Disassembly of section .group:

0000000000000000 <wm4.0.43635d29b272a3c253edecf6039a8820>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000019 	.inst	0x00000019 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stdbool.h.29.07dce69c3b78884144b7f7bd19483461>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000001b 	.inst	0x0000001b ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000001d 	.inst	0x0000001d ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stddef.h.39.a38874c8f8a57e66301090908ec2a69f>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000001f 	.inst	0x0000001f ; undefined

Disassembly of section .group:

0000000000000000 <wm4.list.h.21.6d50c736f76f919e8bd21fe0fadf45b3>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000021 	.inst	0x00000021 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.hashmap.h.19.3d051ddf4b1e255ab4ab6dc3425a03a3>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000023 	.inst	0x00000023 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.fat32.h.8.993764843fac06860725439f201ce13e>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000025 	.inst	0x00000025 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.sdcard.h.2.ec8f388bad883ea39d54ba98164eb128>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000027 	.inst	0x00000027 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.stdarg.h.31.b55da1089056868966f25de5dbfc7d3c>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	00000029 	.inst	0x00000029 ; undefined

Disassembly of section .group:

0000000000000000 <wm4.console.h.6.c551f9a105870a4471c4cf4912f3688d>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000002b 	.inst	0x0000002b ; undefined

Disassembly of section .group:

0000000000000000 <wm4.malloc.h.9.8845f152a1da4c62bcf5f5e656e4db49>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000002d 	.inst	0x0000002d ; undefined

Disassembly of section .group:

0000000000000000 <wm4.assert.h.2.b70f19030aa61ded029ee82750072ee4>:
   0:	00000001 	.inst	0x00000001 ; undefined
   4:	0000002f 	.inst	0x0000002f ; undefined

Disassembly of section .text:

0000000000000000 <mbr_parse>:
   0:	d108c3ff 	sub	sp, sp, #0x230
   4:	a9007bfd 	stp	x29, x30, [sp]
   8:	910003fd 	mov	x29, sp
   c:	f9000fa0 	str	x0, [x29, #24]
  10:	f9000ba1 	str	x1, [x29, #16]
  14:	f9400fa0 	ldr	x0, [x29, #24]
  18:	f9400802 	ldr	x2, [x0, #16]
  1c:	9100a3a0 	add	x0, x29, #0x28
  20:	aa0003e1 	mov	x1, x0
  24:	52800000 	mov	w0, #0x0                   	// #0
  28:	d63f0040 	blr	x2
  2c:	7108001f 	cmp	w0, #0x200
  30:	540001e0 	b.eq	6c <mbr_parse+0x6c>  // b.none
  34:	90000000 	adrp	x0, 0 <_GLOBAL_OFFSET_TABLE_>
  38:	f9400000 	ldr	x0, [x0]
  3c:	b9400003 	ldr	w3, [x0]
  40:	90000000 	adrp	x0, 0 <mbr_parse>
  44:	91000002 	add	x2, x0, #0x0
  48:	90000000 	adrp	x0, 0 <mbr_parse>
  4c:	91000001 	add	x1, x0, #0x0
  50:	90000000 	adrp	x0, 0 <mbr_parse>
  54:	91000000 	add	x0, x0, #0x0
  58:	2a0303e4 	mov	w4, w3
  5c:	aa0203e3 	mov	x3, x2
  60:	aa0103e2 	mov	x2, x1
  64:	52800241 	mov	w1, #0x12                  	// #18
  68:	94000000 	bl	0 <__panic>
  6c:	f9400ba3 	ldr	x3, [x29, #16]
  70:	9100a3a0 	add	x0, x29, #0x28
  74:	9106d000 	add	x0, x0, #0x1b4
  78:	d2800142 	mov	x2, #0xa                   	// #10
  7c:	aa0003e1 	mov	x1, x0
  80:	aa0303e0 	mov	x0, x3
  84:	94000000 	bl	0 <memcpy>
  88:	f9400ba0 	ldr	x0, [x29, #16]
  8c:	9100f003 	add	x3, x0, #0x3c
  90:	9100a3a0 	add	x0, x29, #0x28
  94:	91080000 	add	x0, x0, #0x200
  98:	d2800042 	mov	x2, #0x2                   	// #2
  9c:	aa0003e1 	mov	x1, x0
  a0:	aa0303e0 	mov	x0, x3
  a4:	94000000 	bl	0 <memcpy>
  a8:	b9022fbf 	str	wzr, [x29, #556]
  ac:	528037c0 	mov	w0, #0x1be                 	// #446
  b0:	b9022ba0 	str	w0, [x29, #552]
  b4:	14000042 	b	1bc <mbr_parse+0x1bc>
  b8:	b9822ba0 	ldrsw	x0, [x29, #552]
  bc:	9100a3a1 	add	x1, x29, #0x28
  c0:	8b000020 	add	x0, x1, x0
  c4:	39400003 	ldrb	w3, [x0]
  c8:	f9400ba2 	ldr	x2, [x29, #16]
  cc:	b9822fa1 	ldrsw	x1, [x29, #556]
  d0:	aa0103e0 	mov	x0, x1
  d4:	d37ff800 	lsl	x0, x0, #1
  d8:	8b010000 	add	x0, x0, x1
  dc:	d37ef400 	lsl	x0, x0, #2
  e0:	8b000040 	add	x0, x2, x0
  e4:	2a0303e1 	mov	w1, w3
  e8:	39003001 	strb	w1, [x0, #12]
  ec:	b9822ba0 	ldrsw	x0, [x29, #552]
  f0:	91001000 	add	x0, x0, #0x4
  f4:	9100a3a1 	add	x1, x29, #0x28
  f8:	8b000020 	add	x0, x1, x0
  fc:	39400003 	ldrb	w3, [x0]
 100:	f9400ba2 	ldr	x2, [x29, #16]
 104:	b9822fa1 	ldrsw	x1, [x29, #556]
 108:	aa0103e0 	mov	x0, x1
 10c:	d37ff800 	lsl	x0, x0, #1
 110:	8b010000 	add	x0, x0, x1
 114:	d37ef400 	lsl	x0, x0, #2
 118:	8b000040 	add	x0, x2, x0
 11c:	2a0303e1 	mov	w1, w3
 120:	39003401 	strb	w1, [x0, #13]
 124:	b9822fa1 	ldrsw	x1, [x29, #556]
 128:	aa0103e0 	mov	x0, x1
 12c:	d37ff800 	lsl	x0, x0, #1
 130:	8b010000 	add	x0, x0, x1
 134:	d37ef400 	lsl	x0, x0, #2
 138:	f9400ba1 	ldr	x1, [x29, #16]
 13c:	8b000020 	add	x0, x1, x0
 140:	91004003 	add	x3, x0, #0x10
 144:	b9822ba0 	ldrsw	x0, [x29, #552]
 148:	91002000 	add	x0, x0, #0x8
 14c:	9100a3a1 	add	x1, x29, #0x28
 150:	8b000020 	add	x0, x1, x0
 154:	d2800082 	mov	x2, #0x4                   	// #4
 158:	aa0003e1 	mov	x1, x0
 15c:	aa0303e0 	mov	x0, x3
 160:	94000000 	bl	0 <memcpy>
 164:	b9822fa1 	ldrsw	x1, [x29, #556]
 168:	aa0103e0 	mov	x0, x1
 16c:	d37ff800 	lsl	x0, x0, #1
 170:	8b010000 	add	x0, x0, x1
 174:	d37ef400 	lsl	x0, x0, #2
 178:	f9400ba1 	ldr	x1, [x29, #16]
 17c:	8b000020 	add	x0, x1, x0
 180:	91005003 	add	x3, x0, #0x14
 184:	b9822ba0 	ldrsw	x0, [x29, #552]
 188:	91003000 	add	x0, x0, #0xc
 18c:	9100a3a1 	add	x1, x29, #0x28
 190:	8b000020 	add	x0, x1, x0
 194:	d2800082 	mov	x2, #0x4                   	// #4
 198:	aa0003e1 	mov	x1, x0
 19c:	aa0303e0 	mov	x0, x3
 1a0:	94000000 	bl	0 <memcpy>
 1a4:	b9422ba0 	ldr	w0, [x29, #552]
 1a8:	11004000 	add	w0, w0, #0x10
 1ac:	b9022ba0 	str	w0, [x29, #552]
 1b0:	b9422fa0 	ldr	w0, [x29, #556]
 1b4:	11000400 	add	w0, w0, #0x1
 1b8:	b9022fa0 	str	w0, [x29, #556]
 1bc:	b9422fa0 	ldr	w0, [x29, #556]
 1c0:	71000c1f 	cmp	w0, #0x3
 1c4:	54fff7ad 	b.le	b8 <mbr_parse+0xb8>
 1c8:	d503201f 	nop
 1cc:	a9407bfd 	ldp	x29, x30, [sp]
 1d0:	9108c3ff 	add	sp, sp, #0x230
 1d4:	d65f03c0 	ret

00000000000001d8 <ebpb_parse>:
 1d8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 1dc:	910003fd 	mov	x29, sp
 1e0:	f90017a0 	str	x0, [x29, #40]
 1e4:	f90013a1 	str	x1, [x29, #32]
 1e8:	f9000fa2 	str	x2, [x29, #24]
 1ec:	b9003fbf 	str	wzr, [x29, #60]
 1f0:	b9003bbf 	str	wzr, [x29, #56]
 1f4:	14000022 	b	27c <ebpb_parse+0xa4>
 1f8:	f94013a2 	ldr	x2, [x29, #32]
 1fc:	b9803ba1 	ldrsw	x1, [x29, #56]
 200:	aa0103e0 	mov	x0, x1
 204:	d37ff800 	lsl	x0, x0, #1
 208:	8b010000 	add	x0, x0, x1
 20c:	d37ef400 	lsl	x0, x0, #2
 210:	8b000040 	add	x0, x2, x0
 214:	39403400 	ldrb	w0, [x0, #13]
 218:	71002c1f 	cmp	w0, #0xb
 21c:	54000160 	b.eq	248 <ebpb_parse+0x70>  // b.none
 220:	f94013a2 	ldr	x2, [x29, #32]
 224:	b9803ba1 	ldrsw	x1, [x29, #56]
 228:	aa0103e0 	mov	x0, x1
 22c:	d37ff800 	lsl	x0, x0, #1
 230:	8b010000 	add	x0, x0, x1
 234:	d37ef400 	lsl	x0, x0, #2
 238:	8b000040 	add	x0, x2, x0
 23c:	39403400 	ldrb	w0, [x0, #13]
 240:	7100301f 	cmp	w0, #0xc
 244:	54000161 	b.ne	270 <ebpb_parse+0x98>  // b.any
 248:	f94013a2 	ldr	x2, [x29, #32]
 24c:	b9803ba1 	ldrsw	x1, [x29, #56]
 250:	aa0103e0 	mov	x0, x1
 254:	d37ff800 	lsl	x0, x0, #1
 258:	8b010000 	add	x0, x0, x1
 25c:	d37ef400 	lsl	x0, x0, #2
 260:	8b000040 	add	x0, x2, x0
 264:	b9401000 	ldr	w0, [x0, #16]
 268:	b9003fa0 	str	w0, [x29, #60]
 26c:	14000007 	b	288 <ebpb_parse+0xb0>
 270:	b9403ba0 	ldr	w0, [x29, #56]
 274:	11000400 	add	w0, w0, #0x1
 278:	b9003ba0 	str	w0, [x29, #56]
 27c:	b9403ba0 	ldr	w0, [x29, #56]
 280:	71000c1f 	cmp	w0, #0x3
 284:	54fffbad 	b.le	1f8 <ebpb_parse+0x20>
 288:	b9403fa0 	ldr	w0, [x29, #60]
 28c:	7100001f 	cmp	w0, #0x0
 290:	54000161 	b.ne	2bc <ebpb_parse+0xe4>  // b.any
 294:	90000000 	adrp	x0, 0 <mbr_parse>
 298:	91000002 	add	x2, x0, #0x0
 29c:	90000000 	adrp	x0, 0 <mbr_parse>
 2a0:	91000001 	add	x1, x0, #0x0
 2a4:	90000000 	adrp	x0, 0 <mbr_parse>
 2a8:	91000000 	add	x0, x0, #0x0
 2ac:	aa0203e3 	mov	x3, x2
 2b0:	aa0103e2 	mov	x2, x1
 2b4:	528005c1 	mov	w1, #0x2e                  	// #46
 2b8:	94000000 	bl	0 <__panic>
 2bc:	f94017a0 	ldr	x0, [x29, #40]
 2c0:	f9400802 	ldr	x2, [x0, #16]
 2c4:	f9400fa1 	ldr	x1, [x29, #24]
 2c8:	b9403fa0 	ldr	w0, [x29, #60]
 2cc:	d63f0040 	blr	x2
 2d0:	7108001f 	cmp	w0, #0x200
 2d4:	54000200 	b.eq	314 <ebpb_parse+0x13c>  // b.none
 2d8:	90000000 	adrp	x0, 0 <_GLOBAL_OFFSET_TABLE_>
 2dc:	f9400000 	ldr	x0, [x0]
 2e0:	b9400003 	ldr	w3, [x0]
 2e4:	90000000 	adrp	x0, 0 <mbr_parse>
 2e8:	91000002 	add	x2, x0, #0x0
 2ec:	90000000 	adrp	x0, 0 <mbr_parse>
 2f0:	91000001 	add	x1, x0, #0x0
 2f4:	90000000 	adrp	x0, 0 <mbr_parse>
 2f8:	91000000 	add	x0, x0, #0x0
 2fc:	2a0303e5 	mov	w5, w3
 300:	b9403fa4 	ldr	w4, [x29, #60]
 304:	aa0203e3 	mov	x3, x2
 308:	aa0103e2 	mov	x2, x1
 30c:	52800621 	mov	w1, #0x31                  	// #49
 310:	94000000 	bl	0 <__panic>
 314:	d503201f 	nop
 318:	a8c47bfd 	ldp	x29, x30, [sp], #64
 31c:	d65f03c0 	ret

0000000000000320 <fat32_init>:
 320:	d10a03ff 	sub	sp, sp, #0x280
 324:	a9007bfd 	stp	x29, x30, [sp]
 328:	910003fd 	mov	x29, sp
 32c:	f9000fa0 	str	x0, [x29, #24]
 330:	12800000 	mov	w0, #0xffffffff            	// #-1
 334:	b9027fa0 	str	w0, [x29, #636]
 338:	90000000 	adrp	x0, 0 <mbr_parse>
 33c:	91000001 	add	x1, x0, #0x0
 340:	90000000 	adrp	x0, 0 <mbr_parse>
 344:	91000000 	add	x0, x0, #0x0
 348:	d2800402 	mov	x2, #0x20                  	// #32
 34c:	94000000 	bl	0 <__debug>
 350:	90000000 	adrp	x0, 0 <mbr_parse>
 354:	91000001 	add	x1, x0, #0x0
 358:	90000000 	adrp	x0, 0 <mbr_parse>
 35c:	91000000 	add	x0, x0, #0x0
 360:	d2800402 	mov	x2, #0x20                  	// #32
 364:	94000000 	bl	0 <__debug>
 368:	90000000 	adrp	x0, 0 <mbr_parse>
 36c:	91000001 	add	x1, x0, #0x0
 370:	90000000 	adrp	x0, 0 <mbr_parse>
 374:	91000000 	add	x0, x0, #0x0
 378:	d2800402 	mov	x2, #0x20                  	// #32
 37c:	94000000 	bl	0 <__debug>
 380:	d2801700 	mov	x0, #0xb8                  	// #184
 384:	94000000 	bl	0 <malloc>
 388:	f90137a0 	str	x0, [x29, #616]
 38c:	f94137a0 	ldr	x0, [x29, #616]
 390:	f100001f 	cmp	x0, #0x0
 394:	54000161 	b.ne	3c0 <fat32_init+0xa0>  // b.any
 398:	90000000 	adrp	x0, 0 <mbr_parse>
 39c:	91000002 	add	x2, x0, #0x0
 3a0:	90000000 	adrp	x0, 0 <mbr_parse>
 3a4:	91000001 	add	x1, x0, #0x0
 3a8:	90000000 	adrp	x0, 0 <mbr_parse>
 3ac:	91000000 	add	x0, x0, #0x0
 3b0:	aa0203e3 	mov	x3, x2
 3b4:	aa0103e2 	mov	x2, x1
 3b8:	52800821 	mov	w1, #0x41                  	// #65
 3bc:	94000000 	bl	0 <__panic>
 3c0:	910883a0 	add	x0, x29, #0x220
 3c4:	aa0003e1 	mov	x1, x0
 3c8:	f9400fa0 	ldr	x0, [x29, #24]
 3cc:	97ffff0d 	bl	0 <mbr_parse>
 3d0:	910083a1 	add	x1, x29, #0x20
 3d4:	910883a0 	add	x0, x29, #0x220
 3d8:	aa0103e2 	mov	x2, x1
 3dc:	aa0003e1 	mov	x1, x0
 3e0:	f9400fa0 	ldr	x0, [x29, #24]
 3e4:	97ffff7d 	bl	1d8 <ebpb_parse>
 3e8:	b9027bbf 	str	wzr, [x29, #632]
 3ec:	14000010 	b	42c <fat32_init+0x10c>
 3f0:	b9827ba1 	ldrsw	x1, [x29, #632]
 3f4:	aa0103e0 	mov	x0, x1
 3f8:	d37ff800 	lsl	x0, x0, #1
 3fc:	8b010000 	add	x0, x0, x1
 400:	d37ef400 	lsl	x0, x0, #2
 404:	9108b3a1 	add	x1, x29, #0x22c
 408:	38606820 	ldrb	w0, [x1, x0]
 40c:	7102001f 	cmp	w0, #0x80
 410:	54000081 	b.ne	420 <fat32_init+0x100>  // b.any
 414:	b9427ba0 	ldr	w0, [x29, #632]
 418:	b9027fa0 	str	w0, [x29, #636]
 41c:	14000007 	b	438 <fat32_init+0x118>
 420:	b9427ba0 	ldr	w0, [x29, #632]
 424:	11000400 	add	w0, w0, #0x1
 428:	b9027ba0 	str	w0, [x29, #632]
 42c:	b9427ba0 	ldr	w0, [x29, #632]
 430:	71000c1f 	cmp	w0, #0x3
 434:	54fffded 	b.le	3f0 <fat32_init+0xd0>
 438:	b9427fa0 	ldr	w0, [x29, #636]
 43c:	3100041f 	cmn	w0, #0x1
 440:	54000161 	b.ne	46c <fat32_init+0x14c>  // b.any
 444:	90000000 	adrp	x0, 0 <mbr_parse>
 448:	91000002 	add	x2, x0, #0x0
 44c:	90000000 	adrp	x0, 0 <mbr_parse>
 450:	91000001 	add	x1, x0, #0x0
 454:	90000000 	adrp	x0, 0 <mbr_parse>
 458:	91000000 	add	x0, x0, #0x0
 45c:	aa0203e3 	mov	x3, x2
 460:	aa0103e2 	mov	x2, x1
 464:	528009a1 	mov	w1, #0x4d                  	// #77
 468:	94000000 	bl	0 <__panic>
 46c:	b9827fa1 	ldrsw	x1, [x29, #636]
 470:	aa0103e0 	mov	x0, x1
 474:	d37ff800 	lsl	x0, x0, #1
 478:	8b010000 	add	x0, x0, x1
 47c:	d37ef400 	lsl	x0, x0, #2
 480:	9108c3a1 	add	x1, x29, #0x230
 484:	b8606820 	ldr	w0, [x1, x0]
 488:	79405fa1 	ldrh	w1, [x29, #46]
 48c:	0b010001 	add	w1, w0, w1
 490:	f94137a0 	ldr	x0, [x29, #616]
 494:	b900a801 	str	w1, [x0, #168]
 498:	f94137a0 	ldr	x0, [x29, #616]
 49c:	91028003 	add	x3, x0, #0xa0
 4a0:	910083a0 	add	x0, x29, #0x20
 4a4:	91002c00 	add	x0, x0, #0xb
 4a8:	d2800042 	mov	x2, #0x2                   	// #2
 4ac:	aa0003e1 	mov	x1, x0
 4b0:	aa0303e0 	mov	x0, x3
 4b4:	94000000 	bl	0 <memcpy>
 4b8:	3940b7a1 	ldrb	w1, [x29, #45]
 4bc:	f94137a0 	ldr	x0, [x29, #616]
 4c0:	39028801 	strb	w1, [x0, #162]
 4c4:	b9404fa1 	ldr	w1, [x29, #76]
 4c8:	f94137a0 	ldr	x0, [x29, #616]
 4cc:	b900b001 	str	w1, [x0, #176]
 4d0:	3901e3bf 	strb	wzr, [x29, #120]
 4d4:	b94047a1 	ldr	w1, [x29, #68]
 4d8:	f94137a0 	ldr	x0, [x29, #616]
 4dc:	b900a401 	str	w1, [x0, #164]
 4e0:	f94137a0 	ldr	x0, [x29, #616]
 4e4:	b940a801 	ldr	w1, [x0, #168]
 4e8:	3940c3a0 	ldrb	w0, [x29, #48]
 4ec:	2a0003e2 	mov	w2, w0
 4f0:	b94047a0 	ldr	w0, [x29, #68]
 4f4:	1b007c40 	mul	w0, w2, w0
 4f8:	0b000021 	add	w1, w1, w0
 4fc:	f94137a0 	ldr	x0, [x29, #616]
 500:	b900ac01 	str	w1, [x0, #172]
 504:	f94137a0 	ldr	x0, [x29, #616]
 508:	f90133a0 	str	x0, [x29, #608]
 50c:	f94133a0 	ldr	x0, [x29, #608]
 510:	91002001 	add	x1, x0, #0x8
 514:	f9400fa0 	ldr	x0, [x29, #24]
 518:	aa0103e2 	mov	x2, x1
 51c:	aa0003e3 	mov	x3, x0
 520:	a9400460 	ldp	x0, x1, [x3]
 524:	a9000440 	stp	x0, x1, [x2]
 528:	f9400860 	ldr	x0, [x3, #16]
 52c:	f9000840 	str	x0, [x2, #16]
 530:	f94137a0 	ldr	x0, [x29, #616]
 534:	79414000 	ldrh	w0, [x0, #160]
 538:	2a0003e1 	mov	w1, w0
 53c:	f94133a0 	ldr	x0, [x29, #608]
 540:	b9000401 	str	w1, [x0, #4]
 544:	f94137a0 	ldr	x0, [x29, #616]
 548:	b940a801 	ldr	w1, [x0, #168]
 54c:	f94133a0 	ldr	x0, [x29, #608]
 550:	b9000001 	str	w1, [x0]
 554:	b90277bf 	str	wzr, [x29, #628]
 558:	1400000a 	b	580 <fat32_init+0x260>
 55c:	f94133a0 	ldr	x0, [x29, #608]
 560:	91008001 	add	x1, x0, #0x20
 564:	b98277a0 	ldrsw	x0, [x29, #628]
 568:	d37df000 	lsl	x0, x0, #3
 56c:	8b000020 	add	x0, x1, x0
 570:	f900001f 	str	xzr, [x0]
 574:	b94277a0 	ldr	w0, [x29, #628]
 578:	11000400 	add	w0, w0, #0x1
 57c:	b90277a0 	str	w0, [x29, #628]
 580:	b94277a0 	ldr	w0, [x29, #628]
 584:	71003c1f 	cmp	w0, #0xf
 588:	54fffead 	b.le	55c <fat32_init+0x23c>
 58c:	f94137a0 	ldr	x0, [x29, #616]
 590:	a9407bfd 	ldp	x29, x30, [sp]
 594:	910a03ff 	add	sp, sp, #0x280
 598:	d65f03c0 	ret

000000000000059c <fat32_read_cluster>:
 59c:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 5a0:	910003fd 	mov	x29, sp
 5a4:	f90017a0 	str	x0, [x29, #40]
 5a8:	f90013a1 	str	x1, [x29, #32]
 5ac:	f9000fa2 	str	x2, [x29, #24]
 5b0:	f94017a0 	ldr	x0, [x29, #40]
 5b4:	39428800 	ldrb	w0, [x0, #162]
 5b8:	b90043a0 	str	w0, [x29, #64]
 5bc:	f94017a0 	ldr	x0, [x29, #40]
 5c0:	79414000 	ldrh	w0, [x0, #160]
 5c4:	b9003fa0 	str	w0, [x29, #60]
 5c8:	f90027bf 	str	xzr, [x29, #72]
 5cc:	b90047bf 	str	wzr, [x29, #68]
 5d0:	1400001d 	b	644 <fat32_read_cluster+0xa8>
 5d4:	f94017a3 	ldr	x3, [x29, #40]
 5d8:	f94017a0 	ldr	x0, [x29, #40]
 5dc:	b940ac00 	ldr	w0, [x0, #172]
 5e0:	2a0003e1 	mov	w1, w0
 5e4:	b94043a2 	ldr	w2, [x29, #64]
 5e8:	f94013a0 	ldr	x0, [x29, #32]
 5ec:	d1000800 	sub	x0, x0, #0x2
 5f0:	9b007c40 	mul	x0, x2, x0
 5f4:	8b000021 	add	x1, x1, x0
 5f8:	b94047a0 	ldr	w0, [x29, #68]
 5fc:	8b000024 	add	x4, x1, x0
 600:	b94047a1 	ldr	w1, [x29, #68]
 604:	b9403fa0 	ldr	w0, [x29, #60]
 608:	1b007c20 	mul	w0, w1, w0
 60c:	2a0003e0 	mov	w0, w0
 610:	f9400fa1 	ldr	x1, [x29, #24]
 614:	8b000020 	add	x0, x1, x0
 618:	aa0003e2 	mov	x2, x0
 61c:	aa0403e1 	mov	x1, x4
 620:	aa0303e0 	mov	x0, x3
 624:	94000000 	bl	0 <cd_read_sector>
 628:	aa0003e1 	mov	x1, x0
 62c:	f94027a0 	ldr	x0, [x29, #72]
 630:	8b010000 	add	x0, x0, x1
 634:	f90027a0 	str	x0, [x29, #72]
 638:	b94047a0 	ldr	w0, [x29, #68]
 63c:	11000400 	add	w0, w0, #0x1
 640:	b90047a0 	str	w0, [x29, #68]
 644:	b94047a1 	ldr	w1, [x29, #68]
 648:	b94043a0 	ldr	w0, [x29, #64]
 64c:	6b00003f 	cmp	w1, w0
 650:	54fffc23 	b.cc	5d4 <fat32_read_cluster+0x38>  // b.lo, b.ul, b.last
 654:	f94027a0 	ldr	x0, [x29, #72]
 658:	a8c57bfd 	ldp	x29, x30, [sp], #80
 65c:	d65f03c0 	ret

0000000000000660 <fat32_read_chain>:
 660:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 664:	910003fd 	mov	x29, sp
 668:	f90017a0 	str	x0, [x29, #40]
 66c:	f90013a1 	str	x1, [x29, #32]
 670:	f9000fa2 	str	x2, [x29, #24]
 674:	f94017a0 	ldr	x0, [x29, #40]
 678:	f9002ba0 	str	x0, [x29, #80]
 67c:	f94017a0 	ldr	x0, [x29, #40]
 680:	b940a800 	ldr	w0, [x0, #168]
 684:	2a0003e0 	mov	w0, w0
 688:	f90027a0 	str	x0, [x29, #72]
 68c:	f90037bf 	str	xzr, [x29, #104]
 690:	f94017a0 	ldr	x0, [x29, #40]
 694:	79414000 	ldrh	w0, [x0, #160]
 698:	b90047a0 	str	w0, [x29, #68]
 69c:	f94017a0 	ldr	x0, [x29, #40]
 6a0:	39428800 	ldrb	w0, [x0, #162]
 6a4:	39010fa0 	strb	w0, [x29, #67]
 6a8:	f94013a0 	ldr	x0, [x29, #32]
 6ac:	b90063a0 	str	w0, [x29, #96]
 6b0:	b94063a1 	ldr	w1, [x29, #96]
 6b4:	b94047a0 	ldr	w0, [x29, #68]
 6b8:	1ac00820 	udiv	w0, w1, w0
 6bc:	b9005fa0 	str	w0, [x29, #92]
 6c0:	b94047a0 	ldr	w0, [x29, #68]
 6c4:	94000000 	bl	0 <malloc>
 6c8:	f9001fa0 	str	x0, [x29, #56]
 6cc:	f9401fa0 	ldr	x0, [x29, #56]
 6d0:	f100001f 	cmp	x0, #0x0
 6d4:	54000061 	b.ne	6e0 <fat32_read_chain+0x80>  // b.any
 6d8:	d2800000 	mov	x0, #0x0                   	// #0
 6dc:	14000099 	b	940 <fat32_read_chain+0x2e0>
 6e0:	b9405fa1 	ldr	w1, [x29, #92]
 6e4:	f94027a0 	ldr	x0, [x29, #72]
 6e8:	8b000020 	add	x0, x1, x0
 6ec:	f9401fa2 	ldr	x2, [x29, #56]
 6f0:	aa0003e1 	mov	x1, x0
 6f4:	f9402ba0 	ldr	x0, [x29, #80]
 6f8:	94000000 	bl	0 <cd_read_sector>
 6fc:	f100001f 	cmp	x0, #0x0
 700:	540001e1 	b.ne	73c <fat32_read_chain+0xdc>  // b.any
 704:	b9405fa1 	ldr	w1, [x29, #92]
 708:	f94027a0 	ldr	x0, [x29, #72]
 70c:	8b000023 	add	x3, x1, x0
 710:	90000000 	adrp	x0, 0 <mbr_parse>
 714:	91000002 	add	x2, x0, #0x0
 718:	90000000 	adrp	x0, 0 <mbr_parse>
 71c:	91000001 	add	x1, x0, #0x0
 720:	90000000 	adrp	x0, 0 <mbr_parse>
 724:	91000000 	add	x0, x0, #0x0
 728:	aa0303e4 	mov	x4, x3
 72c:	aa0203e3 	mov	x3, x2
 730:	aa0103e2 	mov	x2, x1
 734:	52801381 	mov	w1, #0x9c                  	// #156
 738:	94000000 	bl	0 <__panic>
 73c:	b94063a0 	ldr	w0, [x29, #96]
 740:	b94047a1 	ldr	w1, [x29, #68]
 744:	1ac10802 	udiv	w2, w0, w1
 748:	b94047a1 	ldr	w1, [x29, #68]
 74c:	1b017c41 	mul	w1, w2, w1
 750:	4b010000 	sub	w0, w0, w1
 754:	2a0003e0 	mov	w0, w0
 758:	d37ef400 	lsl	x0, x0, #2
 75c:	f9401fa1 	ldr	x1, [x29, #56]
 760:	8b000020 	add	x0, x1, x0
 764:	b9400000 	ldr	w0, [x0]
 768:	12006c00 	and	w0, w0, #0xfffffff
 76c:	b90067a0 	str	w0, [x29, #100]
 770:	b94067a0 	ldr	w0, [x29, #100]
 774:	7100001f 	cmp	w0, #0x0
 778:	54000d80 	b.eq	928 <fat32_read_chain+0x2c8>  // b.none
 77c:	39410fa1 	ldrb	w1, [x29, #67]
 780:	b94047a0 	ldr	w0, [x29, #68]
 784:	1b007c20 	mul	w0, w1, w0
 788:	2a0003e0 	mov	w0, w0
 78c:	94000000 	bl	0 <malloc>
 790:	aa0003e1 	mov	x1, x0
 794:	f9400fa0 	ldr	x0, [x29, #24]
 798:	f9000001 	str	x1, [x0]
 79c:	f9400fa0 	ldr	x0, [x29, #24]
 7a0:	f9400000 	ldr	x0, [x0]
 7a4:	f100001f 	cmp	x0, #0x0
 7a8:	54000c40 	b.eq	930 <fat32_read_chain+0x2d0>  // b.none
 7ac:	b94063a3 	ldr	w3, [x29, #96]
 7b0:	f9400fa0 	ldr	x0, [x29, #24]
 7b4:	f9400001 	ldr	x1, [x0]
 7b8:	f94037a0 	ldr	x0, [x29, #104]
 7bc:	8b000020 	add	x0, x1, x0
 7c0:	aa0003e2 	mov	x2, x0
 7c4:	aa0303e1 	mov	x1, x3
 7c8:	f94017a0 	ldr	x0, [x29, #40]
 7cc:	94000000 	bl	59c <fat32_read_cluster>
 7d0:	aa0003e1 	mov	x1, x0
 7d4:	f94037a0 	ldr	x0, [x29, #104]
 7d8:	8b010000 	add	x0, x0, x1
 7dc:	f90037a0 	str	x0, [x29, #104]
 7e0:	b94067a0 	ldr	w0, [x29, #100]
 7e4:	51000801 	sub	w1, w0, #0x2
 7e8:	529ffda0 	mov	w0, #0xffed                	// #65517
 7ec:	72a1ffe0 	movk	w0, #0xfff, lsl #16
 7f0:	6b00003f 	cmp	w1, w0
 7f4:	54000888 	b.hi	904 <fat32_read_chain+0x2a4>  // b.pmore
 7f8:	b94067a1 	ldr	w1, [x29, #100]
 7fc:	b94047a0 	ldr	w0, [x29, #68]
 800:	1ac00820 	udiv	w0, w1, w0
 804:	b9405fa1 	ldr	w1, [x29, #92]
 808:	6b00003f 	cmp	w1, w0
 80c:	54000380 	b.eq	87c <fat32_read_chain+0x21c>  // b.none
 810:	b94067a1 	ldr	w1, [x29, #100]
 814:	b94047a0 	ldr	w0, [x29, #68]
 818:	1ac00820 	udiv	w0, w1, w0
 81c:	b9005fa0 	str	w0, [x29, #92]
 820:	b9405fa1 	ldr	w1, [x29, #92]
 824:	f94027a0 	ldr	x0, [x29, #72]
 828:	8b000020 	add	x0, x1, x0
 82c:	f9401fa2 	ldr	x2, [x29, #56]
 830:	aa0003e1 	mov	x1, x0
 834:	f9402ba0 	ldr	x0, [x29, #80]
 838:	94000000 	bl	0 <cd_read_sector>
 83c:	f100001f 	cmp	x0, #0x0
 840:	540001e1 	b.ne	87c <fat32_read_chain+0x21c>  // b.any
 844:	b9405fa1 	ldr	w1, [x29, #92]
 848:	f94027a0 	ldr	x0, [x29, #72]
 84c:	8b000023 	add	x3, x1, x0
 850:	90000000 	adrp	x0, 0 <mbr_parse>
 854:	91000002 	add	x2, x0, #0x0
 858:	90000000 	adrp	x0, 0 <mbr_parse>
 85c:	91000001 	add	x1, x0, #0x0
 860:	90000000 	adrp	x0, 0 <mbr_parse>
 864:	91000000 	add	x0, x0, #0x0
 868:	aa0303e4 	mov	x4, x3
 86c:	aa0203e3 	mov	x3, x2
 870:	aa0103e2 	mov	x2, x1
 874:	52801801 	mov	w1, #0xc0                  	// #192
 878:	94000000 	bl	0 <__panic>
 87c:	b94067a0 	ldr	w0, [x29, #100]
 880:	b90063a0 	str	w0, [x29, #96]
 884:	b94067a0 	ldr	w0, [x29, #100]
 888:	b94047a1 	ldr	w1, [x29, #68]
 88c:	1ac10802 	udiv	w2, w0, w1
 890:	b94047a1 	ldr	w1, [x29, #68]
 894:	1b017c41 	mul	w1, w2, w1
 898:	4b010000 	sub	w0, w0, w1
 89c:	2a0003e0 	mov	w0, w0
 8a0:	d37ef400 	lsl	x0, x0, #2
 8a4:	f9401fa1 	ldr	x1, [x29, #56]
 8a8:	8b000020 	add	x0, x1, x0
 8ac:	b9400000 	ldr	w0, [x0]
 8b0:	12006c00 	and	w0, w0, #0xfffffff
 8b4:	b90067a0 	str	w0, [x29, #100]
 8b8:	f9400fa0 	ldr	x0, [x29, #24]
 8bc:	f9400002 	ldr	x2, [x0]
 8c0:	39410fa1 	ldrb	w1, [x29, #67]
 8c4:	b94047a0 	ldr	w0, [x29, #68]
 8c8:	1b007c20 	mul	w0, w1, w0
 8cc:	2a0003e1 	mov	w1, w0
 8d0:	f94037a0 	ldr	x0, [x29, #104]
 8d4:	8b000020 	add	x0, x1, x0
 8d8:	aa0003e1 	mov	x1, x0
 8dc:	aa0203e0 	mov	x0, x2
 8e0:	94000000 	bl	0 <realloc>
 8e4:	aa0003e1 	mov	x1, x0
 8e8:	f9400fa0 	ldr	x0, [x29, #24]
 8ec:	f9000001 	str	x1, [x0]
 8f0:	f9400fa0 	ldr	x0, [x29, #24]
 8f4:	f100001f 	cmp	x0, #0x0
 8f8:	54fff5a1 	b.ne	7ac <fat32_read_chain+0x14c>  // b.any
 8fc:	f90037bf 	str	xzr, [x29, #104]
 900:	1400000d 	b	934 <fat32_read_chain+0x2d4>
 904:	d503201f 	nop
 908:	90000000 	adrp	x0, 0 <mbr_parse>
 90c:	91000001 	add	x1, x0, #0x0
 910:	90000000 	adrp	x0, 0 <mbr_parse>
 914:	91000000 	add	x0, x0, #0x0
 918:	f94013a3 	ldr	x3, [x29, #32]
 91c:	f94037a2 	ldr	x2, [x29, #104]
 920:	94000000 	bl	0 <__debug>
 924:	14000004 	b	934 <fat32_read_chain+0x2d4>
 928:	d503201f 	nop
 92c:	14000002 	b	934 <fat32_read_chain+0x2d4>
 930:	d503201f 	nop
 934:	f9401fa0 	ldr	x0, [x29, #56]
 938:	94000000 	bl	0 <free>
 93c:	f94037a0 	ldr	x0, [x29, #104]
 940:	a8c77bfd 	ldp	x29, x30, [sp], #112
 944:	d65f03c0 	ret

0000000000000948 <fat32_find_entry>:
 948:	d10903ff 	sub	sp, sp, #0x240
 94c:	a9007bfd 	stp	x29, x30, [sp]
 950:	910003fd 	mov	x29, sp
 954:	f90017a0 	str	x0, [x29, #40]
 958:	f90013a1 	str	x1, [x29, #32]
 95c:	f9000fa2 	str	x2, [x29, #24]
 960:	f9011fbf 	str	xzr, [x29, #568]
 964:	14000037 	b	a40 <fat32_find_entry+0xf8>
 968:	f9411fa0 	ldr	x0, [x29, #568]
 96c:	d37be800 	lsl	x0, x0, #5
 970:	f94013a1 	ldr	x1, [x29, #32]
 974:	8b000020 	add	x0, x1, x0
 978:	9100c3a1 	add	x1, x29, #0x30
 97c:	94000000 	bl	a78 <fat32_parse_name>
 980:	f9011ba0 	str	x0, [x29, #560]
 984:	3940c3a0 	ldrb	w0, [x29, #48]
 988:	7100001f 	cmp	w0, #0x0
 98c:	540000e1 	b.ne	9a8 <fat32_find_entry+0x60>  // b.any
 990:	f9411ba1 	ldr	x1, [x29, #560]
 994:	f9411fa0 	ldr	x0, [x29, #568]
 998:	8b000020 	add	x0, x1, x0
 99c:	91000400 	add	x0, x0, #0x1
 9a0:	f9011fa0 	str	x0, [x29, #568]
 9a4:	14000027 	b	a40 <fat32_find_entry+0xf8>
 9a8:	9100c3a2 	add	x2, x29, #0x30
 9ac:	90000000 	adrp	x0, 0 <mbr_parse>
 9b0:	91000001 	add	x1, x0, #0x0
 9b4:	90000000 	adrp	x0, 0 <mbr_parse>
 9b8:	91000000 	add	x0, x0, #0x0
 9bc:	94000000 	bl	0 <__debug>
 9c0:	9100c3a0 	add	x0, x29, #0x30
 9c4:	aa0003e1 	mov	x1, x0
 9c8:	f94017a0 	ldr	x0, [x29, #40]
 9cc:	94000000 	bl	0 <strcmp>
 9d0:	7100001f 	cmp	w0, #0x0
 9d4:	540002c1 	b.ne	a2c <fat32_find_entry+0xe4>  // b.any
 9d8:	f9411fa1 	ldr	x1, [x29, #568]
 9dc:	f9411ba0 	ldr	x0, [x29, #560]
 9e0:	8b000020 	add	x0, x1, x0
 9e4:	d37be800 	lsl	x0, x0, #5
 9e8:	f94013a1 	ldr	x1, [x29, #32]
 9ec:	8b000020 	add	x0, x1, x0
 9f0:	aa0003e2 	mov	x2, x0
 9f4:	90000000 	adrp	x0, 0 <mbr_parse>
 9f8:	91000001 	add	x1, x0, #0x0
 9fc:	90000000 	adrp	x0, 0 <mbr_parse>
 a00:	91000000 	add	x0, x0, #0x0
 a04:	aa0203e3 	mov	x3, x2
 a08:	f94017a2 	ldr	x2, [x29, #40]
 a0c:	94000000 	bl	0 <__debug>
 a10:	f9411fa1 	ldr	x1, [x29, #568]
 a14:	f9411ba0 	ldr	x0, [x29, #560]
 a18:	8b000020 	add	x0, x1, x0
 a1c:	d37be800 	lsl	x0, x0, #5
 a20:	f94013a1 	ldr	x1, [x29, #32]
 a24:	8b000020 	add	x0, x1, x0
 a28:	14000011 	b	a6c <fat32_find_entry+0x124>
 a2c:	f9411ba1 	ldr	x1, [x29, #560]
 a30:	f9411fa0 	ldr	x0, [x29, #568]
 a34:	8b000020 	add	x0, x1, x0
 a38:	91000400 	add	x0, x0, #0x1
 a3c:	f9011fa0 	str	x0, [x29, #568]
 a40:	f9411fa1 	ldr	x1, [x29, #568]
 a44:	f9400fa0 	ldr	x0, [x29, #24]
 a48:	eb00003f 	cmp	x1, x0
 a4c:	54fff8e3 	b.cc	968 <fat32_find_entry+0x20>  // b.lo, b.ul, b.last
 a50:	90000000 	adrp	x0, 0 <mbr_parse>
 a54:	91000001 	add	x1, x0, #0x0
 a58:	90000000 	adrp	x0, 0 <mbr_parse>
 a5c:	91000000 	add	x0, x0, #0x0
 a60:	f94017a2 	ldr	x2, [x29, #40]
 a64:	94000000 	bl	0 <__debug>
 a68:	d2800000 	mov	x0, #0x0                   	// #0
 a6c:	a9407bfd 	ldp	x29, x30, [sp]
 a70:	910903ff 	add	sp, sp, #0x240
 a74:	d65f03c0 	ret

0000000000000a78 <fat32_parse_name>:
 a78:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
 a7c:	910003fd 	mov	x29, sp
 a80:	f9000bf3 	str	x19, [sp, #16]
 a84:	f90017a0 	str	x0, [x29, #40]
 a88:	f90013a1 	str	x1, [x29, #32]
 a8c:	f90027bf 	str	xzr, [x29, #72]
 a90:	b90047bf 	str	wzr, [x29, #68]
 a94:	b90043bf 	str	wzr, [x29, #64]
 a98:	f94017a0 	ldr	x0, [x29, #40]
 a9c:	39402c00 	ldrb	w0, [x0, #11]
 aa0:	71003c1f 	cmp	w0, #0xf
 aa4:	54000841 	b.ne	bac <fat32_parse_name+0x134>  // b.any
 aa8:	14000039 	b	b8c <fat32_parse_name+0x114>
 aac:	f94027a0 	ldr	x0, [x29, #72]
 ab0:	d37be800 	lsl	x0, x0, #5
 ab4:	f94017a1 	ldr	x1, [x29, #40]
 ab8:	8b000020 	add	x0, x1, x0
 abc:	39400000 	ldrb	w0, [x0]
 ac0:	12001000 	and	w0, w0, #0x1f
 ac4:	51000401 	sub	w1, w0, #0x1
 ac8:	528001a0 	mov	w0, #0xd                   	// #13
 acc:	1b007c20 	mul	w0, w1, w0
 ad0:	93407c00 	sxtw	x0, w0
 ad4:	f94013a1 	ldr	x1, [x29, #32]
 ad8:	8b000020 	add	x0, x1, x0
 adc:	f9001fa0 	str	x0, [x29, #56]
 ae0:	f94027a0 	ldr	x0, [x29, #72]
 ae4:	d37be800 	lsl	x0, x0, #5
 ae8:	f94017a1 	ldr	x1, [x29, #40]
 aec:	8b000020 	add	x0, x1, x0
 af0:	91000401 	add	x1, x0, #0x1
 af4:	9100c3a0 	add	x0, x29, #0x30
 af8:	d2800142 	mov	x2, #0xa                   	// #10
 afc:	94000000 	bl	0 <utf16ntoascii>
 b00:	d28000a2 	mov	x2, #0x5                   	// #5
 b04:	aa0003e1 	mov	x1, x0
 b08:	f9401fa0 	ldr	x0, [x29, #56]
 b0c:	94000000 	bl	0 <strncpy>
 b10:	f9401fa0 	ldr	x0, [x29, #56]
 b14:	91001413 	add	x19, x0, #0x5
 b18:	f94027a0 	ldr	x0, [x29, #72]
 b1c:	d37be800 	lsl	x0, x0, #5
 b20:	f94017a1 	ldr	x1, [x29, #40]
 b24:	8b000020 	add	x0, x1, x0
 b28:	91003801 	add	x1, x0, #0xe
 b2c:	9100c3a0 	add	x0, x29, #0x30
 b30:	d2800182 	mov	x2, #0xc                   	// #12
 b34:	94000000 	bl	0 <utf16ntoascii>
 b38:	d28000c2 	mov	x2, #0x6                   	// #6
 b3c:	aa0003e1 	mov	x1, x0
 b40:	aa1303e0 	mov	x0, x19
 b44:	94000000 	bl	0 <strncpy>
 b48:	f9401fa0 	ldr	x0, [x29, #56]
 b4c:	91002c13 	add	x19, x0, #0xb
 b50:	f94027a0 	ldr	x0, [x29, #72]
 b54:	d37be800 	lsl	x0, x0, #5
 b58:	f94017a1 	ldr	x1, [x29, #40]
 b5c:	8b000020 	add	x0, x1, x0
 b60:	91007001 	add	x1, x0, #0x1c
 b64:	9100c3a0 	add	x0, x29, #0x30
 b68:	d2800082 	mov	x2, #0x4                   	// #4
 b6c:	94000000 	bl	0 <utf16ntoascii>
 b70:	d2800042 	mov	x2, #0x2                   	// #2
 b74:	aa0003e1 	mov	x1, x0
 b78:	aa1303e0 	mov	x0, x19
 b7c:	94000000 	bl	0 <strncpy>
 b80:	f94027a0 	ldr	x0, [x29, #72]
 b84:	91000400 	add	x0, x0, #0x1
 b88:	f90027a0 	str	x0, [x29, #72]
 b8c:	f94027a0 	ldr	x0, [x29, #72]
 b90:	d37be800 	lsl	x0, x0, #5
 b94:	f94017a1 	ldr	x1, [x29, #40]
 b98:	8b000020 	add	x0, x1, x0
 b9c:	39402c00 	ldrb	w0, [x0, #11]
 ba0:	71003c1f 	cmp	w0, #0xf
 ba4:	54fff840 	b.eq	aac <fat32_parse_name+0x34>  // b.none
 ba8:	14000050 	b	ce8 <fat32_parse_name+0x270>
 bac:	f94017a0 	ldr	x0, [x29, #40]
 bb0:	39400000 	ldrb	w0, [x0]
 bb4:	7103941f 	cmp	w0, #0xe5
 bb8:	54000181 	b.ne	be8 <fat32_parse_name+0x170>  // b.any
 bbc:	f94013a0 	ldr	x0, [x29, #32]
 bc0:	3900001f 	strb	wzr, [x0]
 bc4:	14000049 	b	ce8 <fat32_parse_name+0x270>
 bc8:	f94017a1 	ldr	x1, [x29, #40]
 bcc:	b98047a0 	ldrsw	x0, [x29, #68]
 bd0:	38606820 	ldrb	w0, [x1, x0]
 bd4:	7100001f 	cmp	w0, #0x0
 bd8:	54000100 	b.eq	bf8 <fat32_parse_name+0x180>  // b.none
 bdc:	b94047a0 	ldr	w0, [x29, #68]
 be0:	11000400 	add	w0, w0, #0x1
 be4:	b90047a0 	str	w0, [x29, #68]
 be8:	b94047a0 	ldr	w0, [x29, #68]
 bec:	71001c1f 	cmp	w0, #0x7
 bf0:	54fffecd 	b.le	bc8 <fat32_parse_name+0x150>
 bf4:	14000002 	b	bfc <fat32_parse_name+0x184>
 bf8:	d503201f 	nop
 bfc:	f94017a0 	ldr	x0, [x29, #40]
 c00:	b98047a1 	ldrsw	x1, [x29, #68]
 c04:	aa0103e2 	mov	x2, x1
 c08:	aa0003e1 	mov	x1, x0
 c0c:	f94013a0 	ldr	x0, [x29, #32]
 c10:	94000000 	bl	0 <strncpy>
 c14:	f94017a0 	ldr	x0, [x29, #40]
 c18:	39402000 	ldrb	w0, [x0, #8]
 c1c:	7100001f 	cmp	w0, #0x0
 c20:	540005c0 	b.eq	cd8 <fat32_parse_name+0x260>  // b.none
 c24:	b94047a0 	ldr	w0, [x29, #68]
 c28:	b90043a0 	str	w0, [x29, #64]
 c2c:	b90047bf 	str	wzr, [x29, #68]
 c30:	b98043a0 	ldrsw	x0, [x29, #64]
 c34:	f94013a1 	ldr	x1, [x29, #32]
 c38:	8b000020 	add	x0, x1, x0
 c3c:	528005c1 	mov	w1, #0x2e                  	// #46
 c40:	39000001 	strb	w1, [x0]
 c44:	14000009 	b	c68 <fat32_parse_name+0x1f0>
 c48:	f94017a1 	ldr	x1, [x29, #40]
 c4c:	b98047a0 	ldrsw	x0, [x29, #68]
 c50:	38606820 	ldrb	w0, [x1, x0]
 c54:	7100001f 	cmp	w0, #0x0
 c58:	54000100 	b.eq	c78 <fat32_parse_name+0x200>  // b.none
 c5c:	b94047a0 	ldr	w0, [x29, #68]
 c60:	11000400 	add	w0, w0, #0x1
 c64:	b90047a0 	str	w0, [x29, #68]
 c68:	b94047a0 	ldr	w0, [x29, #68]
 c6c:	7100081f 	cmp	w0, #0x2
 c70:	54fffecd 	b.le	c48 <fat32_parse_name+0x1d0>
 c74:	14000002 	b	c7c <fat32_parse_name+0x204>
 c78:	d503201f 	nop
 c7c:	b98043a0 	ldrsw	x0, [x29, #64]
 c80:	91000400 	add	x0, x0, #0x1
 c84:	f94013a1 	ldr	x1, [x29, #32]
 c88:	8b000033 	add	x19, x1, x0
 c8c:	f94017a0 	ldr	x0, [x29, #40]
 c90:	91002001 	add	x1, x0, #0x8
 c94:	9100c3a0 	add	x0, x29, #0x30
 c98:	d2800062 	mov	x2, #0x3                   	// #3
 c9c:	94000000 	bl	0 <utf16ntoascii>
 ca0:	aa0003e1 	mov	x1, x0
 ca4:	b98047a0 	ldrsw	x0, [x29, #68]
 ca8:	aa0003e2 	mov	x2, x0
 cac:	aa1303e0 	mov	x0, x19
 cb0:	94000000 	bl	0 <strncpy>
 cb4:	b94043a0 	ldr	w0, [x29, #64]
 cb8:	11000401 	add	w1, w0, #0x1
 cbc:	b94047a0 	ldr	w0, [x29, #68]
 cc0:	0b000020 	add	w0, w1, w0
 cc4:	93407c00 	sxtw	x0, w0
 cc8:	f94013a1 	ldr	x1, [x29, #32]
 ccc:	8b000020 	add	x0, x1, x0
 cd0:	3900001f 	strb	wzr, [x0]
 cd4:	14000005 	b	ce8 <fat32_parse_name+0x270>
 cd8:	b98047a0 	ldrsw	x0, [x29, #68]
 cdc:	f94013a1 	ldr	x1, [x29, #32]
 ce0:	8b000020 	add	x0, x1, x0
 ce4:	3900001f 	strb	wzr, [x0]
 ce8:	f94027a0 	ldr	x0, [x29, #72]
 cec:	f9400bf3 	ldr	x19, [sp, #16]
 cf0:	a8c57bfd 	ldp	x29, x30, [sp], #80
 cf4:	d65f03c0 	ret

0000000000000cf8 <fat32_open>:
 cf8:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
 cfc:	910003fd 	mov	x29, sp
 d00:	f9000fa0 	str	x0, [x29, #24]
 d04:	f9000ba1 	str	x1, [x29, #16]
 d08:	f90027bf 	str	xzr, [x29, #72]
 d0c:	52800020 	mov	w0, #0x1                   	// #1
 d10:	39019fa0 	strb	w0, [x29, #103]
 d14:	f9002fbf 	str	xzr, [x29, #88]
 d18:	9100a3a0 	add	x0, x29, #0x28
 d1c:	d2800402 	mov	x2, #0x20                  	// #32
 d20:	52800001 	mov	w1, #0x0                   	// #0
 d24:	94000000 	bl	0 <memset>
 d28:	f9400ba0 	ldr	x0, [x29, #16]
 d2c:	f100001f 	cmp	x0, #0x0
 d30:	54000161 	b.ne	d5c <fat32_open+0x64>  // b.any
 d34:	90000000 	adrp	x0, 0 <mbr_parse>
 d38:	91000002 	add	x2, x0, #0x0
 d3c:	90000000 	adrp	x0, 0 <mbr_parse>
 d40:	91000001 	add	x1, x0, #0x0
 d44:	90000000 	adrp	x0, 0 <mbr_parse>
 d48:	91000000 	add	x0, x0, #0x0
 d4c:	aa0203e3 	mov	x3, x2
 d50:	aa0103e2 	mov	x2, x1
 d54:	52802881 	mov	w1, #0x144                 	// #324
 d58:	94000000 	bl	0 <__panic>
 d5c:	f9400ba0 	ldr	x0, [x29, #16]
 d60:	94000000 	bl	0 <strlen>
 d64:	91000400 	add	x0, x0, #0x1
 d68:	94000000 	bl	0 <malloc>
 d6c:	f9002ba0 	str	x0, [x29, #80]
 d70:	f9402ba0 	ldr	x0, [x29, #80]
 d74:	f100001f 	cmp	x0, #0x0
 d78:	54000161 	b.ne	da4 <fat32_open+0xac>  // b.any
 d7c:	90000000 	adrp	x0, 0 <mbr_parse>
 d80:	91000002 	add	x2, x0, #0x0
 d84:	90000000 	adrp	x0, 0 <mbr_parse>
 d88:	91000001 	add	x1, x0, #0x0
 d8c:	90000000 	adrp	x0, 0 <mbr_parse>
 d90:	91000000 	add	x0, x0, #0x0
 d94:	aa0203e3 	mov	x3, x2
 d98:	aa0103e2 	mov	x2, x1
 d9c:	52802941 	mov	w1, #0x14a                 	// #330
 da0:	94000000 	bl	0 <__panic>
 da4:	f9400ba1 	ldr	x1, [x29, #16]
 da8:	f9402ba0 	ldr	x0, [x29, #80]
 dac:	94000000 	bl	0 <strcpy>
 db0:	90000000 	adrp	x0, 0 <mbr_parse>
 db4:	91000000 	add	x0, x0, #0x0
 db8:	aa0003e1 	mov	x1, x0
 dbc:	f9402ba0 	ldr	x0, [x29, #80]
 dc0:	94000000 	bl	0 <strtok>
 dc4:	f9003fa0 	str	x0, [x29, #120]
 dc8:	14000045 	b	edc <fat32_open+0x1e4>
 dcc:	39419fa0 	ldrb	w0, [x29, #103]
 dd0:	7100001f 	cmp	w0, #0x0
 dd4:	54000240 	b.eq	e1c <fat32_open+0x124>  // b.none
 dd8:	f9400fa0 	ldr	x0, [x29, #24]
 ddc:	b940b000 	ldr	w0, [x0, #176]
 de0:	2a0003e0 	mov	w0, w0
 de4:	910123a1 	add	x1, x29, #0x48
 de8:	aa0103e2 	mov	x2, x1
 dec:	aa0003e1 	mov	x1, x0
 df0:	f9400fa0 	ldr	x0, [x29, #24]
 df4:	94000000 	bl	660 <fat32_read_chain>
 df8:	d345fc00 	lsr	x0, x0, #5
 dfc:	f90037a0 	str	x0, [x29, #104]
 e00:	90000000 	adrp	x0, 0 <mbr_parse>
 e04:	91000001 	add	x1, x0, #0x0
 e08:	90000000 	adrp	x0, 0 <mbr_parse>
 e0c:	91000000 	add	x0, x0, #0x0
 e10:	94000000 	bl	0 <__debug>
 e14:	39019fbf 	strb	wzr, [x29, #103]
 e18:	1400001c 	b	e88 <fat32_open+0x190>
 e1c:	f9403ba0 	ldr	x0, [x29, #112]
 e20:	39402c00 	ldrb	w0, [x0, #11]
 e24:	121c0000 	and	w0, w0, #0x10
 e28:	7100001f 	cmp	w0, #0x0
 e2c:	54000c40 	b.eq	fb4 <fat32_open+0x2bc>  // b.none
 e30:	f9403ba0 	ldr	x0, [x29, #112]
 e34:	9100a3a2 	add	x2, x29, #0x28
 e38:	aa0003e3 	mov	x3, x0
 e3c:	a9400460 	ldp	x0, x1, [x3]
 e40:	a9000440 	stp	x0, x1, [x2]
 e44:	a9410460 	ldp	x0, x1, [x3, #16]
 e48:	a9010440 	stp	x0, x1, [x2, #16]
 e4c:	f94027a0 	ldr	x0, [x29, #72]
 e50:	94000000 	bl	0 <free>
 e54:	79407ba0 	ldrh	w0, [x29, #60]
 e58:	53103c00 	lsl	w0, w0, #16
 e5c:	2a0003e1 	mov	w1, w0
 e60:	794087a0 	ldrh	w0, [x29, #66]
 e64:	0b000020 	add	w0, w1, w0
 e68:	2a0003e0 	mov	w0, w0
 e6c:	910123a1 	add	x1, x29, #0x48
 e70:	aa0103e2 	mov	x2, x1
 e74:	aa0003e1 	mov	x1, x0
 e78:	f9400fa0 	ldr	x0, [x29, #24]
 e7c:	94000000 	bl	660 <fat32_read_chain>
 e80:	d345fc00 	lsr	x0, x0, #5
 e84:	f90037a0 	str	x0, [x29, #104]
 e88:	90000000 	adrp	x0, 0 <mbr_parse>
 e8c:	91000001 	add	x1, x0, #0x0
 e90:	90000000 	adrp	x0, 0 <mbr_parse>
 e94:	91000000 	add	x0, x0, #0x0
 e98:	f9403fa2 	ldr	x2, [x29, #120]
 e9c:	94000000 	bl	0 <__debug>
 ea0:	f94027a0 	ldr	x0, [x29, #72]
 ea4:	f94037a2 	ldr	x2, [x29, #104]
 ea8:	aa0003e1 	mov	x1, x0
 eac:	f9403fa0 	ldr	x0, [x29, #120]
 eb0:	94000000 	bl	948 <fat32_find_entry>
 eb4:	f9003ba0 	str	x0, [x29, #112]
 eb8:	f9403ba0 	ldr	x0, [x29, #112]
 ebc:	f100001f 	cmp	x0, #0x0
 ec0:	540007e0 	b.eq	fbc <fat32_open+0x2c4>  // b.none
 ec4:	90000000 	adrp	x0, 0 <mbr_parse>
 ec8:	91000000 	add	x0, x0, #0x0
 ecc:	aa0003e1 	mov	x1, x0
 ed0:	d2800000 	mov	x0, #0x0                   	// #0
 ed4:	94000000 	bl	0 <strtok>
 ed8:	f9003fa0 	str	x0, [x29, #120]
 edc:	f9403fa0 	ldr	x0, [x29, #120]
 ee0:	f100001f 	cmp	x0, #0x0
 ee4:	54fff741 	b.ne	dcc <fat32_open+0xd4>  // b.any
 ee8:	d2800400 	mov	x0, #0x20                  	// #32
 eec:	94000000 	bl	0 <malloc>
 ef0:	f9002fa0 	str	x0, [x29, #88]
 ef4:	f9402fa0 	ldr	x0, [x29, #88]
 ef8:	f100001f 	cmp	x0, #0x0
 efc:	54000640 	b.eq	fc4 <fat32_open+0x2cc>  // b.none
 f00:	39419fa0 	ldrb	w0, [x29, #103]
 f04:	7100001f 	cmp	w0, #0x0
 f08:	54000120 	b.eq	f2c <fat32_open+0x234>  // b.none
 f0c:	f9400fa0 	ldr	x0, [x29, #24]
 f10:	b940b001 	ldr	w1, [x0, #176]
 f14:	f9402fa0 	ldr	x0, [x29, #88]
 f18:	b9000001 	str	w1, [x0]
 f1c:	f9402fa0 	ldr	x0, [x29, #88]
 f20:	52800201 	mov	w1, #0x10                  	// #16
 f24:	39004001 	strb	w1, [x0, #16]
 f28:	14000028 	b	fc8 <fat32_open+0x2d0>
 f2c:	79407ba0 	ldrh	w0, [x29, #60]
 f30:	53103c00 	lsl	w0, w0, #16
 f34:	794087a1 	ldrh	w1, [x29, #66]
 f38:	0b010001 	add	w1, w0, w1
 f3c:	f9402fa0 	ldr	x0, [x29, #88]
 f40:	b9000001 	str	w1, [x0]
 f44:	3940cfa1 	ldrb	w1, [x29, #51]
 f48:	f9402fa0 	ldr	x0, [x29, #88]
 f4c:	39004001 	strb	w1, [x0, #16]
 f50:	f9402fa0 	ldr	x0, [x29, #88]
 f54:	f9400fa1 	ldr	x1, [x29, #24]
 f58:	f9000401 	str	x1, [x0, #8]
 f5c:	3940d7a1 	ldrb	w1, [x29, #53]
 f60:	f9402fa0 	ldr	x0, [x29, #88]
 f64:	39004401 	strb	w1, [x0, #17]
 f68:	79406fa1 	ldrh	w1, [x29, #54]
 f6c:	f9402fa0 	ldr	x0, [x29, #88]
 f70:	79002401 	strh	w1, [x0, #18]
 f74:	794073a1 	ldrh	w1, [x29, #56]
 f78:	f9402fa0 	ldr	x0, [x29, #88]
 f7c:	79002801 	strh	w1, [x0, #20]
 f80:	794077a1 	ldrh	w1, [x29, #58]
 f84:	f9402fa0 	ldr	x0, [x29, #88]
 f88:	79002c01 	strh	w1, [x0, #22]
 f8c:	79407fa1 	ldrh	w1, [x29, #62]
 f90:	f9402fa0 	ldr	x0, [x29, #88]
 f94:	79003001 	strh	w1, [x0, #24]
 f98:	794083a1 	ldrh	w1, [x29, #64]
 f9c:	f9402fa0 	ldr	x0, [x29, #88]
 fa0:	79003401 	strh	w1, [x0, #26]
 fa4:	b94047a1 	ldr	w1, [x29, #68]
 fa8:	f9402fa0 	ldr	x0, [x29, #88]
 fac:	b9001c01 	str	w1, [x0, #28]
 fb0:	14000006 	b	fc8 <fat32_open+0x2d0>
 fb4:	d503201f 	nop
 fb8:	14000004 	b	fc8 <fat32_open+0x2d0>
 fbc:	d503201f 	nop
 fc0:	14000002 	b	fc8 <fat32_open+0x2d0>
 fc4:	d503201f 	nop
 fc8:	f9402ba0 	ldr	x0, [x29, #80]
 fcc:	94000000 	bl	0 <free>
 fd0:	f94027a0 	ldr	x0, [x29, #72]
 fd4:	f100001f 	cmp	x0, #0x0
 fd8:	54000060 	b.eq	fe4 <fat32_open+0x2ec>  // b.none
 fdc:	f94027a0 	ldr	x0, [x29, #72]
 fe0:	94000000 	bl	0 <free>
 fe4:	f9402fa0 	ldr	x0, [x29, #88]
 fe8:	a8c87bfd 	ldp	x29, x30, [sp], #128
 fec:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000000000 <__func__.3009-0x268>:
   0:	276e6143 	.word	0x276e6143
   4:	65722074 	.word	0x65722074
   8:	4d206461 	.word	0x4d206461
   c:	66205242 	.word	0x66205242
  10:	206d6f72 	.word	0x206d6f72
  14:	61636473 	.word	0x61636473
  18:	202e6472 	.word	0x202e6472
  1c:	6f727245 	.word	0x6f727245
  20:	6f632072 	.word	0x6f632072
  24:	25206564 	.word	0x25206564
  28:	000a2e64 	.word	0x000a2e64
  2c:	00000000 	.word	0x00000000
  30:	2f637273 	.word	0x2f637273
  34:	33746166 	.word	0x33746166
  38:	00632e32 	.word	0x00632e32
  3c:	00000000 	.word	0x00000000
  40:	46206f4e 	.word	0x46206f4e
  44:	32335441 	.word	0x32335441
  48:	72617020 	.word	0x72617020
  4c:	69746974 	.word	0x69746974
  50:	77206e6f 	.word	0x77206e6f
  54:	66207361 	.word	0x66207361
  58:	646e756f 	.word	0x646e756f
  5c:	00000a21 	.word	0x00000a21
  60:	276e6143 	.word	0x276e6143
  64:	65722074 	.word	0x65722074
  68:	61206461 	.word	0x61206461
  6c:	6420796e 	.word	0x6420796e
  70:	20617461 	.word	0x20617461
  74:	6d6f7266 	.word	0x6d6f7266
  78:	63657320 	.word	0x63657320
  7c:	20726f74 	.word	0x20726f74
  80:	202e6425 	.word	0x202e6425
  84:	6f727245 	.word	0x6f727245
  88:	6f632072 	.word	0x6f632072
  8c:	25206564 	.word	0x25206564
  90:	00000a64 	.word	0x00000a64
  94:	00000000 	.word	0x00000000
  98:	657a6973 	.word	0x657a6973
  9c:	7228666f 	.word	0x7228666f
  a0:	6c756765 	.word	0x6c756765
  a4:	645f7261 	.word	0x645f7261
  a8:	655f7269 	.word	0x655f7269
  ac:	7972746e 	.word	0x7972746e
  b0:	203d2029 	.word	0x203d2029
  b4:	000a6425 	.word	0x000a6425
  b8:	657a6973 	.word	0x657a6973
  bc:	4c28666f 	.word	0x4c28666f
  c0:	645f4e46 	.word	0x645f4e46
  c4:	655f7269 	.word	0x655f7269
  c8:	7972746e 	.word	0x7972746e
  cc:	203d2029 	.word	0x203d2029
  d0:	000a6425 	.word	0x000a6425
  d4:	00000000 	.word	0x00000000
  d8:	657a6973 	.word	0x657a6973
  dc:	6428666f 	.word	0x6428666f
  e0:	655f7269 	.word	0x655f7269
  e4:	7972746e 	.word	0x7972746e
  e8:	2029745f 	.word	0x2029745f
  ec:	6425203d 	.word	0x6425203d
  f0:	0000000a 	.word	0x0000000a
  f4:	00000000 	.word	0x00000000
  f8:	6f727245 	.word	0x6f727245
  fc:	6e692072 	.word	0x6e692072
 100:	6c6c6120 	.word	0x6c6c6120
 104:	7461636f 	.word	0x7461636f
 108:	20676e69 	.word	0x20676e69
 10c:	6f6d656d 	.word	0x6f6d656d
 110:	66207972 	.word	0x66207972
 114:	4620726f 	.word	0x4620726f
 118:	32335441 	.word	0x32335441
 11c:	73797320 	.word	0x73797320
 120:	216d6574 	.word	0x216d6574
 124:	0000000a 	.word	0x0000000a
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
 264:	00000000 	.word	0x00000000

0000000000000268 <__func__.3009>:
 268:	33746166 	.inst	0x33746166 ; undefined
 26c:	6e695f32 	uqrshl	v18.8h, v25.8h, v9.8h
 270:	00007469 	.inst	0x00007469 ; undefined
 274:	00000000 	.inst	0x00000000 ; undefined

0000000000000278 <__func__.2984>:
 278:	5f72626d 	.inst	0x5f72626d ; undefined
 27c:	73726170 	.inst	0x73726170 ; undefined
 280:	00000065 	.inst	0x00000065 ; undefined
 284:	00000000 	.inst	0x00000000 ; undefined

0000000000000288 <__func__.3000>:
 288:	62706265 	.inst	0x62706265 ; undefined
 28c:	7261705f 	.inst	0x7261705f ; undefined
 290:	00006573 	.inst	0x00006573 ; undefined
 294:	00000000 	.inst	0x00000000 ; undefined

0000000000000298 <__func__.3044>:
 298:	33746166 	.inst	0x33746166 ; undefined
 29c:	65725f32 	fnmla	z18.h, p7/m, z25.h, z18.h
 2a0:	635f6461 	.inst	0x635f6461 ; undefined
 2a4:	6e696168 	rsubhn2	v8.8h, v11.4s, v9.4s
	...

00000000000002b0 <__func__.3056>:
 2b0:	33746166 	.inst	0x33746166 ; undefined
 2b4:	69665f32 	ldpsw	x18, x23, [x25, #-208]
 2b8:	655f646e 	fcmeq	p14.h, p1/z, z3.h, z31.h
 2bc:	7972746e 	ldrh	w14, [x3, #6458]
	...

00000000000002c8 <__func__.3090>:
 2c8:	33746166 	.inst	0x33746166 ; undefined
 2cc:	706f5f32 	adr	x18, deeb3 <fat32_open+0xde1bb>
 2d0:	地址 0x00000000000002d0 越界。


Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	00000cdd 	.inst	0x00000cdd ; undefined
   4:	00000004 	.inst	0x00000004 ; undefined
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined
  10:	0000000c 	.inst	0x0000000c ; undefined
	...
  20:	000ff000 	.inst	0x000ff000 ; undefined
	...
  30:	06010200 	.inst	0x06010200 ; undefined
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	00050202 	.inst	0x00050202 ; undefined
  3c:	03000000 	.inst	0x03000000 ; undefined
  40:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
  44:	08020074 	stxrb	w2, w20, [x3]
  48:	00000005 	.inst	0x00000005 ; undefined
  4c:	00000400 	.inst	0x00000400 ; undefined
  50:	2e020000 	ext	v0.8b, v0.8b, v2.8b, #0
  54:	00000058 	.inst	0x00000058 ; undefined
  58:	00080102 	.inst	0x00080102 ; undefined
  5c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  60:	00000000 	.inst	0x00000000 ; undefined
  64:	006a3102 	.inst	0x006a3102 ; undefined
  68:	02020000 	.inst	0x02020000 ; undefined
  6c:	00000007 	.inst	0x00000007 ; undefined
  70:	00000400 	.inst	0x00000400 ; undefined
  74:	34020000 	cbz	w0, 4074 <fat32_open+0x337c>
  78:	0000007c 	.inst	0x0000007c ; undefined
  7c:	00070402 	.inst	0x00070402 ; undefined
  80:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  84:	00000000 	.inst	0x00000000 ; undefined
  88:	008e3702 	.inst	0x008e3702 ; undefined
  8c:	08020000 	stxrb	w2, w0, [x0]
  90:	00000007 	.inst	0x00000007 ; undefined
  94:	00000400 	.inst	0x00000400 ; undefined
  98:	d8030000 	prfm	pldl1keep, 6098 <fat32_open+0x53a0>
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
 104:	710b0500 	subs	w0, w8, #0x2c1
 108:	00000000 	.inst	0x00000000 ; undefined
 10c:	00000006 	.inst	0x00000006 ; undefined
 110:	2a0c0500 	orr	w0, w8, w12, lsl #1
 114:	08000001 	stxrb	w0, w1, [x0]
 118:	00000006 	.inst	0x00000006 ; undefined
 11c:	560d0500 	.inst	0x560d0500 ; undefined
 120:	10000001 	adr	x1, 120 <.debug_info+0x120>
 124:	003f0900 	.inst	0x003f0900 ; NYI
 128:	08070000 	stxrb	w7, w0, [x0]
 12c:	00000125 	.inst	0x00000125 ; undefined
 130:	00003f0a 	.inst	0x00003f0a ; undefined
 134:	00014400 	.inst	0x00014400 ; undefined
 138:	00710b00 	.inst	0x00710b00 ; undefined
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
 174:	00711105 	.inst	0x00711105 ; undefined
 178:	06000000 	.inst	0x06000000 ; undefined
 17c:	00000000 	.inst	0x00000000 ; undefined
 180:	00711205 	.inst	0x00711205 ; undefined
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
 1f4:	005f3606 	.inst	0x005f3606 ; undefined
 1f8:	06a00000 	.inst	0x06a00000 ; undefined
 1fc:	00000000 	.inst	0x00000000 ; undefined
 200:	004d3706 	.inst	0x004d3706 ; undefined
 204:	06a20000 	.inst	0x06a20000 ; undefined
 208:	00000000 	.inst	0x00000000 ; undefined
 20c:	00713806 	.inst	0x00713806 ; undefined
 210:	06a40000 	.inst	0x06a40000 ; undefined
 214:	00000000 	.inst	0x00000000 ; undefined
 218:	00713906 	.inst	0x00713906 ; undefined
 21c:	06a80000 	.inst	0x06a80000 ; undefined
 220:	00000000 	.inst	0x00000000 ; undefined
 224:	00713a06 	.inst	0x00713a06 ; undefined
 228:	06ac0000 	.inst	0x06ac0000 ; undefined
 22c:	00000000 	.inst	0x00000000 ; undefined
 230:	00713b06 	.inst	0x00713b06 ; undefined
 234:	00b00000 	.inst	0x00b00000 ; undefined
 238:	00000004 	.inst	0x00000004 ; undefined
 23c:	db3c0600 	.inst	0xdb3c0600 ; undefined
 240:	08000001 	stxrb	w0, w1, [x0]
 244:	7c40060c 	ldr	h12, [x16], #0
 248:	06000002 	.inst	0x06000002 ; undefined
 24c:	00000000 	.inst	0x00000000 ; undefined
 250:	004d4106 	.inst	0x004d4106 ; undefined
 254:	06000000 	.inst	0x06000000 ; undefined
 258:	00000000 	.inst	0x00000000 ; undefined
 25c:	004d4206 	.inst	0x004d4206 ; undefined
 260:	06010000 	.inst	0x06010000 ; undefined
 264:	00000000 	.inst	0x00000000 ; undefined
 268:	00714306 	.inst	0x00714306 ; undefined
 26c:	06040000 	.inst	0x06040000 ; undefined
 270:	00000000 	.inst	0x00000000 ; undefined
 274:	00714406 	.inst	0x00714406 ; undefined
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
 2a0:	5f460600 	sshr	d0, d16, #58
 2a4:	3c000000 	stur	b0, [x0]
 2a8:	004d0d00 	.inst	0x004d0d00 ; undefined
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
 2fc:	0000005f 	.inst	0x0000005f ; undefined
 300:	0000060b 	.inst	0x0000060b ; undefined
 304:	4d060000 	.inst	0x4d060000 ; undefined
 308:	0000004d 	.inst	0x0000004d ; undefined
 30c:	0000060d 	.inst	0x0000060d ; undefined
 310:	4e060000 	tbl	v0.16b, {v0.16b}, v6.16b
 314:	0000005f 	.inst	0x0000005f ; undefined
 318:	0000060e 	.inst	0x0000060e ; undefined
 31c:	4f060000 	.inst	0x4f060000 ; undefined
 320:	0000004d 	.inst	0x0000004d ; undefined
 324:	00000610 	.inst	0x00000610 ; undefined
 328:	50060000 	adr	x0, c32a <fat32_open+0xb632>
 32c:	0000005f 	.inst	0x0000005f ; undefined
 330:	00000611 	.inst	0x00000611 ; undefined
 334:	51060000 	sub	w0, w0, #0x180
 338:	0000005f 	.inst	0x0000005f ; undefined
 33c:	00000613 	.inst	0x00000613 ; undefined
 340:	52060000 	eor	w0, w0, #0x4000000
 344:	0000004d 	.inst	0x0000004d ; undefined
 348:	00000615 	.inst	0x00000615 ; undefined
 34c:	53060000 	ubfiz	w0, w0, #26, #1
 350:	0000005f 	.inst	0x0000005f ; undefined
 354:	00000616 	.inst	0x00000616 ; undefined
 358:	54060000 	b.eq	c358 <fat32_open+0xb660>  // b.none
 35c:	0000005f 	.inst	0x0000005f ; undefined
 360:	00000618 	.inst	0x00000618 ; undefined
 364:	55060000 	.inst	0x55060000 ; undefined
 368:	0000005f 	.inst	0x0000005f ; undefined
 36c:	0000061a 	.inst	0x0000061a ; undefined
 370:	56060000 	.inst	0x56060000 ; undefined
 374:	00000071 	.inst	0x00000071 ; undefined
 378:	0000061c 	.inst	0x0000061c ; undefined
 37c:	57060000 	.inst	0x57060000 ; undefined
 380:	00000071 	.inst	0x00000071 ; undefined
 384:	00000620 	.inst	0x00000620 ; undefined
 388:	58060000 	ldr	x0, c388 <fat32_open+0xb690>
 38c:	00000071 	.inst	0x00000071 ; undefined
 390:	00000624 	.inst	0x00000624 ; undefined
 394:	59060000 	.inst	0x59060000 ; undefined
 398:	0000005f 	.inst	0x0000005f ; undefined
 39c:	00000628 	.inst	0x00000628 ; undefined
 3a0:	5a060000 	sbc	w0, w0, w6
 3a4:	0000005f 	.inst	0x0000005f ; undefined
 3a8:	0000062a 	.inst	0x0000062a ; undefined
 3ac:	5b060000 	.inst	0x5b060000 ; undefined
 3b0:	00000071 	.inst	0x00000071 ; undefined
 3b4:	0000062c 	.inst	0x0000062c ; undefined
 3b8:	5c060000 	ldr	d0, c3b8 <fat32_open+0xb6c0>
 3bc:	0000005f 	.inst	0x0000005f ; undefined
 3c0:	00000630 	.inst	0x00000630 ; undefined
 3c4:	5d060000 	.inst	0x5d060000 ; undefined
 3c8:	0000005f 	.inst	0x0000005f ; undefined
 3cc:	00000632 	.inst	0x00000632 ; undefined
 3d0:	5e060000 	sha1c	q0, s0, v6.4s
 3d4:	0000045b 	.inst	0x0000045b ; undefined
 3d8:	00000634 	.inst	0x00000634 ; undefined
 3dc:	5f060000 	.inst	0x5f060000 ; undefined
 3e0:	0000004d 	.inst	0x0000004d ; undefined
 3e4:	00000640 	.inst	0x00000640 ; undefined
 3e8:	60060000 	.inst	0x60060000 ; undefined
 3ec:	0000004d 	.inst	0x0000004d ; undefined
 3f0:	00000641 	.inst	0x00000641 ; undefined
 3f4:	61060000 	.inst	0x61060000 ; undefined
 3f8:	0000004d 	.inst	0x0000004d ; undefined
 3fc:	00000642 	.inst	0x00000642 ; undefined
 400:	62060000 	.inst	0x62060000 ; undefined
 404:	00000071 	.inst	0x00000071 ; undefined
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
 434:	0000005f 	.inst	0x0000005f ; undefined
 438:	0d0001fe 	st1	{v30.b}[0], [x15]
 43c:	0000004d 	.inst	0x0000004d ; undefined
 440:	0000044b 	.inst	0x0000044b ; undefined
 444:	00008e0e 	.inst	0x00008e0e ; undefined
 448:	0d000200 	st1	{v0.b}[0], [x16]
 44c:	0000004d 	.inst	0x0000004d ; undefined
 450:	0000045b 	.inst	0x0000045b ; undefined
 454:	00008e0e 	.inst	0x00008e0e ; undefined
 458:	0d000700 	st1	{v0.b}[1], [x24]
 45c:	0000004d 	.inst	0x0000004d ; undefined
 460:	0000046b 	.inst	0x0000046b ; undefined
 464:	00008e0e 	.inst	0x00008e0e ; undefined
 468:	0d000b00 	st1	{v0.b}[2], [x24]
 46c:	0000004d 	.inst	0x0000004d ; undefined
 470:	0000047b 	.inst	0x0000047b ; undefined
 474:	00008e0e 	.inst	0x00008e0e ; undefined
 478:	0d000a00 	st1	{v0.b}[2], [x16]
 47c:	0000004d 	.inst	0x0000004d ; undefined
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
 4bc:	004d7106 	.inst	0x004d7106 ; undefined
 4c0:	060b0000 	.inst	0x060b0000 ; undefined
 4c4:	00000000 	.inst	0x00000000 ; undefined
 4c8:	004d7206 	.inst	0x004d7206 ; undefined
 4cc:	060c0000 	.inst	0x060c0000 ; undefined
 4d0:	00000000 	.inst	0x00000000 ; undefined
 4d4:	004d7306 	.inst	0x004d7306 ; undefined
 4d8:	060d0000 	.inst	0x060d0000 ; undefined
 4dc:	00000000 	.inst	0x00000000 ; undefined
 4e0:	005f7406 	.inst	0x005f7406 ; undefined
 4e4:	060e0000 	.inst	0x060e0000 ; undefined
 4e8:	00000000 	.inst	0x00000000 ; undefined
 4ec:	005f7506 	.inst	0x005f7506 ; undefined
 4f0:	06100000 	.inst	0x06100000 ; undefined
 4f4:	00000000 	.inst	0x00000000 ; undefined
 4f8:	005f7606 	.inst	0x005f7606 ; undefined
 4fc:	06120000 	.inst	0x06120000 ; undefined
 500:	00000000 	.inst	0x00000000 ; undefined
 504:	005f7706 	.inst	0x005f7706 ; undefined
 508:	06140000 	.inst	0x06140000 ; undefined
 50c:	00000000 	.inst	0x00000000 ; undefined
 510:	005f7806 	.inst	0x005f7806 ; undefined
 514:	06160000 	.inst	0x06160000 ; undefined
 518:	00000000 	.inst	0x00000000 ; undefined
 51c:	005f7906 	.inst	0x005f7906 ; undefined
 520:	06180000 	.inst	0x06180000 ; undefined
 524:	00000000 	.inst	0x00000000 ; undefined
 528:	005f7a06 	.inst	0x005f7a06 ; undefined
 52c:	061a0000 	.inst	0x061a0000 ; undefined
 530:	00000000 	.inst	0x00000000 ; undefined
 534:	00717b06 	.inst	0x00717b06 ; undefined
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
 560:	977c0600 	bl	fffffffffdf01d60 <fat32_open+0xfffffffffdf01068>
 564:	08000004 	stxrb	w0, w4, [x0]
 568:	d07e0620 	adrp	x0, fc0c6000 <fat32_open+0xfc0c5308>
 56c:	06000005 	.inst	0x06000005 ; undefined
 570:	00000000 	.inst	0x00000000 ; undefined
 574:	004d7f06 	.inst	0x004d7f06 ; undefined
 578:	06000000 	.inst	0x06000000 ; undefined
 57c:	00000000 	.inst	0x00000000 ; undefined
 580:	05d08006 	.inst	0x05d08006 ; undefined
 584:	06010000 	.inst	0x06010000 ; undefined
 588:	00000000 	.inst	0x00000000 ; undefined
 58c:	004d8106 	.inst	0x004d8106 ; undefined
 590:	060b0000 	.inst	0x060b0000 ; undefined
 594:	00000000 	.inst	0x00000000 ; undefined
 598:	004d8206 	.inst	0x004d8206 ; undefined
 59c:	060c0000 	.inst	0x060c0000 ; undefined
 5a0:	00000000 	.inst	0x00000000 ; undefined
 5a4:	004d8306 	.inst	0x004d8306 ; undefined
 5a8:	060d0000 	.inst	0x060d0000 ; undefined
 5ac:	00000000 	.inst	0x00000000 ; undefined
 5b0:	05e08406 	mov	z6.d, p1/m, d0
 5b4:	060e0000 	.inst	0x060e0000 ; undefined
 5b8:	00000000 	.inst	0x00000000 ; undefined
 5bc:	005f8506 	.inst	0x005f8506 ; undefined
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
 644:	00000071 	.inst	0x00000071 ; undefined
 648:	00000600 	.inst	0x00000600 ; undefined
 64c:	90060000 	adrp	x0, c000000 <fat32_open+0xbfff308>
 650:	000006b6 	.inst	0x000006b6 ; undefined
 654:	00000608 	.inst	0x00000608 ; undefined
 658:	91060000 	add	x0, x0, #0x180
 65c:	0000004d 	.inst	0x0000004d ; undefined
 660:	00000610 	.inst	0x00000610 ; undefined
 664:	92060000 	and	x0, x0, #0x400000004000000
 668:	0000004d 	.inst	0x0000004d ; undefined
 66c:	00000611 	.inst	0x00000611 ; undefined
 670:	93060000 	.inst	0x93060000 ; undefined
 674:	0000005f 	.inst	0x0000005f ; undefined
 678:	00000612 	.inst	0x00000612 ; undefined
 67c:	94060000 	bl	18067c <fat32_open+0x17f984>
 680:	0000005f 	.inst	0x0000005f ; undefined
 684:	00000614 	.inst	0x00000614 ; undefined
 688:	95060000 	bl	4180688 <fat32_open+0x417f990>
 68c:	0000005f 	.inst	0x0000005f ; undefined
 690:	00000616 	.inst	0x00000616 ; undefined
 694:	96060000 	bl	fffffffff8180694 <fat32_open+0xfffffffff817f99c>
 698:	0000005f 	.inst	0x0000005f ; undefined
 69c:	00000618 	.inst	0x00000618 ; undefined
 6a0:	97060000 	bl	fffffffffc1806a0 <fat32_open+0xfffffffffc17f9a8>
 6a4:	0000005f 	.inst	0x0000005f ; undefined
 6a8:	0000061a 	.inst	0x0000061a ; undefined
 6ac:	98060000 	ldrsw	x0, c6ac <fat32_open+0xb9b4>
 6b0:	00000071 	.inst	0x00000071 ; undefined
 6b4:	0807001c 	stxrb	w7, w28, [x0]
 6b8:	00000238 	.inst	0x00000238 ; undefined
 6bc:	00000004 	.inst	0x00000004 ; undefined
 6c0:	35990600 	cbnz	w0, fffffffffff32780 <fat32_open+0xfffffffffff31a88>
 6c4:	14000006 	b	6dc <.debug_info+0x6dc>
 6c8:	00000000 	.inst	0x00000000 ; undefined
 6cc:	003f0b01 	.inst	0x003f0b01 ; NYI
 6d0:	00150000 	.inst	0x00150000 ; undefined
 6d4:	01000000 	.inst	0x01000000 ; undefined
 6d8:	07af0137 	.inst	0x07af0137 ; undefined
	...
 6e4:	02f80000 	.inst	0x02f80000 ; undefined
 6e8:	00000000 	.inst	0x00000000 ; undefined
 6ec:	9c010000 	ldr	q0, 26ec <fat32_open+0x19f4>
 6f0:	000007af 	.inst	0x000007af ; undefined
 6f4:	00000016 	.inst	0x00000016 ; undefined
 6f8:	01370100 	.inst	0x01370100 ; undefined
 6fc:	000006b6 	.inst	0x000006b6 ; undefined
 700:	7f989103 	fmulx	s3, s8, v24.s[0]
 704:	00000016 	.inst	0x00000016 ; undefined
 708:	01370100 	.inst	0x01370100 ; undefined
 70c:	000007b5 	.inst	0x000007b5 ; undefined
 710:	7f909103 	fmulx	s3, s8, v16.s[0]
 714:	01007017 	.inst	0x01007017 ; undefined
 718:	01440139 	.inst	0x01440139 ; undefined
 71c:	91020000 	add	x0, x0, #0x80
 720:	00001850 	.inst	0x00001850 ; undefined
 724:	39010000 	strb	w0, [x0, #64]
 728:	00014401 	.inst	0x00014401 ; undefined
 72c:	78910200 	ldursh	x0, [x16, #-240]
 730:	00000018 	.inst	0x00000018 ; undefined
 734:	013a0100 	.inst	0x013a0100 ; undefined
 738:	000007bb 	.inst	0x000007bb ; undefined
 73c:	18489102 	ldr	w2, 9195c <fat32_open+0x90c64>
 740:	00000000 	.inst	0x00000000 ; undefined
 744:	bb013b01 	.inst	0xbb013b01 ; undefined
 748:	02000007 	.inst	0x02000007 ; undefined
 74c:	00187091 	.inst	0x00187091 ; undefined
 750:	01000000 	.inst	0x01000000 ; undefined
 754:	062a013c 	.inst	0x062a013c ; undefined
 758:	91030000 	add	x0, x0, #0xc0
 75c:	00187fa8 	.inst	0x00187fa8 ; undefined
 760:	01000000 	.inst	0x01000000 ; undefined
 764:	0095013d 	.inst	0x0095013d ; undefined
 768:	91020000 	add	x0, x0, #0x80
 76c:	00001868 	.inst	0x00001868 ; undefined
 770:	3e010000 	.inst	0x3e010000 ; undefined
 774:	0007c101 	.inst	0x0007c101 ; undefined
 778:	67910200 	.inst	0x67910200 ; undefined
 77c:	00000018 	.inst	0x00000018 ; undefined
 780:	013f0100 	.inst	0x013f0100 ; undefined
 784:	000007af 	.inst	0x000007af ; undefined
 788:	19589102 	.inst	0x19589102 ; undefined
 78c:	00000000 	.inst	0x00000000 ; undefined
 790:	000007d8 	.inst	0x000007d8 ; undefined
 794:	00000309 	.inst	0x00000309 ; undefined
 798:	00000000 	.inst	0x00000000 ; undefined
 79c:	001a0000 	.inst	0x001a0000 ; undefined
 7a0:	01000000 	.inst	0x01000000 ; undefined
 7a4:	00000189 	.inst	0x00000189 ; undefined
 7a8:	00000000 	.inst	0x00000000 ; undefined
 7ac:	07000000 	.inst	0x07000000 ; undefined
 7b0:	0006bc08 	.inst	0x0006bc08 ; undefined
 7b4:	51080700 	sub	w0, w24, #0x201
 7b8:	07000001 	.inst	0x07000001 ; undefined
 7bc:	00062a08 	.inst	0x00062a08 ; undefined
 7c0:	02010200 	.inst	0x02010200 ; undefined
 7c4:	00000000 	.inst	0x00000000 ; undefined
 7c8:	0001510d 	.inst	0x0001510d ; undefined
 7cc:	0007d800 	.inst	0x0007d800 ; undefined
 7d0:	008e0e00 	.inst	0x008e0e00 ; undefined
 7d4:	000a0000 	.inst	0x000a0000 ; undefined
 7d8:	0007c80c 	.inst	0x0007c80c ; undefined
 7dc:	00001b00 	.inst	0x00001b00 ; undefined
 7e0:	fd010000 	str	d0, [x0, #512]
 7e4:	00000095 	.inst	0x00000095 ; undefined
	...
 7f0:	00000280 	.inst	0x00000280 ; undefined
 7f4:	00000000 	.inst	0x00000000 ; undefined
 7f8:	08759c01 	.inst	0x08759c01 ; undefined
 7fc:	001c0000 	.inst	0x001c0000 ; undefined
 800:	01000000 	.inst	0x01000000 ; undefined
 804:	0007bbfd 	.inst	0x0007bbfd ; undefined
 808:	58910200 	ldr	x0, fffffffffff22848 <fat32_open+0xfffffffffff21b50>
 80c:	0000001c 	.inst	0x0000001c ; undefined
 810:	44fd0100 	sdot	z0.d, z8.h, z13.h[1]
 814:	02000001 	.inst	0x02000001 ; undefined
 818:	001d5091 	.inst	0x001d5091 ; undefined
 81c:	01000000 	.inst	0x01000000 ; undefined
 820:	000095ff 	.inst	0x000095ff ; undefined
 824:	78910200 	ldursh	x0, [x16, #-240]
 828:	00000018 	.inst	0x00000018 ; undefined
 82c:	01000100 	.inst	0x01000100 ; undefined
 830:	0000003f 	.inst	0x0000003f ; undefined
 834:	18749102 	ldr	w2, e9a54 <fat32_open+0xe8d5c>
 838:	00000000 	.inst	0x00000000 ; undefined
 83c:	3f010001 	.inst	0x3f010001 ; undefined
 840:	02000000 	.inst	0x02000000 ; undefined
 844:	00187091 	.inst	0x00187091 ; undefined
 848:	01000000 	.inst	0x01000000 ; undefined
 84c:	08750101 	.inst	0x08750101 ; undefined
 850:	91020000 	add	x0, x0, #0x80
 854:	00001e60 	.inst	0x00001e60 ; undefined
 858:	00000000 	.inst	0x00000000 ; undefined
 85c:	00e00000 	.inst	0x00e00000 ; undefined
 860:	00000000 	.inst	0x00000000 ; undefined
 864:	70170000 	adr	x0, 2e867 <fat32_open+0x2db6f>
 868:	01050100 	.inst	0x01050100 ; undefined
 86c:	00000144 	.inst	0x00000144 ; undefined
 870:	00689102 	.inst	0x00689102 ; undefined
 874:	014a0d00 	.inst	0x014a0d00 ; undefined
 878:	08850000 	stllrb	w0, [x0]
 87c:	8e0e0000 	.inst	0x8e0e0000 ; undefined
 880:	06000000 	.inst	0x06000000 ; undefined
 884:	00001b00 	.inst	0x00001b00 ; undefined
 888:	df010000 	.inst	0xdf010000 ; undefined
 88c:	000007bb 	.inst	0x000007bb ; undefined
	...
 898:	00000130 	.inst	0x00000130 ; undefined
 89c:	00000000 	.inst	0x00000000 ; undefined
 8a0:	09109c01 	.inst	0x09109c01 ; undefined
 8a4:	001c0000 	.inst	0x001c0000 ; undefined
 8a8:	01000000 	.inst	0x01000000 ; undefined
 8ac:	0007b5df 	.inst	0x0007b5df ; undefined
 8b0:	e8910300 	.inst	0xe8910300 ; undefined
 8b4:	00001c7b 	.inst	0x00001c7b ; undefined
 8b8:	df010000 	.inst	0xdf010000 ; undefined
 8bc:	000007bb 	.inst	0x000007bb ; undefined
 8c0:	7be09103 	.inst	0x7be09103 ; undefined
 8c4:	0000001c 	.inst	0x0000001c ; undefined
 8c8:	95df0100 	bl	77c0cc8 <fat32_open+0x77bffd0>
 8cc:	03000000 	.inst	0x03000000 ; undefined
 8d0:	1f7bd891 	fnmsub	d17, d4, d27, d22
 8d4:	e1010063 	.inst	0xe1010063 ; undefined
 8d8:	00000095 	.inst	0x00000095 ; undefined
 8dc:	1d789102 	.inst	0x1d789102 ; undefined
 8e0:	00000000 	.inst	0x00000000 ; undefined
 8e4:	0095e101 	.inst	0x0095e101 ; undefined
 8e8:	91020000 	add	x0, x0, #0x80
 8ec:	00001d70 	.inst	0x00001d70 ; undefined
 8f0:	e2010000 	.inst	0xe2010000 ; undefined
 8f4:	00000910 	.inst	0x00000910 ; undefined
 8f8:	7bf09103 	.inst	0x7bf09103 ; undefined
 8fc:	00000019 	.inst	0x00000019 ; undefined
 900:	00093100 	.inst	0x00093100 ; undefined
 904:	00030900 	.inst	0x00030900 ; undefined
	...
 910:	00014a0d 	.inst	0x00014a0d ; undefined
 914:	00092100 	.inst	0x00092100 ; undefined
 918:	008e1100 	.inst	0x008e1100 ; undefined
 91c:	01fe0000 	.inst	0x01fe0000 ; undefined
 920:	01510d00 	.inst	0x01510d00 ; undefined
 924:	09310000 	.inst	0x09310000 ; undefined
 928:	8e0e0000 	.inst	0x8e0e0000 ; undefined
 92c:	10000000 	adr	x0, 92c <.debug_info+0x92c>
 930:	09210c00 	.inst	0x09210c00 ; undefined
 934:	001b0000 	.inst	0x001b0000 ; undefined
 938:	01000000 	.inst	0x01000000 ; undefined
 93c:	00009585 	.inst	0x00009585 ; undefined
	...
 948:	0002e800 	.inst	0x0002e800 ; undefined
 94c:	00000000 	.inst	0x00000000 ; undefined
 950:	259c0100 	cmpge	p0.s, p0/z, z8.s, #-4
 954:	1c00000a 	ldr	s10, 954 <.debug_info+0x954>
 958:	00000000 	.inst	0x00000000 ; undefined
 95c:	06b68501 	.inst	0x06b68501 ; undefined
 960:	91030000 	add	x0, x0, #0xc0
 964:	001c7fb8 	.inst	0x001c7fb8 ; undefined
 968:	01000000 	.inst	0x01000000 ; undefined
 96c:	00009585 	.inst	0x00009585 ; undefined
 970:	b0910300 	adrp	x0, ffffffff22061000 <fat32_open+0xffffffff22060308>
 974:	00001c7f 	.inst	0x00001c7f ; undefined
 978:	85010000 	.inst	0x85010000 ; undefined
 97c:	00000a25 	.inst	0x00000a25 ; undefined
 980:	7fa89103 	fmulx	s3, s8, v8.s[1]
 984:	6463701f 	.inst	0x6463701f ; undefined
 988:	2b870100 	adds	w0, w8, w7, asr #0
 98c:	0200000a 	.inst	0x0200000a ; undefined
 990:	001d6091 	.inst	0x001d6091 ; undefined
 994:	01000000 	.inst	0x01000000 ; undefined
 998:	00009588 	.inst	0x00009588 ; undefined
 99c:	58910200 	ldr	x0, fffffffffff229dc <fat32_open+0xfffffffffff21ce4>
 9a0:	0000001d 	.inst	0x0000001d ; undefined
 9a4:	95890100 	bl	6240da4 <fat32_open+0x62400ac>
 9a8:	02000000 	.inst	0x02000000 ; undefined
 9ac:	001d7891 	.inst	0x001d7891 ; undefined
 9b0:	01000000 	.inst	0x01000000 ; undefined
 9b4:	0000718a 	.inst	0x0000718a ; undefined
 9b8:	54910200 	b.eq	fffffffffff229f8 <fat32_open+0xfffffffffff21d00>  // b.none
 9bc:	0000001d 	.inst	0x0000001d ; undefined
 9c0:	4d8b0100 	st1	{v0.b}[8], [x8], x11
 9c4:	02000000 	.inst	0x02000000 ; undefined
 9c8:	001d5391 	.inst	0x001d5391 ; undefined
 9cc:	01000000 	.inst	0x01000000 ; undefined
 9d0:	0000718c 	.inst	0x0000718c ; undefined
 9d4:	74910200 	.inst	0x74910200 ; undefined
 9d8:	0000001d 	.inst	0x0000001d ; undefined
 9dc:	718d0100 	.inst	0x718d0100 ; undefined
 9e0:	02000000 	.inst	0x02000000 ; undefined
 9e4:	001d7091 	.inst	0x001d7091 ; undefined
 9e8:	01000000 	.inst	0x01000000 ; undefined
 9ec:	0000718e 	.inst	0x0000718e ; undefined
 9f0:	6c910200 	stp	d0, d0, [x16], #272
 9f4:	0000001d 	.inst	0x0000001d ; undefined
 9f8:	318f0100 	.inst	0x318f0100 ; undefined
 9fc:	0200000a 	.inst	0x0200000a ; undefined
 a00:	00194891 	.inst	0x00194891 ; undefined
 a04:	31000000 	adds	w0, w0, #0x0
 a08:	09000009 	.inst	0x09000009 ; undefined
 a0c:	00000003 	.inst	0x00000003 ; undefined
 a10:	00000000 	.inst	0x00000000 ; undefined
 a14:	00002000 	.inst	0x00002000 ; undefined
 a18:	d9010000 	.inst	0xd9010000 ; undefined
	...
 a24:	44080700 	.inst	0x44080700 ; undefined
 a28:	07000001 	.inst	0x07000001 ; undefined
 a2c:	0001d008 	.inst	0x0001d008 ; undefined
 a30:	71080700 	subs	w0, w24, #0x201
 a34:	1b000000 	madd	w0, w0, w0, w0
 a38:	00000000 	.inst	0x00000000 ; undefined
 a3c:	00957001 	.inst	0x00957001 ; undefined
	...
 a48:	00c40000 	.inst	0x00c40000 ; undefined
 a4c:	00000000 	.inst	0x00000000 ; undefined
 a50:	9c010000 	ldr	q0, 2a50 <fat32_open+0x1d58>
 a54:	00000acb 	.inst	0x00000acb ; undefined
 a58:	0000001c 	.inst	0x0000001c ; undefined
 a5c:	b6700100 	tbz	x0, #46, a7c <.debug_info+0xa7c>
 a60:	02000006 	.inst	0x02000006 ; undefined
 a64:	001c5891 	.inst	0x001c5891 ; undefined
 a68:	01000000 	.inst	0x01000000 ; undefined
 a6c:	00009570 	.inst	0x00009570 ; undefined
 a70:	50910200 	adr	x0, fffffffffff22ab2 <fat32_open+0xfffffffffff21dba>
 a74:	0000001c 	.inst	0x0000001c ; undefined
 a78:	44700100 	.inst	0x44700100 ; undefined
 a7c:	02000001 	.inst	0x02000001 ; undefined
 a80:	001d4891 	.inst	0x001d4891 ; undefined
 a84:	01000000 	.inst	0x01000000 ; undefined
 a88:	00007172 	.inst	0x00007172 ; undefined
 a8c:	70910200 	adr	x0, fffffffffff22acf <fat32_open+0xfffffffffff21dd7>
 a90:	0000001d 	.inst	0x0000001d ; undefined
 a94:	71730100 	subs	w0, w8, #0xcc0, lsl #12
 a98:	02000000 	.inst	0x02000000 ; undefined
 a9c:	001d6c91 	.inst	0x001d6c91 ; undefined
 aa0:	01000000 	.inst	0x01000000 ; undefined
 aa4:	00009574 	.inst	0x00009574 ; undefined
 aa8:	78910200 	ldursh	x0, [x16, #-240]
 aac:	0000001e 	.inst	0x0000001e ; undefined
 ab0:	00000000 	.inst	0x00000000 ; undefined
 ab4:	00008800 	.inst	0x00008800 ; undefined
 ab8:	00000000 	.inst	0x00000000 ; undefined
 abc:	00691f00 	.inst	0x00691f00 ; undefined
 ac0:	00717601 	.inst	0x00717601 ; undefined
 ac4:	91020000 	add	x0, x0, #0x80
 ac8:	1b000074 	madd	w20, w3, w0, w0
 acc:	00000000 	.inst	0x00000000 ; undefined
 ad0:	06b63401 	.inst	0x06b63401 ; undefined
	...
 adc:	027c0000 	.inst	0x027c0000 ; undefined
 ae0:	00000000 	.inst	0x00000000 ; undefined
 ae4:	9c010000 	ldr	q0, 2ae4 <fat32_open+0x1dec>
 ae8:	00000b97 	.inst	0x00000b97 ; undefined
 aec:	64627021 	.inst	0x64627021 ; undefined
 af0:	97340100 	bl	fffffffffcd00ef0 <fat32_open+0xfffffffffcd001f8>
 af4:	0300000b 	.inst	0x0300000b ; undefined
 af8:	1d7b9891 	.inst	0x1d7b9891 ; undefined
 afc:	00000000 	.inst	0x00000000 ; undefined
 b00:	06b63601 	.inst	0x06b63601 ; undefined
 b04:	91020000 	add	x0, x0, #0x80
 b08:	626d1f68 	.inst	0x626d1f68 ; undefined
 b0c:	37010072 	tbnz	w18, #0, 2b18 <fat32_open+0x1e20>
 b10:	000002c9 	.inst	0x000002c9 ; undefined
 b14:	7fa09103 	fmulx	s3, s8, v0.s[1]
 b18:	0000001d 	.inst	0x0000001d ; undefined
 b1c:	8c380100 	.inst	0x8c380100 ; undefined
 b20:	03000004 	.inst	0x03000004 ; undefined
 b24:	1f7ba091 	fnmsub	d17, d4, d27, d8
 b28:	00646370 	.inst	0x00646370 ; undefined
 b2c:	0a2b3901 	bic	w1, w8, w11, lsl #14
 b30:	91020000 	add	x0, x0, #0x80
 b34:	00001d60 	.inst	0x00001d60 ; undefined
 b38:	3a010000 	adcs	w0, w0, w1
 b3c:	0000003f 	.inst	0x0000003f ; undefined
 b40:	197c9102 	.inst	0x197c9102 ; undefined
 b44:	00000000 	.inst	0x00000000 ; undefined
 b48:	000007d8 	.inst	0x000007d8 ; undefined
 b4c:	00000309 	.inst	0x00000309 ; undefined
 b50:	00000000 	.inst	0x00000000 ; undefined
 b54:	00220000 	.inst	0x00220000 ; NYI
 b58:	00000000 	.inst	0x00000000 ; undefined
 b5c:	50000000 	adr	x0, b5e <.debug_info+0xb5e>
 b60:	00000000 	.inst	0x00000000 ; undefined
 b64:	78000000 	sturh	w0, [x0]
 b68:	1f00000b 	fmadd	s11, s0, s0, s0
 b6c:	46010069 	.inst	0x46010069 ; undefined
 b70:	0000003f 	.inst	0x0000003f ; undefined
 b74:	00789102 	.inst	0x00789102 ; undefined
 b78:	0000001e 	.inst	0x0000001e ; undefined
 b7c:	00000000 	.inst	0x00000000 ; undefined
 b80:	00003800 	.inst	0x00003800 ; undefined
 b84:	00000000 	.inst	0x00000000 ; undefined
 b88:	00691f00 	.inst	0x00691f00 ; undefined
 b8c:	003f6a01 	.inst	0x003f6a01 ; NYI
 b90:	91020000 	add	x0, x0, #0x80
 b94:	07000074 	.inst	0x07000074 ; undefined
 b98:	00015c08 	.inst	0x00015c08 ; undefined
 b9c:	00002300 	.inst	0x00002300 ; undefined
 ba0:	23010000 	.inst	0x23010000 ; undefined
	...
 bac:	00000148 	.inst	0x00000148 ; undefined
 bb0:	00000000 	.inst	0x00000000 ; undefined
 bb4:	0c249c01 	.inst	0x0c249c01 ; undefined
 bb8:	70210000 	adr	x0, 42bbb <fat32_open+0x41ec3>
 bbc:	01006462 	.inst	0x01006462 ; undefined
 bc0:	000b9723 	.inst	0x000b9723 ; undefined
 bc4:	68910200 	.inst	0x68910200 ; undefined
 bc8:	0000001c 	.inst	0x0000001c ; undefined
 bcc:	24230100 	cmphs	p0.b, p0/z, z8.b, #12
 bd0:	0200000c 	.inst	0x0200000c ; undefined
 bd4:	001c6091 	.inst	0x001c6091 ; undefined
 bd8:	01000000 	.inst	0x01000000 ; undefined
 bdc:	000c2a23 	.inst	0x000c2a23 ; undefined
 be0:	58910200 	ldr	x0, fffffffffff22c20 <fat32_open+0xfffffffffff21f28>
 be4:	0000001d 	.inst	0x0000001d ; undefined
 be8:	71250100 	subs	w0, w8, #0x940
 bec:	02000000 	.inst	0x02000000 ; undefined
 bf0:	00197c91 	.inst	0x00197c91 ; undefined
 bf4:	d8000000 	prfm	pldl1keep, bf4 <.debug_info+0xbf4>
 bf8:	09000007 	.inst	0x09000007 ; undefined
 bfc:	00000003 	.inst	0x00000003 ; undefined
 c00:	00000000 	.inst	0x00000000 ; undefined
 c04:	00001e00 	.inst	0x00001e00 ; undefined
 c08:	00000000 	.inst	0x00000000 ; undefined
 c0c:	00980000 	.inst	0x00980000 ; undefined
 c10:	00000000 	.inst	0x00000000 ; undefined
 c14:	6e1f0000 	ext	v0.16b, v0.16b, v31.16b, #0
 c18:	3f270100 	.inst	0x3f270100 ; undefined
 c1c:	02000000 	.inst	0x02000000 ; undefined
 c20:	00007891 	.inst	0x00007891 ; undefined
 c24:	02c90807 	.inst	0x02c90807 ; undefined
 c28:	08070000 	stxrb	w7, w0, [x0]
 c2c:	0000048c 	.inst	0x0000048c ; undefined
 c30:	00000023 	.inst	0x00000023 ; undefined
 c34:	000d0100 	.inst	0x000d0100 ; undefined
 c38:	00000000 	.inst	0x00000000 ; undefined
 c3c:	d8000000 	prfm	pldl1keep, c3c <.debug_info+0xc3c>
 c40:	00000001 	.inst	0x00000001 ; undefined
 c44:	01000000 	.inst	0x01000000 ; undefined
 c48:	000cba9c 	.inst	0x000cba9c ; undefined
 c4c:	62702100 	.inst	0x62702100 ; undefined
 c50:	0d010064 	.inst	0x0d010064 ; undefined
 c54:	00000b97 	.inst	0x00000b97 ; undefined
 c58:	7be89103 	.inst	0x7be89103 ; undefined
 c5c:	0000001c 	.inst	0x0000001c ; undefined
 c60:	240d0100 	cmphs	p0.b, p0/z, z8.b, z13.b
 c64:	0300000c 	.inst	0x0300000c ; undefined
 c68:	1d7be091 	.inst	0x1d7be091 ; undefined
 c6c:	00000000 	.inst	0x00000000 ; undefined
 c70:	0cba0f01 	.inst	0x0cba0f01 ; undefined
 c74:	91030000 	add	x0, x0, #0xc0
 c78:	00197bf8 	.inst	0x00197bf8 ; undefined
 c7c:	db000000 	.inst	0xdb000000 ; undefined
 c80:	0900000c 	.inst	0x0900000c ; undefined
 c84:	00000003 	.inst	0x00000003 ; undefined
 c88:	00000000 	.inst	0x00000000 ; undefined
 c8c:	00001e00 	.inst	0x00001e00 ; undefined
 c90:	00000000 	.inst	0x00000000 ; undefined
 c94:	01200000 	.inst	0x01200000 ; undefined
 c98:	00000000 	.inst	0x00000000 ; undefined
 c9c:	6e1f0000 	ext	v0.16b, v0.16b, v31.16b, #0
 ca0:	3f170100 	.inst	0x3f170100 ; undefined
 ca4:	02000000 	.inst	0x02000000 ; undefined
 ca8:	001d7c91 	.inst	0x001d7c91 ; undefined
 cac:	01000000 	.inst	0x01000000 ; undefined
 cb0:	00003f17 	.inst	0x00003f17 ; undefined
 cb4:	78910200 	ldursh	x0, [x16, #-240]
 cb8:	4a0d0000 	eor	w0, w0, w13
 cbc:	cb000001 	sub	x1, x0, x0
 cc0:	1100000c 	add	w12, w0, #0x0
 cc4:	0000008e 	.inst	0x0000008e ; undefined
 cc8:	0d0001ff 	st1	{v31.b}[0], [x15]
 ccc:	00000151 	.inst	0x00000151 ; undefined
 cd0:	00000cdb 	.inst	0x00000cdb ; undefined
 cd4:	00008e0e 	.inst	0x00008e0e ; undefined
 cd8:	0c000900 	st4	{v0.2s-v3.2s}, [x8]
 cdc:	00000ccb 	.inst	0x00000ccb ; undefined
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <fat32_open+0xd554>
  10:	17429917 	b	fffffffffd0a646c <fat32_open+0xfffffffffd0a5774>
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
  74:	150a0000 	b	4280074 <fat32_open+0x427f37c>
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
  c4:	17120000 	b	fffffffffc4800c4 <fat32_open+0xfffffffffc47f3cc>
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
 104:	42961840 	.inst	0x42961840 ; undefined
 108:	00130119 	.inst	0x00130119 ; undefined
 10c:	00051600 	.inst	0x00051600 ; undefined
 110:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 114:	1349053b 	.inst	0x1349053b ; undefined
 118:	00001802 	.inst	0x00001802 ; undefined
 11c:	03003417 	.inst	0x03003417 ; undefined
 120:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 124:	02134905 	.inst	0x02134905 ; undefined
 128:	18000018 	ldr	w24, 128 <.debug_abbrev+0x128>
 12c:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
 130:	053b0b3a 	ext	z26.b, z26.b, z25.b, #218
 134:	18021349 	ldr	w9, 439c <fat32_open+0x36a4>
 138:	34190000 	cbz	w0, 32138 <fat32_open+0x31440>
 13c:	490e0300 	.inst	0x490e0300 ; undefined
 140:	02193413 	.inst	0x02193413 ; undefined
 144:	1a000018 	adc	w24, w0, w0
 148:	0e03000a 	tbl	v10.8b, {v0.16b}, v3.8b
 14c:	053b0b3a 	ext	z26.b, z26.b, z25.b, #218
 150:	00000111 	.inst	0x00000111 ; undefined
 154:	3f012e1b 	.inst	0x3f012e1b ; undefined
 158:	3a0e0319 	adcs	w25, w24, w14
 15c:	270b3b0b 	.inst	0x270b3b0b ; undefined
 160:	11134919 	add	w25, w8, #0x4d2
 164:	40071201 	.inst	0x40071201 ; undefined
 168:	19429618 	.inst	0x19429618 ; undefined
 16c:	00001301 	.inst	0x00001301 ; undefined
 170:	0300051c 	.inst	0x0300051c ; undefined
 174:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 178:	0213490b 	.inst	0x0213490b ; undefined
 17c:	1d000018 	.inst	0x1d000018 ; undefined
 180:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
 184:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 188:	18021349 	ldr	w9, 43f0 <fat32_open+0x36f8>
 18c:	0b1e0000 	add	w0, w0, w30
 190:	12011101 	and	w1, w8, #0x8000000f
 194:	1f000007 	fmadd	s7, s0, s0, s0
 198:	08030034 	stxrb	w3, w20, [x1]
 19c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 1a0:	18021349 	ldr	w9, 4408 <fat32_open+0x3710>
 1a4:	0a200000 	bic	w0, w0, w0
 1a8:	3a0e0300 	adcs	w0, w24, w14
 1ac:	110b3b0b 	add	w11, w24, #0x2ce
 1b0:	21000001 	.inst	0x21000001 ; undefined
 1b4:	08030005 	stxrb	w3, w5, [x0]
 1b8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 1bc:	18021349 	ldr	w9, 4424 <fat32_open+0x372c>
 1c0:	0b220000 	add	w0, w0, w2, uxtb
 1c4:	12011101 	and	w1, w8, #0x8000000f
 1c8:	00130107 	.inst	0x00130107 ; undefined
 1cc:	012e2300 	.inst	0x012e2300 ; undefined
 1d0:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 1d4:	19270b3b 	.inst	0x19270b3b ; undefined
 1d8:	07120111 	.inst	0x07120111 ; undefined
 1dc:	42961840 	.inst	0x42961840 ; undefined
 1e0:	00130119 	.inst	0x00130119 ; undefined
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	.inst	0x0000002c ; undefined
   4:	00000002 	.inst	0x00000002 ; undefined
   8:	00080000 	.inst	0x00080000 ; undefined
	...
  18:	00000ff0 	.inst	0x00000ff0 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
   0:	00020004 	.inst	0x00020004 ; undefined
   4:	07000000 	.inst	0x07000000 ; undefined
   8:	00000000 	.inst	0x00000000 ; undefined
   c:	03010003 	.inst	0x03010003 ; undefined
  10:	00070701 	.inst	0x00070701 ; undefined
  14:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  18:	05060303 	.inst	0x05060303 ; undefined
  1c:	00000002 	.inst	0x00000002 ; undefined
  20:	08040300 	stxrb	w4, w0, [x24]
  24:	07020b03 	.inst	0x07020b03 ; undefined
  28:	00000000 	.inst	0x00000000 ; undefined
  2c:	000d0504 	.inst	0x000d0504 ; undefined
  30:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  34:	05050603 	.inst	0x05050603 ; undefined
  38:	00000002 	.inst	0x00000002 ; undefined
  3c:	04060300 	.inst	0x04060300 ; undefined
  40:	00000605 	.inst	0x00000605 ; undefined
  44:	08030000 	stxrb	w3, w0, [x0]
  48:	00060509 	.inst	0x00060509 ; undefined
  4c:	03000000 	.inst	0x03000000 ; undefined
  50:	00070309 	.inst	0x00070309 ; undefined
  54:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  58:	00000007 	.inst	0x00000007 ; undefined
  5c:	00070400 	.inst	0x00070400 ; undefined
  60:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  64:	00000805 	.inst	0x00000805 ; undefined
  68:	07040000 	.inst	0x07040000 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
  70:	0a050304 	and	w4, w24, w5
  74:	00000007 	.inst	0x00000007 ; undefined
  78:	06030400 	.inst	0x06030400 ; undefined
  7c:	0002050b 	.inst	0x0002050b ; undefined
  80:	03000000 	.inst	0x03000000 ; undefined
  84:	04040304 	.inst	0x04040304 ; undefined
  88:	050c0703 	.inst	0x050c0703 ; undefined
  8c:	00000002 	.inst	0x00000002 ; undefined
  90:	0d040300 	.inst	0x0d040300 ; undefined
  94:	00000007 	.inst	0x00000007 ; undefined
  98:	00070400 	.inst	0x00070400 ; undefined
  9c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  a0:	050e0803 	.inst	0x050e0803 ; undefined
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
  dc:	95050000 	bl	41400dc <fat32_open+0x413f3e4>
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
 1bc:	b6050000 	tbz	x0, #32, ffffffffffffa1bc <fat32_open+0xffffffffffff94c4>
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
 264:	d8050000 	prfm	pldl1keep, a264 <fat32_open+0x956c>
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
  44:	90050000 	adrp	x0, a000000 <fat32_open+0x9fff308>
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
 124:	96050000 	bl	fffffffff8140124 <fat32_open+0xfffffffff813f42c>
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
 15c:	9c060000 	ldr	q0, c15c <fat32_open+0xb464>
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
   0:	0000027f 	.inst	0x0000027f ; undefined
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
  30:	36686372 	tbz	w18, #13, c9c <fat32_parse_name+0x224>
  34:	6f6e2d34 	.inst	0x6f6e2d34 ; undefined
  38:	652d656e 	.inst	0x652d656e ; undefined
  3c:	6c2f666c 	stnp	d12, d25, [x19, #-272]
  40:	672f6269 	.inst	0x672f6269 ; undefined
  44:	612f6363 	.inst	0x612f6363 ; undefined
  48:	68637261 	.inst	0x68637261 ; undefined
  4c:	652d3436 	.inst	0x652d3436 ; undefined
  50:	372f666c 	tbnz	w12, #5, ffffffffffffed1c <fat32_open+0xffffffffffffe024>
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
  8c:	70616d68 	adr	x8, c2e3b <fat32_open+0xc2143>
  90:	0100682e 	.inst	0x0100682e ; undefined
  94:	65640000 	fmla	z0.h, p0/m, z0.h, z4.h
  98:	65636976 	fnmls	z22.h, p2/m, z11.h, z3.h
  9c:	0100682e 	.inst	0x0100682e ; undefined
  a0:	61660000 	.inst	0x61660000 ; undefined
  a4:	2e323374 	usubw	v20.8h, v27.8h, v18.8b
  a8:	00010068 	.inst	0x00010068 ; undefined
  ac:	64747300 	.inst	0x64747300 ; undefined
  b0:	6c6f6f62 	ldnp	d2, d27, [x27, #-272]
  b4:	0200682e 	.inst	0x0200682e ; undefined
  b8:	74730000 	.inst	0x74730000 ; undefined
  bc:	746e6964 	.inst	0x746e6964 ; undefined
  c0:	0200682e 	.inst	0x0200682e ; undefined
  c4:	696c0000 	.inst	0x696c0000 ; undefined
  c8:	682e7473 	.inst	0x682e7473 ; undefined
  cc:	00000100 	.inst	0x00000100 ; undefined
  d0:	61636473 	.inst	0x61636473 ; undefined
  d4:	682e6472 	.inst	0x682e6472 ; undefined
  d8:	00000100 	.inst	0x00000100 ; undefined
  dc:	69727473 	ldpsw	x19, x29, [x3, #-112]
  e0:	682e676e 	.inst	0x682e676e ; undefined
  e4:	00000100 	.inst	0x00000100 ; undefined
  e8:	736e6f63 	.inst	0x736e6f63 ; undefined
  ec:	2e656c6f 	umin	v15.4h, v3.4h, v5.4h
  f0:	00010068 	.inst	0x00010068 ; undefined
  f4:	64747300 	.inst	0x64747300 ; undefined
  f8:	2e677261 	uabdl	v1.4s, v19.4h, v7.4h
  fc:	00020068 	.inst	0x00020068 ; undefined
 100:	6c616d00 	ldnp	d0, d27, [x8, #-496]
 104:	2e636f6c 	umin	v12.4h, v27.4h, v3.4h
 108:	00010068 	.inst	0x00010068 ; undefined
 10c:	73736100 	.inst	0x73736100 ; undefined
 110:	2e747265 	uabdl	v5.4s, v19.4h, v20.4h
 114:	00010068 	.inst	0x00010068 ; undefined
 118:	09000000 	.inst	0x09000000 ; undefined
 11c:	00000002 	.inst	0x00000002 ; undefined
 120:	00000000 	.inst	0x00000000 ; undefined
 124:	010d0300 	.inst	0x010d0300 ; undefined
 128:	75d8835b 	.inst	0x75d8835b ; undefined
 12c:	04020084 	.inst	0x04020084 ; undefined
 130:	02004b03 	.inst	0x02004b03 ; undefined
 134:	00ca0304 	.inst	0x00ca0304 ; undefined
 138:	d8030402 	prfm	pldl2keep, 61b8 <fat32_open+0x54c0>
 13c:	03040200 	.inst	0x03040200 ; undefined
 140:	040200f4 	.inst	0x040200f4 ; undefined
 144:	f2790303 	ands	x3, x24, #0x80
 148:	01040200 	.inst	0x01040200 ; undefined
 14c:	03066606 	.inst	0x03066606 ; undefined
 150:	594d3c0a 	.inst	0x594d3c0a ; undefined
 154:	02002f22 	.inst	0x02002f22 ; undefined
 158:	9e060104 	.inst	0x9e060104 ; undefined
 15c:	00919f06 	.inst	0x00919f06 ; undefined
 160:	1d020402 	.inst	0x1d020402 ; undefined
 164:	01040200 	.inst	0x01040200 ; undefined
 168:	42063c06 	.inst	0x42063c06 ; undefined
 16c:	e575a03d 	st1w	{z29.s}, p0, [z1.s, #84]
 170:	67304f3f 	.inst	0x67304f3f ; undefined
 174:	a0676867 	.inst	0xa0676867 ; undefined
 178:	912f684b 	add	x11, x2, #0xbda
 17c:	0402002f 	.inst	0x0402002f ; undefined
 180:	02001d02 	.inst	0x02001d02 ; undefined
 184:	3c060104 	stur	b4, [x8, #96]
 188:	a03d4206 	.inst	0xa03d4206 ; undefined
 18c:	413f85af 	.inst	0x413f85af ; undefined
 190:	2f933f23 	.inst	0x2f933f23 ; undefined
 194:	004b5991 	.inst	0x004b5991 ; undefined
 198:	2f030402 	mvni	v2.2s, #0x60
 19c:	03040200 	.inst	0x03040200 ; undefined
 1a0:	04020065 	.inst	0x04020065 ; undefined
 1a4:	063c0601 	.inst	0x063c0601 ; undefined
 1a8:	593f213f 	.inst	0x593f213f ; undefined
 1ac:	00223d3d 	.inst	0x00223d3d ; NYI
 1b0:	33030402 	bfi	w2, w0, #29, #2
 1b4:	03040200 	.inst	0x03040200 ; undefined
 1b8:	04020021 	.inst	0x04020021 ; undefined
 1bc:	02008103 	.inst	0x02008103 ; undefined
 1c0:	00300304 	.inst	0x00300304 ; NYI
 1c4:	48030402 	stxrh	w3, w2, [x0]
 1c8:	03040200 	.inst	0x03040200 ; undefined
 1cc:	04020099 	.inst	0x04020099 ; undefined
 1d0:	063c0601 	.inst	0x063c0601 ; undefined
 1d4:	214a0c03 	.inst	0x214a0c03 ; undefined
 1d8:	4b2f5931 	.inst	0x4b2f5931 ; undefined
 1dc:	2f433d21 	.inst	0x2f433d21 ; undefined
 1e0:	303d3d4d 	adr	x13, 7a989 <fat32_open+0x79c91>
 1e4:	41ced891 	.inst	0x41ced891 ; undefined
 1e8:	68d05183 	ldpsw	x3, x20, [x12], #128
 1ec:	dd924c67 	.inst	0xdd924c67 ; undefined
 1f0:	3dd7cf2f 	ldr	q15, [x25, #24368]
 1f4:	03232321 	.inst	0x03232321 ; undefined
 1f8:	0334824d 	.inst	0x0334824d ; undefined
 1fc:	212f2031 	.inst	0x212f2031 ; undefined
 200:	21236731 	.inst	0x21236731 ; undefined
 204:	68693d76 	.inst	0x68693d76 ; undefined
 208:	0377d967 	.inst	0x0377d967 ; undefined
 20c:	14035870 	b	d63cc <fat32_open+0xd56d4>
 210:	0200684a 	.inst	0x0200684a ; undefined
 214:	3f210104 	.inst	0x3f210104 ; undefined
 218:	4b312159 	sub	w25, w10, w17, uxth
 21c:	d7bbca21 	.inst	0xd7bbca21 ; undefined
 220:	3c7903d8 	.inst	0x3c7903d8 ; undefined
 224:	4c820903 	st4	{v3.4s-v6.4s}, [x8], x2
 228:	4c395a43 	.inst	0x4c395a43 ; undefined
 22c:	2f4b6925 	umlsl	v5.4s, v9.4h, v11.h[4]
 230:	5a215b21 	.inst	0x5a215b21 ; undefined
 234:	4b254c39 	sub	w25, w1, w5, uxtw #3
 238:	4d924d65 	.inst	0x4d924d65 ; undefined
 23c:	244c3f21 	cmpeq	p1.h, p7/z, z25.h, z12.d
 240:	3d4c222f 	ldr	b15, [x17, #776]
 244:	9f3d59a2 	.inst	0x9f3d59a2 ; undefined
 248:	3f22673e 	.inst	0x3f22673e ; undefined
 24c:	315a862d 	adds	w13, w17, #0x6a1, lsl #12
 250:	3d32755c 	str	b28, [x10, #3229]
 254:	68881f1f 	.inst	0x68881f1f ; undefined
 258:	5d033f69 	.inst	0x5d033f69 ; undefined
 25c:	3c260366 	.inst	0x3c260366 ; undefined
 260:	4b3d3f3d 	.inst	0x4b3d3f3d ; undefined
 264:	3e1f2f4c 	.inst	0x3e1f2f4c ; undefined
 268:	3d3d3d3d 	str	b29, [x9, #3919]
 26c:	3d3d3d3d 	str	b29, [x9, #3919]
 270:	034a5603 	.inst	0x034a5603 ; undefined
 274:	03352e13 	.inst	0x03352e13 ; undefined
 278:	3d2f2015 	str	b21, [x0, #3016]
 27c:	02022131 	.inst	0x02022131 ; undefined
 280:	地址 0x0000000000000280 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
       0:	73756c63 	.inst	0x73756c63 ; undefined
       4:	5f726574 	.inst	0x5f726574 ; undefined
       8:	68676968 	.inst	0x68676968 ; undefined
       c:	465f5f00 	.inst	0x465f5f00 ; undefined
      10:	3231544c 	orr	w12, w2, #0xffff801f
      14:	494d5f38 	.inst	0x494d5f38 ; undefined
      18:	30315f4e 	adr	x14, 62c01 <fat32_open+0x61f09>
      1c:	5058455f 	adr	xzr, b08c6 <fat32_open+0xafbce>
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
      8c:	58414d5f 	ldr	xzr, 82a34 <fat32_open+0x81d3c>
      90:	30205f5f 	adr	xzr, 40c79 <fat32_open+0x3ff81>
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
      dc:	505f4843 	adr	x3, be9e6 <fat32_open+0xbdcee>
      e0:	49464f52 	.inst	0x49464f52 ; undefined
      e4:	3620454c 	tbz	w12, #4, 98c <.debug_str+0x98c>
      e8:	74730035 	.inst	0x74730035 ; undefined
      ec:	00747261 	.inst	0x00747261 ; undefined
      f0:	49535f5f 	.inst	0x49535f5f ; undefined
      f4:	575f455a 	.inst	0x575f455a ; undefined
      f8:	48544449 	ldxrh	w9, [x2]
      fc:	36205f5f 	tbz	wzr, #4, ce4 <.debug_str+0xce4>
     100:	41460034 	.inst	0x41460034 ; undefined
     104:	5f323354 	.inst	0x5f323354 ; undefined
     108:	544e4f4d 	b.le	9caf0 <fat32_open+0x9bdf8>
     10c:	414d5f48 	.inst	0x414d5f48 ; undefined
     110:	30204b53 	adr	x19, 40a79 <fat32_open+0x3fd81>
     114:	65313078 	.inst	0x65313078 ; undefined
     118:	5f5f0030 	.inst	0x5f5f0030 ; undefined
     11c:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     120:	54414546 	b.vs	829c8 <fat32_open+0x81cd0>
     124:	5f455255 	.inst	0x5f455255 ; undefined
     128:	20414d46 	.inst	0x20414d46 ; undefined
     12c:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     130:	3436504c 	cbz	w12, 6cb38 <fat32_open+0x6be40>
     134:	31205f5f 	cmn	w26, #0x817
     138:	63616300 	.inst	0x63616300 ; undefined
     13c:	625f6568 	.inst	0x625f6568 ; undefined
     140:	5f006e69 	.inst	0x5f006e69 ; undefined
     144:	4d52415f 	.inst	0x4d52415f ; undefined
     148:	4145465f 	.inst	0x4145465f ; undefined
     14c:	45525554 	.inst	0x45525554 ; undefined
     150:	4d554e5f 	.inst	0x4d554e5f ; undefined
     154:	43495245 	.inst	0x43495245 ; undefined
     158:	58414d5f 	ldr	xzr, 82b00 <fat32_open+0x81e08>
     15c:	204e494d 	.inst	0x204e494d ; undefined
     160:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     164:	33434544 	.inst	0x33434544 ; undefined
     168:	55535f32 	.inst	0x55535f32 ; undefined
     16c:	524f4e42 	.inst	0x524f4e42 ; undefined
     170:	5f4c414d 	.inst	0x5f4c414d ; undefined
     174:	5f4e494d 	.inst	0x5f4e494d ; undefined
     178:	2e30205f 	usubl	v31.8h, v2.8b, v16.8b
     17c:	30303030 	adr	x16, 60781 <fat32_open+0x5fa89>
     180:	2d453130 	ldp	s16, s12, [x9, #40]
     184:	46443539 	.inst	0x46443539 ; undefined
     188:	465f5f00 	.inst	0x465f5f00 ; undefined
     18c:	3233544c 	orr	w12, w2, #0xffffe007
     190:	494d5f58 	.inst	0x494d5f58 ; undefined
     194:	58455f4e 	ldr	x14, 8ad7c <fat32_open+0x8a084>
     198:	205f5f50 	.inst	0x205f5f50 ; undefined
     19c:	30312d28 	adr	x8, 62741 <fat32_open+0x61a49>
     1a0:	00293132 	.inst	0x00293132 ; NYI
     1a4:	53494c48 	.inst	0x53494c48 ; undefined
     1a8:	45485f54 	.inst	0x45485f54 ; undefined
     1ac:	6e284441 	ushl	v1.16b, v2.16b, v8.16b
     1b0:	29656d61 	ldp	w1, w27, [x11, #-216]
     1b4:	72747320 	.inst	0x72747320 ; undefined
     1b8:	20746375 	.inst	0x20746375 ; undefined
     1bc:	73696c68 	.inst	0x73696c68 ; undefined
     1c0:	65685f74 	fnmla	z20.h, p7/m, z27.h, z8.h
     1c4:	6e206461 	umax	v1.16b, v3.16b, v0.16b
     1c8:	00656d61 	.inst	0x00656d61 ; undefined
     1cc:	5f544e49 	.inst	0x5f544e49 ; undefined
     1d0:	54534146 	b.vs	a69f8 <fat32_open+0xa5d00>
     1d4:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     1d8:	5f005841 	fmls	h1, h2, v0.h[4]
     1dc:	4f54415f 	.inst	0x4f54415f ; undefined
     1e0:	5f43494d 	.inst	0x5f43494d ; undefined
     1e4:	534e4f43 	.inst	0x534e4f43 ; undefined
     1e8:	20454d55 	.inst	0x20454d55 ; undefined
     1ec:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     1f0:	41484357 	.inst	0x41484357 ; undefined
     1f4:	414d5f52 	.inst	0x414d5f52 ; undefined
     1f8:	205f5f58 	.inst	0x205f5f58 ; undefined
     1fc:	66667830 	.inst	0x66667830 ; undefined
     200:	66666666 	.inst	0x66666666 ; undefined
     204:	00556666 	.inst	0x00556666 ; undefined
     208:	5f746166 	.inst	0x5f746166 ; undefined
     20c:	5f006469 	.inst	0x5f006469 ; undefined
     210:	544c465f 	.inst	0x544c465f ; undefined
     214:	5f583436 	srsra	d22, d1, #40
     218:	49535045 	.inst	0x49535045 ; undefined
     21c:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
     220:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
     224:	39353239 	strb	w25, [x17, #3404]
     228:	34393932 	cbz	w18, 7294c <fat32_open+0x71c54>
     22c:	37383334 	tbnz	w20, #7, 890 <.debug_str+0x890>
     230:	38353332 	ldsetb	w21, w18, [x25]
     234:	35303335 	cbnz	w21, 60898 <fat32_open+0x5fba0>
     238:	37373935 	tbnz	w21, #6, ffffffffffffe95c <fat32_open+0xffffffffffffdc64>
     23c:	35323439 	cbnz	w25, 648c0 <fat32_open+0x63bc8>
     240:	32393438 	orr	w24, w1, #0x1fff80
     244:	65323337 	.inst	0x65323337 ; undefined
     248:	4634332d 	.inst	0x4634332d ; undefined
     24c:	00783436 	.inst	0x00783436 ; undefined
     250:	75665f5f 	.inst	0x75665f5f ; undefined
     254:	5f5f636e 	.inst	0x5f5f636e ; undefined
     258:	544e4900 	b.eq	9cb78 <fat32_open+0x9be80>  // b.none
     25c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     260:	5f205841 	fmls	h1, h2, v0.h[6]
     264:	544e495f 	.inst	0x544e495f ; undefined
     268:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     26c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     270:	544e4900 	b.eq	9cb90 <fat32_open+0x9be98>  // b.none
     274:	5f58414d 	.inst	0x5f58414d ; undefined
     278:	004e494d 	.inst	0x004e494d ; undefined
     27c:	49535f5f 	.inst	0x49535f5f ; undefined
     280:	464f455a 	.inst	0x464f455a ; undefined
     284:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
     288:	4f4c5f47 	.inst	0x4f4c5f47 ; undefined
     28c:	5f5f474e 	.inst	0x5f5f474e ; undefined
     290:	5f003820 	.inst	0x5f003820 ; undefined
     294:	4c42445f 	.inst	0x4c42445f ; undefined
     298:	58414d5f 	ldr	xzr, 82c40 <fat32_open+0x81f48>
     29c:	5f30315f 	.inst	0x5f30315f ; undefined
     2a0:	5f505845 	.inst	0x5f505845 ; undefined
     2a4:	3033205f 	adr	xzr, 666ad <fat32_open+0x659b5>
     2a8:	5f5f0038 	.inst	0x5f5f0038 ; undefined
     2ac:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     2b0:	48435241 	ldxrh	w1, [x18]
     2b4:	4153495f 	.inst	0x4153495f ; undefined
     2b8:	3436415f 	cbz	wzr, 6cae0 <fat32_open+0x6bde8>
     2bc:	62003120 	.inst	0x62003120 ; undefined
     2c0:	5f746f6f 	.inst	0x5f746f6f ; undefined
     2c4:	65646f63 	fnmls	z3.h, p3/m, z27.h, z4.h
     2c8:	445f5f00 	.inst	0x445f5f00 ; undefined
     2cc:	32334345 	orr	w5, w26, #0x3fffe000
     2d0:	4e494d5f 	.inst	0x4e494d5f ; undefined
     2d4:	31205f5f 	cmn	w26, #0x817
     2d8:	35392d45 	cbnz	w5, 72880 <fat32_open+0x71b88>
     2dc:	5f004644 	.inst	0x5f004644 ; undefined
     2e0:	544e495f 	.inst	0x544e495f ; undefined
     2e4:	5341465f 	.inst	0x5341465f ; undefined
     2e8:	5f343654 	.inst	0x5f343654 ; undefined
     2ec:	5f58414d 	.inst	0x5f58414d ; undefined
     2f0:	7830205f 	steorh	w16, [x2]
     2f4:	66666637 	.inst	0x66666637 ; undefined
     2f8:	66666666 	.inst	0x66666666 ; undefined
     2fc:	66666666 	.inst	0x66666666 ; undefined
     300:	66666666 	.inst	0x66666666 ; undefined
     304:	4453004c 	.inst	0x4453004c ; undefined
     308:	4145525f 	.inst	0x4145525f ; undefined
     30c:	43455344 	.inst	0x43455344 ; undefined
     310:	5f524f54 	.inst	0x5f524f54 ; undefined
     314:	454d4954 	.inst	0x454d4954 ; undefined
     318:	2054554f 	.inst	0x2054554f ; undefined
     31c:	30303031 	adr	x17, 60921 <fat32_open+0x5fc29>
     320:	30303030 	adr	x16, 60925 <fat32_open+0x5fc2d>
     324:	4f5f5f00 	.inst	0x4f5f5f00 ; undefined
     328:	52454452 	.inst	0x52454452 ; undefined
     32c:	5044505f 	adr	xzr, 88d36 <fat32_open+0x8803e>
     330:	444e455f 	.inst	0x444e455f ; undefined
     334:	5f4e4149 	.inst	0x5f4e4149 ; undefined
     338:	3433205f 	cbz	wzr, 66740 <fat32_open+0x65a48>
     33c:	57003231 	.inst	0x57003231 ; undefined
     340:	52414843 	.inst	0x52414843 ; undefined
     344:	4e494d5f 	.inst	0x4e494d5f ; undefined
     348:	575f5f20 	.inst	0x575f5f20 ; undefined
     34c:	52414843 	.inst	0x52414843 ; undefined
     350:	4e494d5f 	.inst	0x4e494d5f ; undefined
     354:	5f005f5f 	.inst	0x5f005f5f ; undefined
     358:	4345445f 	.inst	0x4345445f ; undefined
     35c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     360:	455f5841 	.inst	0x455f5841 ; undefined
     364:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     368:	35383320 	cbnz	w0, 709cc <fat32_open+0x6fcd4>
     36c:	465f5f00 	.inst	0x465f5f00 ; undefined
     370:	41465f50 	.inst	0x41465f50 ; undefined
     374:	465f5453 	.inst	0x465f5453 ; undefined
     378:	3120414d 	adds	w13, w10, #0x810
     37c:	465f5f00 	.inst	0x465f5f00 ; undefined
     380:	485f544c 	ldxrh	w12, [x2]
     384:	445f5341 	.inst	0x445f5341 ; undefined
     388:	524f4e45 	.inst	0x524f4e45 ; undefined
     38c:	205f5f4d 	.inst	0x205f5f4d ; undefined
     390:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     394:	38544e49 	ldrb	w9, [x18, #-188]!
     398:	5059545f 	adr	xzr, b2e22 <fat32_open+0xb212a>
     39c:	205f5f45 	.inst	0x205f5f45 ; undefined
     3a0:	6e676973 	.inst	0x6e676973 ; undefined
     3a4:	63206465 	.inst	0x63206465 ; undefined
     3a8:	00726168 	.inst	0x00726168 ; undefined
     3ac:	4c414d5f 	.inst	0x4c414d5f ; undefined
     3b0:	5f434f4c 	.inst	0x5f434f4c ; undefined
     3b4:	5f002048 	.inst	0x5f002048 ; undefined
     3b8:	544c465f 	.inst	0x544c465f ; undefined
     3bc:	445f3233 	.inst	0x445f3233 ; undefined
     3c0:	4d494345 	.inst	0x4d494345 ; undefined
     3c4:	445f4c41 	.inst	0x445f4c41 ; undefined
     3c8:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     3cc:	49003920 	.inst	0x49003920 ; undefined
     3d0:	465f544e 	.inst	0x465f544e ; undefined
     3d4:	36545341 	tbz	w1, #10, ffffffffffff8e3c <fat32_open+0xffffffffffff8144>
     3d8:	414d5f34 	.inst	0x414d5f34 ; undefined
     3dc:	5f5f2058 	.inst	0x5f5f2058 ; undefined
     3e0:	5f544e49 	.inst	0x5f544e49 ; undefined
     3e4:	54534146 	b.vs	a6c0c <fat32_open+0xa5f14>
     3e8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     3ec:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     3f0:	544e4900 	b.eq	9cd10 <fat32_open+0x9c018>  // b.none
     3f4:	5341465f 	.inst	0x5341465f ; undefined
     3f8:	5f363154 	.inst	0x5f363154 ; undefined
     3fc:	004e494d 	.inst	0x004e494d ; undefined
     400:	54535f5f 	.inst	0x54535f5f ; undefined
     404:	555f4344 	.inst	0x555f4344 ; undefined
     408:	315f4654 	adds	w20, w18, #0x7d1, lsl #12
     40c:	205f5f36 	.inst	0x205f5f36 ; undefined
     410:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     414:	455a4953 	.inst	0x455a4953 ; undefined
     418:	5059545f 	adr	xzr, b2ea2 <fat32_open+0xb21aa>
     41c:	205f5f45 	.inst	0x205f5f45 ; undefined
     420:	676e6f6c 	.inst	0x676e6f6c ; undefined
     424:	736e7520 	.inst	0x736e7520 ; undefined
     428:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     42c:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
     430:	61700074 	.inst	0x61700074 ; undefined
     434:	5f006874 	.inst	0x5f006874 ; undefined
     438:	4e49555f 	.inst	0x4e49555f ; undefined
     43c:	435f3854 	.inst	0x435f3854 ; undefined
     440:	20296328 	.inst	0x20296328 ; undefined
     444:	5f5f0063 	.inst	0x5f5f0063 ; undefined
     448:	31544e49 	adds	w9, w18, #0x513, lsl #12
     44c:	59545f36 	.inst	0x59545f36 ; undefined
     450:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     454:	6f687320 	fcmla	v0.8h, v25.8h, v8.h[1], #270
     458:	69207472 	.inst	0x69207472 ; undefined
     45c:	5f00746e 	.inst	0x5f00746e ; undefined
     460:	49564544 	.inst	0x49564544 ; undefined
     464:	485f4543 	ldxrh	w3, [x10]
     468:	535f0020 	.inst	0x535f0020 ; undefined
     46c:	52414344 	.inst	0x52414344 ; undefined
     470:	20485f44 	.inst	0x20485f44 ; undefined
     474:	63727300 	.inst	0x63727300 ; undefined
     478:	7461662f 	.inst	0x7461662f ; undefined
     47c:	632e3233 	.inst	0x632e3233 ; undefined
     480:	475f5f00 	.inst	0x475f5f00 ; undefined
     484:	485f4343 	ldxrh	w3, [x26]
     488:	5f455641 	shl	d1, d18, #5
     48c:	434e5953 	.inst	0x434e5953 ; undefined
     490:	4d4f435f 	.inst	0x4d4f435f ; undefined
     494:	45524150 	.inst	0x45524150 ; undefined
     498:	444e415f 	.inst	0x444e415f ; undefined
     49c:	4157535f 	.inst	0x4157535f ; undefined
     4a0:	20315f50 	.inst	0x20315f50 ; undefined
     4a4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     4a8:	49434544 	.inst	0x49434544 ; undefined
     4ac:	5f4c414d 	.inst	0x5f4c414d ; undefined
     4b0:	5f474944 	.inst	0x5f474944 ; undefined
     4b4:	3633205f 	tbz	wzr, #6, 68bc <fat32_open+0x5bc4>
     4b8:	535f5f00 	.inst	0x535f5f00 ; undefined
     4bc:	5f434454 	.inst	0x5f434454 ; undefined
     4c0:	54534f48 	b.hi	a6ea8 <fat32_open+0xa61b0>  // b.pmore
     4c4:	5f5f4445 	.inst	0x5f5f4445 ; undefined
     4c8:	48003020 	stxrh	w0, w0, [x1]
     4cc:	5453494c 	b.gt	a6df4 <fat32_open+0xa60fc>
     4d0:	444f4e5f 	.inst	0x444f4e5f ; undefined
     4d4:	616e2845 	.inst	0x616e2845 ; undefined
     4d8:	2029656d 	.inst	0x2029656d ; undefined
     4dc:	75727473 	.inst	0x75727473 ; undefined
     4e0:	68207463 	.inst	0x68207463 ; undefined
     4e4:	7473696c 	.inst	0x7473696c ; undefined
     4e8:	646f6e5f 	.inst	0x646f6e5f ; undefined
     4ec:	616e2065 	.inst	0x616e2065 ; undefined
     4f0:	5f00656d 	.inst	0x5f00656d ; undefined
     4f4:	4d52415f 	.inst	0x4d52415f ; undefined
     4f8:	4f454e5f 	.inst	0x4f454e5f ; undefined
     4fc:	0031204e 	.inst	0x0031204e ; NYI
     500:	49535f5f 	.inst	0x49535f5f ; undefined
     504:	545f455a 	.inst	0x545f455a ; undefined
     508:	00205f5f 	.inst	0x00205f5f ; NYI
     50c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     510:	5f323354 	.inst	0x5f323354 ; undefined
     514:	5f4e494d 	.inst	0x5f4e494d ; undefined
     518:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
     51c:	34353731 	cbz	w17, 6ac00 <fat32_open+0x69f08>
     520:	35333439 	cbnz	w25, 66ba4 <fat32_open+0x65eac>
     524:	32323830 	orr	w16, w1, #0x1fffc000
     528:	35373832 	cbnz	w18, 6ec2c <fat32_open+0x6df34>
     52c:	36393730 	tbz	w16, #7, 2c10 <.debug_str+0x2c10>
     530:	36333738 	tbz	w24, #6, 6c14 <fat32_open+0x5f1c>
     534:	32373335 	orr	w21, w25, #0x3ffe00
     538:	34323232 	cbz	w18, 64b7c <fat32_open+0x63e84>
     53c:	65383635 	.inst	0x65383635 ; undefined
     540:	4638332d 	.inst	0x4638332d ; undefined
     544:	49003233 	.inst	0x49003233 ; undefined
     548:	3233544e 	orr	w14, w2, #0xffffe007
     54c:	4e494d5f 	.inst	0x4e494d5f ; undefined
     550:	492d2820 	.inst	0x492d2820 ; undefined
     554:	3233544e 	orr	w14, w2, #0xffffe007
     558:	58414d5f 	ldr	xzr, 82f00 <fat32_open+0x82208>
     55c:	31202d20 	adds	w0, w9, #0x80b
     560:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     564:	33544c46 	.inst	0x33544c46 ; undefined
     568:	414d5f32 	.inst	0x414d5f32 ; undefined
     56c:	30315f58 	adr	x24, 63155 <fat32_open+0x6245d>
     570:	5058455f 	adr	xzr, b0e1a <fat32_open+0xb0122>
     574:	33205f5f 	.inst	0x33205f5f ; undefined
     578:	5f5f0038 	.inst	0x5f5f0038 ; undefined
     57c:	36544e49 	tbz	w9, #10, ffffffffffff8f44 <fat32_open+0xffffffffffff824c>
     580:	414d5f34 	.inst	0x414d5f34 ; undefined
     584:	205f5f58 	.inst	0x205f5f58 ; undefined
     588:	66377830 	.inst	0x66377830 ; undefined
     58c:	66666666 	.inst	0x66666666 ; undefined
     590:	66666666 	.inst	0x66666666 ; undefined
     594:	66666666 	.inst	0x66666666 ; undefined
     598:	004c6666 	.inst	0x004c6666 ; undefined
     59c:	33746166 	.inst	0x33746166 ; undefined
     5a0:	706f5f32 	adr	x18, df187 <fat32_open+0xde48f>
     5a4:	725f6e65 	.inst	0x725f6e65 ; undefined
     5a8:	72757465 	.inst	0x72757465 ; undefined
     5ac:	616c006e 	.inst	0x616c006e ; undefined
     5b0:	615f7473 	.inst	0x615f7473 ; undefined
     5b4:	645f6363 	fcmla	z3.h, p0/m, z27.h, z31.h, #270
     5b8:	00657461 	.inst	0x00657461 ; undefined
     5bc:	656e5f5f 	fnmla	z31.h, p7/m, z26.h, z14.h
     5c0:	775f6465 	.inst	0x775f6465 ; undefined
     5c4:	72616863 	.inst	0x72616863 ; undefined
     5c8:	5f00745f 	.inst	0x5f00745f ; undefined
     5cc:	544c465f 	.inst	0x544c465f ; undefined
     5d0:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     5d4:	455f4e49 	.inst	0x455f4e49 ; undefined
     5d8:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     5dc:	312d2820 	adds	w0, w1, #0xb4a
     5e0:	00293532 	.inst	0x00293532 ; NYI
     5e4:	5f4e4942 	.inst	0x5f4e4942 ; undefined
     5e8:	28544553 	ldnp	w19, w17, [x10, #160]
     5ec:	65646e69 	fnmls	z9.h, p3/m, z19.h, z4.h
     5f0:	69622c78 	ldpsw	x24, x11, [x3, #-240]
     5f4:	70616d74 	adr	x20, c33a3 <fat32_open+0xc26ab>
     5f8:	6f642029 	umlal2	v9.4s, v1.8h, v4.h[2]
     5fc:	62207b20 	.inst	0x62207b20 ; undefined
     600:	616d7469 	.inst	0x616d7469 ; undefined
     604:	3d7c2070 	ldr	b16, [x3, #3848]
     608:	20312820 	.inst	0x20312820 ; undefined
     60c:	69203c3c 	.inst	0x69203c3c ; undefined
     610:	7865646e 	.inst	0x7865646e ; undefined
     614:	7d203b29 	str	h9, [x25, #4124]
     618:	69687720 	ldpsw	x0, x29, [x25, #-192]
     61c:	2820656c 	stnp	w12, w25, [x11, #-256]
     620:	74002930 	.inst	0x74002930 ; undefined
     624:	00657079 	.inst	0x00657079 ; undefined
     628:	544e4955 	.inst	0x544e4955 ; undefined
     62c:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     630:	5f205841 	fmls	h1, h2, v0.h[6]
     634:	4e49555f 	.inst	0x4e49555f ; undefined
     638:	5f323354 	.inst	0x5f323354 ; undefined
     63c:	5f58414d 	.inst	0x5f58414d ; undefined
     640:	425f005f 	.inst	0x425f005f ; undefined
     644:	505f4453 	adr	x19, beece <fat32_open+0xbe1d6>
     648:	49445254 	.inst	0x49445254 ; undefined
     64c:	545f4646 	b.vs	bef14 <fat32_open+0xbe21c>
     650:	4600205f 	.inst	0x4600205f ; undefined
     654:	32335441 	orr	w1, w2, #0xffffe007
     658:	5445475f 	.inst	0x5445475f ; undefined
     65c:	4e4f4d5f 	.inst	0x4e4f4d5f ; undefined
     660:	64284854 	.inst	0x64284854 ; undefined
     664:	29657461 	ldp	w1, w29, [x3, #-216]
     668:	28282820 	stnp	w0, w10, [x1, #-192]
     66c:	65746164 	fnmls	z4.h, p0/m, z11.h, z20.h
     670:	20262029 	.inst	0x20262029 ; undefined
     674:	33544146 	.inst	0x33544146 ; undefined
     678:	4f4d5f32 	.inst	0x4f4d5f32 ; undefined
     67c:	5f48544e 	shl	d14, d2, #8
     680:	4b53414d 	sub	w13, w10, w19, lsr #16
     684:	3e3e2029 	.inst	0x3e3e2029 ; undefined
     688:	00293520 	.inst	0x00293520 ; NYI
     68c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     690:	5f363154 	.inst	0x5f363154 ; undefined
     694:	5f534148 	.inst	0x5f534148 ; undefined
     698:	49464e49 	.inst	0x49464e49 ; undefined
     69c:	5954494e 	.inst	0x5954494e ; undefined
     6a0:	31205f5f 	cmn	w26, #0x817
     6a4:	465f5f00 	.inst	0x465f5f00 ; undefined
     6a8:	3436544c 	cbz	w12, 6d130 <fat32_open+0x6c438>
     6ac:	4e494d5f 	.inst	0x4e494d5f ; undefined
     6b0:	5f30315f 	.inst	0x5f30315f ; undefined
     6b4:	5f505845 	.inst	0x5f505845 ; undefined
     6b8:	2d28205f 	stp	s31, s8, [x2, #-192]
     6bc:	29373033 	stp	w19, w12, [x1, #-72]
     6c0:	61657200 	.inst	0x61657200 ; undefined
     6c4:	65735f64 	fnmla	z4.h, p7/m, z27.h, z19.h
     6c8:	726f7463 	.inst	0x726f7463 ; undefined
     6cc:	735f5f00 	.inst	0x735f5f00 ; undefined
     6d0:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
     6d4:	62002074 	.inst	0x62002074 ; undefined
     6d8:	5f746f6f 	.inst	0x5f746f6f ; undefined
     6dc:	72746e65 	.inst	0x72746e65 ; undefined
     6e0:	00695f79 	.inst	0x00695f79 ; undefined
     6e4:	4e495f5f 	.inst	0x4e495f5f ; undefined
     6e8:	41465f54 	.inst	0x41465f54 ; undefined
     6ec:	34365453 	cbz	w19, 6d174 <fat32_open+0x6c47c>
     6f0:	4449575f 	.inst	0x4449575f ; undefined
     6f4:	5f5f4854 	.inst	0x5f5f4854 ; undefined
     6f8:	00343620 	.inst	0x00343620 ; NYI
     6fc:	4c465f5f 	.inst	0x4c465f5f ; undefined
     700:	5f343654 	.inst	0x5f343654 ; undefined
     704:	49434544 	.inst	0x49434544 ; undefined
     708:	5f4c414d 	.inst	0x5f4c414d ; undefined
     70c:	5f474944 	.inst	0x5f474944 ; undefined
     710:	3731205f 	tbnz	wzr, #6, 2b18 <.debug_str+0x2b18>
     714:	5f5f5f00 	.inst	0x5f5f5f00 ; undefined
     718:	5f746e69 	.inst	0x5f746e69 ; undefined
     71c:	61686377 	.inst	0x61686377 ; undefined
     720:	5f745f72 	.inst	0x5f745f72 ; undefined
     724:	6c002068 	stnp	d8, d8, [x3]
     728:	655f6e66 	fcmeq	p6.h, p3/z, z19.h, z31.h
     72c:	7972746e 	ldrh	w14, [x3, #6458]
     730:	41430073 	.inst	0x41430073 ; undefined
     734:	5f454843 	.inst	0x5f454843 ; undefined
     738:	5f4e4942 	.inst	0x5f4e4942 ; undefined
     73c:	455a4953 	.inst	0x455a4953 ; undefined
     740:	00363120 	.inst	0x00363120 ; NYI
     744:	535f545f 	.inst	0x535f545f ; undefined
     748:	20455a49 	.inst	0x20455a49 ; undefined
     74c:	445f5f00 	.inst	0x445f5f00 ; undefined
     750:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
     754:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
     758:	58455f30 	ldr	x16, 8b33c <fat32_open+0x8a644>
     75c:	205f5f50 	.inst	0x205f5f50 ; undefined
     760:	30332d28 	adr	x8, 66d05 <fat32_open+0x6600d>
     764:	55002937 	.inst	0x55002937 ; undefined
     768:	33544e49 	.inst	0x33544e49 ; undefined
     76c:	28435f32 	ldnp	w18, w23, [x25, #24]
     770:	5f202963 	.inst	0x5f202963 ; undefined
     774:	4e49555f 	.inst	0x4e49555f ; undefined
     778:	5f323354 	.inst	0x5f323354 ; undefined
     77c:	29632843 	ldp	w3, w10, [x2, #-232]
     780:	4f5f5f00 	.inst	0x4f5f5f00 ; undefined
     784:	52454452 	.inst	0x52454452 ; undefined
     788:	4749425f 	.inst	0x4749425f ; undefined
     78c:	444e455f 	.inst	0x444e455f ; undefined
     790:	5f4e4149 	.inst	0x5f4e4149 ; undefined
     794:	3334205f 	.inst	0x3334205f ; undefined
     798:	53003132 	ubfx	w18, w9, #0, #13
     79c:	5f455a49 	.inst	0x5f455a49 ; undefined
     7a0:	0058414d 	.inst	0x0058414d ; undefined
     7a4:	67616c66 	.inst	0x67616c66 ; undefined
     7a8:	00746e5f 	.inst	0x00746e5f ; undefined
     7ac:	45445f5f 	.inst	0x45445f5f ; undefined
     7b0:	38323143 	ldsetb	w18, w3, [x10]
     7b4:	4e494d5f 	.inst	0x4e494d5f ; undefined
     7b8:	31205f5f 	cmn	w26, #0x817
     7bc:	31362d45 	adds	w5, w10, #0xd8b
     7c0:	4c443334 	.inst	0x4c443334 ; undefined
     7c4:	544e4900 	b.eq	9d0e4 <fat32_open+0x9c3ec>  // b.none
     7c8:	41454c5f 	.inst	0x41454c5f ; undefined
     7cc:	32335453 	orr	w19, w2, #0xffffe007
     7d0:	4e494d5f 	.inst	0x4e494d5f ; undefined
     7d4:	492d2820 	.inst	0x492d2820 ; undefined
     7d8:	4c5f544e 	.inst	0x4c5f544e ; undefined
     7dc:	54534145 	b.pl	a7004 <fat32_open+0xa630c>  // b.nfrst
     7e0:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     7e4:	2d205841 	stp	s1, s22, [x2, #-256]
     7e8:	00293120 	.inst	0x00293120 ; NYI
     7ec:	4c465f5f 	.inst	0x4c465f5f ; undefined
     7f0:	38323154 	ldsetb	w18, w20, [x10]
     7f4:	5341485f 	.inst	0x5341485f ; undefined
     7f8:	4955515f 	.inst	0x4955515f ; undefined
     7fc:	4e5f5445 	.inst	0x4e5f5445 ; undefined
     800:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
     804:	5f003120 	.inst	0x5f003120 ; undefined
     808:	544c465f 	.inst	0x544c465f ; undefined
     80c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     810:	455f4e49 	.inst	0x455f4e49 ; undefined
     814:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     818:	312d2820 	adds	w0, w1, #0xb4a
     81c:	29313230 	stp	w16, w12, [x17, #-120]
     820:	555f5f00 	.inst	0x555f5f00 ; undefined
     824:	5f544e49 	.inst	0x5f544e49 ; undefined
     828:	54534146 	b.vs	a7050 <fat32_open+0xa6358>
     82c:	414d5f38 	.inst	0x414d5f38 ; undefined
     830:	205f5f58 	.inst	0x205f5f58 ; undefined
     834:	66667830 	.inst	0x66667830 ; undefined
     838:	66666666 	.inst	0x66666666 ; undefined
     83c:	00556666 	.inst	0x00556666 ; undefined
     840:	45445f5f 	.inst	0x45445f5f ; undefined
     844:	5f323343 	.inst	0x5f323343 ; undefined
     848:	49535045 	.inst	0x49535045 ; undefined
     84c:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
     850:	4531205f 	.inst	0x4531205f ; undefined
     854:	4644362d 	.inst	0x4644362d ; undefined
     858:	465f5f00 	.inst	0x465f5f00 ; undefined
     85c:	3436544c 	cbz	w12, 6d2e4 <fat32_open+0x6c5ec>
     860:	5341485f 	.inst	0x5341485f ; undefined
     864:	4e45445f 	.inst	0x4e45445f ; undefined
     868:	5f4d524f 	.inst	0x5f4d524f ; undefined
     86c:	0031205f 	.inst	0x0031205f ; NYI
     870:	544e4955 	.inst	0x544e4955 ; undefined
     874:	435f3631 	.inst	0x435f3631 ; undefined
     878:	20296328 	.inst	0x20296328 ; undefined
     87c:	49555f5f 	.inst	0x49555f5f ; undefined
     880:	3631544e 	tbz	w14, #6, 3308 <.debug_str+0x3308>
     884:	6328435f 	.inst	0x6328435f ; undefined
     888:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     88c:	36544c46 	tbz	w6, #10, ffffffffffff9214 <fat32_open+0xffffffffffff851c>
     890:	4d5f5834 	.inst	0x4d5f5834 ; undefined
     894:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
     898:	58455f30 	ldr	x16, 8b47c <fat32_open+0x8a784>
     89c:	205f5f50 	.inst	0x205f5f50 ; undefined
     8a0:	32333934 	orr	w20, w9, #0xfffe000
     8a4:	535f5f00 	.inst	0x535f5f00 ; undefined
     8a8:	52414843 	.inst	0x52414843 ; undefined
     8ac:	4449575f 	.inst	0x4449575f ; undefined
     8b0:	5f5f4854 	.inst	0x5f5f4854 ; undefined
     8b4:	5f003820 	.inst	0x5f003820 ; undefined
     8b8:	544e495f 	.inst	0x544e495f ; undefined
     8bc:	5341465f 	.inst	0x5341465f ; undefined
     8c0:	5f363154 	.inst	0x5f363154 ; undefined
     8c4:	54444957 	.inst	0x54444957 ; undefined
     8c8:	205f5f48 	.inst	0x205f5f48 ; undefined
     8cc:	49003233 	.inst	0x49003233 ; undefined
     8d0:	414d544e 	.inst	0x414d544e ; undefined
     8d4:	00435f58 	.inst	0x00435f58 ; undefined
     8d8:	33746166 	.inst	0x33746166 ; undefined
     8dc:	65725f32 	fnmla	z18.h, p7/m, z25.h, z18.h
     8e0:	635f6461 	.inst	0x635f6461 ; undefined
     8e4:	7473756c 	.inst	0x7473756c ; undefined
     8e8:	49007265 	.inst	0x49007265 ; undefined
     8ec:	465f544e 	.inst	0x465f544e ; undefined
     8f0:	38545341 	ldurb	w1, [x26, #-187]
     8f4:	58414d5f 	ldr	xzr, 8329c <fat32_open+0x825a4>
     8f8:	73657200 	.inst	0x73657200 ; undefined
     8fc:	00746c75 	.inst	0x00746c75 ; undefined
     900:	49555f5f 	.inst	0x49555f5f ; undefined
     904:	465f544e 	.inst	0x465f544e ; undefined
     908:	31545341 	adds	w1, w26, #0x514, lsl #12
     90c:	414d5f36 	.inst	0x414d5f36 ; undefined
     910:	205f5f58 	.inst	0x205f5f58 ; undefined
     914:	66667830 	.inst	0x66667830 ; undefined
     918:	66666666 	.inst	0x66666666 ; undefined
     91c:	00556666 	.inst	0x00556666 ; undefined
     920:	4e495f5f 	.inst	0x4e495f5f ; undefined
     924:	58414d54 	ldr	x20, 832cc <fat32_open+0x825d4>
     928:	5059545f 	adr	xzr, b33b2 <fat32_open+0xb26ba>
     92c:	205f5f45 	.inst	0x205f5f45 ; undefined
     930:	676e6f6c 	.inst	0x676e6f6c ; undefined
     934:	746e6920 	.inst	0x746e6920 ; undefined
     938:	465f5f00 	.inst	0x465f5f00 ; undefined
     93c:	3631544c 	tbz	w12, #6, 33c4 <.debug_str+0x33c4>
     940:	5341485f 	.inst	0x5341485f ; undefined
     944:	4e45445f 	.inst	0x4e45445f ; undefined
     948:	5f4d524f 	.inst	0x5f4d524f ; undefined
     94c:	0031205f 	.inst	0x0031205f ; NYI
     950:	45445f5f 	.inst	0x45445f5f ; undefined
     954:	5f323343 	.inst	0x5f323343 ; undefined
     958:	5f58414d 	.inst	0x5f58414d ; undefined
     95c:	2e39205f 	usubl	v31.8h, v2.8b, v25.8b
     960:	39393939 	strb	w25, [x9, #3662]
     964:	39453939 	ldrb	w25, [x9, #334]
     968:	00464436 	.inst	0x00464436 ; undefined
     96c:	575f545f 	.inst	0x575f545f ; undefined
     970:	52414843 	.inst	0x52414843 ; undefined
     974:	70700020 	adr	x0, e097b <fat32_open+0xdfc83>
     978:	00766572 	.inst	0x00766572 ; undefined
     97c:	41484357 	.inst	0x41484357 ; undefined
     980:	414d5f52 	.inst	0x414d5f52 ; undefined
     984:	5f5f2058 	.inst	0x5f5f2058 ; undefined
     988:	41484357 	.inst	0x41484357 ; undefined
     98c:	414d5f52 	.inst	0x414d5f52 ; undefined
     990:	005f5f58 	.inst	0x005f5f58 ; undefined
     994:	4c465f5f 	.inst	0x4c465f5f ; undefined
     998:	58323354 	ldr	x20, 65000 <fat32_open+0x64308>
     99c:	5341485f 	.inst	0x5341485f ; undefined
     9a0:	464e495f 	.inst	0x464e495f ; undefined
     9a4:	54494e49 	b.ls	9336c <fat32_open+0x92674>  // b.plast
     9a8:	205f5f59 	.inst	0x205f5f59 ; undefined
     9ac:	49550031 	.inst	0x49550031 ; undefined
     9b0:	465f544e 	.inst	0x465f544e ; undefined
     9b4:	31545341 	adds	w1, w26, #0x514, lsl #12
     9b8:	414d5f36 	.inst	0x414d5f36 ; undefined
     9bc:	5f5f2058 	.inst	0x5f5f2058 ; undefined
     9c0:	544e4955 	.inst	0x544e4955 ; undefined
     9c4:	5341465f 	.inst	0x5341465f ; undefined
     9c8:	5f363154 	.inst	0x5f363154 ; undefined
     9cc:	5f58414d 	.inst	0x5f58414d ; undefined
     9d0:	535f005f 	.inst	0x535f005f ; undefined
     9d4:	535f5359 	.inst	0x535f5359 ; undefined
     9d8:	5f455a49 	.inst	0x5f455a49 ; undefined
     9dc:	20485f54 	.inst	0x20485f54 ; undefined
     9e0:	555f5f00 	.inst	0x555f5f00 ; undefined
     9e4:	5f544e49 	.inst	0x5f544e49 ; undefined
     9e8:	5341454c 	.inst	0x5341454c ; undefined
     9ec:	545f3854 	.inst	0x545f3854 ; undefined
     9f0:	5f455059 	.inst	0x5f455059 ; undefined
     9f4:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
     9f8:	6e676973 	.inst	0x6e676973 ; undefined
     9fc:	63206465 	.inst	0x63206465 ; undefined
     a00:	00726168 	.inst	0x00726168 ; undefined
     a04:	676e6f6c 	.inst	0x676e6f6c ; undefined
     a08:	746e6920 	.inst	0x746e6920 ; undefined
     a0c:	4e495500 	.inst	0x4e495500 ; undefined
     a10:	4d5f3854 	.inst	0x4d5f3854 ; undefined
     a14:	53005841 	ubfx	w1, w2, #0, #23
     a18:	5f455a49 	.inst	0x5f455a49 ; undefined
     a1c:	2058414d 	.inst	0x2058414d ; undefined
     a20:	49535f5f 	.inst	0x49535f5f ; undefined
     a24:	4d5f455a 	.inst	0x4d5f455a ; undefined
     a28:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     a2c:	465f5f00 	.inst	0x465f5f00 ; undefined
     a30:	3233544c 	orr	w12, w2, #0xffffe007
     a34:	45445f58 	.inst	0x45445f58 ; undefined
     a38:	414d4943 	.inst	0x414d4943 ; undefined
     a3c:	49445f4c 	.inst	0x49445f4c ; undefined
     a40:	205f5f47 	.inst	0x205f5f47 ; undefined
     a44:	5f003731 	.inst	0x5f003731 ; undefined
     a48:	544c465f 	.inst	0x544c465f ; undefined
     a4c:	5f583233 	sqdmlal	s19, h17, v8.h[1]
     a50:	5f534148 	.inst	0x5f534148 ; undefined
     a54:	45495551 	.inst	0x45495551 ; undefined
     a58:	414e5f54 	.inst	0x414e5f54 ; undefined
     a5c:	205f5f4e 	.inst	0x205f5f4e ; undefined
     a60:	494c0031 	.inst	0x494c0031 ; undefined
     a64:	4e5f5453 	.inst	0x4e5f5453 ; undefined
     a68:	28545845 	ldnp	w5, w22, [x2, #160]
     a6c:	2c727470 	ldnp	s16, s29, [x3, #-112]
     a70:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
     a74:	4f432029 	smlal2	v9.4s, v1.8h, v3.h[0]
     a78:	4941544e 	.inst	0x4941544e ; undefined
     a7c:	5f52454e 	.inst	0x5f52454e ; undefined
     a80:	5f28464f 	.inst	0x5f28464f ; undefined
     a84:	7079745f 	adr	xzr, f390f <fat32_open+0xf2c17>
     a88:	5f666f65 	.inst	0x5f666f65 ; undefined
     a8c:	702a285f 	adr	xzr, 54f97 <fat32_open+0x5429f>
     a90:	2c297274 	stnp	s20, s28, [x19, #-184]
     a94:	74702820 	.inst	0x74702820 ; undefined
     a98:	3e2d2972 	.inst	0x3e2d2972 ; undefined
     a9c:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
     aa0:	78656e2e 	.inst	0x78656e2e ; undefined
     aa4:	6e202c74 	uqsub	v20.16b, v3.16b, v0.16b
     aa8:	2965646f 	ldp	w15, w25, [x3, #-216]
     aac:	445f5f00 	.inst	0x445f5f00 ; undefined
     ab0:	32314345 	orr	w5, w26, #0xffff8000
     ab4:	494d5f38 	.inst	0x494d5f38 ; undefined
     ab8:	58455f4e 	ldr	x14, 8b6a0 <fat32_open+0x8a9a8>
     abc:	205f5f50 	.inst	0x205f5f50 ; undefined
     ac0:	31362d28 	adds	w8, w9, #0xd8b
     ac4:	00293234 	.inst	0x00293234 ; NYI
     ac8:	4e495f5f 	.inst	0x4e495f5f ; undefined
     acc:	41465f54 	.inst	0x41465f54 ; undefined
     ad0:	5f385453 	.inst	0x5f385453 ; undefined
     ad4:	45505954 	.inst	0x45505954 ; undefined
     ad8:	69205f5f 	.inst	0x69205f5f ; undefined
     adc:	5f00746e 	.inst	0x5f00746e ; undefined
     ae0:	7a69735f 	.inst	0x7a69735f ; undefined
     ae4:	5f745f65 	.inst	0x5f745f65 ; undefined
     ae8:	5f00205f 	.inst	0x5f00205f ; undefined
     aec:	544c465f 	.inst	0x544c465f ; undefined
     af0:	5f383231 	.inst	0x5f383231 ; undefined
     af4:	5f4e494d 	.inst	0x5f4e494d ; undefined
     af8:	5f505845 	.inst	0x5f505845 ; undefined
     afc:	2d28205f 	stp	s31, s8, [x2, #-192]
     b00:	38333631 	.inst	0x38333631 ; undefined
     b04:	7a002931 	.inst	0x7a002931 ; undefined
     b08:	006f7265 	.inst	0x006f7265 ; undefined
     b0c:	49555f5f 	.inst	0x49555f5f ; undefined
     b10:	465f544e 	.inst	0x465f544e ; undefined
     b14:	36545341 	tbz	w1, #10, ffffffffffff957c <fat32_open+0xffffffffffff8884>
     b18:	59545f34 	.inst	0x59545f34 ; undefined
     b1c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     b20:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
     b24:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
     b28:	6e676973 	.inst	0x6e676973 ; undefined
     b2c:	69206465 	.inst	0x69206465 ; undefined
     b30:	4c00746e 	st1	{v14.8h}, [x3]
     b34:	5f545349 	.inst	0x5f545349 ; undefined
     b38:	5453414c 	b.gt	a7360 <fat32_open+0xa6668>
     b3c:	70797428 	adr	x8, f39c3 <fat32_open+0xf2ccb>
     b40:	65682c65 	fmls	z5.h, p3/m, z3.h, z8.h
     b44:	6e2c6461 	umax	v1.16b, v3.16b, v12.16b
     b48:	2965646f 	ldp	w15, w25, [x3, #-216]
     b4c:	4e4f4320 	.inst	0x4e4f4320 ; undefined
     b50:	4e494154 	.inst	0x4e494154 ; undefined
     b54:	4f5f5245 	.inst	0x4f5f5245 ; undefined
     b58:	79742846 	ldrh	w6, [x2, #6676]
     b5c:	202c6570 	.inst	0x202c6570 ; undefined
     b60:	61656828 	.inst	0x61656828 ; undefined
     b64:	3e2d2964 	.inst	0x3e2d2964 ; undefined
     b68:	76657270 	.inst	0x76657270 ; undefined
     b6c:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
     b70:	00296564 	.inst	0x00296564 ; NYI
     b74:	4e495f5f 	.inst	0x4e495f5f ; undefined
     b78:	454c5f54 	.inst	0x454c5f54 ; undefined
     b7c:	38545341 	ldurb	w1, [x26, #-187]
     b80:	5059545f 	adr	xzr, b360a <fat32_open+0xb2912>
     b84:	205f5f45 	.inst	0x205f5f45 ; undefined
     b88:	6e676973 	.inst	0x6e676973 ; undefined
     b8c:	63206465 	.inst	0x63206465 ; undefined
     b90:	00726168 	.inst	0x00726168 ; undefined
     b94:	49535f5f 	.inst	0x49535f5f ; undefined
     b98:	464f455a 	.inst	0x464f455a ; undefined
     b9c:	494f505f 	.inst	0x494f505f ; undefined
     ba0:	5245544e 	.inst	0x5245544e ; undefined
     ba4:	38205f5f 	.inst	0x38205f5f ; undefined
     ba8:	475f5f00 	.inst	0x475f5f00 ; undefined
     bac:	415f4343 	.inst	0x415f4343 ; undefined
     bb0:	494d4f54 	.inst	0x494d4f54 ; undefined
     bb4:	4f425f43 	.inst	0x4f425f43 ; undefined
     bb8:	4c5f4c4f 	.inst	0x4c5f4c4f ; undefined
     bbc:	5f4b434f 	.inst	0x5f4b434f ; undefined
     bc0:	45455246 	.inst	0x45455246 ; undefined
     bc4:	5f003220 	.inst	0x5f003220 ; undefined
     bc8:	544c465f 	.inst	0x544c465f ; undefined
     bcc:	5f583436 	srsra	d22, d1, #40
     bd0:	5f534148 	.inst	0x5f534148 ; undefined
     bd4:	4f4e4544 	.inst	0x4f4e4544 ; undefined
     bd8:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
     bdc:	49003120 	.inst	0x49003120 ; undefined
     be0:	465f544e 	.inst	0x465f544e ; undefined
     be4:	33545341 	.inst	0x33545341 ; undefined
     be8:	414d5f32 	.inst	0x414d5f32 ; undefined
     bec:	61660058 	.inst	0x61660058 ; undefined
     bf0:	5f323374 	.inst	0x5f323374 ; undefined
     bf4:	64616572 	.inst	0x64616572 ; undefined
     bf8:	6168635f 	.inst	0x6168635f ; undefined
     bfc:	5f006e69 	.inst	0x5f006e69 ; undefined
     c00:	544c465f 	.inst	0x544c465f ; undefined
     c04:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     c08:	455f5841 	.inst	0x455f5841 ; undefined
     c0c:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     c10:	38323120 	ldsetb	w18, w0, [x9]
     c14:	4e495500 	.inst	0x4e495500 ; undefined
     c18:	454c5f54 	.inst	0x454c5f54 ; undefined
     c1c:	38545341 	ldurb	w1, [x26, #-187]
     c20:	58414d5f 	ldr	xzr, 835c8 <fat32_open+0x828d0>
     c24:	555f5f20 	.inst	0x555f5f20 ; undefined
     c28:	5f544e49 	.inst	0x5f544e49 ; undefined
     c2c:	5341454c 	.inst	0x5341454c ; undefined
     c30:	4d5f3854 	.inst	0x4d5f3854 ; undefined
     c34:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     c38:	53494c00 	.inst	0x53494c00 ; undefined
     c3c:	45485f54 	.inst	0x45485f54 ; undefined
     c40:	6e284441 	ushl	v1.16b, v2.16b, v8.16b
     c44:	29656d61 	ldp	w1, w27, [x11, #-216]
     c48:	72747320 	.inst	0x72747320 ; undefined
     c4c:	20746375 	.inst	0x20746375 ; undefined
     c50:	7473696c 	.inst	0x7473696c ; undefined
     c54:	646f6e5f 	.inst	0x646f6e5f ; undefined
     c58:	616e2065 	.inst	0x616e2065 ; undefined
     c5c:	5f00656d 	.inst	0x5f00656d ; undefined
     c60:	42444c5f 	.inst	0x42444c5f ; undefined
     c64:	45445f4c 	.inst	0x45445f4c ; undefined
     c68:	4d524f4e 	.inst	0x4d524f4e ; undefined
     c6c:	4e494d5f 	.inst	0x4e494d5f ; undefined
     c70:	36205f5f 	tbz	wzr, #4, 1858 <.debug_str+0x1858>
     c74:	3537342e 	cbnz	w14, 6f2f8 <fat32_open+0x6e600>
     c78:	31353731 	adds	w17, w25, #0xd4d
     c7c:	33343931 	.inst	0x33343931 ; undefined
     c80:	35323038 	cbnz	w24, 65284 <fat32_open+0x6458c>
     c84:	39303131 	strb	w17, [x9, #3084]
     c88:	33343432 	.inst	0x33343432 ; undefined
     c8c:	38353938 	.inst	0x38353938 ; undefined
     c90:	36373232 	tbz	w18, #6, fffffffffffff2d4 <fat32_open+0xffffffffffffe5dc>
     c94:	35353634 	cbnz	w20, 6b358 <fat32_open+0x6a660>
     c98:	39342d65 	strb	w5, [x11, #3339]
     c9c:	004c3636 	.inst	0x004c3636 ; undefined
     ca0:	726f6873 	.inst	0x726f6873 ; undefined
     ca4:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
     ca8:	6e676973 	.inst	0x6e676973 ; undefined
     cac:	69206465 	.inst	0x69206465 ; undefined
     cb0:	5500746e 	.inst	0x5500746e ; undefined
     cb4:	5f544e49 	.inst	0x5f544e49 ; undefined
     cb8:	54534146 	b.vs	a74e0 <fat32_open+0xa67e8>
     cbc:	414d5f38 	.inst	0x414d5f38 ; undefined
     cc0:	5f5f2058 	.inst	0x5f5f2058 ; undefined
     cc4:	544e4955 	.inst	0x544e4955 ; undefined
     cc8:	5341465f 	.inst	0x5341465f ; undefined
     ccc:	4d5f3854 	.inst	0x4d5f3854 ; undefined
     cd0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     cd4:	465f5f00 	.inst	0x465f5f00 ; undefined
     cd8:	3233544c 	orr	w12, w2, #0xffffe007
     cdc:	494d5f58 	.inst	0x494d5f58 ; undefined
     ce0:	30315f4e 	adr	x14, 638c9 <fat32_open+0x62bd1>
     ce4:	5058455f 	adr	xzr, b158e <fat32_open+0xb0896>
     ce8:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     cec:	3730332d 	tbnz	w13, #6, 1350 <.debug_str+0x1350>
     cf0:	535f0029 	.inst	0x535f0029 ; undefined
     cf4:	5f455a49 	.inst	0x5f455a49 ; undefined
     cf8:	45445f54 	.inst	0x45445f54 ; undefined
     cfc:	52414c43 	.inst	0x52414c43 ; undefined
     d00:	00204445 	.inst	0x00204445 ; NYI
     d04:	544e4955 	.inst	0x544e4955 ; undefined
     d08:	414d5f38 	.inst	0x414d5f38 ; undefined
     d0c:	5f5f2058 	.inst	0x5f5f2058 ; undefined
     d10:	544e4955 	.inst	0x544e4955 ; undefined
     d14:	414d5f38 	.inst	0x414d5f38 ; undefined
     d18:	005f5f58 	.inst	0x005f5f58 ; undefined
     d1c:	5f474953 	.inst	0x5f474953 ; undefined
     d20:	4d4f5441 	.inst	0x4d4f5441 ; undefined
     d24:	4d5f4349 	.inst	0x4d5f4349 ; undefined
     d28:	5f004e49 	.inst	0x5f004e49 ; undefined
     d2c:	4d52415f 	.inst	0x4d52415f ; undefined
     d30:	4145465f 	.inst	0x4145465f ; undefined
     d34:	45525554 	.inst	0x45525554 ; undefined
     d38:	3150465f 	cmn	w18, #0x411, lsl #12
     d3c:	45565f36 	.inst	0x45565f36 ; undefined
     d40:	524f5443 	.inst	0x524f5443 ; undefined
     d44:	4952415f 	.inst	0x4952415f ; undefined
     d48:	454d4854 	.inst	0x454d4854 ; undefined
     d4c:	00434954 	.inst	0x00434954 ; undefined
     d50:	49555f5f 	.inst	0x49555f5f ; undefined
     d54:	465f544e 	.inst	0x465f544e ; undefined
     d58:	36545341 	tbz	w1, #10, ffffffffffff97c0 <fat32_open+0xffffffffffff8ac8>
     d5c:	414d5f34 	.inst	0x414d5f34 ; undefined
     d60:	205f5f58 	.inst	0x205f5f58 ; undefined
     d64:	66667830 	.inst	0x66667830 ; undefined
     d68:	66666666 	.inst	0x66666666 ; undefined
     d6c:	66666666 	.inst	0x66666666 ; undefined
     d70:	66666666 	.inst	0x66666666 ; undefined
     d74:	4c556666 	.inst	0x4c556666 ; undefined
     d78:	6e656c00 	umin	v0.8h, v0.8h, v5.8h
     d7c:	00687467 	.inst	0x00687467 ; undefined
     d80:	73756c63 	.inst	0x73756c63 ; undefined
     d84:	5f726574 	.inst	0x5f726574 ; undefined
     d88:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
     d8c:	554e4700 	.inst	0x554e4700 ; undefined
     d90:	31314320 	adds	w0, w25, #0xc50
     d94:	322e3720 	orr	w0, w25, #0xfffc0000
     d98:	3220312e 	orr	w14, w9, #0x1fff
     d9c:	31373130 	adds	w16, w9, #0xdcc
     da0:	20313130 	.inst	0x20313130 ; undefined
     da4:	72616d2d 	.inst	0x72616d2d ; undefined
     da8:	613d6863 	.inst	0x613d6863 ; undefined
     dac:	38766d72 	.inst	0x38766d72 ; undefined
     db0:	2d20612d 	stp	s13, s24, [x9, #-256]
     db4:	74696c6d 	.inst	0x74696c6d ; undefined
     db8:	2d656c74 	ldp	s20, s27, [x3, #-216]
     dbc:	69646e65 	ldpsw	x5, x27, [x19, #-224]
     dc0:	2d206e61 	stp	s1, s27, [x19, #-256]
     dc4:	6962616d 	ldpsw	x13, x24, [x11, #-240]
     dc8:	36706c3d 	tbz	w29, #14, 1b4c <.debug_str+0x1b4c>
     dcc:	672d2034 	.inst	0x672d2034 ; undefined
     dd0:	732d2033 	.inst	0x732d2033 ; undefined
     dd4:	633d6474 	.inst	0x633d6474 ; undefined
     dd8:	2d203131 	stp	s17, s12, [x9, #-256]
     ddc:	65726666 	fnmls	z6.h, p1/m, z19.h, z18.h
     de0:	61747365 	.inst	0x61747365 ; undefined
     de4:	6e69646e 	umax	v14.8h, v3.8h, v9.8h
     de8:	662d2067 	.inst	0x662d2067 ; undefined
     dec:	00656970 	.inst	0x00656970 ; undefined
     df0:	4c465f5f 	.inst	0x4c465f5f ; undefined
     df4:	414d5f54 	.inst	0x414d5f54 ; undefined
     df8:	58455f58 	ldr	x24, 8b9e0 <fat32_open+0x8ace8>
     dfc:	205f5f50 	.inst	0x205f5f50 ; undefined
     e00:	00383231 	.inst	0x00383231 ; NYI
     e04:	544e4957 	.inst	0x544e4957 ; undefined
     e08:	4e494d5f 	.inst	0x4e494d5f ; undefined
     e0c:	575f5f20 	.inst	0x575f5f20 ; undefined
     e10:	5f544e49 	.inst	0x5f544e49 ; undefined
     e14:	5f4e494d 	.inst	0x5f4e494d ; undefined
     e18:	5f5f005f 	.inst	0x5f5f005f ; undefined
     e1c:	455a4953 	.inst	0x455a4953 ; undefined
     e20:	4c5f464f 	.inst	0x4c5f464f ; undefined
     e24:	5f474e4f 	.inst	0x5f474e4f ; undefined
     e28:	0038205f 	.inst	0x0038205f ; NYI
     e2c:	4d544e49 	.inst	0x4d544e49 ; undefined
     e30:	4d5f5841 	.inst	0x4d5f5841 ; undefined
     e34:	5f205841 	fmls	h1, h2, v0.h[6]
     e38:	544e495f 	.inst	0x544e495f ; undefined
     e3c:	5f58414d 	.inst	0x5f58414d ; undefined
     e40:	5f58414d 	.inst	0x5f58414d ; undefined
     e44:	5f5f005f 	.inst	0x5f5f005f ; undefined
     e48:	5f544e49 	.inst	0x5f544e49 ; undefined
     e4c:	5341454c 	.inst	0x5341454c ; undefined
     e50:	5f323354 	.inst	0x5f323354 ; undefined
     e54:	54444957 	.inst	0x54444957 ; undefined
     e58:	205f5f48 	.inst	0x205f5f48 ; undefined
     e5c:	5f003233 	.inst	0x5f003233 ; undefined
     e60:	42444c5f 	.inst	0x42444c5f ; undefined
     e64:	414d5f4c 	.inst	0x414d5f4c ; undefined
     e68:	30315f58 	adr	x24, 63a51 <fat32_open+0x62d59>
     e6c:	5058455f 	adr	xzr, b1716 <fat32_open+0xb0a1e>
     e70:	34205f5f 	cbz	wzr, 41a58 <fat32_open+0x40d60>
     e74:	00323339 	.inst	0x00323339 ; NYI
     e78:	61657263 	.inst	0x61657263 ; undefined
     e7c:	6e6f6974 	.inst	0x6e6f6974 ; undefined
     e80:	7461645f 	.inst	0x7461645f ; undefined
     e84:	5f5f0065 	.inst	0x5f5f0065 ; undefined
     e88:	414e494c 	.inst	0x414e494c ; undefined
     e8c:	525f4f52 	.inst	0x525f4f52 ; undefined
     e90:	41454c45 	.inst	0x41454c45 ; undefined
     e94:	5f5f4553 	.inst	0x5f5f4553 ; undefined
     e98:	31303220 	adds	w0, w17, #0xc0c
     e9c:	00313137 	.inst	0x00313137 ; NYI
     ea0:	49505f5f 	.inst	0x49505f5f ; undefined
     ea4:	205f5f45 	.inst	0x205f5f45 ; undefined
     ea8:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     eac:	36544c46 	tbz	w6, #10, ffffffffffff9834 <fat32_open+0xffffffffffff8b3c>
     eb0:	45445f34 	.inst	0x45445f34 ; undefined
     eb4:	4d524f4e 	.inst	0x4d524f4e ; undefined
     eb8:	4e494d5f 	.inst	0x4e494d5f ; undefined
     ebc:	34205f5f 	cbz	wzr, 41aa4 <fat32_open+0x40dac>
     ec0:	3034392e 	adr	x14, 695e5 <fat32_open+0x688ed>
     ec4:	34363536 	cbz	w22, 6d568 <fat32_open+0x6c870>
     ec8:	31343835 	adds	w21, w1, #0xd0e
     ecc:	35363432 	cbnz	w18, 6d550 <fat32_open+0x6c858>
     ed0:	37313434 	tbnz	w20, #6, 3554 <.debug_str+0x3554>
     ed4:	38363536 	.inst	0x38363536 ; undefined
     ed8:	38323937 	.inst	0x38323937 ; undefined
     edc:	32323836 	orr	w22, w1, #0x1fffc000
     ee0:	32373331 	orr	w17, w25, #0x3ffe00
     ee4:	32332d65 	orr	w5, w11, #0x1ffe000
     ee8:	34364634 	cbz	w20, 6d7ac <fat32_open+0x6cab4>
     eec:	445f5f00 	.inst	0x445f5f00 ; undefined
     ef0:	34364345 	cbz	w5, 6d758 <fat32_open+0x6ca60>
     ef4:	58414d5f 	ldr	xzr, 8389c <fat32_open+0x82ba4>
     ef8:	39205f5f 	strb	wzr, [x26, #2071]
     efc:	3939392e 	strb	w14, [x9, #3662]
     f00:	39393939 	strb	w25, [x9, #3662]
     f04:	39393939 	strb	w25, [x9, #3662]
     f08:	39393939 	strb	w25, [x9, #3662]
     f0c:	34383345 	cbz	w5, 71574 <fat32_open+0x7087c>
     f10:	5f004444 	.inst	0x5f004444 ; undefined
     f14:	544c465f 	.inst	0x544c465f ; undefined
     f18:	4e494d5f 	.inst	0x4e494d5f ; undefined
     f1c:	5f30315f 	.inst	0x5f30315f ; undefined
     f20:	5f505845 	.inst	0x5f505845 ; undefined
     f24:	2d28205f 	stp	s31, s8, [x2, #-192]
     f28:	00293733 	.inst	0x00293733 ; NYI
     f2c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     f30:	45445f54 	.inst	0x45445f54 ; undefined
     f34:	414d4943 	.inst	0x414d4943 ; undefined
     f38:	49445f4c 	.inst	0x49445f4c ; undefined
     f3c:	205f5f47 	.inst	0x205f5f47 ; undefined
     f40:	69730039 	ldpsw	x25, x0, [x1, #-104]
     f44:	64656e67 	.inst	0x64656e67 ; undefined
     f48:	61686320 	.inst	0x61686320 ; undefined
     f4c:	69750072 	ldpsw	x18, x0, [x3, #-88]
     f50:	5f38746e 	sqshl	s14, s3, #24
     f54:	4e490074 	.inst	0x4e490074 ; undefined
     f58:	4d5f3854 	.inst	0x4d5f3854 ; undefined
     f5c:	49005841 	.inst	0x49005841 ; undefined
     f60:	414d544e 	.inst	0x414d544e ; undefined
     f64:	494d5f58 	.inst	0x494d5f58 ; undefined
     f68:	2d28204e 	stp	s14, s8, [x2, #-192]
     f6c:	4d544e49 	.inst	0x4d544e49 ; undefined
     f70:	4d5f5841 	.inst	0x4d5f5841 ; undefined
     f74:	2d205841 	stp	s1, s22, [x2, #-256]
     f78:	00293120 	.inst	0x00293120 ; NYI
     f7c:	33544e49 	.inst	0x33544e49 ; undefined
     f80:	28435f32 	ldnp	w18, w23, [x25, #24]
     f84:	5f202963 	.inst	0x5f202963 ; undefined
     f88:	544e495f 	.inst	0x544e495f ; undefined
     f8c:	435f3233 	.inst	0x435f3233 ; undefined
     f90:	00296328 	.inst	0x00296328 ; NYI
     f94:	4c465f5f 	.inst	0x4c465f5f ; undefined
     f98:	5f323354 	.inst	0x5f323354 ; undefined
     f9c:	4f4e4544 	.inst	0x4f4e4544 ; undefined
     fa0:	4d5f4d52 	.inst	0x4d5f4d52 ; undefined
     fa4:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
     fa8:	342e3120 	cbz	w0, 5d5cc <fat32_open+0x5c8d4>
     fac:	39323130 	strb	w16, [x9, #3212]
     fb0:	34363438 	cbz	w24, 6d634 <fat32_open+0x6c93c>
     fb4:	38343233 	ldsetb	w20, w19, [x17]
     fb8:	37303731 	tbnz	w17, #6, 169c <.debug_str+0x169c>
     fbc:	33323930 	.inst	0x33323930 ; undefined
     fc0:	35393237 	cbnz	w23, 73604 <fat32_open+0x7290c>
     fc4:	38323338 	ldsetb	w18, w24, [x25]
     fc8:	36313939 	tbz	w25, #6, 36ec <.debug_str+0x36ec>
     fcc:	2d653331 	ldp	s17, s12, [x25, #-216]
     fd0:	33463534 	.inst	0x33463534 ; undefined
     fd4:	5f5f0032 	.inst	0x5f5f0032 ; undefined
     fd8:	43554e47 	.inst	0x43554e47 ; undefined
     fdc:	4454535f 	.inst	0x4454535f ; undefined
     fe0:	4e495f43 	.inst	0x4e495f43 ; undefined
     fe4:	454e494c 	.inst	0x454e494c ; undefined
     fe8:	31205f5f 	cmn	w26, #0x817
     fec:	74616600 	.inst	0x74616600 ; undefined
     ff0:	6f5f3233 	.inst	0x6f5f3233 ; undefined
     ff4:	006e6570 	.inst	0x006e6570 ; undefined
     ff8:	52415f5f 	.inst	0x52415f5f ; undefined
     ffc:	50465f4d 	adr	x13, 8dbe6 <fat32_open+0x8ceee>
    1000:	415f3631 	.inst	0x415f3631 ; undefined
    1004:	20534752 	.inst	0x20534752 ; undefined
    1008:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    100c:	53524556 	.inst	0x53524556 ; undefined
    1010:	5f4e4f49 	.inst	0x5f4e4f49 ; undefined
    1014:	3722205f 	tbnz	wzr, #4, 541c <fat32_open+0x4724>
    1018:	312e322e 	adds	w14, w17, #0xb8c
    101c:	31303220 	adds	w0, w17, #0xc0c
    1020:	31303137 	adds	w23, w9, #0xc0c
    1024:	5f002231 	.inst	0x5f002231 ; undefined
    1028:	554e475f 	.inst	0x554e475f ; undefined
    102c:	41505f43 	.inst	0x41505f43 ; undefined
    1030:	4c484354 	.inst	0x4c484354 ; undefined
    1034:	4c455645 	.inst	0x4c455645 ; undefined
    1038:	31205f5f 	cmn	w26, #0x817
    103c:	475f5f00 	.inst	0x475f5f00 ; undefined
    1040:	415f4343 	.inst	0x415f4343 ; undefined
    1044:	494d4f54 	.inst	0x494d4f54 ; undefined
    1048:	48435f43 	ldxrh	w3, [x26]
    104c:	32335241 	orr	w1, w18, #0xffffe003
    1050:	4c5f545f 	.inst	0x4c5f545f ; undefined
    1054:	5f4b434f 	.inst	0x5f4b434f ; undefined
    1058:	45455246 	.inst	0x45455246 ; undefined
    105c:	46003220 	.inst	0x46003220 ; undefined
    1060:	32335441 	orr	w1, w2, #0xffffe007
    1064:	5941445f 	.inst	0x5941445f ; undefined
    1068:	53414d5f 	.inst	0x53414d5f ; undefined
    106c:	7830204b 	ldeorh	w16, w11, [x2]
    1070:	66313030 	.inst	0x66313030 ; undefined
    1074:	52545000 	.inst	0x52545000 ; undefined
    1078:	46464944 	.inst	0x46464944 ; undefined
    107c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1080:	505f5f00 	adr	x0, bfc62 <fat32_open+0xbef6a>
    1084:	49445254 	.inst	0x49445254 ; undefined
    1088:	575f4646 	.inst	0x575f4646 ; undefined
    108c:	48544449 	ldxrh	w9, [x2]
    1090:	36205f5f 	tbz	wzr, #4, 1c78 <.debug_str+0x1c78>
    1094:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    1098:	544e4955 	.inst	0x544e4955 ; undefined
    109c:	41454c5f 	.inst	0x41454c5f ; undefined
    10a0:	36315453 	tbz	w19, #6, 3b28 <.debug_str+0x3b28>
    10a4:	58414d5f 	ldr	xzr, 83a4c <fat32_open+0x82d54>
    10a8:	30205f5f 	adr	xzr, 41c91 <fat32_open+0x40f99>
    10ac:	66666678 	.inst	0x66666678 ; undefined
    10b0:	49550066 	.inst	0x49550066 ; undefined
    10b4:	5450544e 	b.al	a1b3c <fat32_open+0xa0e44>
    10b8:	414d5f52 	.inst	0x414d5f52 ; undefined
    10bc:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    10c0:	544e4955 	.inst	0x544e4955 ; undefined
    10c4:	5f525450 	shl	d16, d2, #18
    10c8:	5f58414d 	.inst	0x5f58414d ; undefined
    10cc:	6f70005f 	mla	v31.8h, v2.8h, v0.h[3]
    10d0:	5f746e69 	.inst	0x5f746e69 ; undefined
    10d4:	65646e69 	fnmls	z9.h, p3/m, z19.h, z4.h
    10d8:	5f5f0078 	.inst	0x5f5f0078 ; undefined
    10dc:	33544c46 	.inst	0x33544c46 ; undefined
    10e0:	445f5832 	.inst	0x445f5832 ; undefined
    10e4:	524f4e45 	.inst	0x524f4e45 ; undefined
    10e8:	494d5f4d 	.inst	0x494d5f4d ; undefined
    10ec:	205f5f4e 	.inst	0x205f5f4e ; undefined
    10f0:	34392e34 	cbz	w20, 736b4 <fat32_open+0x729bc>
    10f4:	36353630 	tbz	w16, #6, ffffffffffffb7b8 <fat32_open+0xffffffffffffaac0>
    10f8:	34383534 	cbz	w20, 7179c <fat32_open+0x70aa4>
    10fc:	36343231 	tbz	w17, #6, ffffffffffff9740 <fat32_open+0xffffffffffff8a48>
    1100:	31343435 	adds	w21, w1, #0xd0d
    1104:	36353637 	tbz	w23, #6, ffffffffffffb7c8 <fat32_open+0xffffffffffffaad0>
    1108:	32393738 	orr	w24, w25, #0x1fff80
    110c:	32383638 	orr	w24, w17, #0x3fff00
    1110:	37333132 	tbnz	w18, #6, 7734 <fat32_open+0x6a3c>
    1114:	332d6532 	.inst	0x332d6532 ; undefined
    1118:	33463432 	.inst	0x33463432 ; undefined
    111c:	48007832 	stxrh	w0, w18, [x1]
    1120:	5453494c 	b.gt	a7a48 <fat32_open+0xa6d50>
    1124:	524f465f 	.inst	0x524f465f ; undefined
    1128:	48434145 	ldxrh	w5, [x10]
    112c:	72617628 	.inst	0x72617628 ; undefined
    1130:	6165682c 	.inst	0x6165682c ; undefined
    1134:	6f6e2c64 	.inst	0x6f6e2c64 ; undefined
    1138:	20296564 	.inst	0x20296564 ; undefined
    113c:	20726f66 	.inst	0x20726f66 ; undefined
    1140:	61762828 	.inst	0x61762828 ; undefined
    1144:	3d202972 	str	b18, [x11, #2058]
    1148:	494c4820 	.inst	0x494c4820 ; undefined
    114c:	465f5453 	.inst	0x465f5453 ; undefined
    1150:	54535249 	b.ls	a7b98 <fat32_open+0xa6ea0>  // b.plast
    1154:	4641535f 	.inst	0x4641535f ; undefined
    1158:	5f5f2845 	.inst	0x5f5f2845 ; undefined
    115c:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    1160:	5f5f666f 	.inst	0x5f5f666f ; undefined
    1164:	61762a28 	.inst	0x61762a28 ; undefined
    1168:	202c2972 	.inst	0x202c2972 ; undefined
    116c:	64616568 	.inst	0x64616568 ; undefined
    1170:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
    1174:	3b296564 	.inst	0x3b296564 ; undefined
    1178:	72617620 	.inst	0x72617620 ; undefined
    117c:	7628203b 	.inst	0x7628203b ; undefined
    1180:	20297261 	.inst	0x20297261 ; undefined
    1184:	4c48203d 	.inst	0x4c48203d ; undefined
    1188:	5f545349 	.inst	0x5f545349 ; undefined
    118c:	5458454e 	b.al	b1a34 <fat32_open+0xb0d3c>
    1190:	4641535f 	.inst	0x4641535f ; undefined
    1194:	61762845 	.inst	0x61762845 ; undefined
    1198:	6e202c72 	uqsub	v18.16b, v3.16b, v0.16b
    119c:	2965646f 	ldp	w15, w25, [x3, #-216]
    11a0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    11a4:	36544c46 	tbz	w6, #10, ffffffffffff9b2c <fat32_open+0xffffffffffff8e34>
    11a8:	414d5f34 	.inst	0x414d5f34 ; undefined
    11ac:	30315f58 	adr	x24, 63d95 <fat32_open+0x6309d>
    11b0:	5058455f 	adr	xzr, b1a5a <fat32_open+0xb0d62>
    11b4:	33205f5f 	.inst	0x33205f5f ; undefined
    11b8:	57003830 	.inst	0x57003830 ; undefined
    11bc:	5f544e49 	.inst	0x5f544e49 ; undefined
    11c0:	004e494d 	.inst	0x004e494d ; undefined
    11c4:	4e495f5f 	.inst	0x4e495f5f ; undefined
    11c8:	5f343654 	.inst	0x5f343654 ; undefined
    11cc:	29632843 	ldp	w3, w10, [x2, #-232]
    11d0:	23206320 	.inst	0x23206320 ; undefined
    11d4:	004c2023 	.inst	0x004c2023 ; undefined
    11d8:	5f726964 	.inst	0x5f726964 ; undefined
    11dc:	5f627573 	sqshl	d19, d11, #34
    11e0:	5f006b62 	.inst	0x5f006b62 ; undefined
    11e4:	5f445342 	.inst	0x5f445342 ; undefined
    11e8:	455a4953 	.inst	0x455a4953 ; undefined
    11ec:	445f545f 	.inst	0x445f545f ; undefined
    11f0:	4e494645 	.inst	0x4e494645 ; undefined
    11f4:	205f4445 	.inst	0x205f4445 ; undefined
    11f8:	555f5f00 	.inst	0x555f5f00 ; undefined
    11fc:	5f544e49 	.inst	0x5f544e49 ; undefined
    1200:	54534146 	b.vs	a7a28 <fat32_open+0xa6d30>
    1204:	545f3233 	.inst	0x545f3233 ; undefined
    1208:	5f455059 	.inst	0x5f455059 ; undefined
    120c:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    1210:	6e676973 	.inst	0x6e676973 ; undefined
    1214:	69206465 	.inst	0x69206465 ; undefined
    1218:	7500746e 	.inst	0x7500746e ; undefined
    121c:	6769736e 	.inst	0x6769736e ; undefined
    1220:	2064656e 	.inst	0x2064656e ; undefined
    1224:	72616863 	.inst	0x72616863 ; undefined
    1228:	535f5f00 	.inst	0x535f5f00 ; undefined
    122c:	5f434454 	.inst	0x5f434454 ; undefined
    1230:	5f465455 	shl	d21, d2, #6
    1234:	5f5f3233 	sqdmlal	s19, h17, v15.h[1]
    1238:	5f003120 	.inst	0x5f003120 ; undefined
    123c:	544c465f 	.inst	0x544c465f ; undefined
    1240:	455f3233 	.inst	0x455f3233 ; undefined
    1244:	4c495350 	.inst	0x4c495350 ; undefined
    1248:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    124c:	312e3120 	adds	w0, w9, #0xb8c
    1250:	39303239 	strb	w25, [x17, #3084]
    1254:	35393832 	cbnz	w18, 73958 <fat32_open+0x72c60>
    1258:	38373035 	ldsetb	w23, w21, [x1]
    125c:	30353231 	adr	x17, 6b8a1 <fat32_open+0x6aba9>
    1260:	30303030 	adr	x16, 61865 <fat32_open+0x60b6d>
    1264:	30303030 	adr	x16, 61869 <fat32_open+0x60b71>
    1268:	30303030 	adr	x16, 6186d <fat32_open+0x60b75>
    126c:	30303030 	adr	x16, 61871 <fat32_open+0x60b79>
    1270:	2d653030 	ldp	s16, s12, [x1, #-216]
    1274:	32334637 	orr	w23, w17, #0x7fffe000
    1278:	4e495500 	.inst	0x4e495500 ; undefined
    127c:	5f343654 	.inst	0x5f343654 ; undefined
    1280:	0058414d 	.inst	0x0058414d ; undefined
    1284:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1288:	414d5f54 	.inst	0x414d5f54 ; undefined
    128c:	30315f58 	adr	x24, 63e75 <fat32_open+0x6317d>
    1290:	5058455f 	adr	xzr, b1b3a <fat32_open+0xb0e42>
    1294:	33205f5f 	.inst	0x33205f5f ; undefined
    1298:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    129c:	31434544 	adds	w4, w10, #0xd1, lsl #12
    12a0:	4d5f3832 	.inst	0x4d5f3832 ; undefined
    12a4:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    12a8:	392e3920 	strb	w0, [x9, #2958]
    12ac:	39393939 	strb	w25, [x9, #3662]
    12b0:	39393939 	strb	w25, [x9, #3662]
    12b4:	39393939 	strb	w25, [x9, #3662]
    12b8:	39393939 	strb	w25, [x9, #3662]
    12bc:	39393939 	strb	w25, [x9, #3662]
    12c0:	39393939 	strb	w25, [x9, #3662]
    12c4:	39393939 	strb	w25, [x9, #3662]
    12c8:	39393939 	strb	w25, [x9, #3662]
    12cc:	34313645 	cbz	w5, 63994 <fat32_open+0x62c9c>
    12d0:	004c4434 	.inst	0x004c4434 ; undefined
    12d4:	45445f5f 	.inst	0x45445f5f ; undefined
    12d8:	38323143 	ldsetb	w18, w3, [x10]
    12dc:	58414d5f 	ldr	xzr, 83c84 <fat32_open+0x82f8c>
    12e0:	5058455f 	adr	xzr, b1b8a <fat32_open+0xb0e92>
    12e4:	36205f5f 	tbz	wzr, #4, 1ecc <.debug_str+0x1ecc>
    12e8:	00353431 	.inst	0x00353431 ; NYI
    12ec:	5f544e49 	.inst	0x5f544e49 ; undefined
    12f0:	5341454c 	.inst	0x5341454c ; undefined
    12f4:	5f323354 	.inst	0x5f323354 ; undefined
    12f8:	2058414d 	.inst	0x2058414d ; undefined
    12fc:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1300:	454c5f54 	.inst	0x454c5f54 ; undefined
    1304:	33545341 	.inst	0x33545341 ; undefined
    1308:	414d5f32 	.inst	0x414d5f32 ; undefined
    130c:	005f5f58 	.inst	0x005f5f58 ; undefined
    1310:	5341485f 	.inst	0x5341485f ; undefined
    1314:	50414d48 	adr	x8, 83cbe <fat32_open+0x82fc6>
    1318:	0020485f 	.inst	0x0020485f ; NYI
    131c:	53494c5f 	.inst	0x53494c5f ; undefined
    1320:	20485f54 	.inst	0x20485f54 ; undefined
    1324:	465f5f00 	.inst	0x465f5f00 ; undefined
    1328:	3436544c 	cbz	w12, 6ddb0 <fat32_open+0x6d0b8>
    132c:	494d5f58 	.inst	0x494d5f58 ; undefined
    1330:	58455f4e 	ldr	x14, 8bf18 <fat32_open+0x8b220>
    1334:	205f5f50 	.inst	0x205f5f50 ; undefined
    1338:	36312d28 	tbz	w8, #6, 38dc <.debug_str+0x38dc>
    133c:	29313833 	stp	w19, w14, [x1, #-120]
    1340:	415f5f00 	.inst	0x415f5f00 ; undefined
    1344:	494d4f54 	.inst	0x494d4f54 ; undefined
    1348:	45535f43 	.inst	0x45535f43 ; undefined
    134c:	53435f51 	.inst	0x53435f51 ; undefined
    1350:	00352054 	.inst	0x00352054 ; NYI
    1354:	33544146 	.inst	0x33544146 ; undefined
    1358:	4e455f32 	.inst	0x4e455f32 ; undefined
    135c:	5f595254 	.inst	0x5f595254 ; undefined
    1360:	45534552 	.inst	0x45534552 ; undefined
    1364:	44455652 	.inst	0x44455652 ; undefined
    1368:	30783020 	adr	x0, f196d <fat32_open+0xf0c75>
    136c:	30303030 	adr	x16, 61971 <fat32_open+0x60c79>
    1370:	5f003130 	.inst	0x5f003130 ; undefined
    1374:	544c465f 	.inst	0x544c465f ; undefined
    1378:	5f383231 	.inst	0x5f383231 ; undefined
    137c:	5f534148 	.inst	0x5f534148 ; undefined
    1380:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    1384:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    1388:	42003120 	.inst	0x42003120 ; undefined
    138c:	495f4e49 	.inst	0x495f4e49 ; undefined
    1390:	5845444e 	ldr	x14, 8bc18 <fat32_open+0x8af20>
    1394:	7a697328 	.inst	0x7a697328 ; undefined
    1398:	28202965 	stnp	w5, w10, [x11, #-256]
    139c:	69732828 	ldpsw	x8, x10, [x1, #-104]
    13a0:	2029657a 	.inst	0x2029657a ; undefined
    13a4:	33203d3c 	.inst	0x33203d3c ; undefined
    13a8:	203f2032 	.inst	0x203f2032 ; undefined
    13ac:	203a2035 	.inst	0x203a2035 ; undefined
    13b0:	425f5f28 	.inst	0x425f5f28 ; undefined
    13b4:	5f4c5253 	.inst	0x5f4c5253 ; undefined
    13b8:	6973285f 	ldpsw	xzr, x10, [x2, #-104]
    13bc:	2029657a 	.inst	0x2029657a ; undefined
    13c0:	5349202d 	.inst	0x5349202d ; undefined
    13c4:	574f505f 	.inst	0x574f505f ; undefined
    13c8:	4f5f5245 	.inst	0x4f5f5245 ; undefined
    13cc:	28325f46 	stnp	w6, w23, [x26, #-112]
    13d0:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    13d4:	20292929 	.inst	0x20292929 ; undefined
    13d8:	2935202d 	stp	w13, w8, [x1, #-88]
    13dc:	555f5f00 	.inst	0x555f5f00 ; undefined
    13e0:	31544e49 	adds	w9, w18, #0x513, lsl #12
    13e4:	414d5f36 	.inst	0x414d5f36 ; undefined
    13e8:	205f5f58 	.inst	0x205f5f58 ; undefined
    13ec:	66667830 	.inst	0x66667830 ; undefined
    13f0:	70006666 	adr	x6, 20bf <.debug_str+0x20bf>
    13f4:	69747261 	ldpsw	x1, x28, [x19, #-96]
    13f8:	6e6f6974 	.inst	0x6e6f6974 ; undefined
    13fc:	555f5f00 	.inst	0x555f5f00 ; undefined
    1400:	33544e49 	.inst	0x33544e49 ; undefined
    1404:	28435f32 	ldnp	w18, w23, [x25, #24]
    1408:	63202963 	.inst	0x63202963 ; undefined
    140c:	20232320 	.inst	0x20232320 ; undefined
    1410:	64730055 	fmla	z21.h, z2.h, z3.h[6]
    1414:	7272655f 	.inst	0x7272655f ; undefined
    1418:	495f5f00 	.inst	0x495f5f00 ; undefined
    141c:	414d544e 	.inst	0x414d544e ; undefined
    1420:	28435f58 	ldnp	w24, w23, [x26, #24]
    1424:	63202963 	.inst	0x63202963 ; undefined
    1428:	20232320 	.inst	0x20232320 ; undefined
    142c:	5f5f004c 	.inst	0x5f5f004c ; undefined
    1430:	4c42444c 	.inst	0x4c42444c ; undefined
    1434:	58414d5f 	ldr	xzr, 83ddc <fat32_open+0x830e4>
    1438:	5058455f 	adr	xzr, b1ce2 <fat32_open+0xb0fea>
    143c:	31205f5f 	cmn	w26, #0x817
    1440:	34383336 	cbz	w22, 71aa4 <fat32_open+0x70dac>
    1444:	535f5f00 	.inst	0x535f5f00 ; undefined
    1448:	4f455a49 	.inst	0x4f455a49 ; undefined
    144c:	48535f46 	ldxrh	w6, [x26]
    1450:	5f54524f 	.inst	0x5f54524f ; undefined
    1454:	0032205f 	.inst	0x0032205f ; NYI
    1458:	6f6f425f 	mls	v31.8h, v18.8h, v15.h[2]
    145c:	5f5f006c 	.inst	0x5f5f006c ; undefined
    1460:	5f656970 	.inst	0x5f656970 ; undefined
    1464:	0031205f 	.inst	0x0031205f ; NYI
    1468:	5f544e49 	.inst	0x5f544e49 ; undefined
    146c:	54534146 	b.vs	a7c94 <fat32_open+0xa6f9c>
    1470:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1474:	28204e49 	stnp	w9, w19, [x18, #-256]
    1478:	544e492d 	b.le	9dd9c <fat32_open+0x9d0a4>
    147c:	5341465f 	.inst	0x5341465f ; undefined
    1480:	5f323354 	.inst	0x5f323354 ; undefined
    1484:	2058414d 	.inst	0x2058414d ; undefined
    1488:	2931202d 	stp	w13, w8, [x1, #-120]
    148c:	535f5f00 	.inst	0x535f5f00 ; undefined
    1490:	43495254 	.inst	0x43495254 ; undefined
    1494:	4e415f54 	.inst	0x4e415f54 ; undefined
    1498:	5f5f4953 	.inst	0x5f5f4953 ; undefined
    149c:	5f003120 	.inst	0x5f003120 ; undefined
    14a0:	455a4953 	.inst	0x455a4953 ; undefined
    14a4:	445f545f 	.inst	0x445f545f ; undefined
    14a8:	4e494645 	.inst	0x4e494645 ; undefined
    14ac:	205f4445 	.inst	0x205f4445 ; undefined
    14b0:	4c554e00 	.inst	0x4c554e00 ; undefined
    14b4:	5f5f004c 	.inst	0x5f5f004c ; undefined
    14b8:	5f544c46 	.inst	0x5f544c46 ; undefined
    14bc:	4c415645 	.inst	0x4c415645 ; undefined
    14c0:	54454d5f 	.inst	0x54454d5f ; undefined
    14c4:	5f444f48 	.inst	0x5f444f48 ; undefined
    14c8:	5f393943 	.inst	0x5f393943 ; undefined
    14cc:	0030205f 	.inst	0x0030205f ; NYI
    14d0:	544e4955 	.inst	0x544e4955 ; undefined
    14d4:	28435f38 	ldnp	w24, w23, [x25, #24]
    14d8:	5f202963 	.inst	0x5f202963 ; undefined
    14dc:	4e49555f 	.inst	0x4e49555f ; undefined
    14e0:	435f3854 	.inst	0x435f3854 ; undefined
    14e4:	00296328 	.inst	0x00296328 ; NYI
    14e8:	4c465f5f 	.inst	0x4c465f5f ; undefined
    14ec:	38323154 	ldsetb	w18, w20, [x10]
    14f0:	4e494d5f 	.inst	0x4e494d5f ; undefined
    14f4:	33205f5f 	.inst	0x33205f5f ; undefined
    14f8:	3236332e 	orr	w14, w25, #0x7ffc00
    14fc:	31333031 	adds	w17, w1, #0xccc
    1500:	31313334 	adds	w20, w25, #0xc4c
    1504:	33393032 	.inst	0x33393032 ; undefined
    1508:	32363035 	orr	w21, w1, #0x7ffc00
    150c:	37363236 	tbnz	w22, #6, ffffffffffffdb50 <fat32_open+0xffffffffffffce58>
    1510:	37313837 	tbnz	w23, #6, 3c14 <.debug_str+0x3c14>
    1514:	37313233 	tbnz	w19, #6, 3b58 <.debug_str+0x3b58>
    1518:	30363235 	adr	x21, 6db5d <fat32_open+0x6ce65>
    151c:	39342d65 	strb	w5, [x11, #3339]
    1520:	31463233 	adds	w19, w17, #0x18c, lsl #12
    1524:	5f003832 	.inst	0x5f003832 ; undefined
    1528:	4152505f 	.inst	0x4152505f ; undefined
    152c:	5f414d47 	.inst	0x5f414d47 ; undefined
    1530:	45444552 	.inst	0x45444552 ; undefined
    1534:	454e4946 	.inst	0x454e4946 ; undefined
    1538:	5458455f 	.inst	0x5458455f ; undefined
    153c:	454d414e 	.inst	0x454d414e ; undefined
    1540:	5f003120 	.inst	0x5f003120 ; undefined
    1544:	4843575f 	ldxrh	wzr, [x26]
    1548:	545f5241 	b.ne	bff90 <fat32_open+0xbf298>  // b.any
    154c:	5f455059 	.inst	0x5f455059 ; undefined
    1550:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    1554:	6e676973 	.inst	0x6e676973 ; undefined
    1558:	69206465 	.inst	0x69206465 ; undefined
    155c:	5700746e 	.inst	0x5700746e ; undefined
    1560:	5f544e49 	.inst	0x5f544e49 ; undefined
    1564:	2058414d 	.inst	0x2058414d ; undefined
    1568:	49575f5f 	.inst	0x49575f5f ; undefined
    156c:	4d5f544e 	.inst	0x4d5f544e ; undefined
    1570:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1574:	61686300 	.inst	0x61686300 ; undefined
    1578:	5f5f0072 	.inst	0x5f5f0072 ; undefined
    157c:	5f434347 	.inst	0x5f434347 ; undefined
    1580:	45564148 	.inst	0x45564148 ; undefined
    1584:	4e59535f 	.inst	0x4e59535f ; undefined
    1588:	4f435f43 	.inst	0x4f435f43 ; undefined
    158c:	5241504d 	.inst	0x5241504d ; undefined
    1590:	4e415f45 	.inst	0x4e415f45 ; undefined
    1594:	57535f44 	.inst	0x57535f44 ; undefined
    1598:	325f5041 	.inst	0x325f5041 ; undefined
    159c:	50003120 	adr	x0, 1bc2 <.debug_str+0x1bc2>
    15a0:	49445254 	.inst	0x49445254 ; undefined
    15a4:	4d5f4646 	.inst	0x4d5f4646 ; undefined
    15a8:	28204e49 	stnp	w9, w19, [x18, #-256]
    15ac:	5254502d 	.inst	0x5254502d ; undefined
    15b0:	46464944 	.inst	0x46464944 ; undefined
    15b4:	58414d5f 	ldr	xzr, 83f5c <fat32_open+0x83264>
    15b8:	31202d20 	adds	w0, w9, #0x80b
    15bc:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    15c0:	5f544e49 	.inst	0x5f544e49 ; undefined
    15c4:	54534146 	b.vs	a7dec <fat32_open+0xa70f4>
    15c8:	545f3436 	.inst	0x545f3436 ; undefined
    15cc:	5f455059 	.inst	0x5f455059 ; undefined
    15d0:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    15d4:	6920676e 	.inst	0x6920676e ; undefined
    15d8:	7000746e 	adr	x14, 2467 <.debug_str+0x2467>
    15dc:	00667562 	.inst	0x00667562 ; undefined
    15e0:	49535f5f 	.inst	0x49535f5f ; undefined
    15e4:	464f455a 	.inst	0x464f455a ; undefined
    15e8:	544e495f 	.inst	0x544e495f ; undefined
    15ec:	34205f5f 	cbz	wzr, 421d4 <fat32_open+0x414dc>
    15f0:	425f5f00 	.inst	0x425f5f00 ; undefined
    15f4:	45474749 	.inst	0x45474749 ; undefined
    15f8:	415f5453 	.inst	0x415f5453 ; undefined
    15fc:	4e47494c 	.inst	0x4e47494c ; undefined
    1600:	544e454d 	b.le	9dea8 <fat32_open+0x9d1b0>
    1604:	31205f5f 	cmn	w26, #0x817
    1608:	69740036 	ldpsw	x22, x0, [x1, #-96]
    160c:	745f656d 	.inst	0x745f656d ; undefined
    1610:	4e490073 	.inst	0x4e490073 ; undefined
    1614:	41465f54 	.inst	0x41465f54 ; undefined
    1618:	34365453 	cbz	w19, 6e0a0 <fat32_open+0x6d3a8>
    161c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1620:	43475f00 	.inst	0x43475f00 ; undefined
    1624:	52575f43 	.inst	0x52575f43 ; undefined
    1628:	535f5041 	.inst	0x535f5041 ; undefined
    162c:	4e494454 	.inst	0x4e494454 ; undefined
    1630:	20485f54 	.inst	0x20485f54 ; undefined
    1634:	555f5f00 	.inst	0x555f5f00 ; undefined
    1638:	38544e49 	ldrb	w9, [x18, #-188]!
    163c:	58414d5f 	ldr	xzr, 83fe4 <fat32_open+0x832ec>
    1640:	30205f5f 	adr	xzr, 42229 <fat32_open+0x41531>
    1644:	00666678 	.inst	0x00666678 ; undefined
    1648:	4c465f5f 	.inst	0x4c465f5f ; undefined
    164c:	50455f54 	adr	x20, 8c236 <fat32_open+0x8b53e>
    1650:	4f4c4953 	.inst	0x4f4c4953 ; undefined
    1654:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1658:	39312e31 	strb	w17, [x17, #3147]
    165c:	32393032 	orr	w18, w1, #0xfff80
    1660:	35353938 	cbnz	w24, 6bd84 <fat32_open+0x6b08c>
    1664:	31383730 	adds	w16, w25, #0xe0d
    1668:	30303532 	adr	x18, 61d0d <fat32_open+0x61015>
    166c:	30303030 	adr	x16, 61c71 <fat32_open+0x60f79>
    1670:	30303030 	adr	x16, 61c75 <fat32_open+0x60f7d>
    1674:	30303030 	adr	x16, 61c79 <fat32_open+0x60f81>
    1678:	30303030 	adr	x16, 61c7d <fat32_open+0x60f85>
    167c:	372d6530 	tbnz	w16, #5, ffffffffffffc320 <fat32_open+0xffffffffffffb628>
    1680:	5f5f0046 	.inst	0x5f5f0046 ; undefined
    1684:	5f434347 	.inst	0x5f434347 ; undefined
    1688:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    168c:	535f4349 	.inst	0x535f4349 ; undefined
    1690:	54524f48 	b.hi	a6078 <fat32_open+0xa5380>  // b.pmore
    1694:	434f4c5f 	.inst	0x434f4c5f ; undefined
    1698:	52465f4b 	.inst	0x52465f4b ; undefined
    169c:	32204545 	orr	w5, w10, #0x3ffff
    16a0:	73696400 	.inst	0x73696400 ; undefined
    16a4:	636e6174 	.inst	0x636e6174 ; undefined
    16a8:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    16ac:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    16b0:	5f534148 	.inst	0x5f534148 ; undefined
    16b4:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    16b8:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    16bc:	5f003120 	.inst	0x5f003120 ; undefined
    16c0:	5253425f 	.inst	0x5253425f ; undefined
    16c4:	285f5f4c 	ldnp	w12, w23, [x26, #248]
    16c8:	28202978 	stnp	w24, w10, [x11, #-256]
    16cc:	2d203436 	stp	s22, s13, [x1, #-256]
    16d0:	625f5f20 	.inst	0x625f5f20 ; undefined
    16d4:	746c6975 	.inst	0x746c6975 ; undefined
    16d8:	635f6e69 	.inst	0x635f6e69 ; undefined
    16dc:	286c7a6c 	ldnp	w12, w30, [x19, #-160]
    16e0:	00292978 	.inst	0x00292978 ; NYI
    16e4:	58475f5f 	ldr	xzr, 902cc <fat32_open+0x8f5d4>
    16e8:	42415f58 	.inst	0x42415f58 ; undefined
    16ec:	45565f49 	.inst	0x45565f49 ; undefined
    16f0:	4f495352 	.inst	0x4f495352 ; undefined
    16f4:	3031204e 	adr	x14, 63afd <fat32_open+0x62e05>
    16f8:	55003131 	.inst	0x55003131 ; undefined
    16fc:	5f544e49 	.inst	0x5f544e49 ; undefined
    1700:	54534146 	b.vs	a7f28 <fat32_open+0xa7230>
    1704:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1708:	66005841 	.inst	0x66005841 ; undefined
    170c:	7367616c 	.inst	0x7367616c ; undefined
    1710:	495f5f00 	.inst	0x495f5f00 ; undefined
    1714:	4c5f544e 	.inst	0x4c5f544e ; undefined
    1718:	54534145 	b.pl	a7f40 <fat32_open+0xa7248>  // b.nfrst
    171c:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    1720:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1724:	37783020 	tbnz	w0, #15, 1d28 <.debug_str+0x1d28>
    1728:	00666666 	.inst	0x00666666 ; undefined
    172c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1730:	38323154 	ldsetb	w18, w20, [x10]
    1734:	58414d5f 	ldr	xzr, 840dc <fat32_open+0x833e4>
    1738:	5058455f 	adr	xzr, b1fe2 <fat32_open+0xb12ea>
    173c:	31205f5f 	cmn	w26, #0x817
    1740:	34383336 	cbz	w22, 71da4 <fat32_open+0x710ac>
    1744:	544e4900 	b.eq	9e064 <fat32_open+0x9d36c>  // b.none
    1748:	41454c5f 	.inst	0x41454c5f ; undefined
    174c:	5f385453 	.inst	0x5f385453 ; undefined
    1750:	2058414d 	.inst	0x2058414d ; undefined
    1754:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1758:	454c5f54 	.inst	0x454c5f54 ; undefined
    175c:	38545341 	ldurb	w1, [x26, #-187]
    1760:	58414d5f 	ldr	xzr, 84108 <fat32_open+0x83410>
    1764:	5f005f5f 	.inst	0x5f005f5f ; undefined
    1768:	7361685f 	.inst	0x7361685f ; undefined
    176c:	636e695f 	.inst	0x636e695f ; undefined
    1770:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
    1774:	78656e5f 	.inst	0x78656e5f ; undefined
    1778:	54532874 	.inst	0x54532874 ; undefined
    177c:	5f202952 	.inst	0x5f202952 ; undefined
    1780:	7361685f 	.inst	0x7361685f ; undefined
    1784:	636e695f 	.inst	0x636e695f ; undefined
    1788:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
    178c:	78656e5f 	.inst	0x78656e5f ; undefined
    1790:	285f5f74 	ldnp	w20, w23, [x27, #248]
    1794:	29525453 	ldp	w19, w21, [x2, #144]
    1798:	415f5f00 	.inst	0x415f5f00 ; undefined
    179c:	415f4d52 	.inst	0x415f4d52 ; undefined
    17a0:	4e47494c 	.inst	0x4e47494c ; undefined
    17a4:	58414d5f 	ldr	xzr, 8414c <fat32_open+0x83454>
    17a8:	4154535f 	.inst	0x4154535f ; undefined
    17ac:	505f4b43 	adr	x3, c0116 <fat32_open+0xbf41e>
    17b0:	31205257 	adds	w23, w18, #0x814
    17b4:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    17b8:	31544c46 	adds	w6, w2, #0x513, lsl #12
    17bc:	45445f36 	.inst	0x45445f36 ; undefined
    17c0:	414d4943 	.inst	0x414d4943 ; undefined
    17c4:	49445f4c 	.inst	0x49445f4c ; undefined
    17c8:	205f5f47 	.inst	0x205f5f47 ; undefined
    17cc:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    17d0:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    17d4:	36315046 	tbz	w6, #6, 41dc <.debug_str+0x41dc>
    17d8:	524f465f 	.inst	0x524f465f ; undefined
    17dc:	5f54414d 	.inst	0x5f54414d ; undefined
    17e0:	45454549 	.inst	0x45454549 ; undefined
    17e4:	5f003120 	.inst	0x5f003120 ; undefined
    17e8:	5a49535f 	.inst	0x5a49535f ; undefined
    17ec:	5f464f45 	.inst	0x5f464f45 ; undefined
    17f0:	42554f44 	.inst	0x42554f44 ; undefined
    17f4:	5f5f454c 	.inst	0x5f5f454c ; undefined
    17f8:	64003820 	.inst	0x64003820 ; undefined
    17fc:	73617369 	.inst	0x73617369 ; undefined
    1800:	626d6573 	.inst	0x626d6573 ; undefined
    1804:	6600656c 	.inst	0x6600656c ; undefined
    1808:	65736c61 	fnmls	z1.h, p3/m, z3.h, z19.h
    180c:	5f003020 	.inst	0x5f003020 ; undefined
    1810:	544e495f 	.inst	0x544e495f ; undefined
    1814:	4843575f 	ldxrh	wzr, [x26]
    1818:	545f5241 	b.ne	c0260 <fat32_open+0xbf568>  // b.any
    181c:	0020485f 	.inst	0x0020485f ; NYI
    1820:	43475f5f 	.inst	0x43475f5f ; undefined
    1824:	54415f43 	b.cc	8440c <fat32_open+0x83714>  // b.lo, b.ul, b.last
    1828:	43494d4f 	.inst	0x43494d4f ; undefined
    182c:	5345545f 	.inst	0x5345545f ; undefined
    1830:	4e415f54 	.inst	0x4e415f54 ; undefined
    1834:	45535f44 	.inst	0x45535f44 ; undefined
    1838:	52545f54 	.inst	0x52545f54 ; undefined
    183c:	41564555 	.inst	0x41564555 ; undefined
    1840:	0031204c 	.inst	0x0031204c ; NYI
    1844:	68636163 	.inst	0x68636163 ; undefined
    1848:	65645f65 	fnmla	z5.h, p7/m, z27.h, z4.h
    184c:	65636976 	fnmls	z22.h, p2/m, z11.h, z3.h
    1850:	69736600 	ldpsw	x0, x25, [x16, #-104]
    1854:	5f6f666e 	.inst	0x5f6f666e ; undefined
    1858:	74636573 	.inst	0x74636573 ; undefined
    185c:	5f00726f 	.inst	0x5f00726f ; undefined
    1860:	464c455f 	.inst	0x464c455f ; undefined
    1864:	31205f5f 	cmn	w26, #0x817
    1868:	41565f00 	.inst	0x41565f00 ; undefined
    186c:	53494c5f 	.inst	0x53494c5f ; undefined
    1870:	45445f54 	.inst	0x45445f54 ; undefined
    1874:	454e4946 	.inst	0x454e4946 ; undefined
    1878:	66002044 	.inst	0x66002044 ; undefined
    187c:	00656c69 	.inst	0x00656c69 ; undefined
    1880:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1884:	5f323354 	.inst	0x5f323354 ; undefined
    1888:	5f534148 	.inst	0x5f534148 ; undefined
    188c:	45495551 	.inst	0x45495551 ; undefined
    1890:	414e5f54 	.inst	0x414e5f54 ; undefined
    1894:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1898:	535f0031 	.inst	0x535f0031 ; undefined
    189c:	54455a49 	b.ls	8c3e4 <fat32_open+0x8b6ec>  // b.plast
    18a0:	5f00205f 	.inst	0x5f00205f ; undefined
    18a4:	42444c5f 	.inst	0x42444c5f ; undefined
    18a8:	41485f4c 	.inst	0x41485f4c ; undefined
    18ac:	4e495f53 	.inst	0x4e495f53 ; undefined
    18b0:	494e4946 	.inst	0x494e4946 ; undefined
    18b4:	5f5f5954 	.inst	0x5f5f5954 ; undefined
    18b8:	55003120 	.inst	0x55003120 ; undefined
    18bc:	31544e49 	adds	w9, w18, #0x513, lsl #12
    18c0:	414d5f36 	.inst	0x414d5f36 ; undefined
    18c4:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    18c8:	544e4955 	.inst	0x544e4955 ; undefined
    18cc:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    18d0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    18d4:	54414600 	b.eq	84194 <fat32_open+0x8349c>  // b.none
    18d8:	475f3233 	.inst	0x475f3233 ; undefined
    18dc:	595f5445 	.inst	0x595f5445 ; undefined
    18e0:	28524145 	ldnp	w5, w16, [x10, #144]
    18e4:	65746164 	fnmls	z4.h, p0/m, z11.h, z20.h
    18e8:	28282029 	stnp	w9, w8, [x1, #-192]
    18ec:	74616428 	.inst	0x74616428 ; undefined
    18f0:	26202965 	.inst	0x26202965 ; undefined
    18f4:	54414620 	b.eq	841b8 <fat32_open+0x834c0>  // b.none
    18f8:	595f3233 	.inst	0x595f3233 ; undefined
    18fc:	5f524145 	.inst	0x5f524145 ; undefined
    1900:	4b53414d 	sub	w13, w10, w19, lsr #16
    1904:	3e3e2029 	.inst	0x3e3e2029 ; undefined
    1908:	00293920 	.inst	0x00293920 ; NYI
    190c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1910:	58323354 	ldr	x20, 65f78 <fat32_open+0x65280>
    1914:	58414d5f 	ldr	xzr, 842bc <fat32_open+0x835c4>
    1918:	5f30315f 	.inst	0x5f30315f ; undefined
    191c:	5f505845 	.inst	0x5f505845 ; undefined
    1920:	3033205f 	adr	xzr, 67d29 <fat32_open+0x67031>
    1924:	6f760038 	mla	v24.8h, v1.8h, v6.h[3]
    1928:	656d756c 	fnmls	z12.h, p5/m, z11.h, z13.h
    192c:	62616c5f 	.inst	0x62616c5f ; undefined
    1930:	5f00656c 	.inst	0x5f00656c ; undefined
    1934:	554e475f 	.inst	0x554e475f ; undefined
    1938:	41565f43 	.inst	0x41565f43 ; undefined
    193c:	53494c5f 	.inst	0x53494c5f ; undefined
    1940:	72002054 	ands	w20, w2, #0x1ff
    1944:	72657365 	.inst	0x72657365 ; undefined
    1948:	5f646576 	.inst	0x5f646576 ; undefined
    194c:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    1950:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
    1954:	425f206c 	.inst	0x425f206c ; undefined
    1958:	006c6f6f 	.inst	0x006c6f6f ; undefined
    195c:	5441465f 	.inst	0x5441465f ; undefined
    1960:	485f3233 	ldxrh	w19, [x17]
    1964:	49550020 	.inst	0x49550020 ; undefined
    1968:	414d544e 	.inst	0x414d544e ; undefined
    196c:	414d5f58 	.inst	0x414d5f58 ; undefined
    1970:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    1974:	544e4955 	.inst	0x544e4955 ; undefined
    1978:	5f58414d 	.inst	0x5f58414d ; undefined
    197c:	5f58414d 	.inst	0x5f58414d ; undefined
    1980:	5f5f005f 	.inst	0x5f5f005f ; undefined
    1984:	5f474953 	.inst	0x5f474953 ; undefined
    1988:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    198c:	4d5f4349 	.inst	0x4d5f4349 ; undefined
    1990:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    1994:	5f2d2820 	.inst	0x5f2d2820 ; undefined
    1998:	4749535f 	.inst	0x4749535f ; undefined
    199c:	4f54415f 	.inst	0x4f54415f ; undefined
    19a0:	5f43494d 	.inst	0x5f43494d ; undefined
    19a4:	5f58414d 	.inst	0x5f58414d ; undefined
    19a8:	202d205f 	.inst	0x202d205f ; undefined
    19ac:	5f002931 	.inst	0x5f002931 ; undefined
    19b0:	4e49555f 	.inst	0x4e49555f ; undefined
    19b4:	454c5f54 	.inst	0x454c5f54 ; undefined
    19b8:	38545341 	ldurb	w1, [x26, #-187]
    19bc:	58414d5f 	ldr	xzr, 84364 <fat32_open+0x8366c>
    19c0:	30205f5f 	adr	xzr, 425a9 <fat32_open+0x418b1>
    19c4:	00666678 	.inst	0x00666678 ; undefined
    19c8:	45445f5f 	.inst	0x45445f5f ; undefined
    19cc:	5f343643 	.inst	0x5f343643 ; undefined
    19d0:	5f4e494d 	.inst	0x5f4e494d ; undefined
    19d4:	5f505845 	.inst	0x5f505845 ; undefined
    19d8:	2d28205f 	stp	s31, s8, [x2, #-192]
    19dc:	29323833 	stp	w19, w14, [x1, #-112]
    19e0:	53425f00 	.inst	0x53425f00 ; undefined
    19e4:	43575f44 	.inst	0x43575f44 ; undefined
    19e8:	5f524148 	.inst	0x5f524148 ; undefined
    19ec:	00205f54 	.inst	0x00205f54 ; NYI
    19f0:	66667562 	.inst	0x66667562 ; undefined
    19f4:	68007265 	.inst	0x68007265 ; undefined
    19f8:	73646165 	.inst	0x73646165 ; undefined
    19fc:	544e4900 	b.eq	9e31c <fat32_open+0x9d624>  // b.none
    1a00:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    1a04:	5f205841 	fmls	h1, h2, v0.h[6]
    1a08:	544e495f 	.inst	0x544e495f ; undefined
    1a0c:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    1a10:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1a14:	465f5f00 	.inst	0x465f5f00 ; undefined
    1a18:	3436544c 	cbz	w12, 6e4a0 <fat32_open+0x6d7a8>
    1a1c:	41485f58 	.inst	0x41485f58 ; undefined
    1a20:	4e495f53 	.inst	0x4e495f53 ; undefined
    1a24:	494e4946 	.inst	0x494e4946 ; undefined
    1a28:	5f5f5954 	.inst	0x5f5f5954 ; undefined
    1a2c:	5f003120 	.inst	0x5f003120 ; undefined
    1a30:	5f50465f 	.inst	0x5f50465f ; undefined
    1a34:	54534146 	b.vs	a825c <fat32_open+0xa7564>
    1a38:	414d465f 	.inst	0x414d465f ; undefined
    1a3c:	00312046 	.inst	0x00312046 ; NYI
    1a40:	42445f5f 	.inst	0x42445f5f ; undefined
    1a44:	414d5f4c 	.inst	0x414d5f4c ; undefined
    1a48:	205f5f58 	.inst	0x205f5f58 ; undefined
    1a4c:	6f642828 	umlal2	v8.4s, v1.8h, v4.h[6]
    1a50:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
    1a54:	372e3129 	tbnz	w9, #5, ffffffffffffe078 <fat32_open+0xffffffffffffd380>
    1a58:	39363739 	strb	w25, [x25, #3469]
    1a5c:	34333133 	cbz	w19, 68080 <fat32_open+0x67388>
    1a60:	33323638 	.inst	0x33323638 ; undefined
    1a64:	30373531 	adr	x17, 70109 <fat32_open+0x6f411>
    1a68:	35343138 	cbnz	w24, 6a08c <fat32_open+0x69394>
    1a6c:	32343732 	orr	w18, w25, #0x3fff000
    1a70:	31333733 	adds	w19, w25, #0xccd
    1a74:	33343037 	.inst	0x33343037 ; undefined
    1a78:	2b653735 	.inst	0x2b653735 ; undefined
    1a7c:	4c383033 	.inst	0x4c383033 ; undefined
    1a80:	4e490029 	.inst	0x4e490029 ; undefined
    1a84:	454c5f54 	.inst	0x454c5f54 ; undefined
    1a88:	36545341 	tbz	w1, #10, ffffffffffffa4f0 <fat32_open+0xffffffffffff97f8>
    1a8c:	414d5f34 	.inst	0x414d5f34 ; undefined
    1a90:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    1a94:	5f544e49 	.inst	0x5f544e49 ; undefined
    1a98:	5341454c 	.inst	0x5341454c ; undefined
    1a9c:	5f343654 	.inst	0x5f343654 ; undefined
    1aa0:	5f58414d 	.inst	0x5f58414d ; undefined
    1aa4:	4955005f 	.inst	0x4955005f ; undefined
    1aa8:	3233544e 	orr	w14, w2, #0xffffe007
    1aac:	58414d5f 	ldr	xzr, 84454 <fat32_open+0x8375c>
    1ab0:	73616c00 	.inst	0x73616c00 ; undefined
    1ab4:	6f6d5f74 	.inst	0x6f6d5f74 ; undefined
    1ab8:	69745f64 	ldpsw	x4, x23, [x27, #-96]
    1abc:	5f00656d 	.inst	0x5f00656d ; undefined
    1ac0:	544e495f 	.inst	0x544e495f ; undefined
    1ac4:	41454c5f 	.inst	0x41454c5f ; undefined
    1ac8:	36315453 	tbz	w19, #6, 4550 <.debug_str+0x4550>
    1acc:	4449575f 	.inst	0x4449575f ; undefined
    1ad0:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1ad4:	00363120 	.inst	0x00363120 ; NYI
    1ad8:	45445f5f 	.inst	0x45445f5f ; undefined
    1adc:	56455f43 	.inst	0x56455f43 ; undefined
    1ae0:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    1ae4:	4f485445 	shl	v5.2d, v2.2d, #8
    1ae8:	205f5f44 	.inst	0x205f5f44 ; undefined
    1aec:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1af0:	544e4955 	.inst	0x544e4955 ; undefined
    1af4:	5341465f 	.inst	0x5341465f ; undefined
    1af8:	5f323354 	.inst	0x5f323354 ; undefined
    1afc:	5f58414d 	.inst	0x5f58414d ; undefined
    1b00:	7830205f 	steorh	w16, [x2]
    1b04:	66666666 	.inst	0x66666666 ; undefined
    1b08:	66666666 	.inst	0x66666666 ; undefined
    1b0c:	5f5f0055 	.inst	0x5f5f0055 ; undefined
    1b10:	36434544 	tbz	w4, #8, 83b8 <fat32_open+0x76c0>
    1b14:	55535f34 	.inst	0x55535f34 ; undefined
    1b18:	524f4e42 	.inst	0x524f4e42 ; undefined
    1b1c:	5f4c414d 	.inst	0x5f4c414d ; undefined
    1b20:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1b24:	2e30205f 	usubl	v31.8h, v2.8b, v16.8b
    1b28:	30303030 	adr	x16, 6212d <fat32_open+0x61435>
    1b2c:	30303030 	adr	x16, 62131 <fat32_open+0x61439>
    1b30:	30303030 	adr	x16, 62135 <fat32_open+0x6143d>
    1b34:	45313030 	.inst	0x45313030 ; undefined
    1b38:	3338332d 	.inst	0x3338332d ; undefined
    1b3c:	46004444 	.inst	0x46004444 ; undefined
    1b40:	32335441 	orr	w1, w2, #0xffffe007
    1b44:	5445475f 	.inst	0x5445475f ; undefined
    1b48:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1b4c:	28455455 	ldnp	w21, w21, [x2, #40]
    1b50:	656d6974 	fnmls	z20.h, p2/m, z11.h, z13.h
    1b54:	28282029 	stnp	w9, w8, [x1, #-192]
    1b58:	6d697428 	ldp	d8, d29, [x1, #-368]
    1b5c:	26202965 	.inst	0x26202965 ; undefined
    1b60:	54414620 	b.eq	84424 <fat32_open+0x8372c>  // b.none
    1b64:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1b68:	54554e49 	b.ls	ac530 <fat32_open+0xab838>  // b.plast
    1b6c:	414d5f45 	.inst	0x414d5f45 ; undefined
    1b70:	20294b53 	.inst	0x20294b53 ; undefined
    1b74:	35203e3e 	cbnz	w30, 42338 <fat32_open+0x41640>
    1b78:	554e0029 	.inst	0x554e0029 ; undefined
    1b7c:	28204c4c 	stnp	w12, w19, [x2, #-256]
    1b80:	696f7628 	ldpsw	x8, x29, [x17, #-136]
    1b84:	292a2064 	stp	w4, w8, [x3, #-176]
    1b88:	63002930 	.inst	0x63002930 ; undefined
    1b8c:	74616572 	.inst	0x74616572 ; undefined
    1b90:	5f6e6f69 	.inst	0x5f6e6f69 ; undefined
    1b94:	656d6974 	fnmls	z20.h, p2/m, z11.h, z13.h
    1b98:	6e5f5f00 	.inst	0x6e5f5f00 ; undefined
    1b9c:	5f646565 	.inst	0x5f646565 ; undefined
    1ba0:	4c4c554e 	.inst	0x4c4c554e ; undefined
    1ba4:	555f5f00 	.inst	0x555f5f00 ; undefined
    1ba8:	5f524553 	.inst	0x5f524553 ; undefined
    1bac:	4542414c 	.inst	0x4542414c ; undefined
    1bb0:	52505f4c 	.inst	0x52505f4c ; undefined
    1bb4:	58494645 	ldr	x5, 9447c <fat32_open+0x93784>
    1bb8:	00205f5f 	.inst	0x00205f5f ; NYI
    1bbc:	65747865 	fnmls	z5.h, p6/m, z3.h, z20.h
    1bc0:	6f69736e 	fcmla	v14.8h, v27.8h, v9.h[1], #270
    1bc4:	4e49006e 	.inst	0x4e49006e ; undefined
    1bc8:	41465f54 	.inst	0x41465f54 ; undefined
    1bcc:	5f385453 	.inst	0x5f385453 ; undefined
    1bd0:	004e494d 	.inst	0x004e494d ; undefined
    1bd4:	5f544e49 	.inst	0x5f544e49 ; undefined
    1bd8:	54534146 	b.vs	a8400 <fat32_open+0xa7708>
    1bdc:	414d5f38 	.inst	0x414d5f38 ; undefined
    1be0:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    1be4:	5f544e49 	.inst	0x5f544e49 ; undefined
    1be8:	54534146 	b.vs	a8410 <fat32_open+0xa7718>
    1bec:	414d5f38 	.inst	0x414d5f38 ; undefined
    1bf0:	005f5f58 	.inst	0x005f5f58 ; undefined
    1bf4:	5f6d656f 	.inst	0x5f6d656f ; undefined
    1bf8:	5f006469 	.inst	0x5f006469 ; undefined
    1bfc:	544e495f 	.inst	0x544e495f ; undefined
    1c00:	41454c5f 	.inst	0x41454c5f ; undefined
    1c04:	34365453 	cbz	w19, 6e68c <fat32_open+0x6d994>
    1c08:	5059545f 	adr	xzr, b4692 <fat32_open+0xb399a>
    1c0c:	205f5f45 	.inst	0x205f5f45 ; undefined
    1c10:	676e6f6c 	.inst	0x676e6f6c ; undefined
    1c14:	746e6920 	.inst	0x746e6920 ; undefined
    1c18:	72617000 	.inst	0x72617000 ; undefined
    1c1c:	6e655f74 	uqrshl	v20.8h, v27.8h, v5.8h
    1c20:	00797274 	.inst	0x00797274 ; undefined
    1c24:	54535f5f 	.inst	0x54535f5f ; undefined
    1c28:	565f4344 	.inst	0x565f4344 ; undefined
    1c2c:	49535245 	.inst	0x49535245 ; undefined
    1c30:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    1c34:	31303220 	adds	w0, w17, #0xc0c
    1c38:	4c323131 	.inst	0x4c323131 ; undefined
    1c3c:	544e4900 	b.eq	9e55c <fat32_open+0x9d864>  // b.none
    1c40:	435f3436 	.inst	0x435f3436 ; undefined
    1c44:	20296328 	.inst	0x20296328 ; undefined
    1c48:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1c4c:	5f343654 	.inst	0x5f343654 ; undefined
    1c50:	29632843 	ldp	w3, w10, [x2, #-232]
    1c54:	495f5f00 	.inst	0x495f5f00 ; undefined
    1c58:	4c5f544e 	.inst	0x4c5f544e ; undefined
    1c5c:	54534145 	b.pl	a8484 <fat32_open+0xa778c>  // b.nfrst
    1c60:	414d5f38 	.inst	0x414d5f38 ; undefined
    1c64:	205f5f58 	.inst	0x205f5f58 ; undefined
    1c68:	66377830 	.inst	0x66377830 ; undefined
    1c6c:	445f5f00 	.inst	0x445f5f00 ; undefined
    1c70:	32314345 	orr	w5, w26, #0xffff8000
    1c74:	414d5f38 	.inst	0x414d5f38 ; undefined
    1c78:	445f544e 	.inst	0x445f544e ; undefined
    1c7c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1c80:	00343320 	.inst	0x00343320 ; NYI
    1c84:	52415f5f 	.inst	0x52415f5f ; undefined
    1c88:	45465f4d 	.inst	0x45465f4d ; undefined
    1c8c:	52555441 	.inst	0x52555441 ; undefined
    1c90:	4c435f45 	.inst	0x4c435f45 ; undefined
    1c94:	0031205a 	.inst	0x0031205a ; NYI
    1c98:	5453494c 	b.gt	a85c0 <fat32_open+0xa78c8>
    1c9c:	504d455f 	adr	xzr, 9c546 <fat32_open+0x9b84e>
    1ca0:	68285954 	.inst	0x68285954 ; undefined
    1ca4:	29646165 	ldp	w5, w24, [x11, #-224]
    1ca8:	68282820 	.inst	0x68282820 ; undefined
    1cac:	29646165 	ldp	w5, w24, [x11, #-224]
    1cb0:	656e3e2d 	fmls	z13.h, p7/m, z17.h, z14.h
    1cb4:	3d207478 	str	b24, [x3, #2077]
    1cb8:	6568203d 	fmls	z29.h, p0/m, z1.h, z8.h
    1cbc:	00296461 	.inst	0x00296461 ; NYI
    1cc0:	54415f5f 	.inst	0x54415f5f ; undefined
    1cc4:	43494d4f 	.inst	0x43494d4f ; undefined
    1cc8:	5143415f 	sub	wsp, w10, #0xd0, lsl #12
    1ccc:	45524955 	.inst	0x45524955 ; undefined
    1cd0:	5f003220 	.inst	0x5f003220 ; undefined
    1cd4:	5a49535f 	.inst	0x5a49535f ; undefined
    1cd8:	5f464f45 	.inst	0x5f464f45 ; undefined
    1cdc:	31544e49 	adds	w9, w18, #0x513, lsl #12
    1ce0:	5f5f3832 	sqdmlal	s18, h1, v15.h[5]
    1ce4:	00363120 	.inst	0x00363120 ; NYI
    1ce8:	52415f5f 	.inst	0x52415f5f ; undefined
    1cec:	49425f4d 	.inst	0x49425f4d ; undefined
    1cf0:	4e455f47 	.inst	0x4e455f47 ; undefined
    1cf4:	4e414944 	.inst	0x4e414944 ; undefined
    1cf8:	415f5f00 	.inst	0x415f5f00 ; undefined
    1cfc:	535f4d52 	.inst	0x535f4d52 ; undefined
    1d00:	4f455a49 	.inst	0x4f455a49 ; undefined
    1d04:	43575f46 	.inst	0x43575f46 ; undefined
    1d08:	5f524148 	.inst	0x5f524148 ; undefined
    1d0c:	00342054 	.inst	0x00342054 ; NYI
    1d10:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1d14:	58323354 	ldr	x20, 6637c <fat32_open+0x65684>
    1d18:	58414d5f 	ldr	xzr, 846c0 <fat32_open+0x839c8>
    1d1c:	5058455f 	adr	xzr, b25c6 <fat32_open+0xb18ce>
    1d20:	31205f5f 	cmn	w26, #0x817
    1d24:	00343230 	.inst	0x00343230 ; NYI
    1d28:	61685f5f 	.inst	0x61685f5f ; undefined
    1d2c:	6e695f73 	uqrshl	v19.8h, v27.8h, v9.8h
    1d30:	64756c63 	.inst	0x64756c63 ; undefined
    1d34:	54532865 	b.pl	a8240 <fat32_open+0xa7548>  // b.nfrst
    1d38:	5f202952 	.inst	0x5f202952 ; undefined
    1d3c:	7361685f 	.inst	0x7361685f ; undefined
    1d40:	636e695f 	.inst	0x636e695f ; undefined
    1d44:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
    1d48:	53285f5f 	.inst	0x53285f5f ; undefined
    1d4c:	00295254 	.inst	0x00295254 ; NYI
    1d50:	53494c48 	.inst	0x53494c48 ; undefined
    1d54:	454e5f54 	.inst	0x454e5f54 ; undefined
    1d58:	535f5458 	.inst	0x535f5458 ; undefined
    1d5c:	28454641 	ldnp	w1, w17, [x18, #40]
    1d60:	2c727470 	ldnp	s16, s29, [x3, #-112]
    1d64:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    1d68:	28282029 	stnp	w9, w8, [x1, #-192]
    1d6c:	29727470 	ldp	w16, w29, [x3, #-112]
    1d70:	6f6e3e2d 	.inst	0x6f6e3e2d ; undefined
    1d74:	6e2e6564 	umax	v4.16b, v11.16b, v14.16b
    1d78:	20747865 	.inst	0x20747865 ; undefined
    1d7c:	4c48203f 	.inst	0x4c48203f ; undefined
    1d80:	5f545349 	.inst	0x5f545349 ; undefined
    1d84:	5458454e 	b.al	b262c <fat32_open+0xb1934>
    1d88:	72747028 	.inst	0x72747028 ; undefined
    1d8c:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
    1d90:	20296564 	.inst	0x20296564 ; undefined
    1d94:	554e203a 	.inst	0x554e203a ; undefined
    1d98:	00294c4c 	.inst	0x00294c4c ; NYI
    1d9c:	5f544e49 	.inst	0x5f544e49 ; undefined
    1da0:	54534146 	b.vs	a85c8 <fat32_open+0xa78d0>
    1da4:	494d5f38 	.inst	0x494d5f38 ; undefined
    1da8:	2d28204e 	stp	s14, s8, [x2, #-192]
    1dac:	5f544e49 	.inst	0x5f544e49 ; undefined
    1db0:	54534146 	b.vs	a85d8 <fat32_open+0xa78e0>
    1db4:	414d5f38 	.inst	0x414d5f38 ; undefined
    1db8:	202d2058 	.inst	0x202d2058 ; undefined
    1dbc:	5f002931 	.inst	0x5f002931 ; undefined
    1dc0:	544e495f 	.inst	0x544e495f ; undefined
    1dc4:	41454c5f 	.inst	0x41454c5f ; undefined
    1dc8:	34365453 	cbz	w19, 6e850 <fat32_open+0x6db58>
    1dcc:	4449575f 	.inst	0x4449575f ; undefined
    1dd0:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1dd4:	00343620 	.inst	0x00343620 ; NYI
    1dd8:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1ddc:	41485f54 	.inst	0x41485f54 ; undefined
    1de0:	4e495f53 	.inst	0x4e495f53 ; undefined
    1de4:	494e4946 	.inst	0x494e4946 ; undefined
    1de8:	5f5f5954 	.inst	0x5f5f5954 ; undefined
    1dec:	5f003120 	.inst	0x5f003120 ; undefined
    1df0:	544e495f 	.inst	0x544e495f ; undefined
    1df4:	414d5f38 	.inst	0x414d5f38 ; undefined
    1df8:	205f5f58 	.inst	0x205f5f58 ; undefined
    1dfc:	66377830 	.inst	0x66377830 ; undefined
    1e00:	54414600 	b.eq	846c0 <fat32_open+0x839c8>  // b.none
    1e04:	455f3233 	.inst	0x455f3233 ; undefined
    1e08:	5952544e 	.inst	0x5952544e ; undefined
    1e0c:	53414d5f 	.inst	0x53414d5f ; undefined
    1e10:	7830204b 	ldeorh	w16, w11, [x2]
    1e14:	66666630 	.inst	0x66666630 ; undefined
    1e18:	66666666 	.inst	0x66666666 ; undefined
    1e1c:	4e495500 	.inst	0x4e495500 ; undefined
    1e20:	41465f54 	.inst	0x41465f54 ; undefined
    1e24:	34365453 	cbz	w19, 6e8ac <fat32_open+0x6dbb4>
    1e28:	58414d5f 	ldr	xzr, 847d0 <fat32_open+0x83ad8>
    1e2c:	495f5f00 	.inst	0x495f5f00 ; undefined
    1e30:	465f544e 	.inst	0x465f544e ; undefined
    1e34:	31545341 	adds	w1, w26, #0x514, lsl #12
    1e38:	59545f36 	.inst	0x59545f36 ; undefined
    1e3c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    1e40:	746e6920 	.inst	0x746e6920 ; undefined
    1e44:	475f5f00 	.inst	0x475f5f00 ; undefined
    1e48:	485f4343 	ldxrh	w3, [x26]
    1e4c:	5f455641 	shl	d1, d18, #5
    1e50:	52415744 	.inst	0x52415744 ; undefined
    1e54:	435f3246 	.inst	0x435f3246 ; undefined
    1e58:	415f4946 	.inst	0x415f4946 ; undefined
    1e5c:	31204d53 	adds	w19, w10, #0x813
    1e60:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
    1e64:	6c626174 	ldnp	d20, d24, [x11, #-480]
    1e68:	6f6c0065 	mla	v5.8h, v3.8h, v12.h[2]
    1e6c:	7520676e 	.inst	0x7520676e ; undefined
    1e70:	6769736e 	.inst	0x6769736e ; undefined
    1e74:	2064656e 	.inst	0x2064656e ; undefined
    1e78:	00746e69 	.inst	0x00746e69 ; undefined
    1e7c:	48535f5f 	ldxrh	wzr, [x26]
    1e80:	575f5452 	.inst	0x575f5452 ; undefined
    1e84:	48544449 	ldxrh	w9, [x2]
    1e88:	31205f5f 	cmn	w26, #0x817
    1e8c:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    1e90:	5f434347 	.inst	0x5f434347 ; undefined
    1e94:	5f434549 	.inst	0x5f434549 ; undefined
    1e98:	5f393535 	.inst	0x5f393535 ; undefined
    1e9c:	504d4f43 	adr	x3, 9c886 <fat32_open+0x9bb8e>
    1ea0:	2058454c 	.inst	0x2058454c ; undefined
    1ea4:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1ea8:	43554e47 	.inst	0x43554e47 ; undefined
    1eac:	37205f5f 	tbnz	wzr, #4, 2a94 <.debug_str+0x2a94>
    1eb0:	555f5f00 	.inst	0x555f5f00 ; undefined
    1eb4:	31544e49 	adds	w9, w18, #0x513, lsl #12
    1eb8:	59545f36 	.inst	0x59545f36 ; undefined
    1ebc:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    1ec0:	6f687320 	fcmla	v0.8h, v25.8h, v8.h[1], #270
    1ec4:	75207472 	.inst	0x75207472 ; undefined
    1ec8:	6769736e 	.inst	0x6769736e ; undefined
    1ecc:	2064656e 	.inst	0x2064656e ; undefined
    1ed0:	00746e69 	.inst	0x00746e69 ; undefined
    1ed4:	444c5f5f 	.inst	0x444c5f5f ; undefined
    1ed8:	445f4c42 	.inst	0x445f4c42 ; undefined
    1edc:	4d494345 	.inst	0x4d494345 ; undefined
    1ee0:	445f4c41 	.inst	0x445f4c41 ; undefined
    1ee4:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1ee8:	00363320 	.inst	0x00363320 ; NYI
    1eec:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1ef0:	41465f54 	.inst	0x41465f54 ; undefined
    1ef4:	32335453 	orr	w19, w2, #0xffffe007
    1ef8:	58414d5f 	ldr	xzr, 848a0 <fat32_open+0x83ba8>
    1efc:	30205f5f 	adr	xzr, 42ae5 <fat32_open+0x41ded>
    1f00:	66663778 	.inst	0x66663778 ; undefined
    1f04:	66666666 	.inst	0x66666666 ; undefined
    1f08:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    1f0c:	36544c46 	tbz	w6, #10, ffffffffffffa894 <fat32_open+0xffffffffffff9b9c>
    1f10:	4d5f5834 	.inst	0x4d5f5834 ; undefined
    1f14:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
    1f18:	58455f30 	ldr	x16, 8cafc <fat32_open+0x8be04>
    1f1c:	205f5f50 	.inst	0x205f5f50 ; undefined
    1f20:	39342d28 	strb	w8, [x9, #3339]
    1f24:	00293133 	.inst	0x00293133 ; NYI
    1f28:	45445f5f 	.inst	0x45445f5f ; undefined
    1f2c:	5f323343 	.inst	0x5f323343 ; undefined
    1f30:	5f58414d 	.inst	0x5f58414d ; undefined
    1f34:	5f505845 	.inst	0x5f505845 ; undefined
    1f38:	3739205f 	tbnz	wzr, #7, 4340 <.debug_str+0x4340>
    1f3c:	544e4900 	b.eq	9e85c <fat32_open+0x9db64>  // b.none
    1f40:	5341465f 	.inst	0x5341465f ; undefined
    1f44:	5f323354 	.inst	0x5f323354 ; undefined
    1f48:	004e494d 	.inst	0x004e494d ; undefined
    1f4c:	535f545f 	.inst	0x535f545f ; undefined
    1f50:	5f455a49 	.inst	0x5f455a49 ; undefined
    1f54:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    1f58:	5f544c46 	.inst	0x5f544c46 ; undefined
    1f5c:	4c415645 	.inst	0x4c415645 ; undefined
    1f60:	54454d5f 	.inst	0x54454d5f ; undefined
    1f64:	5f444f48 	.inst	0x5f444f48 ; undefined
    1f68:	315f5354 	adds	w20, w26, #0x7d4, lsl #12
    1f6c:	31363638 	adds	w24, w17, #0xd8d
    1f70:	5f5f335f 	sqdmlal	s31, h26, v15.h[1]
    1f74:	5f003020 	.inst	0x5f003020 ; undefined
    1f78:	7261615f 	.inst	0x7261615f ; undefined
    1f7c:	34366863 	cbz	w3, 6ec88 <fat32_open+0x6df90>
    1f80:	31205f5f 	cmn	w26, #0x817
    1f84:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    1f88:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    1f8c:	49535045 	.inst	0x49535045 ; undefined
    1f90:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    1f94:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1f98:	39353239 	strb	w25, [x17, #3404]
    1f9c:	34393932 	cbz	w18, 746c0 <fat32_open+0x739c8>
    1fa0:	37383334 	tbnz	w20, #7, 2604 <.debug_str+0x2604>
    1fa4:	38353332 	ldsetb	w21, w18, [x25]
    1fa8:	35303335 	cbnz	w21, 6260c <fat32_open+0x61914>
    1fac:	37373935 	tbnz	w21, #6, 6d0 <.debug_str+0x6d0>
    1fb0:	35323439 	cbnz	w25, 66634 <fat32_open+0x6593c>
    1fb4:	32393438 	orr	w24, w1, #0x1fff80
    1fb8:	65323337 	.inst	0x65323337 ; undefined
    1fbc:	4c34332d 	.inst	0x4c34332d ; undefined
    1fc0:	53494c00 	.inst	0x53494c00 ; undefined
    1fc4:	49465f54 	.inst	0x49465f54 ; undefined
    1fc8:	28545352 	ldnp	w18, w20, [x26, #160]
    1fcc:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    1fd0:	6165682c 	.inst	0x6165682c ; undefined
    1fd4:	6f6e2c64 	.inst	0x6f6e2c64 ; undefined
    1fd8:	20296564 	.inst	0x20296564 ; undefined
    1fdc:	544e4f43 	b.cc	9e9c4 <fat32_open+0x9dccc>  // b.lo, b.ul, b.last
    1fe0:	454e4941 	.inst	0x454e4941 ; undefined
    1fe4:	464f5f52 	.inst	0x464f5f52 ; undefined
    1fe8:	70797428 	adr	x8, f4e6f <fat32_open+0xf4177>
    1fec:	28202c65 	stnp	w5, w11, [x3, #-256]
    1ff0:	64616568 	.inst	0x64616568 ; undefined
    1ff4:	6e3e2d29 	uqsub	v9.16b, v9.16b, v30.16b
    1ff8:	2c747865 	ldnp	s5, s30, [x3, #-96]
    1ffc:	646f6e20 	.inst	0x646f6e20 ; undefined
    2000:	55002965 	.inst	0x55002965 ; undefined
    2004:	5f544e49 	.inst	0x5f544e49 ; undefined
    2008:	54534146 	b.vs	a8830 <fat32_open+0xa7b38>
    200c:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2010:	5f005841 	fmls	h1, h2, v0.h[4]
    2014:	4e49555f 	.inst	0x4e49555f ; undefined
    2018:	41465f54 	.inst	0x41465f54 ; undefined
    201c:	5f385453 	.inst	0x5f385453 ; undefined
    2020:	45505954 	.inst	0x45505954 ; undefined
    2024:	75205f5f 	.inst	0x75205f5f ; undefined
    2028:	6769736e 	.inst	0x6769736e ; undefined
    202c:	2064656e 	.inst	0x2064656e ; undefined
    2030:	00746e69 	.inst	0x00746e69 ; undefined
    2034:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2038:	5f363154 	.inst	0x5f363154 ; undefined
    203c:	49535045 	.inst	0x49535045 ; undefined
    2040:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    2044:	2e39205f 	usubl	v31.8h, v2.8b, v25.8b
    2048:	36353637 	tbz	w23, #6, ffffffffffffc70c <fat32_open+0xffffffffffffba14>
    204c:	30303532 	adr	x18, 626f1 <fat32_open+0x619f9>
    2050:	30303030 	adr	x16, 62655 <fat32_open+0x6195d>
    2054:	30303030 	adr	x16, 62659 <fat32_open+0x61961>
    2058:	30303030 	adr	x16, 6265d <fat32_open+0x61965>
    205c:	30303030 	adr	x16, 62661 <fat32_open+0x61969>
    2060:	30303030 	adr	x16, 62665 <fat32_open+0x6196d>
    2064:	30303030 	adr	x16, 62669 <fat32_open+0x61971>
    2068:	65303030 	.inst	0x65303030 ; undefined
    206c:	3146342d 	adds	w13, w1, #0x18d, lsl #12
    2070:	4c480036 	.inst	0x4c480036 ; undefined
    2074:	5f545349 	.inst	0x5f545349 ; undefined
    2078:	54504d45 	b.pl	a2a20 <fat32_open+0xa1d28>  // b.nfrst
    207c:	65682859 	fmls	z25.h, p2/m, z2.h, z8.h
    2080:	20296461 	.inst	0x20296461 ; undefined
    2084:	65682828 	fmls	z8.h, p2/m, z1.h, z8.h
    2088:	2d296461 	stp	s1, s25, [x3, #-184]
    208c:	7269663e 	.inst	0x7269663e ; undefined
    2090:	3d207473 	str	b19, [x3, #2077]
    2094:	554e203d 	.inst	0x554e203d ; undefined
    2098:	00294c4c 	.inst	0x00294c4c ; NYI
    209c:	36504c5f 	tbz	wzr, #10, 2a24 <.debug_str+0x2a24>
    20a0:	00312034 	.inst	0x00312034 ; NYI
    20a4:	544e4955 	.inst	0x544e4955 ; undefined
    20a8:	5f58414d 	.inst	0x5f58414d ; undefined
    20ac:	0058414d 	.inst	0x0058414d ; undefined
    20b0:	4c465f5f 	.inst	0x4c465f5f ; undefined
    20b4:	58343654 	ldr	x20, 6a77c <fat32_open+0x69a84>
    20b8:	4345445f 	.inst	0x4345445f ; undefined
    20bc:	4c414d49 	.inst	0x4c414d49 ; undefined
    20c0:	4749445f 	.inst	0x4749445f ; undefined
    20c4:	33205f5f 	.inst	0x33205f5f ; undefined
    20c8:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    20cc:	33544c46 	.inst	0x33544c46 ; undefined
    20d0:	414d5f32 	.inst	0x414d5f32 ; undefined
    20d4:	445f544e 	.inst	0x445f544e ; undefined
    20d8:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    20dc:	00343220 	.inst	0x00343220 ; NYI
    20e0:	5f544e49 	.inst	0x5f544e49 ; undefined
    20e4:	5341454c 	.inst	0x5341454c ; undefined
    20e8:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    20ec:	6f005841 	.inst	0x6f005841 ; undefined
    20f0:	65736666 	fnmls	z6.h, p1/m, z19.h, z19.h
    20f4:	28666f74 	ldnp	w20, w27, [x27, #-208]
    20f8:	45505954 	.inst	0x45505954 ; undefined
    20fc:	4d454d2c 	.inst	0x4d454d2c ; undefined
    2100:	29524542 	ldp	w2, w17, [x10, #144]
    2104:	625f5f20 	.inst	0x625f5f20 ; undefined
    2108:	746c6975 	.inst	0x746c6975 ; undefined
    210c:	6f5f6e69 	.inst	0x6f5f6e69 ; undefined
    2110:	65736666 	fnmls	z6.h, p1/m, z19.h, z19.h
    2114:	20666f74 	.inst	0x20666f74 ; undefined
    2118:	50595428 	adr	x8, b4b9e <fat32_open+0xb3ea6>
    211c:	4d202c45 	st4	{v5.b-v8.b}[11], [x2]
    2120:	45424d45 	.inst	0x45424d45 ; undefined
    2124:	49002952 	.inst	0x49002952 ; undefined
    2128:	5f38544e 	.inst	0x5f38544e ; undefined
    212c:	2058414d 	.inst	0x2058414d ; undefined
    2130:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2134:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    2138:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    213c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2140:	3436544c 	cbz	w12, 6ebc8 <fat32_open+0x6ded0>
    2144:	414d5f58 	.inst	0x414d5f58 ; undefined
    2148:	445f544e 	.inst	0x445f544e ; undefined
    214c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    2150:	33313120 	.inst	0x33313120 ; undefined
    2154:	475f5f00 	.inst	0x475f5f00 ; undefined
    2158:	415f4343 	.inst	0x415f4343 ; undefined
    215c:	494d4f54 	.inst	0x494d4f54 ; undefined
    2160:	48435f43 	ldxrh	w3, [x26]
    2164:	36315241 	tbz	w1, #6, 4bac <fat32_open+0x3eb4>
    2168:	4c5f545f 	.inst	0x4c5f545f ; undefined
    216c:	5f4b434f 	.inst	0x5f4b434f ; undefined
    2170:	45455246 	.inst	0x45455246 ; undefined
    2174:	5f003220 	.inst	0x5f003220 ; undefined
    2178:	4c42445f 	.inst	0x4c42445f ; undefined
    217c:	58414d5f 	ldr	xzr, 84b24 <fat32_open+0x83e2c>
    2180:	5058455f 	adr	xzr, b2a2a <fat32_open+0xb1d32>
    2184:	31205f5f 	cmn	w26, #0x817
    2188:	00343230 	.inst	0x00343230 ; NYI
    218c:	54415f5f 	.inst	0x54415f5f ; undefined
    2190:	43494d4f 	.inst	0x43494d4f ; undefined
    2194:	4c45525f 	.inst	0x4c45525f ; undefined
    2198:	45534145 	.inst	0x45534145 ; undefined
    219c:	6c003320 	stnp	d0, d12, [x25]
    21a0:	735f676f 	.inst	0x735f676f ; undefined
    21a4:	6f746365 	umlsl2	v5.4s, v27.8h, v4.h[3]
    21a8:	645f7372 	fcmla	z18.h, p4/m, z27.h, z31.h, #270
    21ac:	465f5f00 	.inst	0x465f5f00 ; undefined
    21b0:	3233544c 	orr	w12, w2, #0xffffe007
    21b4:	41485f58 	.inst	0x41485f58 ; undefined
    21b8:	45445f53 	.inst	0x45445f53 ; undefined
    21bc:	4d524f4e 	.inst	0x4d524f4e ; undefined
    21c0:	31205f5f 	cmn	w26, #0x817
    21c4:	465f5f00 	.inst	0x465f5f00 ; undefined
    21c8:	4d5f544c 	.inst	0x4d5f544c ; undefined
    21cc:	5f544e41 	.inst	0x5f544e41 ; undefined
    21d0:	5f474944 	.inst	0x5f474944 ; undefined
    21d4:	3432205f 	cbz	wzr, 665dc <fat32_open+0x658e4>
    21d8:	495f5f00 	.inst	0x495f5f00 ; undefined
    21dc:	465f544e 	.inst	0x465f544e ; undefined
    21e0:	33545341 	.inst	0x33545341 ; undefined
    21e4:	59545f32 	.inst	0x59545f32 ; undefined
    21e8:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    21ec:	746e6920 	.inst	0x746e6920 ; undefined
    21f0:	54535f00 	b.eq	a8dd0 <fat32_open+0xa80d8>  // b.none
    21f4:	47524144 	.inst	0x47524144 ; undefined
    21f8:	0020485f 	.inst	0x0020485f ; NYI
    21fc:	33544146 	.inst	0x33544146 ; undefined
    2200:	4f485f32 	.inst	0x4f485f32 ; undefined
    2204:	4d5f5255 	.inst	0x4d5f5255 ; undefined
    2208:	204b5341 	.inst	0x204b5341 ; undefined
    220c:	38667830 	ldrb	w16, [x1, x6, lsl #0]
    2210:	5f003030 	.inst	0x5f003030 ; undefined
    2214:	6e695f5f 	uqrshl	v31.8h, v26.8h, v9.8h
    2218:	74705f74 	.inst	0x74705f74 ; undefined
    221c:	66696472 	.inst	0x66696472 ; undefined
    2220:	5f745f66 	.inst	0x5f745f66 ; undefined
    2224:	48002068 	stxrh	w0, w8, [x3]
    2228:	5f485341 	.inst	0x5f485341 ; undefined
    222c:	284e4942 	ldnp	w2, w18, [x10, #112]
    2230:	65646f63 	fnmls	z3.h, p3/m, z27.h, z4.h
    2234:	6e656c2c 	umin	v12.8h, v1.8h, v5.8h
    2238:	29687467 	ldp	w7, w29, [x3, #-192]
    223c:	6f632820 	umlal2	v0.4s, v1.8h, v3.h[6]
    2240:	26206564 	.inst	0x26206564 ; undefined
    2244:	656c2820 	fmls	z0.h, p2/m, z1.h, z12.h
    2248:	6874676e 	.inst	0x6874676e ; undefined
    224c:	31202d20 	adds	w0, w9, #0x80b
    2250:	6c002929 	stnp	d9, d10, [x9]
    2254:	735f676f 	.inst	0x735f676f ; undefined
    2258:	6f746365 	umlsl2	v5.4s, v27.8h, v4.h[3]
    225c:	775f7372 	.inst	0x775f7372 ; undefined
    2260:	544e4900 	b.eq	9eb80 <fat32_open+0x9de88>  // b.none
    2264:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    2268:	28204e49 	stnp	w9, w19, [x18, #-256]
    226c:	544e492d 	b.le	9eb90 <fat32_open+0x9de98>
    2270:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    2274:	2d205841 	stp	s1, s22, [x2, #-256]
    2278:	00293120 	.inst	0x00293120 ; NYI
    227c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2280:	5f343654 	.inst	0x5f343654 ; undefined
    2284:	5f4e494d 	.inst	0x5f4e494d ; undefined
    2288:	2e32205f 	usubl	v31.8h, v2.8b, v18.8b
    228c:	30353232 	adr	x18, 6c8d1 <fat32_open+0x6bbd9>
    2290:	35383337 	cbnz	w23, 728f4 <fat32_open+0x71bfc>
    2294:	37303538 	tbnz	w24, #6, 2938 <.debug_str+0x2938>
    2298:	33313032 	.inst	0x33313032 ; undefined
    229c:	39303338 	strb	w24, [x25, #3084]
    22a0:	32333230 	orr	w16, w17, #0x3ffe000
    22a4:	33373137 	.inst	0x33373137 ; undefined
    22a8:	30343233 	adr	x19, 6a8ed <fat32_open+0x69bf5>
    22ac:	65363034 	.inst	0x65363034 ; undefined
    22b0:	3830332d 	ldsetb	w16, w13, [x25]
    22b4:	00343646 	.inst	0x00343646 ; NYI
    22b8:	544e4955 	.inst	0x544e4955 ; undefined
    22bc:	5f525450 	shl	d16, d2, #18
    22c0:	0058414d 	.inst	0x0058414d ; undefined
    22c4:	505f545f 	adr	xzr, c0d4e <fat32_open+0xc0056>
    22c8:	49445254 	.inst	0x49445254 ; undefined
    22cc:	205f4646 	.inst	0x205f4646 ; undefined
    22d0:	74616600 	.inst	0x74616600 ; undefined
    22d4:	7a69735f 	.inst	0x7a69735f ; undefined
    22d8:	00775f65 	.inst	0x00775f65 ; undefined
    22dc:	33544146 	.inst	0x33544146 ; undefined
    22e0:	53495f32 	.inst	0x53495f32 ; undefined
    22e4:	4352415f 	.inst	0x4352415f ; undefined
    22e8:	74612848 	.inst	0x74612848 ; undefined
    22ec:	62697274 	.inst	0x62697274 ; undefined
    22f0:	29657475 	ldp	w21, w29, [x3, #-216]
    22f4:	74612820 	.inst	0x74612820 ; undefined
    22f8:	62697274 	.inst	0x62697274 ; undefined
    22fc:	20657475 	.inst	0x20657475 ; undefined
    2300:	78302026 	ldeorh	w16, w6, [x1]
    2304:	00293032 	.inst	0x00293032 ; NYI
    2308:	49555f5f 	.inst	0x49555f5f ; undefined
    230c:	414d544e 	.inst	0x414d544e ; undefined
    2310:	414d5f58 	.inst	0x414d5f58 ; undefined
    2314:	205f5f58 	.inst	0x205f5f58 ; undefined
    2318:	66667830 	.inst	0x66667830 ; undefined
    231c:	66666666 	.inst	0x66666666 ; undefined
    2320:	66666666 	.inst	0x66666666 ; undefined
    2324:	66666666 	.inst	0x66666666 ; undefined
    2328:	4c556666 	.inst	0x4c556666 ; undefined
    232c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2330:	3631544c 	tbz	w12, #6, 4db8 <fat32_open+0x40c0>
    2334:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2338:	5f30315f 	.inst	0x5f30315f ; undefined
    233c:	5f505845 	.inst	0x5f505845 ; undefined
    2340:	2d28205f 	stp	s31, s8, [x2, #-192]
    2344:	5f002934 	.inst	0x5f002934 ; undefined
    2348:	49534e41 	.inst	0x49534e41 ; undefined
    234c:	4454535f 	.inst	0x4454535f ; undefined
    2350:	5f464544 	.inst	0x5f464544 ; undefined
    2354:	5f002048 	.inst	0x5f002048 ; undefined
    2358:	544e495f 	.inst	0x544e495f ; undefined
    235c:	5f58414d 	.inst	0x5f58414d ; undefined
    2360:	54444957 	.inst	0x54444957 ; undefined
    2364:	205f5f48 	.inst	0x205f5f48 ; undefined
    2368:	5f003436 	.inst	0x5f003436 ; undefined
    236c:	4343475f 	.inst	0x4343475f ; undefined
    2370:	5641485f 	.inst	0x5641485f ; undefined
    2374:	59535f45 	.inst	0x59535f45 ; undefined
    2378:	435f434e 	.inst	0x435f434e ; undefined
    237c:	41504d4f 	.inst	0x41504d4f ; undefined
    2380:	415f4552 	.inst	0x415f4552 ; undefined
    2384:	535f444e 	.inst	0x535f444e ; undefined
    2388:	5f504157 	.inst	0x5f504157 ; undefined
    238c:	00312038 	.inst	0x00312038 ; NYI
    2390:	41484357 	.inst	0x41484357 ; undefined
    2394:	414d5f52 	.inst	0x414d5f52 ; undefined
    2398:	545f0058 	.inst	0x545f0058 ; undefined
    239c:	4843575f 	ldxrh	wzr, [x26]
    23a0:	205f5241 	.inst	0x205f5241 ; undefined
    23a4:	54414600 	b.eq	84c64 <fat32_open+0x83f6c>  // b.none
    23a8:	475f3233 	.inst	0x475f3233 ; undefined
    23ac:	535f5445 	.inst	0x535f5445 ; undefined
    23b0:	4e4f4345 	.inst	0x4e4f4345 ; undefined
    23b4:	69742844 	ldpsw	x4, x10, [x2, #-96]
    23b8:	2029656d 	.inst	0x2029656d ; undefined
    23bc:	74282828 	.inst	0x74282828 ; undefined
    23c0:	29656d69 	ldp	w9, w27, [x11, #-216]
    23c4:	46202620 	.inst	0x46202620 ; undefined
    23c8:	32335441 	orr	w1, w2, #0xffffe007
    23cc:	4345535f 	.inst	0x4345535f ; undefined
    23d0:	5f444e4f 	.inst	0x5f444e4f ; undefined
    23d4:	4b53414d 	sub	w13, w10, w19, lsr #16
    23d8:	3c3c2029 	.inst	0x3c3c2029 ; undefined
    23dc:	00293120 	.inst	0x00293120 ; NYI
    23e0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    23e4:	454c5f54 	.inst	0x454c5f54 ; undefined
    23e8:	33545341 	.inst	0x33545341 ; undefined
    23ec:	414d5f32 	.inst	0x414d5f32 ; undefined
    23f0:	205f5f58 	.inst	0x205f5f58 ; undefined
    23f4:	66377830 	.inst	0x66377830 ; undefined
    23f8:	66666666 	.inst	0x66666666 ; undefined
    23fc:	48006666 	stxrh	w0, w6, [x19]
    2400:	5453494c 	b.gt	a8d28 <fat32_open+0xa8030>
    2404:	494e495f 	.inst	0x494e495f ; undefined
    2408:	65682854 	fmls	z20.h, p2/m, z2.h, z8.h
    240c:	20296461 	.inst	0x20296461 ; undefined
    2410:	7b206f64 	.inst	0x7b206f64 ; undefined
    2414:	65682820 	fmls	z0.h, p2/m, z1.h, z8.h
    2418:	2d296461 	stp	s1, s25, [x3, #-184]
    241c:	7269663e 	.inst	0x7269663e ; undefined
    2420:	3d207473 	str	b19, [x3, #2077]
    2424:	4c554e20 	.inst	0x4c554e20 ; undefined
    2428:	7d203b4c 	str	h12, [x26, #4124]
    242c:	69687720 	ldpsw	x0, x29, [x25, #-192]
    2430:	2820656c 	stnp	w12, w25, [x11, #-256]
    2434:	5f002930 	.inst	0x5f002930 ; undefined
    2438:	4843575f 	ldxrh	wzr, [x26]
    243c:	4d5f5241 	.inst	0x4d5f5241 ; undefined
    2440:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    2444:	00553020 	.inst	0x00553020 ; undefined
    2448:	33544146 	.inst	0x33544146 ; undefined
    244c:	45535f32 	.inst	0x45535f32 ; undefined
    2450:	444e4f43 	.inst	0x444e4f43 ; undefined
    2454:	53414d5f 	.inst	0x53414d5f ; undefined
    2458:	7830204b 	ldeorh	w16, w11, [x2]
    245c:	66313030 	.inst	0x66313030 ; undefined
    2460:	465f5f00 	.inst	0x465f5f00 ; undefined
    2464:	3631544c 	tbz	w12, #6, 4eec <fat32_open+0x41f4>
    2468:	58414d5f 	ldr	xzr, 84e10 <fat32_open+0x84118>
    246c:	5f30315f 	.inst	0x5f30315f ; undefined
    2470:	5f505845 	.inst	0x5f505845 ; undefined
    2474:	0034205f 	.inst	0x0034205f ; NYI
    2478:	5453494c 	b.gt	a8da0 <fat32_open+0xa80a8>
    247c:	524f465f 	.inst	0x524f465f ; undefined
    2480:	48434145 	ldxrh	w5, [x10]
    2484:	72617628 	.inst	0x72617628 ; undefined
    2488:	6165682c 	.inst	0x6165682c ; undefined
    248c:	6f6e2c64 	.inst	0x6f6e2c64 ; undefined
    2490:	20296564 	.inst	0x20296564 ; undefined
    2494:	20726f66 	.inst	0x20726f66 ; undefined
    2498:	61762828 	.inst	0x61762828 ; undefined
    249c:	3d202972 	str	b18, [x11, #2058]
    24a0:	53494c20 	.inst	0x53494c20 ; undefined
    24a4:	49465f54 	.inst	0x49465f54 ; undefined
    24a8:	28545352 	ldnp	w18, w20, [x26, #160]
    24ac:	79745f5f 	ldrh	wzr, [x26, #6702]
    24b0:	666f6570 	.inst	0x666f6570 ; undefined
    24b4:	2a285f5f 	orn	wzr, w26, w8, lsl #23
    24b8:	29726176 	ldp	w22, w24, [x11, #-112]
    24bc:	6568202c 	fmls	z12.h, p0/m, z1.h, z8.h
    24c0:	202c6461 	.inst	0x202c6461 ; undefined
    24c4:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    24c8:	26203b29 	.inst	0x26203b29 ; undefined
    24cc:	61762828 	.inst	0x61762828 ; undefined
    24d0:	3e2d2972 	.inst	0x3e2d2972 ; undefined
    24d4:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    24d8:	3d212029 	str	b9, [x1, #2120]
    24dc:	61656820 	.inst	0x61656820 ; undefined
    24e0:	28203b64 	stnp	w4, w14, [x27, #-256]
    24e4:	29726176 	ldp	w22, w24, [x11, #-112]
    24e8:	4c203d20 	.inst	0x4c203d20 ; undefined
    24ec:	5f545349 	.inst	0x5f545349 ; undefined
    24f0:	5458454e 	b.al	b2d98 <fat32_open+0xb20a0>
    24f4:	72617628 	.inst	0x72617628 ; undefined
    24f8:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
    24fc:	29296564 	stp	w4, w25, [x11, #-184]
    2500:	475f5f00 	.inst	0x475f5f00 ; undefined
    2504:	415f4343 	.inst	0x415f4343 ; undefined
    2508:	494d4f54 	.inst	0x494d4f54 ; undefined
    250c:	4f4c5f43 	.inst	0x4f4c5f43 ; undefined
    2510:	4c5f474e 	.inst	0x4c5f474e ; undefined
    2514:	5f4b434f 	.inst	0x5f4b434f ; undefined
    2518:	45455246 	.inst	0x45455246 ; undefined
    251c:	5f003220 	.inst	0x5f003220 ; undefined
    2520:	65656e5f 	fnmls	z31.h, p3/m, z18.h, z5.h
    2524:	69735f64 	ldpsw	x4, x23, [x27, #-104]
    2528:	745f657a 	.inst	0x745f657a ; undefined
    252c:	415f5f00 	.inst	0x415f5f00 ; undefined
    2530:	415f4d52 	.inst	0x415f4d52 ; undefined
    2534:	20484352 	.inst	0x20484352 ; undefined
    2538:	535f0038 	.inst	0x535f0038 ; undefined
    253c:	5f455a49 	.inst	0x5f455a49 ; undefined
    2540:	00205f54 	.inst	0x00205f54 ; NYI
    2544:	6c696670 	ldnp	d16, d25, [x19, #-368]
    2548:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    254c:	5f544c46 	.inst	0x5f544c46 ; undefined
    2550:	49444152 	.inst	0x49444152 ; undefined
    2554:	205f5f58 	.inst	0x205f5f58 ; undefined
    2558:	6f6c0032 	mla	v18.8h, v1.8h, v12.h[2]
    255c:	6c20676e 	stnp	d14, d25, [x27, #-512]
    2560:	20676e6f 	.inst	0x20676e6f ; undefined
    2564:	00746e69 	.inst	0x00746e69 ; undefined
    2568:	6d6f682f 	ldp	d15, d26, [x1, #-272]
    256c:	69622f65 	ldpsw	x5, x11, [x27, #-240]
    2570:	74736976 	.inst	0x74736976 ; undefined
    2574:	6c617561 	ldnp	d1, d29, [x11, #-496]
    2578:	7361722f 	.inst	0x7361722f ; undefined
    257c:	722f6970 	ands	w16, w11, #0xfffe0fff
    2580:	69707361 	ldpsw	x1, x28, [x27, #-128]
    2584:	736f2d33 	.inst	0x736f2d33 ; undefined
    2588:	7574732f 	.inst	0x7574732f ; undefined
    258c:	49007964 	.inst	0x49007964 ; undefined
    2590:	3631544e 	tbz	w14, #6, 5018 <fat32_open+0x4320>
    2594:	58414d5f 	ldr	xzr, 84f3c <fat32_open+0x84244>
    2598:	544e4900 	b.eq	9eeb8 <fat32_open+0x9e1c0>  // b.none
    259c:	5f525450 	shl	d16, d2, #18
    25a0:	0058414d 	.inst	0x0058414d ; undefined
    25a4:	48435f5f 	ldxrh	wzr, [x26]
    25a8:	32335241 	orr	w1, w18, #0xffffe003
    25ac:	5059545f 	adr	xzr, b5036 <fat32_open+0xb433e>
    25b0:	205f5f45 	.inst	0x205f5f45 ; undefined
    25b4:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    25b8:	64656e67 	.inst	0x64656e67 ; undefined
    25bc:	746e6920 	.inst	0x746e6920 ; undefined
    25c0:	775f5f00 	.inst	0x775f5f00 ; undefined
    25c4:	72616863 	.inst	0x72616863 ; undefined
    25c8:	5f5f745f 	sqshl	d31, d2, #31
    25cc:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    25d0:	4c42444c 	.inst	0x4c42444c ; undefined
    25d4:	5341485f 	.inst	0x5341485f ; undefined
    25d8:	4955515f 	.inst	0x4955515f ; undefined
    25dc:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    25e0:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    25e4:	5f003120 	.inst	0x5f003120 ; undefined
    25e8:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    25ec:	4f4c5f47 	.inst	0x4f4c5f47 ; undefined
    25f0:	575f474e 	.inst	0x575f474e ; undefined
    25f4:	48544449 	ldxrh	w9, [x2]
    25f8:	36205f5f 	tbz	wzr, #4, 31e0 <.debug_str+0x31e0>
    25fc:	656e0034 	fmla	z20.h, p0/m, z1.h, z14.h
    2600:	695f7478 	ldpsw	x24, x29, [x3, #248]
    2604:	7865646e 	.inst	0x7865646e ; undefined
    2608:	505f5f00 	adr	x0, c11ea <fat32_open+0xc04f2>
    260c:	5f5f4349 	.inst	0x5f5f4349 ; undefined
    2610:	64003120 	.inst	0x64003120 ; undefined
    2614:	655f7269 	fcmeq	p9.h, p4/z, z19.h, z31.h
    2618:	7972746e 	ldrh	w14, [x3, #6458]
    261c:	5f00745f 	.inst	0x5f00745f ; undefined
    2620:	4343475f 	.inst	0x4343475f ; undefined
    2624:	4f54415f 	.inst	0x4f54415f ; undefined
    2628:	5f43494d 	.inst	0x5f43494d ; undefined
    262c:	4e4f4c4c 	.inst	0x4e4f4c4c ; undefined
    2630:	4f4c5f47 	.inst	0x4f4c5f47 ; undefined
    2634:	465f4b43 	.inst	0x465f4b43 ; undefined
    2638:	20454552 	.inst	0x20454552 ; undefined
    263c:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    2640:	36544c46 	tbz	w6, #10, ffffffffffffafc8 <fat32_open+0xffffffffffffa2d0>
    2644:	414d5f34 	.inst	0x414d5f34 ; undefined
    2648:	58455f58 	ldr	x24, 8d230 <fat32_open+0x8c538>
    264c:	205f5f50 	.inst	0x205f5f50 ; undefined
    2650:	34323031 	cbz	w17, 66c54 <fat32_open+0x65f5c>
    2654:	4e495500 	.inst	0x4e495500 ; undefined
    2658:	5f363154 	.inst	0x5f363154 ; undefined
    265c:	0058414d 	.inst	0x0058414d ; undefined
    2660:	444c5f5f 	.inst	0x444c5f5f ; undefined
    2664:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    2668:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    266c:	312e3120 	adds	w0, w9, #0xb8c
    2670:	33373938 	.inst	0x33373938 ; undefined
    2674:	35393431 	cbnz	w17, 74cf8 <fat32_open+0x74000>
    2678:	32373533 	orr	w19, w9, #0x7ffe00
    267c:	36373133 	tbz	w19, #6, ca0 <.debug_str+0xca0>
    2680:	35383035 	cbnz	w21, 72c84 <fat32_open+0x71f8c>
    2684:	33393537 	.inst	0x33393537 ; undefined
    2688:	32363632 	orr	w18, w17, #0xfffc00
    268c:	37303038 	tbnz	w24, #6, 2c90 <.debug_str+0x2c90>
    2690:	2b653230 	.inst	0x2b653230 ; undefined
    2694:	32333934 	orr	w20, w9, #0xfffe000
    2698:	5f5f004c 	.inst	0x5f5f004c ; undefined
    269c:	544e4955 	.inst	0x544e4955 ; undefined
    26a0:	5f58414d 	.inst	0x5f58414d ; undefined
    26a4:	45505954 	.inst	0x45505954 ; undefined
    26a8:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    26ac:	20676e6f 	.inst	0x20676e6f ; undefined
    26b0:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    26b4:	64656e67 	.inst	0x64656e67 ; undefined
    26b8:	746e6920 	.inst	0x746e6920 ; undefined
    26bc:	575f5f00 	.inst	0x575f5f00 ; undefined
    26c0:	5f544e49 	.inst	0x5f544e49 ; undefined
    26c4:	54444957 	.inst	0x54444957 ; undefined
    26c8:	205f5f48 	.inst	0x205f5f48 ; undefined
    26cc:	5f003233 	.inst	0x5f003233 ; undefined
    26d0:	4148435f 	.inst	0x4148435f ; undefined
    26d4:	49425f52 	.inst	0x49425f52 ; undefined
    26d8:	205f5f54 	.inst	0x205f5f54 ; undefined
    26dc:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    26e0:	455a4953 	.inst	0x455a4953 ; undefined
    26e4:	575f464f 	.inst	0x575f464f ; undefined
    26e8:	52414843 	.inst	0x52414843 ; undefined
    26ec:	5f5f545f 	shl	d31, d2, #31
    26f0:	5f003420 	.inst	0x5f003420 ; undefined
    26f4:	44525450 	.inst	0x44525450 ; undefined
    26f8:	5f464649 	.inst	0x5f464649 ; undefined
    26fc:	69002054 	.inst	0x69002054 ; undefined
    2700:	0074696e 	.inst	0x0074696e ; undefined
    2704:	5f4e4942 	.inst	0x5f4e4942 ; undefined
    2708:	455a4953 	.inst	0x455a4953 ; undefined
    270c:	646e6928 	.inst	0x646e6928 ; undefined
    2710:	20297865 	.inst	0x20297865 ; undefined
    2714:	3c203128 	.inst	0x3c203128 ; undefined
    2718:	6928203c 	.inst	0x6928203c ; undefined
    271c:	7865646e 	.inst	0x7865646e ; undefined
    2720:	35202b20 	cbnz	w0, 42c84 <fat32_open+0x41f8c>
    2724:	5f002929 	.inst	0x5f002929 ; undefined
    2728:	4c5f4156 	.inst	0x4c5f4156 ; undefined
    272c:	5f545349 	.inst	0x5f545349 ; undefined
    2730:	20485f54 	.inst	0x20485f54 ; undefined
    2734:	475f5f00 	.inst	0x475f5f00 ; undefined
    2738:	495f4343 	.inst	0x495f4343 ; undefined
    273c:	355f4345 	cbnz	w5, c0fa4 <fat32_open+0xc02ac>
    2740:	32203935 	orr	w21, w9, #0x7fff
    2744:	72696400 	.inst	0x72696400 ; undefined
    2748:	5f5f0073 	.inst	0x5f5f0073 ; undefined
    274c:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2750:	414d5f36 	.inst	0x414d5f36 ; undefined
    2754:	58455f58 	ldr	x24, 8d33c <fat32_open+0x8c644>
    2758:	205f5f50 	.inst	0x205f5f50 ; undefined
    275c:	49003631 	.inst	0x49003631 ; undefined
    2760:	465f544e 	.inst	0x465f544e ; undefined
    2764:	36545341 	tbz	w1, #10, ffffffffffffb1cc <fat32_open+0xffffffffffffa4d4>
    2768:	494d5f34 	.inst	0x494d5f34 ; undefined
    276c:	2d28204e 	stp	s14, s8, [x2, #-192]
    2770:	5f544e49 	.inst	0x5f544e49 ; undefined
    2774:	54534146 	b.vs	a8f9c <fat32_open+0xa82a4>
    2778:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    277c:	2d205841 	stp	s1, s22, [x2, #-256]
    2780:	00293120 	.inst	0x00293120 ; NYI
    2784:	73696c68 	.inst	0x73696c68 ; undefined
    2788:	65685f74 	fnmla	z20.h, p7/m, z27.h, z8.h
    278c:	5f006461 	.inst	0x5f006461 ; undefined
    2790:	5459425f 	.inst	0x5459425f ; undefined
    2794:	524f5f45 	.inst	0x524f5f45 ; undefined
    2798:	5f524544 	.inst	0x5f524544 ; undefined
    279c:	5f5f205f 	.inst	0x5f5f205f ; undefined
    27a0:	4544524f 	.inst	0x4544524f ; undefined
    27a4:	494c5f52 	.inst	0x494c5f52 ; undefined
    27a8:	454c5454 	.inst	0x454c5454 ; undefined
    27ac:	444e455f 	.inst	0x444e455f ; undefined
    27b0:	5f4e4149 	.inst	0x5f4e4149 ; undefined
    27b4:	5f5f005f 	.inst	0x5f5f005f ; undefined
    27b8:	33544e49 	.inst	0x33544e49 ; undefined
    27bc:	28435f32 	ldnp	w18, w23, [x25, #24]
    27c0:	63202963 	.inst	0x63202963 ; undefined
    27c4:	544e4900 	b.eq	9f0e4 <fat32_open+0x9e3ec>  // b.none
    27c8:	5f525450 	shl	d16, d2, #18
    27cc:	204e494d 	.inst	0x204e494d ; undefined
    27d0:	4e492d28 	.inst	0x4e492d28 ; undefined
    27d4:	52545054 	.inst	0x52545054 ; undefined
    27d8:	58414d5f 	ldr	xzr, 85180 <fat32_open+0x84488>
    27dc:	31202d20 	adds	w0, w9, #0x80b
    27e0:	49550029 	.inst	0x49550029 ; undefined
    27e4:	465f544e 	.inst	0x465f544e ; undefined
    27e8:	36545341 	tbz	w1, #10, ffffffffffffb250 <fat32_open+0xffffffffffffa558>
    27ec:	414d5f34 	.inst	0x414d5f34 ; undefined
    27f0:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    27f4:	544e4955 	.inst	0x544e4955 ; undefined
    27f8:	5341465f 	.inst	0x5341465f ; undefined
    27fc:	5f343654 	.inst	0x5f343654 ; undefined
    2800:	5f58414d 	.inst	0x5f58414d ; undefined
    2804:	5f5f005f 	.inst	0x5f5f005f ; undefined
    2808:	544e4955 	.inst	0x544e4955 ; undefined
    280c:	5f525450 	shl	d16, d2, #18
    2810:	45505954 	.inst	0x45505954 ; undefined
    2814:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    2818:	20676e6f 	.inst	0x20676e6f ; undefined
    281c:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    2820:	64656e67 	.inst	0x64656e67 ; undefined
    2824:	746e6920 	.inst	0x746e6920 ; undefined
    2828:	465f5f00 	.inst	0x465f5f00 ; undefined
    282c:	3436544c 	cbz	w12, 6f2b4 <fat32_open+0x6e5bc>
    2830:	49445f58 	.inst	0x49445f58 ; undefined
    2834:	205f5f47 	.inst	0x205f5f47 ; undefined
    2838:	5f003333 	.inst	0x5f003333 ; undefined
    283c:	5241415f 	.inst	0x5241415f ; undefined
    2840:	34364843 	cbz	w3, 6f148 <fat32_open+0x6e450>
    2844:	4f4d435f 	.inst	0x4f4d435f ; undefined
    2848:	5f4c4544 	.inst	0x5f4c4544 ; undefined
    284c:	594e4954 	.inst	0x594e4954 ; undefined
    2850:	46005f5f 	.inst	0x46005f5f ; undefined
    2854:	32335441 	orr	w1, w2, #0xffffe007
    2858:	4e494d5f 	.inst	0x4e494d5f ; undefined
    285c:	5f455455 	shl	d21, d2, #5
    2860:	4b53414d 	sub	w13, w10, w19, lsr #16
    2864:	30783020 	adr	x0, f2e69 <fat32_open+0xf2171>
    2868:	00306537 	.inst	0x00306537 ; NYI
    286c:	49575f5f 	.inst	0x49575f5f ; undefined
    2870:	545f544e 	b.al	c12f8 <fat32_open+0xc0600>
    2874:	5f455059 	.inst	0x5f455059 ; undefined
    2878:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    287c:	6e676973 	.inst	0x6e676973 ; undefined
    2880:	69206465 	.inst	0x69206465 ; undefined
    2884:	4900746e 	.inst	0x4900746e ; undefined
    2888:	3631544e 	tbz	w14, #6, 5310 <fat32_open+0x4618>
    288c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2890:	492d2820 	.inst	0x492d2820 ; undefined
    2894:	3631544e 	tbz	w14, #6, 531c <fat32_open+0x4624>
    2898:	58414d5f 	ldr	xzr, 85240 <fat32_open+0x84548>
    289c:	31202d20 	adds	w0, w9, #0x80b
    28a0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    28a4:	414e494c 	.inst	0x414e494c ; undefined
    28a8:	535f4f52 	.inst	0x535f4f52 ; undefined
    28ac:	5f4e4950 	.inst	0x5f4e4950 ; undefined
    28b0:	0030205f 	.inst	0x0030205f ; NYI
    28b4:	62706265 	.inst	0x62706265 ; undefined
    28b8:	465f5f00 	.inst	0x465f5f00 ; undefined
    28bc:	3436544c 	cbz	w12, 6f344 <fat32_open+0x6e64c>
    28c0:	5341485f 	.inst	0x5341485f ; undefined
    28c4:	464e495f 	.inst	0x464e495f ; undefined
    28c8:	54494e49 	b.ls	95290 <fat32_open+0x94598>  // b.plast
    28cc:	205f5f59 	.inst	0x205f5f59 ; undefined
    28d0:	454d0031 	.inst	0x454d0031 ; undefined
    28d4:	48435f4d 	ldxrh	w13, [x26]
    28d8:	5f4b4355 	.inst	0x5f4b4355 ; undefined
    28dc:	28524c43 	ldnp	w3, w19, [x2, #144]
    28e0:	63756863 	.inst	0x63756863 ; undefined
    28e4:	2820296b 	stnp	w11, w10, [x11, #-256]
    28e8:	75686328 	.inst	0x75686328 ; undefined
    28ec:	2d296b63 	stp	s3, s26, [x27, #-184]
    28f0:	7a69733e 	.inst	0x7a69733e ; undefined
    28f4:	3d262065 	str	b5, [x3, #2440]
    28f8:	78307e20 	.inst	0x78307e20 ; undefined
    28fc:	5f002931 	.inst	0x5f002931 ; undefined
    2900:	5241415f 	.inst	0x5241415f ; undefined
    2904:	34364843 	cbz	w3, 6f20c <fat32_open+0x6e514>
    2908:	4f4d435f 	.inst	0x4f4d435f ; undefined
    290c:	5f4c4544 	.inst	0x5f4c4544 ; undefined
    2910:	4c414d53 	.inst	0x4c414d53 ; undefined
    2914:	005f5f4c 	.inst	0x005f5f4c ; undefined
    2918:	49555f5f 	.inst	0x49555f5f ; undefined
    291c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2920:	54534145 	b.pl	a9148 <fat32_open+0xa8450>  // b.nfrst
    2924:	545f3233 	.inst	0x545f3233 ; undefined
    2928:	5f455059 	.inst	0x5f455059 ; undefined
    292c:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    2930:	6e676973 	.inst	0x6e676973 ; undefined
    2934:	69206465 	.inst	0x69206465 ; undefined
    2938:	7500746e 	.inst	0x7500746e ; undefined
    293c:	6769736e 	.inst	0x6769736e ; undefined
    2940:	2064656e 	.inst	0x2064656e ; undefined
    2944:	00746e69 	.inst	0x00746e69 ; undefined
    2948:	33544146 	.inst	0x33544146 ; undefined
    294c:	4e455f32 	.inst	0x4e455f32 ; undefined
    2950:	5f595254 	.inst	0x5f595254 ; undefined
    2954:	53554e55 	.inst	0x53554e55 ; undefined
    2958:	30204445 	adr	x5, 431e1 <fat32_open+0x424e9>
    295c:	30303078 	adr	x24, 62f69 <fat32_open+0x62271>
    2960:	30303030 	adr	x16, 62f65 <fat32_open+0x6226d>
    2964:	465f5f00 	.inst	0x465f5f00 ; undefined
    2968:	4d5f544c 	.inst	0x4d5f544c ; undefined
    296c:	455f4e49 	.inst	0x455f4e49 ; undefined
    2970:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    2974:	312d2820 	adds	w0, w1, #0xb4a
    2978:	00293532 	.inst	0x00293532 ; NYI
    297c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2980:	5f343654 	.inst	0x5f343654 ; undefined
    2984:	5f534148 	.inst	0x5f534148 ; undefined
    2988:	45495551 	.inst	0x45495551 ; undefined
    298c:	414e5f54 	.inst	0x414e5f54 ; undefined
    2990:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2994:	49420031 	.inst	0x49420031 ; undefined
    2998:	4c435f4e 	.inst	0x4c435f4e ; undefined
    299c:	6e692852 	.inst	0x6e692852 ; undefined
    29a0:	2c786564 	ldnp	s4, s25, [x11, #-64]
    29a4:	6d746962 	ldp	d2, d26, [x11, #-192]
    29a8:	20297061 	.inst	0x20297061 ; undefined
    29ac:	7b206f64 	.inst	0x7b206f64 ; undefined
    29b0:	74696220 	.inst	0x74696220 ; undefined
    29b4:	2070616d 	.inst	0x2070616d ; undefined
    29b8:	7e203d26 	.inst	0x7e203d26 ; undefined
    29bc:	3c203128 	.inst	0x3c203128 ; undefined
    29c0:	6e69203c 	usubl2	v28.4s, v1.8h, v9.8h
    29c4:	29786564 	ldp	w4, w25, [x11, #-64]
    29c8:	207d203b 	.inst	0x207d203b ; undefined
    29cc:	6c696877 	ldnp	d23, d26, [x3, #-368]
    29d0:	30282065 	adr	x5, 52ddd <fat32_open+0x520e5>
    29d4:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    29d8:	33544c46 	.inst	0x33544c46 ; undefined
    29dc:	4d5f5832 	.inst	0x4d5f5832 ; undefined
    29e0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    29e4:	372e3120 	tbnz	w0, #5, fffffffffffff008 <fat32_open+0xffffffffffffe310>
    29e8:	39363739 	strb	w25, [x25, #3469]
    29ec:	34333133 	cbz	w19, 69010 <fat32_open+0x68318>
    29f0:	33323638 	.inst	0x33323638 ; undefined
    29f4:	30373531 	adr	x17, 71099 <fat32_open+0x703a1>
    29f8:	35343138 	cbnz	w24, 6b01c <fat32_open+0x6a324>
    29fc:	32343732 	orr	w18, w25, #0x3fff000
    2a00:	31333733 	adds	w19, w25, #0xccd
    2a04:	33343037 	.inst	0x33343037 ; undefined
    2a08:	2b653735 	.inst	0x2b653735 ; undefined
    2a0c:	46383033 	.inst	0x46383033 ; undefined
    2a10:	00783233 	.inst	0x00783233 ; undefined
    2a14:	64646968 	.inst	0x64646968 ; undefined
    2a18:	735f6e65 	.inst	0x735f6e65 ; undefined
    2a1c:	00657a69 	.inst	0x00657a69 ; undefined
    2a20:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2a24:	49445f54 	.inst	0x49445f54 ; undefined
    2a28:	205f5f47 	.inst	0x205f5f47 ; undefined
    2a2c:	535f0036 	.inst	0x535f0036 ; undefined
    2a30:	4f424454 	.inst	0x4f424454 ; undefined
    2a34:	485f4c4f 	ldxrh	w15, [x2]
    2a38:	575f0020 	.inst	0x575f0020 ; undefined
    2a3c:	52414843 	.inst	0x52414843 ; undefined
    2a40:	445f545f 	.inst	0x445f545f ; undefined
    2a44:	414c4345 	.inst	0x414c4345 ; undefined
    2a48:	20444552 	.inst	0x20444552 ; undefined
    2a4c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2a50:	455f544c 	.inst	0x455f544c ; undefined
    2a54:	5f4c4156 	.inst	0x5f4c4156 ; undefined
    2a58:	4854454d 	ldxrh	w13, [x10]
    2a5c:	5f5f444f 	.inst	0x5f5f444f ; undefined
    2a60:	72003020 	ands	w0, w1, #0x1fff
    2a64:	6c756765 	ldnp	d5, d25, [x27, #-176]
    2a68:	645f7261 	fcmla	z1.h, p4/m, z19.h, z31.h, #270
    2a6c:	655f7269 	fcmeq	p9.h, p4/z, z19.h, z31.h
    2a70:	7972746e 	ldrh	w14, [x3, #6458]
    2a74:	63657300 	.inst	0x63657300 ; undefined
    2a78:	5f726f74 	.inst	0x5f726f74 ; undefined
    2a7c:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    2a80:	465f5f00 	.inst	0x465f5f00 ; undefined
    2a84:	4d5f544c 	.inst	0x4d5f544c ; undefined
    2a88:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    2a8c:	342e3320 	cbz	w0, 5f0f0 <fat32_open+0x5e3f8>
    2a90:	32383230 	orr	w16, w17, #0x1fff00
    2a94:	36363433 	tbz	w19, #6, fffffffffffff118 <fat32_open+0xffffffffffffe420>
    2a98:	32353833 	orr	w19, w1, #0x3fff800
    2a9c:	39353838 	strb	w24, [x1, #3406]
    2aa0:	37313138 	tbnz	w24, #6, 50c4 <fat32_open+0x43cc>
    2aa4:	38313430 	.inst	0x38313430 ; undefined
    2aa8:	34383433 	cbz	w19, 7312c <fat32_open+0x72434>
    2aac:	39363135 	strb	w21, [x9, #3468]
    2ab0:	2b653532 	.inst	0x2b653532 ; undefined
    2ab4:	00463833 	.inst	0x00463833 ; undefined
    2ab8:	43535f5f 	.inst	0x43535f5f ; undefined
    2abc:	5f524148 	.inst	0x5f524148 ; undefined
    2ac0:	5f58414d 	.inst	0x5f58414d ; undefined
    2ac4:	7830205f 	steorh	w16, [x2]
    2ac8:	49006637 	.inst	0x49006637 ; undefined
    2acc:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2ad0:	54534145 	b.pl	a92f8 <fat32_open+0xa8600>  // b.nfrst
    2ad4:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    2ad8:	5f004e49 	.inst	0x5f004e49 ; undefined
    2adc:	544e495f 	.inst	0x544e495f ; undefined
    2ae0:	5341465f 	.inst	0x5341465f ; undefined
    2ae4:	575f3854 	.inst	0x575f3854 ; undefined
    2ae8:	48544449 	ldxrh	w9, [x2]
    2aec:	33205f5f 	.inst	0x33205f5f ; undefined
    2af0:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    2af4:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2af8:	455f3832 	.inst	0x455f3832 ; undefined
    2afc:	4c495350 	.inst	0x4c495350 ; undefined
    2b00:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    2b04:	392e3120 	strb	w0, [x9, #2956]
    2b08:	32393532 	orr	w18, w9, #0x1fff80
    2b0c:	34343939 	cbz	w25, 6b230 <fat32_open+0x6a538>
    2b10:	32373833 	orr	w19, w1, #0xfffe00
    2b14:	35383533 	cbnz	w19, 731b8 <fat32_open+0x724c0>
    2b18:	35353033 	cbnz	w19, 6d11c <fat32_open+0x6c424>
    2b1c:	39373739 	strb	w25, [x25, #3533]
    2b20:	38353234 	ldsetb	w21, w20, [x17]
    2b24:	37323934 	tbnz	w20, #6, 7248 <fat32_open+0x6550>
    2b28:	2d653233 	ldp	s19, s12, [x17, #-216]
    2b2c:	31463433 	adds	w19, w1, #0x18d, lsl #12
    2b30:	5f003832 	.inst	0x5f003832 ; undefined
    2b34:	54505f54 	.inst	0x54505f54 ; undefined
    2b38:	46494452 	.inst	0x46494452 ; undefined
    2b3c:	5f002046 	.inst	0x5f002046 ; undefined
    2b40:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    2b44:	49575f47 	.inst	0x49575f47 ; undefined
    2b48:	5f485444 	shl	d4, d2, #8
    2b4c:	3436205f 	cbz	wzr, 6ef54 <fat32_open+0x6e25c>
    2b50:	544e4900 	b.eq	9f470 <fat32_open+0x9e778>  // b.none
    2b54:	435f3631 	.inst	0x435f3631 ; undefined
    2b58:	465f5f00 	.inst	0x465f5f00 ; undefined
    2b5c:	3231544c 	orr	w12, w2, #0xffff801f
    2b60:	414d5f38 	.inst	0x414d5f38 ; undefined
    2b64:	30315f58 	adr	x24, 6574d <fat32_open+0x64a55>
    2b68:	5058455f 	adr	xzr, b3412 <fat32_open+0xb271a>
    2b6c:	34205f5f 	cbz	wzr, 43754 <fat32_open+0x42a5c>
    2b70:	00323339 	.inst	0x00323339 ; NYI
    2b74:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2b78:	5f363154 	.inst	0x5f363154 ; undefined
    2b7c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    2b80:	5f505845 	.inst	0x5f505845 ; undefined
    2b84:	2d28205f 	stp	s31, s8, [x2, #-192]
    2b88:	00293331 	.inst	0x00293331 ; NYI
    2b8c:	33746166 	.inst	0x33746166 ; undefined
    2b90:	00745f32 	.inst	0x00745f32 ; undefined
    2b94:	5f544e49 	.inst	0x5f544e49 ; undefined
    2b98:	5341454c 	.inst	0x5341454c ; undefined
    2b9c:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    2ba0:	28204e49 	stnp	w9, w19, [x18, #-256]
    2ba4:	544e492d 	b.le	9f4c8 <fat32_open+0x9e7d0>
    2ba8:	41454c5f 	.inst	0x41454c5f ; undefined
    2bac:	5f385453 	.inst	0x5f385453 ; undefined
    2bb0:	2058414d 	.inst	0x2058414d ; undefined
    2bb4:	2931202d 	stp	w13, w8, [x1, #-120]
    2bb8:	544e4900 	b.eq	9f4d8 <fat32_open+0x9e7e0>  // b.none
    2bbc:	41454c5f 	.inst	0x41454c5f ; undefined
    2bc0:	36315453 	tbz	w19, #6, 5648 <fat32_open+0x4950>
    2bc4:	58414d5f 	ldr	xzr, 8556c <fat32_open+0x84874>
    2bc8:	495f5f20 	.inst	0x495f5f20 ; undefined
    2bcc:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2bd0:	54534145 	b.pl	a93f8 <fat32_open+0xa8700>  // b.nfrst
    2bd4:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2bd8:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    2bdc:	555f5f00 	.inst	0x555f5f00 ; undefined
    2be0:	4d544e49 	.inst	0x4d544e49 ; undefined
    2be4:	435f5841 	.inst	0x435f5841 ; undefined
    2be8:	20296328 	.inst	0x20296328 ; undefined
    2bec:	23232063 	.inst	0x23232063 ; undefined
    2bf0:	004c5520 	.inst	0x004c5520 ; undefined
    2bf4:	5254505f 	.inst	0x5254505f ; undefined
    2bf8:	46464944 	.inst	0x46464944 ; undefined
    2bfc:	445f545f 	.inst	0x445f545f ; undefined
    2c00:	414c4345 	.inst	0x414c4345 ; undefined
    2c04:	20444552 	.inst	0x20444552 ; undefined
    2c08:	535f5f00 	.inst	0x535f5f00 ; undefined
    2c0c:	4f455a49 	.inst	0x4f455a49 ; undefined
    2c10:	54505f46 	b.vs	a37f8 <fat32_open+0xa2b00>
    2c14:	46494452 	.inst	0x46494452 ; undefined
    2c18:	5f545f46 	.inst	0x5f545f46 ; undefined
    2c1c:	0038205f 	.inst	0x0038205f ; NYI
    2c20:	52415f5f 	.inst	0x52415f5f ; undefined
    2c24:	45465f4d 	.inst	0x45465f4d ; undefined
    2c28:	52555441 	.inst	0x52555441 ; undefined
    2c2c:	44495f45 	.inst	0x44495f45 ; undefined
    2c30:	31205649 	adds	w9, w18, #0x815
    2c34:	465f5f00 	.inst	0x465f5f00 ; undefined
    2c38:	54414f4c 	b.gt	85620 <fat32_open+0x84928>
    2c3c:	524f575f 	.inst	0x524f575f ; undefined
    2c40:	524f5f44 	.inst	0x524f5f44 ; undefined
    2c44:	5f524544 	.inst	0x5f524544 ; undefined
    2c48:	5f5f205f 	.inst	0x5f5f205f ; undefined
    2c4c:	4544524f 	.inst	0x4544524f ; undefined
    2c50:	494c5f52 	.inst	0x494c5f52 ; undefined
    2c54:	454c5454 	.inst	0x454c5454 ; undefined
    2c58:	444e455f 	.inst	0x444e455f ; undefined
    2c5c:	5f4e4149 	.inst	0x5f4e4149 ; undefined
    2c60:	475f005f 	.inst	0x475f005f ; undefined
    2c64:	575f4343 	.inst	0x575f4343 ; undefined
    2c68:	52414843 	.inst	0x52414843 ; undefined
    2c6c:	0020545f 	.inst	0x0020545f ; NYI
    2c70:	5f72626d 	.inst	0x5f72626d ; undefined
    2c74:	73726170 	.inst	0x73726170 ; undefined
    2c78:	49550065 	.inst	0x49550065 ; undefined
    2c7c:	3436544e 	cbz	w14, 6f704 <fat32_open+0x6ea0c>
    2c80:	58414d5f 	ldr	xzr, 85628 <fat32_open+0x84930>
    2c84:	555f5f20 	.inst	0x555f5f20 ; undefined
    2c88:	36544e49 	tbz	w9, #10, ffffffffffffb650 <fat32_open+0xffffffffffffa958>
    2c8c:	414d5f34 	.inst	0x414d5f34 ; undefined
    2c90:	005f5f58 	.inst	0x005f5f58 ; undefined
    2c94:	38544e49 	ldrb	w9, [x18, #-188]!
    2c98:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2c9c:	6e617000 	uabdl2	v0.4s, v0.8h, v1.8h
    2ca0:	66286369 	.inst	0x66286369 ; undefined
    2ca4:	2e2c746d 	uabd	v13.8b, v3.8b, v12.8b
    2ca8:	20292e2e 	.inst	0x20292e2e ; undefined
    2cac:	61705f5f 	.inst	0x61705f5f ; undefined
    2cb0:	2863696e 	ldnp	w14, w26, [x11, #-232]
    2cb4:	49465f5f 	.inst	0x49465f5f ; undefined
    2cb8:	5f5f454c 	.inst	0x5f5f454c ; undefined
    2cbc:	5f5f202c 	.inst	0x5f5f202c ; undefined
    2cc0:	454e494c 	.inst	0x454e494c ; undefined
    2cc4:	202c5f5f 	.inst	0x202c5f5f ; undefined
    2cc8:	75665f5f 	.inst	0x75665f5f ; undefined
    2ccc:	5f5f636e 	.inst	0x5f5f636e ; undefined
    2cd0:	6d66202c 	ldp	d12, d8, [x1, #-416]
    2cd4:	23202c74 	.inst	0x23202c74 ; undefined
    2cd8:	565f5f23 	.inst	0x565f5f23 ; undefined
    2cdc:	52415f41 	.inst	0x52415f41 ; undefined
    2ce0:	5f5f5347 	.inst	0x5f5f5347 ; undefined
    2ce4:	72740029 	.inst	0x72740029 ; undefined
    2ce8:	31206575 	adds	w21, w11, #0x819
    2cec:	66666f00 	.inst	0x66666f00 ; undefined
    2cf0:	00746573 	.inst	0x00746573 ; undefined
    2cf4:	544e4955 	.inst	0x544e4955 ; undefined
    2cf8:	5f58414d 	.inst	0x5f58414d ; undefined
    2cfc:	29632843 	ldp	w3, w10, [x2, #-232]
    2d00:	555f5f20 	.inst	0x555f5f20 ; undefined
    2d04:	4d544e49 	.inst	0x4d544e49 ; undefined
    2d08:	435f5841 	.inst	0x435f5841 ; undefined
    2d0c:	00296328 	.inst	0x00296328 ; NYI
    2d10:	42504245 	.inst	0x42504245 ; undefined
    2d14:	4900745f 	.inst	0x4900745f ; undefined
    2d18:	3436544e 	cbz	w14, 6f7a0 <fat32_open+0x6eaa8>
    2d1c:	58414d5f 	ldr	xzr, 856c4 <fat32_open+0x849cc>
    2d20:	544e4900 	b.eq	9f640 <fat32_open+0x9e948>  // b.none
    2d24:	41454c5f 	.inst	0x41454c5f ; undefined
    2d28:	36315453 	tbz	w19, #6, 57b0 <fat32_open+0x4ab8>
    2d2c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2d30:	492d2820 	.inst	0x492d2820 ; undefined
    2d34:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2d38:	54534145 	b.pl	a9560 <fat32_open+0xa8868>  // b.nfrst
    2d3c:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2d40:	2d205841 	stp	s1, s22, [x2, #-256]
    2d44:	00293120 	.inst	0x00293120 ; NYI
    2d48:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2d4c:	41485f54 	.inst	0x41485f54 ; undefined
    2d50:	55515f53 	.inst	0x55515f53 ; undefined
    2d54:	5f544549 	.inst	0x5f544549 ; undefined
    2d58:	5f4e414e 	.inst	0x5f4e414e ; undefined
    2d5c:	0031205f 	.inst	0x0031205f ; NYI
    2d60:	43475f5f 	.inst	0x43475f5f ; undefined
    2d64:	54415f43 	b.cc	8594c <fat32_open+0x84c54>  // b.lo, b.ul, b.last
    2d68:	43494d4f 	.inst	0x43494d4f ; undefined
    2d6c:	4148435f 	.inst	0x4148435f ; undefined
    2d70:	4f4c5f52 	.inst	0x4f4c5f52 ; undefined
    2d74:	465f4b43 	.inst	0x465f4b43 ; undefined
    2d78:	20454552 	.inst	0x20454552 ; undefined
    2d7c:	69660032 	ldpsw	x18, x0, [x1, #-208]
    2d80:	00747372 	.inst	0x00747372 ; undefined
    2d84:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2d88:	5f323354 	.inst	0x5f323354 ; undefined
    2d8c:	5f58414d 	.inst	0x5f58414d ; undefined
    2d90:	7830205f 	steorh	w16, [x2]
    2d94:	66666637 	.inst	0x66666637 ; undefined
    2d98:	66666666 	.inst	0x66666666 ; undefined
    2d9c:	415f5f00 	.inst	0x415f5f00 ; undefined
    2da0:	535f4d52 	.inst	0x535f4d52 ; undefined
    2da4:	4f455a49 	.inst	0x4f455a49 ; undefined
    2da8:	494d5f46 	.inst	0x494d5f46 ; undefined
    2dac:	414d494e 	.inst	0x414d494e ; undefined
    2db0:	4e455f4c 	.inst	0x4e455f4c ; undefined
    2db4:	34204d55 	cbz	w21, 4375c <fat32_open+0x42a64>
    2db8:	494c4800 	.inst	0x494c4800 ; undefined
    2dbc:	465f5453 	.inst	0x465f5453 ; undefined
    2dc0:	54535249 	b.ls	a9808 <fat32_open+0xa8b10>  // b.plast
    2dc4:	4641535f 	.inst	0x4641535f ; undefined
    2dc8:	79742845 	ldrh	w5, [x2, #6676]
    2dcc:	682c6570 	.inst	0x682c6570 ; undefined
    2dd0:	2c646165 	ldnp	s5, s24, [x11, #-224]
    2dd4:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    2dd8:	28282029 	stnp	w9, w8, [x1, #-192]
    2ddc:	64616568 	.inst	0x64616568 ; undefined
    2de0:	663e2d29 	.inst	0x663e2d29 ; undefined
    2de4:	74737269 	.inst	0x74737269 ; undefined
    2de8:	48203f20 	.inst	0x48203f20 ; undefined
    2dec:	5453494c 	b.gt	a9714 <fat32_open+0xa8a1c>
    2df0:	5249465f 	.inst	0x5249465f ; undefined
    2df4:	74285453 	.inst	0x74285453 ; undefined
    2df8:	2c657079 	ldnp	s25, s28, [x3, #-216]
    2dfc:	61656820 	.inst	0x61656820 ; undefined
    2e00:	6e202c64 	uqsub	v4.16b, v3.16b, v0.16b
    2e04:	2965646f 	ldp	w15, w25, [x3, #-216]
    2e08:	4e203a20 	suqadd	v0.16b, v17.16b
    2e0c:	294c4c55 	ldp	w21, w19, [x2, #96]
    2e10:	5f617600 	sqshl	d0, d16, #33
    2e14:	79706f63 	ldrh	w3, [x27, #6198]
    2e18:	732c6428 	.inst	0x732c6428 ; undefined
    2e1c:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    2e20:	6c697562 	ldnp	d2, d29, [x11, #-368]
    2e24:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    2e28:	635f6176 	.inst	0x635f6176 ; undefined
    2e2c:	2879706f 	ldnp	w15, w28, [x3, #-56]
    2e30:	29732c64 	ldp	w4, w11, [x3, #-104]
    2e34:	465f5f00 	.inst	0x465f5f00 ; undefined
    2e38:	3233544c 	orr	w12, w2, #0xffffe007
    2e3c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2e40:	5f30315f 	.inst	0x5f30315f ; undefined
    2e44:	5f505845 	.inst	0x5f505845 ; undefined
    2e48:	2d28205f 	stp	s31, s8, [x2, #-192]
    2e4c:	00293733 	.inst	0x00293733 ; NYI
    2e50:	695f5f5f 	ldpsw	xzr, x23, [x26, #248]
    2e54:	735f746e 	.inst	0x735f746e ; undefined
    2e58:	5f657a69 	sqdmlsl	s9, h19, v5.h[6]
    2e5c:	20685f74 	.inst	0x20685f74 ; undefined
    2e60:	6c6f7600 	ldnp	d0, d29, [x16, #-272]
    2e64:	5f656d75 	.inst	0x5f656d75 ; undefined
    2e68:	5f006469 	.inst	0x5f006469 ; undefined
    2e6c:	41484357 	.inst	0x41484357 ; undefined
    2e70:	20545f52 	.inst	0x20545f52 ; undefined
    2e74:	465f5f00 	.inst	0x465f5f00 ; undefined
    2e78:	445f544c 	.inst	0x445f544c ; undefined
    2e7c:	524f4e45 	.inst	0x524f4e45 ; undefined
    2e80:	494d5f4d 	.inst	0x494d5f4d ; undefined
    2e84:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2e88:	30342e31 	adr	x17, 6b44d <fat32_open+0x6a755>
    2e8c:	38393231 	ldsetb	w25, w17, [x17]
    2e90:	33343634 	.inst	0x33343634 ; undefined
    2e94:	31383432 	adds	w18, w1, #0xe0d
    2e98:	30373037 	adr	x23, 7149d <fat32_open+0x707a5>
    2e9c:	37333239 	tbnz	w25, #6, 94e0 <fat32_open+0x87e8>
    2ea0:	38353932 	.inst	0x38353932 ; undefined
    2ea4:	39383233 	strb	w19, [x17, #3596]
    2ea8:	31363139 	adds	w25, w9, #0xd8c
    2eac:	342d6533 	cbz	w19, 5db50 <fat32_open+0x5ce58>
    2eb0:	5f004635 	.inst	0x5f004635 ; undefined
    2eb4:	4345445f 	.inst	0x4345445f ; undefined
    2eb8:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    2ebc:	5f544e41 	.inst	0x5f544e41 ; undefined
    2ec0:	5f474944 	.inst	0x5f474944 ; undefined
    2ec4:	0037205f 	.inst	0x0037205f ; NYI
    2ec8:	38544e49 	ldrb	w9, [x18, #-188]!
    2ecc:	6328435f 	.inst	0x6328435f ; undefined
    2ed0:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    2ed4:	38544e49 	ldrb	w9, [x18, #-188]!
    2ed8:	6328435f 	.inst	0x6328435f ; undefined
    2edc:	475f0029 	.inst	0x475f0029 ; undefined
    2ee0:	505f4343 	adr	x3, c174a <fat32_open+0xc0a52>
    2ee4:	49445254 	.inst	0x49445254 ; undefined
    2ee8:	545f4646 	b.vs	c17b0 <fat32_open+0xc0ab8>
    2eec:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    2ef0:	4c42444c 	.inst	0x4c42444c ; undefined
    2ef4:	4e414d5f 	.inst	0x4e414d5f ; undefined
    2ef8:	49445f54 	.inst	0x49445f54 ; undefined
    2efc:	205f5f47 	.inst	0x205f5f47 ; undefined
    2f00:	00333131 	.inst	0x00333131 ; NYI
    2f04:	33544146 	.inst	0x33544146 ; undefined
    2f08:	45595f32 	.inst	0x45595f32 ; undefined
    2f0c:	4d5f5241 	.inst	0x4d5f5241 ; undefined
    2f10:	204b5341 	.inst	0x204b5341 ; undefined
    2f14:	65667830 	fnmls	z16.h, p6/m, z1.h, z6.h
    2f18:	62003030 	.inst	0x62003030 ; undefined
    2f1c:	00746f6f 	.inst	0x00746f6f ; undefined
    2f20:	5a49535f 	.inst	0x5a49535f ; undefined
    2f24:	20545f45 	.inst	0x20545f45 ; undefined
    2f28:	43575f00 	.inst	0x43575f00 ; undefined
    2f2c:	5f524148 	.inst	0x5f524148 ; undefined
    2f30:	20485f54 	.inst	0x20485f54 ; undefined
    2f34:	415f5f00 	.inst	0x415f5f00 ; undefined
    2f38:	465f4d52 	.inst	0x465f4d52 ; undefined
    2f3c:	55544145 	.inst	0x55544145 ; undefined
    2f40:	515f4552 	sub	w18, w10, #0x7d1, lsl #12
    2f44:	584d4452 	ldr	x18, 9d7cc <fat32_open+0x9cad4>
    2f48:	66756200 	.inst	0x66756200 ; undefined
    2f4c:	746e655f 	.inst	0x746e655f ; undefined
    2f50:	5f007972 	.inst	0x5f007972 ; undefined
    2f54:	544c465f 	.inst	0x544c465f ; undefined
    2f58:	5f583436 	srsra	d22, d1, #40
    2f5c:	5f58414d 	.inst	0x5f58414d ; undefined
    2f60:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    2f64:	37393831 	tbnz	w17, #7, 5668 <fat32_open+0x4970>
    2f68:	39343133 	strb	w19, [x9, #3340]
    2f6c:	37353335 	tbnz	w21, #6, ffffffffffffd5d0 <fat32_open+0xffffffffffffc8d8>
    2f70:	37313332 	tbnz	w18, #6, 55d4 <fat32_open+0x48dc>
    2f74:	38303536 	.inst	0x38303536 ; undefined
    2f78:	39353735 	strb	w21, [x25, #3405]
    2f7c:	36363233 	tbz	w19, #6, fffffffffffff5c0 <fat32_open+0xffffffffffffe8c8>
    2f80:	30303832 	adr	x18, 63685 <fat32_open+0x6298d>
    2f84:	65323037 	.inst	0x65323037 ; undefined
    2f88:	3339342b 	.inst	0x3339342b ; undefined
    2f8c:	34364632 	cbz	w18, 6f850 <fat32_open+0x6eb58>
    2f90:	41460078 	.inst	0x41460078 ; undefined
    2f94:	5f323354 	.inst	0x5f323354 ; undefined
    2f98:	485f5349 	ldxrh	w9, [x26]
    2f9c:	45444449 	.inst	0x45444449 ; undefined
    2fa0:	7461284e 	.inst	0x7461284e ; undefined
    2fa4:	62697274 	.inst	0x62697274 ; undefined
    2fa8:	29657475 	ldp	w21, w29, [x3, #-216]
    2fac:	74612820 	.inst	0x74612820 ; undefined
    2fb0:	62697274 	.inst	0x62697274 ; undefined
    2fb4:	20657475 	.inst	0x20657475 ; undefined
    2fb8:	78302026 	ldeorh	w16, w6, [x1]
    2fbc:	00293230 	.inst	0x00293230 ; NYI
    2fc0:	4f4c5f5f 	.inst	0x4f4c5f5f ; undefined
    2fc4:	4c5f474e 	.inst	0x4c5f474e ; undefined
    2fc8:	5f474e4f 	.inst	0x5f474e4f ; undefined
    2fcc:	5f58414d 	.inst	0x5f58414d ; undefined
    2fd0:	7830205f 	steorh	w16, [x2]
    2fd4:	66666637 	.inst	0x66666637 ; undefined
    2fd8:	66666666 	.inst	0x66666666 ; undefined
    2fdc:	66666666 	.inst	0x66666666 ; undefined
    2fe0:	66666666 	.inst	0x66666666 ; undefined
    2fe4:	4c004c4c 	st3	{v12.2d-v14.2d}, [x2]
    2fe8:	645f4e46 	fcmla	z6.h, p3/m, z18.h, z31.h, #180
    2fec:	655f7269 	fcmeq	p9.h, p4/z, z19.h, z31.h
    2ff0:	7972746e 	ldrh	w14, [x3, #6458]
    2ff4:	465f5f00 	.inst	0x465f5f00 ; undefined
    2ff8:	3631544c 	tbz	w12, #6, 5a80 <fat32_open+0x4d88>
    2ffc:	4e414d5f 	.inst	0x4e414d5f ; undefined
    3000:	49445f54 	.inst	0x49445f54 ; undefined
    3004:	205f5f47 	.inst	0x205f5f47 ; undefined
    3008:	6c003131 	stnp	d17, d12, [x9]
    300c:	20676e6f 	.inst	0x20676e6f ; undefined
    3010:	62756f64 	.inst	0x62756f64 ; undefined
    3014:	5300656c 	ubfx	w12, w11, #0, #26
    3018:	415f4749 	.inst	0x415f4749 ; undefined
    301c:	494d4f54 	.inst	0x494d4f54 ; undefined
    3020:	414d5f43 	.inst	0x414d5f43 ; undefined
    3024:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    3028:	5f474953 	.inst	0x5f474953 ; undefined
    302c:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    3030:	4d5f4349 	.inst	0x4d5f4349 ; undefined
    3034:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3038:	4e4f4300 	.inst	0x4e4f4300 ; undefined
    303c:	4e494154 	.inst	0x4e494154 ; undefined
    3040:	4f5f5245 	.inst	0x4f5f5245 ; undefined
    3044:	79742846 	ldrh	w6, [x2, #6676]
    3048:	702c6570 	adr	x16, 5bcf7 <fat32_open+0x5afff>
    304c:	6d2c7274 	stp	d20, d28, [x19, #-320]
    3050:	65626d65 	fnmls	z5.h, p3/m, z11.h, z2.h
    3054:	28202972 	stnp	w18, w10, [x11, #-256]
    3058:	70797428 	adr	x8, f5edf <fat32_open+0xf51e7>
    305c:	292a2065 	stp	w5, w8, [x3, #-176]
    3060:	69752828 	ldpsw	x8, x10, [x1, #-88]
    3064:	5f38746e 	sqshl	s14, s3, #24
    3068:	292a2074 	stp	w20, w8, [x3, #-176]
    306c:	72747028 	.inst	0x72747028 ; undefined
    3070:	202d2029 	.inst	0x202d2029 ; undefined
    3074:	7366666f 	.inst	0x7366666f ; undefined
    3078:	666f7465 	.inst	0x666f7465 ; undefined
    307c:	70797428 	adr	x8, f5f03 <fat32_open+0xf520b>
    3080:	6d202c65 	stp	d5, d11, [x3, #-512]
    3084:	65626d65 	fnmls	z5.h, p3/m, z11.h, z2.h
    3088:	29292972 	stp	w18, w10, [x11, #-184]
    308c:	72617000 	.inst	0x72617000 ; undefined
    3090:	69735f74 	ldpsw	x20, x23, [x27, #-104]
    3094:	4100657a 	.inst	0x4100657a ; undefined
    3098:	4e47494c 	.inst	0x4e47494c ; undefined
    309c:	574f445f 	.inst	0x574f445f ; undefined
    30a0:	6162284e 	.inst	0x6162284e ; undefined
    30a4:	732c6573 	.inst	0x732c6573 ; undefined
    30a8:	29657a69 	ldp	w9, w30, [x19, #-216]
    30ac:	62282820 	.inst	0x62282820 ; undefined
    30b0:	29657361 	ldp	w1, w28, [x27, #-216]
    30b4:	7e202620 	.inst	0x7e202620 ; undefined
    30b8:	69732828 	ldpsw	x8, x10, [x1, #-104]
    30bc:	2029657a 	.inst	0x2029657a ; undefined
    30c0:	2931202d 	stp	w13, w8, [x1, #-120]
    30c4:	49550029 	.inst	0x49550029 ; undefined
    30c8:	4c5f544e 	.inst	0x4c5f544e ; undefined
    30cc:	54534145 	b.pl	a98f4 <fat32_open+0xa8bfc>  // b.nfrst
    30d0:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    30d4:	5f005841 	fmls	h1, h2, v0.h[4]
    30d8:	544c465f 	.inst	0x544c465f ; undefined
    30dc:	5f583436 	srsra	d22, d1, #40
    30e0:	5f534148 	.inst	0x5f534148 ; undefined
    30e4:	45495551 	.inst	0x45495551 ; undefined
    30e8:	414e5f54 	.inst	0x414e5f54 ; undefined
    30ec:	205f5f4e 	.inst	0x205f5f4e ; undefined
    30f0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    30f4:	31544c46 	adds	w6, w2, #0x513, lsl #12
    30f8:	445f3832 	.inst	0x445f3832 ; undefined
    30fc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    3100:	00333320 	.inst	0x00333320 ; NYI
    3104:	4e495f5f 	.inst	0x4e495f5f ; undefined
    3108:	435f3854 	.inst	0x435f3854 ; undefined
    310c:	20296328 	.inst	0x20296328 ; undefined
    3110:	5f5f0063 	.inst	0x5f5f0063 ; undefined
    3114:	33544c46 	.inst	0x33544c46 ; undefined
    3118:	414d5f32 	.inst	0x414d5f32 ; undefined
    311c:	205f5f58 	.inst	0x205f5f58 ; undefined
    3120:	30342e33 	adr	x19, 6b6e5 <fat32_open+0x6a9ed>
    3124:	33323832 	.inst	0x33323832 ; undefined
    3128:	33363634 	.inst	0x33363634 ; undefined
    312c:	38323538 	.inst	0x38323538 ; undefined
    3130:	38393538 	.inst	0x38393538 ; undefined
    3134:	30373131 	adr	x17, 71759 <fat32_open+0x70a61>
    3138:	33383134 	.inst	0x33383134 ; undefined
    313c:	35343834 	cbnz	w20, 6b840 <fat32_open+0x6ab48>
    3140:	32393631 	orr	w17, w17, #0x1fff80
    3144:	332b6535 	.inst	0x332b6535 ; undefined
    3148:	32334638 	orr	w24, w17, #0x7fffe000
    314c:	54535f00 	b.eq	a9d2c <fat32_open+0xa9034>  // b.none
    3150:	46454444 	.inst	0x46454444 ; undefined
    3154:	205f485f 	.inst	0x205f485f ; undefined
    3158:	544e4900 	b.eq	9fa78 <fat32_open+0x9ed80>  // b.none
    315c:	41454c5f 	.inst	0x41454c5f ; undefined
    3160:	34365453 	cbz	w19, 6fbe8 <fat32_open+0x6eef0>
    3164:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3168:	492d2820 	.inst	0x492d2820 ; undefined
    316c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3170:	54534145 	b.pl	a9998 <fat32_open+0xa8ca0>  // b.nfrst
    3174:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    3178:	2d205841 	stp	s1, s22, [x2, #-256]
    317c:	00293120 	.inst	0x00293120 ; NYI
    3180:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3184:	58343654 	ldr	x20, 6b84c <fat32_open+0x6ab54>
    3188:	4e45445f 	.inst	0x4e45445f ; undefined
    318c:	5f4d524f 	.inst	0x5f4d524f ; undefined
    3190:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3194:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
    3198:	31353734 	adds	w20, w25, #0xd4d
    319c:	31313537 	adds	w23, w9, #0xc4d
    31a0:	38333439 	.inst	0x38333439 ; undefined
    31a4:	31353230 	adds	w16, w17, #0xd4c
    31a8:	32393031 	orr	w17, w1, #0xfff80
    31ac:	38333434 	.inst	0x38333434 ; undefined
    31b0:	32383539 	orr	w25, w9, #0x3fff00
    31b4:	34363732 	cbz	w18, 6f898 <fat32_open+0x6eba0>
    31b8:	65353536 	.inst	0x65353536 ; undefined
    31bc:	3639342d 	tbz	w13, #7, 5840 <fat32_open+0x4b48>
    31c0:	34364636 	cbz	w22, 6fa84 <fat32_open+0x6ed8c>
    31c4:	5f5f0078 	.inst	0x5f5f0078 ; undefined
    31c8:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    31cc:	5f4e494d 	.inst	0x5f4e494d ; undefined
    31d0:	5f505845 	.inst	0x5f505845 ; undefined
    31d4:	2d28205f 	stp	s31, s8, [x2, #-192]
    31d8:	31323031 	adds	w17, w1, #0xc8c
    31dc:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    31e0:	455a4953 	.inst	0x455a4953 ; undefined
    31e4:	0020545f 	.inst	0x0020545f ; NYI
    31e8:	4e495f5f 	.inst	0x4e495f5f ; undefined
    31ec:	5f323354 	.inst	0x5f323354 ; undefined
    31f0:	45505954 	.inst	0x45505954 ; undefined
    31f4:	69205f5f 	.inst	0x69205f5f ; undefined
    31f8:	4900746e 	.inst	0x4900746e ; undefined
    31fc:	5f38544e 	.inst	0x5f38544e ; undefined
    3200:	204e494d 	.inst	0x204e494d ; undefined
    3204:	4e492d28 	.inst	0x4e492d28 ; undefined
    3208:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    320c:	2d205841 	stp	s1, s22, [x2, #-256]
    3210:	00293120 	.inst	0x00293120 ; NYI
    3214:	725f7369 	.inst	0x725f7369 ; undefined
    3218:	00746f6f 	.inst	0x00746f6f ; undefined
    321c:	5f4d454d 	.inst	0x5f4d454d ; undefined
    3220:	43554843 	.inst	0x43554843 ; undefined
    3224:	4e555f4b 	.inst	0x4e555f4b ; undefined
    3228:	28455355 	ldnp	w21, w20, [x26, #40]
    322c:	63756863 	.inst	0x63756863 ; undefined
    3230:	2820296b 	stnp	w11, w10, [x11, #-256]
    3234:	28282821 	stnp	w1, w10, [x1, #-192]
    3238:	63756863 	.inst	0x63756863 ; undefined
    323c:	3e2d296b 	.inst	0x3e2d296b ; undefined
    3240:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    3244:	20262029 	.inst	0x20262029 ; undefined
    3248:	29317830 	stp	w16, w30, [x1, #-120]
    324c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    3250:	33544c46 	.inst	0x33544c46 ; undefined
    3254:	49445f32 	.inst	0x49445f32 ; undefined
    3258:	205f5f47 	.inst	0x205f5f47 ; undefined
    325c:	68630036 	.inst	0x68630036 ; undefined
    3260:	736b6365 	.inst	0x736b6365 ; undefined
    3264:	49006d75 	.inst	0x49006d75 ; undefined
    3268:	4c5f544e 	.inst	0x4c5f544e ; undefined
    326c:	54534145 	b.pl	a9a94 <fat32_open+0xa8d9c>  // b.nfrst
    3270:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    3274:	46005841 	.inst	0x46005841 ; undefined
    3278:	32335441 	orr	w1, w2, #0xffffe007
    327c:	5445475f 	.inst	0x5445475f ; undefined
    3280:	5941445f 	.inst	0x5941445f ; undefined
    3284:	74616428 	.inst	0x74616428 ; undefined
    3288:	28202965 	stnp	w5, w10, [x11, #-256]
    328c:	74616428 	.inst	0x74616428 ; undefined
    3290:	26202965 	.inst	0x26202965 ; undefined
    3294:	54414620 	b.eq	85b58 <fat32_open+0x84e60>  // b.none
    3298:	445f3233 	.inst	0x445f3233 ; undefined
    329c:	4d5f5941 	.inst	0x4d5f5941 ; undefined
    32a0:	294b5341 	ldp	w1, w20, [x26, #88]
    32a4:	695f6300 	ldpsw	x0, x24, [x24, #248]
    32a8:	7865646e 	.inst	0x7865646e ; undefined
    32ac:	42454400 	.inst	0x42454400 ; undefined
    32b0:	66284755 	.inst	0x66284755 ; undefined
    32b4:	2e2c746d 	uabd	v13.8b, v3.8b, v12.8b
    32b8:	20292e2e 	.inst	0x20292e2e ; undefined
    32bc:	65645f5f 	fnmla	z31.h, p7/m, z26.h, z4.h
    32c0:	28677562 	ldnp	w2, w29, [x11, #-200]
    32c4:	75665f5f 	.inst	0x75665f5f ; undefined
    32c8:	5f5f636e 	.inst	0x5f5f636e ; undefined
    32cc:	6d66202c 	ldp	d12, d8, [x1, #-416]
    32d0:	23202c74 	.inst	0x23202c74 ; undefined
    32d4:	565f5f23 	.inst	0x565f5f23 ; undefined
    32d8:	52415f41 	.inst	0x52415f41 ; undefined
    32dc:	5f5f5347 	.inst	0x5f5f5347 ; undefined
    32e0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    32e4:	4c42444c 	.inst	0x4c42444c ; undefined
    32e8:	5341485f 	.inst	0x5341485f ; undefined
    32ec:	4e45445f 	.inst	0x4e45445f ; undefined
    32f0:	5f4d524f 	.inst	0x5f4d524f ; undefined
    32f4:	0031205f 	.inst	0x0031205f ; NYI
    32f8:	33544e49 	.inst	0x33544e49 ; undefined
    32fc:	414d5f32 	.inst	0x414d5f32 ; undefined
    3300:	5f5f0058 	.inst	0x5f5f0058 ; undefined
    3304:	33544c46 	.inst	0x33544c46 ; undefined
    3308:	4d5f5832 	.inst	0x4d5f5832 ; undefined
    330c:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    3310:	322e3220 	orr	w0, w17, #0x7ffc0000
    3314:	37303532 	tbnz	w18, #6, 39b8 <.debug_str+0x39b8>
    3318:	38353833 	.inst	0x38353833 ; undefined
    331c:	32373035 	orr	w21, w1, #0x3ffe00
    3320:	38333130 	ldsetb	w19, w16, [x9]
    3324:	30393033 	adr	x19, 75929 <fat32_open+0x74c31>
    3328:	37323332 	tbnz	w18, #6, 798c <fat32_open+0x6c94>
    332c:	33333731 	.inst	0x33333731 ; undefined
    3330:	34303432 	cbz	w18, 639b4 <fat32_open+0x62cbc>
    3334:	2d653630 	ldp	s16, s13, [x17, #-216]
    3338:	46383033 	.inst	0x46383033 ; undefined
    333c:	00783233 	.inst	0x00783233 ; undefined
    3340:	5254535f 	.inst	0x5254535f ; undefined
    3344:	5f474e49 	.inst	0x5f474e49 ; undefined
    3348:	5f002048 	.inst	0x5f002048 ; undefined
    334c:	4d52415f 	.inst	0x4d52415f ; undefined
    3350:	4145465f 	.inst	0x4145465f ; undefined
    3354:	45525554 	.inst	0x45525554 ; undefined
    3358:	5952435f 	.inst	0x5952435f ; undefined
    335c:	004f5450 	.inst	0x004f5450 ; undefined
    3360:	5f52424d 	.inst	0x5f52424d ; undefined
    3364:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    3368:	31544c46 	adds	w6, w2, #0x513, lsl #12
    336c:	485f3832 	ldxrh	w18, [x1]
    3370:	495f5341 	.inst	0x495f5341 ; undefined
    3374:	4e49464e 	.inst	0x4e49464e ; undefined
    3378:	5f595449 	shl	d9, d2, #25
    337c:	0031205f 	.inst	0x0031205f ; NYI
    3380:	544e4955 	.inst	0x544e4955 ; undefined
    3384:	41454c5f 	.inst	0x41454c5f ; undefined
    3388:	34365453 	cbz	w19, 6fe10 <fat32_open+0x6f118>
    338c:	58414d5f 	ldr	xzr, 85d34 <fat32_open+0x8503c>
    3390:	495f5f00 	.inst	0x495f5f00 ; undefined
    3394:	3436544e 	cbz	w14, 6fe1c <fat32_open+0x6f124>
    3398:	5059545f 	adr	xzr, b5e22 <fat32_open+0xb512a>
    339c:	205f5f45 	.inst	0x205f5f45 ; undefined
    33a0:	676e6f6c 	.inst	0x676e6f6c ; undefined
    33a4:	746e6920 	.inst	0x746e6920 ; undefined
    33a8:	76656400 	.inst	0x76656400 ; undefined
    33ac:	00656369 	.inst	0x00656369 ; undefined
    33b0:	534e415f 	.inst	0x534e415f ; undefined
    33b4:	54535f49 	b.ls	a9f9c <fat32_open+0xa92a4>  // b.plast
    33b8:	47524144 	.inst	0x47524144 ; undefined
    33bc:	205f485f 	.inst	0x205f485f ; undefined
    33c0:	7a697300 	.inst	0x7a697300 ; undefined
    33c4:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    33c8:	36434544 	tbz	w4, #8, 9c70 <fat32_open+0x8f78>
    33cc:	414d5f34 	.inst	0x414d5f34 ; undefined
    33d0:	445f544e 	.inst	0x445f544e ; undefined
    33d4:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    33d8:	00363120 	.inst	0x00363120 ; NYI
    33dc:	735f6176 	.inst	0x735f6176 ; undefined
    33e0:	74726174 	.inst	0x74726174 ; undefined
    33e4:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    33e8:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    33ec:	6c697562 	ldnp	d2, d29, [x11, #-368]
    33f0:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    33f4:	735f6176 	.inst	0x735f6176 ; undefined
    33f8:	74726174 	.inst	0x74726174 ; undefined
    33fc:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    3400:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    3404:	4d544e49 	.inst	0x4d544e49 ; undefined
    3408:	4d5f5841 	.inst	0x4d5f5841 ; undefined
    340c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3410:	37783020 	tbnz	w0, #15, 3a14 <.debug_str+0x3a14>
    3414:	66666666 	.inst	0x66666666 ; undefined
    3418:	66666666 	.inst	0x66666666 ; undefined
    341c:	66666666 	.inst	0x66666666 ; undefined
    3420:	4c666666 	.inst	0x4c666666 ; undefined
    3424:	535f5f00 	.inst	0x535f5f00 ; undefined
    3428:	5f545248 	.inst	0x5f545248 ; undefined
    342c:	5f58414d 	.inst	0x5f58414d ; undefined
    3430:	7830205f 	steorh	w16, [x2]
    3434:	66666637 	.inst	0x66666637 ; undefined
    3438:	49535f00 	.inst	0x49535f00 ; undefined
    343c:	545f455a 	.inst	0x545f455a ; undefined
    3440:	4645445f 	.inst	0x4645445f ; undefined
    3444:	44454e49 	.inst	0x44454e49 ; undefined
    3448:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    344c:	544e4957 	.inst	0x544e4957 ; undefined
    3450:	58414d5f 	ldr	xzr, 85df8 <fat32_open+0x85100>
    3454:	30205f5f 	adr	xzr, 4403d <fat32_open+0x43345>
    3458:	66666678 	.inst	0x66666678 ; undefined
    345c:	66666666 	.inst	0x66666666 ; undefined
    3460:	49005566 	.inst	0x49005566 ; undefined
    3464:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3468:	54534145 	b.pl	a9c90 <fat32_open+0xa8f98>  // b.nfrst
    346c:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    3470:	75005841 	.inst	0x75005841 ; undefined
    3474:	31746e69 	adds	w9, w19, #0xd1b, lsl #12
    3478:	00745f36 	.inst	0x00745f36 ; undefined
    347c:	72747461 	.inst	0x72747461 ; undefined
    3480:	74756269 	.inst	0x74756269 ; undefined
    3484:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3488:	31434544 	adds	w4, w10, #0xd1, lsl #12
    348c:	535f3832 	.inst	0x535f3832 ; undefined
    3490:	4f4e4255 	.inst	0x4f4e4255 ; undefined
    3494:	4c414d52 	.inst	0x4c414d52 ; undefined
    3498:	4e494d5f 	.inst	0x4e494d5f ; undefined
    349c:	30205f5f 	adr	xzr, 44085 <fat32_open+0x4338d>
    34a0:	3030302e 	adr	x14, 63aa5 <fat32_open+0x62dad>
    34a4:	30303030 	adr	x16, 63aa9 <fat32_open+0x62db1>
    34a8:	30303030 	adr	x16, 63aad <fat32_open+0x62db5>
    34ac:	30303030 	adr	x16, 63ab1 <fat32_open+0x62db9>
    34b0:	30303030 	adr	x16, 63ab5 <fat32_open+0x62dbd>
    34b4:	30303030 	adr	x16, 63ab9 <fat32_open+0x62dc1>
    34b8:	30303030 	adr	x16, 63abd <fat32_open+0x62dc5>
    34bc:	30303030 	adr	x16, 63ac1 <fat32_open+0x62dc9>
    34c0:	2d453130 	ldp	s16, s12, [x9, #40]
    34c4:	33343136 	.inst	0x33343136 ; undefined
    34c8:	5f004c44 	.inst	0x5f004c44 ; undefined
    34cc:	5254505f 	.inst	0x5254505f ; undefined
    34d0:	46464944 	.inst	0x46464944 ; undefined
    34d4:	0020545f 	.inst	0x0020545f ; NYI
    34d8:	4e495f5f 	.inst	0x4e495f5f ; undefined
    34dc:	52545054 	.inst	0x52545054 ; undefined
    34e0:	5059545f 	adr	xzr, b5f6a <fat32_open+0xb5272>
    34e4:	205f5f45 	.inst	0x205f5f45 ; undefined
    34e8:	676e6f6c 	.inst	0x676e6f6c ; undefined
    34ec:	746e6920 	.inst	0x746e6920 ; undefined
    34f0:	475f5f00 	.inst	0x475f5f00 ; undefined
    34f4:	485f4343 	ldxrh	w3, [x26]
    34f8:	5f455641 	shl	d1, d18, #5
    34fc:	434e5953 	.inst	0x434e5953 ; undefined
    3500:	4d4f435f 	.inst	0x4d4f435f ; undefined
    3504:	45524150 	.inst	0x45524150 ; undefined
    3508:	444e415f 	.inst	0x444e415f ; undefined
    350c:	4157535f 	.inst	0x4157535f ; undefined
    3510:	20345f50 	.inst	0x20345f50 ; undefined
    3514:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    3518:	31544c46 	adds	w6, w2, #0x513, lsl #12
    351c:	45445f36 	.inst	0x45445f36 ; undefined
    3520:	4d524f4e 	.inst	0x4d524f4e ; undefined
    3524:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3528:	35205f5f 	cbnz	wzr, 44110 <fat32_open+0x43418>
    352c:	3036392e 	adr	x14, 6fc51 <fat32_open+0x6ef59>
    3530:	34343634 	cbz	w20, 6bbf4 <fat32_open+0x6aefc>
    3534:	33353737 	.inst	0x33353737 ; undefined
    3538:	32363039 	orr	w25, w1, #0x7ffc00
    353c:	30303035 	adr	x21, 63b41 <fat32_open+0x62e49>
    3540:	30303030 	adr	x16, 63b45 <fat32_open+0x62e4d>
    3544:	30303030 	adr	x16, 63b49 <fat32_open+0x62e51>
    3548:	30303030 	adr	x16, 63b4d <fat32_open+0x62e55>
    354c:	30303030 	adr	x16, 63b51 <fat32_open+0x62e59>
    3550:	46382d65 	.inst	0x46382d65 ; undefined
    3554:	49003631 	.inst	0x49003631 ; undefined
    3558:	3436544e 	cbz	w14, 6ffe0 <fat32_open+0x6f2e8>
    355c:	5f00435f 	.inst	0x5f00435f ; undefined
    3560:	4e49555f 	.inst	0x4e49555f ; undefined
    3564:	454c5f54 	.inst	0x454c5f54 ; undefined
    3568:	31545341 	adds	w1, w26, #0x514, lsl #12
    356c:	59545f36 	.inst	0x59545f36 ; undefined
    3570:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    3574:	6f687320 	fcmla	v0.8h, v25.8h, v8.h[1], #270
    3578:	75207472 	.inst	0x75207472 ; undefined
    357c:	6769736e 	.inst	0x6769736e ; undefined
    3580:	2064656e 	.inst	0x2064656e ; undefined
    3584:	00746e69 	.inst	0x00746e69 ; undefined
    3588:	70626570 	adr	x16, c8237 <fat32_open+0xc753f>
    358c:	5f5f0062 	.inst	0x5f5f0062 ; undefined
    3590:	52414843 	.inst	0x52414843 ; undefined
    3594:	545f3631 	.inst	0x545f3631 ; undefined
    3598:	5f455059 	.inst	0x5f455059 ; undefined
    359c:	6873205f 	.inst	0x6873205f ; undefined
    35a0:	2074726f 	.inst	0x2074726f ; undefined
    35a4:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    35a8:	64656e67 	.inst	0x64656e67 ; undefined
    35ac:	746e6920 	.inst	0x746e6920 ; undefined
    35b0:	415f5f00 	.inst	0x415f5f00 ; undefined
    35b4:	48435241 	ldxrh	w1, [x18]
    35b8:	42453436 	.inst	0x42453436 ; undefined
    35bc:	5f005f5f 	.inst	0x5f005f5f ; undefined
    35c0:	544c465f 	.inst	0x544c465f ; undefined
    35c4:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    35c8:	5f474944 	.inst	0x5f474944 ; undefined
    35cc:	3531205f 	cbnz	wzr, 659d4 <fat32_open+0x64cdc>
    35d0:	495f5f00 	.inst	0x495f5f00 ; undefined
    35d4:	5450544e 	b.al	a405c <fat32_open+0xa3364>
    35d8:	414d5f52 	.inst	0x414d5f52 ; undefined
    35dc:	205f5f58 	.inst	0x205f5f58 ; undefined
    35e0:	66377830 	.inst	0x66377830 ; undefined
    35e4:	66666666 	.inst	0x66666666 ; undefined
    35e8:	66666666 	.inst	0x66666666 ; undefined
    35ec:	66666666 	.inst	0x66666666 ; undefined
    35f0:	004c6666 	.inst	0x004c6666 ; undefined
    35f4:	49465f5f 	.inst	0x49465f5f ; undefined
    35f8:	4554494e 	.inst	0x4554494e ; undefined
    35fc:	54414d5f 	.inst	0x54414d5f ; undefined
    3600:	4e4f5f48 	.inst	0x4e4f5f48 ; undefined
    3604:	5f5f594c 	.inst	0x5f5f594c ; undefined
    3608:	5f003020 	.inst	0x5f003020 ; undefined
    360c:	544e495f 	.inst	0x544e495f ; undefined
    3610:	5341465f 	.inst	0x5341465f ; undefined
    3614:	5f363154 	.inst	0x5f363154 ; undefined
    3618:	5f58414d 	.inst	0x5f58414d ; undefined
    361c:	7830205f 	steorh	w16, [x2]
    3620:	66666637 	.inst	0x66666637 ; undefined
    3624:	66666666 	.inst	0x66666666 ; undefined
    3628:	4e494200 	.inst	0x4e494200 ; undefined
    362c:	4552465f 	.inst	0x4552465f ; undefined
    3630:	6e692845 	.inst	0x6e692845 ; undefined
    3634:	2c786564 	ldnp	s4, s25, [x11, #-64]
    3638:	6d746962 	ldp	d2, d26, [x11, #-192]
    363c:	20297061 	.inst	0x20297061 ; undefined
    3640:	62282128 	.inst	0x62282128 ; undefined
    3644:	616d7469 	.inst	0x616d7469 ; undefined
    3648:	20262070 	.inst	0x20262070 ; undefined
    364c:	3c203128 	.inst	0x3c203128 ; undefined
    3650:	6e69203c 	usubl2	v28.4s, v1.8h, v9.8h
    3654:	29786564 	ldp	w4, w25, [x11, #-64]
    3658:	50002929 	adr	x9, 3b7e <.debug_str+0x3b7e>
    365c:	49445254 	.inst	0x49445254 ; undefined
    3660:	4d5f4646 	.inst	0x4d5f4646 ; undefined
    3664:	5f205841 	fmls	h1, h2, v0.h[6]
    3668:	5254505f 	.inst	0x5254505f ; undefined
    366c:	46464944 	.inst	0x46464944 ; undefined
    3670:	58414d5f 	ldr	xzr, 86018 <fat32_open+0x85320>
    3674:	5f005f5f 	.inst	0x5f005f5f ; undefined
    3678:	544c465f 	.inst	0x544c465f ; undefined
    367c:	4156455f 	.inst	0x4156455f ; undefined
    3680:	454d5f4c 	.inst	0x454d5f4c ; undefined
    3684:	444f4854 	.inst	0x444f4854 ; undefined
    3688:	5f005f5f 	.inst	0x5f005f5f ; undefined
    368c:	41484357 	.inst	0x41484357 ; undefined
    3690:	5f545f52 	.inst	0x5f545f52 ; undefined
    3694:	49464544 	.inst	0x49464544 ; undefined
    3698:	2044454e 	.inst	0x2044454e ; undefined
    369c:	415f5f00 	.inst	0x415f5f00 ; undefined
    36a0:	415f4d52 	.inst	0x415f4d52 ; undefined
    36a4:	5f484352 	.inst	0x5f484352 ; undefined
    36a8:	31204138 	adds	w24, w9, #0x810
    36ac:	495f5f00 	.inst	0x495f5f00 ; undefined
    36b0:	3631544e 	tbz	w14, #6, 6138 <fat32_open+0x5440>
    36b4:	6328435f 	.inst	0x6328435f ; undefined
    36b8:	00632029 	.inst	0x00632029 ; undefined
    36bc:	69705f5f 	ldpsw	xzr, x23, [x26, #-128]
    36c0:	205f5f63 	.inst	0x205f5f63 ; undefined
    36c4:	49550031 	.inst	0x49550031 ; undefined
    36c8:	465f544e 	.inst	0x465f544e ; undefined
    36cc:	33545341 	.inst	0x33545341 ; undefined
    36d0:	414d5f32 	.inst	0x414d5f32 ; undefined
    36d4:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    36d8:	544e4955 	.inst	0x544e4955 ; undefined
    36dc:	5341465f 	.inst	0x5341465f ; undefined
    36e0:	5f323354 	.inst	0x5f323354 ; undefined
    36e4:	5f58414d 	.inst	0x5f58414d ; undefined
    36e8:	475f005f 	.inst	0x475f005f ; undefined
    36ec:	535f4343 	.inst	0x535f4343 ; undefined
    36f0:	4e494454 	.inst	0x4e494454 ; undefined
    36f4:	20485f54 	.inst	0x20485f54 ; undefined
    36f8:	54414600 	b.eq	85fb8 <fat32_open+0x852c0>  // b.none
    36fc:	495f3233 	.inst	0x495f3233 ; undefined
    3700:	4f525f53 	.inst	0x4f525f53 ; undefined
    3704:	74746128 	.inst	0x74746128 ; undefined
    3708:	75626972 	.inst	0x75626972 ; undefined
    370c:	20296574 	.inst	0x20296574 ; undefined
    3710:	74746128 	.inst	0x74746128 ; undefined
    3714:	75626972 	.inst	0x75626972 ; undefined
    3718:	26206574 	.inst	0x26206574 ; undefined
    371c:	30783020 	adr	x0, f3d21 <fat32_open+0xf3029>
    3720:	5f002931 	.inst	0x5f002931 ; undefined
    3724:	544e495f 	.inst	0x544e495f ; undefined
    3728:	41454c5f 	.inst	0x41454c5f ; undefined
    372c:	34365453 	cbz	w19, 701b4 <fat32_open+0x6f4bc>
    3730:	58414d5f 	ldr	xzr, 860d8 <fat32_open+0x853e0>
    3734:	30205f5f 	adr	xzr, 4431d <fat32_open+0x43625>
    3738:	66663778 	.inst	0x66663778 ; undefined
    373c:	66666666 	.inst	0x66666666 ; undefined
    3740:	66666666 	.inst	0x66666666 ; undefined
    3744:	66666666 	.inst	0x66666666 ; undefined
    3748:	5f004c66 	.inst	0x5f004c66 ; undefined
    374c:	4e4f435f 	.inst	0x4e4f435f ; undefined
    3750:	4e494154 	.inst	0x4e494154 ; undefined
    3754:	4f5f5245 	.inst	0x4f5f5245 ; undefined
    3758:	79742846 	ldrh	w6, [x2, #6676]
    375c:	702c6570 	adr	x16, 5c40b <fat32_open+0x5b713>
    3760:	6d2c7274 	stp	d20, d28, [x19, #-320]
    3764:	65626d65 	fnmls	z5.h, p3/m, z11.h, z2.h
    3768:	28202972 	stnp	w18, w10, [x11, #-256]
    376c:	6f63207b 	umlal2	v27.4s, v3.8h, v3.h[2]
    3770:	2074736e 	.inst	0x2074736e ; undefined
    3774:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    3778:	2028666f 	.inst	0x2028666f ; undefined
    377c:	79742828 	ldrh	w8, [x1, #6676]
    3780:	2a206570 	orn	w16, w11, w0, lsl #25
    3784:	2d293029 	stp	s9, s12, [x1, #-184]
    3788:	6d656d3e 	ldp	d30, d27, [x9, #-432]
    378c:	20726562 	.inst	0x20726562 ; undefined
    3790:	5f2a2029 	.inst	0x5f2a2029 ; undefined
    3794:	74706d5f 	.inst	0x74706d5f ; undefined
    3798:	203d2072 	.inst	0x203d2072 ; undefined
    379c:	72747028 	.inst	0x72747028 ; undefined
    37a0:	28203b29 	stnp	w9, w14, [x25, #-256]
    37a4:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    37a8:	28292a20 	stnp	w0, w10, [x17, #-184]
    37ac:	68632820 	.inst	0x68632820 ; undefined
    37b0:	2a207261 	orn	w1, w19, w0, lsl #28
    37b4:	6d5f5f29 	ldp	d9, d23, [x25, #496]
    37b8:	20727470 	.inst	0x20727470 ; undefined
    37bc:	666f202d 	.inst	0x666f202d ; undefined
    37c0:	74657366 	.inst	0x74657366 ; undefined
    37c4:	7428666f 	.inst	0x7428666f ; undefined
    37c8:	2c657079 	ldnp	s25, s28, [x3, #-216]
    37cc:	626d656d 	.inst	0x626d656d ; undefined
    37d0:	20297265 	.inst	0x20297265 ; undefined
    37d4:	297d3b29 	ldp	w9, w14, [x25, #-24]
    37d8:	53425f00 	.inst	0x53425f00 ; undefined
    37dc:	49535f44 	.inst	0x49535f44 ; undefined
    37e0:	545f455a 	.inst	0x545f455a ; undefined
    37e4:	5700205f 	.inst	0x5700205f ; undefined
    37e8:	52414843 	.inst	0x52414843 ; undefined
    37ec:	4e494d5f 	.inst	0x4e494d5f ; undefined
    37f0:	46464f00 	.inst	0x46464f00 ; undefined
    37f4:	5f544553 	.inst	0x5f544553 ; undefined
    37f8:	7428464f 	.inst	0x7428464f ; undefined
    37fc:	2c657079 	ldnp	s25, s28, [x3, #-216]
    3800:	626d656d 	.inst	0x626d656d ; undefined
    3804:	20297265 	.inst	0x20297265 ; undefined
    3808:	69732828 	ldpsw	x8, x10, [x1, #-104]
    380c:	745f657a 	.inst	0x745f657a ; undefined
    3810:	28262029 	stnp	w9, w8, [x1, #-208]
    3814:	79742828 	ldrh	w8, [x1, #6676]
    3818:	2a206570 	orn	w16, w11, w0, lsl #25
    381c:	29302029 	stp	w9, w8, [x1, #-128]
    3820:	656d3e2d 	fmls	z13.h, p7/m, z17.h, z13.h
    3824:	7265626d 	.inst	0x7265626d ; undefined
    3828:	64002929 	.inst	0x64002929 ; undefined
    382c:	65767269 	fnmls	z9.h, p4/m, z19.h, z22.h
    3830:	6d756e5f 	ldp	d31, d27, [x18, #-176]
    3834:	00726562 	.inst	0x00726562 ; undefined
    3838:	4843575f 	ldxrh	wzr, [x26]
    383c:	545f5241 	b.ne	c2284 <fat32_open+0xc158c>  // b.any
    3840:	5500205f 	.inst	0x5500205f ; undefined
    3844:	5f544e49 	.inst	0x5f544e49 ; undefined
    3848:	5341454c 	.inst	0x5341454c ; undefined
    384c:	5f363154 	.inst	0x5f363154 ; undefined
    3850:	2058414d 	.inst	0x2058414d ; undefined
    3854:	49555f5f 	.inst	0x49555f5f ; undefined
    3858:	4c5f544e 	.inst	0x4c5f544e ; undefined
    385c:	54534145 	b.pl	aa084 <fat32_open+0xa938c>  // b.nfrst
    3860:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    3864:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3868:	53494c00 	.inst	0x53494c00 ; undefined
    386c:	4e495f54 	.inst	0x4e495f54 ; undefined
    3870:	68285449 	.inst	0x68285449 ; undefined
    3874:	29646165 	ldp	w5, w24, [x11, #-224]
    3878:	206f6420 	.inst	0x206f6420 ; undefined
    387c:	6828207b 	.inst	0x6828207b ; undefined
    3880:	29646165 	ldp	w5, w24, [x11, #-224]
    3884:	72703e2d 	.inst	0x72703e2d ; undefined
    3888:	3d207665 	str	b5, [x19, #2077]
    388c:	61656820 	.inst	0x61656820 ; undefined
    3890:	28203b64 	stnp	w4, w14, [x27, #-256]
    3894:	64616568 	.inst	0x64616568 ; undefined
    3898:	6e3e2d29 	uqsub	v9.16b, v9.16b, v30.16b
    389c:	20747865 	.inst	0x20747865 ; undefined
    38a0:	6568203d 	fmls	z29.h, p0/m, z1.h, z8.h
    38a4:	203b6461 	.inst	0x203b6461 ; undefined
    38a8:	6877207d 	.inst	0x6877207d ; undefined
    38ac:	20656c69 	.inst	0x20656c69 ; undefined
    38b0:	00293028 	.inst	0x00293028 ; NYI
    38b4:	72626d70 	.inst	0x72626d70 ; undefined
    38b8:	765f5f00 	.inst	0x765f5f00 ; undefined
    38bc:	6f635f61 	.inst	0x6f635f61 ; undefined
    38c0:	64287970 	.inst	0x64287970 ; undefined
    38c4:	2029732c 	.inst	0x2029732c ; undefined
    38c8:	75625f5f 	.inst	0x75625f5f ; undefined
    38cc:	69746c69 	ldpsw	x9, x27, [x3, #-96]
    38d0:	61765f6e 	.inst	0x61765f6e ; undefined
    38d4:	706f635f 	adr	xzr, e253f <fat32_open+0xe1847>
    38d8:	2c642879 	ldnp	s25, s10, [x3, #-224]
    38dc:	5f002973 	.inst	0x5f002973 ; undefined
    38e0:	4d52415f 	.inst	0x4d52415f ; undefined
    38e4:	2050465f 	.inst	0x2050465f ; undefined
    38e8:	5f003431 	.inst	0x5f003431 ; undefined
    38ec:	5a49535f 	.inst	0x5a49535f ; undefined
    38f0:	414d5f45 	.inst	0x414d5f45 ; undefined
    38f4:	205f5f58 	.inst	0x205f5f58 ; undefined
    38f8:	66667830 	.inst	0x66667830 ; undefined
    38fc:	66666666 	.inst	0x66666666 ; undefined
    3900:	66666666 	.inst	0x66666666 ; undefined
    3904:	66666666 	.inst	0x66666666 ; undefined
    3908:	4c556666 	.inst	0x4c556666 ; undefined
    390c:	74616600 	.inst	0x74616600 ; undefined
    3910:	705f3233 	adr	x19, c1f57 <fat32_open+0xc125f>
    3914:	65737261 	fnmls	z1.h, p4/m, z19.h, z19.h
    3918:	6d616e5f 	ldp	d31, d27, [x18, #-496]
    391c:	4e490065 	.inst	0x4e490065 ; undefined
    3920:	41465f54 	.inst	0x41465f54 ; undefined
    3924:	32335453 	orr	w19, w2, #0xffffe007
    3928:	58414d5f 	ldr	xzr, 862d0 <fat32_open+0x855d8>
    392c:	495f5f20 	.inst	0x495f5f20 ; undefined
    3930:	465f544e 	.inst	0x465f544e ; undefined
    3934:	33545341 	.inst	0x33545341 ; undefined
    3938:	414d5f32 	.inst	0x414d5f32 ; undefined
    393c:	005f5f58 	.inst	0x005f5f58 ; undefined
    3940:	49555f5f 	.inst	0x49555f5f ; undefined
    3944:	3436544e 	cbz	w14, 703cc <fat32_open+0x6f6d4>
    3948:	6328435f 	.inst	0x6328435f ; undefined
    394c:	20632029 	.inst	0x20632029 ; undefined
    3950:	55202323 	.inst	0x55202323 ; undefined
    3954:	5f5f004c 	.inst	0x5f5f004c ; undefined
    3958:	5f474953 	.inst	0x5f474953 ; undefined
    395c:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    3960:	545f4349 	b.ls	c21c8 <fat32_open+0xc14d0>  // b.plast
    3964:	5f455059 	.inst	0x5f455059 ; undefined
    3968:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
    396c:	4e490074 	.inst	0x4e490074 ; undefined
    3970:	5f363154 	.inst	0x5f363154 ; undefined
    3974:	004e494d 	.inst	0x004e494d ; undefined
    3978:	50544e49 	adr	x9, ac342 <fat32_open+0xab64a>
    397c:	4d5f5254 	.inst	0x4d5f5254 ; undefined
    3980:	61004e49 	.inst	0x61004e49 ; undefined
    3984:	72657373 	.inst	0x72657373 ; undefined
    3988:	78652874 	.inst	0x78652874 ; undefined
    398c:	28202970 	stnp	w16, w10, [x11, #-256]
    3990:	64696f76 	.inst	0x64696f76 ; undefined
    3994:	65282829 	.inst	0x65282829 ; undefined
    3998:	20297078 	.inst	0x20297078 ; undefined
    399c:	28207c7c 	stnp	w28, wzr, [x3, #-256]
    39a0:	73615f5f 	.inst	0x73615f5f ; undefined
    39a4:	74726573 	.inst	0x74726573 ; undefined
    39a8:	465f5f28 	.inst	0x465f5f28 ; undefined
    39ac:	5f454c49 	.inst	0x5f454c49 ; undefined
    39b0:	5f202c5f 	.inst	0x5f202c5f ; undefined
    39b4:	4e494c5f 	.inst	0x4e494c5f ; undefined
    39b8:	2c5f5f45 	ldnp	s5, s23, [x26, #248]
    39bc:	78652320 	ldeorlh	w5, w0, [x25]
    39c0:	202c2970 	.inst	0x202c2970 ; undefined
    39c4:	00292930 	.inst	0x00292930 ; NYI
    39c8:	33746166 	.inst	0x33746166 ; undefined
    39cc:	69665f32 	ldpsw	x18, x23, [x25, #-208]
    39d0:	655f646e 	fcmeq	p14.h, p1/z, z3.h, z31.h
    39d4:	7972746e 	ldrh	w14, [x3, #6458]
    39d8:	555f5f00 	.inst	0x555f5f00 ; undefined
    39dc:	5f544e49 	.inst	0x5f544e49 ; undefined
    39e0:	5341454c 	.inst	0x5341454c ; undefined
    39e4:	5f343654 	.inst	0x5f343654 ; undefined
    39e8:	45505954 	.inst	0x45505954 ; undefined
    39ec:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    39f0:	20676e6f 	.inst	0x20676e6f ; undefined
    39f4:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    39f8:	64656e67 	.inst	0x64656e67 ; undefined
    39fc:	746e6920 	.inst	0x746e6920 ; undefined
    3a00:	445f5f00 	.inst	0x445f5f00 ; undefined
    3a04:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    3a08:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    3a0c:	64282820 	.inst	0x64282820 ; undefined
    3a10:	6c62756f 	ldnp	d15, d29, [x11, #-480]
    3a14:	2e322965 	.inst	0x2e322965 ; undefined
    3a18:	30353232 	adr	x18, 6e05d <fat32_open+0x6d365>
    3a1c:	35383337 	cbnz	w23, 74080 <fat32_open+0x73388>
    3a20:	37303538 	tbnz	w24, #6, 40c4 <.debug_str+0x40c4>
    3a24:	33313032 	.inst	0x33313032 ; undefined
    3a28:	39303338 	strb	w24, [x25, #3084]
    3a2c:	32333230 	orr	w16, w17, #0x3ffe000
    3a30:	33373137 	.inst	0x33373137 ; undefined
    3a34:	30343233 	adr	x19, 6c079 <fat32_open+0x6b381>
    3a38:	65363034 	.inst	0x65363034 ; undefined
    3a3c:	3830332d 	ldsetb	w16, w13, [x25]
    3a40:	5f00294c 	.inst	0x5f00294c ; undefined
    3a44:	544c465f 	.inst	0x544c465f ; undefined
    3a48:	5f583436 	srsra	d22, d1, #40
    3a4c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3a50:	2e33205f 	usubl	v31.8h, v2.8b, v19.8b
    3a54:	31323633 	adds	w19, w17, #0xc8d
    3a58:	34313330 	cbz	w16, 660bc <fat32_open+0x653c4>
    3a5c:	32313133 	orr	w19, w9, #0xfff8000
    3a60:	35333930 	cbnz	w16, 6a184 <fat32_open+0x6948c>
    3a64:	36323630 	tbz	w16, #6, 8128 <fat32_open+0x7430>
    3a68:	37373632 	tbnz	w18, #6, 212c <.debug_str+0x212c>
    3a6c:	33373138 	.inst	0x33373138 ; undefined
    3a70:	35373132 	cbnz	w18, 72094 <fat32_open+0x7139c>
    3a74:	65303632 	.inst	0x65303632 ; undefined
    3a78:	3339342d 	.inst	0x3339342d ; undefined
    3a7c:	34364632 	cbz	w18, 70340 <fat32_open+0x6f648>
    3a80:	495f0078 	.inst	0x495f0078 ; undefined
    3a84:	3233504c 	orr	w12, w2, #0xffffe003
    3a88:	74616600 	.inst	0x74616600 ; undefined
    3a8c:	7265765f 	.inst	0x7265765f ; undefined
    3a90:	6e6f6973 	.inst	0x6e6f6973 ; undefined
    3a94:	495f5f00 	.inst	0x495f5f00 ; undefined
    3a98:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3a9c:	54534145 	b.pl	aa2c4 <fat32_open+0xa95cc>  // b.nfrst
    3aa0:	545f3233 	.inst	0x545f3233 ; undefined
    3aa4:	5f455059 	.inst	0x5f455059 ; undefined
    3aa8:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
    3aac:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    3ab0:	43554e47 	.inst	0x43554e47 ; undefined
    3ab4:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3ab8:	5f5f524f 	.inst	0x5f5f524f ; undefined
    3abc:	64003220 	.inst	0x64003220 ; undefined
    3ac0:	655f7269 	fcmeq	p9.h, p4/z, z19.h, z31.h
    3ac4:	6972746e 	ldpsw	x14, x29, [x3, #-112]
    3ac8:	6d5f7365 	ldp	d5, d28, [x27, #496]
    3acc:	5f007861 	.inst	0x5f007861 ; undefined
    3ad0:	4d52415f 	.inst	0x4d52415f ; undefined
    3ad4:	4234365f 	.inst	0x4234365f ; undefined
    3ad8:	535f5449 	.inst	0x535f5449 ; undefined
    3adc:	45544154 	.inst	0x45544154 ; undefined
    3ae0:	65003120 	.inst	0x65003120 ; undefined
    3ae4:	5f627062 	sqdmlsl	s2, h3, v2.h[2]
    3ae8:	73726170 	.inst	0x73726170 ; undefined
    3aec:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3af0:	4c42444c 	.inst	0x4c42444c ; undefined
    3af4:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3af8:	5f30315f 	.inst	0x5f30315f ; undefined
    3afc:	5f505845 	.inst	0x5f505845 ; undefined
    3b00:	2d28205f 	stp	s31, s8, [x2, #-192]
    3b04:	31333934 	adds	w20, w9, #0xcce
    3b08:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    3b0c:	5f434347 	.inst	0x5f434347 ; undefined
    3b10:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    3b14:	495f4349 	.inst	0x495f4349 ; undefined
    3b18:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3b1c:	5f4b434f 	.inst	0x5f4b434f ; undefined
    3b20:	45455246 	.inst	0x45455246 ; undefined
    3b24:	70003220 	adr	x0, 416b <.debug_str+0x416b>
    3b28:	5f726964 	.inst	0x5f726964 ; undefined
    3b2c:	00627573 	.inst	0x00627573 ; undefined
    3b30:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3b34:	58323354 	ldr	x20, 6819c <fat32_open+0x674a4>
    3b38:	5350455f 	.inst	0x5350455f ; undefined
    3b3c:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    3b40:	32205f5f 	orr	wsp, w26, #0xffffff
    3b44:	3032322e 	adr	x14, 68189 <fat32_open+0x67491>
    3b48:	30363434 	adr	x20, 701cd <fat32_open+0x6f4d5>
    3b4c:	35323934 	cbnz	w20, 68270 <fat32_open+0x67578>
    3b50:	33313330 	.inst	0x33313330 ; undefined
    3b54:	38303830 	.inst	0x38303830 ; undefined
    3b58:	36323734 	tbz	w20, #6, 823c <fat32_open+0x7544>
    3b5c:	36333333 	tbz	w19, #6, a1c0 <fat32_open+0x94c8>
    3b60:	36313831 	tbz	w17, #6, 6264 <fat32_open+0x556c>
    3b64:	32363034 	orr	w20, w1, #0x7ffc00
    3b68:	36312d65 	tbz	w5, #6, 6114 <fat32_open+0x541c>
    3b6c:	78323346 	ldseth	w18, w6, [x26]
    3b70:	544e4900 	b.eq	a0490 <fat32_open+0x9f798>  // b.none
    3b74:	41454c5f 	.inst	0x41454c5f ; undefined
    3b78:	5f385453 	.inst	0x5f385453 ; undefined
    3b7c:	004e494d 	.inst	0x004e494d ; undefined
    3b80:	4d544e49 	.inst	0x4d544e49 ; undefined
    3b84:	4d5f5841 	.inst	0x4d5f5841 ; undefined
    3b88:	66005841 	.inst	0x66005841 ; undefined
    3b8c:	32337461 	orr	w1, w3, #0xffffe7ff
    3b90:	6165725f 	.inst	0x6165725f ; undefined
    3b94:	68635f64 	.inst	0x68635f64 ; undefined
    3b98:	5f6e6961 	.inst	0x5f6e6961 ; undefined
    3b9c:	75746572 	.inst	0x75746572 ; undefined
    3ba0:	5f006e72 	.inst	0x5f006e72 ; undefined
    3ba4:	5f434347 	.inst	0x5f434347 ; undefined
    3ba8:	5f58414d 	.inst	0x5f58414d ; undefined
    3bac:	47494c41 	.inst	0x47494c41 ; undefined
    3bb0:	20545f4e 	.inst	0x20545f4e ; undefined
    3bb4:	415f5f00 	.inst	0x415f5f00 ; undefined
    3bb8:	465f4d52 	.inst	0x465f4d52 ; undefined
    3bbc:	55544145 	.inst	0x55544145 ; undefined
    3bc0:	465f4552 	.inst	0x465f4552 ; undefined
    3bc4:	5f363150 	.inst	0x5f363150 ; undefined
    3bc8:	4c414353 	.inst	0x4c414353 ; undefined
    3bcc:	415f5241 	.inst	0x415f5241 ; undefined
    3bd0:	48544952 	ldxrh	w18, [x10]
    3bd4:	4954454d 	.inst	0x4954454d ; undefined
    3bd8:	435f0043 	.inst	0x435f0043 ; undefined
    3bdc:	4f534e4f 	.inst	0x4f534e4f ; undefined
    3be0:	485f454c 	ldxrh	w12, [x10]
    3be4:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    3be8:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    3bec:	5f534148 	.inst	0x5f534148 ; undefined
    3bf0:	45495551 	.inst	0x45495551 ; undefined
    3bf4:	414e5f54 	.inst	0x414e5f54 ; undefined
    3bf8:	205f5f4e 	.inst	0x205f5f4e ; undefined
    3bfc:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    3c00:	33504c49 	.inst	0x33504c49 ; undefined
    3c04:	005f5f32 	.inst	0x005f5f32 ; undefined
    3c08:	68746170 	.inst	0x68746170 ; undefined
    3c0c:	7261705f 	.inst	0x7261705f ; undefined
    3c10:	4e490074 	.inst	0x4e490074 ; undefined
    3c14:	5f323354 	.inst	0x5f323354 ; undefined
    3c18:	5f5f0043 	.inst	0x5f5f0043 ; undefined
    3c1c:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    3c20:	54414546 	b.vs	864c8 <fat32_open+0x857d0>
    3c24:	5f455255 	.inst	0x5f455255 ; undefined
    3c28:	4c414e55 	.inst	0x4c414e55 ; undefined
    3c2c:	454e4749 	.inst	0x454e4749 ; undefined
    3c30:	00312044 	.inst	0x00312044 ; NYI
    3c34:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3c38:	38323154 	ldsetb	w18, w20, [x10]
    3c3c:	4e45445f 	.inst	0x4e45445f ; undefined
    3c40:	5f4d524f 	.inst	0x5f4d524f ; undefined
    3c44:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3c48:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
    3c4c:	31353734 	adds	w20, w25, #0xd4d
    3c50:	31313537 	adds	w23, w9, #0xc4d
    3c54:	38333439 	.inst	0x38333439 ; undefined
    3c58:	31353230 	adds	w16, w17, #0xd4c
    3c5c:	32393031 	orr	w17, w1, #0xfff80
    3c60:	38333434 	.inst	0x38333434 ; undefined
    3c64:	32383539 	orr	w25, w9, #0x3fff00
    3c68:	34363732 	cbz	w18, 7034c <fat32_open+0x6f654>
    3c6c:	65353536 	.inst	0x65353536 ; undefined
    3c70:	3639342d 	tbz	w13, #7, 62f4 <fat32_open+0x55fc>
    3c74:	32314636 	orr	w22, w17, #0xffff8001
    3c78:	4e490038 	.inst	0x4e490038 ; undefined
    3c7c:	5f343654 	.inst	0x5f343654 ; undefined
    3c80:	004e494d 	.inst	0x004e494d ; undefined
    3c84:	544e4955 	.inst	0x544e4955 ; undefined
    3c88:	00435f38 	.inst	0x00435f38 ; undefined
    3c8c:	544e4955 	.inst	0x544e4955 ; undefined
    3c90:	435f3631 	.inst	0x435f3631 ; undefined
    3c94:	525f5f00 	.inst	0x525f5f00 ; undefined
    3c98:	53494745 	.inst	0x53494745 ; undefined
    3c9c:	5f524554 	.inst	0x5f524554 ; undefined
    3ca0:	46455250 	.inst	0x46455250 ; undefined
    3ca4:	5f5f5849 	.inst	0x5f5f5849 ; undefined
    3ca8:	565f0020 	.inst	0x565f0020 ; undefined
    3cac:	494c5f41 	.inst	0x494c5f41 ; undefined
    3cb0:	205f5453 	.inst	0x205f5453 ; undefined
    3cb4:	445f5f00 	.inst	0x445f5f00 ; undefined
    3cb8:	445f4c42 	.inst	0x445f4c42 ; undefined
    3cbc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    3cc0:	00353120 	.inst	0x00353120 ; NYI
    3cc4:	656d616e 	fnmls	z14.h, p0/m, z11.h, z13.h
    3cc8:	535f5f00 	.inst	0x535f5f00 ; undefined
    3ccc:	4f455a49 	.inst	0x4f455a49 ; undefined
    3cd0:	49535f46 	.inst	0x49535f46 ; undefined
    3cd4:	545f455a 	.inst	0x545f455a ; undefined
    3cd8:	38205f5f 	.inst	0x38205f5f ; undefined
    3cdc:	415f5f00 	.inst	0x415f5f00 ; undefined
    3ce0:	48435241 	ldxrh	w1, [x18]
    3ce4:	4c453436 	.inst	0x4c453436 ; undefined
    3ce8:	31205f5f 	cmn	w26, #0x817
    3cec:	465f5f00 	.inst	0x465f5f00 ; undefined
    3cf0:	3436544c 	cbz	w12, 70778 <fat32_open+0x6fa80>
    3cf4:	5350455f 	.inst	0x5350455f ; undefined
    3cf8:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    3cfc:	32205f5f 	orr	wsp, w26, #0xffffff
    3d00:	3032322e 	adr	x14, 68345 <fat32_open+0x6764d>
    3d04:	30363434 	adr	x20, 70389 <fat32_open+0x6f691>
    3d08:	35323934 	cbnz	w20, 6842c <fat32_open+0x67734>
    3d0c:	33313330 	.inst	0x33313330 ; undefined
    3d10:	38303830 	.inst	0x38303830 ; undefined
    3d14:	36323734 	tbz	w20, #6, 83f8 <fat32_open+0x7700>
    3d18:	36333333 	tbz	w19, #6, a37c <fat32_open+0x9684>
    3d1c:	36313831 	tbz	w17, #6, 6420 <fat32_open+0x5728>
    3d20:	32363034 	orr	w20, w1, #0x7ffc00
    3d24:	36312d65 	tbz	w5, #6, 62d0 <fat32_open+0x55d8>
    3d28:	00343646 	.inst	0x00343646 ; NYI
    3d2c:	5453494c 	b.gt	aa654 <fat32_open+0xa995c>
    3d30:	444f4e5f 	.inst	0x444f4e5f ; undefined
    3d34:	616e2845 	.inst	0x616e2845 ; undefined
    3d38:	2029656d 	.inst	0x2029656d ; undefined
    3d3c:	75727473 	.inst	0x75727473 ; undefined
    3d40:	6c207463 	stnp	d3, d29, [x3, #-512]
    3d44:	5f747369 	sqdmlsl	s9, h27, v4.h[3]
    3d48:	65646f6e 	fnmls	z14.h, p3/m, z27.h, z4.h
    3d4c:	6d616e20 	ldp	d0, d27, [x17, #-496]
    3d50:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3d54:	544e4955 	.inst	0x544e4955 ; undefined
    3d58:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    3d5c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3d60:	66783020 	.inst	0x66783020 ; undefined
    3d64:	66666666 	.inst	0x66666666 ; undefined
    3d68:	66666666 	.inst	0x66666666 ; undefined
    3d6c:	66666666 	.inst	0x66666666 ; undefined
    3d70:	55666666 	.inst	0x55666666 ; undefined
    3d74:	6670004c 	.inst	0x6670004c ; undefined
    3d78:	32337461 	orr	w1, w3, #0xffffe7ff
    3d7c:	696c6800 	ldpsw	x0, x26, [x0, #-160]
    3d80:	6e5f7473 	.inst	0x6e5f7473 ; undefined
    3d84:	0065646f 	.inst	0x0065646f ; undefined
    3d88:	5f4d454d 	.inst	0x5f4d454d ; undefined
    3d8c:	43554843 	.inst	0x43554843 ; undefined
    3d90:	49535f4b 	.inst	0x49535f4b ; undefined
    3d94:	6328455a 	.inst	0x6328455a ; undefined
    3d98:	6b637568 	.inst	0x6b637568 ; undefined
    3d9c:	28282029 	stnp	w9, w8, [x1, #-192]
    3da0:	63756863 	.inst	0x63756863 ; undefined
    3da4:	3e2d296b 	.inst	0x3e2d296b ; undefined
    3da8:	657a6973 	fnmls	z19.h, p2/m, z11.h, z26.h
    3dac:	7e202620 	.inst	0x7e202620 ; undefined
    3db0:	29317830 	stp	w16, w30, [x1, #-120]
    3db4:	6f687300 	fcmla	v0.8h, v24.8h, v8.h[1], #270
    3db8:	69207472 	.inst	0x69207472 ; undefined
    3dbc:	5f00746e 	.inst	0x5f00746e ; undefined
    3dc0:	44445453 	.inst	0x44445453 ; undefined
    3dc4:	485f4645 	ldxrh	w5, [x18]
    3dc8:	61760020 	.inst	0x61760020 ; undefined
    3dcc:	6772615f 	.inst	0x6772615f ; undefined
    3dd0:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    3dd4:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    3dd8:	6c697562 	ldnp	d2, d29, [x11, #-368]
    3ddc:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    3de0:	615f6176 	.inst	0x615f6176 ; undefined
    3de4:	76286772 	.inst	0x76286772 ; undefined
    3de8:	00296c2c 	.inst	0x00296c2c ; NYI
    3dec:	54505f5f 	.inst	0x54505f5f ; undefined
    3df0:	46494452 	.inst	0x46494452 ; undefined
    3df4:	414d5f46 	.inst	0x414d5f46 ; undefined
    3df8:	205f5f58 	.inst	0x205f5f58 ; undefined
    3dfc:	66377830 	.inst	0x66377830 ; undefined
    3e00:	66666666 	.inst	0x66666666 ; undefined
    3e04:	66666666 	.inst	0x66666666 ; undefined
    3e08:	66666666 	.inst	0x66666666 ; undefined
    3e0c:	004c6666 	.inst	0x004c6666 ; undefined
    3e10:	49555f5f 	.inst	0x49555f5f ; undefined
    3e14:	3631544e 	tbz	w14, #6, 689c <fat32_open+0x5ba4>
    3e18:	6328435f 	.inst	0x6328435f ; undefined
    3e1c:	00632029 	.inst	0x00632029 ; undefined
    3e20:	4c465f5f 	.inst	0x4c465f5f ; undefined
    3e24:	5f363154 	.inst	0x5f363154 ; undefined
    3e28:	5f4e494d 	.inst	0x5f4e494d ; undefined
    3e2c:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
    3e30:	35333031 	cbnz	w17, 6a434 <fat32_open+0x6973c>
    3e34:	32363531 	orr	w17, w9, #0xfffc00
    3e38:	30303035 	adr	x21, 6443d <fat32_open+0x63745>
    3e3c:	30303030 	adr	x16, 64441 <fat32_open+0x63749>
    3e40:	30303030 	adr	x16, 64445 <fat32_open+0x6374d>
    3e44:	30303030 	adr	x16, 64449 <fat32_open+0x63751>
    3e48:	30303030 	adr	x16, 6444d <fat32_open+0x63755>
    3e4c:	30303030 	adr	x16, 64451 <fat32_open+0x63759>
    3e50:	65303030 	.inst	0x65303030 ; undefined
    3e54:	3146352d 	adds	w13, w9, #0x18d, lsl #12
    3e58:	69750036 	ldpsw	x22, x0, [x1, #-88]
    3e5c:	3436746e 	cbz	w14, 70ce8 <fat32_open+0x6fff0>
    3e60:	5f00745f 	.inst	0x5f00745f ; undefined
    3e64:	5f4f4e5f 	.inst	0x5f4f4e5f ; undefined
    3e68:	494c4e49 	.inst	0x494c4e49 ; undefined
    3e6c:	5f5f454e 	.inst	0x5f5f454e ; undefined
    3e70:	55003120 	.inst	0x55003120 ; undefined
    3e74:	5f544e49 	.inst	0x5f544e49 ; undefined
    3e78:	5341454c 	.inst	0x5341454c ; undefined
    3e7c:	5f323354 	.inst	0x5f323354 ; undefined
    3e80:	0058414d 	.inst	0x0058414d ; undefined
    3e84:	43575f5f 	.inst	0x43575f5f ; undefined
    3e88:	5f524148 	.inst	0x5f524148 ; undefined
    3e8c:	5f002054 	.inst	0x5f002054 ; undefined
    3e90:	544c465f 	.inst	0x544c465f ; undefined
    3e94:	5f583436 	srsra	d22, d1, #40
    3e98:	5f58414d 	.inst	0x5f58414d ; undefined
    3e9c:	5f505845 	.inst	0x5f505845 ; undefined
    3ea0:	3631205f 	tbz	wzr, #6, 62a8 <fat32_open+0x55b0>
    3ea4:	00343833 	.inst	0x00343833 ; NYI
    3ea8:	54415f5f 	.inst	0x54415f5f ; undefined
    3eac:	43494d4f 	.inst	0x43494d4f ; undefined
    3eb0:	4c45525f 	.inst	0x4c45525f ; undefined
    3eb4:	44455841 	.inst	0x44455841 ; undefined
    3eb8:	6e003020 	ext	v0.16b, v1.16b, v0.16b, #6
    3ebc:	31656d61 	adds	w1, w11, #0x95b, lsl #12
    3ec0:	6d616e00 	ldp	d0, d27, [x16, #-496]
    3ec4:	6e003265 	ext	v5.16b, v19.16b, v0.16b, #6
    3ec8:	33656d61 	.inst	0x33656d61 ; undefined
    3ecc:	535f5f00 	.inst	0x535f5f00 ; undefined
    3ed0:	415f4749 	.inst	0x415f4749 ; undefined
    3ed4:	494d4f54 	.inst	0x494d4f54 ; undefined
    3ed8:	414d5f43 	.inst	0x414d5f43 ; undefined
    3edc:	205f5f58 	.inst	0x205f5f58 ; undefined
    3ee0:	66377830 	.inst	0x66377830 ; undefined
    3ee4:	66666666 	.inst	0x66666666 ; undefined
    3ee8:	55006666 	.inst	0x55006666 ; undefined
    3eec:	5f544e49 	.inst	0x5f544e49 ; undefined
    3ef0:	5341454c 	.inst	0x5341454c ; undefined
    3ef4:	5f323354 	.inst	0x5f323354 ; undefined
    3ef8:	2058414d 	.inst	0x2058414d ; undefined
    3efc:	49555f5f 	.inst	0x49555f5f ; undefined
    3f00:	4c5f544e 	.inst	0x4c5f544e ; undefined
    3f04:	54534145 	b.pl	aa72c <fat32_open+0xa9a34>  // b.nfrst
    3f08:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    3f0c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    3f10:	465f5f00 	.inst	0x465f5f00 ; undefined
    3f14:	3436544c 	cbz	w12, 7099c <fat32_open+0x6fca4>
    3f18:	4e414d5f 	.inst	0x4e414d5f ; undefined
    3f1c:	49445f54 	.inst	0x49445f54 ; undefined
    3f20:	205f5f47 	.inst	0x205f5f47 ; undefined
    3f24:	49003335 	.inst	0x49003335 ; undefined
    3f28:	5f38544e 	.inst	0x5f38544e ; undefined
    3f2c:	4e490043 	.inst	0x4e490043 ; undefined
    3f30:	454c5f54 	.inst	0x454c5f54 ; undefined
    3f34:	33545341 	.inst	0x33545341 ; undefined
    3f38:	414d5f32 	.inst	0x414d5f32 ; undefined
    3f3c:	5f5f0058 	.inst	0x5f5f0058 ; undefined
    3f40:	455a4953 	.inst	0x455a4953 ; undefined
    3f44:	465f464f 	.inst	0x465f464f ; undefined
    3f48:	54414f4c 	b.gt	86930 <fat32_open+0x85c38>
    3f4c:	34205f5f 	cbz	wzr, 44b34 <fat32_open+0x43e3c>
    3f50:	445f5f00 	.inst	0x445f5f00 ; undefined
    3f54:	34364345 	cbz	w5, 707bc <fat32_open+0x6fac4>
    3f58:	4e494d5f 	.inst	0x4e494d5f ; undefined
    3f5c:	31205f5f 	cmn	w26, #0x817
    3f60:	38332d45 	.inst	0x38332d45 ; undefined
    3f64:	00444433 	.inst	0x00444433 ; undefined
    3f68:	656e5f5f 	fnmla	z31.h, p7/m, z26.h, z14.h
    3f6c:	705f6465 	adr	x5, c2bfb <fat32_open+0xc1f03>
    3f70:	69647274 	ldpsw	x20, x28, [x19, #-224]
    3f74:	745f6666 	.inst	0x745f6666 ; undefined
    3f78:	445f5f00 	.inst	0x445f5f00 ; undefined
    3f7c:	445f4c42 	.inst	0x445f4c42 ; undefined
    3f80:	4d494345 	.inst	0x4d494345 ; undefined
    3f84:	445f4c41 	.inst	0x445f4c41 ; undefined
    3f88:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    3f8c:	00373120 	.inst	0x00373120 ; NYI
    3f90:	65646e69 	fnmls	z9.h, p3/m, z19.h, z4.h
    3f94:	505f0078 	adr	x24, c1fa2 <fat32_open+0xc12aa>
    3f98:	49445254 	.inst	0x49445254 ; undefined
    3f9c:	545f4646 	b.vs	c2864 <fat32_open+0xc1b6c>
    3fa0:	4900205f 	.inst	0x4900205f ; undefined
    3fa4:	3631544e 	tbz	w14, #6, 6a2c <fat32_open+0x5d34>
    3fa8:	6328435f 	.inst	0x6328435f ; undefined
    3fac:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    3fb0:	31544e49 	adds	w9, w18, #0x513, lsl #12
    3fb4:	28435f36 	ldnp	w22, w23, [x25, #24]
    3fb8:	5f002963 	.inst	0x5f002963 ; undefined
    3fbc:	4d52415f 	.inst	0x4d52415f ; undefined
    3fc0:	5f50465f 	.inst	0x5f50465f ; undefined
    3fc4:	54534146 	b.vs	aa7ec <fat32_open+0xa9af4>
    3fc8:	494c4100 	.inst	0x494c4100 ; undefined
    3fcc:	555f4e47 	.inst	0x555f4e47 ; undefined
    3fd0:	61622850 	.inst	0x61622850 ; undefined
    3fd4:	732c6573 	.inst	0x732c6573 ; undefined
    3fd8:	29657a69 	ldp	w9, w30, [x19, #-216]
    3fdc:	494c4120 	.inst	0x494c4120 ; undefined
    3fe0:	445f4e47 	.inst	0x445f4e47 ; undefined
    3fe4:	284e574f 	ldnp	w15, w21, [x26, #112]
    3fe8:	73616228 	.inst	0x73616228 ; undefined
    3fec:	2b202965 	adds	w5, w11, w0, uxth #2
    3ff0:	69732820 	ldpsw	x0, x10, [x1, #-104]
    3ff4:	2029657a 	.inst	0x2029657a ; undefined
    3ff8:	2c31202d 	stnp	s13, s8, [x1, #-120]
    3ffc:	7a697320 	.inst	0x7a697320 ; undefined
    4000:	5f002965 	.inst	0x5f002965 ; undefined
    4004:	544e495f 	.inst	0x544e495f ; undefined
    4008:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    400c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4010:	37783020 	tbnz	w0, #15, 4614 <.debug_str+0x4614>
    4014:	00666666 	.inst	0x00666666 ; undefined
    4018:	52415f5f 	.inst	0x52415f5f ; undefined
    401c:	43505f4d 	.inst	0x43505f4d ; undefined
    4020:	41415f53 	.inst	0x41415f53 ; undefined
    4024:	36534350 	tbz	w16, #10, a88c <fat32_open+0x9b94>
    4028:	00312034 	.inst	0x00312034 ; NYI
    402c:	43575f5f 	.inst	0x43575f5f ; undefined
    4030:	5f524148 	.inst	0x5f524148 ; undefined
    4034:	205f5f54 	.inst	0x205f5f54 ; undefined
    4038:	495f5f00 	.inst	0x495f5f00 ; undefined
    403c:	575f544e 	.inst	0x575f544e ; undefined
    4040:	48544449 	ldxrh	w9, [x2]
    4044:	33205f5f 	.inst	0x33205f5f ; undefined
    4048:	454d0032 	.inst	0x454d0032 ; undefined
    404c:	48435f4d 	ldxrh	w13, [x26]
    4050:	5f4b4355 	.inst	0x5f4b4355 ; undefined
    4054:	28544553 	ldnp	w19, w17, [x10, #160]
    4058:	63756863 	.inst	0x63756863 ; undefined
    405c:	2820296b 	stnp	w11, w10, [x11, #-256]
    4060:	75686328 	.inst	0x75686328 ; undefined
    4064:	2d296b63 	stp	s3, s26, [x27, #-184]
    4068:	7a69733e 	.inst	0x7a69733e ; undefined
    406c:	3d7c2065 	ldr	b5, [x3, #3848]
    4070:	31783020 	adds	w0, w1, #0xe0c, lsl #12
    4074:	6c630029 	ldnp	d9, d0, [x1, #-464]
    4078:	65747375 	fnmls	z21.h, p4/m, z27.h, z20.h
    407c:	6c620072 	ldnp	d18, d0, [x3, #-480]
    4080:	5f6b636f 	.inst	0x5f6b636f ; undefined
    4084:	69766564 	ldpsw	x4, x25, [x11, #-80]
    4088:	55006563 	.inst	0x55006563 ; undefined
    408c:	5f544e49 	.inst	0x5f544e49 ; undefined
    4090:	5341454c 	.inst	0x5341454c ; undefined
    4094:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    4098:	5f005841 	fmls	h1, h2, v0.h[4]
    409c:	4749535f 	.inst	0x4749535f ; undefined
    40a0:	4f54415f 	.inst	0x4f54415f ; undefined
    40a4:	5f43494d 	.inst	0x5f43494d ; undefined
    40a8:	54444957 	.inst	0x54444957 ; undefined
    40ac:	205f5f48 	.inst	0x205f5f48 ; undefined
    40b0:	76003233 	.inst	0x76003233 ; undefined
    40b4:	6e655f61 	uqrshl	v1.8h, v27.8h, v5.8h
    40b8:	29762864 	ldp	w4, w10, [x3, #-80]
    40bc:	625f5f20 	.inst	0x625f5f20 ; undefined
    40c0:	746c6975 	.inst	0x746c6975 ; undefined
    40c4:	765f6e69 	.inst	0x765f6e69 ; undefined
    40c8:	6e655f61 	uqrshl	v1.8h, v27.8h, v5.8h
    40cc:	29762864 	ldp	w4, w10, [x3, #-80]
    40d0:	415f5f00 	.inst	0x415f5f00 ; undefined
    40d4:	465f4d52 	.inst	0x465f4d52 ; undefined
    40d8:	55544145 	.inst	0x55544145 ; undefined
    40dc:	435f4552 	.inst	0x435f4552 ; undefined
    40e0:	32334352 	orr	w18, w26, #0x3fffe000
    40e4:	67697300 	.inst	0x67697300 ; undefined
    40e8:	7574616e 	.inst	0x7574616e ; undefined
    40ec:	76006572 	.inst	0x76006572 ; undefined
    40f0:	64696c61 	.inst	0x64696c61 ; undefined
    40f4:	475f5f00 	.inst	0x475f5f00 ; undefined
    40f8:	415f4343 	.inst	0x415f4343 ; undefined
    40fc:	494d4f54 	.inst	0x494d4f54 ; undefined
    4100:	4f505f43 	.inst	0x4f505f43 ; undefined
    4104:	45544e49 	.inst	0x45544e49 ; undefined
    4108:	4f4c5f52 	.inst	0x4f4c5f52 ; undefined
    410c:	465f4b43 	.inst	0x465f4b43 ; undefined
    4110:	20454552 	.inst	0x20454552 ; undefined
    4114:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    4118:	455a4953 	.inst	0x455a4953 ; undefined
    411c:	575f464f 	.inst	0x575f464f ; undefined
    4120:	5f544e49 	.inst	0x5f544e49 ; undefined
    4124:	205f5f54 	.inst	0x205f5f54 ; undefined
    4128:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    412c:	4544524f 	.inst	0x4544524f ; undefined
    4130:	494c5f52 	.inst	0x494c5f52 ; undefined
    4134:	454c5454 	.inst	0x454c5454 ; undefined
    4138:	444e455f 	.inst	0x444e455f ; undefined
    413c:	5f4e4149 	.inst	0x5f4e4149 ; undefined
    4140:	3231205f 	orr	wsp, w2, #0xff8000
    4144:	5f003433 	.inst	0x5f003433 ; undefined
    4148:	4454535f 	.inst	0x4454535f ; undefined
    414c:	205f5f43 	.inst	0x205f5f43 ; undefined
    4150:	575f0031 	.inst	0x575f0031 ; undefined
    4154:	52414843 	.inst	0x52414843 ; undefined
    4158:	445f545f 	.inst	0x445f545f ; undefined
    415c:	4e494645 	.inst	0x4e494645 ; undefined
    4160:	205f4445 	.inst	0x205f4445 ; undefined
    4164:	495f5f00 	.inst	0x495f5f00 ; undefined
    4168:	465f544e 	.inst	0x465f544e ; undefined
    416c:	38545341 	ldurb	w1, [x26, #-187]
    4170:	58414d5f 	ldr	xzr, 86b18 <fat32_open+0x85e20>
    4174:	30205f5f 	adr	xzr, 44d5d <fat32_open+0x44065>
    4178:	66663778 	.inst	0x66663778 ; undefined
    417c:	66666666 	.inst	0x66666666 ; undefined
    4180:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    4184:	33544c46 	.inst	0x33544c46 ; undefined
    4188:	41485f32 	.inst	0x41485f32 ; undefined
    418c:	45445f53 	.inst	0x45445f53 ; undefined
    4190:	4d524f4e 	.inst	0x4d524f4e ; undefined
    4194:	31205f5f 	cmn	w26, #0x817
    4198:	445f5f00 	.inst	0x445f5f00 ; undefined
    419c:	32334345 	orr	w5, w26, #0x3fffe000
    41a0:	4e494d5f 	.inst	0x4e494d5f ; undefined
    41a4:	5058455f 	adr	xzr, b4a4e <fat32_open+0xb3d56>
    41a8:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    41ac:	2934392d 	stp	w13, w14, [x9, #-96]
    41b0:	555f5f00 	.inst	0x555f5f00 ; undefined
    41b4:	36544e49 	tbz	w9, #10, ffffffffffffcb7c <fat32_open+0xffffffffffffbe84>
    41b8:	59545f34 	.inst	0x59545f34 ; undefined
    41bc:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    41c0:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    41c4:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
    41c8:	6e676973 	.inst	0x6e676973 ; undefined
    41cc:	69206465 	.inst	0x69206465 ; undefined
    41d0:	5f00746e 	.inst	0x5f00746e ; undefined
    41d4:	544e495f 	.inst	0x544e495f ; undefined
    41d8:	5341465f 	.inst	0x5341465f ; undefined
    41dc:	5f323354 	.inst	0x5f323354 ; undefined
    41e0:	54444957 	.inst	0x54444957 ; undefined
    41e4:	205f5f48 	.inst	0x205f5f48 ; undefined
    41e8:	5f003233 	.inst	0x5f003233 ; undefined
    41ec:	5f61765f 	sqshl	d31, d18, #33
    41f0:	7473696c 	.inst	0x7473696c ; undefined
    41f4:	00205f5f 	.inst	0x00205f5f ; NYI
    41f8:	5f746166 	.inst	0x5f746166 ; undefined
    41fc:	72617473 	.inst	0x72617473 ; undefined
    4200:	61660074 	.inst	0x61660074 ; undefined
    4204:	69735f74 	ldpsw	x20, x23, [x27, #-104]
    4208:	5f00657a 	.inst	0x5f00657a ; undefined
    420c:	5a49535f 	.inst	0x5a49535f ; undefined
    4210:	5f464f45 	.inst	0x5f464f45 ; undefined
    4214:	474e4f4c 	.inst	0x474e4f4c ; undefined
    4218:	554f445f 	.inst	0x554f445f ; undefined
    421c:	5f454c42 	.inst	0x5f454c42 ; undefined
    4220:	3631205f 	tbz	wzr, #6, 6628 <fat32_open+0x5930>
    4224:	54414600 	b.eq	86ae4 <fat32_open+0x85dec>  // b.none
    4228:	495f3233 	.inst	0x495f3233 ; undefined
    422c:	4e4c5f53 	.inst	0x4e4c5f53 ; undefined
    4230:	74612846 	.inst	0x74612846 ; undefined
    4234:	62697274 	.inst	0x62697274 ; undefined
    4238:	29657475 	ldp	w21, w29, [x3, #-216]
    423c:	74612820 	.inst	0x74612820 ; undefined
    4240:	62697274 	.inst	0x62697274 ; undefined
    4244:	20657475 	.inst	0x20657475 ; undefined
    4248:	30203d3d 	adr	x29, 449ed <fat32_open+0x43cf5>
    424c:	29663078 	ldp	w24, w12, [x3, #-208]
    4250:	505f5f00 	adr	x0, c2e32 <fat32_open+0xc213a>
    4254:	49445254 	.inst	0x49445254 ; undefined
    4258:	545f4646 	b.vs	c2b20 <fat32_open+0xc1e28>
    425c:	5f455059 	.inst	0x5f455059 ; undefined
    4260:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    4264:	6920676e 	.inst	0x6920676e ; undefined
    4268:	5f00746e 	.inst	0x5f00746e ; undefined
    426c:	544c465f 	.inst	0x544c465f ; undefined
    4270:	5f383231 	.inst	0x5f383231 ; undefined
    4274:	5f58414d 	.inst	0x5f58414d ; undefined
    4278:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    427c:	37393831 	tbnz	w17, #7, 6980 <fat32_open+0x5c88>
    4280:	39343133 	strb	w19, [x9, #3340]
    4284:	37353335 	tbnz	w21, #6, ffffffffffffe8e8 <fat32_open+0xffffffffffffdbf0>
    4288:	37313332 	tbnz	w18, #6, 68ec <fat32_open+0x5bf4>
    428c:	38303536 	.inst	0x38303536 ; undefined
    4290:	39353735 	strb	w21, [x25, #3405]
    4294:	36363233 	tbz	w19, #6, 8d8 <.debug_str+0x8d8>
    4298:	30303832 	adr	x18, 6499d <fat32_open+0x63ca5>
    429c:	65323037 	.inst	0x65323037 ; undefined
    42a0:	3339342b 	.inst	0x3339342b ; undefined
    42a4:	32314632 	orr	w18, w17, #0xffff8001
    42a8:	41460038 	.inst	0x41460038 ; undefined
    42ac:	5f323354 	.inst	0x5f323354 ; undefined
    42b0:	445f5349 	.inst	0x445f5349 ; undefined
    42b4:	61285249 	.inst	0x61285249 ; undefined
    42b8:	69727474 	ldpsw	x20, x29, [x3, #-112]
    42bc:	65747562 	fnmls	z2.h, p5/m, z11.h, z20.h
    42c0:	61282029 	.inst	0x61282029 ; undefined
    42c4:	69727474 	ldpsw	x20, x29, [x3, #-112]
    42c8:	65747562 	fnmls	z2.h, p5/m, z11.h, z20.h
    42cc:	30202620 	adr	x0, 44791 <fat32_open+0x43a99>
    42d0:	29303178 	stp	w24, w12, [x11, #-128]
    42d4:	544e4900 	b.eq	a0bf4 <fat32_open+0x9fefc>  // b.none
    42d8:	5f525450 	shl	d16, d2, #18
    42dc:	2058414d 	.inst	0x2058414d ; undefined
    42e0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    42e4:	52545054 	.inst	0x52545054 ; undefined
    42e8:	58414d5f 	ldr	xzr, 86c90 <fat32_open+0x85f98>
    42ec:	5f005f5f 	.inst	0x5f005f5f ; undefined
    42f0:	544c465f 	.inst	0x544c465f ; undefined
    42f4:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    42f8:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    42fc:	372e3120 	tbnz	w0, #5, 920 <.debug_str+0x920>
    4300:	39363739 	strb	w25, [x25, #3469]
    4304:	34333133 	cbz	w19, 6a928 <fat32_open+0x69c30>
    4308:	33323638 	.inst	0x33323638 ; undefined
    430c:	30373531 	adr	x17, 729b1 <fat32_open+0x71cb9>
    4310:	35343138 	cbnz	w24, 6c934 <fat32_open+0x6bc3c>
    4314:	32343732 	orr	w18, w25, #0x3fff000
    4318:	31333733 	adds	w19, w25, #0xccd
    431c:	33343037 	.inst	0x33343037 ; undefined
    4320:	2b653735 	.inst	0x2b653735 ; undefined
    4324:	46383033 	.inst	0x46383033 ; undefined
    4328:	5f003436 	.inst	0x5f003436 ; undefined
    432c:	5f434347 	.inst	0x5f434347 ; undefined
    4330:	455a4953 	.inst	0x455a4953 ; undefined
    4334:	0020545f 	.inst	0x0020545f ; NYI
    4338:	6b736964 	.inst	0x6b736964 ; undefined
    433c:	0064695f 	.inst	0x0064695f ; undefined
    4340:	544e4955 	.inst	0x544e4955 ; undefined
    4344:	5341465f 	.inst	0x5341465f ; undefined
    4348:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    434c:	5f005841 	fmls	h1, h2, v0.h[4]
    4350:	544c465f 	.inst	0x544c465f ; undefined
    4354:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    4358:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    435c:	352e3620 	cbnz	w0, 60a20 <fat32_open+0x5fd28>
    4360:	30343035 	adr	x21, 6c965 <fat32_open+0x6bc6d>
    4364:	30303030 	adr	x16, 64969 <fat32_open+0x63c71>
    4368:	30303030 	adr	x16, 6496d <fat32_open+0x63c75>
    436c:	30303030 	adr	x16, 64971 <fat32_open+0x63c79>
    4370:	30303030 	adr	x16, 64975 <fat32_open+0x63c7d>
    4374:	30303030 	adr	x16, 64979 <fat32_open+0x63c81>
    4378:	30303030 	adr	x16, 6497d <fat32_open+0x63c85>
    437c:	30303030 	adr	x16, 64981 <fat32_open+0x63c89>
    4380:	2b653030 	.inst	0x2b653030 ; undefined
    4384:	36314634 	tbz	w20, #6, 6c48 <fat32_open+0x5f50>
    4388:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    438c:	5f474e4f 	.inst	0x5f474e4f ; undefined
    4390:	5f58414d 	.inst	0x5f58414d ; undefined
    4394:	7830205f 	steorh	w16, [x2]
    4398:	66666637 	.inst	0x66666637 ; undefined
    439c:	66666666 	.inst	0x66666666 ; undefined
    43a0:	66666666 	.inst	0x66666666 ; undefined
    43a4:	66666666 	.inst	0x66666666 ; undefined
    43a8:	5f5f004c 	.inst	0x5f5f004c ; undefined
    43ac:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    43b0:	47494c41 	.inst	0x47494c41 ; undefined
    43b4:	414d5f4e 	.inst	0x414d5f4e ; undefined
    43b8:	57505f58 	.inst	0x57505f58 ; undefined
    43bc:	38322052 	ldeorb	w18, w18, [x2]
    43c0:	53425f00 	.inst	0x53425f00 ; undefined
    43c4:	43575f44 	.inst	0x43575f44 ; undefined
    43c8:	5f524148 	.inst	0x5f524148 ; undefined
    43cc:	75005f54 	.inst	0x75005f54 ; undefined
    43d0:	33746e69 	.inst	0x33746e69 ; undefined
    43d4:	00745f32 	.inst	0x00745f32 ; undefined
    43d8:	72696470 	.inst	0x72696470 ; undefined
    43dc:	746e655f 	.inst	0x746e655f ; undefined
    43e0:	6c007972 	stnp	d18, d30, [x11]
    43e4:	5f747361 	sqdmlsl	s1, h27, v4.h[3]
    43e8:	5f646f6d 	.inst	0x5f646f6d ; undefined
    43ec:	65746164 	fnmls	z4.h, p0/m, z11.h, z20.h
    43f0:	465f5f00 	.inst	0x465f5f00 ; undefined
    43f4:	3631544c 	tbz	w12, #6, 6e7c <fat32_open+0x6184>
    43f8:	4749445f 	.inst	0x4749445f ; undefined
    43fc:	33205f5f 	.inst	0x33205f5f ; undefined
    4400:	555f5f00 	.inst	0x555f5f00 ; undefined
    4404:	50544e49 	adr	x9, acdce <fat32_open+0xac0d6>
    4408:	4d5f5254 	.inst	0x4d5f5254 ; undefined
    440c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4410:	66783020 	.inst	0x66783020 ; undefined
    4414:	66666666 	.inst	0x66666666 ; undefined
    4418:	66666666 	.inst	0x66666666 ; undefined
    441c:	66666666 	.inst	0x66666666 ; undefined
    4420:	55666666 	.inst	0x55666666 ; undefined
    4424:	6164004c 	.inst	0x6164004c ; undefined
    4428:	735f6174 	.inst	0x735f6174 ; undefined
    442c:	74726174 	.inst	0x74726174 ; undefined
    4430:	74616600 	.inst	0x74616600 ; undefined
    4434:	695f3233 	ldpsw	x19, x12, [x17, #248]
    4438:	0074696e 	.inst	0x0074696e ; undefined
    443c:	444c5f5f 	.inst	0x444c5f5f ; undefined
    4440:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    4444:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    4448:	332e3320 	.inst	0x332e3320 ; undefined
    444c:	30313236 	adr	x22, 66a91 <fat32_open+0x65d99>
    4450:	33343133 	.inst	0x33343133 ; undefined
    4454:	30323131 	adr	x17, 68a79 <fat32_open+0x67d81>
    4458:	30353339 	adr	x25, 6eabd <fat32_open+0x6ddc5>
    445c:	32363236 	orr	w22, w17, #0x7ffc00
    4460:	38373736 	.inst	0x38373736 ; undefined
    4464:	32333731 	orr	w17, w25, #0x7ffe000
    4468:	32353731 	orr	w17, w25, #0x1fff800
    446c:	2d653036 	ldp	s22, s12, [x1, #-216]
    4470:	32333934 	orr	w20, w9, #0xfffe000
    4474:	5f5f004c 	.inst	0x5f5f004c ; undefined
    4478:	544e4955 	.inst	0x544e4955 ; undefined
    447c:	5341465f 	.inst	0x5341465f ; undefined
    4480:	5f363154 	.inst	0x5f363154 ; undefined
    4484:	45505954 	.inst	0x45505954 ; undefined
    4488:	75205f5f 	.inst	0x75205f5f ; undefined
    448c:	6769736e 	.inst	0x6769736e ; undefined
    4490:	2064656e 	.inst	0x2064656e ; undefined
    4494:	00746e69 	.inst	0x00746e69 ; undefined
    4498:	33544e49 	.inst	0x33544e49 ; undefined
    449c:	414d5f32 	.inst	0x414d5f32 ; undefined
    44a0:	5f5f2058 	.inst	0x5f5f2058 ; undefined
    44a4:	33544e49 	.inst	0x33544e49 ; undefined
    44a8:	414d5f32 	.inst	0x414d5f32 ; undefined
    44ac:	005f5f58 	.inst	0x005f5f58 ; undefined
    44b0:	53494c48 	.inst	0x53494c48 ; undefined
    44b4:	49465f54 	.inst	0x49465f54 ; undefined
    44b8:	28545352 	ldnp	w18, w20, [x26, #160]
    44bc:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    44c0:	6165682c 	.inst	0x6165682c ; undefined
    44c4:	6f6e2c64 	.inst	0x6f6e2c64 ; undefined
    44c8:	20296564 	.inst	0x20296564 ; undefined
    44cc:	544e4f43 	b.cc	a0eb4 <fat32_open+0xa01bc>  // b.lo, b.ul, b.last
    44d0:	454e4941 	.inst	0x454e4941 ; undefined
    44d4:	464f5f52 	.inst	0x464f5f52 ; undefined
    44d8:	70797428 	adr	x8, f735f <fat32_open+0xf6667>
    44dc:	28202c65 	stnp	w5, w11, [x3, #-256]
    44e0:	64616568 	.inst	0x64616568 ; undefined
    44e4:	663e2d29 	.inst	0x663e2d29 ; undefined
    44e8:	74737269 	.inst	0x74737269 ; undefined
    44ec:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
    44f0:	00296564 	.inst	0x00296564 ; NYI
    44f4:	544e4955 	.inst	0x544e4955 ; undefined
    44f8:	435f3436 	.inst	0x435f3436 ; undefined
    44fc:	47495300 	.inst	0x47495300 ; undefined
    4500:	4f54415f 	.inst	0x4f54415f ; undefined
    4504:	5f43494d 	.inst	0x5f43494d ; undefined
    4508:	0058414d 	.inst	0x0058414d ; undefined
    450c:	746f6f62 	.inst	0x746f6f62 ; undefined
    4510:	6365735f 	.inst	0x6365735f ; undefined
    4514:	5f726f74 	.inst	0x5f726f74 ; undefined
    4518:	5f006b62 	.inst	0x5f006b62 ; undefined
    451c:	4e49575f 	.inst	0x4e49575f ; undefined
    4520:	494d5f54 	.inst	0x494d5f54 ; undefined
    4524:	205f5f4e 	.inst	0x205f5f4e ; undefined
    4528:	49005530 	.inst	0x49005530 ; undefined
    452c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    4530:	54534145 	b.pl	aad58 <fat32_open+0xaa060>  // b.nfrst
    4534:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    4538:	55004e49 	.inst	0x55004e49 ; undefined
    453c:	5f544e49 	.inst	0x5f544e49 ; undefined
    4540:	5341454c 	.inst	0x5341454c ; undefined
    4544:	5f343654 	.inst	0x5f343654 ; undefined
    4548:	2058414d 	.inst	0x2058414d ; undefined
    454c:	49555f5f 	.inst	0x49555f5f ; undefined
    4550:	4c5f544e 	.inst	0x4c5f544e ; undefined
    4554:	54534145 	b.pl	aad7c <fat32_open+0xaa084>  // b.nfrst
    4558:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    455c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    4560:	465f5f00 	.inst	0x465f5f00 ; undefined
    4564:	3436544c 	cbz	w12, 70fec <fat32_open+0x702f4>
    4568:	4749445f 	.inst	0x4749445f ; undefined
    456c:	31205f5f 	cmn	w26, #0x817
    4570:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    4574:	36434544 	tbz	w4, #8, ae1c <fat32_open+0xa124>
    4578:	50455f34 	adr	x20, 8f15e <fat32_open+0x8e466>
    457c:	4f4c4953 	.inst	0x4f4c4953 ; undefined
    4580:	205f5f4e 	.inst	0x205f5f4e ; undefined
    4584:	312d4531 	adds	w17, w9, #0xb51
    4588:	00444435 	.inst	0x00444435 ; undefined
    458c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    4590:	494d5f54 	.inst	0x494d5f54 ; undefined
    4594:	205f5f4e 	.inst	0x205f5f4e ; undefined
    4598:	37312e31 	tbnz	w17, #6, 6b5c <fat32_open+0x5e64>
    459c:	34393435 	cbz	w21, 76c20 <fat32_open+0x75f28>
    45a0:	38303533 	.inst	0x38303533 ; undefined
    45a4:	38323232 	ldsetb	w18, w18, [x17]
    45a8:	37303537 	tbnz	w23, #6, 4c4c <fat32_open+0x3f54>
    45ac:	37383639 	tbnz	w25, #7, 4c70 <fat32_open+0x3f78>
    45b0:	33353633 	.inst	0x33353633 ; undefined
    45b4:	32323237 	orr	w23, w17, #0x7ffc000
    45b8:	36353432 	tbz	w18, #6, ffffffffffffec3c <fat32_open+0xffffffffffffdf44>
    45bc:	332d6538 	.inst	0x332d6538 ; undefined
    45c0:	5f004638 	.inst	0x5f004638 ; undefined
    45c4:	544e495f 	.inst	0x544e495f ; undefined
    45c8:	41454c5f 	.inst	0x41454c5f ; undefined
    45cc:	5f385453 	.inst	0x5f385453 ; undefined
    45d0:	54444957 	.inst	0x54444957 ; undefined
    45d4:	205f5f48 	.inst	0x205f5f48 ; undefined
    45d8:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    45dc:	5f544e49 	.inst	0x5f544e49 ; undefined
    45e0:	5341454c 	.inst	0x5341454c ; undefined
    45e4:	5f363154 	.inst	0x5f363154 ; undefined
    45e8:	45505954 	.inst	0x45505954 ; undefined
    45ec:	73205f5f 	.inst	0x73205f5f ; undefined
    45f0:	74726f68 	.inst	0x74726f68 ; undefined
    45f4:	746e6920 	.inst	0x746e6920 ; undefined
    45f8:	6f6f7200 	fcmla	v0.8h, v16.8h, v15.h[1], #270
    45fc:	6c635f74 	ldnp	d20, d23, [x27, #-464]
    4600:	65747375 	fnmls	z21.h, p4/m, z27.h, z20.h
    4604:	41460072 	.inst	0x41460072 ; undefined
    4608:	5f323354 	.inst	0x5f323354 ; undefined
    460c:	52544e45 	.inst	0x52544e45 ; undefined
    4610:	41425f59 	.inst	0x41425f59 ; undefined
    4614:	78302044 	ldeorh	w16, w4, [x2]
    4618:	66666666 	.inst	0x66666666 ; undefined
    461c:	00376666 	.inst	0x00376666 ; NYI
    4620:	33544e49 	.inst	0x33544e49 ; undefined
    4624:	494d5f32 	.inst	0x494d5f32 ; undefined
    4628:	5f5f004e 	.inst	0x5f5f004e ; undefined
    462c:	33544c46 	.inst	0x33544c46 ; undefined
    4630:	41485f32 	.inst	0x41485f32 ; undefined
    4634:	4e495f53 	.inst	0x4e495f53 ; undefined
    4638:	494e4946 	.inst	0x494e4946 ; undefined
    463c:	5f5f5954 	.inst	0x5f5f5954 ; undefined
    4640:	55003120 	.inst	0x55003120 ; undefined
    4644:	4d544e49 	.inst	0x4d544e49 ; undefined
    4648:	435f5841 	.inst	0x435f5841 ; undefined
    464c:	465f5f00 	.inst	0x465f5f00 ; undefined
    4650:	3231544c 	orr	w12, w2, #0xffff801f
    4654:	414d5f38 	.inst	0x414d5f38 ; undefined
    4658:	445f544e 	.inst	0x445f544e ; undefined
    465c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    4660:	33313120 	.inst	0x33313120 ; undefined
    4664:	544e4900 	b.eq	a0f84 <fat32_open+0xa028c>  // b.none
    4668:	5341465f 	.inst	0x5341465f ; undefined
    466c:	5f363154 	.inst	0x5f363154 ; undefined
    4670:	2058414d 	.inst	0x2058414d ; undefined
    4674:	4e495f5f 	.inst	0x4e495f5f ; undefined
    4678:	41465f54 	.inst	0x41465f54 ; undefined
    467c:	36315453 	tbz	w19, #6, 7104 <fat32_open+0x640c>
    4680:	58414d5f 	ldr	xzr, 87028 <fat32_open+0x86330>
    4684:	5f005f5f 	.inst	0x5f005f5f ; undefined
    4688:	42444c5f 	.inst	0x42444c5f ; undefined
    468c:	494d5f4c 	.inst	0x494d5f4c ; undefined
    4690:	58455f4e 	ldr	x14, 8f278 <fat32_open+0x8e580>
    4694:	205f5f50 	.inst	0x205f5f50 ; undefined
    4698:	36312d28 	tbz	w8, #6, 6c3c <fat32_open+0x5f44>
    469c:	29313833 	stp	w19, w14, [x1, #-120]
    46a0:	625f5f00 	.inst	0x625f5f00 ; undefined
    46a4:	5f6c6f6f 	.inst	0x5f6c6f6f ; undefined
    46a8:	65757274 	fnmls	z20.h, p4/m, z19.h, z21.h
    46ac:	6c61665f 	ldnp	d31, d25, [x18, #-496]
    46b0:	615f6573 	.inst	0x615f6573 ; undefined
    46b4:	645f6572 	fcmla	z18.h, p1/m, z11.h, z31.h, #270
    46b8:	6e696665 	umax	v5.8h, v19.8h, v9.8h
    46bc:	31206465 	adds	w5, w3, #0x819
    46c0:	445f5f00 	.inst	0x445f5f00 ; undefined
    46c4:	455f4c42 	.inst	0x455f4c42 ; undefined
    46c8:	4c495350 	.inst	0x4c495350 ; undefined
    46cc:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    46d0:	64282820 	.inst	0x64282820 ; undefined
    46d4:	6c62756f 	ldnp	d15, d29, [x11, #-480]
    46d8:	2e322965 	.inst	0x2e322965 ; undefined
    46dc:	34303232 	cbz	w18, 64d20 <fat32_open+0x64028>
    46e0:	34303634 	cbz	w20, 64da4 <fat32_open+0x640ac>
    46e4:	30353239 	adr	x25, 6ed29 <fat32_open+0x6e031>
    46e8:	30333133 	adr	x19, 6ad0d <fat32_open+0x6a015>
    46ec:	34383038 	cbz	w24, 74cf0 <fat32_open+0x73ff8>
    46f0:	33363237 	.inst	0x33363237 ; undefined
    46f4:	31363333 	adds	w19, w25, #0xd8c
    46f8:	34363138 	cbz	w24, 70d1c <fat32_open+0x70024>
    46fc:	65323630 	.inst	0x65323630 ; undefined
    4700:	4c36312d 	.inst	0x4c36312d ; undefined
    4704:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    4708:	6465656e 	.inst	0x6465656e ; undefined
    470c:	765f5f5f 	.inst	0x765f5f5f ; undefined
    4710:	696c5f61 	ldpsw	x1, x23, [x27, #-160]
    4714:	72007473 	ands	w19, w3, #0x3fffffff
    4718:	645f6765 	fcmla	z5.h, p1/m, z27.h, z31.h, #270
    471c:	5f007269 	.inst	0x5f007269 ; undefined
    4720:	4e49555f 	.inst	0x4e49555f ; undefined
    4724:	454c5f54 	.inst	0x454c5f54 ; undefined
    4728:	33545341 	.inst	0x33545341 ; undefined
    472c:	414d5f32 	.inst	0x414d5f32 ; undefined
    4730:	205f5f58 	.inst	0x205f5f58 ; undefined
    4734:	66667830 	.inst	0x66667830 ; undefined
    4738:	66666666 	.inst	0x66666666 ; undefined
    473c:	00556666 	.inst	0x00556666 ; undefined
    4740:	4d544e49 	.inst	0x4d544e49 ; undefined
    4744:	435f5841 	.inst	0x435f5841 ; undefined
    4748:	20296328 	.inst	0x20296328 ; undefined
    474c:	4e495f5f 	.inst	0x4e495f5f ; undefined
    4750:	58414d54 	ldr	x20, 870f8 <fat32_open+0x86400>
    4754:	6328435f 	.inst	0x6328435f ; undefined
    4758:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    475c:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    4760:	5f534148 	.inst	0x5f534148 ; undefined
    4764:	49464e49 	.inst	0x49464e49 ; undefined
    4768:	5954494e 	.inst	0x5954494e ; undefined
    476c:	31205f5f 	cmn	w26, #0x817
    4770:	415f5f00 	.inst	0x415f5f00 ; undefined
    4774:	48435241 	ldxrh	w1, [x18]
    4778:	435f3436 	.inst	0x435f3436 ; undefined
    477c:	45444f4d 	.inst	0x45444f4d ; undefined
    4780:	414c5f4c 	.inst	0x414c5f4c ; undefined
    4784:	5f454752 	.inst	0x5f454752 ; undefined
    4788:	4953005f 	.inst	0x4953005f ; undefined
    478c:	54415f47 	b.vc	87374 <fat32_open+0x8667c>
    4790:	43494d4f 	.inst	0x43494d4f ; undefined
    4794:	4e494d5f 	.inst	0x4e494d5f ; undefined
    4798:	535f5f20 	.inst	0x535f5f20 ; undefined
    479c:	415f4749 	.inst	0x415f4749 ; undefined
    47a0:	494d4f54 	.inst	0x494d4f54 ; undefined
    47a4:	494d5f43 	.inst	0x494d5f43 ; undefined
    47a8:	005f5f4e 	.inst	0x005f5f4e ; undefined
    47ac:	5f544e49 	.inst	0x5f544e49 ; undefined
    47b0:	5341454c 	.inst	0x5341454c ; undefined
    47b4:	5f343654 	.inst	0x5f343654 ; undefined
    47b8:	004e494d 	.inst	0x004e494d ; undefined
    47bc:	5f716573 	.inst	0x5f716573 ; undefined
    47c0:	626d756e 	.inst	0x626d756e ; undefined
    47c4:	50007265 	adr	x5, 5612 <fat32_open+0x491a>
    47c8:	49445254 	.inst	0x49445254 ; undefined
    47cc:	4d5f4646 	.inst	0x4d5f4646 ; undefined
    47d0:	49005841 	.inst	0x49005841 ; undefined
    47d4:	4f505f53 	.inst	0x4f505f53 ; undefined
    47d8:	5f524557 	.inst	0x5f524557 ; undefined
    47dc:	325f464f 	.inst	0x325f464f ; undefined
    47e0:	20297828 	.inst	0x20297828 ; undefined
    47e4:	29782828 	ldp	w8, w10, [x1, #-64]
    47e8:	20262620 	.inst	0x20262620 ; undefined
    47ec:	78282821 	.inst	0x78282821 ; undefined
    47f0:	20262029 	.inst	0x20262029 ; undefined
    47f4:	29782828 	ldp	w8, w10, [x1, #-64]
    47f8:	31202d20 	adds	w0, w9, #0x80b
    47fc:	00292929 	.inst	0x00292929 ; NYI
    4800:	74737973 	.inst	0x74737973 ; undefined
    4804:	695f6d65 	ldpsw	x5, x27, [x11, #248]
    4808:	5f5f0064 	.inst	0x5f5f0064 ; undefined
    480c:	5f544c46 	.inst	0x5f544c46 ; undefined
    4810:	4c415645 	.inst	0x4c415645 ; undefined
    4814:	54454d5f 	.inst	0x54454d5f ; undefined
    4818:	5f444f48 	.inst	0x5f444f48 ; undefined
    481c:	5f393943 	.inst	0x5f393943 ; undefined
    4820:	5f5f005f 	.inst	0x5f5f005f ; undefined
    4824:	544e4955 	.inst	0x544e4955 ; undefined
    4828:	59545f38 	.inst	0x59545f38 ; undefined
    482c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    4830:	736e7520 	.inst	0x736e7520 ; undefined
    4834:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    4838:	68632064 	.inst	0x68632064 ; undefined
    483c:	5f007261 	.inst	0x5f007261 ; undefined
    4840:	544c465f 	.inst	0x544c465f ; undefined
    4844:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    4848:	544e414d 	b.le	a1070 <fat32_open+0xa0378>
    484c:	4749445f 	.inst	0x4749445f ; undefined
    4850:	35205f5f 	cbnz	wzr, 45438 <fat32_open+0x44740>
    4854:	6c630033 	ldnp	d19, d0, [x1, #-464]
    4858:	65747375 	fnmls	z21.h, p4/m, z27.h, z20.h
    485c:	6f6c5f72 	.inst	0x6f6c5f72 ; undefined
    4860:	5f5f0077 	.inst	0x5f5f0077 ; undefined
    4864:	41484357 	.inst	0x41484357 ; undefined
    4868:	49575f52 	.inst	0x49575f52 ; undefined
    486c:	5f485444 	shl	d4, d2, #8
    4870:	3233205f 	orr	wsp, w2, #0x3fe000
    4874:	6d657400 	ldp	d0, d29, [x0, #-432]
    4878:	49570070 	.inst	0x49570070 ; undefined
    487c:	4d5f544e 	.inst	0x4d5f544e ; undefined
    4880:	74005841 	.inst	0x74005841 ; undefined
    4884:	6b636172 	.inst	0x6b636172 ; undefined
    4888:	7a69735f 	.inst	0x7a69735f ; undefined
    488c:	565f0065 	.inst	0x565f0065 ; undefined
    4890:	494c5f41 	.inst	0x494c5f41 ; undefined
    4894:	00205453 	.inst	0x00205453 ; NYI
    4898:	5f544e49 	.inst	0x5f544e49 ; undefined
    489c:	54534146 	b.vs	ab0c4 <fat32_open+0xaa3cc>
    48a0:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    48a4:	28204e49 	stnp	w9, w19, [x18, #-256]
    48a8:	544e492d 	b.le	a11cc <fat32_open+0xa04d4>
    48ac:	5341465f 	.inst	0x5341465f ; undefined
    48b0:	5f363154 	.inst	0x5f363154 ; undefined
    48b4:	2058414d 	.inst	0x2058414d ; undefined
    48b8:	2931202d 	stp	w13, w8, [x1, #-120]
    48bc:	735f6300 	.inst	0x735f6300 ; undefined
    48c0:	74726174 	.inst	0x74726174 ; undefined
    48c4:	465f5f00 	.inst	0x465f5f00 ; undefined
    48c8:	3631544c 	tbz	w12, #6, 7350 <fat32_open+0x6658>
    48cc:	5341485f 	.inst	0x5341485f ; undefined
    48d0:	4955515f 	.inst	0x4955515f ; undefined
    48d4:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    48d8:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    48dc:	5f003120 	.inst	0x5f003120 ; undefined
    48e0:	4f54415f 	.inst	0x4f54415f ; undefined
    48e4:	5f43494d 	.inst	0x5f43494d ; undefined
    48e8:	5f514341 	.inst	0x5f514341 ; undefined
    48ec:	204c4552 	.inst	0x204c4552 ; undefined
    48f0:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    48f4:	50544e49 	adr	x9, ad2be <fat32_open+0xac5c6>
    48f8:	575f5254 	.inst	0x575f5254 ; undefined
    48fc:	48544449 	ldxrh	w9, [x2]
    4900:	36205f5f 	tbz	wzr, #4, 54e8 <fat32_open+0x47f0>
    4904:	65720034 	fmla	z20.h, p0/m, z1.h, z18.h
    4908:	76726573 	.inst	0x76726573 ; undefined
    490c:	6e006465 	.inst	0x6e006465 ; undefined
    4910:	00747865 	.inst	0x00747865 ; undefined
    4914:	42445f5f 	.inst	0x42445f5f ; undefined
    4918:	45445f4c 	.inst	0x45445f4c ; undefined
    491c:	4d524f4e 	.inst	0x4d524f4e ; undefined
    4920:	4e494d5f 	.inst	0x4e494d5f ; undefined
    4924:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    4928:	756f6428 	.inst	0x756f6428 ; undefined
    492c:	29656c62 	ldp	w2, w27, [x3, #-216]
    4930:	34392e34 	cbz	w20, 76ef4 <fat32_open+0x761fc>
    4934:	36353630 	tbz	w16, #6, ffffffffffffeff8 <fat32_open+0xffffffffffffe300>
    4938:	34383534 	cbz	w20, 74fdc <fat32_open+0x742e4>
    493c:	36343231 	tbz	w17, #6, ffffffffffffcf80 <fat32_open+0xffffffffffffc288>
    4940:	31343435 	adds	w21, w1, #0xd0d
    4944:	36353637 	tbz	w23, #6, fffffffffffff008 <fat32_open+0xffffffffffffe310>
    4948:	32393738 	orr	w24, w25, #0x1fff80
    494c:	32383638 	orr	w24, w17, #0x3fff00
    4950:	37333132 	tbnz	w18, #6, af74 <fat32_open+0xa27c>
    4954:	332d6532 	.inst	0x332d6532 ; undefined
    4958:	294c3432 	ldp	w18, w13, [x1, #96]
    495c:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    4960:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    4964:	5f474944 	.inst	0x5f474944 ; undefined
    4968:	3333205f 	.inst	0x3333205f ; undefined
    496c:	72617000 	.inst	0x72617000 ; undefined
    4970:	49550074 	.inst	0x49550074 ; undefined
    4974:	3436544e 	cbz	w14, 713fc <fat32_open+0x70704>
    4978:	6328435f 	.inst	0x6328435f ; undefined
    497c:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    4980:	544e4955 	.inst	0x544e4955 ; undefined
    4984:	435f3436 	.inst	0x435f3436 ; undefined
    4988:	00296328 	.inst	0x00296328 ; NYI
    498c:	5f666e6c 	.inst	0x5f666e6c ; undefined
    4990:	00726964 	.inst	0x00726964 ; undefined
    4994:	42445f5f 	.inst	0x42445f5f ; undefined
    4998:	414d5f4c 	.inst	0x414d5f4c ; undefined
    499c:	445f544e 	.inst	0x445f544e ; undefined
    49a0:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    49a4:	00333520 	.inst	0x00333520 ; NYI
    49a8:	53494c48 	.inst	0x53494c48 ; undefined
    49ac:	454e5f54 	.inst	0x454e5f54 ; undefined
    49b0:	70285458 	adr	x24, 5543b <fat32_open+0x54743>
    49b4:	6e2c7274 	uabdl2	v20.8h, v19.16b, v12.16b
    49b8:	2965646f 	ldp	w15, w25, [x3, #-216]
    49bc:	4e4f4320 	.inst	0x4e4f4320 ; undefined
    49c0:	4e494154 	.inst	0x4e494154 ; undefined
    49c4:	4f5f5245 	.inst	0x4f5f5245 ; undefined
    49c8:	5f5f2846 	.inst	0x5f5f2846 ; undefined
    49cc:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
    49d0:	5f5f666f 	.inst	0x5f5f666f ; undefined
    49d4:	74702a28 	.inst	0x74702a28 ; undefined
    49d8:	202c2972 	.inst	0x202c2972 ; undefined
    49dc:	72747028 	.inst	0x72747028 ; undefined
    49e0:	6e3e2d29 	uqsub	v9.16b, v9.16b, v30.16b
    49e4:	2e65646f 	umax	v15.4h, v3.4h, v5.4h
    49e8:	7478656e 	.inst	0x7478656e ; undefined
    49ec:	6f6e202c 	umlal2	v12.4s, v1.8h, v14.h[2]
    49f0:	00296564 	.inst	0x00296564 ; NYI
    49f4:	33544146 	.inst	0x33544146 ; undefined
    49f8:	45475f32 	.inst	0x45475f32 ; undefined
    49fc:	4f485f54 	.inst	0x4f485f54 ; undefined
    4a00:	74285255 	.inst	0x74285255 ; undefined
    4a04:	29656d69 	ldp	w9, w27, [x11, #-216]
    4a08:	28282820 	stnp	w0, w10, [x1, #-192]
    4a0c:	656d6974 	fnmls	z20.h, p2/m, z11.h, z13.h
    4a10:	20262029 	.inst	0x20262029 ; undefined
    4a14:	33544146 	.inst	0x33544146 ; undefined
    4a18:	4f485f32 	.inst	0x4f485f32 ; undefined
    4a1c:	4d5f5255 	.inst	0x4d5f5255 ; undefined
    4a20:	294b5341 	ldp	w1, w20, [x26, #88]
    4a24:	203e3e20 	.inst	0x203e3e20 ; undefined
    4a28:	00293131 	.inst	0x00293131 ; NYI
    4a2c:	5f544e49 	.inst	0x5f544e49 ; undefined
    4a30:	54534146 	b.vs	ab258 <fat32_open+0xaa560>
    4a34:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    4a38:	5f005841 	fmls	h1, h2, v0.h[4]
    4a3c:	544e495f 	.inst	0x544e495f ; undefined
    4a40:	58414d5f 	ldr	xzr, 873e8 <fat32_open+0x866f0>
    4a44:	30205f5f 	adr	xzr, 4562d <fat32_open+0x44935>
    4a48:	66663778 	.inst	0x66663778 ; undefined
    4a4c:	66666666 	.inst	0x66666666 ; undefined
    4a50:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    4a54:	544e4955 	.inst	0x544e4955 ; undefined
    4a58:	41454c5f 	.inst	0x41454c5f ; undefined
    4a5c:	34365453 	cbz	w19, 714e4 <fat32_open+0x707ec>
    4a60:	58414d5f 	ldr	xzr, 87408 <fat32_open+0x86710>
    4a64:	30205f5f 	adr	xzr, 4564d <fat32_open+0x44955>
    4a68:	66666678 	.inst	0x66666678 ; undefined
    4a6c:	66666666 	.inst	0x66666666 ; undefined
    4a70:	66666666 	.inst	0x66666666 ; undefined
    4a74:	66666666 	.inst	0x66666666 ; undefined
    4a78:	004c5566 	.inst	0x004c5566 ; undefined
    4a7c:	73746166 	.inst	0x73746166 ; undefined
    4a80:	53415f00 	.inst	0x53415f00 ; undefined
    4a84:	54524553 	.inst	0x54524553 ; undefined
    4a88:	0020485f 	.inst	0x0020485f ; NYI
    4a8c:	544e4955 	.inst	0x544e4955 ; undefined
    4a90:	435f3233 	.inst	0x435f3233 ; undefined
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	43434700 	.inst	0x43434700 ; undefined
   4:	4c28203a 	.inst	0x4c28203a ; undefined
   8:	72616e69 	.inst	0x72616e69 ; undefined
   c:	4347206f 	.inst	0x4347206f ; undefined
  10:	2e372043 	usubl	v3.8h, v2.8b, v23.8b
  14:	30322d32 	adr	x18, 645b9 <fat32_open+0x638c1>
  18:	312e3731 	adds	w17, w25, #0xb8d
  1c:	37202931 	tbnz	w17, #4, 540 <fat32_init+0x220>
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
  10:	0000002c 	.word	0x0000002c
	...
  20:	000001d8 	.word	0x000001d8
  24:	00000000 	.word	0x00000000
  28:	04b00e41 	.word	0x04b00e41
  2c:	9e469d41 	.word	0x9e469d41
  30:	1d0d4145 	.word	0x1d0d4145
  34:	dedd7202 	.word	0xdedd7202
  38:	00001f0c 	.word	0x00001f0c
  3c:	00000000 	.word	0x00000000
  40:	0000002c 	.word	0x0000002c
	...
  50:	00000148 	.word	0x00000148
  54:	00000000 	.word	0x00000000
  58:	9d400e41 	.word	0x9d400e41
  5c:	41079e08 	.word	0x41079e08
  60:	4f021d0d 	.word	0x4f021d0d
  64:	1f0cddde 	.word	0x1f0cddde
	...
  70:	0000002c 	.word	0x0000002c
	...
  80:	0000027c 	.word	0x0000027c
  84:	00000000 	.word	0x00000000
  88:	05800e41 	.word	0x05800e41
  8c:	9e509d41 	.word	0x9e509d41
  90:	1d0d414f 	.word	0x1d0d414f
  94:	dedd9b02 	.word	0xdedd9b02
  98:	00001f0c 	.word	0x00001f0c
  9c:	00000000 	.word	0x00000000
  a0:	00000024 	.word	0x00000024
	...
  b0:	000000c4 	.word	0x000000c4
  b4:	00000000 	.word	0x00000000
  b8:	9d500e41 	.word	0x9d500e41
  bc:	41099e0a 	.word	0x41099e0a
  c0:	de6e1d0d 	.word	0xde6e1d0d
  c4:	001f0cdd 	.word	0x001f0cdd
  c8:	0000002c 	.word	0x0000002c
	...
  d8:	000002e8 	.word	0x000002e8
  dc:	00000000 	.word	0x00000000
  e0:	9d700e41 	.word	0x9d700e41
  e4:	410d9e0e 	.word	0x410d9e0e
  e8:	b7021d0d 	.word	0xb7021d0d
  ec:	1f0cddde 	.word	0x1f0cddde
	...
  f8:	0000002c 	.word	0x0000002c
	...
 108:	00000130 	.word	0x00000130
 10c:	00000000 	.word	0x00000000
 110:	04c00e41 	.word	0x04c00e41
 114:	9e489d41 	.word	0x9e489d41
 118:	1d0d4147 	.word	0x1d0d4147
 11c:	dedd4802 	.word	0xdedd4802
 120:	00001f0c 	.word	0x00001f0c
 124:	00000000 	.word	0x00000000
 128:	0000002c 	.word	0x0000002c
	...
 138:	00000280 	.word	0x00000280
 13c:	00000000 	.word	0x00000000
 140:	9d500e41 	.word	0x9d500e41
 144:	41099e0a 	.word	0x41099e0a
 148:	93411d0d 	.word	0x93411d0d
 14c:	de9c0208 	.word	0xde9c0208
 150:	1f0cd3dd 	.word	0x1f0cd3dd
 154:	00000000 	.word	0x00000000
 158:	0000002c 	.word	0x0000002c
	...
 168:	000002f8 	.word	0x000002f8
 16c:	00000000 	.word	0x00000000
 170:	01800e41 	.word	0x01800e41
 174:	0f9e109d 	.word	0x0f9e109d
 178:	021d0d41 	.word	0x021d0d41
 17c:	0cdddebb 	.word	0x0cdddebb
 180:	0000001f 	.word	0x0000001f
 184:	00000000 	.word	0x00000000
