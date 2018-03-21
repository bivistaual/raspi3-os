
bin/shell.elf：     文件格式 elf64-littleaarch64


Disassembly of section .text:

0000000000080000 <_start>:
   80000:	d53800a1 	mrs	x1, mpidr_el1
   80004:	92400421 	and	x1, x1, #0x3
   80008:	b4000061 	cbz	x1, 80014 <_start+0x14>
   8000c:	d503205f 	wfe
   80010:	17ffffff 	b	8000c <_start+0xc>
   80014:	580000a1 	ldr	x1, 80028 <_start+0x28>
   80018:	9100003f 	mov	sp, x1
   8001c:	9400091f 	bl	82498 <_cstartup>
   80020:	940000aa 	bl	802c8 <kernel_main>
   80024:	17fffffa 	b	8000c <_start+0xc>
   80028:	00080000 	.word	0x00080000
   8002c:	00000000 	.word	0x00000000

0000000000080030 <memcpy>:
   80030:	b40000e2 	cbz	x2, 8004c <memcpy+0x1c>
   80034:	d2800003 	mov	x3, #0x0                   	// #0
   80038:	38636824 	ldrb	w4, [x1, x3]
   8003c:	38236804 	strb	w4, [x0, x3]
   80040:	91000463 	add	x3, x3, #0x1
   80044:	eb03005f 	cmp	x2, x3
   80048:	54ffff81 	b.ne	80038 <memcpy+0x8>  // b.any
   8004c:	d65f03c0 	ret

0000000000080050 <strlen>:
   80050:	aa0003e3 	mov	x3, x0
   80054:	d2800000 	mov	x0, #0x0                   	// #0
   80058:	14000002 	b	80060 <strlen+0x10>
   8005c:	aa0203e0 	mov	x0, x2
   80060:	38606861 	ldrb	w1, [x3, x0]
   80064:	91000402 	add	x2, x0, #0x1
   80068:	35ffffa1 	cbnz	w1, 8005c <strlen+0xc>
   8006c:	d65f03c0 	ret

0000000000080070 <strcmp>:
   80070:	39400002 	ldrb	w2, [x0]
   80074:	39400024 	ldrb	w4, [x1]
   80078:	34000162 	cbz	w2, 800a4 <strcmp+0x34>
   8007c:	6b04005f 	cmp	w2, w4
   80080:	54000181 	b.ne	800b0 <strcmp+0x40>  // b.any
   80084:	d2800022 	mov	x2, #0x1                   	// #1
   80088:	14000002 	b	80090 <strcmp+0x20>
   8008c:	54000121 	b.ne	800b0 <strcmp+0x40>  // b.any
   80090:	38626803 	ldrb	w3, [x0, x2]
   80094:	38626824 	ldrb	w4, [x1, x2]
   80098:	91000442 	add	x2, x2, #0x1
   8009c:	6b04007f 	cmp	w3, w4
   800a0:	35ffff63 	cbnz	w3, 8008c <strcmp+0x1c>
   800a4:	7100009f 	cmp	w4, #0x0
   800a8:	1a9f07e0 	cset	w0, ne  // ne = any
   800ac:	d65f03c0 	ret
   800b0:	52800020 	mov	w0, #0x1                   	// #1
   800b4:	d65f03c0 	ret

00000000000800b8 <strcpy>:
   800b8:	39400022 	ldrb	w2, [x1]
   800bc:	aa0003e3 	mov	x3, x0
   800c0:	340000a2 	cbz	w2, 800d4 <strcpy+0x1c>
   800c4:	d503201f 	nop
   800c8:	38001462 	strb	w2, [x3], #1
   800cc:	38401c22 	ldrb	w2, [x1, #1]!
   800d0:	35ffffc2 	cbnz	w2, 800c8 <strcpy+0x10>
   800d4:	3900007f 	strb	wzr, [x3]
   800d8:	d65f03c0 	ret
   800dc:	d503201f 	nop

00000000000800e0 <strncpy>:
   800e0:	b4000182 	cbz	x2, 80110 <strncpy+0x30>
   800e4:	39400024 	ldrb	w4, [x1]
   800e8:	d2800003 	mov	x3, #0x0                   	// #0
   800ec:	39000004 	strb	w4, [x0]
   800f0:	350000a4 	cbnz	w4, 80104 <strncpy+0x24>
   800f4:	14000007 	b	80110 <strncpy+0x30>
   800f8:	38636824 	ldrb	w4, [x1, x3]
   800fc:	38236804 	strb	w4, [x0, x3]
   80100:	34000084 	cbz	w4, 80110 <strncpy+0x30>
   80104:	91000463 	add	x3, x3, #0x1
   80108:	eb03005f 	cmp	x2, x3
   8010c:	54ffff61 	b.ne	800f8 <strncpy+0x18>  // b.any
   80110:	d65f03c0 	ret
   80114:	d503201f 	nop

0000000000080118 <utf16toascii>:
   80118:	79400022 	ldrh	w2, [x1]
   8011c:	34000122 	cbz	w2, 80140 <utf16toascii+0x28>
   80120:	aa0003e2 	mov	x2, x0
   80124:	d503201f 	nop
   80128:	39400024 	ldrb	w4, [x1]
   8012c:	78402c23 	ldrh	w3, [x1, #2]!
   80130:	38001444 	strb	w4, [x2], #1
   80134:	35ffffa3 	cbnz	w3, 80128 <utf16toascii+0x10>
   80138:	3900005f 	strb	wzr, [x2]
   8013c:	d65f03c0 	ret
   80140:	aa0003e2 	mov	x2, x0
   80144:	3900005f 	strb	wzr, [x2]
   80148:	d65f03c0 	ret
   8014c:	d503201f 	nop

0000000000080150 <asciitoutf16>:
   80150:	39400022 	ldrb	w2, [x1]
   80154:	aa0003e3 	mov	x3, x0
   80158:	340000a2 	cbz	w2, 8016c <asciitoutf16+0x1c>
   8015c:	d503201f 	nop
   80160:	78002462 	strh	w2, [x3], #2
   80164:	38401c22 	ldrb	w2, [x1, #1]!
   80168:	35ffffc2 	cbnz	w2, 80160 <asciitoutf16+0x10>
   8016c:	7900007f 	strh	wzr, [x3]
   80170:	d65f03c0 	ret
   80174:	d503201f 	nop

0000000000080178 <strcat>:
   80178:	aa0003e3 	mov	x3, x0
   8017c:	38401402 	ldrb	w2, [x0], #1
   80180:	35ffffc2 	cbnz	w2, 80178 <strcat>
   80184:	39400022 	ldrb	w2, [x1]
   80188:	aa0303e0 	mov	x0, x3
   8018c:	34000082 	cbz	w2, 8019c <strcat+0x24>
   80190:	38001402 	strb	w2, [x0], #1
   80194:	38401c22 	ldrb	w2, [x1, #1]!
   80198:	35ffffc2 	cbnz	w2, 80190 <strcat+0x18>
   8019c:	3900001f 	strb	wzr, [x0]
   801a0:	aa0303e0 	mov	x0, x3
   801a4:	d65f03c0 	ret

00000000000801a8 <strtok>:
   801a8:	90000027 	adrp	x7, 84000 <__func__.2797+0xc78>
   801ac:	b4000740 	cbz	x0, 80294 <strtok+0xec>
   801b0:	912080e2 	add	x2, x7, #0x820
   801b4:	39400004 	ldrb	w4, [x0]
   801b8:	f90410e0 	str	x0, [x7, #2080]
   801bc:	f9000440 	str	x0, [x2, #8]
   801c0:	34000704 	cbz	w4, 802a0 <strtok+0xf8>
   801c4:	39400026 	ldrb	w6, [x1]
   801c8:	aa0003e5 	mov	x5, x0
   801cc:	d503201f 	nop
   801d0:	34000126 	cbz	w6, 801f4 <strtok+0x4c>
   801d4:	6b0400df 	cmp	w6, w4
   801d8:	540004e0 	b.eq	80274 <strtok+0xcc>  // b.none
   801dc:	aa0103e3 	mov	x3, x1
   801e0:	14000002 	b	801e8 <strtok+0x40>
   801e4:	54000480 	b.eq	80274 <strtok+0xcc>  // b.none
   801e8:	38401c62 	ldrb	w2, [x3, #1]!
   801ec:	6b04005f 	cmp	w2, w4
   801f0:	35ffffa2 	cbnz	w2, 801e4 <strtok+0x3c>
   801f4:	38401ca4 	ldrb	w4, [x5, #1]!
   801f8:	35fffec4 	cbnz	w4, 801d0 <strtok+0x28>
   801fc:	912080e1 	add	x1, x7, #0x820
   80200:	39400002 	ldrb	w2, [x0]
   80204:	f9000825 	str	x5, [x1, #16]
   80208:	912080e1 	add	x1, x7, #0x820
   8020c:	f9000420 	str	x0, [x1, #8]
   80210:	35000202 	cbnz	w2, 80250 <strtok+0xa8>
   80214:	912080e1 	add	x1, x7, #0x820
   80218:	f9400823 	ldr	x3, [x1, #16]
   8021c:	eb00007f 	cmp	x3, x0
   80220:	54000369 	b.ls	8028c <strtok+0xe4>  // b.plast
   80224:	91000401 	add	x1, x0, #0x1
   80228:	91000463 	add	x3, x3, #0x1
   8022c:	14000002 	b	80234 <strtok+0x8c>
   80230:	540002a0 	b.eq	80284 <strtok+0xdc>  // b.none
   80234:	39400022 	ldrb	w2, [x1]
   80238:	aa0103e0 	mov	x0, x1
   8023c:	91000421 	add	x1, x1, #0x1
   80240:	eb03003f 	cmp	x1, x3
   80244:	34ffff62 	cbz	w2, 80230 <strtok+0x88>
   80248:	912080e1 	add	x1, x7, #0x820
   8024c:	f9000420 	str	x0, [x1, #8]
   80250:	d2800003 	mov	x3, #0x0                   	// #0
   80254:	14000003 	b	80260 <strtok+0xb8>
   80258:	38616802 	ldrb	w2, [x0, x1]
   8025c:	aa0103e3 	mov	x3, x1
   80260:	91000461 	add	x1, x3, #0x1
   80264:	35ffffa2 	cbnz	w2, 80258 <strtok+0xb0>
   80268:	8b030003 	add	x3, x0, x3
   8026c:	f90410e3 	str	x3, [x7, #2080]
   80270:	d65f03c0 	ret
   80274:	390000bf 	strb	wzr, [x5]
   80278:	38401ca4 	ldrb	w4, [x5, #1]!
   8027c:	35fffaa4 	cbnz	w4, 801d0 <strtok+0x28>
   80280:	17ffffdf 	b	801fc <strtok+0x54>
   80284:	912080e7 	add	x7, x7, #0x820
   80288:	f90004e0 	str	x0, [x7, #8]
   8028c:	d2800000 	mov	x0, #0x0                   	// #0
   80290:	d65f03c0 	ret
   80294:	f94410e0 	ldr	x0, [x7, #2080]
   80298:	39400002 	ldrb	w2, [x0]
   8029c:	17ffffdb 	b	80208 <strtok+0x60>
   802a0:	f9000840 	str	x0, [x2, #16]
   802a4:	17ffffdc 	b	80214 <strtok+0x6c>

00000000000802a8 <memset>:
   802a8:	b40000e2 	cbz	x2, 802c4 <memset+0x1c>
   802ac:	12001c21 	and	w1, w1, #0xff
   802b0:	aa0003e3 	mov	x3, x0
   802b4:	8b020002 	add	x2, x0, x2
   802b8:	38001461 	strb	w1, [x3], #1
   802bc:	eb02007f 	cmp	x3, x2
   802c0:	54ffffc1 	b.ne	802b8 <memset+0x10>  // b.any
   802c4:	d65f03c0 	ret

00000000000802c8 <kernel_main>:
   802c8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   802cc:	910003fd 	mov	x29, sp
   802d0:	94000884 	bl	824e0 <mu_init>
   802d4:	940008d1 	bl	82618 <mu_read_byte>
   802d8:	12001c00 	and	w0, w0, #0xff
   802dc:	7100341f 	cmp	w0, #0xd
   802e0:	54ffffa1 	b.ne	802d4 <kernel_main+0xc>  // b.any
   802e4:	94000a95 	bl	82d38 <sd_init>
   802e8:	340001a0 	cbz	w0, 8031c <kernel_main+0x54>
   802ec:	3100041f 	cmn	w0, #0x1
   802f0:	54000200 	b.eq	80330 <kernel_main+0x68>  // b.none
   802f4:	3100081f 	cmn	w0, #0x2
   802f8:	54000240 	b.eq	80340 <kernel_main+0x78>  // b.none
   802fc:	f0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   80300:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   80304:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80308:	9104a063 	add	x3, x3, #0x128
   8030c:	9103e042 	add	x2, x2, #0xf8
   80310:	52800381 	mov	w1, #0x1c                  	// #28
   80314:	91052000 	add	x0, x0, #0x148
   80318:	940007f0 	bl	822d8 <__panic>
   8031c:	940002e9 	bl	80ec0 <mem_init>
   80320:	9400064e 	bl	81c58 <shell_loop>
   80324:	52800000 	mov	w0, #0x0                   	// #0
   80328:	a8c17bfd 	ldp	x29, x30, [sp], #16
   8032c:	d65f03c0 	ret
   80330:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80334:	91042000 	add	x0, x0, #0x108
   80338:	940007ca 	bl	82260 <kprintf>
   8033c:	17fffff0 	b	802fc <kernel_main+0x34>
   80340:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80344:	91046000 	add	x0, x0, #0x118
   80348:	940007c6 	bl	82260 <kprintf>
   8034c:	17ffffec 	b	802fc <kernel_main+0x34>

0000000000080350 <mbr_parse>:
   80350:	d10983ff 	sub	sp, sp, #0x260
   80354:	a9007bfd 	stp	x29, x30, [sp]
   80358:	910003fd 	mov	x29, sp
   8035c:	a90153f3 	stp	x19, x20, [sp, #16]
   80360:	aa0003f3 	mov	x19, x0
   80364:	a9025bf5 	stp	x21, x22, [sp, #32]
   80368:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   8036c:	a90363f7 	stp	x23, x24, [sp, #48]
   80370:	91064000 	add	x0, x0, #0x190
   80374:	aa0103f8 	mov	x24, x1
   80378:	a9046bf9 	stp	x25, x26, [sp, #64]
   8037c:	f9002bfb 	str	x27, [sp, #80]
   80380:	940007b8 	bl	82260 <kprintf>
   80384:	f9400a62 	ldr	x2, [x19, #16]
   80388:	910183b7 	add	x23, x29, #0x60
   8038c:	aa1703e1 	mov	x1, x23
   80390:	52800000 	mov	w0, #0x0                   	// #0
   80394:	f000001a 	adrp	x26, 83000 <sd_init+0x2c8>
   80398:	f0000019 	adrp	x25, 83000 <sd_init+0x2c8>
   8039c:	9106faf6 	add	x22, x23, #0x1be
   803a0:	f000001b 	adrp	x27, 83000 <sd_init+0x2c8>
   803a4:	d63f0040 	blr	x2
   803a8:	91003313 	add	x19, x24, #0xc
   803ac:	90000020 	adrp	x0, 84000 <__func__.2797+0xc78>
   803b0:	910a6000 	add	x0, x0, #0x298
   803b4:	940007ab 	bl	82260 <kprintf>
   803b8:	911de3b5 	add	x21, x29, #0x778
   803bc:	9106d2e1 	add	x1, x23, #0x1b4
   803c0:	d2800142 	mov	x2, #0xa                   	// #10
   803c4:	aa1803e0 	mov	x0, x24
   803c8:	97ffff1a 	bl	80030 <memcpy>
   803cc:	9100f300 	add	x0, x24, #0x3c
   803d0:	f0000017 	adrp	x23, 83000 <sd_init+0x2c8>
   803d4:	f0000018 	adrp	x24, 83000 <sd_init+0x2c8>
   803d8:	9106c35a 	add	x26, x26, #0x1b0
   803dc:	91074339 	add	x25, x25, #0x1d0
   803e0:	9106837b 	add	x27, x27, #0x1a0
   803e4:	9107a318 	add	x24, x24, #0x1e8
   803e8:	910802f7 	add	x23, x23, #0x200
   803ec:	52800014 	mov	w20, #0x0                   	// #0
   803f0:	d2800042 	mov	x2, #0x2                   	// #2
   803f4:	910983a1 	add	x1, x29, #0x260
   803f8:	97ffff0e 	bl	80030 <memcpy>
   803fc:	2a1403e1 	mov	w1, w20
   80400:	aa1b03e0 	mov	x0, x27
   80404:	94000797 	bl	82260 <kprintf>
   80408:	91003273 	add	x19, x19, #0xc
   8040c:	394002c1 	ldrb	w1, [x22]
   80410:	aa1a03e0 	mov	x0, x26
   80414:	381f4261 	sturb	w1, [x19, #-12]
   80418:	11000694 	add	w20, w20, #0x1
   8041c:	910042d6 	add	x22, x22, #0x10
   80420:	910102b5 	add	x21, x21, #0x40
   80424:	9400078f 	bl	82260 <kprintf>
   80428:	385f42c1 	ldurb	w1, [x22, #-12]
   8042c:	aa1903e0 	mov	x0, x25
   80430:	381f5261 	sturb	w1, [x19, #-11]
   80434:	9400078b 	bl	82260 <kprintf>
   80438:	b85c02a1 	ldur	w1, [x21, #-64]
   8043c:	aa1803e0 	mov	x0, x24
   80440:	b81f8261 	stur	w1, [x19, #-8]
   80444:	94000787 	bl	82260 <kprintf>
   80448:	b85d02a1 	ldur	w1, [x21, #-48]
   8044c:	aa1703e0 	mov	x0, x23
   80450:	b81fc261 	stur	w1, [x19, #-4]
   80454:	94000783 	bl	82260 <kprintf>
   80458:	7100129f 	cmp	w20, #0x4
   8045c:	54fffd01 	b.ne	803fc <mbr_parse+0xac>  // b.any
   80460:	a9407bfd 	ldp	x29, x30, [sp]
   80464:	a94153f3 	ldp	x19, x20, [sp, #16]
   80468:	a9425bf5 	ldp	x21, x22, [sp, #32]
   8046c:	a94363f7 	ldp	x23, x24, [sp, #48]
   80470:	a9446bf9 	ldp	x25, x26, [sp, #64]
   80474:	f9402bfb 	ldr	x27, [sp, #80]
   80478:	910983ff 	add	sp, sp, #0x260
   8047c:	d65f03c0 	ret

0000000000080480 <ebpb_parse>:
   80480:	d10883ff 	sub	sp, sp, #0x220
   80484:	aa0003e6 	mov	x6, x0
   80488:	91003425 	add	x5, x1, #0xd
   8048c:	52800004 	mov	w4, #0x0                   	// #0
   80490:	a9007bfd 	stp	x29, x30, [sp]
   80494:	910003fd 	mov	x29, sp
   80498:	f9000bf3 	str	x19, [sp, #16]
   8049c:	aa0203f3 	mov	x19, x2
   804a0:	394000a3 	ldrb	w3, [x5]
   804a4:	910030a5 	add	x5, x5, #0xc
   804a8:	51002c63 	sub	w3, w3, #0xb
   804ac:	12001c63 	and	w3, w3, #0xff
   804b0:	7100047f 	cmp	w3, #0x1
   804b4:	54000369 	b.ls	80520 <ebpb_parse+0xa0>  // b.plast
   804b8:	11000484 	add	w4, w4, #0x1
   804bc:	7100109f 	cmp	w4, #0x4
   804c0:	54ffff01 	b.ne	804a0 <ebpb_parse+0x20>  // b.any
   804c4:	b9400260 	ldr	w0, [x19]
   804c8:	f94008c2 	ldr	x2, [x6, #16]
   804cc:	910083a1 	add	x1, x29, #0x20
   804d0:	d63f0040 	blr	x2
   804d4:	79408fa1 	ldrh	w1, [x29, #70]
   804d8:	3940b7a5 	ldrb	w5, [x29, #45]
   804dc:	3940c3a3 	ldrb	w3, [x29, #48]
   804e0:	7100003f 	cmp	w1, #0x0
   804e4:	39001a65 	strb	w5, [x19, #6]
   804e8:	39004263 	strb	w3, [x19, #16]
   804ec:	b940a3a0 	ldr	w0, [x29, #160]
   804f0:	79406fa6 	ldrh	w6, [x29, #54]
   804f4:	79407ba4 	ldrh	w4, [x29, #60]
   804f8:	1a810000 	csel	w0, w0, w1, eq  // eq = none
   804fc:	b940b3a2 	ldr	w2, [x29, #176]
   80500:	79000a66 	strh	w6, [x19, #4]
   80504:	a9407bfd 	ldp	x29, x30, [sp]
   80508:	79001264 	strh	w4, [x19, #8]
   8050c:	b9000e60 	str	w0, [x19, #12]
   80510:	b9001662 	str	w2, [x19, #20]
   80514:	f9400bf3 	ldr	x19, [sp, #16]
   80518:	910883ff 	add	sp, sp, #0x220
   8051c:	d65f03c0 	ret
   80520:	93407c84 	sxtw	x4, w4
   80524:	8b040484 	add	x4, x4, x4, lsl #1
   80528:	8b040821 	add	x1, x1, x4, lsl #2
   8052c:	b9401020 	ldr	w0, [x1, #16]
   80530:	b9000260 	str	w0, [x19]
   80534:	17ffffe5 	b	804c8 <ebpb_parse+0x48>

0000000000080538 <fat32_init>:
   80538:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
   8053c:	910003fd 	mov	x29, sp
   80540:	a90153f3 	stp	x19, x20, [sp, #16]
   80544:	aa0003f4 	mov	x20, x0
   80548:	f90013f5 	str	x21, [sp, #32]
   8054c:	d2801700 	mov	x0, #0xb8                  	// #184
   80550:	94000298 	bl	80fb0 <malloc>
   80554:	aa0003f3 	mov	x19, x0
   80558:	b40004c0 	cbz	x0, 805f0 <fat32_init+0xb8>
   8055c:	910143b5 	add	x21, x29, #0x50
   80560:	aa1403e0 	mov	x0, x20
   80564:	aa1503e1 	mov	x1, x21
   80568:	97ffff7a 	bl	80350 <mbr_parse>
   8056c:	9100c3a2 	add	x2, x29, #0x30
   80570:	aa1503e1 	mov	x1, x21
   80574:	aa1403e0 	mov	x0, x20
   80578:	97ffffc2 	bl	80480 <ebpb_parse>
   8057c:	3940dba1 	ldrb	w1, [x29, #54]
   80580:	b94063a0 	ldr	w0, [x29, #96]
   80584:	794073a2 	ldrh	w2, [x29, #56]
   80588:	39028a61 	strb	w1, [x19, #162]
   8058c:	29489ba3 	ldp	w3, w6, [x29, #68]
   80590:	0b000042 	add	w2, w2, w0
   80594:	394103a1 	ldrb	w1, [x29, #64]
   80598:	aa1303e0 	mov	x0, x19
   8059c:	a9401684 	ldp	x4, x5, [x20]
   805a0:	a9009664 	stp	x4, x5, [x19, #8]
   805a4:	79406ba4 	ldrh	w4, [x29, #52]
   805a8:	f9400a85 	ldr	x5, [x20, #16]
   805ac:	1b030821 	madd	w1, w1, w3, w2
   805b0:	b9000664 	str	w4, [x19, #4]
   805b4:	f9000e65 	str	x5, [x19, #24]
   805b8:	79014264 	strh	w4, [x19, #160]
   805bc:	29148a63 	stp	w3, w2, [x19, #164]
   805c0:	29159a61 	stp	w1, w6, [x19, #172]
   805c4:	91028261 	add	x1, x19, #0xa0
   805c8:	b8020402 	str	w2, [x0], #32
   805cc:	d503201f 	nop
   805d0:	f800841f 	str	xzr, [x0], #8
   805d4:	eb00003f 	cmp	x1, x0
   805d8:	54ffffc1 	b.ne	805d0 <fat32_init+0x98>  // b.any
   805dc:	aa1303e0 	mov	x0, x19
   805e0:	f94013f5 	ldr	x21, [sp, #32]
   805e4:	a94153f3 	ldp	x19, x20, [sp, #16]
   805e8:	a8c97bfd 	ldp	x29, x30, [sp], #144
   805ec:	d65f03c0 	ret
   805f0:	f0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   805f4:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   805f8:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   805fc:	91086063 	add	x3, x3, #0x218
   80600:	91056042 	add	x2, x2, #0x158
   80604:	52800821 	mov	w1, #0x41                  	// #65
   80608:	91092000 	add	x0, x0, #0x248
   8060c:	94000733 	bl	822d8 <__panic>
   80610:	17ffffd3 	b	8055c <fat32_init+0x24>
   80614:	d503201f 	nop

0000000000080618 <fat32_read_cluster>:
   80618:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
   8061c:	910003fd 	mov	x29, sp
   80620:	a902dff6 	stp	x22, x23, [sp, #40]
   80624:	f90023f9 	str	x25, [sp, #64]
   80628:	79414019 	ldrh	w25, [x0, #160]
   8062c:	39428817 	ldrb	w23, [x0, #162]
   80630:	34000457 	cbz	w23, 806b8 <fat32_read_cluster+0xa0>
   80634:	d1000821 	sub	x1, x1, #0x2
   80638:	f90027ba 	str	x26, [x29, #72]
   8063c:	92401efa 	and	x26, x23, #0xff
   80640:	f90013b5 	str	x21, [x29, #32]
   80644:	f9001fb8 	str	x24, [x29, #56]
   80648:	aa0003f5 	mov	x21, x0
   8064c:	aa0203f8 	mov	x24, x2
   80650:	a90153b3 	stp	x19, x20, [x29, #16]
   80654:	9b1a7c3a 	mul	x26, x1, x26
   80658:	52800014 	mov	w20, #0x0                   	// #0
   8065c:	d2800013 	mov	x19, #0x0                   	// #0
   80660:	d2800016 	mov	x22, #0x0                   	// #0
   80664:	d503201f 	nop
   80668:	b940aea1 	ldr	w1, [x21, #172]
   8066c:	8b344302 	add	x2, x24, w20, uxtw
   80670:	aa1503e0 	mov	x0, x21
   80674:	0b190294 	add	w20, w20, w25
   80678:	8b1a0021 	add	x1, x1, x26
   8067c:	8b130021 	add	x1, x1, x19
   80680:	91000673 	add	x19, x19, #0x1
   80684:	9400018b 	bl	80cb0 <cd_read_sector>
   80688:	8b0002d6 	add	x22, x22, x0
   8068c:	6b1302ff 	cmp	w23, w19
   80690:	54fffec8 	b.hi	80668 <fat32_read_cluster+0x50>  // b.pmore
   80694:	aa1603e0 	mov	x0, x22
   80698:	f94013b5 	ldr	x21, [x29, #32]
   8069c:	a94153b3 	ldp	x19, x20, [x29, #16]
   806a0:	f9401fb8 	ldr	x24, [x29, #56]
   806a4:	f94027ba 	ldr	x26, [x29, #72]
   806a8:	a942dff6 	ldp	x22, x23, [sp, #40]
   806ac:	f94023f9 	ldr	x25, [sp, #64]
   806b0:	a8c57bfd 	ldp	x29, x30, [sp], #80
   806b4:	d65f03c0 	ret
   806b8:	d2800016 	mov	x22, #0x0                   	// #0
   806bc:	f94023f9 	ldr	x25, [sp, #64]
   806c0:	aa1603e0 	mov	x0, x22
   806c4:	a942dff6 	ldp	x22, x23, [sp, #40]
   806c8:	a8c57bfd 	ldp	x29, x30, [sp], #80
   806cc:	d65f03c0 	ret

00000000000806d0 <fat32_read_chain>:
   806d0:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
   806d4:	910003fd 	mov	x29, sp
   806d8:	a90153f3 	stp	x19, x20, [sp, #16]
   806dc:	aa0003f3 	mov	x19, x0
   806e0:	a903e7f8 	stp	x24, x25, [sp, #56]
   806e4:	aa0103f4 	mov	x20, x1
   806e8:	a90573fb 	stp	x27, x28, [sp, #80]
   806ec:	aa0203f9 	mov	x25, x2
   806f0:	b940a818 	ldr	w24, [x0, #168]
   806f4:	d280001c 	mov	x28, #0x0                   	// #0
   806f8:	f90013f5 	str	x21, [sp, #32]
   806fc:	79414015 	ldrh	w21, [x0, #160]
   80700:	3942881b 	ldrb	w27, [x0, #162]
   80704:	92403ea0 	and	x0, x21, #0xffff
   80708:	9400022a 	bl	80fb0 <malloc>
   8070c:	b4000260 	cbz	x0, 80758 <fat32_read_chain+0x88>
   80710:	a902dfb6 	stp	x22, x23, [x29, #40]
   80714:	aa0003f6 	mov	x22, x0
   80718:	1ad50a97 	udiv	w23, w20, w21
   8071c:	f90027ba 	str	x26, [x29, #72]
   80720:	2a1403fa 	mov	w26, w20
   80724:	2a1803f8 	mov	w24, w24
   80728:	aa0003e2 	mov	x2, x0
   8072c:	aa1303e0 	mov	x0, x19
   80730:	1b15d2f4 	msub	w20, w23, w21, w20
   80734:	8b374301 	add	x1, x24, w23, uxtw
   80738:	9400015e 	bl	80cb0 <cd_read_sector>
   8073c:	38744ad4 	ldrb	w20, [x22, w20, uxtw]
   80740:	350001b4 	cbnz	w20, 80774 <fat32_read_chain+0xa4>
   80744:	d280001c 	mov	x28, #0x0                   	// #0
   80748:	aa1603e0 	mov	x0, x22
   8074c:	94000275 	bl	81120 <free>
   80750:	a942dfb6 	ldp	x22, x23, [x29, #40]
   80754:	f94027ba 	ldr	x26, [x29, #72]
   80758:	aa1c03e0 	mov	x0, x28
   8075c:	f94013f5 	ldr	x21, [sp, #32]
   80760:	a94153f3 	ldp	x19, x20, [sp, #16]
   80764:	a943e7f8 	ldp	x24, x25, [sp, #56]
   80768:	a94573fb 	ldp	x27, x28, [sp, #80]
   8076c:	a8c77bfd 	ldp	x29, x30, [sp], #112
   80770:	d65f03c0 	ret
   80774:	1b157f60 	mul	w0, w27, w21
   80778:	92405c00 	and	x0, x0, #0xffffff
   8077c:	9400020d 	bl	80fb0 <malloc>
   80780:	f9000320 	str	x0, [x25]
   80784:	b4fffe00 	cbz	x0, 80744 <fat32_read_chain+0x74>
   80788:	51000a81 	sub	w1, w20, #0x2
   8078c:	529ffda2 	mov	w2, #0xffed                	// #65517
   80790:	72a1ffe2 	movk	w2, #0xfff, lsl #16
   80794:	6b02003f 	cmp	w1, w2
   80798:	54fffd68 	b.hi	80744 <fat32_read_chain+0x74>  // b.pmore
   8079c:	d280001c 	mov	x28, #0x0                   	// #0
   807a0:	b9006ba2 	str	w2, [x29, #104]
   807a4:	d503201f 	nop
   807a8:	8b1c0002 	add	x2, x0, x28
   807ac:	2a1a03e1 	mov	w1, w26
   807b0:	aa1303e0 	mov	x0, x19
   807b4:	97ffff99 	bl	80618 <fat32_read_cluster>
   807b8:	1ad50a84 	udiv	w4, w20, w21
   807bc:	8b00039c 	add	x28, x28, x0
   807c0:	2a1403fa 	mov	w26, w20
   807c4:	aa1603e2 	mov	x2, x22
   807c8:	aa1303e0 	mov	x0, x19
   807cc:	6b17009f 	cmp	w4, w23
   807d0:	540000a0 	b.eq	807e4 <fat32_read_chain+0x114>  // b.none
   807d4:	8b244301 	add	x1, x24, w4, uxtw
   807d8:	b9006fa4 	str	w4, [x29, #108]
   807dc:	94000135 	bl	80cb0 <cd_read_sector>
   807e0:	b9406fa4 	ldr	w4, [x29, #108]
   807e4:	1b15d094 	msub	w20, w4, w21, w20
   807e8:	2a0403f7 	mov	w23, w4
   807ec:	9bbb72a1 	umaddl	x1, w21, w27, x28
   807f0:	f9400320 	ldr	x0, [x25]
   807f4:	38744ac4 	ldrb	w4, [x22, w20, uxtw]
   807f8:	b9006fa4 	str	w4, [x29, #108]
   807fc:	94000233 	bl	810c8 <realloc>
   80800:	f9000320 	str	x0, [x25]
   80804:	294d13a1 	ldp	w1, w4, [x29, #104]
   80808:	2a0403f4 	mov	w20, w4
   8080c:	51000884 	sub	w4, w4, #0x2
   80810:	6b01009f 	cmp	w4, w1
   80814:	54fffca9 	b.ls	807a8 <fat32_read_chain+0xd8>  // b.plast
   80818:	17ffffcc 	b	80748 <fat32_read_chain+0x78>
   8081c:	d503201f 	nop

0000000000080820 <fat32_parse_name>:
   80820:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   80824:	910003fd 	mov	x29, sp
   80828:	a90153f3 	stp	x19, x20, [sp, #16]
   8082c:	aa0003f4 	mov	x20, x0
   80830:	a9025bf5 	stp	x21, x22, [sp, #32]
   80834:	aa0103f5 	mov	x21, x1
   80838:	39402c00 	ldrb	w0, [x0, #11]
   8083c:	71003c1f 	cmp	w0, #0xf
   80840:	54000520 	b.eq	808e4 <fat32_parse_name+0xc4>  // b.none
   80844:	d2800000 	mov	x0, #0x0                   	// #0
   80848:	38606a81 	ldrb	w1, [x20, x0]
   8084c:	2a0003f6 	mov	w22, w0
   80850:	91000400 	add	x0, x0, #0x1
   80854:	f100201f 	cmp	x0, #0x8
   80858:	34000961 	cbz	w1, 80984 <fat32_parse_name+0x164>
   8085c:	54ffff61 	b.ne	80848 <fat32_parse_name+0x28>  // b.any
   80860:	aa0003f3 	mov	x19, x0
   80864:	2a0003f6 	mov	w22, w0
   80868:	aa1303e2 	mov	x2, x19
   8086c:	aa1403e1 	mov	x1, x20
   80870:	aa1503e0 	mov	x0, x21
   80874:	97fffe1b 	bl	800e0 <strncpy>
   80878:	39402280 	ldrb	w0, [x20, #8]
   8087c:	34000760 	cbz	w0, 80968 <fat32_parse_name+0x148>
   80880:	f9001bb7 	str	x23, [x29, #48]
   80884:	528005c0 	mov	w0, #0x2e                  	// #46
   80888:	38336aa0 	strb	w0, [x21, x19]
   8088c:	39400280 	ldrb	w0, [x20]
   80890:	340007e0 	cbz	w0, 8098c <fat32_parse_name+0x16c>
   80894:	39400680 	ldrb	w0, [x20, #1]
   80898:	34000800 	cbz	w0, 80998 <fat32_parse_name+0x178>
   8089c:	39400a80 	ldrb	w0, [x20, #2]
   808a0:	d2800062 	mov	x2, #0x3                   	// #3
   808a4:	2a0203f7 	mov	w23, w2
   808a8:	340007e0 	cbz	w0, 809a4 <fat32_parse_name+0x184>
   808ac:	91000660 	add	x0, x19, #0x1
   808b0:	91002281 	add	x1, x20, #0x8
   808b4:	8b0002a0 	add	x0, x21, x0
   808b8:	110006d6 	add	w22, w22, #0x1
   808bc:	97fffe09 	bl	800e0 <strncpy>
   808c0:	0b1702c0 	add	w0, w22, w23
   808c4:	d2800016 	mov	x22, #0x0                   	// #0
   808c8:	3820cabf 	strb	wzr, [x21, w0, sxtw]
   808cc:	aa1603e0 	mov	x0, x22
   808d0:	f9401bb7 	ldr	x23, [x29, #48]
   808d4:	a94153f3 	ldp	x19, x20, [sp, #16]
   808d8:	a9425bf5 	ldp	x21, x22, [sp, #32]
   808dc:	a8c47bfd 	ldp	x29, x30, [sp], #64
   808e0:	d65f03c0 	ret
   808e4:	91000694 	add	x20, x20, #0x1
   808e8:	f9001bb7 	str	x23, [x29, #48]
   808ec:	d2800016 	mov	x22, #0x0                   	// #0
   808f0:	52800357 	mov	w23, #0x1a                  	// #26
   808f4:	d503201f 	nop
   808f8:	385ff293 	ldurb	w19, [x20, #-1]
   808fc:	aa1403e1 	mov	x1, x20
   80900:	d2800142 	mov	x2, #0xa                   	// #10
   80904:	910006d6 	add	x22, x22, #0x1
   80908:	12001273 	and	w19, w19, #0x1f
   8090c:	51000673 	sub	w19, w19, #0x1
   80910:	1b177e73 	mul	w19, w19, w23
   80914:	8b33c2b3 	add	x19, x21, w19, sxtw
   80918:	aa1303e0 	mov	x0, x19
   8091c:	97fffdf1 	bl	800e0 <strncpy>
   80920:	91003681 	add	x1, x20, #0xd
   80924:	d2800182 	mov	x2, #0xc                   	// #12
   80928:	91002a60 	add	x0, x19, #0xa
   8092c:	97fffded 	bl	800e0 <strncpy>
   80930:	91006e81 	add	x1, x20, #0x1b
   80934:	91008294 	add	x20, x20, #0x20
   80938:	d28001c2 	mov	x2, #0xe                   	// #14
   8093c:	91005a60 	add	x0, x19, #0x16
   80940:	97fffde8 	bl	800e0 <strncpy>
   80944:	39402a80 	ldrb	w0, [x20, #10]
   80948:	71003c1f 	cmp	w0, #0xf
   8094c:	54fffd60 	b.eq	808f8 <fat32_parse_name+0xd8>  // b.none
   80950:	aa1603e0 	mov	x0, x22
   80954:	f9401bb7 	ldr	x23, [x29, #48]
   80958:	a94153f3 	ldp	x19, x20, [sp, #16]
   8095c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   80960:	a8c47bfd 	ldp	x29, x30, [sp], #64
   80964:	d65f03c0 	ret
   80968:	38336abf 	strb	wzr, [x21, x19]
   8096c:	d2800016 	mov	x22, #0x0                   	// #0
   80970:	aa1603e0 	mov	x0, x22
   80974:	a94153f3 	ldp	x19, x20, [sp, #16]
   80978:	a9425bf5 	ldp	x21, x22, [sp, #32]
   8097c:	a8c47bfd 	ldp	x29, x30, [sp], #64
   80980:	d65f03c0 	ret
   80984:	93407ed3 	sxtw	x19, w22
   80988:	17ffffb8 	b	80868 <fat32_parse_name+0x48>
   8098c:	d2800002 	mov	x2, #0x0                   	// #0
   80990:	52800017 	mov	w23, #0x0                   	// #0
   80994:	17ffffc6 	b	808ac <fat32_parse_name+0x8c>
   80998:	d2800022 	mov	x2, #0x1                   	// #1
   8099c:	2a0203f7 	mov	w23, w2
   809a0:	17ffffc3 	b	808ac <fat32_parse_name+0x8c>
   809a4:	d2800042 	mov	x2, #0x2                   	// #2
   809a8:	2a0203f7 	mov	w23, w2
   809ac:	17ffffc0 	b	808ac <fat32_parse_name+0x8c>

00000000000809b0 <fat32_find_entry>:
   809b0:	b40008c2 	cbz	x2, 80ac8 <fat32_find_entry+0x118>
   809b4:	d10983ff 	sub	sp, sp, #0x260
   809b8:	a9007bfd 	stp	x29, x30, [sp]
   809bc:	910003fd 	mov	x29, sp
   809c0:	a9046bf9 	stp	x25, x26, [sp, #64]
   809c4:	f000001a 	adrp	x26, 83000 <sd_init+0x2c8>
   809c8:	9105635a 	add	x26, x26, #0x158
   809cc:	a90153f3 	stp	x19, x20, [sp, #16]
   809d0:	a9025bf5 	stp	x21, x22, [sp, #32]
   809d4:	aa0103f9 	mov	x25, x1
   809d8:	a90363f7 	stp	x23, x24, [sp, #48]
   809dc:	aa0003f6 	mov	x22, x0
   809e0:	f9002bfb 	str	x27, [sp, #80]
   809e4:	aa0203f8 	mov	x24, x2
   809e8:	f000001b 	adrp	x27, 83000 <sd_init+0x2c8>
   809ec:	910183b7 	add	x23, x29, #0x60
   809f0:	9100435a 	add	x26, x26, #0x10
   809f4:	d2800015 	mov	x21, #0x0                   	// #0
   809f8:	9109637b 	add	x27, x27, #0x258
   809fc:	1400000c 	b	80a2c <fat32_find_entry+0x7c>
   80a00:	aa1603e1 	mov	x1, x22
   80a04:	aa1403e0 	mov	x0, x20
   80a08:	8b150273 	add	x19, x19, x21
   80a0c:	97fffdd1 	bl	80150 <asciitoutf16>
   80a10:	aa1703e1 	mov	x1, x23
   80a14:	aa1403e0 	mov	x0, x20
   80a18:	91000675 	add	x21, x19, #0x1
   80a1c:	97fffd95 	bl	80070 <strcmp>
   80a20:	34000280 	cbz	w0, 80a70 <fat32_find_entry+0xc0>
   80a24:	eb15031f 	cmp	x24, x21
   80a28:	540003a9 	b.ls	80a9c <fat32_find_entry+0xec>  // b.plast
   80a2c:	aa1703e1 	mov	x1, x23
   80a30:	8b151720 	add	x0, x25, x21, lsl #5
   80a34:	97ffff7b 	bl	80820 <fat32_parse_name>
   80a38:	aa0003f3 	mov	x19, x0
   80a3c:	aa1603e0 	mov	x0, x22
   80a40:	97fffd84 	bl	80050 <strlen>
   80a44:	91000400 	add	x0, x0, #0x1
   80a48:	9400015a 	bl	80fb0 <malloc>
   80a4c:	aa0003f4 	mov	x20, x0
   80a50:	b5fffd80 	cbnz	x0, 80a00 <fat32_find_entry+0x50>
   80a54:	aa1b03e3 	mov	x3, x27
   80a58:	aa1a03e2 	mov	x2, x26
   80a5c:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80a60:	528016c1 	mov	w1, #0xb6                  	// #182
   80a64:	91092000 	add	x0, x0, #0x248
   80a68:	9400061c 	bl	822d8 <__panic>
   80a6c:	17ffffe5 	b	80a00 <fat32_find_entry+0x50>
   80a70:	aa1403e0 	mov	x0, x20
   80a74:	940001ab 	bl	81120 <free>
   80a78:	8b131720 	add	x0, x25, x19, lsl #5
   80a7c:	f9402bfb 	ldr	x27, [sp, #80]
   80a80:	a9407bfd 	ldp	x29, x30, [sp]
   80a84:	a94153f3 	ldp	x19, x20, [sp, #16]
   80a88:	a9425bf5 	ldp	x21, x22, [sp, #32]
   80a8c:	a94363f7 	ldp	x23, x24, [sp, #48]
   80a90:	a9446bf9 	ldp	x25, x26, [sp, #64]
   80a94:	910983ff 	add	sp, sp, #0x260
   80a98:	d65f03c0 	ret
   80a9c:	aa1403e0 	mov	x0, x20
   80aa0:	940001a0 	bl	81120 <free>
   80aa4:	a9407bfd 	ldp	x29, x30, [sp]
   80aa8:	d2800000 	mov	x0, #0x0                   	// #0
   80aac:	a94153f3 	ldp	x19, x20, [sp, #16]
   80ab0:	a9425bf5 	ldp	x21, x22, [sp, #32]
   80ab4:	a94363f7 	ldp	x23, x24, [sp, #48]
   80ab8:	a9446bf9 	ldp	x25, x26, [sp, #64]
   80abc:	f9402bfb 	ldr	x27, [sp, #80]
   80ac0:	910983ff 	add	sp, sp, #0x260
   80ac4:	d65f03c0 	ret
   80ac8:	d2800000 	mov	x0, #0x0                   	// #0
   80acc:	d65f03c0 	ret

0000000000080ad0 <fat32_open>:
   80ad0:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
   80ad4:	910003fd 	mov	x29, sp
   80ad8:	a90153f3 	stp	x19, x20, [sp, #16]
   80adc:	aa0103f3 	mov	x19, x1
   80ae0:	f9001bf7 	str	x23, [sp, #48]
   80ae4:	aa0003f7 	mov	x23, x0
   80ae8:	f90023f9 	str	x25, [sp, #64]
   80aec:	b4000b61 	cbz	x1, 80c58 <fat32_open+0x188>
   80af0:	aa1303e0 	mov	x0, x19
   80af4:	97fffd57 	bl	80050 <strlen>
   80af8:	9400012e 	bl	80fb0 <malloc>
   80afc:	aa0003f9 	mov	x25, x0
   80b00:	b4000c00 	cbz	x0, 80c80 <fat32_open+0x1b0>
   80b04:	a9025bb5 	stp	x21, x22, [x29, #32]
   80b08:	aa1303e1 	mov	x1, x19
   80b0c:	a904efba 	stp	x26, x27, [x29, #72]
   80b10:	f0000015 	adrp	x21, 83000 <sd_init+0x2c8>
   80b14:	f9001fb8 	str	x24, [x29, #56]
   80b18:	910a02b5 	add	x21, x21, #0x280
   80b1c:	97fffd67 	bl	800b8 <strcpy>
   80b20:	aa1503e1 	mov	x1, x21
   80b24:	aa1903e0 	mov	x0, x25
   80b28:	97fffda0 	bl	801a8 <strtok>
   80b2c:	aa0003f4 	mov	x20, x0
   80b30:	b4000ac0 	cbz	x0, 80c88 <fat32_open+0x1b8>
   80b34:	b940b2e1 	ldr	w1, [x23, #176]
   80b38:	9101a3b8 	add	x24, x29, #0x68
   80b3c:	aa1803e2 	mov	x2, x24
   80b40:	aa1703e0 	mov	x0, x23
   80b44:	97fffee3 	bl	806d0 <fat32_read_chain>
   80b48:	d345fc02 	lsr	x2, x0, #5
   80b4c:	f94037a1 	ldr	x1, [x29, #104]
   80b50:	aa1403e0 	mov	x0, x20
   80b54:	97ffff97 	bl	809b0 <fat32_find_entry>
   80b58:	aa0003f3 	mov	x19, x0
   80b5c:	b40002c0 	cbz	x0, 80bb4 <fat32_open+0xe4>
   80b60:	aa1503e1 	mov	x1, x21
   80b64:	d2800000 	mov	x0, #0x0                   	// #0
   80b68:	97fffd90 	bl	801a8 <strtok>
   80b6c:	aa0003f4 	mov	x20, x0
   80b70:	b40003e0 	cbz	x0, 80bec <fat32_open+0x11c>
   80b74:	36200216 	tbz	w22, #4, 80bb4 <fat32_open+0xe4>
   80b78:	f94037a0 	ldr	x0, [x29, #104]
   80b7c:	79402a7b 	ldrh	w27, [x19, #20]
   80b80:	7940367a 	ldrh	w26, [x19, #26]
   80b84:	39402e76 	ldrb	w22, [x19, #11]
   80b88:	94000166 	bl	81120 <free>
   80b8c:	aa1803e2 	mov	x2, x24
   80b90:	0b1b4341 	add	w1, w26, w27, lsl #16
   80b94:	aa1703e0 	mov	x0, x23
   80b98:	97fffece 	bl	806d0 <fat32_read_chain>
   80b9c:	f94037a1 	ldr	x1, [x29, #104]
   80ba0:	d345fc02 	lsr	x2, x0, #5
   80ba4:	aa1403e0 	mov	x0, x20
   80ba8:	97ffff82 	bl	809b0 <fat32_find_entry>
   80bac:	aa0003f3 	mov	x19, x0
   80bb0:	b5fffd80 	cbnz	x0, 80b60 <fat32_open+0x90>
   80bb4:	d2800014 	mov	x20, #0x0                   	// #0
   80bb8:	aa1903e0 	mov	x0, x25
   80bbc:	94000159 	bl	81120 <free>
   80bc0:	f94037a0 	ldr	x0, [x29, #104]
   80bc4:	94000157 	bl	81120 <free>
   80bc8:	f9401fb8 	ldr	x24, [x29, #56]
   80bcc:	a9425bb5 	ldp	x21, x22, [x29, #32]
   80bd0:	a944efba 	ldp	x26, x27, [x29, #72]
   80bd4:	aa1403e0 	mov	x0, x20
   80bd8:	a94153f3 	ldp	x19, x20, [sp, #16]
   80bdc:	f9401bf7 	ldr	x23, [sp, #48]
   80be0:	f94023f9 	ldr	x25, [sp, #64]
   80be4:	a8c77bfd 	ldp	x29, x30, [sp], #112
   80be8:	d65f03c0 	ret
   80bec:	d2800400 	mov	x0, #0x20                  	// #32
   80bf0:	940000f0 	bl	80fb0 <malloc>
   80bf4:	aa0003f4 	mov	x20, x0
   80bf8:	b4fffe00 	cbz	x0, 80bb8 <fat32_open+0xe8>
   80bfc:	39402e62 	ldrb	w2, [x19, #11]
   80c00:	79403661 	ldrh	w1, [x19, #26]
   80c04:	79402a60 	ldrh	w0, [x19, #20]
   80c08:	39004282 	strb	w2, [x20, #16]
   80c0c:	f94037a6 	ldr	x6, [x29, #104]
   80c10:	39403662 	ldrb	w2, [x19, #13]
   80c14:	0b004020 	add	w0, w1, w0, lsl #16
   80c18:	39004682 	strb	w2, [x20, #17]
   80c1c:	79401e65 	ldrh	w5, [x19, #14]
   80c20:	79402264 	ldrh	w4, [x19, #16]
   80c24:	79402663 	ldrh	w3, [x19, #18]
   80c28:	79402e62 	ldrh	w2, [x19, #22]
   80c2c:	79403261 	ldrh	w1, [x19, #24]
   80c30:	b9000280 	str	w0, [x20]
   80c34:	b9401cc0 	ldr	w0, [x6, #28]
   80c38:	f9000697 	str	x23, [x20, #8]
   80c3c:	79002685 	strh	w5, [x20, #18]
   80c40:	79002a84 	strh	w4, [x20, #20]
   80c44:	79002e83 	strh	w3, [x20, #22]
   80c48:	79003282 	strh	w2, [x20, #24]
   80c4c:	79003681 	strh	w1, [x20, #26]
   80c50:	b9001e80 	str	w0, [x20, #28]
   80c54:	17ffffd9 	b	80bb8 <fat32_open+0xe8>
   80c58:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   80c5c:	91056042 	add	x2, x2, #0x158
   80c60:	f0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   80c64:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80c68:	9109c063 	add	x3, x3, #0x270
   80c6c:	9100a042 	add	x2, x2, #0x28
   80c70:	52801f61 	mov	w1, #0xfb                  	// #251
   80c74:	91092000 	add	x0, x0, #0x248
   80c78:	94000598 	bl	822d8 <__panic>
   80c7c:	17ffff9d 	b	80af0 <fat32_open+0x20>
   80c80:	d2800014 	mov	x20, #0x0                   	// #0
   80c84:	17ffffd4 	b	80bd4 <fat32_open+0x104>
   80c88:	d2800400 	mov	x0, #0x20                  	// #32
   80c8c:	940000c9 	bl	80fb0 <malloc>
   80c90:	aa0003f4 	mov	x20, x0
   80c94:	b4fff920 	cbz	x0, 80bb8 <fat32_open+0xe8>
   80c98:	b940b2e1 	ldr	w1, [x23, #176]
   80c9c:	52800200 	mov	w0, #0x10                  	// #16
   80ca0:	b9000281 	str	w1, [x20]
   80ca4:	39004280 	strb	w0, [x20, #16]
   80ca8:	17ffffc4 	b	80bb8 <fat32_open+0xe8>
   80cac:	00000000 	.inst	0x00000000 ; undefined

0000000000080cb0 <cd_read_sector>:
   80cb0:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
   80cb4:	910003fd 	mov	x29, sp
   80cb8:	a90153f3 	stp	x19, x20, [sp, #16]
   80cbc:	92400c33 	and	x19, x1, #0xf
   80cc0:	a9025bf5 	stp	x21, x22, [sp, #32]
   80cc4:	aa0203f5 	mov	x21, x2
   80cc8:	8b130c14 	add	x20, x0, x19, lsl #3
   80ccc:	a90363f7 	stp	x23, x24, [sp, #48]
   80cd0:	2940d817 	ldp	w23, w22, [x0, #4]
   80cd4:	f90027fa 	str	x26, [sp, #72]
   80cd8:	aa0003fa 	mov	x26, x0
   80cdc:	f9401280 	ldr	x0, [x20, #32]
   80ce0:	f9002ffc 	str	x28, [sp, #88]
   80ce4:	2a0103f8 	mov	w24, w1
   80ce8:	aa0103fc 	mov	x28, x1
   80cec:	b40002c0 	cbz	x0, 80d44 <cd_read_sector+0x94>
   80cf0:	f1004001 	subs	x1, x0, #0x10
   80cf4:	54000280 	b.eq	80d44 <cd_read_sector+0x94>  // b.none
   80cf8:	f85f8000 	ldur	x0, [x0, #-8]
   80cfc:	eb00039f 	cmp	x28, x0
   80d00:	54000100 	b.eq	80d20 <cd_read_sector+0x70>  // b.none
   80d04:	d503201f 	nop
   80d08:	f9400820 	ldr	x0, [x1, #16]
   80d0c:	f1004001 	subs	x1, x0, #0x10
   80d10:	540001a0 	b.eq	80d44 <cd_read_sector+0x94>  // b.none
   80d14:	f85f8000 	ldur	x0, [x0, #-8]
   80d18:	eb1c001f 	cmp	x0, x28
   80d1c:	54ffff61 	b.ne	80d08 <cd_read_sector+0x58>  // b.any
   80d20:	b9400340 	ldr	w0, [x26]
   80d24:	f9400021 	ldr	x1, [x1]
   80d28:	eb1c001f 	cmp	x0, x28
   80d2c:	54000549 	b.ls	80dd4 <cd_read_sector+0x124>  // b.plast
   80d30:	aa1603e2 	mov	x2, x22
   80d34:	aa1503e0 	mov	x0, x21
   80d38:	97fffcbe 	bl	80030 <memcpy>
   80d3c:	b9400341 	ldr	w1, [x26]
   80d40:	1400001c 	b	80db0 <cd_read_sector+0x100>
   80d44:	f9002bbb 	str	x27, [x29, #80]
   80d48:	d2800400 	mov	x0, #0x20                  	// #32
   80d4c:	94000099 	bl	80fb0 <malloc>
   80d50:	aa0003fb 	mov	x27, x0
   80d54:	b9400340 	ldr	w0, [x26]
   80d58:	f900077c 	str	x28, [x27, #8]
   80d5c:	2a0003e1 	mov	w1, w0
   80d60:	eb1c003f 	cmp	x1, x28
   80d64:	54000429 	b.ls	80de8 <cd_read_sector+0x138>  // b.plast
   80d68:	f9400f42 	ldr	x2, [x26, #24]
   80d6c:	aa1503e1 	mov	x1, x21
   80d70:	2a1c03e0 	mov	w0, w28
   80d74:	d63f0040 	blr	x2
   80d78:	7100001f 	cmp	w0, #0x0
   80d7c:	540007cd 	b.le	80e74 <cd_read_sector+0x1c4>
   80d80:	b9400341 	ldr	w1, [x26]
   80d84:	aa1b03e0 	mov	x0, x27
   80d88:	f9401282 	ldr	x2, [x20, #32]
   80d8c:	91001273 	add	x19, x19, #0x4
   80d90:	f8010415 	str	x21, [x0], #16
   80d94:	8b130f44 	add	x4, x26, x19, lsl #3
   80d98:	f9000b62 	str	x2, [x27, #16]
   80d9c:	f9001280 	str	x0, [x20, #32]
   80da0:	f9000f64 	str	x4, [x27, #24]
   80da4:	b4000642 	cbz	x2, 80e6c <cd_read_sector+0x1bc>
   80da8:	f9402bbb 	ldr	x27, [x29, #80]
   80dac:	f9000440 	str	x0, [x2, #8]
   80db0:	eb01039f 	cmp	x28, x1
   80db4:	f94027fa 	ldr	x26, [sp, #72]
   80db8:	9a9622e0 	csel	x0, x23, x22, cs  // cs = hs, nlast
   80dbc:	f9402ffc 	ldr	x28, [sp, #88]
   80dc0:	a94153f3 	ldp	x19, x20, [sp, #16]
   80dc4:	a9425bf5 	ldp	x21, x22, [sp, #32]
   80dc8:	a94363f7 	ldp	x23, x24, [sp, #48]
   80dcc:	a8c87bfd 	ldp	x29, x30, [sp], #128
   80dd0:	d65f03c0 	ret
   80dd4:	aa1703e2 	mov	x2, x23
   80dd8:	aa1503e0 	mov	x0, x21
   80ddc:	97fffc95 	bl	80030 <memcpy>
   80de0:	b9400341 	ldr	w1, [x26]
   80de4:	17fffff3 	b	80db0 <cd_read_sector+0x100>
   80de8:	f90023b9 	str	x25, [x29, #64]
   80dec:	9ad60af9 	udiv	x25, x23, x22
   80df0:	b9007fb9 	str	w25, [x29, #124]
   80df4:	7100033f 	cmp	w25, #0x0
   80df8:	5400054d 	b.le	80ea0 <cd_read_sector+0x1f0>
   80dfc:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   80e00:	f0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   80e04:	8b1602a3 	add	x3, x21, x22
   80e08:	910b6042 	add	x2, x2, #0x2d8
   80e0c:	910b2021 	add	x1, x1, #0x2c8
   80e10:	a9060ba1 	stp	x1, x2, [x29, #96]
   80e14:	f9003ba3 	str	x3, [x29, #112]
   80e18:	b9007bb9 	str	w25, [x29, #120]
   80e1c:	52800019 	mov	w25, #0x0                   	// #0
   80e20:	14000005 	b	80e34 <cd_read_sector+0x184>
   80e24:	b9407fa1 	ldr	w1, [x29, #124]
   80e28:	b9400340 	ldr	w0, [x26]
   80e2c:	6b19003f 	cmp	w1, w25
   80e30:	54000320 	b.eq	80e94 <cd_read_sector+0x1e4>  // b.none
   80e34:	b9407ba3 	ldr	w3, [x29, #120]
   80e38:	4b000302 	sub	w2, w24, w0
   80e3c:	f9400f47 	ldr	x7, [x26, #24]
   80e40:	11000739 	add	w25, w25, #0x1
   80e44:	f9403ba1 	ldr	x1, [x29, #112]
   80e48:	1b037c42 	mul	w2, w2, w3
   80e4c:	4b000040 	sub	w0, w2, w0
   80e50:	d63f00e0 	blr	x7
   80e54:	7100001f 	cmp	w0, #0x0
   80e58:	54fffe6c 	b.gt	80e24 <cd_read_sector+0x174>
   80e5c:	a9460ba0 	ldp	x0, x2, [x29, #96]
   80e60:	52800581 	mov	w1, #0x2c                  	// #44
   80e64:	94000011 	bl	80ea8 <__assert>
   80e68:	17ffffef 	b	80e24 <cd_read_sector+0x174>
   80e6c:	f9402bbb 	ldr	x27, [x29, #80]
   80e70:	17ffffd0 	b	80db0 <cd_read_sector+0x100>
   80e74:	528004a1 	mov	w1, #0x25                  	// #37
   80e78:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   80e7c:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80e80:	910a2042 	add	x2, x2, #0x288
   80e84:	910b2000 	add	x0, x0, #0x2c8
   80e88:	94000008 	bl	80ea8 <__assert>
   80e8c:	b9400341 	ldr	w1, [x26]
   80e90:	17ffffbd 	b	80d84 <cd_read_sector+0xd4>
   80e94:	2a0003e1 	mov	w1, w0
   80e98:	f94023b9 	ldr	x25, [x29, #64]
   80e9c:	17ffffba 	b	80d84 <cd_read_sector+0xd4>
   80ea0:	f94023b9 	ldr	x25, [x29, #64]
   80ea4:	17ffffb8 	b	80d84 <cd_read_sector+0xd4>

0000000000080ea8 <__assert>:
   80ea8:	f0000004 	adrp	x4, 83000 <sd_init+0x2c8>
   80eac:	aa0203e3 	mov	x3, x2
   80eb0:	2a0103e2 	mov	w2, w1
   80eb4:	aa0003e1 	mov	x1, x0
   80eb8:	910d6080 	add	x0, x4, #0x358
   80ebc:	140004e9 	b	82260 <kprintf>

0000000000080ec0 <mem_init>:
   80ec0:	90000023 	adrp	x3, 84000 <__func__.2797+0xc78>
   80ec4:	f943f060 	ldr	x0, [x3, #2016]
   80ec8:	91068001 	add	x1, x0, #0x1a0
   80ecc:	d503201f 	nop
   80ed0:	a9000000 	stp	x0, x0, [x0]
   80ed4:	91004000 	add	x0, x0, #0x10
   80ed8:	eb01001f 	cmp	x0, x1
   80edc:	54ffffa1 	b.ne	80ed0 <mem_init+0x10>  // b.any
   80ee0:	d2802000 	mov	x0, #0x100                 	// #256
   80ee4:	b9400401 	ldr	w1, [x0, #4]
   80ee8:	34000181 	cbz	w1, 80f18 <mem_init+0x58>
   80eec:	52800042 	mov	w2, #0x2                   	// #2
   80ef0:	72aa8822 	movk	w2, #0x5441, lsl #16
   80ef4:	6b02003f 	cmp	w1, w2
   80ef8:	54000061 	b.ne	80f04 <mem_init+0x44>  // b.any
   80efc:	1400000f 	b	80f38 <mem_init+0x78>
   80f00:	540001c0 	b.eq	80f38 <mem_init+0x78>  // b.none
   80f04:	b9400001 	ldr	w1, [x0]
   80f08:	8b214800 	add	x0, x0, w1, uxtw #2
   80f0c:	b9400401 	ldr	w1, [x0, #4]
   80f10:	6b02003f 	cmp	w1, w2
   80f14:	35ffff61 	cbnz	w1, 80f00 <mem_init+0x40>
   80f18:	f0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   80f1c:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   80f20:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80f24:	910fa063 	add	x3, x3, #0x3e8
   80f28:	910e2042 	add	x2, x2, #0x388
   80f2c:	52800581 	mov	w1, #0x2c                  	// #44
   80f30:	910f6000 	add	x0, x0, #0x3d8
   80f34:	140004e9 	b	822d8 <__panic>
   80f38:	b9400805 	ldr	w5, [x0, #8]
   80f3c:	f943e862 	ldr	x2, [x3, #2000]
   80f40:	b9400c00 	ldr	w0, [x0, #12]
   80f44:	f943fc64 	ldr	x4, [x3, #2040]
   80f48:	2a0003e0 	mov	w0, w0
   80f4c:	8b254005 	add	x5, x0, w5, uxtw
   80f50:	a9001444 	stp	x4, x5, [x2]
   80f54:	eb0400bf 	cmp	x5, x4
   80f58:	54000049 	b.ls	80f60 <mem_init+0xa0>  // b.plast
   80f5c:	d65f03c0 	ret
   80f60:	f0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   80f64:	f0000002 	adrp	x2, 83000 <sd_init+0x2c8>
   80f68:	f0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   80f6c:	910e6063 	add	x3, x3, #0x398
   80f70:	910e2042 	add	x2, x2, #0x388
   80f74:	52800441 	mov	w1, #0x22                  	// #34
   80f78:	910f6000 	add	x0, x0, #0x3d8
   80f7c:	140004d7 	b	822d8 <__panic>

0000000000080f80 <bump_alloc>:
   80f80:	90000022 	adrp	x2, 84000 <__func__.2797+0xc78>
   80f84:	90000023 	adrp	x3, 84000 <__func__.2797+0xc78>
   80f88:	91001c01 	add	x1, x0, #0x7
   80f8c:	f943e842 	ldr	x2, [x2, #2000]
   80f90:	927df021 	and	x1, x1, #0xfffffffffffffff8
   80f94:	f941e060 	ldr	x0, [x3, #960]
   80f98:	8b010001 	add	x1, x0, x1
   80f9c:	f901e061 	str	x1, [x3, #960]
   80fa0:	f9400442 	ldr	x2, [x2, #8]
   80fa4:	eb02003f 	cmp	x1, x2
   80fa8:	9a9f9000 	csel	x0, x0, xzr, ls  // ls = plast
   80fac:	d65f03c0 	ret

0000000000080fb0 <malloc>:
   80fb0:	91006001 	add	x1, x0, #0x18
   80fb4:	f100803f 	cmp	x1, #0x20
   80fb8:	54000789 	b.ls	810a8 <malloc+0xf8>  // b.plast
   80fbc:	91005c02 	add	x2, x0, #0x17
   80fc0:	dac01023 	clz	x3, x1
   80fc4:	ea01005f 	tst	x2, x1
   80fc8:	52800804 	mov	w4, #0x40                  	// #64
   80fcc:	1a9f17e1 	cset	w1, eq  // eq = none
   80fd0:	4b030084 	sub	w4, w4, w3
   80fd4:	4b010084 	sub	w4, w4, w1
   80fd8:	90000025 	adrp	x5, 84000 <__func__.2797+0xc78>
   80fdc:	51001484 	sub	w4, w4, #0x5
   80fe0:	f943f0a3 	ldr	x3, [x5, #2016]
   80fe4:	93407c81 	sxtw	x1, w4
   80fe8:	8b011063 	add	x3, x3, x1, lsl #4
   80fec:	f943f0a2 	ldr	x2, [x5, #2016]
   80ff0:	8b011041 	add	x1, x2, x1, lsl #4
   80ff4:	f9400421 	ldr	x1, [x1, #8]
   80ff8:	d1002022 	sub	x2, x1, #0x8
   80ffc:	eb01007f 	cmp	x3, x1
   81000:	540000c1 	b.ne	81018 <malloc+0x68>  // b.any
   81004:	1400000d 	b	81038 <malloc+0x88>
   81008:	f9400841 	ldr	x1, [x2, #16]
   8100c:	eb01007f 	cmp	x3, x1
   81010:	d1002022 	sub	x2, x1, #0x8
   81014:	54000120 	b.eq	81038 <malloc+0x88>  // b.none
   81018:	b85f8021 	ldur	w1, [x1, #-8]
   8101c:	3707ff61 	tbnz	w1, #0, 81008 <malloc+0x58>
   81020:	11000c00 	add	w0, w0, #0x3
   81024:	121e7400 	and	w0, w0, #0xfffffffc
   81028:	32000000 	orr	w0, w0, #0x1
   8102c:	b8018440 	str	w0, [x2], #24
   81030:	aa0203e0 	mov	x0, x2
   81034:	d65f03c0 	ret
   81038:	11001484 	add	w4, w4, #0x5
   8103c:	52800021 	mov	w1, #0x1                   	// #1
   81040:	f0000002 	adrp	x2, 84000 <__func__.2797+0xc78>
   81044:	f943e8a7 	ldr	x7, [x5, #2000]
   81048:	1ac42021 	lsl	w1, w1, w4
   8104c:	93407c21 	sxtw	x1, w1
   81050:	f941e044 	ldr	x4, [x2, #960]
   81054:	91001c21 	add	x1, x1, #0x7
   81058:	927df021 	and	x1, x1, #0xfffffffffffffff8
   8105c:	f94004e5 	ldr	x5, [x7, #8]
   81060:	8b010081 	add	x1, x4, x1
   81064:	f901e041 	str	x1, [x2, #960]
   81068:	f100009f 	cmp	x4, #0x0
   8106c:	fa451022 	ccmp	x1, x5, #0x2, ne  // ne = any
   81070:	54000268 	b.hi	810bc <malloc+0x10c>  // b.pmore
   81074:	f9400063 	ldr	x3, [x3]
   81078:	aa0403e1 	mov	x1, x4
   8107c:	11000c00 	add	w0, w0, #0x3
   81080:	91006082 	add	x2, x4, #0x18
   81084:	121e7400 	and	w0, w0, #0xfffffffc
   81088:	f9400465 	ldr	x5, [x3, #8]
   8108c:	32000000 	orr	w0, w0, #0x1
   81090:	b8008420 	str	w0, [x1], #8
   81094:	aa0203e0 	mov	x0, x2
   81098:	a9009483 	stp	x3, x5, [x4, #8]
   8109c:	f9000461 	str	x1, [x3, #8]
   810a0:	f90000a1 	str	x1, [x5]
   810a4:	d65f03c0 	ret
   810a8:	f0000005 	adrp	x5, 84000 <__func__.2797+0xc78>
   810ac:	52800004 	mov	w4, #0x0                   	// #0
   810b0:	d2800001 	mov	x1, #0x0                   	// #0
   810b4:	f943f0a3 	ldr	x3, [x5, #2016]
   810b8:	17ffffcd 	b	80fec <malloc+0x3c>
   810bc:	d2800002 	mov	x2, #0x0                   	// #0
   810c0:	17ffffdc 	b	81030 <malloc+0x80>
   810c4:	d503201f 	nop

00000000000810c8 <realloc>:
   810c8:	b85e8002 	ldur	w2, [x0, #-24]
   810cc:	b4000221 	cbz	x1, 81110 <realloc+0x48>
   810d0:	aa0003e8 	mov	x8, x0
   810d4:	2a0203e9 	mov	w9, w2
   810d8:	aa0103e6 	mov	x6, x1
   810dc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   810e0:	aa0103e0 	mov	x0, x1
   810e4:	910003fd 	mov	x29, sp
   810e8:	97ffffb2 	bl	80fb0 <malloc>
   810ec:	b40000c0 	cbz	x0, 81104 <realloc+0x3c>
   810f0:	a8c17bfd 	ldp	x29, x30, [sp], #16
   810f4:	eb06013f 	cmp	x9, x6
   810f8:	aa0803e1 	mov	x1, x8
   810fc:	9a869122 	csel	x2, x9, x6, ls  // ls = plast
   81100:	17fffbcc 	b	80030 <memcpy>
   81104:	d2800000 	mov	x0, #0x0                   	// #0
   81108:	a8c17bfd 	ldp	x29, x30, [sp], #16
   8110c:	d65f03c0 	ret
   81110:	121f7842 	and	w2, w2, #0xfffffffe
   81114:	b81e8002 	stur	w2, [x0, #-24]
   81118:	d2800000 	mov	x0, #0x0                   	// #0
   8111c:	d65f03c0 	ret

0000000000081120 <free>:
   81120:	b85e8001 	ldur	w1, [x0, #-24]
   81124:	121f7821 	and	w1, w1, #0xfffffffe
   81128:	b81e8001 	stur	w1, [x0, #-24]
   8112c:	d65f03c0 	ret

0000000000081130 <read_cmd>:
   81130:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   81134:	910003fd 	mov	x29, sp
   81138:	a9025bf5 	stp	x21, x22, [sp, #32]
   8113c:	f0000015 	adrp	x21, 84000 <__func__.2797+0xc78>
   81140:	aa0003f6 	mov	x22, x0
   81144:	910a62b5 	add	x21, x21, #0x298
   81148:	a90153f3 	stp	x19, x20, [sp, #16]
   8114c:	52800014 	mov	w20, #0x0                   	// #0
   81150:	94000532 	bl	82618 <mu_read_byte>
   81154:	12001c13 	and	w19, w0, #0xff
   81158:	7100367f 	cmp	w19, #0xd
   8115c:	540001e0 	b.eq	81198 <read_cmd+0x68>  // b.none
   81160:	7100227f 	cmp	w19, #0x8
   81164:	540000c0 	b.eq	8117c <read_cmd+0x4c>  // b.none
   81168:	540002e9 	b.ls	811c4 <read_cmd+0x94>  // b.plast
   8116c:	7100267f 	cmp	w19, #0x9
   81170:	540003a0 	b.eq	811e4 <read_cmd+0xb4>  // b.none
   81174:	7101fe7f 	cmp	w19, #0x7f
   81178:	54000281 	b.ne	811c8 <read_cmd+0x98>  // b.any
   8117c:	350003b4 	cbnz	w20, 811f0 <read_cmd+0xc0>
   81180:	528000e0 	mov	w0, #0x7                   	// #7
   81184:	9400050f 	bl	825c0 <mu_write_byte>
   81188:	94000524 	bl	82618 <mu_read_byte>
   8118c:	12001c13 	and	w19, w0, #0xff
   81190:	7100367f 	cmp	w19, #0xd
   81194:	54fffe61 	b.ne	81160 <read_cmd+0x30>  // b.any
   81198:	710ffe9f 	cmp	w20, #0x3ff
   8119c:	540003ac 	b.gt	81210 <read_cmd+0xe0>
   811a0:	3834cadf 	strb	wzr, [x22, w20, sxtw]
   811a4:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   811a8:	910a6000 	add	x0, x0, #0x298
   811ac:	9400042d 	bl	82260 <kprintf>
   811b0:	aa1603e0 	mov	x0, x22
   811b4:	a94153f3 	ldp	x19, x20, [sp, #16]
   811b8:	a9425bf5 	ldp	x21, x22, [sp, #32]
   811bc:	a8c37bfd 	ldp	x29, x30, [sp], #48
   811c0:	d65f03c0 	ret
   811c4:	34fffc73 	cbz	w19, 81150 <read_cmd+0x20>
   811c8:	2a1303e0 	mov	w0, w19
   811cc:	940004fd 	bl	825c0 <mu_write_byte>
   811d0:	710ffe9f 	cmp	w20, #0x3ff
   811d4:	54fffbec 	b.gt	81150 <read_cmd+0x20>
   811d8:	3834cad3 	strb	w19, [x22, w20, sxtw]
   811dc:	11000694 	add	w20, w20, #0x1
   811e0:	17ffffdc 	b	81150 <read_cmd+0x20>
   811e4:	aa1503e0 	mov	x0, x21
   811e8:	9400041e 	bl	82260 <kprintf>
   811ec:	17ffffd9 	b	81150 <read_cmd+0x20>
   811f0:	52800100 	mov	w0, #0x8                   	// #8
   811f4:	940004f3 	bl	825c0 <mu_write_byte>
   811f8:	52800400 	mov	w0, #0x20                  	// #32
   811fc:	940004f1 	bl	825c0 <mu_write_byte>
   81200:	52800100 	mov	w0, #0x8                   	// #8
   81204:	51000694 	sub	w20, w20, #0x1
   81208:	940004ee 	bl	825c0 <mu_write_byte>
   8120c:	17ffffd1 	b	81150 <read_cmd+0x20>
   81210:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81214:	91202000 	add	x0, x0, #0x808
   81218:	94000412 	bl	82260 <kprintf>
   8121c:	d2800000 	mov	x0, #0x0                   	// #0
   81220:	17ffffe5 	b	811b4 <read_cmd+0x84>
   81224:	d503201f 	nop

0000000000081228 <parse_cmd>:
   81228:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   8122c:	910003fd 	mov	x29, sp
   81230:	a90153f3 	stp	x19, x20, [sp, #16]
   81234:	aa0003f3 	mov	x19, x0
   81238:	d0000014 	adrp	x20, 83000 <sd_init+0x2c8>
   8123c:	91208294 	add	x20, x20, #0x820
   81240:	aa0103e0 	mov	x0, x1
   81244:	aa1403e1 	mov	x1, x20
   81248:	b910067f 	str	wzr, [x19, #4100]
   8124c:	97fffbd7 	bl	801a8 <strtok>
   81250:	b5000180 	cbnz	x0, 81280 <parse_cmd+0x58>
   81254:	14000015 	b	812a8 <parse_cmd+0x80>
   81258:	11000443 	add	w3, w2, #0x1
   8125c:	d37a7c42 	ubfiz	x2, x2, #6, #32
   81260:	b9100663 	str	w3, [x19, #4100]
   81264:	aa0003e1 	mov	x1, x0
   81268:	8b020260 	add	x0, x19, x2
   8126c:	97fffb93 	bl	800b8 <strcpy>
   81270:	aa1403e1 	mov	x1, x20
   81274:	d2800000 	mov	x0, #0x0                   	// #0
   81278:	97fffbcc 	bl	801a8 <strtok>
   8127c:	b4000160 	cbz	x0, 812a8 <parse_cmd+0x80>
   81280:	b9500662 	ldr	w2, [x19, #4100]
   81284:	7100fc5f 	cmp	w2, #0x3f
   81288:	54fffe89 	b.ls	81258 <parse_cmd+0x30>  // b.plast
   8128c:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81290:	9120a000 	add	x0, x0, #0x828
   81294:	940003f3 	bl	82260 <kprintf>
   81298:	12800000 	mov	w0, #0xffffffff            	// #-1
   8129c:	a94153f3 	ldp	x19, x20, [sp, #16]
   812a0:	a8c27bfd 	ldp	x29, x30, [sp], #32
   812a4:	d65f03c0 	ret
   812a8:	b9500660 	ldr	w0, [x19, #4100]
   812ac:	a94153f3 	ldp	x19, x20, [sp, #16]
   812b0:	a8c27bfd 	ldp	x29, x30, [sp], #32
   812b4:	d65f03c0 	ret

00000000000812b8 <echo>:
   812b8:	34000401 	cbz	w1, 81338 <echo+0x80>
   812bc:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   812c0:	910003fd 	mov	x29, sp
   812c4:	a90153f3 	stp	x19, x20, [sp, #16]
   812c8:	aa0003f4 	mov	x20, x0
   812cc:	a9025bf5 	stp	x21, x22, [sp, #32]
   812d0:	d0000016 	adrp	x22, 83000 <sd_init+0x2c8>
   812d4:	a90363f7 	stp	x23, x24, [sp, #48]
   812d8:	2a0103f5 	mov	w21, w1
   812dc:	d0000017 	adrp	x23, 83000 <sd_init+0x2c8>
   812e0:	51000438 	sub	w24, w1, #0x1
   812e4:	912102d6 	add	x22, x22, #0x840
   812e8:	912082f7 	add	x23, x23, #0x820
   812ec:	52800013 	mov	w19, #0x0                   	// #0
   812f0:	aa1403e1 	mov	x1, x20
   812f4:	aa1603e0 	mov	x0, x22
   812f8:	940003da 	bl	82260 <kprintf>
   812fc:	91010294 	add	x20, x20, #0x40
   81300:	6b18027f 	cmp	w19, w24
   81304:	11000673 	add	w19, w19, #0x1
   81308:	54000060 	b.eq	81314 <echo+0x5c>  // b.none
   8130c:	aa1703e0 	mov	x0, x23
   81310:	940003d4 	bl	82260 <kprintf>
   81314:	6b1302bf 	cmp	w21, w19
   81318:	54fffec1 	b.ne	812f0 <echo+0x38>  // b.any
   8131c:	a94153f3 	ldp	x19, x20, [sp, #16]
   81320:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81324:	a9425bf5 	ldp	x21, x22, [sp, #32]
   81328:	910a6000 	add	x0, x0, #0x298
   8132c:	a94363f7 	ldp	x23, x24, [sp, #48]
   81330:	a8c47bfd 	ldp	x29, x30, [sp], #64
   81334:	140003cb 	b	82260 <kprintf>
   81338:	d65f03c0 	ret
   8133c:	d503201f 	nop

0000000000081340 <cat>:
   81340:	d11183ff 	sub	sp, sp, #0x460
   81344:	d0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   81348:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
   8134c:	a9007bfd 	stp	x29, x30, [sp]
   81350:	910003fd 	mov	x29, sp
   81354:	f9000bf3 	str	x19, [sp, #16]
   81358:	aa0003f3 	mov	x19, x0
   8135c:	79481060 	ldrh	w0, [x3, #1032]
   81360:	f90017f6 	str	x22, [sp, #40]
   81364:	2a0103f6 	mov	w22, w1
   81368:	7900c3a0 	strh	w0, [x29, #96]
   8136c:	52800001 	mov	w1, #0x0                   	// #0
   81370:	91018ba0 	add	x0, x29, #0x62
   81374:	97fffbcd 	bl	802a8 <memset>
   81378:	34000736 	cbz	w22, 8145c <cat+0x11c>
   8137c:	510006d6 	sub	w22, w22, #0x1
   81380:	91010260 	add	x0, x19, #0x40
   81384:	52800801 	mov	w1, #0x40                  	// #64
   81388:	a901d7b4 	stp	x20, x21, [x29, #24]
   8138c:	a90363b7 	stp	x23, x24, [x29, #48]
   81390:	910183b4 	add	x20, x29, #0x60
   81394:	a9046bb9 	stp	x25, x26, [x29, #64]
   81398:	f0000017 	adrp	x23, 84000 <__func__.2797+0xc78>
   8139c:	d0000018 	adrp	x24, 83000 <sd_init+0x2c8>
   813a0:	910f22f7 	add	x23, x23, #0x3c8
   813a4:	9ba102d6 	umaddl	x22, w22, w1, x0
   813a8:	910163ba 	add	x26, x29, #0x58
   813ac:	9125e318 	add	x24, x24, #0x978
   813b0:	f0000019 	adrp	x25, 84000 <__func__.2797+0xc78>
   813b4:	1400000e 	b	813ec <cat+0xac>
   813b8:	39404000 	ldrb	w0, [x0, #16]
   813bc:	37200600 	tbnz	w0, #4, 8147c <cat+0x13c>
   813c0:	b9400021 	ldr	w1, [x1]
   813c4:	91010273 	add	x19, x19, #0x40
   813c8:	f94002a0 	ldr	x0, [x21]
   813cc:	97fffcc1 	bl	806d0 <fat32_read_chain>
   813d0:	f9402fa1 	ldr	x1, [x29, #88]
   813d4:	3820683f 	strb	wzr, [x1, x0]
   813d8:	aa1803e0 	mov	x0, x24
   813dc:	f9402fa1 	ldr	x1, [x29, #88]
   813e0:	940003a0 	bl	82260 <kprintf>
   813e4:	eb16027f 	cmp	x19, x22
   813e8:	54000620 	b.eq	814ac <cat+0x16c>  // b.none
   813ec:	39400262 	ldrb	w2, [x19]
   813f0:	aa1703e1 	mov	x1, x23
   813f4:	aa1403e0 	mov	x0, x20
   813f8:	7100bc5f 	cmp	w2, #0x2f
   813fc:	54000040 	b.eq	81404 <cat+0xc4>  // b.none
   81400:	97fffb2e 	bl	800b8 <strcpy>
   81404:	aa1303e1 	mov	x1, x19
   81408:	aa1403e0 	mov	x0, x20
   8140c:	97fffb5b 	bl	80178 <strcat>
   81410:	f943fb35 	ldr	x21, [x25, #2032]
   81414:	aa1403e1 	mov	x1, x20
   81418:	f94002a0 	ldr	x0, [x21]
   8141c:	97fffdad 	bl	80ad0 <fat32_open>
   81420:	aa0003e1 	mov	x1, x0
   81424:	aa1a03e2 	mov	x2, x26
   81428:	b5fffc80 	cbnz	x0, 813b8 <cat+0x78>
   8142c:	aa1303e1 	mov	x1, x19
   81430:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81434:	91216000 	add	x0, x0, #0x858
   81438:	9400038a 	bl	82260 <kprintf>
   8143c:	a941d7b4 	ldp	x20, x21, [x29, #24]
   81440:	a94363b7 	ldp	x23, x24, [x29, #48]
   81444:	a9446bb9 	ldp	x25, x26, [x29, #64]
   81448:	a9407bfd 	ldp	x29, x30, [sp]
   8144c:	f9400bf3 	ldr	x19, [sp, #16]
   81450:	f94017f6 	ldr	x22, [sp, #40]
   81454:	911183ff 	add	sp, sp, #0x460
   81458:	d65f03c0 	ret
   8145c:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81460:	91212000 	add	x0, x0, #0x848
   81464:	9400037f 	bl	82260 <kprintf>
   81468:	f9400bf3 	ldr	x19, [sp, #16]
   8146c:	a9407bfd 	ldp	x29, x30, [sp]
   81470:	f94017f6 	ldr	x22, [sp, #40]
   81474:	911183ff 	add	sp, sp, #0x460
   81478:	d65f03c0 	ret
   8147c:	aa1303e1 	mov	x1, x19
   81480:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81484:	9121e000 	add	x0, x0, #0x878
   81488:	94000376 	bl	82260 <kprintf>
   8148c:	a941d7b4 	ldp	x20, x21, [x29, #24]
   81490:	a94363b7 	ldp	x23, x24, [x29, #48]
   81494:	a9446bb9 	ldp	x25, x26, [x29, #64]
   81498:	a9407bfd 	ldp	x29, x30, [sp]
   8149c:	f9400bf3 	ldr	x19, [sp, #16]
   814a0:	f94017f6 	ldr	x22, [sp, #40]
   814a4:	911183ff 	add	sp, sp, #0x460
   814a8:	d65f03c0 	ret
   814ac:	a941d7b4 	ldp	x20, x21, [x29, #24]
   814b0:	a94363b7 	ldp	x23, x24, [x29, #48]
   814b4:	a9446bb9 	ldp	x25, x26, [x29, #64]
   814b8:	a9407bfd 	ldp	x29, x30, [sp]
   814bc:	f9400bf3 	ldr	x19, [sp, #16]
   814c0:	f94017f6 	ldr	x22, [sp, #40]
   814c4:	911183ff 	add	sp, sp, #0x460
   814c8:	d65f03c0 	ret
   814cc:	d503201f 	nop

00000000000814d0 <cd>:
   814d0:	d12143ff 	sub	sp, sp, #0x850
   814d4:	d0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   814d8:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
   814dc:	a9007bfd 	stp	x29, x30, [sp]
   814e0:	910003fd 	mov	x29, sp
   814e4:	a90153f3 	stp	x19, x20, [sp, #16]
   814e8:	aa0003f4 	mov	x20, x0
   814ec:	79481060 	ldrh	w0, [x3, #1032]
   814f0:	2a0103f3 	mov	w19, w1
   814f4:	7900a3a0 	strh	w0, [x29, #80]
   814f8:	52800001 	mov	w1, #0x0                   	// #0
   814fc:	91014ba0 	add	x0, x29, #0x52
   81500:	97fffb6a 	bl	802a8 <memset>
   81504:	7100067f 	cmp	w19, #0x1
   81508:	54000aa8 	b.hi	8165c <cd+0x18c>  // b.pmore
   8150c:	34000a13 	cbz	w19, 8164c <cd+0x17c>
   81510:	f9001bb7 	str	x23, [x29, #48]
   81514:	910143b3 	add	x19, x29, #0x50
   81518:	39400280 	ldrb	w0, [x20]
   8151c:	7100bc1f 	cmp	w0, #0x2f
   81520:	54000ac1 	b.ne	81678 <cd+0x1a8>  // b.any
   81524:	aa1403e1 	mov	x1, x20
   81528:	aa1303e0 	mov	x0, x19
   8152c:	97fffb13 	bl	80178 <strcat>
   81530:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81534:	aa1303e1 	mov	x1, x19
   81538:	f943f800 	ldr	x0, [x0, #2032]
   8153c:	f9400000 	ldr	x0, [x0]
   81540:	97fffd64 	bl	80ad0 <fat32_open>
   81544:	aa0003f7 	mov	x23, x0
   81548:	b4000b40 	cbz	x0, 816b0 <cd+0x1e0>
   8154c:	39404000 	ldrb	w0, [x0, #16]
   81550:	362009e0 	tbz	w0, #4, 8168c <cd+0x1bc>
   81554:	f90013b5 	str	x21, [x29, #32]
   81558:	d0000015 	adrp	x21, 83000 <sd_init+0x2c8>
   8155c:	910a02b5 	add	x21, x21, #0x280
   81560:	aa1303e0 	mov	x0, x19
   81564:	aa1503e1 	mov	x1, x21
   81568:	97fffb10 	bl	801a8 <strtok>
   8156c:	aa0003f4 	mov	x20, x0
   81570:	b4000ac0 	cbz	x0, 816c8 <cd+0x1f8>
   81574:	f90017b6 	str	x22, [x29, #40]
   81578:	d0000016 	adrp	x22, 83000 <sd_init+0x2c8>
   8157c:	a903e7b8 	stp	x24, x25, [x29, #56]
   81580:	9122c2d6 	add	x22, x22, #0x8b0
   81584:	d0000018 	adrp	x24, 83000 <sd_init+0x2c8>
   81588:	911143b9 	add	x25, x29, #0x450
   8158c:	9122a318 	add	x24, x24, #0x8a8
   81590:	12800013 	mov	w19, #0xffffffff            	// #-1
   81594:	d503201f 	nop
   81598:	aa1403e1 	mov	x1, x20
   8159c:	aa1803e0 	mov	x0, x24
   815a0:	97fffab4 	bl	80070 <strcmp>
   815a4:	35000080 	cbnz	w0, 815b4 <cd+0xe4>
   815a8:	3100067f 	cmn	w19, #0x1
   815ac:	1a9f07e0 	cset	w0, ne  // ne = any
   815b0:	4b000273 	sub	w19, w19, w0
   815b4:	aa1403e1 	mov	x1, x20
   815b8:	aa1603e0 	mov	x0, x22
   815bc:	97fffaad 	bl	80070 <strcmp>
   815c0:	34000060 	cbz	w0, 815cc <cd+0xfc>
   815c4:	11000673 	add	w19, w19, #0x1
   815c8:	f833db34 	str	x20, [x25, w19, sxtw #3]
   815cc:	aa1503e1 	mov	x1, x21
   815d0:	d2800000 	mov	x0, #0x0                   	// #0
   815d4:	97fffaf5 	bl	801a8 <strtok>
   815d8:	aa0003f4 	mov	x20, x0
   815dc:	b5fffde0 	cbnz	x0, 81598 <cd+0xc8>
   815e0:	f0000016 	adrp	x22, 84000 <__func__.2797+0xc78>
   815e4:	910f22d6 	add	x22, x22, #0x3c8
   815e8:	aa1503e1 	mov	x1, x21
   815ec:	aa1603e0 	mov	x0, x22
   815f0:	97fffab2 	bl	800b8 <strcpy>
   815f4:	3100067f 	cmn	w19, #0x1
   815f8:	540001e0 	b.eq	81634 <cd+0x164>  // b.none
   815fc:	93407e73 	sxtw	x19, w19
   81600:	911143b8 	add	x24, x29, #0x450
   81604:	91000673 	add	x19, x19, #0x1
   81608:	d2800014 	mov	x20, #0x0                   	// #0
   8160c:	d503201f 	nop
   81610:	f8747b01 	ldr	x1, [x24, x20, lsl #3]
   81614:	aa1603e0 	mov	x0, x22
   81618:	91000694 	add	x20, x20, #0x1
   8161c:	97fffad7 	bl	80178 <strcat>
   81620:	aa1503e1 	mov	x1, x21
   81624:	aa1603e0 	mov	x0, x22
   81628:	97fffad4 	bl	80178 <strcat>
   8162c:	eb14027f 	cmp	x19, x20
   81630:	54ffff01 	b.ne	81610 <cd+0x140>  // b.any
   81634:	f94017b6 	ldr	x22, [x29, #40]
   81638:	a943e7b8 	ldp	x24, x25, [x29, #56]
   8163c:	aa1703e0 	mov	x0, x23
   81640:	97fffeb8 	bl	81120 <free>
   81644:	f94013b5 	ldr	x21, [x29, #32]
   81648:	f9401bb7 	ldr	x23, [x29, #48]
   8164c:	a9407bfd 	ldp	x29, x30, [sp]
   81650:	a94153f3 	ldp	x19, x20, [sp, #16]
   81654:	912143ff 	add	sp, sp, #0x850
   81658:	d65f03c0 	ret
   8165c:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81660:	9120a000 	add	x0, x0, #0x828
   81664:	940002ff 	bl	82260 <kprintf>
   81668:	a9407bfd 	ldp	x29, x30, [sp]
   8166c:	a94153f3 	ldp	x19, x20, [sp, #16]
   81670:	912143ff 	add	sp, sp, #0x850
   81674:	d65f03c0 	ret
   81678:	f0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   8167c:	aa1303e0 	mov	x0, x19
   81680:	910f2021 	add	x1, x1, #0x3c8
   81684:	97fffa8d 	bl	800b8 <strcpy>
   81688:	17ffffa7 	b	81524 <cd+0x54>
   8168c:	aa1303e1 	mov	x1, x19
   81690:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81694:	91224000 	add	x0, x0, #0x890
   81698:	940002f2 	bl	82260 <kprintf>
   8169c:	f9401bb7 	ldr	x23, [x29, #48]
   816a0:	a9407bfd 	ldp	x29, x30, [sp]
   816a4:	a94153f3 	ldp	x19, x20, [sp, #16]
   816a8:	912143ff 	add	sp, sp, #0x850
   816ac:	d65f03c0 	ret
   816b0:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   816b4:	aa1303e1 	mov	x1, x19
   816b8:	91216000 	add	x0, x0, #0x858
   816bc:	940002e9 	bl	82260 <kprintf>
   816c0:	f9401bb7 	ldr	x23, [x29, #48]
   816c4:	17ffffe2 	b	8164c <cd+0x17c>
   816c8:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   816cc:	aa1503e1 	mov	x1, x21
   816d0:	910f2000 	add	x0, x0, #0x3c8
   816d4:	97fffa79 	bl	800b8 <strcpy>
   816d8:	17ffffd9 	b	8163c <cd+0x16c>
   816dc:	d503201f 	nop

00000000000816e0 <pwd>:
   816e0:	f0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   816e4:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   816e8:	910f2021 	add	x1, x1, #0x3c8
   816ec:	9125e000 	add	x0, x0, #0x978
   816f0:	140002dc 	b	82260 <kprintf>
   816f4:	d503201f 	nop

00000000000816f8 <ls>:
   816f8:	d11b43ff 	sub	sp, sp, #0x6d0
   816fc:	d0000003 	adrp	x3, 83000 <sd_init+0x2c8>
   81700:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
   81704:	a9047bfd 	stp	x29, x30, [sp, #64]
   81708:	910103fd 	add	x29, sp, #0x40
   8170c:	a90553f3 	stp	x19, x20, [sp, #80]
   81710:	aa0003f4 	mov	x20, x0
   81714:	79481060 	ldrh	w0, [x3, #1032]
   81718:	2a0103f3 	mov	w19, w1
   8171c:	a9065bf5 	stp	x21, x22, [sp, #96]
   81720:	52800001 	mov	w1, #0x0                   	// #0
   81724:	790523a0 	strh	w0, [x29, #656]
   81728:	910a4ba0 	add	x0, x29, #0x292
   8172c:	f9003bf7 	str	x23, [sp, #112]
   81730:	97fffade 	bl	802a8 <memset>
   81734:	d0000015 	adrp	x21, 83000 <sd_init+0x2c8>
   81738:	9124c2a0 	add	x0, x21, #0x930
   8173c:	7100067f 	cmp	w19, #0x1
   81740:	b9400000 	ldr	w0, [x0]
   81744:	b90083a0 	str	w0, [x29, #128]
   81748:	54001560 	b.eq	819f4 <ls+0x2fc>  // b.none
   8174c:	71000a7f 	cmp	w19, #0x2
   81750:	54000501 	b.ne	817f0 <ls+0xf8>  // b.any
   81754:	d0000013 	adrp	x19, 83000 <sd_init+0x2c8>
   81758:	9122e273 	add	x19, x19, #0x8b8
   8175c:	aa1403e1 	mov	x1, x20
   81760:	aa1303e0 	mov	x0, x19
   81764:	91010297 	add	x23, x20, #0x40
   81768:	97fffa42 	bl	80070 <strcmp>
   8176c:	34001540 	cbz	w0, 81a14 <ls+0x31c>
   81770:	aa1703e1 	mov	x1, x23
   81774:	aa1303e0 	mov	x0, x19
   81778:	97fffa3e 	bl	80070 <strcmp>
   8177c:	350016c0 	cbnz	w0, 81a54 <ls+0x35c>
   81780:	39400280 	ldrb	w0, [x20]
   81784:	910a43b6 	add	x22, x29, #0x290
   81788:	7100bc1f 	cmp	w0, #0x2f
   8178c:	540000a0 	b.eq	817a0 <ls+0xa8>  // b.none
   81790:	f0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   81794:	aa1603e0 	mov	x0, x22
   81798:	910f2021 	add	x1, x1, #0x3c8
   8179c:	97fffa47 	bl	800b8 <strcpy>
   817a0:	f0000013 	adrp	x19, 84000 <__func__.2797+0xc78>
   817a4:	aa1403e1 	mov	x1, x20
   817a8:	aa1603e0 	mov	x0, x22
   817ac:	97fffa73 	bl	80178 <strcat>
   817b0:	f943fa73 	ldr	x19, [x19, #2032]
   817b4:	52800037 	mov	w23, #0x1                   	// #1
   817b8:	aa1603e1 	mov	x1, x22
   817bc:	f9400260 	ldr	x0, [x19]
   817c0:	97fffcc4 	bl	80ad0 <fat32_open>
   817c4:	b50003c0 	cbnz	x0, 8183c <ls+0x144>
   817c8:	aa1403e1 	mov	x1, x20
   817cc:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   817d0:	91230000 	add	x0, x0, #0x8c0
   817d4:	940002a3 	bl	82260 <kprintf>
   817d8:	a9447bfd 	ldp	x29, x30, [sp, #64]
   817dc:	a94553f3 	ldp	x19, x20, [sp, #80]
   817e0:	a9465bf5 	ldp	x21, x22, [sp, #96]
   817e4:	f9403bf7 	ldr	x23, [sp, #112]
   817e8:	911b43ff 	add	sp, sp, #0x6d0
   817ec:	d65f03c0 	ret
   817f0:	350013b3 	cbnz	w19, 81a64 <ls+0x36c>
   817f4:	39400280 	ldrb	w0, [x20]
   817f8:	910a43b6 	add	x22, x29, #0x290
   817fc:	7100bc1f 	cmp	w0, #0x2f
   81800:	540000a0 	b.eq	81814 <ls+0x11c>  // b.none
   81804:	f0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   81808:	aa1603e0 	mov	x0, x22
   8180c:	910f2021 	add	x1, x1, #0x3c8
   81810:	97fffa2a 	bl	800b8 <strcpy>
   81814:	aa1403e1 	mov	x1, x20
   81818:	aa1603e0 	mov	x0, x22
   8181c:	52800017 	mov	w23, #0x0                   	// #0
   81820:	97fffa56 	bl	80178 <strcat>
   81824:	f0000013 	adrp	x19, 84000 <__func__.2797+0xc78>
   81828:	aa1603e1 	mov	x1, x22
   8182c:	f943fa73 	ldr	x19, [x19, #2032]
   81830:	f9400260 	ldr	x0, [x19]
   81834:	97fffca7 	bl	80ad0 <fat32_open>
   81838:	b4fffc80 	cbz	x0, 817c8 <ls+0xd0>
   8183c:	39404001 	ldrb	w1, [x0, #16]
   81840:	37200161 	tbnz	w1, #4, 8186c <ls+0x174>
   81844:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81848:	aa1403e1 	mov	x1, x20
   8184c:	91238000 	add	x0, x0, #0x8e0
   81850:	94000284 	bl	82260 <kprintf>
   81854:	a9447bfd 	ldp	x29, x30, [sp, #64]
   81858:	a94553f3 	ldp	x19, x20, [sp, #80]
   8185c:	a9465bf5 	ldp	x21, x22, [sp, #96]
   81860:	f9403bf7 	ldr	x23, [sp, #112]
   81864:	911b43ff 	add	sp, sp, #0x6d0
   81868:	d65f03c0 	ret
   8186c:	b9400001 	ldr	w1, [x0]
   81870:	910223a2 	add	x2, x29, #0x88
   81874:	f9400260 	ldr	x0, [x19]
   81878:	f9001fb8 	str	x24, [x29, #56]
   8187c:	97fffb95 	bl	806d0 <fat32_read_chain>
   81880:	d345fc18 	lsr	x24, x0, #5
   81884:	b4000e58 	cbz	x24, 81a4c <ls+0x354>
   81888:	a9046bb9 	stp	x25, x26, [x29, #64]
   8188c:	910243b4 	add	x20, x29, #0x90
   81890:	d0000019 	adrp	x25, 83000 <sd_init+0x2c8>
   81894:	529999ba 	mov	w26, #0xcccd                	// #52429
   81898:	910203b6 	add	x22, x29, #0x80
   8189c:	91240339 	add	x25, x25, #0x900
   818a0:	9124c2b5 	add	x21, x21, #0x930
   818a4:	a90573bb 	stp	x27, x28, [x29, #80]
   818a8:	d2800013 	mov	x19, #0x0                   	// #0
   818ac:	72b9999a 	movk	w26, #0xcccc, lsl #16
   818b0:	f94047a0 	ldr	x0, [x29, #136]
   818b4:	aa1403e1 	mov	x1, x20
   818b8:	8b131400 	add	x0, x0, x19, lsl #5
   818bc:	97fffbd9 	bl	80820 <fat32_parse_name>
   818c0:	8b000273 	add	x19, x19, x0
   818c4:	f94047a1 	ldr	x1, [x29, #136]
   818c8:	d37bea64 	lsl	x4, x19, #5
   818cc:	91000673 	add	x19, x19, #0x1
   818d0:	8b040021 	add	x1, x1, x4
   818d4:	39402c23 	ldrb	w3, [x1, #11]
   818d8:	121f0066 	and	w6, w3, #0x2
   818dc:	35000057 	cbnz	w23, 818e4 <ls+0x1ec>
   818e0:	37080563 	tbnz	w3, #1, 8198c <ls+0x294>
   818e4:	79401c25 	ldrh	w5, [x1, #14]
   818e8:	79402022 	ldrh	w2, [x1, #16]
   818ec:	79402c3c 	ldrh	w28, [x1, #22]
   818f0:	7940303b 	ldrh	w27, [x1, #24]
   818f4:	37200623 	tbnz	w3, #4, 819b8 <ls+0x2c0>
   818f8:	37000063 	tbnz	w3, #0, 81904 <ls+0x20c>
   818fc:	52800ee0 	mov	w0, #0x77                  	// #119
   81900:	390207a0 	strb	w0, [x29, #129]
   81904:	34000066 	cbz	w6, 81910 <ls+0x218>
   81908:	52800d00 	mov	w0, #0x68                  	// #104
   8190c:	39020ba0 	strb	w0, [x29, #130]
   81910:	39403420 	ldrb	w0, [x1, #13]
   81914:	531f10a7 	ubfiz	w7, w5, #1, #5
   81918:	f9001ff4 	str	x20, [sp, #56]
   8191c:	531f1388 	ubfiz	w8, w28, #1, #5
   81920:	d34528a6 	ubfx	x6, x5, #5, #6
   81924:	53097c44 	lsr	w4, w2, #9
   81928:	b9401c21 	ldr	w1, [x1, #28]
   8192c:	12001043 	and	w3, w2, #0x1f
   81930:	9bba7c00 	umull	x0, w0, w26
   81934:	b90033e1 	str	w1, [sp, #48]
   81938:	530b7ca5 	lsr	w5, w5, #11
   8193c:	d3452b81 	ubfx	x1, x28, #5, #6
   81940:	d3452042 	ubfx	x2, x2, #5, #4
   81944:	b90023e1 	str	w1, [sp, #32]
   81948:	d363fc00 	lsr	x0, x0, #35
   8194c:	b9002be8 	str	w8, [sp, #40]
   81950:	0b0000e7 	add	w7, w7, w0
   81954:	53097f60 	lsr	w0, w27, #9
   81958:	530b7f9c 	lsr	w28, w28, #11
   8195c:	b90013e0 	str	w0, [sp, #16]
   81960:	b9001bfc 	str	w28, [sp, #24]
   81964:	12001360 	and	w0, w27, #0x1f
   81968:	d345237b 	ubfx	x27, x27, #5, #4
   8196c:	b90003fb 	str	w27, [sp]
   81970:	b9000be0 	str	w0, [sp, #8]
   81974:	aa1603e1 	mov	x1, x22
   81978:	aa1903e0 	mov	x0, x25
   8197c:	94000239 	bl	82260 <kprintf>
   81980:	aa1503e1 	mov	x1, x21
   81984:	aa1603e0 	mov	x0, x22
   81988:	97fff9cc 	bl	800b8 <strcpy>
   8198c:	eb18027f 	cmp	x19, x24
   81990:	54fff903 	b.cc	818b0 <ls+0x1b8>  // b.lo, b.ul, b.last
   81994:	a943e7b8 	ldp	x24, x25, [x29, #56]
   81998:	a944efba 	ldp	x26, x27, [x29, #72]
   8199c:	f9402fbc 	ldr	x28, [x29, #88]
   819a0:	a9447bfd 	ldp	x29, x30, [sp, #64]
   819a4:	a94553f3 	ldp	x19, x20, [sp, #80]
   819a8:	a9465bf5 	ldp	x21, x22, [sp, #96]
   819ac:	f9403bf7 	ldr	x23, [sp, #112]
   819b0:	911b43ff 	add	sp, sp, #0x6d0
   819b4:	d65f03c0 	ret
   819b8:	f90037a4 	str	x4, [x29, #104]
   819bc:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   819c0:	290e17a2 	stp	w2, w5, [x29, #112]
   819c4:	910a0021 	add	x1, x1, #0x280
   819c8:	290f0fa6 	stp	w6, w3, [x29, #120]
   819cc:	aa1403e0 	mov	x0, x20
   819d0:	97fff9ea 	bl	80178 <strcat>
   819d4:	f94037a4 	ldr	x4, [x29, #104]
   819d8:	52800c80 	mov	w0, #0x64                  	// #100
   819dc:	f94047a1 	ldr	x1, [x29, #136]
   819e0:	390203a0 	strb	w0, [x29, #128]
   819e4:	294e17a2 	ldp	w2, w5, [x29, #112]
   819e8:	8b040021 	add	x1, x1, x4
   819ec:	294f0fa6 	ldp	w6, w3, [x29, #120]
   819f0:	17ffffc2 	b	818f8 <ls+0x200>
   819f4:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   819f8:	aa1403e1 	mov	x1, x20
   819fc:	9122e000 	add	x0, x0, #0x8b8
   81a00:	97fff99c 	bl	80070 <strcmp>
   81a04:	7100001f 	cmp	w0, #0x0
   81a08:	910a43b6 	add	x22, x29, #0x290
   81a0c:	1a9f17f7 	cset	w23, eq  // eq = none
   81a10:	17ffff85 	b	81824 <ls+0x12c>
   81a14:	39410280 	ldrb	w0, [x20, #64]
   81a18:	910a43b6 	add	x22, x29, #0x290
   81a1c:	7100bc1f 	cmp	w0, #0x2f
   81a20:	540000a0 	b.eq	81a34 <ls+0x33c>  // b.none
   81a24:	f0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   81a28:	aa1603e0 	mov	x0, x22
   81a2c:	910f2021 	add	x1, x1, #0x3c8
   81a30:	97fff9a2 	bl	800b8 <strcpy>
   81a34:	aa1703e1 	mov	x1, x23
   81a38:	aa1603e0 	mov	x0, x22
   81a3c:	aa1703f4 	mov	x20, x23
   81a40:	97fff9ce 	bl	80178 <strcat>
   81a44:	52800037 	mov	w23, #0x1                   	// #1
   81a48:	17ffff77 	b	81824 <ls+0x12c>
   81a4c:	f9401fb8 	ldr	x24, [x29, #56]
   81a50:	17ffff81 	b	81854 <ls+0x15c>
   81a54:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81a58:	9120a000 	add	x0, x0, #0x828
   81a5c:	94000201 	bl	82260 <kprintf>
   81a60:	17ffff7d 	b	81854 <ls+0x15c>
   81a64:	910a43b6 	add	x22, x29, #0x290
   81a68:	52800017 	mov	w23, #0x0                   	// #0
   81a6c:	17ffff6e 	b	81824 <ls+0x12c>

0000000000081a70 <exe_cmd>:
   81a70:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   81a74:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   81a78:	9124e021 	add	x1, x1, #0x938
   81a7c:	910003fd 	mov	x29, sp
   81a80:	f9000bf3 	str	x19, [sp, #16]
   81a84:	aa0003f3 	mov	x19, x0
   81a88:	97fff97a 	bl	80070 <strcmp>
   81a8c:	34000480 	cbz	w0, 81b1c <exe_cmd+0xac>
   81a90:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   81a94:	aa1303e0 	mov	x0, x19
   81a98:	91250021 	add	x1, x1, #0x940
   81a9c:	97fff975 	bl	80070 <strcmp>
   81aa0:	34000340 	cbz	w0, 81b08 <exe_cmd+0x98>
   81aa4:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   81aa8:	aa1303e0 	mov	x0, x19
   81aac:	91252021 	add	x1, x1, #0x948
   81ab0:	97fff970 	bl	80070 <strcmp>
   81ab4:	34000500 	cbz	w0, 81b54 <exe_cmd+0xe4>
   81ab8:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   81abc:	aa1303e0 	mov	x0, x19
   81ac0:	91254021 	add	x1, x1, #0x950
   81ac4:	97fff96b 	bl	80070 <strcmp>
   81ac8:	34000560 	cbz	w0, 81b74 <exe_cmd+0x104>
   81acc:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   81ad0:	aa1303e0 	mov	x0, x19
   81ad4:	91256021 	add	x1, x1, #0x958
   81ad8:	97fff966 	bl	80070 <strcmp>
   81adc:	34000300 	cbz	w0, 81b3c <exe_cmd+0xcc>
   81ae0:	d0000001 	adrp	x1, 83000 <sd_init+0x2c8>
   81ae4:	aa1303e0 	mov	x0, x19
   81ae8:	91258021 	add	x1, x1, #0x960
   81aec:	97fff961 	bl	80070 <strcmp>
   81af0:	34000520 	cbz	w0, 81b94 <exe_cmd+0x124>
   81af4:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81af8:	aa1303e1 	mov	x1, x19
   81afc:	9125a000 	add	x0, x0, #0x968
   81b00:	940001d8 	bl	82260 <kprintf>
   81b04:	14000002 	b	81b0c <exe_cmd+0x9c>
   81b08:	940002e6 	bl	826a0 <atag_display>
   81b0c:	52800000 	mov	w0, #0x0                   	// #0
   81b10:	f9400bf3 	ldr	x19, [sp, #16]
   81b14:	a8c27bfd 	ldp	x29, x30, [sp], #32
   81b18:	d65f03c0 	ret
   81b1c:	b9500661 	ldr	w1, [x19, #4100]
   81b20:	91010260 	add	x0, x19, #0x40
   81b24:	51000421 	sub	w1, w1, #0x1
   81b28:	97fffde4 	bl	812b8 <echo>
   81b2c:	52800000 	mov	w0, #0x0                   	// #0
   81b30:	f9400bf3 	ldr	x19, [sp, #16]
   81b34:	a8c27bfd 	ldp	x29, x30, [sp], #32
   81b38:	d65f03c0 	ret
   81b3c:	f0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   81b40:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81b44:	910f2021 	add	x1, x1, #0x3c8
   81b48:	9125e000 	add	x0, x0, #0x978
   81b4c:	940001c5 	bl	82260 <kprintf>
   81b50:	17ffffef 	b	81b0c <exe_cmd+0x9c>
   81b54:	b9500661 	ldr	w1, [x19, #4100]
   81b58:	91010260 	add	x0, x19, #0x40
   81b5c:	51000421 	sub	w1, w1, #0x1
   81b60:	97fffe5c 	bl	814d0 <cd>
   81b64:	52800000 	mov	w0, #0x0                   	// #0
   81b68:	f9400bf3 	ldr	x19, [sp, #16]
   81b6c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   81b70:	d65f03c0 	ret
   81b74:	b9500661 	ldr	w1, [x19, #4100]
   81b78:	91010260 	add	x0, x19, #0x40
   81b7c:	51000421 	sub	w1, w1, #0x1
   81b80:	97fffdf0 	bl	81340 <cat>
   81b84:	52800000 	mov	w0, #0x0                   	// #0
   81b88:	f9400bf3 	ldr	x19, [sp, #16]
   81b8c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   81b90:	d65f03c0 	ret
   81b94:	b9500661 	ldr	w1, [x19, #4100]
   81b98:	91010260 	add	x0, x19, #0x40
   81b9c:	51000421 	sub	w1, w1, #0x1
   81ba0:	97fffed6 	bl	816f8 <ls>
   81ba4:	17ffffda 	b	81b0c <exe_cmd+0x9c>

0000000000081ba8 <display_banner_short>:
   81ba8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   81bac:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81bb0:	91260000 	add	x0, x0, #0x980
   81bb4:	910003fd 	mov	x29, sp
   81bb8:	940001aa 	bl	82260 <kprintf>
   81bbc:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81bc0:	9127c000 	add	x0, x0, #0x9f0
   81bc4:	940001a7 	bl	82260 <kprintf>
   81bc8:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81bcc:	91298000 	add	x0, x0, #0xa60
   81bd0:	940001a4 	bl	82260 <kprintf>
   81bd4:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81bd8:	912b2000 	add	x0, x0, #0xac8
   81bdc:	940001a1 	bl	82260 <kprintf>
   81be0:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81be4:	912cc000 	add	x0, x0, #0xb30
   81be8:	9400019e 	bl	82260 <kprintf>
   81bec:	a8c17bfd 	ldp	x29, x30, [sp], #16
   81bf0:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81bf4:	912e8000 	add	x0, x0, #0xba0
   81bf8:	1400019a 	b	82260 <kprintf>
   81bfc:	d503201f 	nop

0000000000081c00 <display_banner>:
   81c00:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   81c04:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81c08:	91302000 	add	x0, x0, #0xc08
   81c0c:	910003fd 	mov	x29, sp
   81c10:	94000194 	bl	82260 <kprintf>
   81c14:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81c18:	91334000 	add	x0, x0, #0xcd0
   81c1c:	94000191 	bl	82260 <kprintf>
   81c20:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81c24:	91368000 	add	x0, x0, #0xda0
   81c28:	9400018e 	bl	82260 <kprintf>
   81c2c:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81c30:	9139a000 	add	x0, x0, #0xe68
   81c34:	9400018b 	bl	82260 <kprintf>
   81c38:	d0000000 	adrp	x0, 83000 <sd_init+0x2c8>
   81c3c:	913cc000 	add	x0, x0, #0xf30
   81c40:	94000188 	bl	82260 <kprintf>
   81c44:	a8c17bfd 	ldp	x29, x30, [sp], #16
   81c48:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81c4c:	91004000 	add	x0, x0, #0x10
   81c50:	14000184 	b	82260 <kprintf>
   81c54:	d503201f 	nop

0000000000081c58 <shell_loop>:
   81c58:	d2828810 	mov	x16, #0x1440                	// #5184
   81c5c:	cb3063ff 	sub	sp, sp, x16
   81c60:	d2800801 	mov	x1, #0x40                  	// #64
   81c64:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81c68:	91036000 	add	x0, x0, #0xd8
   81c6c:	a9007bfd 	stp	x29, x30, [sp]
   81c70:	910003fd 	mov	x29, sp
   81c74:	a90153f3 	stp	x19, x20, [sp, #16]
   81c78:	9100e3b3 	add	x19, x29, #0x38
   81c7c:	a9025bf5 	stp	x21, x22, [sp, #32]
   81c80:	9110e3b4 	add	x20, x29, #0x438
   81c84:	f90a1fa1 	str	x1, [x29, #5176]
   81c88:	94000176 	bl	82260 <kprintf>
   81c8c:	97ffffdd 	bl	81c00 <display_banner>
   81c90:	f0000016 	adrp	x22, 84000 <__func__.2797+0xc78>
   81c94:	f0000015 	adrp	x21, 84000 <__func__.2797+0xc78>
   81c98:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81c9c:	910f22d6 	add	x22, x22, #0x3c8
   81ca0:	910402b5 	add	x21, x21, #0x100
   81ca4:	910a6000 	add	x0, x0, #0x298
   81ca8:	9400016e 	bl	82260 <kprintf>
   81cac:	d503201f 	nop
   81cb0:	aa1603e1 	mov	x1, x22
   81cb4:	aa1503e0 	mov	x0, x21
   81cb8:	9400016a 	bl	82260 <kprintf>
   81cbc:	aa1303e0 	mov	x0, x19
   81cc0:	97fffd1c 	bl	81130 <read_cmd>
   81cc4:	b4ffff60 	cbz	x0, 81cb0 <shell_loop+0x58>
   81cc8:	aa1303e1 	mov	x1, x19
   81ccc:	aa1403e0 	mov	x0, x20
   81cd0:	97fffd56 	bl	81228 <parse_cmd>
   81cd4:	7100001f 	cmp	w0, #0x0
   81cd8:	54fffecd 	b.le	81cb0 <shell_loop+0x58>
   81cdc:	aa1403e0 	mov	x0, x20
   81ce0:	97ffff64 	bl	81a70 <exe_cmd>
   81ce4:	aa1603e1 	mov	x1, x22
   81ce8:	aa1503e0 	mov	x0, x21
   81cec:	9400015d 	bl	82260 <kprintf>
   81cf0:	aa1303e0 	mov	x0, x19
   81cf4:	97fffd0f 	bl	81130 <read_cmd>
   81cf8:	b5fffe80 	cbnz	x0, 81cc8 <shell_loop+0x70>
   81cfc:	17ffffed 	b	81cb0 <shell_loop+0x58>

0000000000081d00 <test_malloc>:
   81d00:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   81d04:	d2803f80 	mov	x0, #0x1fc                 	// #508
   81d08:	910003fd 	mov	x29, sp
   81d0c:	a90153f3 	stp	x19, x20, [sp, #16]
   81d10:	d2800013 	mov	x19, #0x0                   	// #0
   81d14:	a9025bf5 	stp	x21, x22, [sp, #32]
   81d18:	a90363f7 	stp	x23, x24, [sp, #48]
   81d1c:	97fffca5 	bl	80fb0 <malloc>
   81d20:	aa0003f5 	mov	x21, x0
   81d24:	d503201f 	nop
   81d28:	b8337ab3 	str	w19, [x21, x19, lsl #2]
   81d2c:	91000673 	add	x19, x19, #0x1
   81d30:	f101fe7f 	cmp	x19, #0x7f
   81d34:	54ffffa1 	b.ne	81d28 <test_malloc+0x28>  // b.any
   81d38:	d2803f80 	mov	x0, #0x1fc                 	// #508
   81d3c:	97fffc9d 	bl	80fb0 <malloc>
   81d40:	aa0003f7 	mov	x23, x0
   81d44:	d503201f 	nop
   81d48:	b8004413 	str	w19, [x0], #4
   81d4c:	71000673 	subs	w19, w19, #0x1
   81d50:	54ffffc1 	b.ne	81d48 <test_malloc+0x48>  // b.any
   81d54:	f0000018 	adrp	x24, 84000 <__func__.2797+0xc78>
   81d58:	f0000016 	adrp	x22, 84000 <__func__.2797+0xc78>
   81d5c:	91042318 	add	x24, x24, #0x108
   81d60:	910462d6 	add	x22, x22, #0x118
   81d64:	d2800013 	mov	x19, #0x0                   	// #0
   81d68:	52800ff4 	mov	w20, #0x7f                  	// #127
   81d6c:	d503201f 	nop
   81d70:	b8737aa3 	ldr	w3, [x21, x19, lsl #2]
   81d74:	aa1803e2 	mov	x2, x24
   81d78:	52802fe1 	mov	w1, #0x17f                 	// #383
   81d7c:	aa1603e0 	mov	x0, x22
   81d80:	6b13007f 	cmp	w3, w19
   81d84:	54000040 	b.eq	81d8c <test_malloc+0x8c>  // b.none
   81d88:	97fffc48 	bl	80ea8 <__assert>
   81d8c:	b8737ae0 	ldr	w0, [x23, x19, lsl #2]
   81d90:	f0000002 	adrp	x2, 84000 <__func__.2797+0xc78>
   81d94:	91000673 	add	x19, x19, #0x1
   81d98:	52803001 	mov	w1, #0x180                 	// #384
   81d9c:	6b14001f 	cmp	w0, w20
   81da0:	54000080 	b.eq	81db0 <test_malloc+0xb0>  // b.none
   81da4:	9104a042 	add	x2, x2, #0x128
   81da8:	aa1603e0 	mov	x0, x22
   81dac:	97fffc3f 	bl	80ea8 <__assert>
   81db0:	71000694 	subs	w20, w20, #0x1
   81db4:	54fffde1 	b.ne	81d70 <test_malloc+0x70>  // b.any
   81db8:	aa1503e0 	mov	x0, x21
   81dbc:	97fffcd9 	bl	81120 <free>
   81dc0:	d2803f80 	mov	x0, #0x1fc                 	// #508
   81dc4:	97fffc7b 	bl	80fb0 <malloc>
   81dc8:	aa0003f3 	mov	x19, x0
   81dcc:	eb0002bf 	cmp	x21, x0
   81dd0:	540000e0 	b.eq	81dec <test_malloc+0xec>  // b.none
   81dd4:	f0000002 	adrp	x2, 84000 <__func__.2797+0xc78>
   81dd8:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81ddc:	91050042 	add	x2, x2, #0x140
   81de0:	528030c1 	mov	w1, #0x186                 	// #390
   81de4:	91046000 	add	x0, x0, #0x118
   81de8:	97fffc30 	bl	80ea8 <__assert>
   81dec:	b85e8260 	ldur	w0, [x19, #-24]
   81df0:	121f7800 	and	w0, w0, #0xfffffffe
   81df4:	7107f01f 	cmp	w0, #0x1fc
   81df8:	540000e0 	b.eq	81e14 <test_malloc+0x114>  // b.none
   81dfc:	f0000002 	adrp	x2, 84000 <__func__.2797+0xc78>
   81e00:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81e04:	91052042 	add	x2, x2, #0x148
   81e08:	528030e1 	mov	w1, #0x187                 	// #391
   81e0c:	91046000 	add	x0, x0, #0x118
   81e10:	97fffc26 	bl	80ea8 <__assert>
   81e14:	aa1703e0 	mov	x0, x23
   81e18:	97fffcc2 	bl	81120 <free>
   81e1c:	d2803f80 	mov	x0, #0x1fc                 	// #508
   81e20:	97fffc64 	bl	80fb0 <malloc>
   81e24:	aa0003f4 	mov	x20, x0
   81e28:	eb0002ff 	cmp	x23, x0
   81e2c:	540000e0 	b.eq	81e48 <test_malloc+0x148>  // b.none
   81e30:	f0000002 	adrp	x2, 84000 <__func__.2797+0xc78>
   81e34:	f0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   81e38:	91066042 	add	x2, x2, #0x198
   81e3c:	52803181 	mov	w1, #0x18c                 	// #396
   81e40:	91046000 	add	x0, x0, #0x118
   81e44:	97fffc19 	bl	80ea8 <__assert>
   81e48:	aa1303e0 	mov	x0, x19
   81e4c:	97fffcb5 	bl	81120 <free>
   81e50:	aa1403e0 	mov	x0, x20
   81e54:	a94153f3 	ldp	x19, x20, [sp, #16]
   81e58:	a9425bf5 	ldp	x21, x22, [sp, #32]
   81e5c:	a94363f7 	ldp	x23, x24, [sp, #48]
   81e60:	a8c47bfd 	ldp	x29, x30, [sp], #64
   81e64:	17fffcaf 	b	81120 <free>

0000000000081e68 <current_time>:
   81e68:	d2860102 	mov	x2, #0x3008                	// #12296
   81e6c:	d2860083 	mov	x3, #0x3004                	// #12292
   81e70:	f2a7e002 	movk	x2, #0x3f00, lsl #16
   81e74:	f2a7e003 	movk	x3, #0x3f00, lsl #16
   81e78:	b9400041 	ldr	w1, [x2]
   81e7c:	b9400064 	ldr	w4, [x3]
   81e80:	b9400042 	ldr	w2, [x2]
   81e84:	2a0103e0 	mov	w0, w1
   81e88:	6b02003f 	cmp	w1, w2
   81e8c:	540000c0 	b.eq	81ea4 <current_time+0x3c>  // b.none
   81e90:	b9400061 	ldr	w1, [x3]
   81e94:	91000400 	add	x0, x0, #0x1
   81e98:	2a0103e1 	mov	w1, w1
   81e9c:	8b008020 	add	x0, x1, x0, lsl #32
   81ea0:	d65f03c0 	ret
   81ea4:	2a0403e4 	mov	w4, w4
   81ea8:	8b008080 	add	x0, x4, x0, lsl #32
   81eac:	d65f03c0 	ret

0000000000081eb0 <spin_sleep_us>:
   81eb0:	d2860103 	mov	x3, #0x3008                	// #12296
   81eb4:	d2860084 	mov	x4, #0x3004                	// #12292
   81eb8:	f2a7e003 	movk	x3, #0x3f00, lsl #16
   81ebc:	f2a7e004 	movk	x4, #0x3f00, lsl #16
   81ec0:	b9400061 	ldr	w1, [x3]
   81ec4:	b9400085 	ldr	w5, [x4]
   81ec8:	b9400063 	ldr	w3, [x3]
   81ecc:	2a0103e2 	mov	w2, w1
   81ed0:	6b03003f 	cmp	w1, w3
   81ed4:	54000340 	b.eq	81f3c <spin_sleep_us+0x8c>  // b.none
   81ed8:	b9400081 	ldr	w1, [x4]
   81edc:	91000442 	add	x2, x2, #0x1
   81ee0:	2a0103e1 	mov	w1, w1
   81ee4:	8b028022 	add	x2, x1, x2, lsl #32
   81ee8:	d2860104 	mov	x4, #0x3008                	// #12296
   81eec:	d2860086 	mov	x6, #0x3004                	// #12292
   81ef0:	f2a7e004 	movk	x4, #0x3f00, lsl #16
   81ef4:	f2a7e006 	movk	x6, #0x3f00, lsl #16
   81ef8:	b9400083 	ldr	w3, [x4]
   81efc:	b94000c7 	ldr	w7, [x6]
   81f00:	b9400081 	ldr	w1, [x4]
   81f04:	2a0303e5 	mov	w5, w3
   81f08:	6b01007f 	cmp	w3, w1
   81f0c:	910004a1 	add	x1, x5, #0x1
   81f10:	54000100 	b.eq	81f30 <spin_sleep_us+0x80>  // b.none
   81f14:	b94000c3 	ldr	w3, [x6]
   81f18:	2a0303e3 	mov	w3, w3
   81f1c:	8b018061 	add	x1, x3, x1, lsl #32
   81f20:	cb020021 	sub	x1, x1, x2
   81f24:	eb00003f 	cmp	x1, x0
   81f28:	54fffe89 	b.ls	81ef8 <spin_sleep_us+0x48>  // b.plast
   81f2c:	d65f03c0 	ret
   81f30:	2a0703e1 	mov	w1, w7
   81f34:	8b058021 	add	x1, x1, x5, lsl #32
   81f38:	17fffffa 	b	81f20 <spin_sleep_us+0x70>
   81f3c:	2a0503e5 	mov	w5, w5
   81f40:	8b0280a2 	add	x2, x5, x2, lsl #32
   81f44:	17ffffe9 	b	81ee8 <spin_sleep_us+0x38>

0000000000081f48 <wait_micros>:
   81f48:	0b000800 	add	w0, w0, w0, lsl #2
   81f4c:	531f7800 	lsl	w0, w0, #1
   81f50:	17ffffd8 	b	81eb0 <spin_sleep_us>
   81f54:	00000000 	.inst	0x00000000 ; undefined

0000000000081f58 <getDigit.constprop.0>:
   81f58:	7100241f 	cmp	w0, #0x9
   81f5c:	5400008c 	b.gt	81f6c <getDigit.constprop.0+0x14>
   81f60:	1100c000 	add	w0, w0, #0x30
   81f64:	12001c00 	and	w0, w0, #0xff
   81f68:	d65f03c0 	ret
   81f6c:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   81f70:	910003fd 	mov	x29, sp
   81f74:	a90153f3 	stp	x19, x20, [sp, #16]
   81f78:	528cccf4 	mov	w20, #0x6667                	// #26215
   81f7c:	72acccd4 	movk	w20, #0x6666, lsl #16
   81f80:	a9025bf5 	stp	x21, x22, [sp, #32]
   81f84:	aa0203f5 	mov	x21, x2
   81f88:	aa0103f6 	mov	x22, x1
   81f8c:	9b347c14 	smull	x20, w0, w20
   81f90:	2a0003f3 	mov	w19, w0
   81f94:	9362fe94 	asr	x20, x20, #34
   81f98:	4b807e94 	sub	w20, w20, w0, asr #31
   81f9c:	2a1403e0 	mov	w0, w20
   81fa0:	97ffffee 	bl	81f58 <getDigit.constprop.0>
   81fa4:	b98002a1 	ldrsw	x1, [x21]
   81fa8:	0b140a94 	add	w20, w20, w20, lsl #2
   81fac:	4b140673 	sub	w19, w19, w20, lsl #1
   81fb0:	1100c273 	add	w19, w19, #0x30
   81fb4:	38216ac0 	strb	w0, [x22, x1]
   81fb8:	12001e60 	and	w0, w19, #0xff
   81fbc:	b94002a1 	ldr	w1, [x21]
   81fc0:	a94153f3 	ldp	x19, x20, [sp, #16]
   81fc4:	11000421 	add	w1, w1, #0x1
   81fc8:	b90002a1 	str	w1, [x21]
   81fcc:	a9425bf5 	ldp	x21, x22, [sp, #32]
   81fd0:	a8c37bfd 	ldp	x29, x30, [sp], #48
   81fd4:	d65f03c0 	ret

0000000000081fd8 <__kprintf>:
   81fd8:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
   81fdc:	910003fd 	mov	x29, sp
   81fe0:	a90153f3 	stp	x19, x20, [sp, #16]
   81fe4:	9101b3b4 	add	x20, x29, #0x6c
   81fe8:	a9025bf5 	stp	x21, x22, [sp, #32]
   81fec:	9101c3b3 	add	x19, x29, #0x70
   81ff0:	a90363f7 	stp	x23, x24, [sp, #48]
   81ff4:	52800018 	mov	w24, #0x0                   	// #0
   81ff8:	b9401836 	ldr	w22, [x1, #24]
   81ffc:	a9405c35 	ldp	x21, x23, [x1]
   82000:	f9002bfb 	str	x27, [sp, #80]
   82004:	aa0003fb 	mov	x27, x0
   82008:	a9046bf9 	stp	x25, x26, [sp, #64]
   8200c:	d503201f 	nop
   82010:	38784b79 	ldrb	w25, [x27, w24, uxtw]
   82014:	1100071a 	add	w26, w24, #0x1
   82018:	34000379 	cbz	w25, 82084 <__kprintf+0xac>
   8201c:	7100973f 	cmp	w25, #0x25
   82020:	540001e1 	b.ne	8205c <__kprintf+0x84>  // b.any
   82024:	387a4b60 	ldrb	w0, [x27, w26, uxtw]
   82028:	11000b18 	add	w24, w24, #0x2
   8202c:	7101901f 	cmp	w0, #0x64
   82030:	54000660 	b.eq	820fc <__kprintf+0x124>  // b.none
   82034:	54000388 	b.hi	820a4 <__kprintf+0xcc>  // b.pmore
   82038:	7100941f 	cmp	w0, #0x25
   8203c:	540001c0 	b.eq	82074 <__kprintf+0x9c>  // b.none
   82040:	71018c1f 	cmp	w0, #0x63
   82044:	54fffe61 	b.ne	82010 <__kprintf+0x38>  // b.any
   82048:	37f80416 	tbnz	w22, #31, 820c8 <__kprintf+0xf0>
   8204c:	91002ea1 	add	x1, x21, #0xb
   82050:	aa1503e0 	mov	x0, x21
   82054:	927df035 	and	x21, x1, #0xfffffffffffffff8
   82058:	14000023 	b	820e4 <__kprintf+0x10c>
   8205c:	2a1903e0 	mov	w0, w25
   82060:	94000158 	bl	825c0 <mu_write_byte>
   82064:	2a1a03f8 	mov	w24, w26
   82068:	71002b3f 	cmp	w25, #0xa
   8206c:	54fffd21 	b.ne	82010 <__kprintf+0x38>  // b.any
   82070:	528001a0 	mov	w0, #0xd                   	// #13
   82074:	94000153 	bl	825c0 <mu_write_byte>
   82078:	38784b79 	ldrb	w25, [x27, w24, uxtw]
   8207c:	1100071a 	add	w26, w24, #0x1
   82080:	35fffcf9 	cbnz	w25, 8201c <__kprintf+0x44>
   82084:	a94153f3 	ldp	x19, x20, [sp, #16]
   82088:	52800020 	mov	w0, #0x1                   	// #1
   8208c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82090:	a94363f7 	ldp	x23, x24, [sp, #48]
   82094:	a9446bf9 	ldp	x25, x26, [sp, #64]
   82098:	f9402bfb 	ldr	x27, [sp, #80]
   8209c:	a8c97bfd 	ldp	x29, x30, [sp], #144
   820a0:	d65f03c0 	ret
   820a4:	7101cc1f 	cmp	w0, #0x73
   820a8:	540004a0 	b.eq	8213c <__kprintf+0x164>  // b.none
   820ac:	7101e01f 	cmp	w0, #0x78
   820b0:	54fffb01 	b.ne	82010 <__kprintf+0x38>  // b.any
   820b4:	37f807f6 	tbnz	w22, #31, 821b0 <__kprintf+0x1d8>
   820b8:	91002ea1 	add	x1, x21, #0xb
   820bc:	aa1503e0 	mov	x0, x21
   820c0:	927df035 	and	x21, x1, #0xfffffffffffffff8
   820c4:	14000042 	b	821cc <__kprintf+0x1f4>
   820c8:	110022c1 	add	w1, w22, #0x8
   820cc:	7100003f 	cmp	w1, #0x0
   820d0:	5400010d 	b.le	820f0 <__kprintf+0x118>
   820d4:	91002ea2 	add	x2, x21, #0xb
   820d8:	aa1503e0 	mov	x0, x21
   820dc:	2a0103f6 	mov	w22, w1
   820e0:	927df055 	and	x21, x2, #0xfffffffffffffff8
   820e4:	39400000 	ldrb	w0, [x0]
   820e8:	94000136 	bl	825c0 <mu_write_byte>
   820ec:	17ffffc9 	b	82010 <__kprintf+0x38>
   820f0:	8b36c2e0 	add	x0, x23, w22, sxtw
   820f4:	2a0103f6 	mov	w22, w1
   820f8:	17fffffb 	b	820e4 <__kprintf+0x10c>
   820fc:	37f802f6 	tbnz	w22, #31, 82158 <__kprintf+0x180>
   82100:	91002ea1 	add	x1, x21, #0xb
   82104:	aa1503e0 	mov	x0, x21
   82108:	927df035 	and	x21, x1, #0xfffffffffffffff8
   8210c:	b9400000 	ldr	w0, [x0]
   82110:	aa1403e2 	mov	x2, x20
   82114:	aa1303e1 	mov	x1, x19
   82118:	b9006fbf 	str	wzr, [x29, #108]
   8211c:	97ffff8f 	bl	81f58 <getDigit.constprop.0>
   82120:	b9406fa1 	ldr	w1, [x29, #108]
   82124:	11000422 	add	w2, w1, #0x1
   82128:	3821ca60 	strb	w0, [x19, w1, sxtw]
   8212c:	aa1303e0 	mov	x0, x19
   82130:	3822ca7f 	strb	wzr, [x19, w2, sxtw]
   82134:	9400014d 	bl	82668 <mu_write_str>
   82138:	17ffffb6 	b	82010 <__kprintf+0x38>
   8213c:	37f801f6 	tbnz	w22, #31, 82178 <__kprintf+0x1a0>
   82140:	91003ea1 	add	x1, x21, #0xf
   82144:	aa1503e0 	mov	x0, x21
   82148:	927df035 	and	x21, x1, #0xfffffffffffffff8
   8214c:	f9400000 	ldr	x0, [x0]
   82150:	94000146 	bl	82668 <mu_write_str>
   82154:	17ffffaf 	b	82010 <__kprintf+0x38>
   82158:	110022c1 	add	w1, w22, #0x8
   8215c:	7100003f 	cmp	w1, #0x0
   82160:	540001cd 	b.le	82198 <__kprintf+0x1c0>
   82164:	91002ea2 	add	x2, x21, #0xb
   82168:	aa1503e0 	mov	x0, x21
   8216c:	2a0103f6 	mov	w22, w1
   82170:	927df055 	and	x21, x2, #0xfffffffffffffff8
   82174:	17ffffe6 	b	8210c <__kprintf+0x134>
   82178:	110022c1 	add	w1, w22, #0x8
   8217c:	7100003f 	cmp	w1, #0x0
   82180:	5400012d 	b.le	821a4 <__kprintf+0x1cc>
   82184:	91003ea2 	add	x2, x21, #0xf
   82188:	aa1503e0 	mov	x0, x21
   8218c:	2a0103f6 	mov	w22, w1
   82190:	927df055 	and	x21, x2, #0xfffffffffffffff8
   82194:	17ffffee 	b	8214c <__kprintf+0x174>
   82198:	8b36c2e0 	add	x0, x23, w22, sxtw
   8219c:	2a0103f6 	mov	w22, w1
   821a0:	17ffffdb 	b	8210c <__kprintf+0x134>
   821a4:	8b36c2e0 	add	x0, x23, w22, sxtw
   821a8:	2a0103f6 	mov	w22, w1
   821ac:	17ffffe8 	b	8214c <__kprintf+0x174>
   821b0:	110022c1 	add	w1, w22, #0x8
   821b4:	7100003f 	cmp	w1, #0x0
   821b8:	540004cd 	b.le	82250 <__kprintf+0x278>
   821bc:	91002ea2 	add	x2, x21, #0xb
   821c0:	aa1503e0 	mov	x0, x21
   821c4:	2a0103f6 	mov	w22, w1
   821c8:	927df055 	and	x21, x2, #0xfffffffffffffff8
   821cc:	b9400004 	ldr	w4, [x0]
   821d0:	52800383 	mov	w3, #0x1c                  	// #28
   821d4:	d2800002 	mov	x2, #0x0                   	// #0
   821d8:	1ac32881 	asr	w1, w4, w3
   821dc:	12000c21 	and	w1, w1, #0xf
   821e0:	12001c20 	and	w0, w1, #0xff
   821e4:	7100283f 	cmp	w1, #0xa
   821e8:	11015c01 	add	w1, w0, #0x57
   821ec:	1100c000 	add	w0, w0, #0x30
   821f0:	1a81b000 	csel	w0, w0, w1, lt  // lt = tstop
   821f4:	38226a60 	strb	w0, [x19, x2]
   821f8:	91000442 	add	x2, x2, #0x1
   821fc:	51001063 	sub	w3, w3, #0x4
   82200:	f100205f 	cmp	x2, #0x8
   82204:	54fffea1 	b.ne	821d8 <__kprintf+0x200>  // b.any
   82208:	3941c3a0 	ldrb	w0, [x29, #112]
   8220c:	3901e3bf 	strb	wzr, [x29, #120]
   82210:	7100c01f 	cmp	w0, #0x30
   82214:	54000181 	b.ne	82244 <__kprintf+0x26c>  // b.any
   82218:	3941c7a1 	ldrb	w1, [x29, #113]
   8221c:	34000141 	cbz	w1, 82244 <__kprintf+0x26c>
   82220:	91000662 	add	x2, x19, #0x1
   82224:	14000003 	b	82230 <__kprintf+0x258>
   82228:	38401c41 	ldrb	w1, [x2, #1]!
   8222c:	34000081 	cbz	w1, 8223c <__kprintf+0x264>
   82230:	aa0203e0 	mov	x0, x2
   82234:	7100c03f 	cmp	w1, #0x30
   82238:	54ffff80 	b.eq	82228 <__kprintf+0x250>  // b.none
   8223c:	9400010b 	bl	82668 <mu_write_str>
   82240:	17ffff74 	b	82010 <__kprintf+0x38>
   82244:	aa1303e0 	mov	x0, x19
   82248:	94000108 	bl	82668 <mu_write_str>
   8224c:	17ffff71 	b	82010 <__kprintf+0x38>
   82250:	8b36c2e0 	add	x0, x23, w22, sxtw
   82254:	2a0103f6 	mov	w22, w1
   82258:	17ffffdd 	b	821cc <__kprintf+0x1f4>
   8225c:	d503201f 	nop

0000000000082260 <kprintf>:
   82260:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
   82264:	910003fd 	mov	x29, sp
   82268:	910443a8 	add	x8, x29, #0x110
   8226c:	910343a9 	add	x9, x29, #0xd0
   82270:	a90323a8 	stp	x8, x8, [x29, #48]
   82274:	128006e8 	mov	w8, #0xffffffc8            	// #-56
   82278:	f90023a9 	str	x9, [x29, #64]
   8227c:	b9004ba8 	str	w8, [x29, #72]
   82280:	12800fe8 	mov	w8, #0xffffff80            	// #-128
   82284:	b9004fa8 	str	w8, [x29, #76]
   82288:	a9432faa 	ldp	x10, x11, [x29, #48]
   8228c:	a9012faa 	stp	x10, x11, [x29, #16]
   82290:	a94427a8 	ldp	x8, x9, [x29, #64]
   82294:	a90227a8 	stp	x8, x9, [x29, #32]
   82298:	3d8017a0 	str	q0, [x29, #80]
   8229c:	3d801ba1 	str	q1, [x29, #96]
   822a0:	3d801fa2 	str	q2, [x29, #112]
   822a4:	3d8023a3 	str	q3, [x29, #128]
   822a8:	3d8027a4 	str	q4, [x29, #144]
   822ac:	3d802ba5 	str	q5, [x29, #160]
   822b0:	3d802fa6 	str	q6, [x29, #176]
   822b4:	3d8033a7 	str	q7, [x29, #192]
   822b8:	a90d8ba1 	stp	x1, x2, [x29, #216]
   822bc:	910043a1 	add	x1, x29, #0x10
   822c0:	a90e93a3 	stp	x3, x4, [x29, #232]
   822c4:	a90f9ba5 	stp	x5, x6, [x29, #248]
   822c8:	f90087a7 	str	x7, [x29, #264]
   822cc:	97ffff43 	bl	81fd8 <__kprintf>
   822d0:	a8d17bfd 	ldp	x29, x30, [sp], #272
   822d4:	d65f03c0 	ret

00000000000822d8 <__panic>:
   822d8:	a9ae7bfd 	stp	x29, x30, [sp, #-288]!
   822dc:	910003fd 	mov	x29, sp
   822e0:	a90153f3 	stp	x19, x20, [sp, #16]
   822e4:	aa0303f3 	mov	x19, x3
   822e8:	aa0203f4 	mov	x20, x2
   822ec:	a9025bf5 	stp	x21, x22, [sp, #32]
   822f0:	3d8023a0 	str	q0, [x29, #128]
   822f4:	2a0103f5 	mov	w21, w1
   822f8:	3d8027a1 	str	q1, [x29, #144]
   822fc:	aa0003f6 	mov	x22, x0
   82300:	3d802ba2 	str	q2, [x29, #160]
   82304:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82308:	3d802fa3 	str	q3, [x29, #176]
   8230c:	9106a000 	add	x0, x0, #0x1a8
   82310:	3d8033a4 	str	q4, [x29, #192]
   82314:	3d8037a5 	str	q5, [x29, #208]
   82318:	3d803ba6 	str	q6, [x29, #224]
   8231c:	3d803fa7 	str	q7, [x29, #240]
   82320:	a91017a4 	stp	x4, x5, [x29, #256]
   82324:	a9111fa6 	stp	x6, x7, [x29, #272]
   82328:	97ffffce 	bl	82260 <kprintf>
   8232c:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82330:	9106e000 	add	x0, x0, #0x1b8
   82334:	97ffffcb 	bl	82260 <kprintf>
   82338:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   8233c:	91074000 	add	x0, x0, #0x1d0
   82340:	97ffffc8 	bl	82260 <kprintf>
   82344:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82348:	9107a000 	add	x0, x0, #0x1e8
   8234c:	97ffffc5 	bl	82260 <kprintf>
   82350:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82354:	91080000 	add	x0, x0, #0x200
   82358:	97ffffc2 	bl	82260 <kprintf>
   8235c:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82360:	91088000 	add	x0, x0, #0x220
   82364:	97ffffbf 	bl	82260 <kprintf>
   82368:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   8236c:	91090000 	add	x0, x0, #0x240
   82370:	97ffffbc 	bl	82260 <kprintf>
   82374:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82378:	91098000 	add	x0, x0, #0x260
   8237c:	97ffffb9 	bl	82260 <kprintf>
   82380:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82384:	910a0000 	add	x0, x0, #0x280
   82388:	97ffffb6 	bl	82260 <kprintf>
   8238c:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82390:	910a8000 	add	x0, x0, #0x2a0
   82394:	97ffffb3 	bl	82260 <kprintf>
   82398:	aa1603e1 	mov	x1, x22
   8239c:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   823a0:	910b0000 	add	x0, x0, #0x2c0
   823a4:	97ffffaf 	bl	82260 <kprintf>
   823a8:	2a1503e1 	mov	w1, w21
   823ac:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   823b0:	910b4000 	add	x0, x0, #0x2d0
   823b4:	97ffffab 	bl	82260 <kprintf>
   823b8:	aa1403e1 	mov	x1, x20
   823bc:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   823c0:	910b8000 	add	x0, x0, #0x2e0
   823c4:	97ffffa7 	bl	82260 <kprintf>
   823c8:	910483a0 	add	x0, x29, #0x120
   823cc:	a90603a0 	stp	x0, x0, [x29, #96]
   823d0:	128003e0 	mov	w0, #0xffffffe0            	// #-32
   823d4:	910403a1 	add	x1, x29, #0x100
   823d8:	f9003ba1 	str	x1, [x29, #112]
   823dc:	910103a1 	add	x1, x29, #0x40
   823e0:	b9007ba0 	str	w0, [x29, #120]
   823e4:	12800fe0 	mov	w0, #0xffffff80            	// #-128
   823e8:	b9007fa0 	str	w0, [x29, #124]
   823ec:	aa1303e0 	mov	x0, x19
   823f0:	a94617a4 	ldp	x4, x5, [x29, #96]
   823f4:	a90417a4 	stp	x4, x5, [x29, #64]
   823f8:	a9470fa2 	ldp	x2, x3, [x29, #112]
   823fc:	a9050fa2 	stp	x2, x3, [x29, #80]
   82400:	910003f3 	mov	x19, sp
   82404:	97fffef5 	bl	81fd8 <__kprintf>
   82408:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   8240c:	2a1303e1 	mov	w1, w19
   82410:	910bc000 	add	x0, x0, #0x2f0
   82414:	97ffff93 	bl	82260 <kprintf>
   82418:	b2404be2 	mov	x2, #0x7ffff               	// #524287
   8241c:	eb02027f 	cmp	x19, x2
   82420:	54000388 	b.hi	82490 <__panic+0x1b8>  // b.pmore
   82424:	b9400261 	ldr	w1, [x19]
   82428:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   8242c:	910c6000 	add	x0, x0, #0x318
   82430:	d0000015 	adrp	x21, 84000 <__func__.2797+0xc78>
   82434:	f9001bb7 	str	x23, [x29, #48]
   82438:	52800056 	mov	w22, #0x2                   	// #2
   8243c:	aa0203f4 	mov	x20, x2
   82440:	910a62b5 	add	x21, x21, #0x298
   82444:	aa0003f7 	mov	x23, x0
   82448:	97ffff86 	bl	82260 <kprintf>
   8244c:	91001273 	add	x19, x19, #0x4
   82450:	aa1703e0 	mov	x0, x23
   82454:	eb14027f 	cmp	x19, x20
   82458:	54000188 	b.hi	82488 <__panic+0x1b0>  // b.pmore
   8245c:	b9400261 	ldr	w1, [x19]
   82460:	97ffff80 	bl	82260 <kprintf>
   82464:	f2400adf 	tst	x22, #0x7
   82468:	110006d6 	add	w22, w22, #0x1
   8246c:	54ffff01 	b.ne	8244c <__panic+0x174>  // b.any
   82470:	aa1503e0 	mov	x0, x21
   82474:	91001273 	add	x19, x19, #0x4
   82478:	97ffff7a 	bl	82260 <kprintf>
   8247c:	aa1703e0 	mov	x0, x23
   82480:	eb14027f 	cmp	x19, x20
   82484:	54fffec9 	b.ls	8245c <__panic+0x184>  // b.plast
   82488:	f9401bb7 	ldr	x23, [x29, #48]
   8248c:	14000000 	b	8248c <__panic+0x1b4>
   82490:	17ffffff 	b	8248c <__panic+0x1b4>
   82494:	00000000 	.inst	0x00000000 ; undefined

0000000000082498 <_cstartup>:
   82498:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   8249c:	f943f403 	ldr	x3, [x0, #2024]
   824a0:	f943ec02 	ldr	x2, [x0, #2008]
   824a4:	eb02007f 	cmp	x3, x2
   824a8:	54000182 	b.cs	824d8 <_cstartup+0x40>  // b.hs, b.nlast
   824ac:	91002060 	add	x0, x3, #0x8
   824b0:	91001c41 	add	x1, x2, #0x7
   824b4:	cb000021 	sub	x1, x1, x0
   824b8:	91004063 	add	x3, x3, #0x10
   824bc:	927df021 	and	x1, x1, #0xfffffffffffffff8
   824c0:	8b030021 	add	x1, x1, x3
   824c4:	d503201f 	nop
   824c8:	f81f801f 	stur	xzr, [x0, #-8]
   824cc:	91002000 	add	x0, x0, #0x8
   824d0:	eb01001f 	cmp	x0, x1
   824d4:	54ffffa1 	b.ne	824c8 <_cstartup+0x30>  // b.any
   824d8:	d65f03c0 	ret
   824dc:	00000000 	.inst	0x00000000 ; undefined

00000000000824e0 <mu_init>:
   824e0:	d28a0081 	mov	x1, #0x5004                	// #20484
   824e4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   824e8:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   824ec:	d28a0d06 	mov	x6, #0x5068                	// #20584
   824f0:	910003fd 	mov	x29, sp
   824f4:	b9400020 	ldr	w0, [x1]
   824f8:	f2a7e426 	movk	x6, #0x3f21, lsl #16
   824fc:	f9000bf3 	str	x19, [sp, #16]
   82500:	d28a0984 	mov	x4, #0x504c                	// #20556
   82504:	32000000 	orr	w0, w0, #0x1
   82508:	b9000020 	str	w0, [x1]
   8250c:	f2a7e424 	movk	x4, #0x3f21, lsl #16
   82510:	528021c7 	mov	w7, #0x10e                 	// #270
   82514:	b90000c7 	str	w7, [x6]
   82518:	d2a7e403 	mov	x3, #0x3f200000            	// #1059061760
   8251c:	d2800082 	mov	x2, #0x4                   	// #4
   82520:	d2801285 	mov	x5, #0x94                  	// #148
   82524:	b9400081 	ldr	w1, [x4]
   82528:	f2a7e402 	movk	x2, #0x3f20, lsl #16
   8252c:	f2a7e405 	movk	x5, #0x3f20, lsl #16
   82530:	d2801313 	mov	x19, #0x98                  	// #152
   82534:	32000421 	orr	w1, w1, #0x3
   82538:	b9000081 	str	w1, [x4]
   8253c:	f2a7e413 	movk	x19, #0x3f20, lsl #16
   82540:	d28012c0 	mov	x0, #0x96                  	// #150
   82544:	b9400061 	ldr	w1, [x3]
   82548:	12117021 	and	w1, w1, #0xffff8fff
   8254c:	32140021 	orr	w1, w1, #0x1000
   82550:	b9000061 	str	w1, [x3]
   82554:	b9400041 	ldr	w1, [x2]
   82558:	12117021 	and	w1, w1, #0xffff8fff
   8255c:	32130021 	orr	w1, w1, #0x2000
   82560:	b9000041 	str	w1, [x2]
   82564:	b9400041 	ldr	w1, [x2]
   82568:	120e7021 	and	w1, w1, #0xfffc7fff
   8256c:	32100021 	orr	w1, w1, #0x10000
   82570:	b9000041 	str	w1, [x2]
   82574:	b90000bf 	str	wzr, [x5]
   82578:	97fffe4e 	bl	81eb0 <spin_sleep_us>
   8257c:	52980000 	mov	w0, #0xc000                	// #49152
   82580:	b9000260 	str	w0, [x19]
   82584:	d28012c0 	mov	x0, #0x96                  	// #150
   82588:	97fffe4a 	bl	81eb0 <spin_sleep_us>
   8258c:	b900027f 	str	wzr, [x19]
   82590:	d28a0900 	mov	x0, #0x5048                	// #20552
   82594:	f9400bf3 	ldr	x19, [sp, #16]
   82598:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8259c:	b9400001 	ldr	w1, [x0]
   825a0:	321f0021 	orr	w1, w1, #0x2
   825a4:	b9000001 	str	w1, [x0]
   825a8:	b9400001 	ldr	w1, [x0]
   825ac:	321e0021 	orr	w1, w1, #0x4
   825b0:	b9000001 	str	w1, [x0]
   825b4:	a8c27bfd 	ldp	x29, x30, [sp], #32
   825b8:	d65f03c0 	ret
   825bc:	d503201f 	nop

00000000000825c0 <mu_write_byte>:
   825c0:	d28a0a82 	mov	x2, #0x5054                	// #20564
   825c4:	12001c00 	and	w0, w0, #0xff
   825c8:	f2a7e422 	movk	x2, #0x3f21, lsl #16
   825cc:	d503201f 	nop
   825d0:	b9400041 	ldr	w1, [x2]
   825d4:	362fffe1 	tbz	w1, #5, 825d0 <mu_write_byte+0x10>
   825d8:	d28a0801 	mov	x1, #0x5040                	// #20544
   825dc:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   825e0:	b9000020 	str	w0, [x1]
   825e4:	d65f03c0 	ret

00000000000825e8 <mu_write_fifo>:
   825e8:	d28a0c81 	mov	x1, #0x5064                	// #20580
   825ec:	12001c02 	and	w2, w0, #0xff
   825f0:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   825f4:	52800000 	mov	w0, #0x0                   	// #0
   825f8:	b9400021 	ldr	w1, [x1]
   825fc:	360800a1 	tbz	w1, #1, 82610 <mu_write_fifo+0x28>
   82600:	d28a0801 	mov	x1, #0x5040                	// #20544
   82604:	52800020 	mov	w0, #0x1                   	// #1
   82608:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   8260c:	b9000022 	str	w2, [x1]
   82610:	d65f03c0 	ret
   82614:	d503201f 	nop

0000000000082618 <mu_read_byte>:
   82618:	d28a0a81 	mov	x1, #0x5054                	// #20564
   8261c:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82620:	b9400020 	ldr	w0, [x1]
   82624:	3607ffe0 	tbz	w0, #0, 82620 <mu_read_byte+0x8>
   82628:	d28a0800 	mov	x0, #0x5040                	// #20544
   8262c:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   82630:	b9400000 	ldr	w0, [x0]
   82634:	d65f03c0 	ret

0000000000082638 <mu_read_fifo>:
   82638:	d28a0a81 	mov	x1, #0x5054                	// #20564
   8263c:	aa0003e2 	mov	x2, x0
   82640:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82644:	52800000 	mov	w0, #0x0                   	// #0
   82648:	b9400021 	ldr	w1, [x1]
   8264c:	360000c1 	tbz	w1, #0, 82664 <mu_read_fifo+0x2c>
   82650:	d28a0801 	mov	x1, #0x5040                	// #20544
   82654:	52800020 	mov	w0, #0x1                   	// #1
   82658:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   8265c:	b9400021 	ldr	w1, [x1]
   82660:	39000041 	strb	w1, [x2]
   82664:	d65f03c0 	ret

0000000000082668 <mu_write_str>:
   82668:	39400002 	ldrb	w2, [x0]
   8266c:	34000182 	cbz	w2, 8269c <mu_write_str+0x34>
   82670:	d28a0a81 	mov	x1, #0x5054                	// #20564
   82674:	d28a0804 	mov	x4, #0x5040                	// #20544
   82678:	91000403 	add	x3, x0, #0x1
   8267c:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82680:	f2a7e424 	movk	x4, #0x3f21, lsl #16
   82684:	d503201f 	nop
   82688:	b9400020 	ldr	w0, [x1]
   8268c:	362fffe0 	tbz	w0, #5, 82688 <mu_write_str+0x20>
   82690:	b9000082 	str	w2, [x4]
   82694:	38401462 	ldrb	w2, [x3], #1
   82698:	35ffff82 	cbnz	w2, 82688 <mu_write_str+0x20>
   8269c:	d65f03c0 	ret

00000000000826a0 <atag_display>:
   826a0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   826a4:	910003fd 	mov	x29, sp
   826a8:	f9000bf3 	str	x19, [sp, #16]
   826ac:	d2802013 	mov	x19, #0x100                 	// #256
   826b0:	b9400661 	ldr	w1, [x19, #4]
   826b4:	340004e1 	cbz	w1, 82750 <atag_display+0xb0>
   826b8:	a901d7b4 	stp	x20, x21, [x29, #24]
   826bc:	52800054 	mov	w20, #0x2                   	// #2
   826c0:	d0000015 	adrp	x21, 84000 <__func__.2797+0xc78>
   826c4:	f90017b6 	str	x22, [x29, #40]
   826c8:	910dc2b5 	add	x21, x21, #0x370
   826cc:	d0000016 	adrp	x22, 84000 <__func__.2797+0xc78>
   826d0:	72aa8834 	movk	w20, #0x5441, lsl #16
   826d4:	910d82d6 	add	x22, x22, #0x360
   826d8:	14000010 	b	82718 <atag_display+0x78>
   826dc:	52800120 	mov	w0, #0x9                   	// #9
   826e0:	72aa8820 	movk	w0, #0x5441, lsl #16
   826e4:	6b00003f 	cmp	w1, w0
   826e8:	540004e0 	b.eq	82784 <atag_display+0xe4>  // b.none
   826ec:	52800020 	mov	w0, #0x1                   	// #1
   826f0:	72aa8820 	movk	w0, #0x5441, lsl #16
   826f4:	6b00003f 	cmp	w1, w0
   826f8:	54000320 	b.eq	8275c <atag_display+0xbc>  // b.none
   826fc:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82700:	910ec000 	add	x0, x0, #0x3b0
   82704:	97fffed7 	bl	82260 <kprintf>
   82708:	b9400260 	ldr	w0, [x19]
   8270c:	8b204a73 	add	x19, x19, w0, uxtw #2
   82710:	b9400661 	ldr	w1, [x19, #4]
   82714:	340001a1 	cbz	w1, 82748 <atag_display+0xa8>
   82718:	6b14003f 	cmp	w1, w20
   8271c:	54fffe01 	b.ne	826dc <atag_display+0x3c>  // b.any
   82720:	aa1603e0 	mov	x0, x22
   82724:	97fffecf 	bl	82260 <kprintf>
   82728:	b9400a61 	ldr	w1, [x19, #8]
   8272c:	aa1503e0 	mov	x0, x21
   82730:	b9400e62 	ldr	w2, [x19, #12]
   82734:	97fffecb 	bl	82260 <kprintf>
   82738:	b9400260 	ldr	w0, [x19]
   8273c:	8b204a73 	add	x19, x19, w0, uxtw #2
   82740:	b9400661 	ldr	w1, [x19, #4]
   82744:	35fffea1 	cbnz	w1, 82718 <atag_display+0x78>
   82748:	a941d7b4 	ldp	x20, x21, [x29, #24]
   8274c:	f94017b6 	ldr	x22, [x29, #40]
   82750:	f9400bf3 	ldr	x19, [sp, #16]
   82754:	a8c37bfd 	ldp	x29, x30, [sp], #48
   82758:	d65f03c0 	ret
   8275c:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82760:	910c8000 	add	x0, x0, #0x320
   82764:	97fffebf 	bl	82260 <kprintf>
   82768:	b9400a61 	ldr	w1, [x19, #8]
   8276c:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82770:	b9400e62 	ldr	w2, [x19, #12]
   82774:	910cc000 	add	x0, x0, #0x330
   82778:	b9401263 	ldr	w3, [x19, #16]
   8277c:	97fffeb9 	bl	82260 <kprintf>
   82780:	17ffffe2 	b	82708 <atag_display+0x68>
   82784:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82788:	910e4000 	add	x0, x0, #0x390
   8278c:	97fffeb5 	bl	82260 <kprintf>
   82790:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82794:	91002261 	add	x1, x19, #0x8
   82798:	910e8000 	add	x0, x0, #0x3a0
   8279c:	97fffeb1 	bl	82260 <kprintf>
   827a0:	17ffffda 	b	82708 <atag_display+0x68>
   827a4:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   827a8:	910003fd 	mov	x29, sp
   827ac:	a90153f3 	stp	x19, x20, [sp, #16]
   827b0:	2a0003f4 	mov	w20, w0
   827b4:	a9025bf5 	stp	x21, x22, [sp, #32]
   827b8:	52942413 	mov	w19, #0xa120                	// #41248
   827bc:	72a000f3 	movk	w19, #0x7, lsl #16
   827c0:	d2800495 	mov	x21, #0x24                  	// #36
   827c4:	f2a7e615 	movk	x21, #0x3f30, lsl #16
   827c8:	d2800616 	mov	x22, #0x30                  	// #48
   827cc:	f2a7e616 	movk	x22, #0x3f30, lsl #16
   827d0:	f9001bf7 	str	x23, [sp, #48]
   827d4:	52900017 	mov	w23, #0x8000                	// #32768
   827d8:	72a02fd7 	movk	w23, #0x17e, lsl #16
   827dc:	b94002a0 	ldr	w0, [x21]
   827e0:	6a14001f 	tst	w0, w20
   827e4:	54000180 	b.eq	82814 <atag_display+0x174>  // b.none
   827e8:	b94002c0 	ldr	w0, [x22]
   827ec:	6a17001f 	tst	w0, w23
   827f0:	54000121 	b.ne	82814 <atag_display+0x174>  // b.any
   827f4:	51000673 	sub	w19, w19, #0x1
   827f8:	3100067f 	cmn	w19, #0x1
   827fc:	54000061 	b.ne	82808 <atag_display+0x168>  // b.any
   82800:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82804:	1400000d 	b	82838 <atag_display+0x198>
   82808:	52800020 	mov	w0, #0x1                   	// #1
   8280c:	97fffdcf 	bl	81f48 <wait_micros>
   82810:	17fffff3 	b	827dc <atag_display+0x13c>
   82814:	34ffff73 	cbz	w19, 82800 <atag_display+0x160>
   82818:	d2800600 	mov	x0, #0x30                  	// #48
   8281c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82820:	b9400001 	ldr	w1, [x0]
   82824:	52900000 	mov	w0, #0x8000                	// #32768
   82828:	72a02fc0 	movk	w0, #0x17e, lsl #16
   8282c:	6a00003f 	tst	w1, w0
   82830:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82834:	1a9f1000 	csel	w0, w0, wzr, ne  // ne = any
   82838:	a94153f3 	ldp	x19, x20, [sp, #16]
   8283c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82840:	f9401bf7 	ldr	x23, [sp, #48]
   82844:	a8c47bfd 	ldp	x29, x30, [sp], #64
   82848:	d65f03c0 	ret
   8284c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   82850:	910003fd 	mov	x29, sp
   82854:	a90153f3 	stp	x19, x20, [sp, #16]
   82858:	52884813 	mov	w19, #0x4240                	// #16960
   8285c:	72a001f3 	movk	w19, #0xf, lsl #16
   82860:	a9025bf5 	stp	x21, x22, [sp, #32]
   82864:	52900015 	mov	w21, #0x8000                	// #32768
   82868:	72a02fd5 	movk	w21, #0x17e, lsl #16
   8286c:	2a150015 	orr	w21, w0, w21
   82870:	f9001bf7 	str	x23, [sp, #48]
   82874:	2a0003f6 	mov	w22, w0
   82878:	d2800617 	mov	x23, #0x30                  	// #48
   8287c:	f2a7e617 	movk	x23, #0x3f30, lsl #16
   82880:	aa1703f4 	mov	x20, x23
   82884:	b94002e0 	ldr	w0, [x23]
   82888:	6a15001f 	tst	w0, w21
   8288c:	54000081 	b.ne	8289c <atag_display+0x1fc>  // b.any
   82890:	51000673 	sub	w19, w19, #0x1
   82894:	3100067f 	cmn	w19, #0x1
   82898:	54000201 	b.ne	828d8 <atag_display+0x238>  // b.any
   8289c:	b9400280 	ldr	w0, [x20]
   828a0:	7100027f 	cmp	w19, #0x0
   828a4:	5400008d 	b.le	828b4 <atag_display+0x214>
   828a8:	52a00221 	mov	w1, #0x110000              	// #1114112
   828ac:	6a01001f 	tst	w0, w1
   828b0:	540001a0 	b.eq	828e4 <atag_display+0x244>  // b.none
   828b4:	d2800601 	mov	x1, #0x30                  	// #48
   828b8:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   828bc:	b9000020 	str	w0, [x1]
   828c0:	12800000 	mov	w0, #0xffffffff            	// #-1
   828c4:	a94153f3 	ldp	x19, x20, [sp, #16]
   828c8:	a9425bf5 	ldp	x21, x22, [sp, #32]
   828cc:	f9401bf7 	ldr	x23, [sp, #48]
   828d0:	a8c47bfd 	ldp	x29, x30, [sp], #64
   828d4:	d65f03c0 	ret
   828d8:	52800020 	mov	w0, #0x1                   	// #1
   828dc:	97fffd9b 	bl	81f48 <wait_micros>
   828e0:	17ffffe9 	b	82884 <atag_display+0x1e4>
   828e4:	52900001 	mov	w1, #0x8000                	// #32768
   828e8:	72a02fc1 	movk	w1, #0x17e, lsl #16
   828ec:	6a01001f 	tst	w0, w1
   828f0:	54000080 	b.eq	82900 <atag_display+0x260>  // b.none
   828f4:	b9000280 	str	w0, [x20]
   828f8:	12800020 	mov	w0, #0xfffffffe            	// #-2
   828fc:	17fffff2 	b	828c4 <atag_display+0x224>
   82900:	52800000 	mov	w0, #0x0                   	// #0
   82904:	b9000296 	str	w22, [x20]
   82908:	17ffffef 	b	828c4 <atag_display+0x224>
   8290c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   82910:	910003fd 	mov	x29, sp
   82914:	a9025bf5 	stp	x21, x22, [sp, #32]
   82918:	d0000015 	adrp	x21, 84000 <__func__.2797+0xc78>
   8291c:	a90153f3 	stp	x19, x20, [sp, #16]
   82920:	2a0103f6 	mov	w22, w1
   82924:	f9050abf 	str	xzr, [x21, #2576]
   82928:	2a0003f3 	mov	w19, w0
   8292c:	f9001bf7 	str	x23, [sp, #48]
   82930:	aa1503f4 	mov	x20, x21
   82934:	36f80260 	tbz	w0, #31, 82980 <atag_display+0x2e0>
   82938:	d0000017 	adrp	x23, 84000 <__func__.2797+0xc78>
   8293c:	f9441ee1 	ldr	x1, [x23, #2104]
   82940:	52a6e042 	mov	w2, #0x37020000            	// #922877952
   82944:	52a6e000 	mov	w0, #0x37000000            	// #922746880
   82948:	f100003f 	cmp	x1, #0x0
   8294c:	1a801040 	csel	w0, w2, w0, ne  // ne = any
   82950:	97ffffef 	bl	8290c <atag_display+0x26c>
   82954:	f9441ee1 	ldr	x1, [x23, #2104]
   82958:	b4000121 	cbz	x1, 8297c <atag_display+0x2dc>
   8295c:	35000100 	cbnz	w0, 8297c <atag_display+0x2dc>
   82960:	92800021 	mov	x1, #0xfffffffffffffffe    	// #-2
   82964:	f9050aa1 	str	x1, [x21, #2576]
   82968:	a94153f3 	ldp	x19, x20, [sp, #16]
   8296c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82970:	f9401bf7 	ldr	x23, [sp, #48]
   82974:	a8c47bfd 	ldp	x29, x30, [sp], #64
   82978:	d65f03c0 	ret
   8297c:	12007a73 	and	w19, w19, #0x7fffffff
   82980:	52800020 	mov	w0, #0x1                   	// #1
   82984:	97ffff88 	bl	827a4 <atag_display+0x104>
   82988:	340000a0 	cbz	w0, 8299c <atag_display+0x2fc>
   8298c:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
   82990:	f9050a80 	str	x0, [x20, #2576]
   82994:	52800000 	mov	w0, #0x0                   	// #0
   82998:	17fffff4 	b	82968 <atag_display+0x2c8>
   8299c:	d2800600 	mov	x0, #0x30                  	// #48
   829a0:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   829a4:	b9400001 	ldr	w1, [x0]
   829a8:	b9000001 	str	w1, [x0]
   829ac:	d2800100 	mov	x0, #0x8                   	// #8
   829b0:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   829b4:	b9000016 	str	w22, [x0]
   829b8:	b9000413 	str	w19, [x0, #4]
   829bc:	52a6e000 	mov	w0, #0x37000000            	// #922746880
   829c0:	6b00027f 	cmp	w19, w0
   829c4:	52a10040 	mov	w0, #0x8020000             	// #134348800
   829c8:	1a9f17f5 	cset	w21, eq  // eq = none
   829cc:	6b00027f 	cmp	w19, w0
   829d0:	1a9f16a0 	csinc	w0, w21, wzr, ne  // ne = any
   829d4:	34000060 	cbz	w0, 829e0 <atag_display+0x340>
   829d8:	52800c80 	mov	w0, #0x64                  	// #100
   829dc:	97fffd5b 	bl	81f48 <wait_micros>
   829e0:	52800020 	mov	w0, #0x1                   	// #1
   829e4:	97ffff9a 	bl	8284c <atag_display+0x1ac>
   829e8:	34000060 	cbz	w0, 829f4 <atag_display+0x354>
   829ec:	93407c00 	sxtw	x0, w0
   829f0:	17ffffe8 	b	82990 <atag_display+0x2f0>
   829f4:	d2800201 	mov	x1, #0x10                  	// #16
   829f8:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   829fc:	7100027f 	cmp	w19, #0x0
   82a00:	b9400021 	ldr	w1, [x1]
   82a04:	1a9f16b5 	csinc	w21, w21, wzr, ne  // ne = any
   82a08:	35fffb15 	cbnz	w21, 82968 <atag_display+0x2c8>
   82a0c:	52a6e040 	mov	w0, #0x37020000            	// #922877952
   82a10:	6b00027f 	cmp	w19, w0
   82a14:	54000061 	b.ne	82a20 <atag_display+0x380>  // b.any
   82a18:	121b0020 	and	w0, w1, #0x20
   82a1c:	17ffffd3 	b	82968 <atag_display+0x2c8>
   82a20:	52a10040 	mov	w0, #0x8020000             	// #134348800
   82a24:	6b00027f 	cmp	w19, w0
   82a28:	540000a1 	b.ne	82a3c <atag_display+0x39c>  // b.any
   82a2c:	6b16003f 	cmp	w1, w22
   82a30:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82a34:	1a8003e0 	csel	w0, wzr, w0, eq  // eq = none
   82a38:	17ffffcc 	b	82968 <atag_display+0x2c8>
   82a3c:	52a04020 	mov	w0, #0x2010000             	// #33619968
   82a40:	6b00027f 	cmp	w19, w0
   82a44:	540001c1 	b.ne	82a7c <atag_display+0x3dc>  // b.any
   82a48:	d2800380 	mov	x0, #0x1c                  	// #28
   82a4c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82a50:	d2800282 	mov	x2, #0x14                  	// #20
   82a54:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   82a58:	b9400003 	ldr	w3, [x0]
   82a5c:	d2800300 	mov	x0, #0x18                  	// #24
   82a60:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82a64:	2a030021 	orr	w1, w1, w3
   82a68:	b9400000 	ldr	w0, [x0]
   82a6c:	b9400042 	ldr	w2, [x2]
   82a70:	2a020000 	orr	w0, w0, w2
   82a74:	2a000020 	orr	w0, w1, w0
   82a78:	17ffffbc 	b	82968 <atag_display+0x2c8>
   82a7c:	52a06040 	mov	w0, #0x3020000             	// #50462720
   82a80:	6b00027f 	cmp	w19, w0
   82a84:	540001a1 	b.ne	82ab8 <atag_display+0x418>  // b.any
   82a88:	53185c20 	lsl	w0, w1, #8
   82a8c:	531a6422 	lsl	w2, w1, #6
   82a90:	120a0003 	and	w3, w0, #0x400000
   82a94:	120d0042 	and	w2, w2, #0x80000
   82a98:	2a030042 	orr	w2, w2, w3
   82a9c:	12090003 	and	w3, w0, #0x800000
   82aa0:	121e0020 	and	w0, w1, #0x4
   82aa4:	2a030000 	orr	w0, w0, w3
   82aa8:	2a020000 	orr	w0, w0, w2
   82aac:	f9050a80 	str	x0, [x20, #2576]
   82ab0:	12103c20 	and	w0, w1, #0xffff0000
   82ab4:	17ffffad 	b	82968 <atag_display+0x2c8>
   82ab8:	52980080 	mov	w0, #0xc004                	// #49156
   82abc:	72bfff20 	movk	w0, #0xfff9, lsl #16
   82ac0:	0a000020 	and	w0, w1, w0
   82ac4:	17ffffa9 	b	82968 <atag_display+0x2c8>
   82ac8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   82acc:	910003fd 	mov	x29, sp
   82ad0:	a90153f3 	stp	x19, x20, [sp, #16]
   82ad4:	52990d53 	mov	w19, #0xc86a                	// #51306
   82ad8:	72a04f73 	movk	w19, #0x27b, lsl #16
   82adc:	5290d414 	mov	w20, #0x86a0                	// #34464
   82ae0:	72a00034 	movk	w20, #0x1, lsl #16
   82ae4:	1ac00a73 	udiv	w19, w19, w0
   82ae8:	f90013f5 	str	x21, [sp, #32]
   82aec:	d2800495 	mov	x21, #0x24                  	// #36
   82af0:	f2a7e615 	movk	x21, #0x3f30, lsl #16
   82af4:	b94002a0 	ldr	w0, [x21]
   82af8:	f240041f 	tst	x0, #0x3
   82afc:	54000180 	b.eq	82b2c <atag_display+0x48c>  // b.none
   82b00:	51000694 	sub	w20, w20, #0x1
   82b04:	3100069f 	cmn	w20, #0x1
   82b08:	540000c1 	b.ne	82b20 <atag_display+0x480>  // b.any
   82b0c:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82b10:	a94153f3 	ldp	x19, x20, [sp, #16]
   82b14:	f94013f5 	ldr	x21, [sp, #32]
   82b18:	a8c37bfd 	ldp	x29, x30, [sp], #48
   82b1c:	d65f03c0 	ret
   82b20:	52800020 	mov	w0, #0x1                   	// #1
   82b24:	97fffd09 	bl	81f48 <wait_micros>
   82b28:	17fffff3 	b	82af4 <atag_display+0x454>
   82b2c:	34ffff14 	cbz	w20, 82b0c <atag_display+0x46c>
   82b30:	d2800581 	mov	x1, #0x2c                  	// #44
   82b34:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   82b38:	b9400020 	ldr	w0, [x1]
   82b3c:	121d7800 	and	w0, w0, #0xfffffffb
   82b40:	b9000020 	str	w0, [x1]
   82b44:	52800140 	mov	w0, #0xa                   	// #10
   82b48:	97fffd00 	bl	81f48 <wait_micros>
   82b4c:	71000660 	subs	w0, w19, #0x1
   82b50:	540001a0 	b.eq	82b84 <atag_display+0x4e4>  // b.none
   82b54:	53081c01 	lsl	w1, w0, #24
   82b58:	72040c3f 	tst	w1, #0xf0000000
   82b5c:	54000521 	b.ne	82c00 <atag_display+0x560>  // b.any
   82b60:	53040c01 	lsl	w1, w0, #28
   82b64:	52800080 	mov	w0, #0x4                   	// #4
   82b68:	7202043f 	tst	w1, #0xc0000000
   82b6c:	54000061 	b.ne	82b78 <atag_display+0x4d8>  // b.any
   82b70:	531e7421 	lsl	w1, w1, #2
   82b74:	51000800 	sub	w0, w0, #0x2
   82b78:	2a2103e1 	mvn	w1, w1
   82b7c:	4b417c00 	sub	w0, w0, w1, lsr #31
   82b80:	51000400 	sub	w0, w0, #0x1
   82b84:	d0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   82b88:	f9442021 	ldr	x1, [x1, #2112]
   82b8c:	f100043f 	cmp	x1, #0x1
   82b90:	54000068 	b.hi	82b9c <atag_display+0x4fc>  // b.pmore
   82b94:	52800033 	mov	w19, #0x1                   	// #1
   82b98:	1ac02273 	lsl	w19, w19, w0
   82b9c:	d2800594 	mov	x20, #0x2c                  	// #44
   82ba0:	f2a7e614 	movk	x20, #0x3f30, lsl #16
   82ba4:	71000a7f 	cmp	w19, #0x2
   82ba8:	52800041 	mov	w1, #0x2                   	// #2
   82bac:	b9400280 	ldr	w0, [x20]
   82bb0:	1a812273 	csel	w19, w19, w1, cs  // cs = hs, nlast
   82bb4:	12105400 	and	w0, w0, #0xffff003f
   82bb8:	2a132013 	orr	w19, w0, w19, lsl #8
   82bbc:	b9000293 	str	w19, [x20]
   82bc0:	52800140 	mov	w0, #0xa                   	// #10
   82bc4:	5284e213 	mov	w19, #0x2710                	// #10000
   82bc8:	97fffce0 	bl	81f48 <wait_micros>
   82bcc:	b9400280 	ldr	w0, [x20]
   82bd0:	321e0000 	orr	w0, w0, #0x4
   82bd4:	b9000280 	str	w0, [x20]
   82bd8:	52800140 	mov	w0, #0xa                   	// #10
   82bdc:	97fffcdb 	bl	81f48 <wait_micros>
   82be0:	b9400280 	ldr	w0, [x20]
   82be4:	37080120 	tbnz	w0, #1, 82c08 <atag_display+0x568>
   82be8:	51000673 	sub	w19, w19, #0x1
   82bec:	3100067f 	cmn	w19, #0x1
   82bf0:	54fff8e0 	b.eq	82b0c <atag_display+0x46c>  // b.none
   82bf4:	52800140 	mov	w0, #0xa                   	// #10
   82bf8:	97fffcd4 	bl	81f48 <wait_micros>
   82bfc:	17fffff9 	b	82be0 <atag_display+0x540>
   82c00:	52800100 	mov	w0, #0x8                   	// #8
   82c04:	17ffffd9 	b	82b68 <atag_display+0x4c8>
   82c08:	34fff833 	cbz	w19, 82b0c <atag_display+0x46c>
   82c0c:	52800000 	mov	w0, #0x0                   	// #0
   82c10:	17ffffc0 	b	82b10 <atag_display+0x470>
   82c14:	51000400 	sub	w0, w0, #0x1
   82c18:	3100041f 	cmn	w0, #0x1
   82c1c:	54000041 	b.ne	82c24 <atag_display+0x584>  // b.any
   82c20:	d65f03c0 	ret
   82c24:	d503201f 	nop
   82c28:	17fffffb 	b	82c14 <atag_display+0x574>

0000000000082c2c <sd_readsector>:
   82c2c:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   82c30:	910003fd 	mov	x29, sp
   82c34:	a90153f3 	stp	x19, x20, [sp, #16]
   82c38:	a9025bf5 	stp	x21, x22, [sp, #32]
   82c3c:	2a0003f5 	mov	w21, w0
   82c40:	aa0103f6 	mov	x22, x1
   82c44:	52800040 	mov	w0, #0x2                   	// #2
   82c48:	97fffed7 	bl	827a4 <atag_display+0x104>
   82c4c:	34000140 	cbz	w0, 82c74 <sd_readsector+0x48>
   82c50:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82c54:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
   82c58:	52800013 	mov	w19, #0x0                   	// #0
   82c5c:	f9050801 	str	x1, [x0, #2576]
   82c60:	2a1303e0 	mov	w0, w19
   82c64:	a94153f3 	ldp	x19, x20, [sp, #16]
   82c68:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82c6c:	a8c37bfd 	ldp	x29, x30, [sp], #48
   82c70:	d65f03c0 	ret
   82c74:	2a0003f3 	mov	w19, w0
   82c78:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82c7c:	9120e001 	add	x1, x0, #0x838
   82c80:	aa0003f4 	mov	x20, x0
   82c84:	d2800080 	mov	x0, #0x4                   	// #4
   82c88:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82c8c:	f9400822 	ldr	x2, [x1, #16]
   82c90:	52804001 	mov	w1, #0x200                 	// #512
   82c94:	72a00021 	movk	w1, #0x1, lsl #16
   82c98:	b9000001 	str	w1, [x0]
   82c9c:	36000102 	tbz	w2, #0, 82cbc <sd_readsector+0x90>
   82ca0:	2a1503e1 	mov	w1, w21
   82ca4:	52800200 	mov	w0, #0x10                  	// #16
   82ca8:	72a22440 	movk	w0, #0x1122, lsl #16
   82cac:	97ffff18 	bl	8290c <atag_display+0x26c>
   82cb0:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82cb4:	f9450800 	ldr	x0, [x0, #2576]
   82cb8:	b5fffd40 	cbnz	x0, 82c60 <sd_readsector+0x34>
   82cbc:	9120e280 	add	x0, x20, #0x838
   82cc0:	f9400800 	ldr	x0, [x0, #16]
   82cc4:	37000100 	tbnz	w0, #0, 82ce4 <sd_readsector+0xb8>
   82cc8:	53175aa1 	lsl	w1, w21, #9
   82ccc:	52800200 	mov	w0, #0x10                  	// #16
   82cd0:	72a22440 	movk	w0, #0x1122, lsl #16
   82cd4:	97ffff0e 	bl	8290c <atag_display+0x26c>
   82cd8:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82cdc:	f9450800 	ldr	x0, [x0, #2576]
   82ce0:	b5fffc00 	cbnz	x0, 82c60 <sd_readsector+0x34>
   82ce4:	52800400 	mov	w0, #0x20                  	// #32
   82ce8:	97fffed9 	bl	8284c <atag_display+0x1ac>
   82cec:	d2800001 	mov	x1, #0x0                   	// #0
   82cf0:	350001c0 	cbnz	w0, 82d28 <sd_readsector+0xfc>
   82cf4:	d2800402 	mov	x2, #0x20                  	// #32
   82cf8:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   82cfc:	b9400040 	ldr	w0, [x2]
   82d00:	b8217ac0 	str	w0, [x22, x1, lsl #2]
   82d04:	91000421 	add	x1, x1, #0x1
   82d08:	f102003f 	cmp	x1, #0x80
   82d0c:	54ffff81 	b.ne	82cfc <sd_readsector+0xd0>  // b.any
   82d10:	d0000000 	adrp	x0, 84000 <__func__.2797+0xc78>
   82d14:	f9450800 	ldr	x0, [x0, #2576]
   82d18:	52804013 	mov	w19, #0x200                 	// #512
   82d1c:	f100001f 	cmp	x0, #0x0
   82d20:	1a9313f3 	csel	w19, wzr, w19, ne  // ne = any
   82d24:	17ffffcf 	b	82c60 <sd_readsector+0x34>
   82d28:	d0000001 	adrp	x1, 84000 <__func__.2797+0xc78>
   82d2c:	93407c00 	sxtw	x0, w0
   82d30:	f9050820 	str	x0, [x1, #2576]
   82d34:	17ffffcb 	b	82c60 <sd_readsector+0x34>

0000000000082d38 <sd_init>:
   82d38:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
   82d3c:	d2800203 	mov	x3, #0x10                  	// #16
   82d40:	f2a7e403 	movk	x3, #0x3f20, lsl #16
   82d44:	910003fd 	mov	x29, sp
   82d48:	b9400060 	ldr	w0, [x3]
   82d4c:	d2801282 	mov	x2, #0x94                  	// #148
   82d50:	f2a7e402 	movk	x2, #0x3f20, lsl #16
   82d54:	a90153f3 	stp	x19, x20, [sp, #16]
   82d58:	52800044 	mov	w4, #0x2                   	// #2
   82d5c:	a9025bf5 	stp	x21, x22, [sp, #32]
   82d60:	2a0003e0 	mov	w0, w0
   82d64:	a90363f7 	stp	x23, x24, [sp, #48]
   82d68:	9268f000 	and	x0, x0, #0xffffffffff1fffff
   82d6c:	a9046bf9 	stp	x25, x26, [sp, #64]
   82d70:	d2800593 	mov	x19, #0x2c                  	// #44
   82d74:	f2a7e613 	movk	x19, #0x3f30, lsl #16
   82d78:	f9002bfb 	str	x27, [sp, #80]
   82d7c:	d284e215 	mov	x21, #0x2710                	// #10000
   82d80:	b9000060 	str	w0, [x3]
   82d84:	528012c0 	mov	w0, #0x96                  	// #150
   82d88:	b9000044 	str	w4, [x2]
   82d8c:	97ffffa2 	bl	82c14 <atag_display+0x574>
   82d90:	d2801381 	mov	x1, #0x9c                  	// #156
   82d94:	f2a7e401 	movk	x1, #0x3f20, lsl #16
   82d98:	52900000 	mov	w0, #0x8000                	// #32768
   82d9c:	b9000020 	str	w0, [x1]
   82da0:	528012c0 	mov	w0, #0x96                  	// #150
   82da4:	97ffff9c 	bl	82c14 <atag_display+0x574>
   82da8:	b900005f 	str	wzr, [x2]
   82dac:	b900003f 	str	wzr, [x1]
   82db0:	d2800d05 	mov	x5, #0x68                  	// #104
   82db4:	f2a7e405 	movk	x5, #0x3f20, lsl #16
   82db8:	b94000a0 	ldr	w0, [x5]
   82dbc:	32110000 	orr	w0, w0, #0x8000
   82dc0:	b90000a0 	str	w0, [x5]
   82dc4:	b9400060 	ldr	w0, [x3]
   82dc8:	32081400 	orr	w0, w0, #0x3f000000
   82dcc:	b9000060 	str	w0, [x3]
   82dd0:	b9000044 	str	w4, [x2]
   82dd4:	528012c0 	mov	w0, #0x96                  	// #150
   82dd8:	97ffff8f 	bl	82c14 <atag_display+0x574>
   82ddc:	52a00060 	mov	w0, #0x30000               	// #196608
   82de0:	b9000020 	str	w0, [x1]
   82de4:	528012c0 	mov	w0, #0x96                  	// #150
   82de8:	97ffff8b 	bl	82c14 <atag_display+0x574>
   82dec:	b900005f 	str	wzr, [x2]
   82df0:	b900003f 	str	wzr, [x1]
   82df4:	d2800283 	mov	x3, #0x14                  	// #20
   82df8:	f2a7e403 	movk	x3, #0x3f20, lsl #16
   82dfc:	b9400060 	ldr	w0, [x3]
   82e00:	32002c00 	orr	w0, w0, #0xfff
   82e04:	b9000060 	str	w0, [x3]
   82e08:	b9000044 	str	w4, [x2]
   82e0c:	528012c0 	mov	w0, #0x96                  	// #150
   82e10:	97ffff81 	bl	82c14 <atag_display+0x574>
   82e14:	52a00780 	mov	w0, #0x3c0000              	// #3932160
   82e18:	b9000020 	str	w0, [x1]
   82e1c:	528012c0 	mov	w0, #0x96                  	// #150
   82e20:	97ffff7d 	bl	82c14 <atag_display+0x574>
   82e24:	b900005f 	str	wzr, [x2]
   82e28:	b900003f 	str	wzr, [x1]
   82e2c:	d2801f80 	mov	x0, #0xfc                  	// #252
   82e30:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82e34:	d0000014 	adrp	x20, 84000 <__func__.2797+0xc78>
   82e38:	9120e281 	add	x1, x20, #0x838
   82e3c:	b9400000 	ldr	w0, [x0]
   82e40:	d3505c00 	ubfx	x0, x0, #16, #8
   82e44:	f9000420 	str	x0, [x1, #8]
   82e48:	d2800500 	mov	x0, #0x28                  	// #40
   82e4c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82e50:	b900001f 	str	wzr, [x0]
   82e54:	b9400260 	ldr	w0, [x19]
   82e58:	32080000 	orr	w0, w0, #0x1000000
   82e5c:	b9000260 	str	w0, [x19]
   82e60:	52800140 	mov	w0, #0xa                   	// #10
   82e64:	97fffc39 	bl	81f48 <wait_micros>
   82e68:	b9400260 	ldr	w0, [x19]
   82e6c:	36c001a0 	tbz	w0, #24, 82ea0 <sd_init+0x168>
   82e70:	d10006b5 	sub	x21, x21, #0x1
   82e74:	b10006bf 	cmn	x21, #0x1
   82e78:	54ffff41 	b.ne	82e60 <sd_init+0x128>  // b.any
   82e7c:	12800033 	mov	w19, #0xfffffffe            	// #-2
   82e80:	2a1303e0 	mov	w0, w19
   82e84:	f9402bfb 	ldr	x27, [sp, #80]
   82e88:	a94153f3 	ldp	x19, x20, [sp, #16]
   82e8c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82e90:	a94363f7 	ldp	x23, x24, [sp, #48]
   82e94:	a9446bf9 	ldp	x25, x26, [sp, #64]
   82e98:	a8c67bfd 	ldp	x29, x30, [sp], #96
   82e9c:	d65f03c0 	ret
   82ea0:	b4fffef5 	cbz	x21, 82e7c <sd_init+0x144>
   82ea4:	b9400260 	ldr	w0, [x19]
   82ea8:	52800021 	mov	w1, #0x1                   	// #1
   82eac:	72a001c1 	movk	w1, #0xe, lsl #16
   82eb0:	2a010000 	orr	w0, w0, w1
   82eb4:	b9000260 	str	w0, [x19]
   82eb8:	52800140 	mov	w0, #0xa                   	// #10
   82ebc:	97fffc23 	bl	81f48 <wait_micros>
   82ec0:	52835000 	mov	w0, #0x1a80                	// #6784
   82ec4:	72a000c0 	movk	w0, #0x6, lsl #16
   82ec8:	97ffff00 	bl	82ac8 <atag_display+0x428>
   82ecc:	2a0003f3 	mov	w19, w0
   82ed0:	35fffd80 	cbnz	w0, 82e80 <sd_init+0x148>
   82ed4:	d2800702 	mov	x2, #0x38                  	// #56
   82ed8:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   82edc:	12800001 	mov	w1, #0xffffffff            	// #-1
   82ee0:	d0000015 	adrp	x21, 84000 <__func__.2797+0xc78>
   82ee4:	b9000041 	str	w1, [x2]
   82ee8:	d2800682 	mov	x2, #0x34                  	// #52
   82eec:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   82ef0:	aa1503f7 	mov	x23, x21
   82ef4:	b9000041 	str	w1, [x2]
   82ef8:	9120e281 	add	x1, x20, #0x838
   82efc:	f9050abf 	str	xzr, [x21, #2576]
   82f00:	f9041e9f 	str	xzr, [x20, #2104]
   82f04:	a9017c3f 	stp	xzr, xzr, [x1, #16]
   82f08:	52800001 	mov	w1, #0x0                   	// #0
   82f0c:	97fffe80 	bl	8290c <atag_display+0x26c>
   82f10:	f9450ab3 	ldr	x19, [x21, #2576]
   82f14:	b5fffb73 	cbnz	x19, 82e80 <sd_init+0x148>
   82f18:	52803541 	mov	w1, #0x1aa                 	// #426
   82f1c:	52a10040 	mov	w0, #0x8020000             	// #134348800
   82f20:	97fffe7b 	bl	8290c <atag_display+0x26c>
   82f24:	f9450ab3 	ldr	x19, [x21, #2576]
   82f28:	b5fffad3 	cbnz	x19, 82e80 <sd_init+0x148>
   82f2c:	52900016 	mov	w22, #0x8000                	// #32768
   82f30:	72aa3ff6 	movk	w22, #0x51ff, lsl #16
   82f34:	d28000d5 	mov	x21, #0x6                   	// #6
   82f38:	d2800001 	mov	x1, #0x0                   	// #0
   82f3c:	1400000f 	b	82f78 <sd_init+0x240>
   82f40:	52803200 	mov	w0, #0x190                 	// #400
   82f44:	97ffff34 	bl	82c14 <atag_display+0x574>
   82f48:	2a1603e1 	mov	w1, w22
   82f4c:	52b52040 	mov	w0, #0xa9020000            	// #-1459486720
   82f50:	97fffe6f 	bl	8290c <atag_display+0x26c>
   82f54:	93407c01 	sxtw	x1, w0
   82f58:	36f80100 	tbz	w0, #31, 82f78 <sd_init+0x240>
   82f5c:	7211201f 	tst	w0, #0xff8000
   82f60:	540000c0 	b.eq	82f78 <sd_init+0x240>  // b.none
   82f64:	36f000a0 	tbz	w0, #30, 82f78 <sd_init+0x240>
   82f68:	f9450af3 	ldr	x19, [x23, #2576]
   82f6c:	d1000660 	sub	x0, x19, #0x1
   82f70:	b1000c1f 	cmn	x0, #0x3
   82f74:	54fff869 	b.ls	82e80 <sd_init+0x148>  // b.plast
   82f78:	b7f80381 	tbnz	x1, #63, 82fe8 <sd_init+0x2b0>
   82f7c:	d10006b5 	sub	x21, x21, #0x1
   82f80:	b10006bf 	cmn	x21, #0x1
   82f84:	54fffde1 	b.ne	82f40 <sd_init+0x208>  // b.any
   82f88:	12800013 	mov	w19, #0xffffffff            	// #-1
   82f8c:	17ffffbd 	b	82e80 <sd_init+0x148>
   82f90:	52800020 	mov	w0, #0x1                   	// #1
   82f94:	97fffbed 	bl	81f48 <wait_micros>
   82f98:	aa1603e0 	mov	x0, x22
   82f9c:	aa0003f6 	mov	x22, x0
   82fa0:	14000043 	b	830ac <sd_init+0x374>
   82fa4:	d2800501 	mov	x1, #0x28                  	// #40
   82fa8:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   82fac:	b9400020 	ldr	w0, [x1]
   82fb0:	321f0000 	orr	w0, w0, #0x2
   82fb4:	b9000020 	str	w0, [x1]
   82fb8:	9120e281 	add	x1, x20, #0x838
   82fbc:	f9400820 	ldr	x0, [x1, #16]
   82fc0:	36c80080 	tbz	w0, #25, 82fd0 <sd_init+0x298>
   82fc4:	b4000078 	cbz	x24, 82fd0 <sd_init+0x298>
   82fc8:	927ff800 	and	x0, x0, #0xfffffffffffffffe
   82fcc:	f9000820 	str	x0, [x1, #16]
   82fd0:	9120e294 	add	x20, x20, #0x838
   82fd4:	92401ea1 	and	x1, x21, #0xff
   82fd8:	f9400a95 	ldr	x21, [x20, #16]
   82fdc:	aa0102a1 	orr	x1, x21, x1
   82fe0:	f9000a81 	str	x1, [x20, #16]
   82fe4:	17ffffa7 	b	82e80 <sd_init+0x148>
   82fe8:	b4fffd15 	cbz	x21, 82f88 <sd_init+0x250>
   82fec:	f271203f 	tst	x1, #0xff8000
   82ff0:	54fff460 	b.eq	82e7c <sd_init+0x144>  // b.none
   82ff4:	92620038 	and	x24, x1, #0x40000000
   82ff8:	531e7835 	ubfx	w21, w1, #30, #1
   82ffc:	52a04020 	mov	w0, #0x2010000             	// #33619968
   83000:	52800001 	mov	w1, #0x0                   	// #0
   83004:	97fffe42 	bl	8290c <atag_display+0x26c>
   83008:	52800001 	mov	w1, #0x0                   	// #0
   8300c:	52a06040 	mov	w0, #0x3020000             	// #50462720
   83010:	97fffe3f 	bl	8290c <atag_display+0x26c>
   83014:	f9450af3 	ldr	x19, [x23, #2576]
   83018:	93407c00 	sxtw	x0, w0
   8301c:	f9041e80 	str	x0, [x20, #2104]
   83020:	b5fff313 	cbnz	x19, 82e80 <sd_init+0x148>
   83024:	528f0800 	mov	w0, #0x7840                	// #30784
   83028:	72a02fa0 	movk	w0, #0x17d, lsl #16
   8302c:	97fffea7 	bl	82ac8 <atag_display+0x428>
   83030:	2a0003f3 	mov	w19, w0
   83034:	35fff260 	cbnz	w0, 82e80 <sd_init+0x148>
   83038:	b9483a81 	ldr	w1, [x20, #2104]
   8303c:	52a0e060 	mov	w0, #0x7030000             	// #117637120
   83040:	97fffe33 	bl	8290c <atag_display+0x26c>
   83044:	f9450af3 	ldr	x19, [x23, #2576]
   83048:	b5fff1d3 	cbnz	x19, 82e80 <sd_init+0x148>
   8304c:	52800040 	mov	w0, #0x2                   	// #2
   83050:	97fffdd5 	bl	827a4 <atag_display+0x104>
   83054:	35fff9a0 	cbnz	w0, 82f88 <sd_init+0x250>
   83058:	d2800080 	mov	x0, #0x4                   	// #4
   8305c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   83060:	52800101 	mov	w1, #0x8                   	// #8
   83064:	72a00021 	movk	w1, #0x1, lsl #16
   83068:	b9000001 	str	w1, [x0]
   8306c:	52800001 	mov	w1, #0x0                   	// #0
   83070:	52800200 	mov	w0, #0x10                  	// #16
   83074:	72b66440 	movk	w0, #0xb322, lsl #16
   83078:	97fffe25 	bl	8290c <atag_display+0x26c>
   8307c:	f9450af3 	ldr	x19, [x23, #2576]
   83080:	b5fff013 	cbnz	x19, 82e80 <sd_init+0x148>
   83084:	52800400 	mov	w0, #0x20                  	// #32
   83088:	97fffdf1 	bl	8284c <atag_display+0x1ac>
   8308c:	2a0003f3 	mov	w19, w0
   83090:	35fff7c0 	cbnz	w0, 82f88 <sd_init+0x250>
   83094:	9120e299 	add	x25, x20, #0x838
   83098:	d280049a 	mov	x26, #0x24                  	// #36
   8309c:	f2a7e61a 	movk	x26, #0x3f30, lsl #16
   830a0:	d280041b 	mov	x27, #0x20                  	// #32
   830a4:	f2a7e61b 	movk	x27, #0x3f30, lsl #16
   830a8:	d2800016 	mov	x22, #0x0                   	// #0
   830ac:	b9400340 	ldr	w0, [x26]
   830b0:	365ff700 	tbz	w0, #11, 82f90 <sd_init+0x258>
   830b4:	910006c0 	add	x0, x22, #0x1
   830b8:	b9400361 	ldr	w1, [x27]
   830bc:	8b160f36 	add	x22, x25, x22, lsl #3
   830c0:	f100081f 	cmp	x0, #0x2
   830c4:	2a0103e1 	mov	w1, w1
   830c8:	f9000ac1 	str	x1, [x22, #16]
   830cc:	54fff681 	b.ne	82f9c <sd_init+0x264>  // b.any
   830d0:	f9400b20 	ldr	x0, [x25, #16]
   830d4:	3657f720 	tbz	w0, #10, 82fb8 <sd_init+0x280>
   830d8:	f9400321 	ldr	x1, [x25]
   830dc:	52b0c040 	mov	w0, #0x86020000            	// #-2046689280
   830e0:	321f0021 	orr	w1, w1, #0x2
   830e4:	97fffe0a 	bl	8290c <atag_display+0x26c>
   830e8:	f9450ae0 	ldr	x0, [x23, #2576]
   830ec:	b4fff5c0 	cbz	x0, 82fa4 <sd_init+0x26c>
   830f0:	2a0003f3 	mov	w19, w0
   830f4:	17ffff63 	b	82e80 <sd_init+0x148>

Disassembly of section .rodata:

00000000000830f8 <__func__.2928>:
   830f8:	6e72656b 	.word	0x6e72656b
   830fc:	6d5f6c65 	.word	0x6d5f6c65
   83100:	006e6961 	.word	0x006e6961
   83104:	00000000 	.word	0x00000000
   83108:	74617473 	.word	0x74617473
   8310c:	203d2065 	.word	0x203d2065
   83110:	000a312d 	.word	0x000a312d
   83114:	00000000 	.word	0x00000000
   83118:	74617473 	.word	0x74617473
   8311c:	203d2065 	.word	0x203d2065
   83120:	0000322d 	.word	0x0000322d
   83124:	00000000 	.word	0x00000000
   83128:	276e6143 	.word	0x276e6143
   8312c:	6e692074 	.word	0x6e692074
   83130:	61697469 	.word	0x61697469
   83134:	657a696c 	.word	0x657a696c
   83138:	20445320 	.word	0x20445320
   8313c:	64726163 	.word	0x64726163
   83140:	00000021 	.word	0x00000021
   83144:	00000000 	.word	0x00000000
   83148:	2f637273 	.word	0x2f637273
   8314c:	69616d6b 	.word	0x69616d6b
   83150:	00632e6e 	.word	0x00632e6e
   83154:	00000000 	.word	0x00000000

0000000000083158 <__func__.2946>:
   83158:	33746166 	.word	0x33746166
   8315c:	6e695f32 	.word	0x6e695f32
   83160:	00007469 	.word	0x00007469
   83164:	00000000 	.word	0x00000000

0000000000083168 <__func__.2990>:
   83168:	33746166 	.word	0x33746166
   8316c:	69665f32 	.word	0x69665f32
   83170:	655f646e 	.word	0x655f646e
   83174:	7972746e 	.word	0x7972746e
	...

0000000000083180 <__func__.3023>:
   83180:	33746166 	.word	0x33746166
   83184:	706f5f32 	.word	0x706f5f32
   83188:	00006e65 	.word	0x00006e65
   8318c:	00000000 	.word	0x00000000
   83190:	64616572 	.word	0x64616572
   83194:	20676e69 	.word	0x20676e69
   83198:	2e72626d 	.word	0x2e72626d
   8319c:	00002e2e 	.word	0x00002e2e
   831a0:	74726150 	.word	0x74726150
   831a4:	6f697469 	.word	0x6f697469
   831a8:	6425206e 	.word	0x6425206e
   831ac:	00000a3a 	.word	0x00000a3a
   831b0:	6f6f6209 	.word	0x6f6f6209
   831b4:	6e692074 	.word	0x6e692074
   831b8:	61636964 	.word	0x61636964
   831bc:	20726f74 	.word	0x20726f74
   831c0:	7830203d 	.word	0x7830203d
   831c4:	202c7825 	.word	0x202c7825
	...
   831d0:	74726170 	.word	0x74726170
   831d4:	6f697469 	.word	0x6f697469
   831d8:	7974206e 	.word	0x7974206e
   831dc:	3d206570 	.word	0x3d206570
   831e0:	25783020 	.word	0x25783020
   831e4:	000a2c78 	.word	0x000a2c78
   831e8:	61747309 	.word	0x61747309
   831ec:	73207472 	.word	0x73207472
   831f0:	6f746365 	.word	0x6f746365
   831f4:	203d2072 	.word	0x203d2072
   831f8:	202c6425 	.word	0x202c6425
   831fc:	00000000 	.word	0x00000000
   83200:	74726170 	.word	0x74726170
   83204:	6f697469 	.word	0x6f697469
   83208:	6973206e 	.word	0x6973206e
   8320c:	3d20657a 	.word	0x3d20657a
   83210:	0a642520 	.word	0x0a642520
   83214:	00000000 	.word	0x00000000
   83218:	6f727245 	.word	0x6f727245
   8321c:	6e692072 	.word	0x6e692072
   83220:	6c6c6120 	.word	0x6c6c6120
   83224:	7461636f 	.word	0x7461636f
   83228:	20676e69 	.word	0x20676e69
   8322c:	6f6d656d 	.word	0x6f6d656d
   83230:	66207972 	.word	0x66207972
   83234:	4620726f 	.word	0x4620726f
   83238:	32335441 	.word	0x32335441
   8323c:	73797320 	.word	0x73797320
   83240:	216d6574 	.word	0x216d6574
   83244:	0000000a 	.word	0x0000000a
   83248:	2f637273 	.word	0x2f637273
   8324c:	33746166 	.word	0x33746166
   83250:	00632e32 	.word	0x00632e32
   83254:	00000000 	.word	0x00000000
   83258:	6d206f4e 	.word	0x6d206f4e
   8325c:	726f6d65 	.word	0x726f6d65
   83260:	76612079 	.word	0x76612079
   83264:	616c6961 	.word	0x616c6961
   83268:	21656c62 	.word	0x21656c62
   8326c:	0000000a 	.word	0x0000000a
   83270:	68746170 	.word	0x68746170
   83274:	20736920 	.word	0x20736920
   83278:	4c4c554e 	.word	0x4c4c554e
   8327c:	00000a21 	.word	0x00000a21
   83280:	0000002f 	.word	0x0000002f
   83284:	00000000 	.word	0x00000000
   83288:	2d646370 	.word	0x2d646370
   8328c:	7665643e 	.word	0x7665643e
   83290:	2e656369 	.word	0x2e656369
   83294:	64616572 	.word	0x64616572
   83298:	6365735f 	.word	0x6365735f
   8329c:	28726f74 	.word	0x28726f74
   832a0:	6e697528 	.word	0x6e697528
   832a4:	5f323374 	.word	0x5f323374
   832a8:	65732974 	.word	0x65732974
   832ac:	726f7463 	.word	0x726f7463
   832b0:	676f6c5f 	.word	0x676f6c5f
   832b4:	7562202c 	.word	0x7562202c
   832b8:	72656666 	.word	0x72656666
   832bc:	203e2029 	.word	0x203e2029
   832c0:	00000030 	.word	0x00000030
   832c4:	00000000 	.word	0x00000000
   832c8:	2f637273 	.word	0x2f637273
   832cc:	69766564 	.word	0x69766564
   832d0:	632e6563 	.word	0x632e6563
   832d4:	00000000 	.word	0x00000000
   832d8:	2d646370 	.word	0x2d646370
   832dc:	7665643e 	.word	0x7665643e
   832e0:	2e656369 	.word	0x2e656369
   832e4:	64616572 	.word	0x64616572
   832e8:	6365735f 	.word	0x6365735f
   832ec:	28726f74 	.word	0x28726f74
   832f0:	69752828 	.word	0x69752828
   832f4:	3233746e 	.word	0x3233746e
   832f8:	7329745f 	.word	0x7329745f
   832fc:	6f746365 	.word	0x6f746365
   83300:	6f6c5f72 	.word	0x6f6c5f72
   83304:	202d2067 	.word	0x202d2067
   83308:	2d646370 	.word	0x2d646370
   8330c:	7261703e 	.word	0x7261703e
   83310:	74732e74 	.word	0x74732e74
   83314:	29747261 	.word	0x29747261
   83318:	66202a20 	.word	0x66202a20
   8331c:	6f746361 	.word	0x6f746361
   83320:	202d2072 	.word	0x202d2072
   83324:	2d646370 	.word	0x2d646370
   83328:	7261703e 	.word	0x7261703e
   8332c:	74732e74 	.word	0x74732e74
   83330:	2c747261 	.word	0x2c747261
   83334:	66756220 	.word	0x66756220
   83338:	20726566 	.word	0x20726566
   8333c:	5f64202b 	.word	0x5f64202b
   83340:	74636573 	.word	0x74636573
   83344:	735f726f 	.word	0x735f726f
   83348:	29657a69 	.word	0x29657a69
   8334c:	30203e20 	.word	0x30203e20
	...
   83358:	65737341 	.word	0x65737341
   8335c:	6f697472 	.word	0x6f697472
   83360:	6976206e 	.word	0x6976206e
   83364:	74616c6f 	.word	0x74616c6f
   83368:	3a6e6f69 	.word	0x3a6e6f69
   8336c:	6c696620 	.word	0x6c696620
   83370:	25203a65 	.word	0x25203a65
   83374:	6c202c73 	.word	0x6c202c73
   83378:	3a656e69 	.word	0x3a656e69
   8337c:	2c642520 	.word	0x2c642520
   83380:	0a732520 	.word	0x0a732520
   83384:	00000000 	.word	0x00000000

0000000000083388 <__func__.2797>:
   83388:	5f6d656d 	.word	0x5f6d656d
   8338c:	74696e69 	.word	0x74696e69
	...
   83398:	6f6d654d 	.word	0x6f6d654d
   8339c:	6d207972 	.word	0x6d207972
   833a0:	65207061 	.word	0x65207061
   833a4:	726f7272 	.word	0x726f7272
   833a8:	6d5f0a21 	.word	0x6d5f0a21
   833ac:	726f6d65 	.word	0x726f6d65
   833b0:	616d5f79 	.word	0x616d5f79
   833b4:	74732e70 	.word	0x74732e70
   833b8:	20747261 	.word	0x20747261
   833bc:	7825203d 	.word	0x7825203d
   833c0:	6d5f202c 	.word	0x6d5f202c
   833c4:	726f6d65 	.word	0x726f6d65
   833c8:	616d5f79 	.word	0x616d5f79
   833cc:	6e652e70 	.word	0x6e652e70
   833d0:	203d2064 	.word	0x203d2064
   833d4:	000a7825 	.word	0x000a7825
   833d8:	2f637273 	.word	0x2f637273
   833dc:	6c6c616d 	.word	0x6c6c616d
   833e0:	632e636f 	.word	0x632e636f
   833e4:	00000000 	.word	0x00000000
   833e8:	276e6143 	.word	0x276e6143
   833ec:	65662074 	.word	0x65662074
   833f0:	20686374 	.word	0x20686374
   833f4:	47415441 	.word	0x47415441
   833f8:	4d454d5f 	.word	0x4d454d5f
   833fc:	67617420 	.word	0x67617420
   83400:	00000a21 	.word	0x00000a21
	...
   83808:	6d6d6f63 	.word	0x6d6d6f63
   8380c:	20646e61 	.word	0x20646e61
   83810:	74207369 	.word	0x74207369
   83814:	6c206f6f 	.word	0x6c206f6f
   83818:	0a676e6f 	.word	0x0a676e6f
   8381c:	00000000 	.word	0x00000000
   83820:	00000020 	.word	0x00000020
   83824:	00000000 	.word	0x00000000
   83828:	206f6f74 	.word	0x206f6f74
   8382c:	796e616d 	.word	0x796e616d
   83830:	67726120 	.word	0x67726120
   83834:	6e656d75 	.word	0x6e656d75
   83838:	000a7374 	.word	0x000a7374
   8383c:	00000000 	.word	0x00000000
   83840:	00007325 	.word	0x00007325
   83844:	00000000 	.word	0x00000000
   83848:	69206f6e 	.word	0x69206f6e
   8384c:	7475706e 	.word	0x7475706e
   83850:	6c696620 	.word	0x6c696620
   83854:	00000a65 	.word	0x00000a65
   83858:	73206f6e 	.word	0x73206f6e
   8385c:	20686375 	.word	0x20686375
   83860:	656c6966 	.word	0x656c6966
   83864:	20726f20 	.word	0x20726f20
   83868:	65726964 	.word	0x65726964
   8386c:	726f7463 	.word	0x726f7463
   83870:	25203a79 	.word	0x25203a79
   83874:	00000a73 	.word	0x00000a73
   83878:	73277469 	.word	0x73277469
   8387c:	64206120 	.word	0x64206120
   83880:	63657269 	.word	0x63657269
   83884:	79726f74 	.word	0x79726f74
   83888:	7325203a 	.word	0x7325203a
   8388c:	0000000a 	.word	0x0000000a
   83890:	20746f6e 	.word	0x20746f6e
   83894:	69642061 	.word	0x69642061
   83898:	74636572 	.word	0x74636572
   8389c:	3a79726f 	.word	0x3a79726f
   838a0:	0a732520 	.word	0x0a732520
   838a4:	00000000 	.word	0x00000000
   838a8:	00002e2e 	.word	0x00002e2e
   838ac:	00000000 	.word	0x00000000
   838b0:	0000002e 	.word	0x0000002e
   838b4:	00000000 	.word	0x00000000
   838b8:	0000612d 	.word	0x0000612d
   838bc:	00000000 	.word	0x00000000
   838c0:	73206f6e 	.word	0x73206f6e
   838c4:	20686375 	.word	0x20686375
   838c8:	656c6966 	.word	0x656c6966
   838cc:	20666f20 	.word	0x20666f20
   838d0:	65726964 	.word	0x65726964
   838d4:	726f7463 	.word	0x726f7463
   838d8:	25203a79 	.word	0x25203a79
   838dc:	00000a73 	.word	0x00000a73
   838e0:	69207469 	.word	0x69207469
   838e4:	6f6e2073 	.word	0x6f6e2073
   838e8:	20612074 	.word	0x20612074
   838ec:	65726964 	.word	0x65726964
   838f0:	726f7463 	.word	0x726f7463
   838f4:	25203a79 	.word	0x25203a79
   838f8:	00000a73 	.word	0x00000a73
   838fc:	00000000 	.word	0x00000000
   83900:	25207325 	.word	0x25207325
   83904:	64252f64 	.word	0x64252f64
   83908:	0964252f 	.word	0x0964252f
   8390c:	253a6425 	.word	0x253a6425
   83910:	64253a64 	.word	0x64253a64
   83914:	2f642509 	.word	0x2f642509
   83918:	252f6425 	.word	0x252f6425
   8391c:	64250964 	.word	0x64250964
   83920:	3a64253a 	.word	0x3a64253a
   83924:	25096425 	.word	0x25096425
   83928:	73250964 	.word	0x73250964
   8392c:	0000000a 	.word	0x0000000a
   83930:	002d2d2d 	.word	0x002d2d2d
   83934:	00000000 	.word	0x00000000
   83938:	6f686365 	.word	0x6f686365
   8393c:	00000000 	.word	0x00000000
   83940:	67617461 	.word	0x67617461
   83944:	00000000 	.word	0x00000000
   83948:	00006463 	.word	0x00006463
   8394c:	00000000 	.word	0x00000000
   83950:	00746163 	.word	0x00746163
   83954:	00000000 	.word	0x00000000
   83958:	00647770 	.word	0x00647770
   8395c:	00000000 	.word	0x00000000
   83960:	0000736c 	.word	0x0000736c
   83964:	00000000 	.word	0x00000000
   83968:	6e6b6e75 	.word	0x6e6b6e75
   8396c:	6320776f 	.word	0x6320776f
   83970:	616d6d6f 	.word	0x616d6d6f
   83974:	203a646e 	.word	0x203a646e
   83978:	000a7325 	.word	0x000a7325
   8397c:	00000000 	.word	0x00000000
   83980:	e28896e2 	.word	0xe28896e2
   83984:	96e28896 	.word	0x96e28896
   83988:	8896e288 	.word	0x8896e288
   8398c:	e28896e2 	.word	0xe28896e2
   83990:	96e28896 	.word	0x96e28896
   83994:	9795e288 	.word	0x9795e288
   83998:	8896e220 	.word	0x8896e220
   8399c:	e28896e2 	.word	0xe28896e2
   839a0:	20209795 	.word	0x20209795
   839a4:	8896e220 	.word	0x8896e220
   839a8:	e28896e2 	.word	0xe28896e2
   839ac:	e2209795 	.word	0xe2209795
   839b0:	96e28896 	.word	0x96e28896
   839b4:	8896e288 	.word	0x8896e288
   839b8:	e28896e2 	.word	0xe28896e2
   839bc:	96e28896 	.word	0x96e28896
   839c0:	9795e288 	.word	0x9795e288
   839c4:	e28896e2 	.word	0xe28896e2
   839c8:	96e28896 	.word	0x96e28896
   839cc:	8896e288 	.word	0x8896e288
   839d0:	e28896e2 	.word	0xe28896e2
   839d4:	96e28896 	.word	0x96e28896
   839d8:	8896e288 	.word	0x8896e288
   839dc:	209795e2 	.word	0x209795e2
   839e0:	e28896e2 	.word	0xe28896e2
   839e4:	95e28896 	.word	0x95e28896
   839e8:	00000a97 	.word	0x00000a97
   839ec:	00000000 	.word	0x00000000
   839f0:	e28896e2 	.word	0xe28896e2
   839f4:	95e28896 	.word	0x95e28896
   839f8:	9095e294 	.word	0x9095e294
   839fc:	e29095e2 	.word	0xe29095e2
   83a00:	96e29095 	.word	0x96e29095
   83a04:	8896e288 	.word	0x8896e288
   83a08:	e29795e2 	.word	0xe29795e2
   83a0c:	96e28896 	.word	0x96e28896
   83a10:	9195e288 	.word	0x9195e288
   83a14:	e2202020 	.word	0xe2202020
   83a18:	96e28896 	.word	0x96e28896
   83a1c:	9195e288 	.word	0x9195e288
   83a20:	e28896e2 	.word	0xe28896e2
   83a24:	95e28896 	.word	0x95e28896
   83a28:	9095e294 	.word	0x9095e294
   83a2c:	e29095e2 	.word	0xe29095e2
   83a30:	95e29095 	.word	0x95e29095
   83a34:	9d95e290 	.word	0x9d95e290
   83a38:	e29a95e2 	.word	0xe29a95e2
   83a3c:	95e29095 	.word	0x95e29095
   83a40:	8896e290 	.word	0x8896e290
   83a44:	e28896e2 	.word	0xe28896e2
   83a48:	95e29495 	.word	0x95e29495
   83a4c:	9095e290 	.word	0x9095e290
   83a50:	209d95e2 	.word	0x209d95e2
   83a54:	e28896e2 	.word	0xe28896e2
   83a58:	95e28896 	.word	0x95e28896
   83a5c:	00000a91 	.word	0x00000a91
   83a60:	e28896e2 	.word	0xe28896e2
   83a64:	96e28896 	.word	0x96e28896
   83a68:	8896e288 	.word	0x8896e288
   83a6c:	e28896e2 	.word	0xe28896e2
   83a70:	96e28896 	.word	0x96e28896
   83a74:	9495e288 	.word	0x9495e288
   83a78:	e29d95e2 	.word	0xe29d95e2
   83a7c:	96e29a95 	.word	0x96e29a95
   83a80:	8896e288 	.word	0x8896e288
   83a84:	209795e2 	.word	0x209795e2
   83a88:	e28896e2 	.word	0xe28896e2
   83a8c:	95e28896 	.word	0x95e28896
   83a90:	9d95e294 	.word	0x9d95e294
   83a94:	e29a95e2 	.word	0xe29a95e2
   83a98:	96e28896 	.word	0x96e28896
   83a9c:	8896e288 	.word	0x8896e288
   83aa0:	e28896e2 	.word	0xe28896e2
   83aa4:	96e28896 	.word	0x96e28896
   83aa8:	9795e288 	.word	0x9795e288
   83aac:	e2202020 	.word	0xe2202020
   83ab0:	96e28896 	.word	0x96e28896
   83ab4:	9195e288 	.word	0x9195e288
   83ab8:	20202020 	.word	0x20202020
   83abc:	e28896e2 	.word	0xe28896e2
   83ac0:	95e28896 	.word	0x95e28896
   83ac4:	00000a91 	.word	0x00000a91
   83ac8:	e28896e2 	.word	0xe28896e2
   83acc:	95e28896 	.word	0x95e28896
   83ad0:	9095e294 	.word	0x9095e294
   83ad4:	e29095e2 	.word	0xe29095e2
   83ad8:	96e29095 	.word	0x96e29095
   83adc:	8896e288 	.word	0x8896e288
   83ae0:	209795e2 	.word	0x209795e2
   83ae4:	e29a95e2 	.word	0xe29a95e2
   83ae8:	96e28896 	.word	0x96e28896
   83aec:	8896e288 	.word	0x8896e288
   83af0:	e28896e2 	.word	0xe28896e2
   83af4:	95e29495 	.word	0x95e29495
   83af8:	e220209d 	.word	0xe220209d
   83afc:	95e29a95 	.word	0x95e29a95
   83b00:	9095e290 	.word	0x9095e290
   83b04:	e29095e2 	.word	0xe29095e2
   83b08:	96e29095 	.word	0x96e29095
   83b0c:	8896e288 	.word	0x8896e288
   83b10:	209795e2 	.word	0x209795e2
   83b14:	8896e220 	.word	0x8896e220
   83b18:	e28896e2 	.word	0xe28896e2
   83b1c:	20209195 	.word	0x20209195
   83b20:	96e22020 	.word	0x96e22020
   83b24:	8896e288 	.word	0x8896e288
   83b28:	0a9195e2 	.word	0x0a9195e2
   83b2c:	00000000 	.word	0x00000000
   83b30:	e28896e2 	.word	0xe28896e2
   83b34:	96e28896 	.word	0x96e28896
   83b38:	8896e288 	.word	0x8896e288
   83b3c:	e28896e2 	.word	0xe28896e2
   83b40:	96e28896 	.word	0x96e28896
   83b44:	9495e288 	.word	0x9495e288
   83b48:	209d95e2 	.word	0x209d95e2
   83b4c:	9a95e220 	.word	0x9a95e220
   83b50:	e28896e2 	.word	0xe28896e2
   83b54:	95e28896 	.word	0x95e28896
   83b58:	9d95e294 	.word	0x9d95e294
   83b5c:	e2202020 	.word	0xe2202020
   83b60:	96e28896 	.word	0x96e28896
   83b64:	8896e288 	.word	0x8896e288
   83b68:	e28896e2 	.word	0xe28896e2
   83b6c:	96e28896 	.word	0x96e28896
   83b70:	9495e288 	.word	0x9495e288
   83b74:	209d95e2 	.word	0x209d95e2
   83b78:	8896e220 	.word	0x8896e220
   83b7c:	e28896e2 	.word	0xe28896e2
   83b80:	20209195 	.word	0x20209195
   83b84:	96e22020 	.word	0x96e22020
   83b88:	8896e288 	.word	0x8896e288
   83b8c:	e28896e2 	.word	0xe28896e2
   83b90:	96e28896 	.word	0x96e28896
   83b94:	8896e288 	.word	0x8896e288
   83b98:	e28896e2 	.word	0xe28896e2
   83b9c:	000a9795 	.word	0x000a9795
   83ba0:	e29a95e2 	.word	0xe29a95e2
   83ba4:	95e29095 	.word	0x95e29095
   83ba8:	9095e290 	.word	0x9095e290
   83bac:	e29095e2 	.word	0xe29095e2
   83bb0:	95e29095 	.word	0x95e29095
   83bb4:	9d95e290 	.word	0x9d95e290
   83bb8:	20202020 	.word	0x20202020
   83bbc:	e29a95e2 	.word	0xe29a95e2
   83bc0:	95e29095 	.word	0x95e29095
   83bc4:	2020209d 	.word	0x2020209d
   83bc8:	9a95e220 	.word	0x9a95e220
   83bcc:	e29095e2 	.word	0xe29095e2
   83bd0:	95e29095 	.word	0x95e29095
   83bd4:	9095e290 	.word	0x9095e290
   83bd8:	e29095e2 	.word	0xe29095e2
   83bdc:	20209d95 	.word	0x20209d95
   83be0:	9a95e220 	.word	0x9a95e220
   83be4:	e29095e2 	.word	0xe29095e2
   83be8:	20209d95 	.word	0x20209d95
   83bec:	95e22020 	.word	0x95e22020
   83bf0:	9095e29a 	.word	0x9095e29a
   83bf4:	e29095e2 	.word	0xe29095e2
   83bf8:	95e29095 	.word	0x95e29095
   83bfc:	9095e290 	.word	0x9095e290
   83c00:	e29095e2 	.word	0xe29095e2
   83c04:	000a9d95 	.word	0x000a9d95
   83c08:	e28896e2 	.word	0xe28896e2
   83c0c:	96e28896 	.word	0x96e28896
   83c10:	8896e288 	.word	0x8896e288
   83c14:	e28896e2 	.word	0xe28896e2
   83c18:	96e28896 	.word	0x96e28896
   83c1c:	9795e288 	.word	0x9795e288
   83c20:	8896e220 	.word	0x8896e220
   83c24:	e28896e2 	.word	0xe28896e2
   83c28:	96e28896 	.word	0x96e28896
   83c2c:	9795e288 	.word	0x9795e288
   83c30:	e28896e2 	.word	0xe28896e2
   83c34:	95e28896 	.word	0x95e28896
   83c38:	20202097 	.word	0x20202097
   83c3c:	e28896e2 	.word	0xe28896e2
   83c40:	95e28896 	.word	0x95e28896
   83c44:	8896e297 	.word	0x8896e297
   83c48:	e28896e2 	.word	0xe28896e2
   83c4c:	96e28896 	.word	0x96e28896
   83c50:	9795e288 	.word	0x9795e288
   83c54:	8896e220 	.word	0x8896e220
   83c58:	e28896e2 	.word	0xe28896e2
   83c5c:	96e28896 	.word	0x96e28896
   83c60:	8896e288 	.word	0x8896e288
   83c64:	e28896e2 	.word	0xe28896e2
   83c68:	96e29795 	.word	0x96e29795
   83c6c:	8896e288 	.word	0x8896e288
   83c70:	e28896e2 	.word	0xe28896e2
   83c74:	96e28896 	.word	0x96e28896
   83c78:	8896e288 	.word	0x8896e288
   83c7c:	e28896e2 	.word	0xe28896e2
   83c80:	95e28896 	.word	0x95e28896
   83c84:	96e22097 	.word	0x96e22097
   83c88:	8896e288 	.word	0x8896e288
   83c8c:	e28896e2 	.word	0xe28896e2
   83c90:	95e28896 	.word	0x95e28896
   83c94:	e2202097 	.word	0xe2202097
   83c98:	96e28896 	.word	0x96e28896
   83c9c:	9795e288 	.word	0x9795e288
   83ca0:	e2202020 	.word	0xe2202020
   83ca4:	96e28896 	.word	0x96e28896
   83ca8:	9795e288 	.word	0x9795e288
   83cac:	96e22020 	.word	0x96e22020
   83cb0:	8896e288 	.word	0x8896e288
   83cb4:	e28896e2 	.word	0xe28896e2
   83cb8:	95e28896 	.word	0x95e28896
   83cbc:	e2202097 	.word	0xe2202097
   83cc0:	96e28896 	.word	0x96e28896
   83cc4:	9795e288 	.word	0x9795e288
   83cc8:	0000000a 	.word	0x0000000a
   83ccc:	00000000 	.word	0x00000000
   83cd0:	e28896e2 	.word	0xe28896e2
   83cd4:	95e28896 	.word	0x95e28896
   83cd8:	9095e294 	.word	0x9095e294
   83cdc:	e29095e2 	.word	0xe29095e2
   83ce0:	96e29095 	.word	0x96e29095
   83ce4:	8896e288 	.word	0x8896e288
   83ce8:	e29795e2 	.word	0xe29795e2
   83cec:	96e29a95 	.word	0x96e29a95
   83cf0:	8896e288 	.word	0x8896e288
   83cf4:	e29495e2 	.word	0xe29495e2
   83cf8:	96e29d95 	.word	0x96e29d95
   83cfc:	8896e288 	.word	0x8896e288
   83d00:	209195e2 	.word	0x209195e2
   83d04:	96e22020 	.word	0x96e22020
   83d08:	8896e288 	.word	0x8896e288
   83d0c:	e29195e2 	.word	0xe29195e2
   83d10:	96e29a95 	.word	0x96e29a95
   83d14:	8896e288 	.word	0x8896e288
   83d18:	e29495e2 	.word	0xe29495e2
   83d1c:	96e29d95 	.word	0x96e29d95
   83d20:	8896e288 	.word	0x8896e288
   83d24:	e29495e2 	.word	0xe29495e2
   83d28:	95e29095 	.word	0x95e29095
   83d2c:	9095e290 	.word	0x9095e290
   83d30:	e29095e2 	.word	0xe29095e2
   83d34:	95e29d95 	.word	0x95e29d95
   83d38:	9095e29a 	.word	0x9095e29a
   83d3c:	e29095e2 	.word	0xe29095e2
   83d40:	96e28896 	.word	0x96e28896
   83d44:	9495e288 	.word	0x9495e288
   83d48:	e29095e2 	.word	0xe29095e2
   83d4c:	95e29095 	.word	0x95e29095
   83d50:	8896e29d 	.word	0x8896e29d
   83d54:	e28896e2 	.word	0xe28896e2
   83d58:	95e29495 	.word	0x95e29495
   83d5c:	8896e290 	.word	0x8896e290
   83d60:	e28896e2 	.word	0xe28896e2
   83d64:	e2209795 	.word	0xe2209795
   83d68:	96e28896 	.word	0x96e28896
   83d6c:	9195e288 	.word	0x9195e288
   83d70:	e2202020 	.word	0xe2202020
   83d74:	96e28896 	.word	0x96e28896
   83d78:	9195e288 	.word	0x9195e288
   83d7c:	8896e220 	.word	0x8896e220
   83d80:	e28896e2 	.word	0xe28896e2
   83d84:	95e29495 	.word	0x95e29495
   83d88:	8896e290 	.word	0x8896e290
   83d8c:	e28896e2 	.word	0xe28896e2
   83d90:	e2209795 	.word	0xe2209795
   83d94:	96e28896 	.word	0x96e28896
   83d98:	9195e288 	.word	0x9195e288
   83d9c:	0000000a 	.word	0x0000000a
   83da0:	e28896e2 	.word	0xe28896e2
   83da4:	96e28896 	.word	0x96e28896
   83da8:	8896e288 	.word	0x8896e288
   83dac:	e28896e2 	.word	0xe28896e2
   83db0:	96e28896 	.word	0x96e28896
   83db4:	9495e288 	.word	0x9495e288
   83db8:	209d95e2 	.word	0x209d95e2
   83dbc:	e28896e2 	.word	0xe28896e2
   83dc0:	95e28896 	.word	0x95e28896
   83dc4:	95e22091 	.word	0x95e22091
   83dc8:	8896e29a 	.word	0x8896e29a
   83dcc:	e28896e2 	.word	0xe28896e2
   83dd0:	e2209795 	.word	0xe2209795
   83dd4:	96e28896 	.word	0x96e28896
   83dd8:	9495e288 	.word	0x9495e288
   83ddc:	209d95e2 	.word	0x209d95e2
   83de0:	e28896e2 	.word	0xe28896e2
   83de4:	95e28896 	.word	0x95e28896
   83de8:	95e22091 	.word	0x95e22091
   83dec:	8896e29a 	.word	0x8896e29a
   83df0:	e28896e2 	.word	0xe28896e2
   83df4:	96e28896 	.word	0x96e28896
   83df8:	8896e288 	.word	0x8896e288
   83dfc:	e28896e2 	.word	0xe28896e2
   83e00:	20209795 	.word	0x20209795
   83e04:	8896e220 	.word	0x8896e220
   83e08:	e28896e2 	.word	0xe28896e2
   83e0c:	20209195 	.word	0x20209195
   83e10:	e28896e2 	.word	0xe28896e2
   83e14:	95e28896 	.word	0x95e28896
   83e18:	9d95e294 	.word	0x9d95e294
   83e1c:	9a95e220 	.word	0x9a95e220
   83e20:	e28896e2 	.word	0xe28896e2
   83e24:	95e28896 	.word	0x95e28896
   83e28:	8896e297 	.word	0x8896e297
   83e2c:	e28896e2 	.word	0xe28896e2
   83e30:	20209195 	.word	0x20209195
   83e34:	8896e220 	.word	0x8896e220
   83e38:	e28896e2 	.word	0xe28896e2
   83e3c:	96e29195 	.word	0x96e29195
   83e40:	8896e288 	.word	0x8896e288
   83e44:	e29495e2 	.word	0xe29495e2
   83e48:	e2209d95 	.word	0xe2209d95
   83e4c:	96e29a95 	.word	0x96e29a95
   83e50:	8896e288 	.word	0x8896e288
   83e54:	e29795e2 	.word	0xe29795e2
   83e58:	96e28896 	.word	0x96e28896
   83e5c:	9195e288 	.word	0x9195e288
   83e60:	0000000a 	.word	0x0000000a
   83e64:	00000000 	.word	0x00000000
   83e68:	e28896e2 	.word	0xe28896e2
   83e6c:	95e28896 	.word	0x95e28896
   83e70:	9095e294 	.word	0x9095e294
   83e74:	e29095e2 	.word	0xe29095e2
   83e78:	96e29095 	.word	0x96e29095
   83e7c:	8896e288 	.word	0x8896e288
   83e80:	209795e2 	.word	0x209795e2
   83e84:	e28896e2 	.word	0xe28896e2
   83e88:	95e28896 	.word	0x95e28896
   83e8c:	e2202091 	.word	0xe2202091
   83e90:	96e29a95 	.word	0x96e29a95
   83e94:	8896e288 	.word	0x8896e288
   83e98:	e28896e2 	.word	0xe28896e2
   83e9c:	95e28896 	.word	0x95e28896
   83ea0:	9d95e294 	.word	0x9d95e294
   83ea4:	96e22020 	.word	0x96e22020
   83ea8:	8896e288 	.word	0x8896e288
   83eac:	209195e2 	.word	0x209195e2
   83eb0:	9a95e220 	.word	0x9a95e220
   83eb4:	e29095e2 	.word	0xe29095e2
   83eb8:	95e29095 	.word	0x95e29095
   83ebc:	9095e290 	.word	0x9095e290
   83ec0:	e28896e2 	.word	0xe28896e2
   83ec4:	95e28896 	.word	0x95e28896
   83ec8:	e2202097 	.word	0xe2202097
   83ecc:	96e28896 	.word	0x96e28896
   83ed0:	9195e288 	.word	0x9195e288
   83ed4:	96e22020 	.word	0x96e22020
   83ed8:	8896e288 	.word	0x8896e288
   83edc:	e28896e2 	.word	0xe28896e2
   83ee0:	96e28896 	.word	0x96e28896
   83ee4:	8896e288 	.word	0x8896e288
   83ee8:	e28896e2 	.word	0xe28896e2
   83eec:	95e28896 	.word	0x95e28896
   83ef0:	8896e291 	.word	0x8896e291
   83ef4:	e28896e2 	.word	0xe28896e2
   83ef8:	20209195 	.word	0x20209195
   83efc:	8896e220 	.word	0x8896e220
   83f00:	e28896e2 	.word	0xe28896e2
   83f04:	96e29195 	.word	0x96e29195
   83f08:	8896e288 	.word	0x8896e288
   83f0c:	e28896e2 	.word	0xe28896e2
   83f10:	96e28896 	.word	0x96e28896
   83f14:	8896e288 	.word	0x8896e288
   83f18:	e28896e2 	.word	0xe28896e2
   83f1c:	95e28896 	.word	0x95e28896
   83f20:	8896e291 	.word	0x8896e291
   83f24:	e28896e2 	.word	0xe28896e2
   83f28:	000a9195 	.word	0x000a9195
   83f2c:	00000000 	.word	0x00000000
   83f30:	e28896e2 	.word	0xe28896e2
   83f34:	96e28896 	.word	0x96e28896
   83f38:	8896e288 	.word	0x8896e288
   83f3c:	e28896e2 	.word	0xe28896e2
   83f40:	96e28896 	.word	0x96e28896
   83f44:	9495e288 	.word	0x9495e288
   83f48:	e29d95e2 	.word	0xe29d95e2
   83f4c:	96e28896 	.word	0x96e28896
   83f50:	8896e288 	.word	0x8896e288
   83f54:	e28896e2 	.word	0xe28896e2
   83f58:	20209795 	.word	0x20209795
   83f5c:	e29a95e2 	.word	0xe29a95e2
   83f60:	96e28896 	.word	0x96e28896
   83f64:	9495e288 	.word	0x9495e288
   83f68:	209d95e2 	.word	0x209d95e2
   83f6c:	8896e220 	.word	0x8896e220
   83f70:	e28896e2 	.word	0xe28896e2
   83f74:	96e28896 	.word	0x96e28896
   83f78:	9795e288 	.word	0x9795e288
   83f7c:	8896e220 	.word	0x8896e220
   83f80:	e28896e2 	.word	0xe28896e2
   83f84:	96e28896 	.word	0x96e28896
   83f88:	8896e288 	.word	0x8896e288
   83f8c:	e28896e2 	.word	0xe28896e2
   83f90:	95e29495 	.word	0x95e29495
   83f94:	e220209d 	.word	0xe220209d
   83f98:	96e28896 	.word	0x96e28896
   83f9c:	9195e288 	.word	0x9195e288
   83fa0:	96e22020 	.word	0x96e22020
   83fa4:	8896e288 	.word	0x8896e288
   83fa8:	e29495e2 	.word	0xe29495e2
   83fac:	95e29095 	.word	0x95e29095
   83fb0:	9095e290 	.word	0x9095e290
   83fb4:	e28896e2 	.word	0xe28896e2
   83fb8:	95e28896 	.word	0x95e28896
   83fbc:	9a95e291 	.word	0x9a95e291
   83fc0:	e28896e2 	.word	0xe28896e2
   83fc4:	96e28896 	.word	0x96e28896
   83fc8:	8896e288 	.word	0x8896e288
   83fcc:	e28896e2 	.word	0xe28896e2
   83fd0:	95e28896 	.word	0x95e28896
   83fd4:	9d95e294 	.word	0x9d95e294
   83fd8:	e28896e2 	.word	0xe28896e2
   83fdc:	95e28896 	.word	0x95e28896
   83fe0:	9095e294 	.word	0x9095e294
   83fe4:	e29095e2 	.word	0xe29095e2
   83fe8:	96e29095 	.word	0x96e29095
   83fec:	8896e288 	.word	0x8896e288
   83ff0:	e29195e2 	.word	0xe29195e2
   83ff4:	96e28896 	.word	0x96e28896
   83ff8:	8896e288 	.word	0x8896e288
   83ffc:	e28896e2 	.word	0xe28896e2
   84000:	96e28896 	.word	0x96e28896
   84004:	8896e288 	.word	0x8896e288
   84008:	0a9795e2 	.word	0x0a9795e2
   8400c:	00000000 	.word	0x00000000
   84010:	e29a95e2 	.word	0xe29a95e2
   84014:	95e29095 	.word	0x95e29095
   84018:	9095e290 	.word	0x9095e290
   8401c:	e29095e2 	.word	0xe29095e2
   84020:	95e29095 	.word	0x95e29095
   84024:	9d95e290 	.word	0x9d95e290
   84028:	9a95e220 	.word	0x9a95e220
   8402c:	e29095e2 	.word	0xe29095e2
   84030:	95e29095 	.word	0x95e29095
   84034:	9d95e290 	.word	0x9d95e290
   84038:	e2202020 	.word	0xe2202020
   8403c:	95e29a95 	.word	0x95e29a95
   84040:	9d95e290 	.word	0x9d95e290
   84044:	e2202020 	.word	0xe2202020
   84048:	95e29a95 	.word	0x95e29a95
   8404c:	9095e290 	.word	0x9095e290
   84050:	e29095e2 	.word	0xe29095e2
   84054:	e2209d95 	.word	0xe2209d95
   84058:	95e29a95 	.word	0x95e29a95
   8405c:	9095e290 	.word	0x9095e290
   84060:	e29095e2 	.word	0xe29095e2
   84064:	95e29095 	.word	0x95e29095
   84068:	9d95e290 	.word	0x9d95e290
   8406c:	e2202020 	.word	0xe2202020
   84070:	95e29a95 	.word	0x95e29a95
   84074:	9d95e290 	.word	0x9d95e290
   84078:	95e22020 	.word	0x95e22020
   8407c:	9095e29a 	.word	0x9095e29a
   84080:	209d95e2 	.word	0x209d95e2
   84084:	95e22020 	.word	0x95e22020
   84088:	9095e29a 	.word	0x9095e29a
   8408c:	209d95e2 	.word	0x209d95e2
   84090:	e29a95e2 	.word	0xe29a95e2
   84094:	95e29095 	.word	0x95e29095
   84098:	9095e290 	.word	0x9095e290
   8409c:	e29095e2 	.word	0xe29095e2
   840a0:	95e29095 	.word	0x95e29095
   840a4:	95e2209d 	.word	0x95e2209d
   840a8:	9095e29a 	.word	0x9095e29a
   840ac:	209d95e2 	.word	0x209d95e2
   840b0:	95e22020 	.word	0x95e22020
   840b4:	9095e29a 	.word	0x9095e29a
   840b8:	e29d95e2 	.word	0xe29d95e2
   840bc:	95e29a95 	.word	0x95e29a95
   840c0:	9095e290 	.word	0x9095e290
   840c4:	e29095e2 	.word	0xe29095e2
   840c8:	95e29095 	.word	0x95e29095
   840cc:	9095e290 	.word	0x9095e290
   840d0:	0a9d95e2 	.word	0x0a9d95e2
   840d4:	00000000 	.word	0x00000000
   840d8:	6c65570a 	.word	0x6c65570a
   840dc:	656d6f63 	.word	0x656d6f63
   840e0:	206f7420 	.word	0x206f7420
   840e4:	70736172 	.word	0x70736172
   840e8:	72726562 	.word	0x72726562
   840ec:	69702079 	.word	0x69702079
   840f0:	20623320 	.word	0x20623320
   840f4:	6c656873 	.word	0x6c656873
   840f8:	0a0a216c 	.word	0x0a0a216c
   840fc:	00000000 	.word	0x00000000
   84100:	29732528 	.word	0x29732528
   84104:	0000203e 	.word	0x0000203e
   84108:	5d695b70 	.word	0x5d695b70
   8410c:	203d3d20 	.word	0x203d3d20
   84110:	00000069 	.word	0x00000069
   84114:	00000000 	.word	0x00000000
   84118:	2f637273 	.word	0x2f637273
   8411c:	6c656873 	.word	0x6c656873
   84120:	00632e6c 	.word	0x00632e6c
   84124:	00000000 	.word	0x00000000
   84128:	695b3270 	.word	0x695b3270
   8412c:	3d3d205d 	.word	0x3d3d205d
   84130:	37323120 	.word	0x37323120
   84134:	69202d20 	.word	0x69202d20
	...
   84140:	3d203370 	.word	0x3d203370
   84144:	0070203d 	.word	0x0070203d
   84148:	5f4d454d 	.word	0x5f4d454d
   8414c:	43554843 	.word	0x43554843
   84150:	49535f4b 	.word	0x49535f4b
   84154:	2828455a 	.word	0x2828455a
   84158:	75727473 	.word	0x75727473
   8415c:	6d207463 	.word	0x6d207463
   84160:	635f6d65 	.word	0x635f6d65
   84164:	6b637568 	.word	0x6b637568
   84168:	70292a20 	.word	0x70292a20
   8416c:	202d2033 	.word	0x202d2033
   84170:	3d202931 	.word	0x3d202931
   84174:	4c41203d 	.word	0x4c41203d
   84178:	5f4e4749 	.word	0x5f4e4749
   8417c:	31285055 	.word	0x31285055
   84180:	2a203732 	.word	0x2a203732
   84184:	7a697320 	.word	0x7a697320
   84188:	28666f65 	.word	0x28666f65
   8418c:	29746e69 	.word	0x29746e69
   84190:	2934202c 	.word	0x2934202c
   84194:	00000000 	.word	0x00000000
   84198:	3d203470 	.word	0x3d203470
   8419c:	3270203d 	.word	0x3270203d
	...
   841a8:	20202020 	.word	0x20202020
   841ac:	20202020 	.word	0x20202020
   841b0:	28202020 	.word	0x28202020
   841b4:	0000000a 	.word	0x0000000a
   841b8:	20202020 	.word	0x20202020
   841bc:	28202020 	.word	0x28202020
   841c0:	20202020 	.word	0x20202020
   841c4:	20202920 	.word	0x20202920
   841c8:	29202020 	.word	0x29202020
   841cc:	0000000a 	.word	0x0000000a
   841d0:	20202020 	.word	0x20202020
   841d4:	20202020 	.word	0x20202020
   841d8:	20202029 	.word	0x20202029
   841dc:	20202028 	.word	0x20202028
   841e0:	000a2820 	.word	0x000a2820
   841e4:	00000000 	.word	0x00000000
   841e8:	20202020 	.word	0x20202020
   841ec:	28202020 	.word	0x28202020
   841f0:	20202020 	.word	0x20202020
   841f4:	20202020 	.word	0x20202020
   841f8:	0a602020 	.word	0x0a602020
   841fc:	00000000 	.word	0x00000000
   84200:	2e202020 	.word	0x2e202020
   84204:	5e22222d 	.word	0x5e22222d
   84208:	5e222222 	.word	0x5e222222
   8420c:	225e2222 	.word	0x225e2222
   84210:	225e2222 	.word	0x225e2222
   84214:	0a2e2d22 	.word	0x0a2e2d22
	...
   84220:	2f2f2820 	.word	0x2f2f2820
   84224:	2f2f5c5c 	.word	0x2f2f5c5c
   84228:	2f2f5c5c 	.word	0x2f2f5c5c
   8422c:	2f2f5c5c 	.word	0x2f2f5c5c
   84230:	2f2f5c5c 	.word	0x2f2f5c5c
   84234:	2f2f5c5c 	.word	0x2f2f5c5c
   84238:	00000a29 	.word	0x00000a29
   8423c:	00000000 	.word	0x00000000
   84240:	5c7e2020 	.word	0x5c7e2020
   84244:	5e5e5e5e 	.word	0x5e5e5e5e
   84248:	5e5e5e5e 	.word	0x5e5e5e5e
   8424c:	5e5e5e5e 	.word	0x5e5e5e5e
   84250:	5e5e5e5e 	.word	0x5e5e5e5e
   84254:	7e2f5e5e 	.word	0x7e2f5e5e
   84258:	0000000a 	.word	0x0000000a
   8425c:	00000000 	.word	0x00000000
   84260:	20202020 	.word	0x20202020
   84264:	3d3d3d60 	.word	0x3d3d3d60
   84268:	3d3d3d3d 	.word	0x3d3d3d3d
   8426c:	3d3d3d3d 	.word	0x3d3d3d3d
   84270:	3d3d3d3d 	.word	0x3d3d3d3d
   84274:	0a0a603d 	.word	0x0a0a603d
	...
   84280:	20202020 	.word	0x20202020
   84284:	20656854 	.word	0x20656854
   84288:	69206970 	.word	0x69206970
   8428c:	766f2073 	.word	0x766f2073
   84290:	6f647265 	.word	0x6f647265
   84294:	0a2e656e 	.word	0x0a2e656e
   84298:	0000000a 	.word	0x0000000a
   8429c:	00000000 	.word	0x00000000
   842a0:	2d2d2d2d 	.word	0x2d2d2d2d
   842a4:	2d2d2d2d 	.word	0x2d2d2d2d
   842a8:	50202d2d 	.word	0x50202d2d
   842ac:	43494e41 	.word	0x43494e41
   842b0:	2d2d2d20 	.word	0x2d2d2d20
   842b4:	2d2d2d2d 	.word	0x2d2d2d2d
   842b8:	0a2d2d2d 	.word	0x0a2d2d2d
   842bc:	0000000a 	.word	0x0000000a
   842c0:	454c4946 	.word	0x454c4946
   842c4:	7325203a 	.word	0x7325203a
   842c8:	0000000a 	.word	0x0000000a
   842cc:	00000000 	.word	0x00000000
   842d0:	454e494c 	.word	0x454e494c
   842d4:	6425203a 	.word	0x6425203a
   842d8:	0000000a 	.word	0x0000000a
   842dc:	00000000 	.word	0x00000000
   842e0:	434e5546 	.word	0x434e5546
   842e4:	7325203a 	.word	0x7325203a
   842e8:	00000a0a 	.word	0x00000a0a
   842ec:	00000000 	.word	0x00000000
   842f0:	54530a0a 	.word	0x54530a0a
   842f4:	204b4341 	.word	0x204b4341
   842f8:	504d5544 	.word	0x504d5544
   842fc:	4f524620 	.word	0x4f524620
   84300:	4441204d 	.word	0x4441204d
   84304:	53455244 	.word	0x53455244
   84308:	78302053 	.word	0x78302053
   8430c:	0a3a7825 	.word	0x0a3a7825
   84310:	0000000a 	.word	0x0000000a
   84314:	00000000 	.word	0x00000000
   84318:	78257830 	.word	0x78257830
   8431c:	00000009 	.word	0x00000009
   84320:	47415441 	.word	0x47415441
   84324:	524f435f 	.word	0x524f435f
   84328:	000a3a45 	.word	0x000a3a45
   8432c:	00000000 	.word	0x00000000
   84330:	616c6609 	.word	0x616c6609
   84334:	3d207367 	.word	0x3d207367
   84338:	2c642520 	.word	0x2c642520
   8433c:	67617020 	.word	0x67617020
   84340:	7a697365 	.word	0x7a697365
   84344:	203d2065 	.word	0x203d2065
   84348:	202c6425 	.word	0x202c6425
   8434c:	746f6f72 	.word	0x746f6f72
   84350:	20766564 	.word	0x20766564
   84354:	6425203d 	.word	0x6425203d
   84358:	0000000a 	.word	0x0000000a
   8435c:	00000000 	.word	0x00000000
   84360:	47415441 	.word	0x47415441
   84364:	4d454d5f 	.word	0x4d454d5f
   84368:	00000a3a 	.word	0x00000a3a
   8436c:	00000000 	.word	0x00000000
   84370:	7a697309 	.word	0x7a697309
   84374:	203d2065 	.word	0x203d2065
   84378:	78257830 	.word	0x78257830
   8437c:	7473202c 	.word	0x7473202c
   84380:	20747261 	.word	0x20747261
   84384:	7830203d 	.word	0x7830203d
   84388:	000a7825 	.word	0x000a7825
   8438c:	00000000 	.word	0x00000000
   84390:	47415441 	.word	0x47415441
   84394:	444d435f 	.word	0x444d435f
   84398:	454e494c 	.word	0x454e494c
   8439c:	00000a3a 	.word	0x00000a3a
   843a0:	646d6309 	.word	0x646d6309
   843a4:	656e696c 	.word	0x656e696c
   843a8:	25203d20 	.word	0x25203d20
   843ac:	00000a73 	.word	0x00000a73
   843b0:	6e6b6e75 	.word	0x6e6b6e75
   843b4:	7420776f 	.word	0x7420776f
   843b8:	203a6761 	.word	0x203a6761
   843bc:	000a6425 	.word	0x000a6425

Disassembly of section .data:

00000000000843c0 <current.2804>:
   843c0:	00084a18 	.word	0x00084a18
   843c4:	00000000 	.word	0x00000000

00000000000843c8 <cwd>:
   843c8:	0000002f 	.word	0x0000002f
	...

Disassembly of section .got:

00000000000847c8 <_GLOBAL_OFFSET_TABLE_>:
	...
   847d0:	00084860 	.word	0x00084860
   847d4:	00000000 	.word	0x00000000
   847d8:	00084a18 	.word	0x00084a18
   847dc:	00000000 	.word	0x00000000
   847e0:	00084870 	.word	0x00084870
   847e4:	00000000 	.word	0x00000000
   847e8:	00084820 	.word	0x00084820
   847ec:	00000000 	.word	0x00000000
   847f0:	00084858 	.word	0x00084858
   847f4:	00000000 	.word	0x00000000
   847f8:	00084a18 	.word	0x00084a18
   847fc:	00000000 	.word	0x00000000

Disassembly of section .got.plt:

0000000000084800 <.got.plt>:
	...

Disassembly of section .bss:

0000000000084818 <__bss_start-0x8>:
	...

0000000000084820 <__bss_start>:
	...

0000000000084828 <scp.2758>:
	...

0000000000084830 <sep.2759>:
	...

0000000000084858 <pfat32_global>:
	...

0000000000084860 <_memory_map>:
	...

0000000000084870 <mem_bin>:
	...

0000000000084a10 <sd_err>:
	...
