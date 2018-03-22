
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
   8001c:	94000a6b 	bl	829c8 <_cstartup>
   80020:	940000c6 	bl	80338 <kernel_main>
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

0000000000080150 <utf16ntoascii>:
   80150:	b40001a2 	cbz	x2, 80184 <utf16ntoascii+0x34>
   80154:	39400024 	ldrb	w4, [x1]
   80158:	d2800003 	mov	x3, #0x0                   	// #0
   8015c:	39000004 	strb	w4, [x0]
   80160:	350000c4 	cbnz	w4, 80178 <utf16ntoascii+0x28>
   80164:	14000008 	b	80184 <utf16ntoascii+0x34>
   80168:	d37ff864 	lsl	x4, x3, #1
   8016c:	38646824 	ldrb	w4, [x1, x4]
   80170:	38236804 	strb	w4, [x0, x3]
   80174:	34000084 	cbz	w4, 80184 <utf16ntoascii+0x34>
   80178:	91000463 	add	x3, x3, #0x1
   8017c:	eb03005f 	cmp	x2, x3
   80180:	54ffff41 	b.ne	80168 <utf16ntoascii+0x18>  // b.any
   80184:	d65f03c0 	ret

0000000000080188 <asciitoutf16>:
   80188:	39400022 	ldrb	w2, [x1]
   8018c:	aa0003e3 	mov	x3, x0
   80190:	340000a2 	cbz	w2, 801a4 <asciitoutf16+0x1c>
   80194:	d503201f 	nop
   80198:	78002462 	strh	w2, [x3], #2
   8019c:	38401c22 	ldrb	w2, [x1, #1]!
   801a0:	35ffffc2 	cbnz	w2, 80198 <asciitoutf16+0x10>
   801a4:	7900007f 	strh	wzr, [x3]
   801a8:	d65f03c0 	ret
   801ac:	d503201f 	nop

00000000000801b0 <asciintoutf16>:
   801b0:	b40001a2 	cbz	x2, 801e4 <asciintoutf16+0x34>
   801b4:	39400024 	ldrb	w4, [x1]
   801b8:	d2800003 	mov	x3, #0x0                   	// #0
   801bc:	39000004 	strb	w4, [x0]
   801c0:	350000c4 	cbnz	w4, 801d8 <asciintoutf16+0x28>
   801c4:	14000008 	b	801e4 <asciintoutf16+0x34>
   801c8:	d37ff864 	lsl	x4, x3, #1
   801cc:	38636825 	ldrb	w5, [x1, x3]
   801d0:	38246805 	strb	w5, [x0, x4]
   801d4:	34000085 	cbz	w5, 801e4 <asciintoutf16+0x34>
   801d8:	91000463 	add	x3, x3, #0x1
   801dc:	eb03005f 	cmp	x2, x3
   801e0:	54ffff41 	b.ne	801c8 <asciintoutf16+0x18>  // b.any
   801e4:	d65f03c0 	ret

00000000000801e8 <strcat>:
   801e8:	aa0003e3 	mov	x3, x0
   801ec:	38401402 	ldrb	w2, [x0], #1
   801f0:	35ffffc2 	cbnz	w2, 801e8 <strcat>
   801f4:	39400022 	ldrb	w2, [x1]
   801f8:	aa0303e0 	mov	x0, x3
   801fc:	34000082 	cbz	w2, 8020c <strcat+0x24>
   80200:	38001402 	strb	w2, [x0], #1
   80204:	38401c22 	ldrb	w2, [x1, #1]!
   80208:	35ffffc2 	cbnz	w2, 80200 <strcat+0x18>
   8020c:	3900001f 	strb	wzr, [x0]
   80210:	aa0303e0 	mov	x0, x3
   80214:	d65f03c0 	ret

0000000000080218 <strtok>:
   80218:	b0000027 	adrp	x7, 85000 <cwd+0x3e8>
   8021c:	b4000740 	cbz	x0, 80304 <strtok+0xec>
   80220:	910200e2 	add	x2, x7, #0x80
   80224:	39400004 	ldrb	w4, [x0]
   80228:	f90040e0 	str	x0, [x7, #128]
   8022c:	f9000440 	str	x0, [x2, #8]
   80230:	34000704 	cbz	w4, 80310 <strtok+0xf8>
   80234:	39400026 	ldrb	w6, [x1]
   80238:	aa0003e5 	mov	x5, x0
   8023c:	d503201f 	nop
   80240:	34000126 	cbz	w6, 80264 <strtok+0x4c>
   80244:	6b0400df 	cmp	w6, w4
   80248:	540004e0 	b.eq	802e4 <strtok+0xcc>  // b.none
   8024c:	aa0103e3 	mov	x3, x1
   80250:	14000002 	b	80258 <strtok+0x40>
   80254:	54000480 	b.eq	802e4 <strtok+0xcc>  // b.none
   80258:	38401c62 	ldrb	w2, [x3, #1]!
   8025c:	6b04005f 	cmp	w2, w4
   80260:	35ffffa2 	cbnz	w2, 80254 <strtok+0x3c>
   80264:	38401ca4 	ldrb	w4, [x5, #1]!
   80268:	35fffec4 	cbnz	w4, 80240 <strtok+0x28>
   8026c:	910200e1 	add	x1, x7, #0x80
   80270:	39400002 	ldrb	w2, [x0]
   80274:	f9000825 	str	x5, [x1, #16]
   80278:	910200e1 	add	x1, x7, #0x80
   8027c:	f9000420 	str	x0, [x1, #8]
   80280:	35000202 	cbnz	w2, 802c0 <strtok+0xa8>
   80284:	910200e1 	add	x1, x7, #0x80
   80288:	f9400823 	ldr	x3, [x1, #16]
   8028c:	eb00007f 	cmp	x3, x0
   80290:	54000369 	b.ls	802fc <strtok+0xe4>  // b.plast
   80294:	91000401 	add	x1, x0, #0x1
   80298:	91000463 	add	x3, x3, #0x1
   8029c:	14000002 	b	802a4 <strtok+0x8c>
   802a0:	540002a0 	b.eq	802f4 <strtok+0xdc>  // b.none
   802a4:	39400022 	ldrb	w2, [x1]
   802a8:	aa0103e0 	mov	x0, x1
   802ac:	91000421 	add	x1, x1, #0x1
   802b0:	eb03003f 	cmp	x1, x3
   802b4:	34ffff62 	cbz	w2, 802a0 <strtok+0x88>
   802b8:	910200e1 	add	x1, x7, #0x80
   802bc:	f9000420 	str	x0, [x1, #8]
   802c0:	d2800003 	mov	x3, #0x0                   	// #0
   802c4:	14000003 	b	802d0 <strtok+0xb8>
   802c8:	38616802 	ldrb	w2, [x0, x1]
   802cc:	aa0103e3 	mov	x3, x1
   802d0:	91000461 	add	x1, x3, #0x1
   802d4:	35ffffa2 	cbnz	w2, 802c8 <strtok+0xb0>
   802d8:	8b030003 	add	x3, x0, x3
   802dc:	f90040e3 	str	x3, [x7, #128]
   802e0:	d65f03c0 	ret
   802e4:	390000bf 	strb	wzr, [x5]
   802e8:	38401ca4 	ldrb	w4, [x5, #1]!
   802ec:	35fffaa4 	cbnz	w4, 80240 <strtok+0x28>
   802f0:	17ffffdf 	b	8026c <strtok+0x54>
   802f4:	910200e7 	add	x7, x7, #0x80
   802f8:	f90004e0 	str	x0, [x7, #8]
   802fc:	d2800000 	mov	x0, #0x0                   	// #0
   80300:	d65f03c0 	ret
   80304:	f94040e0 	ldr	x0, [x7, #128]
   80308:	39400002 	ldrb	w2, [x0]
   8030c:	17ffffdb 	b	80278 <strtok+0x60>
   80310:	f9000840 	str	x0, [x2, #16]
   80314:	17ffffdc 	b	80284 <strtok+0x6c>

0000000000080318 <memset>:
   80318:	b40000e2 	cbz	x2, 80334 <memset+0x1c>
   8031c:	12001c21 	and	w1, w1, #0xff
   80320:	aa0003e3 	mov	x3, x0
   80324:	8b020002 	add	x2, x0, x2
   80328:	38001461 	strb	w1, [x3], #1
   8032c:	eb02007f 	cmp	x3, x2
   80330:	54ffffc1 	b.ne	80328 <memset+0x10>  // b.any
   80334:	d65f03c0 	ret

0000000000080338 <kernel_main>:
   80338:	90000020 	adrp	x0, 84000 <__func__.3102+0x40>
   8033c:	912fe000 	add	x0, x0, #0xbf8
   80340:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   80344:	910003fd 	mov	x29, sp
   80348:	a9400c02 	ldp	x2, x3, [x0]
   8034c:	f9400800 	ldr	x0, [x0, #16]
   80350:	a9018fa2 	stp	x2, x3, [x29, #24]
   80354:	f90017a0 	str	x0, [x29, #40]
   80358:	940009ae 	bl	82a10 <mu_init>
   8035c:	940009fb 	bl	82b48 <mu_read_byte>
   80360:	12001c00 	and	w0, w0, #0xff
   80364:	7100341f 	cmp	w0, #0xd
   80368:	54ffffa1 	b.ne	8035c <kernel_main+0x24>  // b.any
   8036c:	940003f7 	bl	81348 <mem_init>
   80370:	f94013a0 	ldr	x0, [x29, #32]
   80374:	d63f0000 	blr	x0
   80378:	34000120 	cbz	w0, 8039c <kernel_main+0x64>
   8037c:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80380:	f0000002 	adrp	x2, 83000 <atag_display+0x430>
   80384:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80388:	9118e063 	add	x3, x3, #0x638
   8038c:	9118a042 	add	x2, x2, #0x628
   80390:	52800301 	mov	w1, #0x18                  	// #24
   80394:	91196000 	add	x0, x0, #0x658
   80398:	9400091a 	bl	82800 <__panic>
   8039c:	910063a0 	add	x0, x29, #0x18
   803a0:	94000008 	bl	803c0 <fat32_init>
   803a4:	b0000021 	adrp	x1, 85000 <cwd+0x3e8>
   803a8:	f9402021 	ldr	x1, [x1, #64]
   803ac:	f9000020 	str	x0, [x1]
   803b0:	940007d0 	bl	822f0 <shell_loop>
   803b4:	52800000 	mov	w0, #0x0                   	// #0
   803b8:	a8c37bfd 	ldp	x29, x30, [sp], #48
   803bc:	d65f03c0 	ret

00000000000803c0 <fat32_init>:
   803c0:	d10a43ff 	sub	sp, sp, #0x290
   803c4:	d2800282 	mov	x2, #0x14                  	// #20
   803c8:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   803cc:	911b6021 	add	x1, x1, #0x6d8
   803d0:	a9007bfd 	stp	x29, x30, [sp]
   803d4:	910003fd 	mov	x29, sp
   803d8:	a90153f3 	stp	x19, x20, [sp, #16]
   803dc:	a90363f7 	stp	x23, x24, [sp, #48]
   803e0:	f0000018 	adrp	x24, 83000 <atag_display+0x430>
   803e4:	9119a313 	add	x19, x24, #0x668
   803e8:	a9025bf5 	stp	x21, x22, [sp, #32]
   803ec:	a9046bf9 	stp	x25, x26, [sp, #64]
   803f0:	aa0003f6 	mov	x22, x0
   803f4:	aa1303e0 	mov	x0, x19
   803f8:	9400094e 	bl	82930 <__debug>
   803fc:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80400:	911bc021 	add	x1, x1, #0x6f0
   80404:	d2800342 	mov	x2, #0x1a                  	// #26
   80408:	aa1303e0 	mov	x0, x19
   8040c:	94000949 	bl	82930 <__debug>
   80410:	d2801700 	mov	x0, #0xb8                  	// #184
   80414:	94000409 	bl	81438 <malloc>
   80418:	aa0003f5 	mov	x21, x0
   8041c:	b4001240 	cbz	x0, 80664 <fat32_init+0x2a4>
   80420:	f9400ac2 	ldr	x2, [x22, #16]
   80424:	910243b7 	add	x23, x29, #0x90
   80428:	aa1703e1 	mov	x1, x23
   8042c:	52800000 	mov	w0, #0x0                   	// #0
   80430:	d63f0040 	blr	x2
   80434:	7108001f 	cmp	w0, #0x200
   80438:	54000140 	b.eq	80460 <fat32_init+0xa0>  // b.none
   8043c:	9119a302 	add	x2, x24, #0x668
   80440:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80444:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80448:	52800004 	mov	w4, #0x0                   	// #0
   8044c:	911d2063 	add	x3, x3, #0x748
   80450:	91004042 	add	x2, x2, #0x10
   80454:	52800241 	mov	w1, #0x12                  	// #18
   80458:	911ce000 	add	x0, x0, #0x738
   8045c:	940008e9 	bl	82800 <__panic>
   80460:	910143b9 	add	x25, x29, #0x50
   80464:	d2800142 	mov	x2, #0xa                   	// #10
   80468:	9106d2e1 	add	x1, x23, #0x1b4
   8046c:	aa1903e0 	mov	x0, x25
   80470:	97fffef0 	bl	80030 <memcpy>
   80474:	91071af3 	add	x19, x23, #0x1c6
   80478:	91004334 	add	x20, x25, #0x10
   8047c:	910a5bba 	add	x26, x29, #0x296
   80480:	d2800042 	mov	x2, #0x2                   	// #2
   80484:	910a43a1 	add	x1, x29, #0x290
   80488:	9100f320 	add	x0, x25, #0x3c
   8048c:	97fffee9 	bl	80030 <memcpy>
   80490:	385f8262 	ldurb	w2, [x19, #-8]
   80494:	aa1303e1 	mov	x1, x19
   80498:	385fc260 	ldurb	w0, [x19, #-4]
   8049c:	381fc282 	sturb	w2, [x20, #-4]
   804a0:	d2800082 	mov	x2, #0x4                   	// #4
   804a4:	381fd280 	sturb	w0, [x20, #-3]
   804a8:	aa1403e0 	mov	x0, x20
   804ac:	97fffee1 	bl	80030 <memcpy>
   804b0:	91001261 	add	x1, x19, #0x4
   804b4:	91001280 	add	x0, x20, #0x4
   804b8:	d2800082 	mov	x2, #0x4                   	// #4
   804bc:	91004273 	add	x19, x19, #0x10
   804c0:	97fffedc 	bl	80030 <memcpy>
   804c4:	91003294 	add	x20, x20, #0xc
   804c8:	eb13035f 	cmp	x26, x19
   804cc:	54fffe21 	b.ne	80490 <fat32_init+0xd0>  // b.any
   804d0:	91003722 	add	x2, x25, #0xd
   804d4:	52800001 	mov	w1, #0x0                   	// #0
   804d8:	39400040 	ldrb	w0, [x2]
   804dc:	91003042 	add	x2, x2, #0xc
   804e0:	51002c00 	sub	w0, w0, #0xb
   804e4:	12001c00 	and	w0, w0, #0xff
   804e8:	7100041f 	cmp	w0, #0x1
   804ec:	54000b09 	b.ls	8064c <fat32_init+0x28c>  // b.plast
   804f0:	11000421 	add	w1, w1, #0x1
   804f4:	7100103f 	cmp	w1, #0x4
   804f8:	54ffff01 	b.ne	804d8 <fat32_init+0x118>  // b.any
   804fc:	910183b4 	add	x20, x29, #0x60
   80500:	9119a302 	add	x2, x24, #0x668
   80504:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80508:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   8050c:	52800013 	mov	w19, #0x0                   	// #0
   80510:	911de063 	add	x3, x3, #0x778
   80514:	91008042 	add	x2, x2, #0x20
   80518:	528005c1 	mov	w1, #0x2e                  	// #46
   8051c:	911ce000 	add	x0, x0, #0x738
   80520:	940008b8 	bl	82800 <__panic>
   80524:	f9400ac2 	ldr	x2, [x22, #16]
   80528:	aa1703e1 	mov	x1, x23
   8052c:	2a1303e0 	mov	w0, w19
   80530:	d63f0040 	blr	x2
   80534:	7108001f 	cmp	w0, #0x200
   80538:	54000160 	b.eq	80564 <fat32_init+0x1a4>  // b.none
   8053c:	9119a302 	add	x2, x24, #0x668
   80540:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80544:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80548:	52800005 	mov	w5, #0x0                   	// #0
   8054c:	2a1303e4 	mov	w4, w19
   80550:	911e6063 	add	x3, x3, #0x798
   80554:	91008042 	add	x2, x2, #0x20
   80558:	52800621 	mov	w1, #0x31                  	// #49
   8055c:	911ce000 	add	x0, x0, #0x738
   80560:	940008a8 	bl	82800 <__panic>
   80564:	91003339 	add	x25, x25, #0xc
   80568:	52800000 	mov	w0, #0x0                   	// #0
   8056c:	39400321 	ldrb	w1, [x25]
   80570:	91003339 	add	x25, x25, #0xc
   80574:	7102003f 	cmp	w1, #0x80
   80578:	54000180 	b.eq	805a8 <fat32_init+0x1e8>  // b.none
   8057c:	11000400 	add	w0, w0, #0x1
   80580:	7100101f 	cmp	w0, #0x4
   80584:	54ffff41 	b.ne	8056c <fat32_init+0x1ac>  // b.any
   80588:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   8058c:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80590:	911f4063 	add	x3, x3, #0x7d0
   80594:	911ce000 	add	x0, x0, #0x738
   80598:	9119a302 	add	x2, x24, #0x668
   8059c:	52800a01 	mov	w1, #0x50                  	// #80
   805a0:	94000898 	bl	82800 <__panic>
   805a4:	12800000 	mov	w0, #0xffffffff            	// #-1
   805a8:	93407c00 	sxtw	x0, w0
   805ac:	79413fa4 	ldrh	w4, [x29, #158]
   805b0:	910282b3 	add	x19, x21, #0xa0
   805b4:	d2800042 	mov	x2, #0x2                   	// #2
   805b8:	8b000403 	add	x3, x0, x0, lsl #1
   805bc:	91002ee1 	add	x1, x23, #0xb
   805c0:	aa1303e0 	mov	x0, x19
   805c4:	b8637a83 	ldr	w3, [x20, x3, lsl #2]
   805c8:	0b040063 	add	w3, w3, w4
   805cc:	b900aaa3 	str	w3, [x21, #168]
   805d0:	97fffe98 	bl	80030 <memcpy>
   805d4:	394277a0 	ldrb	w0, [x29, #157]
   805d8:	39028aa0 	strb	w0, [x21, #162]
   805dc:	aa1503e0 	mov	x0, x21
   805e0:	b940aaa2 	ldr	w2, [x21, #168]
   805e4:	b940b7a3 	ldr	w3, [x29, #180]
   805e8:	b940bfa1 	ldr	w1, [x29, #188]
   805ec:	a94016c4 	ldp	x4, x5, [x22]
   805f0:	b900a6a3 	str	w3, [x21, #164]
   805f4:	b900b2a1 	str	w1, [x21, #176]
   805f8:	794142a6 	ldrh	w6, [x21, #160]
   805fc:	394283a1 	ldrb	w1, [x29, #160]
   80600:	a90096a4 	stp	x4, x5, [x21, #8]
   80604:	f9400ac4 	ldr	x4, [x22, #16]
   80608:	1b030821 	madd	w1, w1, w3, w2
   8060c:	b90006a6 	str	w6, [x21, #4]
   80610:	f9000ea4 	str	x4, [x21, #24]
   80614:	b900aea1 	str	w1, [x21, #172]
   80618:	b8020402 	str	w2, [x0], #32
   8061c:	d503201f 	nop
   80620:	f800841f 	str	xzr, [x0], #8
   80624:	eb00027f 	cmp	x19, x0
   80628:	54ffffc1 	b.ne	80620 <fat32_init+0x260>  // b.any
   8062c:	aa1503e0 	mov	x0, x21
   80630:	a9407bfd 	ldp	x29, x30, [sp]
   80634:	a94153f3 	ldp	x19, x20, [sp, #16]
   80638:	a9425bf5 	ldp	x21, x22, [sp, #32]
   8063c:	a94363f7 	ldp	x23, x24, [sp, #48]
   80640:	a9446bf9 	ldp	x25, x26, [sp, #64]
   80644:	910a43ff 	add	sp, sp, #0x290
   80648:	d65f03c0 	ret
   8064c:	93407c21 	sxtw	x1, w1
   80650:	910183b4 	add	x20, x29, #0x60
   80654:	8b010421 	add	x1, x1, x1, lsl #1
   80658:	b8617a93 	ldr	w19, [x20, x1, lsl #2]
   8065c:	35fff653 	cbnz	w19, 80524 <fat32_init+0x164>
   80660:	17ffffa8 	b	80500 <fat32_init+0x140>
   80664:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80668:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   8066c:	911c2063 	add	x3, x3, #0x708
   80670:	aa1303e2 	mov	x2, x19
   80674:	52800881 	mov	w1, #0x44                  	// #68
   80678:	911ce000 	add	x0, x0, #0x738
   8067c:	94000861 	bl	82800 <__panic>
   80680:	17ffff68 	b	80420 <fat32_init+0x60>
   80684:	d503201f 	nop

0000000000080688 <fat32_read_cluster>:
   80688:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
   8068c:	910003fd 	mov	x29, sp
   80690:	a902dff6 	stp	x22, x23, [sp, #40]
   80694:	f90023f9 	str	x25, [sp, #64]
   80698:	79414019 	ldrh	w25, [x0, #160]
   8069c:	39428817 	ldrb	w23, [x0, #162]
   806a0:	34000457 	cbz	w23, 80728 <fat32_read_cluster+0xa0>
   806a4:	d1000821 	sub	x1, x1, #0x2
   806a8:	f90027ba 	str	x26, [x29, #72]
   806ac:	92401efa 	and	x26, x23, #0xff
   806b0:	f90013b5 	str	x21, [x29, #32]
   806b4:	f9001fb8 	str	x24, [x29, #56]
   806b8:	aa0003f5 	mov	x21, x0
   806bc:	aa0203f8 	mov	x24, x2
   806c0:	a90153b3 	stp	x19, x20, [x29, #16]
   806c4:	9b1a7c3a 	mul	x26, x1, x26
   806c8:	52800014 	mov	w20, #0x0                   	// #0
   806cc:	d2800013 	mov	x19, #0x0                   	// #0
   806d0:	d2800016 	mov	x22, #0x0                   	// #0
   806d4:	d503201f 	nop
   806d8:	b940aea1 	ldr	w1, [x21, #172]
   806dc:	8b344302 	add	x2, x24, w20, uxtw
   806e0:	aa1503e0 	mov	x0, x21
   806e4:	0b190294 	add	w20, w20, w25
   806e8:	8b1a0021 	add	x1, x1, x26
   806ec:	8b130021 	add	x1, x1, x19
   806f0:	91000673 	add	x19, x19, #0x1
   806f4:	9400026d 	bl	810a8 <cd_read_sector>
   806f8:	8b0002d6 	add	x22, x22, x0
   806fc:	6b1302ff 	cmp	w23, w19
   80700:	54fffec8 	b.hi	806d8 <fat32_read_cluster+0x50>  // b.pmore
   80704:	aa1603e0 	mov	x0, x22
   80708:	f94013b5 	ldr	x21, [x29, #32]
   8070c:	a94153b3 	ldp	x19, x20, [x29, #16]
   80710:	f9401fb8 	ldr	x24, [x29, #56]
   80714:	f94027ba 	ldr	x26, [x29, #72]
   80718:	a942dff6 	ldp	x22, x23, [sp, #40]
   8071c:	f94023f9 	ldr	x25, [sp, #64]
   80720:	a8c57bfd 	ldp	x29, x30, [sp], #80
   80724:	d65f03c0 	ret
   80728:	d2800016 	mov	x22, #0x0                   	// #0
   8072c:	f94023f9 	ldr	x25, [sp, #64]
   80730:	aa1603e0 	mov	x0, x22
   80734:	a942dff6 	ldp	x22, x23, [sp, #40]
   80738:	a8c57bfd 	ldp	x29, x30, [sp], #80
   8073c:	d65f03c0 	ret

0000000000080740 <fat32_read_chain>:
   80740:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
   80744:	910003fd 	mov	x29, sp
   80748:	a90153f3 	stp	x19, x20, [sp, #16]
   8074c:	aa0003f3 	mov	x19, x0
   80750:	79414014 	ldrh	w20, [x0, #160]
   80754:	a90363f7 	stp	x23, x24, [sp, #48]
   80758:	aa0103f8 	mov	x24, x1
   8075c:	b940a817 	ldr	w23, [x0, #168]
   80760:	f90013f5 	str	x21, [sp, #32]
   80764:	d2800015 	mov	x21, #0x0                   	// #0
   80768:	f90023f9 	str	x25, [sp, #64]
   8076c:	aa0203f9 	mov	x25, x2
   80770:	f9002bfb 	str	x27, [sp, #80]
   80774:	3942881b 	ldrb	w27, [x0, #162]
   80778:	92403e80 	and	x0, x20, #0xffff
   8077c:	9400032f 	bl	81438 <malloc>
   80780:	b4000320 	cbz	x0, 807e4 <fat32_read_chain+0xa4>
   80784:	1ad40b15 	udiv	w21, w24, w20
   80788:	2a1703f7 	mov	w23, w23
   8078c:	f9002fbc 	str	x28, [x29, #88]
   80790:	aa0003e2 	mov	x2, x0
   80794:	f90017b6 	str	x22, [x29, #40]
   80798:	aa0003f6 	mov	x22, x0
   8079c:	f90027ba 	str	x26, [x29, #72]
   807a0:	aa1303e0 	mov	x0, x19
   807a4:	8b3542fc 	add	x28, x23, w21, uxtw
   807a8:	b9008fb5 	str	w21, [x29, #140]
   807ac:	2a1803fa 	mov	w26, w24
   807b0:	aa1c03e1 	mov	x1, x28
   807b4:	9400023d 	bl	810a8 <cd_read_sector>
   807b8:	b4000260 	cbz	x0, 80804 <fat32_read_chain+0xc4>
   807bc:	1b14e2b5 	msub	w21, w21, w20, w24
   807c0:	b8757ac5 	ldr	w5, [x22, x21, lsl #2]
   807c4:	72006cbc 	ands	w28, w5, #0xfffffff
   807c8:	540003a1 	b.ne	8083c <fat32_read_chain+0xfc>  // b.any
   807cc:	d2800015 	mov	x21, #0x0                   	// #0
   807d0:	aa1603e0 	mov	x0, x22
   807d4:	9400035f 	bl	81550 <free>
   807d8:	f94017b6 	ldr	x22, [x29, #40]
   807dc:	f94027ba 	ldr	x26, [x29, #72]
   807e0:	f9402fbc 	ldr	x28, [x29, #88]
   807e4:	aa1503e0 	mov	x0, x21
   807e8:	f94013f5 	ldr	x21, [sp, #32]
   807ec:	a94153f3 	ldp	x19, x20, [sp, #16]
   807f0:	a94363f7 	ldp	x23, x24, [sp, #48]
   807f4:	f94023f9 	ldr	x25, [sp, #64]
   807f8:	f9402bfb 	ldr	x27, [sp, #80]
   807fc:	a8c97bfd 	ldp	x29, x30, [sp], #144
   80800:	d65f03c0 	ret
   80804:	1b14e2b5 	msub	w21, w21, w20, w24
   80808:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   8080c:	9119a002 	add	x2, x0, #0x668
   80810:	aa1c03e4 	mov	x4, x28
   80814:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80818:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   8081c:	911fc063 	add	x3, x3, #0x7f0
   80820:	9100c042 	add	x2, x2, #0x30
   80824:	528013e1 	mov	w1, #0x9f                  	// #159
   80828:	911ce000 	add	x0, x0, #0x738
   8082c:	940007f5 	bl	82800 <__panic>
   80830:	b8757ac5 	ldr	w5, [x22, x21, lsl #2]
   80834:	72006cbc 	ands	w28, w5, #0xfffffff
   80838:	54fffca0 	b.eq	807cc <fat32_read_chain+0x8c>  // b.none
   8083c:	1b147f60 	mul	w0, w27, w20
   80840:	92405c00 	and	x0, x0, #0xffffff
   80844:	940002fd 	bl	81438 <malloc>
   80848:	f9000320 	str	x0, [x25]
   8084c:	b4fffc00 	cbz	x0, 807cc <fat32_read_chain+0x8c>
   80850:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80854:	9119a022 	add	x2, x1, #0x668
   80858:	9100c042 	add	x2, x2, #0x30
   8085c:	f9003fa1 	str	x1, [x29, #120]
   80860:	d2800015 	mov	x21, #0x0                   	// #0
   80864:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80868:	f90037a2 	str	x2, [x29, #104]
   8086c:	911fc021 	add	x1, x1, #0x7f0
   80870:	f9003ba1 	str	x1, [x29, #112]
   80874:	14000019 	b	808d8 <fat32_read_chain+0x198>
   80878:	1ad40b84 	udiv	w4, w28, w20
   8087c:	b9408fa1 	ldr	w1, [x29, #140]
   80880:	2a1c03fa 	mov	w26, w28
   80884:	aa1603e2 	mov	x2, x22
   80888:	aa1303e0 	mov	x0, x19
   8088c:	aa0403e5 	mov	x5, x4
   80890:	8b170084 	add	x4, x4, x23
   80894:	6b0100bf 	cmp	w5, w1
   80898:	54000100 	b.eq	808b8 <fat32_read_chain+0x178>  // b.none
   8089c:	aa0403e1 	mov	x1, x4
   808a0:	f90043a4 	str	x4, [x29, #128]
   808a4:	291117a5 	stp	w5, w5, [x29, #136]
   808a8:	94000200 	bl	810a8 <cd_read_sector>
   808ac:	b9408ba5 	ldr	w5, [x29, #136]
   808b0:	f94043a4 	ldr	x4, [x29, #128]
   808b4:	b4000380 	cbz	x0, 80924 <fat32_read_chain+0x1e4>
   808b8:	1b14f0a5 	msub	w5, w5, w20, w28
   808bc:	f9400320 	ldr	x0, [x25]
   808c0:	d503201f 	nop
   808c4:	9bbb5681 	umaddl	x1, w20, w27, x21
   808c8:	b8657ac5 	ldr	w5, [x22, x5, lsl #2]
   808cc:	12006cbc 	and	w28, w5, #0xfffffff
   808d0:	94000336 	bl	815a8 <realloc>
   808d4:	f9000320 	str	x0, [x25]
   808d8:	8b150002 	add	x2, x0, x21
   808dc:	2a1a03e1 	mov	w1, w26
   808e0:	aa1303e0 	mov	x0, x19
   808e4:	97ffff69 	bl	80688 <fat32_read_cluster>
   808e8:	51000b81 	sub	w1, w28, #0x2
   808ec:	8b0002b5 	add	x21, x21, x0
   808f0:	529ffda0 	mov	w0, #0xffed                	// #65517
   808f4:	72a1ffe0 	movk	w0, #0xfff, lsl #16
   808f8:	6b00003f 	cmp	w1, w0
   808fc:	54fffbe9 	b.ls	80878 <fat32_read_chain+0x138>  // b.plast
   80900:	f9403fa0 	ldr	x0, [x29, #120]
   80904:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80908:	aa1803e3 	mov	x3, x24
   8090c:	aa1503e2 	mov	x2, x21
   80910:	9119a000 	add	x0, x0, #0x668
   80914:	91208021 	add	x1, x1, #0x820
   80918:	9100c000 	add	x0, x0, #0x30
   8091c:	94000805 	bl	82930 <__debug>
   80920:	17ffffac 	b	807d0 <fat32_read_chain+0x90>
   80924:	a9468fa2 	ldp	x2, x3, [x29, #104]
   80928:	b9008ba5 	str	w5, [x29, #136]
   8092c:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80930:	52801861 	mov	w1, #0xc3                  	// #195
   80934:	911ce000 	add	x0, x0, #0x738
   80938:	940007b2 	bl	82800 <__panic>
   8093c:	b9408ba5 	ldr	w5, [x29, #136]
   80940:	17ffffde 	b	808b8 <fat32_read_chain+0x178>
   80944:	d503201f 	nop

0000000000080948 <fat32_parse_name>:
   80948:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
   8094c:	910003fd 	mov	x29, sp
   80950:	a901d7f4 	stp	x20, x21, [sp, #24]
   80954:	aa0003f4 	mov	x20, x0
   80958:	aa0103f5 	mov	x21, x1
   8095c:	39402c00 	ldrb	w0, [x0, #11]
   80960:	39400281 	ldrb	w1, [x20]
   80964:	71003c1f 	cmp	w0, #0xf
   80968:	f9001bf7 	str	x23, [sp, #48]
   8096c:	540004c0 	b.eq	80a04 <fat32_parse_name+0xbc>  // b.none
   80970:	d2800002 	mov	x2, #0x0                   	// #0
   80974:	7103943f 	cmp	w1, #0xe5
   80978:	54000380 	b.eq	809e8 <fat32_parse_name+0xa0>  // b.none
   8097c:	f9000bb3 	str	x19, [x29, #16]
   80980:	f90017b6 	str	x22, [x29, #40]
   80984:	2a0203f6 	mov	w22, w2
   80988:	91000442 	add	x2, x2, #0x1
   8098c:	340000e1 	cbz	w1, 809a8 <fat32_parse_name+0x60>
   80990:	f100205f 	cmp	x2, #0x8
   80994:	540009c0 	b.eq	80acc <fat32_parse_name+0x184>  // b.none
   80998:	38626a81 	ldrb	w1, [x20, x2]
   8099c:	2a0203f6 	mov	w22, w2
   809a0:	91000442 	add	x2, x2, #0x1
   809a4:	35ffff61 	cbnz	w1, 80990 <fat32_parse_name+0x48>
   809a8:	93407ed3 	sxtw	x19, w22
   809ac:	aa1403e1 	mov	x1, x20
   809b0:	aa1303e2 	mov	x2, x19
   809b4:	aa1503e0 	mov	x0, x21
   809b8:	97fffdca 	bl	800e0 <strncpy>
   809bc:	39402280 	ldrb	w0, [x20, #8]
   809c0:	35000960 	cbnz	w0, 80aec <fat32_parse_name+0x1a4>
   809c4:	38336abf 	strb	wzr, [x21, x19]
   809c8:	d2800017 	mov	x23, #0x0                   	// #0
   809cc:	aa1703e0 	mov	x0, x23
   809d0:	f9400bb3 	ldr	x19, [x29, #16]
   809d4:	f94017b6 	ldr	x22, [x29, #40]
   809d8:	a941d7f4 	ldp	x20, x21, [sp, #24]
   809dc:	f9401bf7 	ldr	x23, [sp, #48]
   809e0:	a8c57bfd 	ldp	x29, x30, [sp], #80
   809e4:	d65f03c0 	ret
   809e8:	390002bf 	strb	wzr, [x21]
   809ec:	d2800017 	mov	x23, #0x0                   	// #0
   809f0:	aa1703e0 	mov	x0, x23
   809f4:	a941d7f4 	ldp	x20, x21, [sp, #24]
   809f8:	f9401bf7 	ldr	x23, [sp, #48]
   809fc:	a8c57bfd 	ldp	x29, x30, [sp], #80
   80a00:	d65f03c0 	ret
   80a04:	91000694 	add	x20, x20, #0x1
   80a08:	d2800017 	mov	x23, #0x0                   	// #0
   80a0c:	f9000bb3 	str	x19, [x29, #16]
   80a10:	f90017b6 	str	x22, [x29, #40]
   80a14:	910123b6 	add	x22, x29, #0x48
   80a18:	f9001fb8 	str	x24, [x29, #56]
   80a1c:	528001b8 	mov	w24, #0xd                   	// #13
   80a20:	14000002 	b	80a28 <fat32_parse_name+0xe0>
   80a24:	385ff281 	ldurb	w1, [x20, #-1]
   80a28:	12001033 	and	w19, w1, #0x1f
   80a2c:	d2800142 	mov	x2, #0xa                   	// #10
   80a30:	51000673 	sub	w19, w19, #0x1
   80a34:	aa1403e1 	mov	x1, x20
   80a38:	aa1603e0 	mov	x0, x22
   80a3c:	97fffdc5 	bl	80150 <utf16ntoascii>
   80a40:	d28000a2 	mov	x2, #0x5                   	// #5
   80a44:	aa0003e1 	mov	x1, x0
   80a48:	1b187e73 	mul	w19, w19, w24
   80a4c:	910006f7 	add	x23, x23, #0x1
   80a50:	8b33c2b3 	add	x19, x21, w19, sxtw
   80a54:	aa1303e0 	mov	x0, x19
   80a58:	97fffda2 	bl	800e0 <strncpy>
   80a5c:	91003681 	add	x1, x20, #0xd
   80a60:	d2800182 	mov	x2, #0xc                   	// #12
   80a64:	aa1603e0 	mov	x0, x22
   80a68:	97fffdba 	bl	80150 <utf16ntoascii>
   80a6c:	d28000c2 	mov	x2, #0x6                   	// #6
   80a70:	aa0003e1 	mov	x1, x0
   80a74:	91001660 	add	x0, x19, #0x5
   80a78:	97fffd9a 	bl	800e0 <strncpy>
   80a7c:	91006e81 	add	x1, x20, #0x1b
   80a80:	91008294 	add	x20, x20, #0x20
   80a84:	d2800082 	mov	x2, #0x4                   	// #4
   80a88:	aa1603e0 	mov	x0, x22
   80a8c:	97fffdb1 	bl	80150 <utf16ntoascii>
   80a90:	aa0003e1 	mov	x1, x0
   80a94:	d2800042 	mov	x2, #0x2                   	// #2
   80a98:	91002e60 	add	x0, x19, #0xb
   80a9c:	97fffd91 	bl	800e0 <strncpy>
   80aa0:	39402a80 	ldrb	w0, [x20, #10]
   80aa4:	71003c1f 	cmp	w0, #0xf
   80aa8:	54fffbe0 	b.eq	80a24 <fat32_parse_name+0xdc>  // b.none
   80aac:	f9400bb3 	ldr	x19, [x29, #16]
   80ab0:	aa1703e0 	mov	x0, x23
   80ab4:	f94017b6 	ldr	x22, [x29, #40]
   80ab8:	f9401fb8 	ldr	x24, [x29, #56]
   80abc:	a941d7f4 	ldp	x20, x21, [sp, #24]
   80ac0:	f9401bf7 	ldr	x23, [sp, #48]
   80ac4:	a8c57bfd 	ldp	x29, x30, [sp], #80
   80ac8:	d65f03c0 	ret
   80acc:	aa0203f3 	mov	x19, x2
   80ad0:	2a0203f6 	mov	w22, w2
   80ad4:	aa1403e1 	mov	x1, x20
   80ad8:	aa1303e2 	mov	x2, x19
   80adc:	aa1503e0 	mov	x0, x21
   80ae0:	97fffd80 	bl	800e0 <strncpy>
   80ae4:	39402280 	ldrb	w0, [x20, #8]
   80ae8:	34fff6e0 	cbz	w0, 809c4 <fat32_parse_name+0x7c>
   80aec:	f9001fb8 	str	x24, [x29, #56]
   80af0:	528005c0 	mov	w0, #0x2e                  	// #46
   80af4:	38336aa0 	strb	w0, [x21, x19]
   80af8:	39400280 	ldrb	w0, [x20]
   80afc:	34000400 	cbz	w0, 80b7c <fat32_parse_name+0x234>
   80b00:	39400680 	ldrb	w0, [x20, #1]
   80b04:	34000420 	cbz	w0, 80b88 <fat32_parse_name+0x240>
   80b08:	39400a80 	ldrb	w0, [x20, #2]
   80b0c:	d2800077 	mov	x23, #0x3                   	// #3
   80b10:	2a1703f8 	mov	w24, w23
   80b14:	340002e0 	cbz	w0, 80b70 <fat32_parse_name+0x228>
   80b18:	110006d6 	add	w22, w22, #0x1
   80b1c:	91000673 	add	x19, x19, #0x1
   80b20:	0b1802d6 	add	w22, w22, w24
   80b24:	8b1302b3 	add	x19, x21, x19
   80b28:	91002281 	add	x1, x20, #0x8
   80b2c:	d2800062 	mov	x2, #0x3                   	// #3
   80b30:	910123a0 	add	x0, x29, #0x48
   80b34:	97fffd87 	bl	80150 <utf16ntoascii>
   80b38:	aa1703e2 	mov	x2, x23
   80b3c:	aa0003e1 	mov	x1, x0
   80b40:	aa1303e0 	mov	x0, x19
   80b44:	97fffd67 	bl	800e0 <strncpy>
   80b48:	3836cabf 	strb	wzr, [x21, w22, sxtw]
   80b4c:	d2800017 	mov	x23, #0x0                   	// #0
   80b50:	aa1703e0 	mov	x0, x23
   80b54:	f9400bb3 	ldr	x19, [x29, #16]
   80b58:	f94017b6 	ldr	x22, [x29, #40]
   80b5c:	f9401fb8 	ldr	x24, [x29, #56]
   80b60:	a941d7f4 	ldp	x20, x21, [sp, #24]
   80b64:	f9401bf7 	ldr	x23, [sp, #48]
   80b68:	a8c57bfd 	ldp	x29, x30, [sp], #80
   80b6c:	d65f03c0 	ret
   80b70:	d2800057 	mov	x23, #0x2                   	// #2
   80b74:	2a1703f8 	mov	w24, w23
   80b78:	17ffffe8 	b	80b18 <fat32_parse_name+0x1d0>
   80b7c:	d2800017 	mov	x23, #0x0                   	// #0
   80b80:	52800018 	mov	w24, #0x0                   	// #0
   80b84:	17ffffe5 	b	80b18 <fat32_parse_name+0x1d0>
   80b88:	d2800037 	mov	x23, #0x1                   	// #1
   80b8c:	2a1703f8 	mov	w24, w23
   80b90:	17ffffe2 	b	80b18 <fat32_parse_name+0x1d0>
   80b94:	d503201f 	nop

0000000000080b98 <fat32_find_entry>:
   80b98:	d10943ff 	sub	sp, sp, #0x250
   80b9c:	a9007bfd 	stp	x29, x30, [sp]
   80ba0:	910003fd 	mov	x29, sp
   80ba4:	f9000ff4 	str	x20, [sp, #24]
   80ba8:	b4000702 	cbz	x2, 80c88 <fat32_find_entry+0xf0>
   80bac:	a90363b7 	stp	x23, x24, [x29, #48]
   80bb0:	f0000018 	adrp	x24, 83000 <atag_display+0x430>
   80bb4:	9119a318 	add	x24, x24, #0x668
   80bb8:	f9000bb3 	str	x19, [x29, #16]
   80bbc:	a9025bb5 	stp	x21, x22, [x29, #32]
   80bc0:	aa0103f7 	mov	x23, x1
   80bc4:	a9046bb9 	stp	x25, x26, [x29, #64]
   80bc8:	aa0203f6 	mov	x22, x2
   80bcc:	f000001a 	adrp	x26, 83000 <atag_display+0x430>
   80bd0:	aa0003f9 	mov	x25, x0
   80bd4:	910143b5 	add	x21, x29, #0x50
   80bd8:	9121435a 	add	x26, x26, #0x850
   80bdc:	91012318 	add	x24, x24, #0x48
   80be0:	d2800013 	mov	x19, #0x0                   	// #0
   80be4:	14000004 	b	80bf4 <fat32_find_entry+0x5c>
   80be8:	91000413 	add	x19, x0, #0x1
   80bec:	eb16027f 	cmp	x19, x22
   80bf0:	54000442 	b.cs	80c78 <fat32_find_entry+0xe0>  // b.hs, b.nlast
   80bf4:	8b1316e0 	add	x0, x23, x19, lsl #5
   80bf8:	aa1503e1 	mov	x1, x21
   80bfc:	97ffff53 	bl	80948 <fat32_parse_name>
   80c00:	aa0003f4 	mov	x20, x0
   80c04:	394143a3 	ldrb	w3, [x29, #80]
   80c08:	8b130000 	add	x0, x0, x19
   80c0c:	34fffee3 	cbz	w3, 80be8 <fat32_find_entry+0x50>
   80c10:	aa1503e2 	mov	x2, x21
   80c14:	aa1a03e1 	mov	x1, x26
   80c18:	aa1803e0 	mov	x0, x24
   80c1c:	8b130294 	add	x20, x20, x19
   80c20:	94000744 	bl	82930 <__debug>
   80c24:	91000693 	add	x19, x20, #0x1
   80c28:	aa1503e1 	mov	x1, x21
   80c2c:	aa1903e0 	mov	x0, x25
   80c30:	97fffd10 	bl	80070 <strcmp>
   80c34:	35fffdc0 	cbnz	w0, 80bec <fat32_find_entry+0x54>
   80c38:	8b1416f4 	add	x20, x23, x20, lsl #5
   80c3c:	aa1903e2 	mov	x2, x25
   80c40:	aa1403e3 	mov	x3, x20
   80c44:	aa1803e0 	mov	x0, x24
   80c48:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80c4c:	9121a021 	add	x1, x1, #0x868
   80c50:	94000738 	bl	82930 <__debug>
   80c54:	f9400bb3 	ldr	x19, [x29, #16]
   80c58:	a9425bb5 	ldp	x21, x22, [x29, #32]
   80c5c:	aa1403e0 	mov	x0, x20
   80c60:	a94363b7 	ldp	x23, x24, [x29, #48]
   80c64:	a9446bb9 	ldp	x25, x26, [x29, #64]
   80c68:	a9407bfd 	ldp	x29, x30, [sp]
   80c6c:	f9400ff4 	ldr	x20, [sp, #24]
   80c70:	910943ff 	add	sp, sp, #0x250
   80c74:	d65f03c0 	ret
   80c78:	f9400bb3 	ldr	x19, [x29, #16]
   80c7c:	a9425bb5 	ldp	x21, x22, [x29, #32]
   80c80:	a94363b7 	ldp	x23, x24, [x29, #48]
   80c84:	a9446bb9 	ldp	x25, x26, [x29, #64]
   80c88:	d2800014 	mov	x20, #0x0                   	// #0
   80c8c:	a9407bfd 	ldp	x29, x30, [sp]
   80c90:	aa1403e0 	mov	x0, x20
   80c94:	f9400ff4 	ldr	x20, [sp, #24]
   80c98:	910943ff 	add	sp, sp, #0x250
   80c9c:	d65f03c0 	ret

0000000000080ca0 <fat32_open>:
   80ca0:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
   80ca4:	910003fd 	mov	x29, sp
   80ca8:	a90153f3 	stp	x19, x20, [sp, #16]
   80cac:	a9025bf5 	stp	x21, x22, [sp, #32]
   80cb0:	a90363f7 	stp	x23, x24, [sp, #48]
   80cb4:	a9046bf9 	stp	x25, x26, [sp, #64]
   80cb8:	aa0003fa 	mov	x26, x0
   80cbc:	a90573fb 	stp	x27, x28, [sp, #80]
   80cc0:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80cc4:	a90687a0 	stp	x0, x1, [x29, #104]
   80cc8:	f90047bf 	str	xzr, [x29, #136]
   80ccc:	b40018a1 	cbz	x1, 80fe0 <fat32_open+0x340>
   80cd0:	f9403bb4 	ldr	x20, [x29, #112]
   80cd4:	aa1403e0 	mov	x0, x20
   80cd8:	97fffcde 	bl	80050 <strlen>
   80cdc:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80ce0:	aa0003e2 	mov	x2, x0
   80ce4:	91226021 	add	x1, x1, #0x898
   80ce8:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80cec:	9119a013 	add	x19, x0, #0x668
   80cf0:	91018273 	add	x19, x19, #0x60
   80cf4:	aa1303e0 	mov	x0, x19
   80cf8:	9400070e 	bl	82930 <__debug>
   80cfc:	aa1403e0 	mov	x0, x20
   80d00:	97fffcd4 	bl	80050 <strlen>
   80d04:	91000400 	add	x0, x0, #0x1
   80d08:	940001cc 	bl	81438 <malloc>
   80d0c:	f90033a0 	str	x0, [x29, #96]
   80d10:	b40017a0 	cbz	x0, 81004 <fat32_open+0x364>
   80d14:	f9403ba1 	ldr	x1, [x29, #112]
   80d18:	f0000016 	adrp	x22, 83000 <atag_display+0x430>
   80d1c:	f94033b3 	ldr	x19, [x29, #96]
   80d20:	912322d6 	add	x22, x22, #0x8c8
   80d24:	aa1303e0 	mov	x0, x19
   80d28:	97fffce4 	bl	800b8 <strcpy>
   80d2c:	aa1303e0 	mov	x0, x19
   80d30:	aa1603e1 	mov	x1, x22
   80d34:	97fffd39 	bl	80218 <strtok>
   80d38:	aa0003fb 	mov	x27, x0
   80d3c:	b4001740 	cbz	x0, 81024 <fat32_open+0x384>
   80d40:	b940b341 	ldr	w1, [x26, #176]
   80d44:	910223b5 	add	x21, x29, #0x88
   80d48:	f0000013 	adrp	x19, 83000 <atag_display+0x430>
   80d4c:	aa1503e2 	mov	x2, x21
   80d50:	f9003fb3 	str	x19, [x29, #120]
   80d54:	aa1a03e0 	mov	x0, x26
   80d58:	f000001c 	adrp	x28, 83000 <atag_display+0x430>
   80d5c:	f0000017 	adrp	x23, 83000 <atag_display+0x430>
   80d60:	97fffe78 	bl	80740 <fat32_read_chain>
   80d64:	d345fc18 	lsr	x24, x0, #5
   80d68:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80d6c:	9119a034 	add	x20, x1, #0x668
   80d70:	91018294 	add	x20, x20, #0x60
   80d74:	aa1503e2 	mov	x2, x21
   80d78:	91234381 	add	x1, x28, #0x8d0
   80d7c:	aa1403e0 	mov	x0, x20
   80d80:	940006ec 	bl	82930 <__debug>
   80d84:	f0000019 	adrp	x25, 83000 <atag_display+0x430>
   80d88:	f94047a2 	ldr	x2, [x29, #136]
   80d8c:	9123a261 	add	x1, x19, #0x8e8
   80d90:	aa1403e0 	mov	x0, x20
   80d94:	912502f7 	add	x23, x23, #0x940
   80d98:	9124a339 	add	x25, x25, #0x928
   80d9c:	aa1403f3 	mov	x19, x20
   80da0:	940006e4 	bl	82930 <__debug>
   80da4:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80da8:	aa1403e0 	mov	x0, x20
   80dac:	91244021 	add	x1, x1, #0x910
   80db0:	940006e0 	bl	82930 <__debug>
   80db4:	aa1b03e2 	mov	x2, x27
   80db8:	aa1703e1 	mov	x1, x23
   80dbc:	aa1303e0 	mov	x0, x19
   80dc0:	940006dc 	bl	82930 <__debug>
   80dc4:	f94047a1 	ldr	x1, [x29, #136]
   80dc8:	aa1803e2 	mov	x2, x24
   80dcc:	aa1b03e0 	mov	x0, x27
   80dd0:	97ffff72 	bl	80b98 <fat32_find_entry>
   80dd4:	aa0003f8 	mov	x24, x0
   80dd8:	b4000500 	cbz	x0, 80e78 <fat32_open+0x1d8>
   80ddc:	aa1603e1 	mov	x1, x22
   80de0:	d2800000 	mov	x0, #0x0                   	// #0
   80de4:	97fffd0d 	bl	80218 <strtok>
   80de8:	aa0003fb 	mov	x27, x0
   80dec:	b4000360 	cbz	x0, 80e58 <fat32_open+0x1b8>
   80df0:	39402f00 	ldrb	w0, [x24, #11]
   80df4:	36200420 	tbz	w0, #4, 80e78 <fat32_open+0x1d8>
   80df8:	79403701 	ldrh	w1, [x24, #26]
   80dfc:	79402b14 	ldrh	w20, [x24, #20]
   80e00:	f94047a0 	ldr	x0, [x29, #136]
   80e04:	0b144034 	add	w20, w1, w20, lsl #16
   80e08:	940001d2 	bl	81550 <free>
   80e0c:	aa1503e2 	mov	x2, x21
   80e10:	2a1403e1 	mov	w1, w20
   80e14:	aa1a03e0 	mov	x0, x26
   80e18:	97fffe4a 	bl	80740 <fat32_read_chain>
   80e1c:	aa1503e2 	mov	x2, x21
   80e20:	91234381 	add	x1, x28, #0x8d0
   80e24:	d345fc18 	lsr	x24, x0, #5
   80e28:	aa1303e0 	mov	x0, x19
   80e2c:	940006c1 	bl	82930 <__debug>
   80e30:	f94047a2 	ldr	x2, [x29, #136]
   80e34:	f9403fa0 	ldr	x0, [x29, #120]
   80e38:	9123a001 	add	x1, x0, #0x8e8
   80e3c:	aa1303e0 	mov	x0, x19
   80e40:	940006bc 	bl	82930 <__debug>
   80e44:	2a1403e2 	mov	w2, w20
   80e48:	aa1903e1 	mov	x1, x25
   80e4c:	aa1303e0 	mov	x0, x19
   80e50:	940006b8 	bl	82930 <__debug>
   80e54:	17ffffd8 	b	80db4 <fat32_open+0x114>
   80e58:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80e5c:	91294021 	add	x1, x1, #0xa50
   80e60:	aa1303e0 	mov	x0, x19
   80e64:	940006b3 	bl	82930 <__debug>
   80e68:	d2800400 	mov	x0, #0x20                  	// #32
   80e6c:	94000173 	bl	81438 <malloc>
   80e70:	aa0003f4 	mov	x20, x0
   80e74:	b5000500 	cbnz	x0, 80f14 <fat32_open+0x274>
   80e78:	d2800015 	mov	x21, #0x0                   	// #0
   80e7c:	d2800014 	mov	x20, #0x0                   	// #0
   80e80:	f94037a0 	ldr	x0, [x29, #104]
   80e84:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80e88:	91264021 	add	x1, x1, #0x990
   80e8c:	9119a013 	add	x19, x0, #0x668
   80e90:	91018273 	add	x19, x19, #0x60
   80e94:	aa1303e0 	mov	x0, x19
   80e98:	940006a6 	bl	82930 <__debug>
   80e9c:	f94033a0 	ldr	x0, [x29, #96]
   80ea0:	940001ac 	bl	81550 <free>
   80ea4:	f94047a0 	ldr	x0, [x29, #136]
   80ea8:	b4000180 	cbz	x0, 80ed8 <fat32_open+0x238>
   80eac:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80eb0:	aa1303e0 	mov	x0, x19
   80eb4:	91268021 	add	x1, x1, #0x9a0
   80eb8:	9400069e 	bl	82930 <__debug>
   80ebc:	f94047a2 	ldr	x2, [x29, #136]
   80ec0:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80ec4:	aa1303e0 	mov	x0, x19
   80ec8:	9126e021 	add	x1, x1, #0x9b8
   80ecc:	94000699 	bl	82930 <__debug>
   80ed0:	f94047a0 	ldr	x0, [x29, #136]
   80ed4:	9400019f 	bl	81550 <free>
   80ed8:	f94037a0 	ldr	x0, [x29, #104]
   80edc:	aa1503e2 	mov	x2, x21
   80ee0:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80ee4:	91274021 	add	x1, x1, #0x9d0
   80ee8:	9119a000 	add	x0, x0, #0x668
   80eec:	91018000 	add	x0, x0, #0x60
   80ef0:	94000690 	bl	82930 <__debug>
   80ef4:	aa1403e0 	mov	x0, x20
   80ef8:	a94153f3 	ldp	x19, x20, [sp, #16]
   80efc:	a9425bf5 	ldp	x21, x22, [sp, #32]
   80f00:	a94363f7 	ldp	x23, x24, [sp, #48]
   80f04:	a9446bf9 	ldp	x25, x26, [sp, #64]
   80f08:	a94573fb 	ldp	x27, x28, [sp, #80]
   80f0c:	a8c97bfd 	ldp	x29, x30, [sp], #144
   80f10:	d65f03c0 	ret
   80f14:	aa1403e2 	mov	x2, x20
   80f18:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80f1c:	aa1303e0 	mov	x0, x19
   80f20:	9127a021 	add	x1, x1, #0x9e8
   80f24:	94000683 	bl	82930 <__debug>
   80f28:	f9403bb5 	ldr	x21, [x29, #112]
   80f2c:	aa1403e3 	mov	x3, x20
   80f30:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80f34:	aa1503e2 	mov	x2, x21
   80f38:	9127e021 	add	x1, x1, #0x9f8
   80f3c:	aa1303e0 	mov	x0, x19
   80f40:	9400067c 	bl	82930 <__debug>
   80f44:	aa1503e2 	mov	x2, x21
   80f48:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80f4c:	aa1303e0 	mov	x0, x19
   80f50:	9129c021 	add	x1, x1, #0xa70
   80f54:	94000677 	bl	82930 <__debug>
   80f58:	aa1403f5 	mov	x21, x20
   80f5c:	39402f01 	ldrb	w1, [x24, #11]
   80f60:	79403702 	ldrh	w2, [x24, #26]
   80f64:	79402b00 	ldrh	w0, [x24, #20]
   80f68:	39004281 	strb	w1, [x20, #16]
   80f6c:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80f70:	912a2021 	add	x1, x1, #0xa88
   80f74:	39403703 	ldrb	w3, [x24, #13]
   80f78:	0b004040 	add	w0, w2, w0, lsl #16
   80f7c:	39004683 	strb	w3, [x20, #17]
   80f80:	79401f06 	ldrh	w6, [x24, #14]
   80f84:	79402305 	ldrh	w5, [x24, #16]
   80f88:	79402704 	ldrh	w4, [x24, #18]
   80f8c:	79402f03 	ldrh	w3, [x24, #22]
   80f90:	79403302 	ldrh	w2, [x24, #24]
   80f94:	b9000280 	str	w0, [x20]
   80f98:	b9401f00 	ldr	w0, [x24, #28]
   80f9c:	f900069a 	str	x26, [x20, #8]
   80fa0:	79002686 	strh	w6, [x20, #18]
   80fa4:	79002a85 	strh	w5, [x20, #20]
   80fa8:	79002e84 	strh	w4, [x20, #22]
   80fac:	79003283 	strh	w3, [x20, #24]
   80fb0:	79003682 	strh	w2, [x20, #26]
   80fb4:	b9001e80 	str	w0, [x20, #28]
   80fb8:	aa1303e0 	mov	x0, x19
   80fbc:	9400065d 	bl	82930 <__debug>
   80fc0:	a9468ba0 	ldp	x0, x2, [x29, #104]
   80fc4:	f0000001 	adrp	x1, 83000 <atag_display+0x430>
   80fc8:	aa1403e3 	mov	x3, x20
   80fcc:	91258021 	add	x1, x1, #0x960
   80fd0:	9119a000 	add	x0, x0, #0x668
   80fd4:	91018000 	add	x0, x0, #0x60
   80fd8:	94000656 	bl	82930 <__debug>
   80fdc:	17ffffa9 	b	80e80 <fat32_open+0x1e0>
   80fe0:	9119a002 	add	x2, x0, #0x668
   80fe4:	f0000003 	adrp	x3, 83000 <atag_display+0x430>
   80fe8:	f0000000 	adrp	x0, 83000 <atag_display+0x430>
   80fec:	91222063 	add	x3, x3, #0x888
   80ff0:	91018042 	add	x2, x2, #0x60
   80ff4:	52802821 	mov	w1, #0x141                 	// #321
   80ff8:	911ce000 	add	x0, x0, #0x738
   80ffc:	94000601 	bl	82800 <__panic>
   81000:	17ffff34 	b	80cd0 <fat32_open+0x30>
   81004:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   81008:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   8100c:	9122c063 	add	x3, x3, #0x8b0
   81010:	aa1303e2 	mov	x2, x19
   81014:	52802901 	mov	w1, #0x148                 	// #328
   81018:	911ce000 	add	x0, x0, #0x738
   8101c:	940005f9 	bl	82800 <__panic>
   81020:	17ffff3d 	b	80d14 <fat32_open+0x74>
   81024:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   81028:	d0000001 	adrp	x1, 83000 <atag_display+0x430>
   8102c:	9119a013 	add	x19, x0, #0x668
   81030:	91294021 	add	x1, x1, #0xa50
   81034:	91018273 	add	x19, x19, #0x60
   81038:	aa1303e0 	mov	x0, x19
   8103c:	9400063d 	bl	82930 <__debug>
   81040:	d2800400 	mov	x0, #0x20                  	// #32
   81044:	940000fd 	bl	81438 <malloc>
   
   
   
   /////////////////////////////////////////////////////////
   
   
   
   81048:	aa0003f4 	mov	x20, x0                                             // x20 = malloc();
   8104c:	b4fff160 	cbz	x0, 80e78 <fat32_open+0x1d8>                        // if x0 == NULL return;
   81050:	aa1403e2 	mov	x2, x20                                             // x2 = x20
   81054:	d0000001 	adrp	x1, 83000 <atag_display+0x430>                  // x1 = 83000
   81058:	aa1303e0 	mov	x0, x19                                             // x0 = x19
   8105c:	9127a021 	add	x1, x1, #0x9e8
   81060:	94000634 	bl	82930 <__debug>
   81064:	aa1403f5 	mov	x21, x20
   81068:	f9403ba2 	ldr	x2, [x29, #112]
   8106c:	aa1403e3 	mov	x3, x20
   81070:	d0000001 	adrp	x1, 83000 <atag_display+0x430>
   81074:	aa1303e0 	mov	x0, x19
   81078:	9127e021 	add	x1, x1, #0x9f8
   8107c:	9400062d 	bl	82930 <__debug>
   81080:	d0000001 	adrp	x1, 83000 <atag_display+0x430>
   81084:	aa1303e0 	mov	x0, x19
   81088:	9128c021 	add	x1, x1, #0xa30
   8108c:	94000629 	bl	82930 <__debug>
   81090:	b940b341 	ldr	w1, [x26, #176]
   81094:	52800200 	mov	w0, #0x10                  	// #16
   81098:	b9000281 	str	w1, [x20]
   8109c:	39004280 	strb	w0, [x20, #16]
   810a0:	17ffffc8 	b	80fc0 <fat32_open+0x320>
   810a4:	00000000 	.inst	0x00000000 ; undefined

00000000000810a8 <cd_read_sector>:
   810a8:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
   810ac:	910003fd 	mov	x29, sp
   810b0:	a90573fb 	stp	x27, x28, [sp, #80]
   810b4:	aa0003fb 	mov	x27, x0
   810b8:	a90153f3 	stp	x19, x20, [sp, #16]
   810bc:	d28feb60 	mov	x0, #0x7f5b                	// #32603
   810c0:	a9025bf5 	stp	x21, x22, [sp, #32]
   810c4:	aa0103fc 	mov	x28, x1
   810c8:	2940d376 	ldp	w22, w20, [x27, #4]
   810cc:	f9001bf7 	str	x23, [sp, #48]
   810d0:	aa0203f5 	mov	x21, x2
   810d4:	12000c33 	and	w19, w1, #0xf
   810d8:	eb00003f 	cmp	x1, x0
   810dc:	2a0103f7 	mov	w23, w1
   810e0:	540003c1 	b.ne	81158 <cd_read_sector+0xb0>  // b.any
   810e4:	91001260 	add	x0, x19, #0x4
   810e8:	f8607b60 	ldr	x0, [x27, x0, lsl #3]
   810ec:	b4000360 	cbz	x0, 81158 <cd_read_sector+0xb0>
   810f0:	f1004001 	subs	x1, x0, #0x10
   810f4:	54000320 	b.eq	81158 <cd_read_sector+0xb0>  // b.none
   810f8:	f85f8000 	ldur	x0, [x0, #-8]
   810fc:	eb1c001f 	cmp	x0, x28
   81100:	54000180 	b.eq	81130 <cd_read_sector+0x88>  // b.none
   81104:	f9400820 	ldr	x0, [x1, #16]
   81108:	aa1c03e2 	mov	x2, x28
   8110c:	b5000080 	cbnz	x0, 8111c <cd_read_sector+0x74>
   81110:	14000012 	b	81158 <cd_read_sector+0xb0>
   81114:	f9400820 	ldr	x0, [x1, #16]
   81118:	b4000200 	cbz	x0, 81158 <cd_read_sector+0xb0>
   8111c:	f1004001 	subs	x1, x0, #0x10
   81120:	540001c0 	b.eq	81158 <cd_read_sector+0xb0>  // b.none
   81124:	f85f8000 	ldur	x0, [x0, #-8]
   81128:	eb02001f 	cmp	x0, x2
   8112c:	54ffff41 	b.ne	81114 <cd_read_sector+0x6c>  // b.any
   81130:	b9400362 	ldr	w2, [x27]
   81134:	528feb60 	mov	w0, #0x7f5b                	// #32603
   81138:	f9400021 	ldr	x1, [x1]
   8113c:	6b00005f 	cmp	w2, w0
   81140:	54000f49 	b.ls	81328 <cd_read_sector+0x280>  // b.plast
   81144:	aa1403e2 	mov	x2, x20
   81148:	aa1503e0 	mov	x0, x21
   8114c:	97fffbb9 	bl	80030 <memcpy>
   81150:	b9400362 	ldr	w2, [x27]
   81154:	1400001e 	b	811cc <cd_read_sector+0x124>
   81158:	f90027ba 	str	x26, [x29, #72]
   8115c:	d2800400 	mov	x0, #0x20                  	// #32
   81160:	940000b6 	bl	81438 <malloc>
   81164:	aa0003fa 	mov	x26, x0
   81168:	b40006a0 	cbz	x0, 8123c <cd_read_sector+0x194>
   8116c:	b9400361 	ldr	w1, [x27]
   81170:	f900075c 	str	x28, [x26, #8]
   81174:	2a0103e2 	mov	w2, w1
   81178:	eb1c005f 	cmp	x2, x28
   8117c:	540007a9 	b.ls	81270 <cd_read_sector+0x1c8>  // b.plast
   81180:	f9400f62 	ldr	x2, [x27, #24]
   81184:	aa1503e1 	mov	x1, x21
   81188:	2a1c03e0 	mov	w0, w28
   8118c:	d63f0040 	blr	x2
   81190:	7100001f 	cmp	w0, #0x0
   81194:	540003ed 	b.le	81210 <cd_read_sector+0x168>
   81198:	b9400362 	ldr	w2, [x27]
   8119c:	8b130f63 	add	x3, x27, x19, lsl #3
   811a0:	aa1a03e0 	mov	x0, x26
   811a4:	91001273 	add	x19, x19, #0x4
   811a8:	f8010415 	str	x21, [x0], #16
   811ac:	8b130f65 	add	x5, x27, x19, lsl #3
   811b0:	f9401061 	ldr	x1, [x3, #32]
   811b4:	f9000b41 	str	x1, [x26, #16]
   811b8:	f9001060 	str	x0, [x3, #32]
   811bc:	f9000f45 	str	x5, [x26, #24]
   811c0:	b4000161 	cbz	x1, 811ec <cd_read_sector+0x144>
   811c4:	f94027ba 	ldr	x26, [x29, #72]
   811c8:	f9000420 	str	x0, [x1, #8]
   811cc:	eb02039f 	cmp	x28, x2
   811d0:	f9401bf7 	ldr	x23, [sp, #48]
   811d4:	9a9422c0 	csel	x0, x22, x20, cs  // cs = hs, nlast
   811d8:	a94153f3 	ldp	x19, x20, [sp, #16]
   811dc:	a9425bf5 	ldp	x21, x22, [sp, #32]
   811e0:	a94573fb 	ldp	x27, x28, [sp, #80]
   811e4:	a8c87bfd 	ldp	x29, x30, [sp], #128
   811e8:	d65f03c0 	ret
   811ec:	eb02039f 	cmp	x28, x2
   811f0:	f94027ba 	ldr	x26, [x29, #72]
   811f4:	9a9422c0 	csel	x0, x22, x20, cs  // cs = hs, nlast
   811f8:	f9401bf7 	ldr	x23, [sp, #48]
   811fc:	a94153f3 	ldp	x19, x20, [sp, #16]
   81200:	a9425bf5 	ldp	x21, x22, [sp, #32]
   81204:	a94573fb 	ldp	x27, x28, [sp, #80]
   81208:	a8c87bfd 	ldp	x29, x30, [sp], #128
   8120c:	d65f03c0 	ret
   81210:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   81214:	d0000002 	adrp	x2, 83000 <atag_display+0x430>
   81218:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   8121c:	912a8042 	add	x2, x2, #0xaa0
   81220:	aa1c03e4 	mov	x4, x28
   81224:	912ba063 	add	x3, x3, #0xae8
   81228:	52800801 	mov	w1, #0x40                  	// #64
   8122c:	912b6000 	add	x0, x0, #0xad8
   81230:	94000574 	bl	82800 <__panic>
   81234:	b9400362 	ldr	w2, [x27]
   81238:	17ffffd9 	b	8119c <cd_read_sector+0xf4>
   8123c:	52800661 	mov	w1, #0x33                  	// #51
   81240:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   81244:	d0000002 	adrp	x2, 83000 <atag_display+0x430>
   81248:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   8124c:	912a8042 	add	x2, x2, #0xaa0
   81250:	912ac063 	add	x3, x3, #0xab0
   81254:	912b6000 	add	x0, x0, #0xad8
   81258:	9400056a 	bl	82800 <__panic>
   8125c:	b9400361 	ldr	w1, [x27]
   81260:	f900075c 	str	x28, [x26, #8]
   81264:	2a0103e2 	mov	w2, w1
   81268:	eb1c005f 	cmp	x2, x28
   8126c:	54fff8a8 	b.hi	81180 <cd_read_sector+0xd8>  // b.pmore
   81270:	f9001fb8 	str	x24, [x29, #56]
   81274:	9ad40ad8 	udiv	x24, x22, x20
   81278:	b9007bb8 	str	w24, [x29, #120]
   8127c:	7100031f 	cmp	w24, #0x0
   81280:	540005ed 	b.le	8133c <cd_read_sector+0x294>
   81284:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   81288:	912a8000 	add	x0, x0, #0xaa0
   8128c:	d0000002 	adrp	x2, 83000 <atag_display+0x430>
   81290:	f90023b9 	str	x25, [x29, #64]
   81294:	912ba042 	add	x2, x2, #0xae8
   81298:	b9007fb8 	str	w24, [x29, #124]
   8129c:	a9068ba0 	stp	x0, x2, [x29, #104]
   812a0:	aa1503f8 	mov	x24, x21
   812a4:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   812a8:	52800019 	mov	w25, #0x0                   	// #0
   812ac:	f90033a0 	str	x0, [x29, #96]
   812b0:	14000006 	b	812c8 <cd_read_sector+0x220>
   812b4:	b9407ba0 	ldr	w0, [x29, #120]
   812b8:	11000739 	add	w25, w25, #0x1
   812bc:	b9400361 	ldr	w1, [x27]
   812c0:	6b19001f 	cmp	w0, w25
   812c4:	540002c0 	b.eq	8131c <cd_read_sector+0x274>  // b.none
   812c8:	b9407fa4 	ldr	w4, [x29, #124]
   812cc:	0b010323 	add	w3, w25, w1
   812d0:	4b0102e0 	sub	w0, w23, w1
   812d4:	f9400f62 	ldr	x2, [x27, #24]
   812d8:	aa1803e1 	mov	x1, x24
   812dc:	8b140318 	add	x24, x24, x20
   812e0:	1b040c00 	madd	w0, w0, w4, w3
   812e4:	d63f0040 	blr	x2
   812e8:	7100001f 	cmp	w0, #0x0
   812ec:	54fffe4c 	b.gt	812b4 <cd_read_sector+0x20c>
   812f0:	b940036a 	ldr	w10, [x27]
   812f4:	52800ac1 	mov	w1, #0x56                  	// #86
   812f8:	b9407fa5 	ldr	w5, [x29, #124]
   812fc:	4b0a02e4 	sub	w4, w23, w10
   81300:	f9403ba3 	ldr	x3, [x29, #112]
   81304:	a9460ba0 	ldp	x0, x2, [x29, #96]
   81308:	1b052884 	madd	w4, w4, w5, w10
   8130c:	912b6000 	add	x0, x0, #0xad8
   81310:	0b190084 	add	w4, w4, w25
   81314:	9400053b 	bl	82800 <__panic>
   81318:	17ffffe7 	b	812b4 <cd_read_sector+0x20c>
   8131c:	2a0103e2 	mov	w2, w1
   81320:	a943e7b8 	ldp	x24, x25, [x29, #56]
   81324:	17ffff9e 	b	8119c <cd_read_sector+0xf4>
   81328:	aa1603e2 	mov	x2, x22
   8132c:	aa1503e0 	mov	x0, x21
   81330:	97fffb40 	bl	80030 <memcpy>
   81334:	b9400362 	ldr	w2, [x27]
   81338:	17ffffa5 	b	811cc <cd_read_sector+0x124>
   8133c:	f9401fb8 	ldr	x24, [x29, #56]
   81340:	17ffff97 	b	8119c <cd_read_sector+0xf4>
   81344:	00000000 	.inst	0x00000000 ; undefined

0000000000081348 <mem_init>:
   81348:	90000023 	adrp	x3, 85000 <cwd+0x3e8>
   8134c:	f9401860 	ldr	x0, [x3, #48]
   81350:	91068001 	add	x1, x0, #0x1a0
   81354:	d503201f 	nop
   81358:	a9000000 	stp	x0, x0, [x0]
   8135c:	91004000 	add	x0, x0, #0x10
   81360:	eb01001f 	cmp	x0, x1
   81364:	54ffffa1 	b.ne	81358 <mem_init+0x10>  // b.any
   81368:	d2802000 	mov	x0, #0x100                 	// #256
   8136c:	b9400401 	ldr	w1, [x0, #4]
   81370:	34000181 	cbz	w1, 813a0 <mem_init+0x58>
   81374:	52800042 	mov	w2, #0x2                   	// #2
   81378:	72aa8822 	movk	w2, #0x5441, lsl #16
   8137c:	6b02003f 	cmp	w1, w2
   81380:	54000061 	b.ne	8138c <mem_init+0x44>  // b.any
   81384:	1400000f 	b	813c0 <mem_init+0x78>
   81388:	540001c0 	b.eq	813c0 <mem_init+0x78>  // b.none
   8138c:	b9400001 	ldr	w1, [x0]
   81390:	8b214800 	add	x0, x0, w1, uxtw #2
   81394:	b9400401 	ldr	w1, [x0, #4]
   81398:	6b02003f 	cmp	w1, w2
   8139c:	35ffff61 	cbnz	w1, 81388 <mem_init+0x40>
   813a0:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   813a4:	d0000002 	adrp	x2, 83000 <atag_display+0x430>
   813a8:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   813ac:	912de063 	add	x3, x3, #0xb78
   813b0:	912c4042 	add	x2, x2, #0xb10
   813b4:	52800581 	mov	w1, #0x2c                  	// #44
   813b8:	912da000 	add	x0, x0, #0xb68
   813bc:	14000511 	b	82800 <__panic>
   813c0:	b9400805 	ldr	w5, [x0, #8]
   813c4:	f9401062 	ldr	x2, [x3, #32]
   813c8:	b9400c00 	ldr	w0, [x0, #12]
   813cc:	f9402464 	ldr	x4, [x3, #72]
   813d0:	2a0003e0 	mov	w0, w0
   813d4:	8b254005 	add	x5, x0, w5, uxtw
   813d8:	a9001444 	stp	x4, x5, [x2]
   813dc:	eb0400bf 	cmp	x5, x4
   813e0:	54000049 	b.ls	813e8 <mem_init+0xa0>  // b.plast
   813e4:	d65f03c0 	ret
   813e8:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   813ec:	d0000002 	adrp	x2, 83000 <atag_display+0x430>
   813f0:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   813f4:	912ca063 	add	x3, x3, #0xb28
   813f8:	912c4042 	add	x2, x2, #0xb10
   813fc:	52800441 	mov	w1, #0x22                  	// #34
   81400:	912da000 	add	x0, x0, #0xb68
   81404:	140004ff 	b	82800 <__panic>

0000000000081408 <bump_alloc>:
   81408:	90000022 	adrp	x2, 85000 <cwd+0x3e8>
   8140c:	f0000003 	adrp	x3, 84000 <__func__.3102+0x40>
   81410:	91001c01 	add	x1, x0, #0x7
   81414:	f9401042 	ldr	x2, [x2, #32]
   81418:	927df021 	and	x1, x1, #0xfffffffffffffff8
   8141c:	f9460860 	ldr	x0, [x3, #3088]
   81420:	8b010001 	add	x1, x0, x1
   81424:	f9060861 	str	x1, [x3, #3088]
   81428:	f9400442 	ldr	x2, [x2, #8]
   8142c:	eb02003f 	cmp	x1, x2
   81430:	9a9f9000 	csel	x0, x0, xzr, ls  // ls = plast
   81434:	d65f03c0 	ret

0000000000081438 <malloc>:
   81438:	91006001 	add	x1, x0, #0x18
   8143c:	f100803f 	cmp	x1, #0x20
   81440:	54000789 	b.ls	81530 <malloc+0xf8>  // b.plast
   81444:	91005c02 	add	x2, x0, #0x17
   81448:	dac01023 	clz	x3, x1
   8144c:	ea01005f 	tst	x2, x1
   81450:	52800804 	mov	w4, #0x40                  	// #64
   81454:	1a9f17e1 	cset	w1, eq  // eq = none
   81458:	4b030084 	sub	w4, w4, w3
   8145c:	4b010084 	sub	w4, w4, w1
   81460:	90000025 	adrp	x5, 85000 <cwd+0x3e8>
   81464:	51001484 	sub	w4, w4, #0x5
   81468:	f94018a3 	ldr	x3, [x5, #48]
   8146c:	93407c81 	sxtw	x1, w4
   81470:	8b011063 	add	x3, x3, x1, lsl #4
   81474:	f94018a2 	ldr	x2, [x5, #48]
   81478:	8b011041 	add	x1, x2, x1, lsl #4
   8147c:	f9400421 	ldr	x1, [x1, #8]
   81480:	d1002022 	sub	x2, x1, #0x8
   81484:	eb01007f 	cmp	x3, x1
   81488:	540000c1 	b.ne	814a0 <malloc+0x68>  // b.any
   8148c:	1400000d 	b	814c0 <malloc+0x88>
   81490:	f9400841 	ldr	x1, [x2, #16]
   81494:	eb01007f 	cmp	x3, x1
   81498:	d1002022 	sub	x2, x1, #0x8
   8149c:	54000120 	b.eq	814c0 <malloc+0x88>  // b.none
   814a0:	b85f8021 	ldur	w1, [x1, #-8]
   814a4:	3707ff61 	tbnz	w1, #0, 81490 <malloc+0x58>
   814a8:	11001c00 	add	w0, w0, #0x7
   814ac:	121d7000 	and	w0, w0, #0xfffffff8
   814b0:	32000000 	orr	w0, w0, #0x1
   814b4:	b8018440 	str	w0, [x2], #24
   814b8:	aa0203e0 	mov	x0, x2
   814bc:	d65f03c0 	ret
   814c0:	11001484 	add	w4, w4, #0x5
   814c4:	52800021 	mov	w1, #0x1                   	// #1
   814c8:	f0000002 	adrp	x2, 84000 <__func__.3102+0x40>
   814cc:	f94010a7 	ldr	x7, [x5, #32]
   814d0:	1ac42021 	lsl	w1, w1, w4
   814d4:	93407c21 	sxtw	x1, w1
   814d8:	f9460844 	ldr	x4, [x2, #3088]
   814dc:	91001c21 	add	x1, x1, #0x7
   814e0:	927df021 	and	x1, x1, #0xfffffffffffffff8
   814e4:	f94004e5 	ldr	x5, [x7, #8]
   814e8:	8b010081 	add	x1, x4, x1
   814ec:	f9060841 	str	x1, [x2, #3088]
   814f0:	f100009f 	cmp	x4, #0x0
   814f4:	fa451022 	ccmp	x1, x5, #0x2, ne  // ne = any
   814f8:	54000268 	b.hi	81544 <malloc+0x10c>  // b.pmore
   814fc:	f9400063 	ldr	x3, [x3]
   81500:	aa0403e1 	mov	x1, x4
   81504:	11001c00 	add	w0, w0, #0x7
   81508:	91006082 	add	x2, x4, #0x18
   8150c:	121d7000 	and	w0, w0, #0xfffffff8
   81510:	f9400465 	ldr	x5, [x3, #8]
   81514:	32000000 	orr	w0, w0, #0x1
   81518:	b8008420 	str	w0, [x1], #8
   8151c:	aa0203e0 	mov	x0, x2
   81520:	a9009483 	stp	x3, x5, [x4, #8]
   81524:	f9000461 	str	x1, [x3, #8]
   81528:	f90000a1 	str	x1, [x5]
   8152c:	d65f03c0 	ret
   81530:	90000025 	adrp	x5, 85000 <cwd+0x3e8>
   81534:	52800004 	mov	w4, #0x0                   	// #0
   81538:	d2800001 	mov	x1, #0x0                   	// #0
   8153c:	f94018a3 	ldr	x3, [x5, #48]
   81540:	17ffffcd 	b	81474 <malloc+0x3c>
   81544:	d2800002 	mov	x2, #0x0                   	// #0
   81548:	17ffffdc 	b	814b8 <malloc+0x80>
   8154c:	d503201f 	nop

0000000000081550 <free>:
   81550:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   81554:	d1006002 	sub	x2, x0, #0x18
   81558:	d0000001 	adrp	x1, 83000 <atag_display+0x430>
   8155c:	912e6021 	add	x1, x1, #0xb98
   81560:	910003fd 	mov	x29, sp
   81564:	a90153f3 	stp	x19, x20, [sp, #16]
   81568:	aa0003f4 	mov	x20, x0
   8156c:	d0000013 	adrp	x19, 83000 <atag_display+0x430>
   81570:	912c4273 	add	x19, x19, #0xb10
   81574:	91004273 	add	x19, x19, #0x10
   81578:	aa1303e0 	mov	x0, x19
   8157c:	940004ed 	bl	82930 <__debug>
   81580:	b85e8282 	ldur	w2, [x20, #-24]
   81584:	aa1303e0 	mov	x0, x19
   81588:	d0000001 	adrp	x1, 83000 <atag_display+0x430>
   8158c:	912ec021 	add	x1, x1, #0xbb0
   81590:	121f7842 	and	w2, w2, #0xfffffffe
   81594:	b81e8282 	stur	w2, [x20, #-24]
   81598:	a94153f3 	ldp	x19, x20, [sp, #16]
   8159c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   815a0:	140004e4 	b	82930 <__debug>
   815a4:	d503201f 	nop

00000000000815a8 <realloc>:
   815a8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   815ac:	910003fd 	mov	x29, sp
   815b0:	b85e8009 	ldur	w9, [x0, #-24]
   815b4:	b4000161 	cbz	x1, 815e0 <realloc+0x38>
   815b8:	aa0003e8 	mov	x8, x0
   815bc:	aa0103e6 	mov	x6, x1
   815c0:	aa0103e0 	mov	x0, x1
   815c4:	97ffff9d 	bl	81438 <malloc>
   815c8:	b40000e0 	cbz	x0, 815e4 <realloc+0x3c>
   815cc:	a8c17bfd 	ldp	x29, x30, [sp], #16
   815d0:	eb06013f 	cmp	x9, x6
   815d4:	aa0803e1 	mov	x1, x8
   815d8:	9a869122 	csel	x2, x9, x6, ls  // ls = plast
   815dc:	17fffa95 	b	80030 <memcpy>
   815e0:	97ffffdc 	bl	81550 <free>
   815e4:	d2800000 	mov	x0, #0x0                   	// #0
   815e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
   815ec:	d65f03c0 	ret

00000000000815f0 <read_cmd>:
   815f0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   815f4:	910003fd 	mov	x29, sp
   815f8:	a9025bf5 	stp	x21, x22, [sp, #32]
   815fc:	f0000016 	adrp	x22, 84000 <__func__.3102+0x40>
   81600:	aa0003f5 	mov	x21, x0
   81604:	912be2d6 	add	x22, x22, #0xaf8
   81608:	a90153f3 	stp	x19, x20, [sp, #16]
   8160c:	52800014 	mov	w20, #0x0                   	// #0
   81610:	9400054e 	bl	82b48 <mu_read_byte>
   81614:	12001c01 	and	w1, w0, #0xff
   81618:	2a0103f3 	mov	w19, w1
   8161c:	7100343f 	cmp	w1, #0xd
   81620:	54000200 	b.eq	81660 <read_cmd+0x70>  // b.none
   81624:	7100203f 	cmp	w1, #0x8
   81628:	540000c0 	b.eq	81640 <read_cmd+0x50>  // b.none
   8162c:	54000309 	b.ls	8168c <read_cmd+0x9c>  // b.plast
   81630:	7100243f 	cmp	w1, #0x9
   81634:	540003e0 	b.eq	816b0 <read_cmd+0xc0>  // b.none
   81638:	7101fc3f 	cmp	w1, #0x7f
   8163c:	540002a1 	b.ne	81690 <read_cmd+0xa0>  // b.any
   81640:	350003f4 	cbnz	w20, 816bc <read_cmd+0xcc>
   81644:	528000e0 	mov	w0, #0x7                   	// #7
   81648:	9400052a 	bl	82af0 <mu_write_byte>
   8164c:	9400053f 	bl	82b48 <mu_read_byte>
   81650:	12001c01 	and	w1, w0, #0xff
   81654:	2a0103f3 	mov	w19, w1
   81658:	7100343f 	cmp	w1, #0xd
   8165c:	54fffe41 	b.ne	81624 <read_cmd+0x34>  // b.any
   81660:	710ffe9f 	cmp	w20, #0x3ff
   81664:	540003cc 	b.gt	816dc <read_cmd+0xec>
   81668:	3834cabf 	strb	wzr, [x21, w20, sxtw]
   8166c:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81670:	912be000 	add	x0, x0, #0xaf8
   81674:	94000445 	bl	82788 <kprintf>
   81678:	aa1503e0 	mov	x0, x21
   8167c:	a94153f3 	ldp	x19, x20, [sp, #16]
   81680:	a9425bf5 	ldp	x21, x22, [sp, #32]
   81684:	a8c37bfd 	ldp	x29, x30, [sp], #48
   81688:	d65f03c0 	ret
   8168c:	34fffc21 	cbz	w1, 81610 <read_cmd+0x20>
   81690:	373ffc13 	tbnz	w19, #7, 81610 <read_cmd+0x20>
   81694:	2a1303e0 	mov	w0, w19
   81698:	94000516 	bl	82af0 <mu_write_byte>
   8169c:	710ffe9f 	cmp	w20, #0x3ff
   816a0:	54fffb8c 	b.gt	81610 <read_cmd+0x20>
   816a4:	3834cab3 	strb	w19, [x21, w20, sxtw]
   816a8:	11000694 	add	w20, w20, #0x1
   816ac:	17ffffd9 	b	81610 <read_cmd+0x20>
   816b0:	aa1603e0 	mov	x0, x22
   816b4:	94000435 	bl	82788 <kprintf>
   816b8:	17ffffd6 	b	81610 <read_cmd+0x20>
   816bc:	52800100 	mov	w0, #0x8                   	// #8
   816c0:	9400050c 	bl	82af0 <mu_write_byte>
   816c4:	52800400 	mov	w0, #0x20                  	// #32
   816c8:	9400050a 	bl	82af0 <mu_write_byte>
   816cc:	52800100 	mov	w0, #0x8                   	// #8
   816d0:	51000694 	sub	w20, w20, #0x1
   816d4:	94000507 	bl	82af0 <mu_write_byte>
   816d8:	17ffffce 	b	81610 <read_cmd+0x20>
   816dc:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   816e0:	913f2000 	add	x0, x0, #0xfc8
   816e4:	94000429 	bl	82788 <kprintf>
   816e8:	d2800000 	mov	x0, #0x0                   	// #0
   816ec:	17ffffe4 	b	8167c <read_cmd+0x8c>

00000000000816f0 <parse_cmd>:
   816f0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   816f4:	910003fd 	mov	x29, sp
   816f8:	a90153f3 	stp	x19, x20, [sp, #16]
   816fc:	aa0003f3 	mov	x19, x0
   81700:	d0000014 	adrp	x20, 83000 <atag_display+0x430>
   81704:	913f8294 	add	x20, x20, #0xfe0
   81708:	aa0103e0 	mov	x0, x1
   8170c:	aa1403e1 	mov	x1, x20
   81710:	b910067f 	str	wzr, [x19, #4100]
   81714:	97fffac1 	bl	80218 <strtok>
   81718:	b5000180 	cbnz	x0, 81748 <parse_cmd+0x58>
   8171c:	14000015 	b	81770 <parse_cmd+0x80>
   81720:	11000443 	add	w3, w2, #0x1
   81724:	d37a7c42 	ubfiz	x2, x2, #6, #32
   81728:	b9100663 	str	w3, [x19, #4100]
   8172c:	aa0003e1 	mov	x1, x0
   81730:	8b020260 	add	x0, x19, x2
   81734:	97fffa61 	bl	800b8 <strcpy>
   81738:	aa1403e1 	mov	x1, x20
   8173c:	d2800000 	mov	x0, #0x0                   	// #0
   81740:	97fffab6 	bl	80218 <strtok>
   81744:	b4000160 	cbz	x0, 81770 <parse_cmd+0x80>
   81748:	b9500662 	ldr	w2, [x19, #4100]
   8174c:	7100fc5f 	cmp	w2, #0x3f
   81750:	54fffe89 	b.ls	81720 <parse_cmd+0x30>  // b.plast
   81754:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   81758:	913fa000 	add	x0, x0, #0xfe8
   8175c:	9400040b 	bl	82788 <kprintf>
   81760:	12800000 	mov	w0, #0xffffffff            	// #-1
   81764:	a94153f3 	ldp	x19, x20, [sp, #16]
   81768:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8176c:	d65f03c0 	ret
   81770:	b9500660 	ldr	w0, [x19, #4100]
   81774:	a94153f3 	ldp	x19, x20, [sp, #16]
   81778:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8177c:	d65f03c0 	ret

0000000000081780 <echo>:
   81780:	34000401 	cbz	w1, 81800 <echo+0x80>
   81784:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   81788:	910003fd 	mov	x29, sp
   8178c:	a90153f3 	stp	x19, x20, [sp, #16]
   81790:	aa0003f4 	mov	x20, x0
   81794:	a9025bf5 	stp	x21, x22, [sp, #32]
   81798:	f0000016 	adrp	x22, 84000 <__func__.3102+0x40>
   8179c:	a90363f7 	stp	x23, x24, [sp, #48]
   817a0:	2a0103f5 	mov	w21, w1
   817a4:	d0000017 	adrp	x23, 83000 <atag_display+0x430>
   817a8:	51000438 	sub	w24, w1, #0x1
   817ac:	910002d6 	add	x22, x22, #0x0
   817b0:	913f82f7 	add	x23, x23, #0xfe0
   817b4:	52800013 	mov	w19, #0x0                   	// #0
   817b8:	aa1403e1 	mov	x1, x20
   817bc:	aa1603e0 	mov	x0, x22
   817c0:	940003f2 	bl	82788 <kprintf>
   817c4:	91010294 	add	x20, x20, #0x40
   817c8:	6b18027f 	cmp	w19, w24
   817cc:	11000673 	add	w19, w19, #0x1
   817d0:	54000060 	b.eq	817dc <echo+0x5c>  // b.none
   817d4:	aa1703e0 	mov	x0, x23
   817d8:	940003ec 	bl	82788 <kprintf>
   817dc:	6b1302bf 	cmp	w21, w19
   817e0:	54fffec1 	b.ne	817b8 <echo+0x38>  // b.any
   817e4:	a94153f3 	ldp	x19, x20, [sp, #16]
   817e8:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   817ec:	a9425bf5 	ldp	x21, x22, [sp, #32]
   817f0:	912be000 	add	x0, x0, #0xaf8
   817f4:	a94363f7 	ldp	x23, x24, [sp, #48]
   817f8:	a8c47bfd 	ldp	x29, x30, [sp], #64
   817fc:	140003e3 	b	82788 <kprintf>
   81800:	d65f03c0 	ret
   81804:	d503201f 	nop

0000000000081808 <cat>:
   81808:	d11183ff 	sub	sp, sp, #0x460
   8180c:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   81810:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
   81814:	a9007bfd 	stp	x29, x30, [sp]
   81818:	910003fd 	mov	x29, sp
   8181c:	f9000bf3 	str	x19, [sp, #16]
   81820:	aa0003f3 	mov	x19, x0
   81824:	79578060 	ldrh	w0, [x3, #3008]
   81828:	f90017f6 	str	x22, [sp, #40]
   8182c:	2a0103f6 	mov	w22, w1
   81830:	7900c3a0 	strh	w0, [x29, #96]
   81834:	52800001 	mov	w1, #0x0                   	// #0
   81838:	91018ba0 	add	x0, x29, #0x62
   8183c:	97fffab7 	bl	80318 <memset>
   81840:	34000736 	cbz	w22, 81924 <cat+0x11c>
   81844:	510006d6 	sub	w22, w22, #0x1
   81848:	91010260 	add	x0, x19, #0x40
   8184c:	52800801 	mov	w1, #0x40                  	// #64
   81850:	a901d7b4 	stp	x20, x21, [x29, #24]
   81854:	a90363b7 	stp	x23, x24, [x29, #48]
   81858:	910183b4 	add	x20, x29, #0x60
   8185c:	a9046bb9 	stp	x25, x26, [x29, #64]
   81860:	f0000017 	adrp	x23, 84000 <__func__.3102+0x40>
   81864:	f0000018 	adrp	x24, 84000 <__func__.3102+0x40>
   81868:	913062f7 	add	x23, x23, #0xc18
   8186c:	9ba102d6 	umaddl	x22, w22, w1, x0
   81870:	910163ba 	add	x26, x29, #0x58
   81874:	91274318 	add	x24, x24, #0x9d0
   81878:	90000039 	adrp	x25, 85000 <cwd+0x3e8>
   8187c:	1400000e 	b	818b4 <cat+0xac>
   81880:	39404000 	ldrb	w0, [x0, #16]
   81884:	37200600 	tbnz	w0, #4, 81944 <cat+0x13c>
   81888:	b9400021 	ldr	w1, [x1]
   8188c:	91010273 	add	x19, x19, #0x40
   81890:	f94002a0 	ldr	x0, [x21]
   81894:	97fffbab 	bl	80740 <fat32_read_chain>
   81898:	f9402fa1 	ldr	x1, [x29, #88]
   8189c:	3820683f 	strb	wzr, [x1, x0]
   818a0:	aa1803e0 	mov	x0, x24
   818a4:	f9402fa1 	ldr	x1, [x29, #88]
   818a8:	940003b8 	bl	82788 <kprintf>
   818ac:	eb16027f 	cmp	x19, x22
   818b0:	54000620 	b.eq	81974 <cat+0x16c>  // b.none
   818b4:	39400262 	ldrb	w2, [x19]
   818b8:	aa1703e1 	mov	x1, x23
   818bc:	aa1403e0 	mov	x0, x20
   818c0:	7100bc5f 	cmp	w2, #0x2f
   818c4:	54000040 	b.eq	818cc <cat+0xc4>  // b.none
   818c8:	97fff9fc 	bl	800b8 <strcpy>
   818cc:	aa1303e1 	mov	x1, x19
   818d0:	aa1403e0 	mov	x0, x20
   818d4:	97fffa45 	bl	801e8 <strcat>
   818d8:	f9402335 	ldr	x21, [x25, #64]
   818dc:	aa1403e1 	mov	x1, x20
   818e0:	f94002a0 	ldr	x0, [x21]
   818e4:	97fffcef 	bl	80ca0 <fat32_open>
   818e8:	aa0003e1 	mov	x1, x0
   818ec:	aa1a03e2 	mov	x2, x26
   818f0:	b5fffc80 	cbnz	x0, 81880 <cat+0x78>
   818f4:	aa1303e1 	mov	x1, x19
   818f8:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   818fc:	91006000 	add	x0, x0, #0x18
   81900:	940003a2 	bl	82788 <kprintf>
   81904:	a941d7b4 	ldp	x20, x21, [x29, #24]
   81908:	a94363b7 	ldp	x23, x24, [x29, #48]
   8190c:	a9446bb9 	ldp	x25, x26, [x29, #64]
   81910:	a9407bfd 	ldp	x29, x30, [sp]
   81914:	f9400bf3 	ldr	x19, [sp, #16]
   81918:	f94017f6 	ldr	x22, [sp, #40]
   8191c:	911183ff 	add	sp, sp, #0x460
   81920:	d65f03c0 	ret
   81924:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81928:	91002000 	add	x0, x0, #0x8
   8192c:	94000397 	bl	82788 <kprintf>
   81930:	f9400bf3 	ldr	x19, [sp, #16]
   81934:	a9407bfd 	ldp	x29, x30, [sp]
   81938:	f94017f6 	ldr	x22, [sp, #40]
   8193c:	911183ff 	add	sp, sp, #0x460
   81940:	d65f03c0 	ret
   81944:	aa1303e1 	mov	x1, x19
   81948:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   8194c:	9100e000 	add	x0, x0, #0x38
   81950:	9400038e 	bl	82788 <kprintf>
   81954:	a941d7b4 	ldp	x20, x21, [x29, #24]
   81958:	a94363b7 	ldp	x23, x24, [x29, #48]
   8195c:	a9446bb9 	ldp	x25, x26, [x29, #64]
   81960:	a9407bfd 	ldp	x29, x30, [sp]
   81964:	f9400bf3 	ldr	x19, [sp, #16]
   81968:	f94017f6 	ldr	x22, [sp, #40]
   8196c:	911183ff 	add	sp, sp, #0x460
   81970:	d65f03c0 	ret
   81974:	a941d7b4 	ldp	x20, x21, [x29, #24]
   81978:	a94363b7 	ldp	x23, x24, [x29, #48]
   8197c:	a9446bb9 	ldp	x25, x26, [x29, #64]
   81980:	a9407bfd 	ldp	x29, x30, [sp]
   81984:	f9400bf3 	ldr	x19, [sp, #16]
   81988:	f94017f6 	ldr	x22, [sp, #40]
   8198c:	911183ff 	add	sp, sp, #0x460
   81990:	d65f03c0 	ret
   81994:	d503201f 	nop

0000000000081998 <cd>:
   81998:	d12143ff 	sub	sp, sp, #0x850
   8199c:	d0000003 	adrp	x3, 83000 <atag_display+0x430>
   819a0:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
   819a4:	a9007bfd 	stp	x29, x30, [sp]
   819a8:	910003fd 	mov	x29, sp
   819ac:	a90153f3 	stp	x19, x20, [sp, #16]
   819b0:	aa0003f4 	mov	x20, x0
   819b4:	79578060 	ldrh	w0, [x3, #3008]
   819b8:	2a0103f3 	mov	w19, w1
   819bc:	7900a3a0 	strh	w0, [x29, #80]
   819c0:	52800001 	mov	w1, #0x0                   	// #0
   819c4:	91014ba0 	add	x0, x29, #0x52
   819c8:	97fffa54 	bl	80318 <memset>
   819cc:	7100067f 	cmp	w19, #0x1
   819d0:	54000aa8 	b.hi	81b24 <cd+0x18c>  // b.pmore
   819d4:	34000a13 	cbz	w19, 81b14 <cd+0x17c>
   819d8:	f9001bb7 	str	x23, [x29, #48]
   819dc:	910143b3 	add	x19, x29, #0x50
   819e0:	39400280 	ldrb	w0, [x20]
   819e4:	7100bc1f 	cmp	w0, #0x2f
   819e8:	54000ac1 	b.ne	81b40 <cd+0x1a8>  // b.any
   819ec:	aa1403e1 	mov	x1, x20
   819f0:	aa1303e0 	mov	x0, x19
   819f4:	97fff9fd 	bl	801e8 <strcat>
   819f8:	90000020 	adrp	x0, 85000 <cwd+0x3e8>
   819fc:	aa1303e1 	mov	x1, x19
   81a00:	f9402000 	ldr	x0, [x0, #64]
   81a04:	f9400000 	ldr	x0, [x0]
   81a08:	97fffca6 	bl	80ca0 <fat32_open>
   81a0c:	aa0003f7 	mov	x23, x0
   81a10:	b4000b40 	cbz	x0, 81b78 <cd+0x1e0>
   81a14:	39404000 	ldrb	w0, [x0, #16]
   81a18:	362009e0 	tbz	w0, #4, 81b54 <cd+0x1bc>
   81a1c:	f90013b5 	str	x21, [x29, #32]
   81a20:	d0000015 	adrp	x21, 83000 <atag_display+0x430>
   81a24:	912322b5 	add	x21, x21, #0x8c8
   81a28:	aa1303e0 	mov	x0, x19
   81a2c:	aa1503e1 	mov	x1, x21
   81a30:	97fff9fa 	bl	80218 <strtok>
   81a34:	aa0003f4 	mov	x20, x0
   81a38:	b4000ac0 	cbz	x0, 81b90 <cd+0x1f8>
   81a3c:	f90017b6 	str	x22, [x29, #40]
   81a40:	f0000016 	adrp	x22, 84000 <__func__.3102+0x40>
   81a44:	a903e7b8 	stp	x24, x25, [x29, #56]
   81a48:	9101c2d6 	add	x22, x22, #0x70
   81a4c:	f0000018 	adrp	x24, 84000 <__func__.3102+0x40>
   81a50:	911143b9 	add	x25, x29, #0x450
   81a54:	9101a318 	add	x24, x24, #0x68
   81a58:	12800013 	mov	w19, #0xffffffff            	// #-1
   81a5c:	d503201f 	nop
   81a60:	aa1403e1 	mov	x1, x20
   81a64:	aa1803e0 	mov	x0, x24
   81a68:	97fff982 	bl	80070 <strcmp>
   81a6c:	35000080 	cbnz	w0, 81a7c <cd+0xe4>
   81a70:	3100067f 	cmn	w19, #0x1
   81a74:	1a9f07e0 	cset	w0, ne  // ne = any
   81a78:	4b000273 	sub	w19, w19, w0
   81a7c:	aa1403e1 	mov	x1, x20
   81a80:	aa1603e0 	mov	x0, x22
   81a84:	97fff97b 	bl	80070 <strcmp>
   81a88:	34000060 	cbz	w0, 81a94 <cd+0xfc>
   81a8c:	11000673 	add	w19, w19, #0x1
   81a90:	f833db34 	str	x20, [x25, w19, sxtw #3]
   81a94:	aa1503e1 	mov	x1, x21
   81a98:	d2800000 	mov	x0, #0x0                   	// #0
   81a9c:	97fff9df 	bl	80218 <strtok>
   81aa0:	aa0003f4 	mov	x20, x0
   81aa4:	b5fffde0 	cbnz	x0, 81a60 <cd+0xc8>
   81aa8:	f0000016 	adrp	x22, 84000 <__func__.3102+0x40>
   81aac:	913062d6 	add	x22, x22, #0xc18
   81ab0:	aa1503e1 	mov	x1, x21
   81ab4:	aa1603e0 	mov	x0, x22
   81ab8:	97fff980 	bl	800b8 <strcpy>
   81abc:	3100067f 	cmn	w19, #0x1
   81ac0:	540001e0 	b.eq	81afc <cd+0x164>  // b.none
   81ac4:	93407e73 	sxtw	x19, w19
   81ac8:	911143b8 	add	x24, x29, #0x450
   81acc:	91000673 	add	x19, x19, #0x1
   81ad0:	d2800014 	mov	x20, #0x0                   	// #0
   81ad4:	d503201f 	nop
   81ad8:	f8747b01 	ldr	x1, [x24, x20, lsl #3]
   81adc:	aa1603e0 	mov	x0, x22
   81ae0:	91000694 	add	x20, x20, #0x1
   81ae4:	97fff9c1 	bl	801e8 <strcat>
   81ae8:	aa1503e1 	mov	x1, x21
   81aec:	aa1603e0 	mov	x0, x22
   81af0:	97fff9be 	bl	801e8 <strcat>
   81af4:	eb14027f 	cmp	x19, x20
   81af8:	54ffff01 	b.ne	81ad8 <cd+0x140>  // b.any
   81afc:	f94017b6 	ldr	x22, [x29, #40]
   81b00:	a943e7b8 	ldp	x24, x25, [x29, #56]
   81b04:	aa1703e0 	mov	x0, x23
   81b08:	97fffe92 	bl	81550 <free>
   81b0c:	f94013b5 	ldr	x21, [x29, #32]
   81b10:	f9401bb7 	ldr	x23, [x29, #48]
   81b14:	a9407bfd 	ldp	x29, x30, [sp]
   81b18:	a94153f3 	ldp	x19, x20, [sp, #16]
   81b1c:	912143ff 	add	sp, sp, #0x850
   81b20:	d65f03c0 	ret
   81b24:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   81b28:	913fa000 	add	x0, x0, #0xfe8
   81b2c:	94000317 	bl	82788 <kprintf>
   81b30:	a9407bfd 	ldp	x29, x30, [sp]
   81b34:	a94153f3 	ldp	x19, x20, [sp, #16]
   81b38:	912143ff 	add	sp, sp, #0x850
   81b3c:	d65f03c0 	ret
   81b40:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81b44:	aa1303e0 	mov	x0, x19
   81b48:	91306021 	add	x1, x1, #0xc18
   81b4c:	97fff95b 	bl	800b8 <strcpy>
   81b50:	17ffffa7 	b	819ec <cd+0x54>
   81b54:	aa1303e1 	mov	x1, x19
   81b58:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81b5c:	91014000 	add	x0, x0, #0x50
   81b60:	9400030a 	bl	82788 <kprintf>
   81b64:	f9401bb7 	ldr	x23, [x29, #48]
   81b68:	a9407bfd 	ldp	x29, x30, [sp]
   81b6c:	a94153f3 	ldp	x19, x20, [sp, #16]
   81b70:	912143ff 	add	sp, sp, #0x850
   81b74:	d65f03c0 	ret
   81b78:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81b7c:	aa1303e1 	mov	x1, x19
   81b80:	91006000 	add	x0, x0, #0x18
   81b84:	94000301 	bl	82788 <kprintf>
   81b88:	f9401bb7 	ldr	x23, [x29, #48]
   81b8c:	17ffffe2 	b	81b14 <cd+0x17c>
   81b90:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81b94:	aa1503e1 	mov	x1, x21
   81b98:	91306000 	add	x0, x0, #0xc18
   81b9c:	97fff947 	bl	800b8 <strcpy>
   81ba0:	17ffffd9 	b	81b04 <cd+0x16c>
   81ba4:	d503201f 	nop

0000000000081ba8 <pwd>:
   81ba8:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81bac:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81bb0:	91306021 	add	x1, x1, #0xc18
   81bb4:	91274000 	add	x0, x0, #0x9d0
   81bb8:	140002f4 	b	82788 <kprintf>
   81bbc:	d503201f 	nop

0000000000081bc0 <ls>:
   81bc0:	d11b43ff 	sub	sp, sp, #0x6d0
   81bc4:	d2807fc2 	mov	x2, #0x3fe                 	// #1022
   81bc8:	a9047bfd 	stp	x29, x30, [sp, #64]
   81bcc:	910103fd 	add	x29, sp, #0x40
   81bd0:	a90553f3 	stp	x19, x20, [sp, #80]
   81bd4:	d0000013 	adrp	x19, 83000 <atag_display+0x430>
   81bd8:	a90763f7 	stp	x23, x24, [sp, #112]
   81bdc:	aa0003f8 	mov	x24, x0
   81be0:	79578260 	ldrh	w0, [x19, #3008]
   81be4:	2a0103f4 	mov	w20, w1
   81be8:	a9065bf5 	stp	x21, x22, [sp, #96]
   81bec:	52800001 	mov	w1, #0x0                   	// #0
   81bf0:	790523a0 	strh	w0, [x29, #656]
   81bf4:	910a4ba0 	add	x0, x29, #0x292
   81bf8:	97fff9c8 	bl	80318 <memset>
   81bfc:	f0000015 	adrp	x21, 84000 <__func__.3102+0x40>
   81c00:	910542a0 	add	x0, x21, #0x150
   81c04:	7100069f 	cmp	w20, #0x1
   81c08:	b9400000 	ldr	w0, [x0]
   81c0c:	b90083a0 	str	w0, [x29, #128]
   81c10:	54000880 	b.eq	81d20 <ls+0x160>  // b.none
   81c14:	71000a9f 	cmp	w20, #0x2
   81c18:	540003a0 	b.eq	81c8c <ls+0xcc>  // b.none
   81c1c:	34001ab4 	cbz	w20, 81f70 <ls+0x3b0>
   81c20:	910a43b7 	add	x23, x29, #0x290
   81c24:	52800014 	mov	w20, #0x0                   	// #0
   81c28:	90000036 	adrp	x22, 85000 <cwd+0x3e8>
   81c2c:	aa1703e1 	mov	x1, x23
   81c30:	f94022d6 	ldr	x22, [x22, #64]
   81c34:	f94002c0 	ldr	x0, [x22]
   81c38:	97fffc1a 	bl	80ca0 <fat32_open>
   81c3c:	aa0003f7 	mov	x23, x0
   81c40:	b40005c0 	cbz	x0, 81cf8 <ls+0x138>
   81c44:	912f0273 	add	x19, x19, #0xbc0
   81c48:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81c4c:	91100273 	add	x19, x19, #0x400
   81c50:	91028021 	add	x1, x1, #0xa0
   81c54:	aa1303e0 	mov	x0, x19
   81c58:	94000336 	bl	82930 <__debug>
   81c5c:	394042e0 	ldrb	w0, [x23, #16]
   81c60:	37200860 	tbnz	w0, #4, 81d6c <ls+0x1ac>
   81c64:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81c68:	aa1803e1 	mov	x1, x24
   81c6c:	91032000 	add	x0, x0, #0xc8
   81c70:	940002c6 	bl	82788 <kprintf>
   81c74:	a9447bfd 	ldp	x29, x30, [sp, #64]
   81c78:	a94553f3 	ldp	x19, x20, [sp, #80]
   81c7c:	a9465bf5 	ldp	x21, x22, [sp, #96]
   81c80:	a94763f7 	ldp	x23, x24, [sp, #112]
   81c84:	911b43ff 	add	sp, sp, #0x6d0
   81c88:	d65f03c0 	ret
   81c8c:	f0000014 	adrp	x20, 84000 <__func__.3102+0x40>
   81c90:	9101e294 	add	x20, x20, #0x78
   81c94:	aa1803e1 	mov	x1, x24
   81c98:	aa1403e0 	mov	x0, x20
   81c9c:	91010316 	add	x22, x24, #0x40
   81ca0:	97fff8f4 	bl	80070 <strcmp>
   81ca4:	350014c0 	cbnz	w0, 81f3c <ls+0x37c>
   81ca8:	39410300 	ldrb	w0, [x24, #64]
   81cac:	910a43b7 	add	x23, x29, #0x290
   81cb0:	7100bc1f 	cmp	w0, #0x2f
   81cb4:	540000a0 	b.eq	81cc8 <ls+0x108>  // b.none
   81cb8:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81cbc:	aa1703e0 	mov	x0, x23
   81cc0:	91306021 	add	x1, x1, #0xc18
   81cc4:	97fff8fd 	bl	800b8 <strcpy>
   81cc8:	aa1603e1 	mov	x1, x22
   81ccc:	aa1603f8 	mov	x24, x22
   81cd0:	90000036 	adrp	x22, 85000 <cwd+0x3e8>
   81cd4:	aa1703e0 	mov	x0, x23
   81cd8:	97fff944 	bl	801e8 <strcat>
   81cdc:	52800034 	mov	w20, #0x1                   	// #1
   81ce0:	f94022d6 	ldr	x22, [x22, #64]
   81ce4:	aa1703e1 	mov	x1, x23
   81ce8:	f94002c0 	ldr	x0, [x22]
   81cec:	97fffbed 	bl	80ca0 <fat32_open>
   81cf0:	aa0003f7 	mov	x23, x0
   81cf4:	b5fffa80 	cbnz	x0, 81c44 <ls+0x84>
   81cf8:	aa1803e1 	mov	x1, x24
   81cfc:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81d00:	91020000 	add	x0, x0, #0x80
   81d04:	940002a1 	bl	82788 <kprintf>
   81d08:	a9447bfd 	ldp	x29, x30, [sp, #64]
   81d0c:	a94553f3 	ldp	x19, x20, [sp, #80]
   81d10:	a9465bf5 	ldp	x21, x22, [sp, #96]
   81d14:	a94763f7 	ldp	x23, x24, [sp, #112]
   81d18:	911b43ff 	add	sp, sp, #0x6d0
   81d1c:	d65f03c0 	ret
   81d20:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81d24:	aa1803e1 	mov	x1, x24
   81d28:	9101e000 	add	x0, x0, #0x78
   81d2c:	910a43b7 	add	x23, x29, #0x290
   81d30:	97fff8d0 	bl	80070 <strcmp>
   81d34:	34fff7a0 	cbz	w0, 81c28 <ls+0x68>
   81d38:	39400300 	ldrb	w0, [x24]
   81d3c:	910a43b7 	add	x23, x29, #0x290
   81d40:	7100bc1f 	cmp	w0, #0x2f
   81d44:	540000a0 	b.eq	81d58 <ls+0x198>  // b.none
   81d48:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81d4c:	aa1703e0 	mov	x0, x23
   81d50:	91306021 	add	x1, x1, #0xc18
   81d54:	97fff925 	bl	801e8 <strcat>
   81d58:	aa1803e1 	mov	x1, x24
   81d5c:	aa1703e0 	mov	x0, x23
   81d60:	52800014 	mov	w20, #0x0                   	// #0
   81d64:	97fff921 	bl	801e8 <strcat>
   81d68:	17ffffb0 	b	81c28 <ls+0x68>
   81d6c:	b94002e2 	ldr	w2, [x23]
   81d70:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81d74:	aa1303e0 	mov	x0, x19
   81d78:	9103a021 	add	x1, x1, #0xe8
   81d7c:	940002ed 	bl	82930 <__debug>
   81d80:	b94002e1 	ldr	w1, [x23]
   81d84:	910223a2 	add	x2, x29, #0x88
   81d88:	f94002c0 	ldr	x0, [x22]
   81d8c:	97fffa6d 	bl	80740 <fat32_read_chain>
   81d90:	d345fc18 	lsr	x24, x0, #5
   81d94:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81d98:	aa1803e2 	mov	x2, x24
   81d9c:	91040021 	add	x1, x1, #0x100
   81da0:	aa1303e0 	mov	x0, x19
   81da4:	940002e3 	bl	82930 <__debug>
   81da8:	b4000958 	cbz	x24, 81ed0 <ls+0x310>
   81dac:	a9046bb9 	stp	x25, x26, [x29, #64]
   81db0:	910243b6 	add	x22, x29, #0x90
   81db4:	a90573bb 	stp	x27, x28, [x29, #80]
   81db8:	f000001a 	adrp	x26, 84000 <__func__.3102+0x40>
   81dbc:	529999bb 	mov	w27, #0xcccd                	// #52429
   81dc0:	910203b9 	add	x25, x29, #0x80
   81dc4:	9104835a 	add	x26, x26, #0x120
   81dc8:	910542b5 	add	x21, x21, #0x150
   81dcc:	d2800013 	mov	x19, #0x0                   	// #0
   81dd0:	72b9999b 	movk	w27, #0xcccc, lsl #16
   81dd4:	d503201f 	nop
   81dd8:	f94047a0 	ldr	x0, [x29, #136]
   81ddc:	aa1603e1 	mov	x1, x22
   81de0:	8b131400 	add	x0, x0, x19, lsl #5
   81de4:	97fffad9 	bl	80948 <fat32_parse_name>
   81de8:	394243a1 	ldrb	w1, [x29, #144]
   81dec:	8b130013 	add	x19, x0, x19
   81df0:	34000a21 	cbz	w1, 81f34 <ls+0x374>
   81df4:	f94047a1 	ldr	x1, [x29, #136]
   81df8:	d37bea66 	lsl	x6, x19, #5
   81dfc:	91000673 	add	x19, x19, #0x1
   81e00:	8b060020 	add	x0, x1, x6
   81e04:	39402c03 	ldrb	w3, [x0, #11]
   81e08:	121f0064 	and	w4, w3, #0x2
   81e0c:	35000054 	cbnz	w20, 81e14 <ls+0x254>
   81e10:	35000584 	cbnz	w4, 81ec0 <ls+0x300>
   81e14:	79401c05 	ldrh	w5, [x0, #14]
   81e18:	79402002 	ldrh	w2, [x0, #16]
   81e1c:	79402c08 	ldrh	w8, [x0, #22]
   81e20:	7940301c 	ldrh	w28, [x0, #24]
   81e24:	37200663 	tbnz	w3, #4, 81ef0 <ls+0x330>
   81e28:	37000063 	tbnz	w3, #0, 81e34 <ls+0x274>
   81e2c:	52800ee1 	mov	w1, #0x77                  	// #119
   81e30:	390207a1 	strb	w1, [x29, #129]
   81e34:	34000064 	cbz	w4, 81e40 <ls+0x280>
   81e38:	52800d01 	mov	w1, #0x68                  	// #104
   81e3c:	39020ba1 	strb	w1, [x29, #130]
   81e40:	39403401 	ldrb	w1, [x0, #13]
   81e44:	531f10a7 	ubfiz	w7, w5, #1, #5
   81e48:	f9001ff6 	str	x22, [sp, #56]
   81e4c:	53097c44 	lsr	w4, w2, #9
   81e50:	d34528a6 	ubfx	x6, x5, #5, #6
   81e54:	12001043 	and	w3, w2, #0x1f
   81e58:	b9401c09 	ldr	w9, [x0, #28]
   81e5c:	530b7ca5 	lsr	w5, w5, #11
   81e60:	9bbb7c20 	umull	x0, w1, w27
   81e64:	b90033e9 	str	w9, [sp, #48]
   81e68:	531f1101 	ubfiz	w1, w8, #1, #5
   81e6c:	d3452909 	ubfx	x9, x8, #5, #6
   81e70:	530b7d08 	lsr	w8, w8, #11
   81e74:	b90023e9 	str	w9, [sp, #32]
   81e78:	d363fc00 	lsr	x0, x0, #35
   81e7c:	b9001be8 	str	w8, [sp, #24]
   81e80:	0b0000e7 	add	w7, w7, w0
   81e84:	53097f80 	lsr	w0, w28, #9
   81e88:	b9002be1 	str	w1, [sp, #40]
   81e8c:	111ef084 	add	w4, w4, #0x7bc
   81e90:	b90013e0 	str	w0, [sp, #16]
   81e94:	d3452042 	ubfx	x2, x2, #5, #4
   81e98:	12001380 	and	w0, w28, #0x1f
   81e9c:	d345239c 	ubfx	x28, x28, #5, #4
   81ea0:	b90003fc 	str	w28, [sp]
   81ea4:	aa1903e1 	mov	x1, x25
   81ea8:	b9000be0 	str	w0, [sp, #8]
   81eac:	aa1a03e0 	mov	x0, x26
   81eb0:	94000236 	bl	82788 <kprintf>
   81eb4:	aa1503e1 	mov	x1, x21
   81eb8:	aa1903e0 	mov	x0, x25
   81ebc:	97fff87f 	bl	800b8 <strcpy>
   81ec0:	eb18027f 	cmp	x19, x24
   81ec4:	54fff8a3 	b.cc	81dd8 <ls+0x218>  // b.lo, b.ul, b.last
   81ec8:	a9446bb9 	ldp	x25, x26, [x29, #64]
   81ecc:	a94573bb 	ldp	x27, x28, [x29, #80]
   81ed0:	aa1703e0 	mov	x0, x23
   81ed4:	97fffd9f 	bl	81550 <free>
   81ed8:	a9447bfd 	ldp	x29, x30, [sp, #64]
   81edc:	a94553f3 	ldp	x19, x20, [sp, #80]
   81ee0:	a9465bf5 	ldp	x21, x22, [sp, #96]
   81ee4:	a94763f7 	ldp	x23, x24, [sp, #112]
   81ee8:	911b43ff 	add	sp, sp, #0x6d0
   81eec:	d65f03c0 	ret
   81ef0:	b90067a4 	str	w4, [x29, #100]
   81ef4:	d0000001 	adrp	x1, 83000 <atag_display+0x430>
   81ef8:	f90037a6 	str	x6, [x29, #104]
   81efc:	91232021 	add	x1, x1, #0x8c8
   81f00:	290e23a3 	stp	w3, w8, [x29, #112]
   81f04:	aa1603e0 	mov	x0, x22
   81f08:	290f17a2 	stp	w2, w5, [x29, #120]
   81f0c:	97fff8b7 	bl	801e8 <strcat>
   81f10:	f94037a6 	ldr	x6, [x29, #104]
   81f14:	52800c81 	mov	w1, #0x64                  	// #100
   81f18:	f94047a0 	ldr	x0, [x29, #136]
   81f1c:	390203a1 	strb	w1, [x29, #128]
   81f20:	b94067a4 	ldr	w4, [x29, #100]
   81f24:	8b060000 	add	x0, x0, x6
   81f28:	294e23a3 	ldp	w3, w8, [x29, #112]
   81f2c:	294f17a2 	ldp	w2, w5, [x29, #120]
   81f30:	17ffffbe 	b	81e28 <ls+0x268>
   81f34:	91000673 	add	x19, x19, #0x1
   81f38:	17ffffe2 	b	81ec0 <ls+0x300>
   81f3c:	aa1603e1 	mov	x1, x22
   81f40:	aa1403e0 	mov	x0, x20
   81f44:	97fff84b 	bl	80070 <strcmp>
   81f48:	350002c0 	cbnz	w0, 81fa0 <ls+0x3e0>
   81f4c:	39400300 	ldrb	w0, [x24]
   81f50:	910a43b7 	add	x23, x29, #0x290
   81f54:	7100bc1f 	cmp	w0, #0x2f
   81f58:	540001a1 	b.ne	81f8c <ls+0x3cc>  // b.any
   81f5c:	aa1803e1 	mov	x1, x24
   81f60:	aa1703e0 	mov	x0, x23
   81f64:	52800034 	mov	w20, #0x1                   	// #1
   81f68:	97fff8a0 	bl	801e8 <strcat>
   81f6c:	17ffff2f 	b	81c28 <ls+0x68>
   81f70:	910a43b7 	add	x23, x29, #0x290
   81f74:	f0000018 	adrp	x24, 84000 <__func__.3102+0x40>
   81f78:	91306318 	add	x24, x24, #0xc18
   81f7c:	aa1703e0 	mov	x0, x23
   81f80:	aa1803e1 	mov	x1, x24
   81f84:	97fff899 	bl	801e8 <strcat>
   81f88:	17ffff28 	b	81c28 <ls+0x68>
   81f8c:	f0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   81f90:	aa1703e0 	mov	x0, x23
   81f94:	91306021 	add	x1, x1, #0xc18
   81f98:	97fff848 	bl	800b8 <strcpy>
   81f9c:	17fffff0 	b	81f5c <ls+0x39c>
   81fa0:	d0000000 	adrp	x0, 83000 <atag_display+0x430>
   81fa4:	913fa000 	add	x0, x0, #0xfe8
   81fa8:	940001f8 	bl	82788 <kprintf>
   81fac:	17ffff32 	b	81c74 <ls+0xb4>

0000000000081fb0 <display_banner_short>:
   81fb0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   81fb4:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81fb8:	91056000 	add	x0, x0, #0x158
   81fbc:	910003fd 	mov	x29, sp
   81fc0:	940001f2 	bl	82788 <kprintf>
   81fc4:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81fc8:	91072000 	add	x0, x0, #0x1c8
   81fcc:	940001ef 	bl	82788 <kprintf>
   81fd0:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81fd4:	9108e000 	add	x0, x0, #0x238
   81fd8:	940001ec 	bl	82788 <kprintf>
   81fdc:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81fe0:	910a8000 	add	x0, x0, #0x2a0
   81fe4:	940001e9 	bl	82788 <kprintf>
   81fe8:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81fec:	910c2000 	add	x0, x0, #0x308
   81ff0:	940001e6 	bl	82788 <kprintf>
   81ff4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   81ff8:	f0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   81ffc:	910de000 	add	x0, x0, #0x378
   82000:	140001e2 	b	82788 <kprintf>
   82004:	d503201f 	nop

0000000000082008 <display_banner>:
   82008:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   8200c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82010:	910f8000 	add	x0, x0, #0x3e0
   82014:	910003fd 	mov	x29, sp
   82018:	940001dc 	bl	82788 <kprintf>
   8201c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82020:	9112a000 	add	x0, x0, #0x4a8
   82024:	940001d9 	bl	82788 <kprintf>
   82028:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   8202c:	9115e000 	add	x0, x0, #0x578
   82030:	940001d6 	bl	82788 <kprintf>
   82034:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82038:	91190000 	add	x0, x0, #0x640
   8203c:	940001d3 	bl	82788 <kprintf>
   82040:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82044:	911c2000 	add	x0, x0, #0x708
   82048:	940001d0 	bl	82788 <kprintf>
   8204c:	a8c17bfd 	ldp	x29, x30, [sp], #16
   82050:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82054:	911fa000 	add	x0, x0, #0x7e8
   82058:	140001cc 	b	82788 <kprintf>
   8205c:	d503201f 	nop

0000000000082060 <test_malloc>:
   82060:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   82064:	d2803f80 	mov	x0, #0x1fc                 	// #508
   82068:	910003fd 	mov	x29, sp
   8206c:	a90153f3 	stp	x19, x20, [sp, #16]
   82070:	f90013f5 	str	x21, [sp, #32]
   82074:	97fffcf1 	bl	81438 <malloc>
   82078:	aa0003f3 	mov	x19, x0
   8207c:	d2800000 	mov	x0, #0x0                   	// #0
   82080:	b8207a60 	str	w0, [x19, x0, lsl #2]
   82084:	91000400 	add	x0, x0, #0x1
   82088:	f101fc1f 	cmp	x0, #0x7f
   8208c:	54ffffa1 	b.ne	82080 <test_malloc+0x20>  // b.any
   82090:	d2803f00 	mov	x0, #0x1f8                 	// #504
   82094:	97fffce9 	bl	81438 <malloc>
   82098:	aa0003f4 	mov	x20, x0
   8209c:	aa0003e1 	mov	x1, x0
   820a0:	52800fc0 	mov	w0, #0x7e                  	// #126
   820a4:	d503201f 	nop
   820a8:	b8004420 	str	w0, [x1], #4
   820ac:	71000400 	subs	w0, w0, #0x1
   820b0:	54ffffc1 	b.ne	820a8 <test_malloc+0x48>  // b.any
   820b4:	aa1303e0 	mov	x0, x19
   820b8:	97fffd26 	bl	81550 <free>
   820bc:	d2801680 	mov	x0, #0xb4                  	// #180
   820c0:	97fffcde 	bl	81438 <malloc>
   820c4:	aa0003f5 	mov	x21, x0
   820c8:	aa1403e0 	mov	x0, x20
   820cc:	97fffd21 	bl	81550 <free>
   820d0:	d2801780 	mov	x0, #0xbc                  	// #188
   820d4:	97fffcd9 	bl	81438 <malloc>
   820d8:	aa0003f3 	mov	x19, x0
   820dc:	aa1503e0 	mov	x0, x21
   820e0:	97fffd1c 	bl	81550 <free>
   820e4:	f94013f5 	ldr	x21, [sp, #32]
   820e8:	aa1303e0 	mov	x0, x19
   820ec:	a94153f3 	ldp	x19, x20, [sp, #16]
   820f0:	a8c37bfd 	ldp	x29, x30, [sp], #48
   820f4:	17fffd17 	b	81550 <free>

00000000000820f8 <exe_cmd>:
   820f8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   820fc:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   82100:	9122c021 	add	x1, x1, #0x8b0
   82104:	910003fd 	mov	x29, sp
   82108:	f9000bf3 	str	x19, [sp, #16]
   8210c:	aa0003f3 	mov	x19, x0
   82110:	97fff7d8 	bl	80070 <strcmp>
   82114:	340005c0 	cbz	w0, 821cc <exe_cmd+0xd4>
   82118:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   8211c:	aa1303e0 	mov	x0, x19
   82120:	9122e021 	add	x1, x1, #0x8b8
   82124:	97fff7d3 	bl	80070 <strcmp>
   82128:	34000480 	cbz	w0, 821b8 <exe_cmd+0xc0>
   8212c:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   82130:	aa1303e0 	mov	x0, x19
   82134:	91230021 	add	x1, x1, #0x8c0
   82138:	97fff7ce 	bl	80070 <strcmp>
   8213c:	34000640 	cbz	w0, 82204 <exe_cmd+0x10c>
   82140:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   82144:	aa1303e0 	mov	x0, x19
   82148:	91232021 	add	x1, x1, #0x8c8
   8214c:	97fff7c9 	bl	80070 <strcmp>
   82150:	340006a0 	cbz	w0, 82224 <exe_cmd+0x12c>
   82154:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   82158:	aa1303e0 	mov	x0, x19
   8215c:	91234021 	add	x1, x1, #0x8d0
   82160:	97fff7c4 	bl	80070 <strcmp>
   82164:	34000440 	cbz	w0, 821ec <exe_cmd+0xf4>
   82168:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   8216c:	aa1303e0 	mov	x0, x19
   82170:	91236021 	add	x1, x1, #0x8d8
   82174:	97fff7bf 	bl	80070 <strcmp>
   82178:	34000660 	cbz	w0, 82244 <exe_cmd+0x14c>
   8217c:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   82180:	aa1303e0 	mov	x0, x19
   82184:	91238021 	add	x1, x1, #0x8e0
   82188:	97fff7ba 	bl	80070 <strcmp>
   8218c:	340006a0 	cbz	w0, 82260 <exe_cmd+0x168>
   82190:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   82194:	aa1303e0 	mov	x0, x19
   82198:	9126e021 	add	x1, x1, #0x9b8
   8219c:	97fff7b5 	bl	80070 <strcmp>
   821a0:	340005c0 	cbz	w0, 82258 <exe_cmd+0x160>
   821a4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   821a8:	aa1303e1 	mov	x1, x19
   821ac:	91270000 	add	x0, x0, #0x9c0
   821b0:	94000176 	bl	82788 <kprintf>
   821b4:	14000002 	b	821bc <exe_cmd+0xc4>
   821b8:	94000286 	bl	82bd0 <atag_display>
   821bc:	52800000 	mov	w0, #0x0                   	// #0
   821c0:	f9400bf3 	ldr	x19, [sp, #16]
   821c4:	a8c27bfd 	ldp	x29, x30, [sp], #32
   821c8:	d65f03c0 	ret
   821cc:	b9500661 	ldr	w1, [x19, #4100]
   821d0:	91010260 	add	x0, x19, #0x40
   821d4:	51000421 	sub	w1, w1, #0x1
   821d8:	97fffd6a 	bl	81780 <echo>
   821dc:	52800000 	mov	w0, #0x0                   	// #0
   821e0:	f9400bf3 	ldr	x19, [sp, #16]
   821e4:	a8c27bfd 	ldp	x29, x30, [sp], #32
   821e8:	d65f03c0 	ret
   821ec:	d0000001 	adrp	x1, 84000 <__func__.3102+0x40>
   821f0:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   821f4:	91306021 	add	x1, x1, #0xc18
   821f8:	91274000 	add	x0, x0, #0x9d0
   821fc:	94000163 	bl	82788 <kprintf>
   82200:	17ffffef 	b	821bc <exe_cmd+0xc4>
   82204:	b9500661 	ldr	w1, [x19, #4100]
   82208:	91010260 	add	x0, x19, #0x40
   8220c:	51000421 	sub	w1, w1, #0x1
   82210:	97fffde2 	bl	81998 <cd>
   82214:	52800000 	mov	w0, #0x0                   	// #0
   82218:	f9400bf3 	ldr	x19, [sp, #16]
   8221c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   82220:	d65f03c0 	ret
   82224:	b9500661 	ldr	w1, [x19, #4100]
   82228:	91010260 	add	x0, x19, #0x40
   8222c:	51000421 	sub	w1, w1, #0x1
   82230:	97fffd76 	bl	81808 <cat>
   82234:	52800000 	mov	w0, #0x0                   	// #0
   82238:	f9400bf3 	ldr	x19, [sp, #16]
   8223c:	a8c27bfd 	ldp	x29, x30, [sp], #32
   82240:	d65f03c0 	ret
   82244:	b9500661 	ldr	w1, [x19, #4100]
   82248:	91010260 	add	x0, x19, #0x40
   8224c:	51000421 	sub	w1, w1, #0x1
   82250:	97fffe5c 	bl	81bc0 <ls>
   82254:	17ffffda 	b	821bc <exe_cmd+0xc4>
   82258:	97ffff82 	bl	82060 <test_malloc>
   8225c:	17ffffd8 	b	821bc <exe_cmd+0xc4>
   82260:	f0000013 	adrp	x19, 85000 <cwd+0x3e8>
   82264:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82268:	9123c000 	add	x0, x0, #0x8f0
   8226c:	94000147 	bl	82788 <kprintf>
   82270:	f9402273 	ldr	x19, [x19, #64]
   82274:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82278:	91242000 	add	x0, x0, #0x908
   8227c:	f9400261 	ldr	x1, [x19]
   82280:	79414021 	ldrh	w1, [x1, #160]
   82284:	94000141 	bl	82788 <kprintf>
   82288:	f9400261 	ldr	x1, [x19]
   8228c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82290:	91248000 	add	x0, x0, #0x920
   82294:	39428821 	ldrb	w1, [x1, #162]
   82298:	9400013c 	bl	82788 <kprintf>
   8229c:	f9400261 	ldr	x1, [x19]
   822a0:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   822a4:	91250000 	add	x0, x0, #0x940
   822a8:	b940a421 	ldr	w1, [x1, #164]
   822ac:	94000137 	bl	82788 <kprintf>
   822b0:	f9400261 	ldr	x1, [x19]
   822b4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   822b8:	91256000 	add	x0, x0, #0x958
   822bc:	b940a821 	ldr	w1, [x1, #168]
   822c0:	94000132 	bl	82788 <kprintf>
   822c4:	f9400261 	ldr	x1, [x19]
   822c8:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   822cc:	9125c000 	add	x0, x0, #0x970
   822d0:	b940ac21 	ldr	w1, [x1, #172]
   822d4:	9400012d 	bl	82788 <kprintf>
   822d8:	f9400261 	ldr	x1, [x19]
   822dc:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   822e0:	91264000 	add	x0, x0, #0x990
   822e4:	b940b021 	ldr	w1, [x1, #176]
   822e8:	94000128 	bl	82788 <kprintf>
   822ec:	17ffffb4 	b	821bc <exe_cmd+0xc4>

00000000000822f0 <shell_loop>:
   822f0:	d2828810 	mov	x16, #0x1440                	// #5184
   822f4:	cb3063ff 	sub	sp, sp, x16
   822f8:	d2800801 	mov	x1, #0x40                  	// #64
   822fc:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82300:	91276000 	add	x0, x0, #0x9d8
   82304:	a9007bfd 	stp	x29, x30, [sp]
   82308:	910003fd 	mov	x29, sp
   8230c:	a90153f3 	stp	x19, x20, [sp, #16]
   82310:	9100e3b3 	add	x19, x29, #0x38
   82314:	a9025bf5 	stp	x21, x22, [sp, #32]
   82318:	9110e3b4 	add	x20, x29, #0x438
   8231c:	f90a1fa1 	str	x1, [x29, #5176]
   82320:	9400011a 	bl	82788 <kprintf>
   82324:	97ffff39 	bl	82008 <display_banner>
   82328:	d0000016 	adrp	x22, 84000 <__func__.3102+0x40>
   8232c:	d0000015 	adrp	x21, 84000 <__func__.3102+0x40>
   82330:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82334:	913062d6 	add	x22, x22, #0xc18
   82338:	912802b5 	add	x21, x21, #0xa00
   8233c:	912be000 	add	x0, x0, #0xaf8
   82340:	94000112 	bl	82788 <kprintf>
   82344:	d503201f 	nop
   82348:	aa1603e1 	mov	x1, x22
   8234c:	aa1503e0 	mov	x0, x21
   82350:	9400010e 	bl	82788 <kprintf>
   82354:	aa1303e0 	mov	x0, x19
   82358:	97fffca6 	bl	815f0 <read_cmd>
   8235c:	b4ffff60 	cbz	x0, 82348 <shell_loop+0x58>
   82360:	aa1303e1 	mov	x1, x19
   82364:	aa1403e0 	mov	x0, x20
   82368:	97fffce2 	bl	816f0 <parse_cmd>
   8236c:	7100001f 	cmp	w0, #0x0
   82370:	54fffecd 	b.le	82348 <shell_loop+0x58>
   82374:	aa1403e0 	mov	x0, x20
   82378:	97ffff60 	bl	820f8 <exe_cmd>
   8237c:	aa1603e1 	mov	x1, x22
   82380:	aa1503e0 	mov	x0, x21
   82384:	94000101 	bl	82788 <kprintf>
   82388:	aa1303e0 	mov	x0, x19
   8238c:	97fffc99 	bl	815f0 <read_cmd>
   82390:	b5fffe80 	cbnz	x0, 82360 <shell_loop+0x70>
   82394:	17ffffed 	b	82348 <shell_loop+0x58>

0000000000082398 <current_time>:
   82398:	d2860102 	mov	x2, #0x3008                	// #12296
   8239c:	d2860083 	mov	x3, #0x3004                	// #12292
   823a0:	f2a7e002 	movk	x2, #0x3f00, lsl #16
   823a4:	f2a7e003 	movk	x3, #0x3f00, lsl #16
   823a8:	b9400041 	ldr	w1, [x2]
   823ac:	b9400064 	ldr	w4, [x3]
   823b0:	b9400042 	ldr	w2, [x2]
   823b4:	2a0103e0 	mov	w0, w1
   823b8:	6b02003f 	cmp	w1, w2
   823bc:	540000c0 	b.eq	823d4 <current_time+0x3c>  // b.none
   823c0:	b9400061 	ldr	w1, [x3]
   823c4:	91000400 	add	x0, x0, #0x1
   823c8:	2a0103e1 	mov	w1, w1
   823cc:	8b008020 	add	x0, x1, x0, lsl #32
   823d0:	d65f03c0 	ret
   823d4:	2a0403e4 	mov	w4, w4
   823d8:	8b008080 	add	x0, x4, x0, lsl #32
   823dc:	d65f03c0 	ret

00000000000823e0 <spin_sleep_us>:
   823e0:	d2860103 	mov	x3, #0x3008                	// #12296
   823e4:	d2860084 	mov	x4, #0x3004                	// #12292
   823e8:	f2a7e003 	movk	x3, #0x3f00, lsl #16
   823ec:	f2a7e004 	movk	x4, #0x3f00, lsl #16
   823f0:	b9400061 	ldr	w1, [x3]
   823f4:	b9400085 	ldr	w5, [x4]
   823f8:	b9400063 	ldr	w3, [x3]
   823fc:	2a0103e2 	mov	w2, w1
   82400:	6b03003f 	cmp	w1, w3
   82404:	54000340 	b.eq	8246c <spin_sleep_us+0x8c>  // b.none
   82408:	b9400081 	ldr	w1, [x4]
   8240c:	91000442 	add	x2, x2, #0x1
   82410:	2a0103e1 	mov	w1, w1
   82414:	8b028022 	add	x2, x1, x2, lsl #32
   82418:	d2860104 	mov	x4, #0x3008                	// #12296
   8241c:	d2860086 	mov	x6, #0x3004                	// #12292
   82420:	f2a7e004 	movk	x4, #0x3f00, lsl #16
   82424:	f2a7e006 	movk	x6, #0x3f00, lsl #16
   82428:	b9400083 	ldr	w3, [x4]
   8242c:	b94000c7 	ldr	w7, [x6]
   82430:	b9400081 	ldr	w1, [x4]
   82434:	2a0303e5 	mov	w5, w3
   82438:	6b01007f 	cmp	w3, w1
   8243c:	910004a1 	add	x1, x5, #0x1
   82440:	54000100 	b.eq	82460 <spin_sleep_us+0x80>  // b.none
   82444:	b94000c3 	ldr	w3, [x6]
   82448:	2a0303e3 	mov	w3, w3
   8244c:	8b018061 	add	x1, x3, x1, lsl #32
   82450:	cb020021 	sub	x1, x1, x2
   82454:	eb00003f 	cmp	x1, x0
   82458:	54fffe89 	b.ls	82428 <spin_sleep_us+0x48>  // b.plast
   8245c:	d65f03c0 	ret
   82460:	2a0703e1 	mov	w1, w7
   82464:	8b058021 	add	x1, x1, x5, lsl #32
   82468:	17fffffa 	b	82450 <spin_sleep_us+0x70>
   8246c:	2a0503e5 	mov	w5, w5
   82470:	8b0280a2 	add	x2, x5, x2, lsl #32
   82474:	17ffffe9 	b	82418 <spin_sleep_us+0x38>

0000000000082478 <wait_micros>:
   82478:	2a0003e0 	mov	w0, w0
   8247c:	17ffffd9 	b	823e0 <spin_sleep_us>

0000000000082480 <getDigit.constprop.0>:
   82480:	f100241f 	cmp	x0, #0x9
   82484:	54000088 	b.hi	82494 <getDigit.constprop.0+0x14>  // b.pmore
   82488:	1100c000 	add	w0, w0, #0x30
   8248c:	12001c00 	and	w0, w0, #0xff
   82490:	d65f03c0 	ret
   82494:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   82498:	910003fd 	mov	x29, sp
   8249c:	a90153f3 	stp	x19, x20, [sp, #16]
   824a0:	b202e7f4 	mov	x20, #0xcccccccccccccccc    	// #-3689348814741910324
   824a4:	f29999b4 	movk	x20, #0xcccd
   824a8:	a9025bf5 	stp	x21, x22, [sp, #32]
   824ac:	aa0203f5 	mov	x21, x2
   824b0:	aa0103f6 	mov	x22, x1
   824b4:	9bd47c14 	umulh	x20, x0, x20
   824b8:	aa0003f3 	mov	x19, x0
   824bc:	d343fe94 	lsr	x20, x20, #3
   824c0:	aa1403e0 	mov	x0, x20
   824c4:	97ffffef 	bl	82480 <getDigit.constprop.0>
   824c8:	f94002a1 	ldr	x1, [x21]
   824cc:	8b140a94 	add	x20, x20, x20, lsl #2
   824d0:	cb140673 	sub	x19, x19, x20, lsl #1
   824d4:	38216ac0 	strb	w0, [x22, x1]
   824d8:	1100c273 	add	w19, w19, #0x30
   824dc:	12001e60 	and	w0, w19, #0xff
   824e0:	f94002a1 	ldr	x1, [x21]
   824e4:	a94153f3 	ldp	x19, x20, [sp, #16]
   824e8:	91000421 	add	x1, x1, #0x1
   824ec:	f90002a1 	str	x1, [x21]
   824f0:	a9425bf5 	ldp	x21, x22, [sp, #32]
   824f4:	a8c37bfd 	ldp	x29, x30, [sp], #48
   824f8:	d65f03c0 	ret
   824fc:	d503201f 	nop

0000000000082500 <__kprintf>:
   82500:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
   82504:	910003fd 	mov	x29, sp
   82508:	a9025bf5 	stp	x21, x22, [sp, #32]
   8250c:	9101a3b5 	add	x21, x29, #0x68
   82510:	a90363f7 	stp	x23, x24, [sp, #48]
   82514:	b9401837 	ldr	w23, [x1, #24]
   82518:	a9406036 	ldp	x22, x24, [x1]
   8251c:	a90153f3 	stp	x19, x20, [sp, #16]
   82520:	a90573fb 	stp	x27, x28, [sp, #80]
   82524:	9101c3b3 	add	x19, x29, #0x70
   82528:	aa0003fc 	mov	x28, x0
   8252c:	9101c7b4 	add	x20, x29, #0x71
   82530:	a9046bf9 	stp	x25, x26, [sp, #64]
   82534:	52800019 	mov	w25, #0x0                   	// #0
   82538:	38794b9a 	ldrb	w26, [x28, w25, uxtw]
   8253c:	1100073b 	add	w27, w25, #0x1
   82540:	3400037a 	cbz	w26, 825ac <__kprintf+0xac>
   82544:	7100975f 	cmp	w26, #0x25
   82548:	540001e1 	b.ne	82584 <__kprintf+0x84>  // b.any
   8254c:	387b4b80 	ldrb	w0, [x28, w27, uxtw]
   82550:	11000b39 	add	w25, w25, #0x2
   82554:	7101901f 	cmp	w0, #0x64
   82558:	54000660 	b.eq	82624 <__kprintf+0x124>  // b.none
   8255c:	54000388 	b.hi	825cc <__kprintf+0xcc>  // b.pmore
   82560:	7100941f 	cmp	w0, #0x25
   82564:	540001c0 	b.eq	8259c <__kprintf+0x9c>  // b.none
   82568:	71018c1f 	cmp	w0, #0x63
   8256c:	54fffe61 	b.ne	82538 <__kprintf+0x38>  // b.any
   82570:	37f80417 	tbnz	w23, #31, 825f0 <__kprintf+0xf0>
   82574:	91002ec1 	add	x1, x22, #0xb
   82578:	aa1603e0 	mov	x0, x22
   8257c:	927df036 	and	x22, x1, #0xfffffffffffffff8
   82580:	14000023 	b	8260c <__kprintf+0x10c>
   82584:	2a1a03e0 	mov	w0, w26
   82588:	9400015a 	bl	82af0 <mu_write_byte>
   8258c:	2a1b03f9 	mov	w25, w27
   82590:	71002b5f 	cmp	w26, #0xa
   82594:	54fffd21 	b.ne	82538 <__kprintf+0x38>  // b.any
   82598:	528001a0 	mov	w0, #0xd                   	// #13
   8259c:	94000155 	bl	82af0 <mu_write_byte>
   825a0:	38794b9a 	ldrb	w26, [x28, w25, uxtw]
   825a4:	1100073b 	add	w27, w25, #0x1
   825a8:	35fffcfa 	cbnz	w26, 82544 <__kprintf+0x44>
   825ac:	a94153f3 	ldp	x19, x20, [sp, #16]
   825b0:	52800020 	mov	w0, #0x1                   	// #1
   825b4:	a9425bf5 	ldp	x21, x22, [sp, #32]
   825b8:	a94363f7 	ldp	x23, x24, [sp, #48]
   825bc:	a9446bf9 	ldp	x25, x26, [sp, #64]
   825c0:	a94573fb 	ldp	x27, x28, [sp, #80]
   825c4:	a8c97bfd 	ldp	x29, x30, [sp], #144
   825c8:	d65f03c0 	ret
   825cc:	7101cc1f 	cmp	w0, #0x73
   825d0:	54000480 	b.eq	82660 <__kprintf+0x160>  // b.none
   825d4:	7101e01f 	cmp	w0, #0x78
   825d8:	54fffb01 	b.ne	82538 <__kprintf+0x38>  // b.any
   825dc:	37f807d7 	tbnz	w23, #31, 826d4 <__kprintf+0x1d4>
   825e0:	91002ec1 	add	x1, x22, #0xb
   825e4:	aa1603e0 	mov	x0, x22
   825e8:	927df036 	and	x22, x1, #0xfffffffffffffff8
   825ec:	14000041 	b	826f0 <__kprintf+0x1f0>
   825f0:	110022e1 	add	w1, w23, #0x8
   825f4:	7100003f 	cmp	w1, #0x0
   825f8:	5400010d 	b.le	82618 <__kprintf+0x118>
   825fc:	91002ec2 	add	x2, x22, #0xb
   82600:	aa1603e0 	mov	x0, x22
   82604:	2a0103f7 	mov	w23, w1
   82608:	927df056 	and	x22, x2, #0xfffffffffffffff8
   8260c:	39400000 	ldrb	w0, [x0]
   82610:	94000138 	bl	82af0 <mu_write_byte>
   82614:	17ffffc9 	b	82538 <__kprintf+0x38>
   82618:	8b37c300 	add	x0, x24, w23, sxtw
   8261c:	2a0103f7 	mov	w23, w1
   82620:	17fffffb 	b	8260c <__kprintf+0x10c>
   82624:	37f802d7 	tbnz	w23, #31, 8267c <__kprintf+0x17c>
   82628:	91002ec1 	add	x1, x22, #0xb
   8262c:	aa1603e0 	mov	x0, x22
   82630:	927df036 	and	x22, x1, #0xfffffffffffffff8
   82634:	b9800000 	ldrsw	x0, [x0]
   82638:	aa1303e1 	mov	x1, x19
   8263c:	aa1503e2 	mov	x2, x21
   82640:	f90037bf 	str	xzr, [x29, #104]
   82644:	97ffff8f 	bl	82480 <getDigit.constprop.0>
   82648:	f94037a1 	ldr	x1, [x29, #104]
   8264c:	38216a60 	strb	w0, [x19, x1]
   82650:	aa1303e0 	mov	x0, x19
   82654:	38216a9f 	strb	wzr, [x20, x1]
   82658:	94000150 	bl	82b98 <mu_write_str>
   8265c:	17ffffb7 	b	82538 <__kprintf+0x38>
   82660:	37f801f7 	tbnz	w23, #31, 8269c <__kprintf+0x19c>
   82664:	91003ec1 	add	x1, x22, #0xf
   82668:	aa1603e0 	mov	x0, x22
   8266c:	927df036 	and	x22, x1, #0xfffffffffffffff8
   82670:	f9400000 	ldr	x0, [x0]
   82674:	94000149 	bl	82b98 <mu_write_str>
   82678:	17ffffb0 	b	82538 <__kprintf+0x38>
   8267c:	110022e1 	add	w1, w23, #0x8
   82680:	7100003f 	cmp	w1, #0x0
   82684:	540001cd 	b.le	826bc <__kprintf+0x1bc>
   82688:	91002ec2 	add	x2, x22, #0xb
   8268c:	aa1603e0 	mov	x0, x22
   82690:	2a0103f7 	mov	w23, w1
   82694:	927df056 	and	x22, x2, #0xfffffffffffffff8
   82698:	17ffffe7 	b	82634 <__kprintf+0x134>
   8269c:	110022e1 	add	w1, w23, #0x8
   826a0:	7100003f 	cmp	w1, #0x0
   826a4:	5400012d 	b.le	826c8 <__kprintf+0x1c8>
   826a8:	91003ec2 	add	x2, x22, #0xf
   826ac:	aa1603e0 	mov	x0, x22
   826b0:	2a0103f7 	mov	w23, w1
   826b4:	927df056 	and	x22, x2, #0xfffffffffffffff8
   826b8:	17ffffee 	b	82670 <__kprintf+0x170>
   826bc:	8b37c300 	add	x0, x24, w23, sxtw
   826c0:	2a0103f7 	mov	w23, w1
   826c4:	17ffffdc 	b	82634 <__kprintf+0x134>
   826c8:	8b37c300 	add	x0, x24, w23, sxtw
   826cc:	2a0103f7 	mov	w23, w1
   826d0:	17ffffe8 	b	82670 <__kprintf+0x170>
   826d4:	110022e1 	add	w1, w23, #0x8
   826d8:	7100003f 	cmp	w1, #0x0
   826dc:	540004ed 	b.le	82778 <__kprintf+0x278>
   826e0:	91002ec2 	add	x2, x22, #0xb
   826e4:	aa1603e0 	mov	x0, x22
   826e8:	2a0103f7 	mov	w23, w1
   826ec:	927df056 	and	x22, x2, #0xfffffffffffffff8
   826f0:	b9800004 	ldrsw	x4, [x0]
   826f4:	52800383 	mov	w3, #0x1c                  	// #28
   826f8:	d2800002 	mov	x2, #0x0                   	// #0
   826fc:	d503201f 	nop
   82700:	9ac32481 	lsr	x1, x4, x3
   82704:	92400c21 	and	x1, x1, #0xf
   82708:	12001c20 	and	w0, w1, #0xff
   8270c:	f100283f 	cmp	x1, #0xa
   82710:	11015c01 	add	w1, w0, #0x57
   82714:	1100c000 	add	w0, w0, #0x30
   82718:	1a813000 	csel	w0, w0, w1, cc  // cc = lo, ul, last
   8271c:	38226a60 	strb	w0, [x19, x2]
   82720:	91000442 	add	x2, x2, #0x1
   82724:	51001063 	sub	w3, w3, #0x4
   82728:	f100205f 	cmp	x2, #0x8
   8272c:	54fffea1 	b.ne	82700 <__kprintf+0x200>  // b.any
   82730:	3941c3a0 	ldrb	w0, [x29, #112]
   82734:	3901e3bf 	strb	wzr, [x29, #120]
   82738:	7100c01f 	cmp	w0, #0x30
   8273c:	54000181 	b.ne	8276c <__kprintf+0x26c>  // b.any
   82740:	3941c7a1 	ldrb	w1, [x29, #113]
   82744:	34000141 	cbz	w1, 8276c <__kprintf+0x26c>
   82748:	91000662 	add	x2, x19, #0x1
   8274c:	14000003 	b	82758 <__kprintf+0x258>
   82750:	38401c41 	ldrb	w1, [x2, #1]!
   82754:	34000081 	cbz	w1, 82764 <__kprintf+0x264>
   82758:	aa0203e0 	mov	x0, x2
   8275c:	7100c03f 	cmp	w1, #0x30
   82760:	54ffff80 	b.eq	82750 <__kprintf+0x250>  // b.none
   82764:	9400010d 	bl	82b98 <mu_write_str>
   82768:	17ffff74 	b	82538 <__kprintf+0x38>
   8276c:	aa1303e0 	mov	x0, x19
   82770:	9400010a 	bl	82b98 <mu_write_str>
   82774:	17ffff71 	b	82538 <__kprintf+0x38>
   82778:	8b37c300 	add	x0, x24, w23, sxtw
   8277c:	2a0103f7 	mov	w23, w1
   82780:	17ffffdc 	b	826f0 <__kprintf+0x1f0>
   82784:	d503201f 	nop

0000000000082788 <kprintf>:
   82788:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
   8278c:	910003fd 	mov	x29, sp
   82790:	910443a8 	add	x8, x29, #0x110
   82794:	910343a9 	add	x9, x29, #0xd0
   82798:	a90323a8 	stp	x8, x8, [x29, #48]
   8279c:	128006e8 	mov	w8, #0xffffffc8            	// #-56
   827a0:	f90023a9 	str	x9, [x29, #64]
   827a4:	b9004ba8 	str	w8, [x29, #72]
   827a8:	12800fe8 	mov	w8, #0xffffff80            	// #-128
   827ac:	b9004fa8 	str	w8, [x29, #76]
   827b0:	a9432faa 	ldp	x10, x11, [x29, #48]
   827b4:	a9012faa 	stp	x10, x11, [x29, #16]
   827b8:	a94427a8 	ldp	x8, x9, [x29, #64]
   827bc:	a90227a8 	stp	x8, x9, [x29, #32]
   827c0:	3d8017a0 	str	q0, [x29, #80]
   827c4:	3d801ba1 	str	q1, [x29, #96]
   827c8:	3d801fa2 	str	q2, [x29, #112]
   827cc:	3d8023a3 	str	q3, [x29, #128]
   827d0:	3d8027a4 	str	q4, [x29, #144]
   827d4:	3d802ba5 	str	q5, [x29, #160]
   827d8:	3d802fa6 	str	q6, [x29, #176]
   827dc:	3d8033a7 	str	q7, [x29, #192]
   827e0:	a90d8ba1 	stp	x1, x2, [x29, #216]
   827e4:	910043a1 	add	x1, x29, #0x10
   827e8:	a90e93a3 	stp	x3, x4, [x29, #232]
   827ec:	a90f9ba5 	stp	x5, x6, [x29, #248]
   827f0:	f90087a7 	str	x7, [x29, #264]
   827f4:	97ffff43 	bl	82500 <__kprintf>
   827f8:	a8d17bfd 	ldp	x29, x30, [sp], #272
   827fc:	d65f03c0 	ret

0000000000082800 <__panic>:
   82800:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
   82804:	910003fd 	mov	x29, sp
   82808:	a90153f3 	stp	x19, x20, [sp, #16]
   8280c:	aa0303f4 	mov	x20, x3
   82810:	2a0103f3 	mov	w19, w1
   82814:	a9025bf5 	stp	x21, x22, [sp, #32]
   82818:	3d801fa0 	str	q0, [x29, #112]
   8281c:	aa0203f5 	mov	x21, x2
   82820:	3d8023a1 	str	q1, [x29, #128]
   82824:	aa0003f6 	mov	x22, x0
   82828:	3d8027a2 	str	q2, [x29, #144]
   8282c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82830:	3d802ba3 	str	q3, [x29, #160]
   82834:	91282000 	add	x0, x0, #0xa08
   82838:	3d802fa4 	str	q4, [x29, #176]
   8283c:	3d8033a5 	str	q5, [x29, #192]
   82840:	3d8037a6 	str	q6, [x29, #208]
   82844:	3d803ba7 	str	q7, [x29, #224]
   82848:	a90f17a4 	stp	x4, x5, [x29, #240]
   8284c:	a9101fa6 	stp	x6, x7, [x29, #256]
   82850:	97ffffce 	bl	82788 <kprintf>
   82854:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82858:	91286000 	add	x0, x0, #0xa18
   8285c:	97ffffcb 	bl	82788 <kprintf>
   82860:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82864:	9128c000 	add	x0, x0, #0xa30
   82868:	97ffffc8 	bl	82788 <kprintf>
   8286c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82870:	91292000 	add	x0, x0, #0xa48
   82874:	97ffffc5 	bl	82788 <kprintf>
   82878:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   8287c:	91298000 	add	x0, x0, #0xa60
   82880:	97ffffc2 	bl	82788 <kprintf>
   82884:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82888:	912a0000 	add	x0, x0, #0xa80
   8288c:	97ffffbf 	bl	82788 <kprintf>
   82890:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82894:	912a8000 	add	x0, x0, #0xaa0
   82898:	97ffffbc 	bl	82788 <kprintf>
   8289c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   828a0:	912b0000 	add	x0, x0, #0xac0
   828a4:	97ffffb9 	bl	82788 <kprintf>
   828a8:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   828ac:	912b8000 	add	x0, x0, #0xae0
   828b0:	97ffffb6 	bl	82788 <kprintf>
   828b4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   828b8:	912c0000 	add	x0, x0, #0xb00
   828bc:	97ffffb3 	bl	82788 <kprintf>
   828c0:	aa1603e1 	mov	x1, x22
   828c4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   828c8:	912c8000 	add	x0, x0, #0xb20
   828cc:	97ffffaf 	bl	82788 <kprintf>
   828d0:	2a1303e1 	mov	w1, w19
   828d4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   828d8:	912cc000 	add	x0, x0, #0xb30
   828dc:	97ffffab 	bl	82788 <kprintf>
   828e0:	aa1503e1 	mov	x1, x21
   828e4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   828e8:	912d0000 	add	x0, x0, #0xb40
   828ec:	97ffffa7 	bl	82788 <kprintf>
   828f0:	910443a0 	add	x0, x29, #0x110
   828f4:	a90503a0 	stp	x0, x0, [x29, #80]
   828f8:	128003e0 	mov	w0, #0xffffffe0            	// #-32
   828fc:	9103c3a1 	add	x1, x29, #0xf0
   82900:	f90033a1 	str	x1, [x29, #96]
   82904:	9100c3a1 	add	x1, x29, #0x30
   82908:	b9006ba0 	str	w0, [x29, #104]
   8290c:	12800fe0 	mov	w0, #0xffffff80            	// #-128
   82910:	b9006fa0 	str	w0, [x29, #108]
   82914:	aa1403e0 	mov	x0, x20
   82918:	a9451fa6 	ldp	x6, x7, [x29, #80]
   8291c:	a9031fa6 	stp	x6, x7, [x29, #48]
   82920:	a94617a4 	ldp	x4, x5, [x29, #96]
   82924:	a90417a4 	stp	x4, x5, [x29, #64]
   82928:	97fffef6 	bl	82500 <__kprintf>
   8292c:	14000000 	b	8292c <__panic+0x12c>

0000000000082930 <__debug>:
   82930:	a9af7bfd 	stp	x29, x30, [sp, #-272]!
   82934:	910003fd 	mov	x29, sp
   82938:	f9000bf3 	str	x19, [sp, #16]
   8293c:	aa0103f3 	mov	x19, x1
   82940:	aa0003e1 	mov	x1, x0
   82944:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82948:	3d801ba0 	str	q0, [x29, #96]
   8294c:	912d4000 	add	x0, x0, #0xb50
   82950:	3d801fa1 	str	q1, [x29, #112]
   82954:	3d8023a2 	str	q2, [x29, #128]
   82958:	3d8027a3 	str	q3, [x29, #144]
   8295c:	3d802ba4 	str	q4, [x29, #160]
   82960:	3d802fa5 	str	q5, [x29, #176]
   82964:	3d8033a6 	str	q6, [x29, #192]
   82968:	3d8037a7 	str	q7, [x29, #208]
   8296c:	a90e0fa2 	stp	x2, x3, [x29, #224]
   82970:	a90f17a4 	stp	x4, x5, [x29, #240]
   82974:	a9101fa6 	stp	x6, x7, [x29, #256]
   82978:	97ffff84 	bl	82788 <kprintf>
   8297c:	910443a0 	add	x0, x29, #0x110
   82980:	a90403a0 	stp	x0, x0, [x29, #64]
   82984:	128005e0 	mov	w0, #0xffffffd0            	// #-48
   82988:	910383a1 	add	x1, x29, #0xe0
   8298c:	f9002ba1 	str	x1, [x29, #80]
   82990:	b9005ba0 	str	w0, [x29, #88]
   82994:	12800fe0 	mov	w0, #0xffffff80            	// #-128
   82998:	b9005fa0 	str	w0, [x29, #92]
   8299c:	a94407a0 	ldp	x0, x1, [x29, #64]
   829a0:	a90207a0 	stp	x0, x1, [x29, #32]
   829a4:	a9450fa2 	ldp	x2, x3, [x29, #80]
   829a8:	910083a1 	add	x1, x29, #0x20
   829ac:	a9030fa2 	stp	x2, x3, [x29, #48]
   829b0:	aa1303e0 	mov	x0, x19
   829b4:	97fffed3 	bl	82500 <__kprintf>
   829b8:	f9400bf3 	ldr	x19, [sp, #16]
   829bc:	52800020 	mov	w0, #0x1                   	// #1
   829c0:	a8d17bfd 	ldp	x29, x30, [sp], #272
   829c4:	d65f03c0 	ret

00000000000829c8 <_cstartup>:
   829c8:	f0000000 	adrp	x0, 85000 <cwd+0x3e8>
   829cc:	f9401c03 	ldr	x3, [x0, #56]
   829d0:	f9401402 	ldr	x2, [x0, #40]
   829d4:	eb02007f 	cmp	x3, x2
   829d8:	54000182 	b.cs	82a08 <_cstartup+0x40>  // b.hs, b.nlast
   829dc:	91002060 	add	x0, x3, #0x8
   829e0:	91001c41 	add	x1, x2, #0x7
   829e4:	cb000021 	sub	x1, x1, x0
   829e8:	91004063 	add	x3, x3, #0x10
   829ec:	927df021 	and	x1, x1, #0xfffffffffffffff8
   829f0:	8b030021 	add	x1, x1, x3
   829f4:	d503201f 	nop
   829f8:	f81f801f 	stur	xzr, [x0, #-8]
   829fc:	91002000 	add	x0, x0, #0x8
   82a00:	eb01001f 	cmp	x0, x1
   82a04:	54ffffa1 	b.ne	829f8 <_cstartup+0x30>  // b.any
   82a08:	d65f03c0 	ret
   82a0c:	00000000 	.inst	0x00000000 ; undefined

0000000000082a10 <mu_init>:
   82a10:	d28a0081 	mov	x1, #0x5004                	// #20484
   82a14:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   82a18:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82a1c:	d28a0d06 	mov	x6, #0x5068                	// #20584
   82a20:	910003fd 	mov	x29, sp
   82a24:	b9400020 	ldr	w0, [x1]
   82a28:	f2a7e426 	movk	x6, #0x3f21, lsl #16
   82a2c:	f9000bf3 	str	x19, [sp, #16]
   82a30:	d28a0984 	mov	x4, #0x504c                	// #20556
   82a34:	32000000 	orr	w0, w0, #0x1
   82a38:	b9000020 	str	w0, [x1]
   82a3c:	f2a7e424 	movk	x4, #0x3f21, lsl #16
   82a40:	528021c7 	mov	w7, #0x10e                 	// #270
   82a44:	b90000c7 	str	w7, [x6]
   82a48:	d2a7e403 	mov	x3, #0x3f200000            	// #1059061760
   82a4c:	d2800082 	mov	x2, #0x4                   	// #4
   82a50:	d2801285 	mov	x5, #0x94                  	// #148
   82a54:	b9400081 	ldr	w1, [x4]
   82a58:	f2a7e402 	movk	x2, #0x3f20, lsl #16
   82a5c:	f2a7e405 	movk	x5, #0x3f20, lsl #16
   82a60:	d2801313 	mov	x19, #0x98                  	// #152
   82a64:	32000421 	orr	w1, w1, #0x3
   82a68:	b9000081 	str	w1, [x4]
   82a6c:	f2a7e413 	movk	x19, #0x3f20, lsl #16
   82a70:	d28012c0 	mov	x0, #0x96                  	// #150
   82a74:	b9400061 	ldr	w1, [x3]
   82a78:	12117021 	and	w1, w1, #0xffff8fff
   82a7c:	32140021 	orr	w1, w1, #0x1000
   82a80:	b9000061 	str	w1, [x3]
   82a84:	b9400041 	ldr	w1, [x2]
   82a88:	12117021 	and	w1, w1, #0xffff8fff
   82a8c:	32130021 	orr	w1, w1, #0x2000
   82a90:	b9000041 	str	w1, [x2]
   82a94:	b9400041 	ldr	w1, [x2]
   82a98:	120e7021 	and	w1, w1, #0xfffc7fff
   82a9c:	32100021 	orr	w1, w1, #0x10000
   82aa0:	b9000041 	str	w1, [x2]
   82aa4:	b90000bf 	str	wzr, [x5]
   82aa8:	97fffe4e 	bl	823e0 <spin_sleep_us>
   82aac:	52980000 	mov	w0, #0xc000                	// #49152
   82ab0:	b9000260 	str	w0, [x19]
   82ab4:	d28012c0 	mov	x0, #0x96                  	// #150
   82ab8:	97fffe4a 	bl	823e0 <spin_sleep_us>
   82abc:	b900027f 	str	wzr, [x19]
   82ac0:	d28a0900 	mov	x0, #0x5048                	// #20552
   82ac4:	f9400bf3 	ldr	x19, [sp, #16]
   82ac8:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   82acc:	b9400001 	ldr	w1, [x0]
   82ad0:	321f0021 	orr	w1, w1, #0x2
   82ad4:	b9000001 	str	w1, [x0]
   82ad8:	b9400001 	ldr	w1, [x0]
   82adc:	321e0021 	orr	w1, w1, #0x4
   82ae0:	b9000001 	str	w1, [x0]
   82ae4:	a8c27bfd 	ldp	x29, x30, [sp], #32
   82ae8:	d65f03c0 	ret
   82aec:	d503201f 	nop

0000000000082af0 <mu_write_byte>:
   82af0:	d28a0a82 	mov	x2, #0x5054                	// #20564
   82af4:	12001c00 	and	w0, w0, #0xff
   82af8:	f2a7e422 	movk	x2, #0x3f21, lsl #16
   82afc:	d503201f 	nop
   82b00:	b9400041 	ldr	w1, [x2]
   82b04:	362fffe1 	tbz	w1, #5, 82b00 <mu_write_byte+0x10>
   82b08:	d28a0801 	mov	x1, #0x5040                	// #20544
   82b0c:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82b10:	b9000020 	str	w0, [x1]
   82b14:	d65f03c0 	ret

0000000000082b18 <mu_write_fifo>:
   82b18:	d28a0c81 	mov	x1, #0x5064                	// #20580
   82b1c:	12001c02 	and	w2, w0, #0xff
   82b20:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82b24:	52800000 	mov	w0, #0x0                   	// #0
   82b28:	b9400021 	ldr	w1, [x1]
   82b2c:	360800a1 	tbz	w1, #1, 82b40 <mu_write_fifo+0x28>
   82b30:	d28a0801 	mov	x1, #0x5040                	// #20544
   82b34:	52800020 	mov	w0, #0x1                   	// #1
   82b38:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82b3c:	b9000022 	str	w2, [x1]
   82b40:	d65f03c0 	ret
   82b44:	d503201f 	nop

0000000000082b48 <mu_read_byte>:
   82b48:	d28a0a81 	mov	x1, #0x5054                	// #20564
   82b4c:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82b50:	b9400020 	ldr	w0, [x1]
   82b54:	3607ffe0 	tbz	w0, #0, 82b50 <mu_read_byte+0x8>
   82b58:	d28a0800 	mov	x0, #0x5040                	// #20544
   82b5c:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   82b60:	b9400000 	ldr	w0, [x0]
   82b64:	d65f03c0 	ret

0000000000082b68 <mu_read_fifo>:
   82b68:	d28a0a81 	mov	x1, #0x5054                	// #20564
   82b6c:	aa0003e2 	mov	x2, x0
   82b70:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82b74:	52800000 	mov	w0, #0x0                   	// #0
   82b78:	b9400021 	ldr	w1, [x1]
   82b7c:	360000c1 	tbz	w1, #0, 82b94 <mu_read_fifo+0x2c>
   82b80:	d28a0801 	mov	x1, #0x5040                	// #20544
   82b84:	52800020 	mov	w0, #0x1                   	// #1
   82b88:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82b8c:	b9400021 	ldr	w1, [x1]
   82b90:	39000041 	strb	w1, [x2]
   82b94:	d65f03c0 	ret

0000000000082b98 <mu_write_str>:
   82b98:	39400002 	ldrb	w2, [x0]
   82b9c:	34000182 	cbz	w2, 82bcc <mu_write_str+0x34>
   82ba0:	d28a0a81 	mov	x1, #0x5054                	// #20564
   82ba4:	d28a0804 	mov	x4, #0x5040                	// #20544
   82ba8:	91000403 	add	x3, x0, #0x1
   82bac:	f2a7e421 	movk	x1, #0x3f21, lsl #16
   82bb0:	f2a7e424 	movk	x4, #0x3f21, lsl #16
   82bb4:	d503201f 	nop
   82bb8:	b9400020 	ldr	w0, [x1]
   82bbc:	362fffe0 	tbz	w0, #5, 82bb8 <mu_write_str+0x20>
   82bc0:	b9000082 	str	w2, [x4]
   82bc4:	38401462 	ldrb	w2, [x3], #1
   82bc8:	35ffff82 	cbnz	w2, 82bb8 <mu_write_str+0x20>
   82bcc:	d65f03c0 	ret

0000000000082bd0 <atag_display>:
   82bd0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   82bd4:	910003fd 	mov	x29, sp
   82bd8:	f9000bf3 	str	x19, [sp, #16]
   82bdc:	d2802013 	mov	x19, #0x100                 	// #256
   82be0:	b9400661 	ldr	w1, [x19, #4]
   82be4:	340004e1 	cbz	w1, 82c80 <atag_display+0xb0>
   82be8:	a901d7b4 	stp	x20, x21, [x29, #24]
   82bec:	52800054 	mov	w20, #0x2                   	// #2
   82bf0:	d0000015 	adrp	x21, 84000 <__func__.3102+0x40>
   82bf4:	f90017b6 	str	x22, [x29, #40]
   82bf8:	912ea2b5 	add	x21, x21, #0xba8
   82bfc:	d0000016 	adrp	x22, 84000 <__func__.3102+0x40>
   82c00:	72aa8834 	movk	w20, #0x5441, lsl #16
   82c04:	912e62d6 	add	x22, x22, #0xb98
   82c08:	14000010 	b	82c48 <atag_display+0x78>
   82c0c:	52800120 	mov	w0, #0x9                   	// #9
   82c10:	72aa8820 	movk	w0, #0x5441, lsl #16
   82c14:	6b00003f 	cmp	w1, w0
   82c18:	540004e0 	b.eq	82cb4 <atag_display+0xe4>  // b.none
   82c1c:	52800020 	mov	w0, #0x1                   	// #1
   82c20:	72aa8820 	movk	w0, #0x5441, lsl #16
   82c24:	6b00003f 	cmp	w1, w0
   82c28:	54000320 	b.eq	82c8c <atag_display+0xbc>  // b.none
   82c2c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82c30:	912fa000 	add	x0, x0, #0xbe8
   82c34:	97fffed5 	bl	82788 <kprintf>
   82c38:	b9400260 	ldr	w0, [x19]
   82c3c:	8b204a73 	add	x19, x19, w0, uxtw #2
   82c40:	b9400661 	ldr	w1, [x19, #4]
   82c44:	340001a1 	cbz	w1, 82c78 <atag_display+0xa8>
   82c48:	6b14003f 	cmp	w1, w20
   82c4c:	54fffe01 	b.ne	82c0c <atag_display+0x3c>  // b.any
   82c50:	aa1603e0 	mov	x0, x22
   82c54:	97fffecd 	bl	82788 <kprintf>
   82c58:	b9400a61 	ldr	w1, [x19, #8]
   82c5c:	aa1503e0 	mov	x0, x21
   82c60:	b9400e62 	ldr	w2, [x19, #12]
   82c64:	97fffec9 	bl	82788 <kprintf>
   82c68:	b9400260 	ldr	w0, [x19]
   82c6c:	8b204a73 	add	x19, x19, w0, uxtw #2
   82c70:	b9400661 	ldr	w1, [x19, #4]
   82c74:	35fffea1 	cbnz	w1, 82c48 <atag_display+0x78>
   82c78:	a941d7b4 	ldp	x20, x21, [x29, #24]
   82c7c:	f94017b6 	ldr	x22, [x29, #40]
   82c80:	f9400bf3 	ldr	x19, [sp, #16]
   82c84:	a8c37bfd 	ldp	x29, x30, [sp], #48
   82c88:	d65f03c0 	ret
   82c8c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82c90:	912d6000 	add	x0, x0, #0xb58
   82c94:	97fffebd 	bl	82788 <kprintf>
   82c98:	b9400a61 	ldr	w1, [x19, #8]
   82c9c:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82ca0:	b9400e62 	ldr	w2, [x19, #12]
   82ca4:	912da000 	add	x0, x0, #0xb68
   82ca8:	b9401263 	ldr	w3, [x19, #16]
   82cac:	97fffeb7 	bl	82788 <kprintf>
   82cb0:	17ffffe2 	b	82c38 <atag_display+0x68>
   82cb4:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82cb8:	912f2000 	add	x0, x0, #0xbc8
   82cbc:	97fffeb3 	bl	82788 <kprintf>
   82cc0:	d0000000 	adrp	x0, 84000 <__func__.3102+0x40>
   82cc4:	91002261 	add	x1, x19, #0x8
   82cc8:	912f6000 	add	x0, x0, #0xbd8
   82ccc:	97fffeaf 	bl	82788 <kprintf>
   82cd0:	17ffffda 	b	82c38 <atag_display+0x68>
   82cd4:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   82cd8:	910003fd 	mov	x29, sp
   82cdc:	a90153f3 	stp	x19, x20, [sp, #16]
   82ce0:	2a0003f4 	mov	w20, w0
   82ce4:	a9025bf5 	stp	x21, x22, [sp, #32]
   82ce8:	52942413 	mov	w19, #0xa120                	// #41248
   82cec:	72a000f3 	movk	w19, #0x7, lsl #16
   82cf0:	d2800495 	mov	x21, #0x24                  	// #36
   82cf4:	f2a7e615 	movk	x21, #0x3f30, lsl #16
   82cf8:	d2800616 	mov	x22, #0x30                  	// #48
   82cfc:	f2a7e616 	movk	x22, #0x3f30, lsl #16
   82d00:	f9001bf7 	str	x23, [sp, #48]
   82d04:	52900017 	mov	w23, #0x8000                	// #32768
   82d08:	72a02fd7 	movk	w23, #0x17e, lsl #16
   82d0c:	b94002a0 	ldr	w0, [x21]
   82d10:	6a14001f 	tst	w0, w20
   82d14:	54000180 	b.eq	82d44 <atag_display+0x174>  // b.none
   82d18:	b94002c0 	ldr	w0, [x22]
   82d1c:	6a17001f 	tst	w0, w23
   82d20:	54000121 	b.ne	82d44 <atag_display+0x174>  // b.any
   82d24:	51000673 	sub	w19, w19, #0x1
   82d28:	3100067f 	cmn	w19, #0x1
   82d2c:	54000061 	b.ne	82d38 <atag_display+0x168>  // b.any
   82d30:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82d34:	1400000d 	b	82d68 <atag_display+0x198>
   82d38:	52800020 	mov	w0, #0x1                   	// #1
   82d3c:	97fffdcf 	bl	82478 <wait_micros>
   82d40:	17fffff3 	b	82d0c <atag_display+0x13c>
   82d44:	34ffff73 	cbz	w19, 82d30 <atag_display+0x160>
   82d48:	d2800600 	mov	x0, #0x30                  	// #48
   82d4c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82d50:	b9400001 	ldr	w1, [x0]
   82d54:	52900000 	mov	w0, #0x8000                	// #32768
   82d58:	72a02fc0 	movk	w0, #0x17e, lsl #16
   82d5c:	6a00003f 	tst	w1, w0
   82d60:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82d64:	1a9f1000 	csel	w0, w0, wzr, ne  // ne = any
   82d68:	a94153f3 	ldp	x19, x20, [sp, #16]
   82d6c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82d70:	f9401bf7 	ldr	x23, [sp, #48]
   82d74:	a8c47bfd 	ldp	x29, x30, [sp], #64
   82d78:	d65f03c0 	ret
   82d7c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   82d80:	910003fd 	mov	x29, sp
   82d84:	a90153f3 	stp	x19, x20, [sp, #16]
   82d88:	52884813 	mov	w19, #0x4240                	// #16960
   82d8c:	72a001f3 	movk	w19, #0xf, lsl #16
   82d90:	a9025bf5 	stp	x21, x22, [sp, #32]
   82d94:	52900015 	mov	w21, #0x8000                	// #32768
   82d98:	72a02fd5 	movk	w21, #0x17e, lsl #16
   82d9c:	2a150015 	orr	w21, w0, w21
   82da0:	f9001bf7 	str	x23, [sp, #48]
   82da4:	2a0003f6 	mov	w22, w0
   82da8:	d2800617 	mov	x23, #0x30                  	// #48
   82dac:	f2a7e617 	movk	x23, #0x3f30, lsl #16
   82db0:	aa1703f4 	mov	x20, x23
   82db4:	b94002e0 	ldr	w0, [x23]
   82db8:	6a15001f 	tst	w0, w21
   82dbc:	54000081 	b.ne	82dcc <atag_display+0x1fc>  // b.any
   82dc0:	51000673 	sub	w19, w19, #0x1
   82dc4:	3100067f 	cmn	w19, #0x1
   82dc8:	54000201 	b.ne	82e08 <atag_display+0x238>  // b.any
   82dcc:	b9400280 	ldr	w0, [x20]
   82dd0:	7100027f 	cmp	w19, #0x0
   82dd4:	5400008d 	b.le	82de4 <atag_display+0x214>
   82dd8:	52a00221 	mov	w1, #0x110000              	// #1114112
   82ddc:	6a01001f 	tst	w0, w1
   82de0:	540001a0 	b.eq	82e14 <atag_display+0x244>  // b.none
   82de4:	d2800601 	mov	x1, #0x30                  	// #48
   82de8:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   82dec:	b9000020 	str	w0, [x1]
   82df0:	12800000 	mov	w0, #0xffffffff            	// #-1
   82df4:	a94153f3 	ldp	x19, x20, [sp, #16]
   82df8:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82dfc:	f9401bf7 	ldr	x23, [sp, #48]
   82e00:	a8c47bfd 	ldp	x29, x30, [sp], #64
   82e04:	d65f03c0 	ret
   82e08:	52800020 	mov	w0, #0x1                   	// #1
   82e0c:	97fffd9b 	bl	82478 <wait_micros>
   82e10:	17ffffe9 	b	82db4 <atag_display+0x1e4>
   82e14:	52900001 	mov	w1, #0x8000                	// #32768
   82e18:	72a02fc1 	movk	w1, #0x17e, lsl #16
   82e1c:	6a01001f 	tst	w0, w1
   82e20:	54000080 	b.eq	82e30 <atag_display+0x260>  // b.none
   82e24:	b9000280 	str	w0, [x20]
   82e28:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82e2c:	17fffff2 	b	82df4 <atag_display+0x224>
   82e30:	52800000 	mov	w0, #0x0                   	// #0
   82e34:	b9000296 	str	w22, [x20]
   82e38:	17ffffef 	b	82df4 <atag_display+0x224>
   82e3c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
   82e40:	910003fd 	mov	x29, sp
   82e44:	a9025bf5 	stp	x21, x22, [sp, #32]
   82e48:	f0000015 	adrp	x21, 85000 <cwd+0x3e8>
   82e4c:	a90153f3 	stp	x19, x20, [sp, #16]
   82e50:	2a0103f6 	mov	w22, w1
   82e54:	f9013abf 	str	xzr, [x21, #624]
   82e58:	2a0003f3 	mov	w19, w0
   82e5c:	f9001bf7 	str	x23, [sp, #48]
   82e60:	aa1503f4 	mov	x20, x21
   82e64:	36f80260 	tbz	w0, #31, 82eb0 <atag_display+0x2e0>
   82e68:	f0000017 	adrp	x23, 85000 <cwd+0x3e8>
   82e6c:	f9404ee1 	ldr	x1, [x23, #152]
   82e70:	52a6e042 	mov	w2, #0x37020000            	// #922877952
   82e74:	52a6e000 	mov	w0, #0x37000000            	// #922746880
   82e78:	f100003f 	cmp	x1, #0x0
   82e7c:	1a801040 	csel	w0, w2, w0, ne  // ne = any
   82e80:	97ffffef 	bl	82e3c <atag_display+0x26c>
   82e84:	f9404ee1 	ldr	x1, [x23, #152]
   82e88:	b4000121 	cbz	x1, 82eac <atag_display+0x2dc>
   82e8c:	35000100 	cbnz	w0, 82eac <atag_display+0x2dc>
   82e90:	92800021 	mov	x1, #0xfffffffffffffffe    	// #-2
   82e94:	f9013aa1 	str	x1, [x21, #624]
   82e98:	a94153f3 	ldp	x19, x20, [sp, #16]
   82e9c:	a9425bf5 	ldp	x21, x22, [sp, #32]
   82ea0:	f9401bf7 	ldr	x23, [sp, #48]
   82ea4:	a8c47bfd 	ldp	x29, x30, [sp], #64
   82ea8:	d65f03c0 	ret
   82eac:	12007a73 	and	w19, w19, #0x7fffffff
   82eb0:	52800020 	mov	w0, #0x1                   	// #1
   82eb4:	97ffff88 	bl	82cd4 <atag_display+0x104>
   82eb8:	340000a0 	cbz	w0, 82ecc <atag_display+0x2fc>
   82ebc:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
   82ec0:	f9013a80 	str	x0, [x20, #624]
   82ec4:	52800000 	mov	w0, #0x0                   	// #0
   82ec8:	17fffff4 	b	82e98 <atag_display+0x2c8>
   82ecc:	d2800600 	mov	x0, #0x30                  	// #48
   82ed0:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82ed4:	b9400001 	ldr	w1, [x0]
   82ed8:	b9000001 	str	w1, [x0]
   82edc:	d2800100 	mov	x0, #0x8                   	// #8
   82ee0:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82ee4:	b9000016 	str	w22, [x0]
   82ee8:	b9000413 	str	w19, [x0, #4]
   82eec:	52a6e000 	mov	w0, #0x37000000            	// #922746880
   82ef0:	6b00027f 	cmp	w19, w0
   82ef4:	52a10040 	mov	w0, #0x8020000             	// #134348800
   82ef8:	1a9f17f5 	cset	w21, eq  // eq = none
   82efc:	6b00027f 	cmp	w19, w0
   82f00:	1a9f16a0 	csinc	w0, w21, wzr, ne  // ne = any
   82f04:	34000060 	cbz	w0, 82f10 <atag_display+0x340>
   82f08:	52800c80 	mov	w0, #0x64                  	// #100
   82f0c:	97fffd5b 	bl	82478 <wait_micros>
   82f10:	52800020 	mov	w0, #0x1                   	// #1
   82f14:	97ffff9a 	bl	82d7c <atag_display+0x1ac>
   82f18:	34000060 	cbz	w0, 82f24 <atag_display+0x354>
   82f1c:	93407c00 	sxtw	x0, w0
   82f20:	17ffffe8 	b	82ec0 <atag_display+0x2f0>
   82f24:	d2800201 	mov	x1, #0x10                  	// #16
   82f28:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   82f2c:	7100027f 	cmp	w19, #0x0
   82f30:	b9400021 	ldr	w1, [x1]
   82f34:	1a9f16b5 	csinc	w21, w21, wzr, ne  // ne = any
   82f38:	35fffb15 	cbnz	w21, 82e98 <atag_display+0x2c8>
   82f3c:	52a6e040 	mov	w0, #0x37020000            	// #922877952
   82f40:	6b00027f 	cmp	w19, w0
   82f44:	54000061 	b.ne	82f50 <atag_display+0x380>  // b.any
   82f48:	121b0020 	and	w0, w1, #0x20
   82f4c:	17ffffd3 	b	82e98 <atag_display+0x2c8>
   82f50:	52a10040 	mov	w0, #0x8020000             	// #134348800
   82f54:	6b00027f 	cmp	w19, w0
   82f58:	540000a1 	b.ne	82f6c <atag_display+0x39c>  // b.any
   82f5c:	6b16003f 	cmp	w1, w22
   82f60:	12800020 	mov	w0, #0xfffffffe            	// #-2
   82f64:	1a8003e0 	csel	w0, wzr, w0, eq  // eq = none
   82f68:	17ffffcc 	b	82e98 <atag_display+0x2c8>
   82f6c:	52a04020 	mov	w0, #0x2010000             	// #33619968
   82f70:	6b00027f 	cmp	w19, w0
   82f74:	540001c1 	b.ne	82fac <atag_display+0x3dc>  // b.any
   82f78:	d2800380 	mov	x0, #0x1c                  	// #28
   82f7c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82f80:	d2800282 	mov	x2, #0x14                  	// #20
   82f84:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   82f88:	b9400003 	ldr	w3, [x0]
   82f8c:	d2800300 	mov	x0, #0x18                  	// #24
   82f90:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   82f94:	2a030021 	orr	w1, w1, w3
   82f98:	b9400000 	ldr	w0, [x0]
   82f9c:	b9400042 	ldr	w2, [x2]
   82fa0:	2a020000 	orr	w0, w0, w2
   82fa4:	2a000020 	orr	w0, w1, w0
   82fa8:	17ffffbc 	b	82e98 <atag_display+0x2c8>
   82fac:	52a06040 	mov	w0, #0x3020000             	// #50462720
   82fb0:	6b00027f 	cmp	w19, w0
   82fb4:	540001a1 	b.ne	82fe8 <atag_display+0x418>  // b.any
   82fb8:	53185c20 	lsl	w0, w1, #8
   82fbc:	531a6422 	lsl	w2, w1, #6
   82fc0:	120a0003 	and	w3, w0, #0x400000
   82fc4:	120d0042 	and	w2, w2, #0x80000
   82fc8:	2a030042 	orr	w2, w2, w3
   82fcc:	12090003 	and	w3, w0, #0x800000
   82fd0:	121e0020 	and	w0, w1, #0x4
   82fd4:	2a030000 	orr	w0, w0, w3
   82fd8:	2a020000 	orr	w0, w0, w2
   82fdc:	f9013a80 	str	x0, [x20, #624]
   82fe0:	12103c20 	and	w0, w1, #0xffff0000
   82fe4:	17ffffad 	b	82e98 <atag_display+0x2c8>
   82fe8:	52980080 	mov	w0, #0xc004                	// #49156
   82fec:	72bfff20 	movk	w0, #0xfff9, lsl #16
   82ff0:	0a000020 	and	w0, w1, w0
   82ff4:	17ffffa9 	b	82e98 <atag_display+0x2c8>
   82ff8:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   82ffc:	910003fd 	mov	x29, sp
   83000:	a90153f3 	stp	x19, x20, [sp, #16]
   83004:	52990d53 	mov	w19, #0xc86a                	// #51306
   83008:	72a04f73 	movk	w19, #0x27b, lsl #16
   8300c:	5290d414 	mov	w20, #0x86a0                	// #34464
   83010:	72a00034 	movk	w20, #0x1, lsl #16
   83014:	1ac00a73 	udiv	w19, w19, w0
   83018:	f90013f5 	str	x21, [sp, #32]
   8301c:	d2800495 	mov	x21, #0x24                  	// #36
   83020:	f2a7e615 	movk	x21, #0x3f30, lsl #16
   83024:	b94002a0 	ldr	w0, [x21]
   83028:	f240041f 	tst	x0, #0x3
   8302c:	54000180 	b.eq	8305c <atag_display+0x48c>  // b.none
   83030:	51000694 	sub	w20, w20, #0x1
   83034:	3100069f 	cmn	w20, #0x1
   83038:	540000c1 	b.ne	83050 <atag_display+0x480>  // b.any
   8303c:	12800020 	mov	w0, #0xfffffffe            	// #-2
   83040:	a94153f3 	ldp	x19, x20, [sp, #16]
   83044:	f94013f5 	ldr	x21, [sp, #32]
   83048:	a8c37bfd 	ldp	x29, x30, [sp], #48
   8304c:	d65f03c0 	ret
   83050:	52800020 	mov	w0, #0x1                   	// #1
   83054:	97fffd09 	bl	82478 <wait_micros>
   83058:	17fffff3 	b	83024 <atag_display+0x454>
   8305c:	34ffff14 	cbz	w20, 8303c <atag_display+0x46c>
   83060:	d2800581 	mov	x1, #0x2c                  	// #44
   83064:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   83068:	b9400020 	ldr	w0, [x1]
   8306c:	121d7800 	and	w0, w0, #0xfffffffb
   83070:	b9000020 	str	w0, [x1]
   83074:	52800140 	mov	w0, #0xa                   	// #10
   83078:	97fffd00 	bl	82478 <wait_micros>
   8307c:	71000660 	subs	w0, w19, #0x1
   83080:	540001a0 	b.eq	830b4 <atag_display+0x4e4>  // b.none
   83084:	53081c01 	lsl	w1, w0, #24
   83088:	72040c3f 	tst	w1, #0xf0000000
   8308c:	54000521 	b.ne	83130 <atag_display+0x560>  // b.any
   83090:	53040c01 	lsl	w1, w0, #28
   83094:	52800080 	mov	w0, #0x4                   	// #4
   83098:	7202043f 	tst	w1, #0xc0000000
   8309c:	54000061 	b.ne	830a8 <atag_display+0x4d8>  // b.any
   830a0:	531e7421 	lsl	w1, w1, #2
   830a4:	51000800 	sub	w0, w0, #0x2
   830a8:	2a2103e1 	mvn	w1, w1
   830ac:	4b417c00 	sub	w0, w0, w1, lsr #31
   830b0:	51000400 	sub	w0, w0, #0x1
   830b4:	d0000001 	adrp	x1, 85000 <cwd+0x3e8>
   830b8:	f9405021 	ldr	x1, [x1, #160]
   830bc:	f100043f 	cmp	x1, #0x1
   830c0:	54000068 	b.hi	830cc <atag_display+0x4fc>  // b.pmore
   830c4:	52800033 	mov	w19, #0x1                   	// #1
   830c8:	1ac02273 	lsl	w19, w19, w0
   830cc:	d2800594 	mov	x20, #0x2c                  	// #44
   830d0:	f2a7e614 	movk	x20, #0x3f30, lsl #16
   830d4:	71000a7f 	cmp	w19, #0x2
   830d8:	52800041 	mov	w1, #0x2                   	// #2
   830dc:	b9400280 	ldr	w0, [x20]
   830e0:	1a812273 	csel	w19, w19, w1, cs  // cs = hs, nlast
   830e4:	12105400 	and	w0, w0, #0xffff003f
   830e8:	2a132013 	orr	w19, w0, w19, lsl #8
   830ec:	b9000293 	str	w19, [x20]
   830f0:	52800140 	mov	w0, #0xa                   	// #10
   830f4:	5284e213 	mov	w19, #0x2710                	// #10000
   830f8:	97fffce0 	bl	82478 <wait_micros>
   830fc:	b9400280 	ldr	w0, [x20]
   83100:	321e0000 	orr	w0, w0, #0x4
   83104:	b9000280 	str	w0, [x20]
   83108:	52800140 	mov	w0, #0xa                   	// #10
   8310c:	97fffcdb 	bl	82478 <wait_micros>
   83110:	b9400280 	ldr	w0, [x20]
   83114:	37080120 	tbnz	w0, #1, 83138 <atag_display+0x568>
   83118:	51000673 	sub	w19, w19, #0x1
   8311c:	3100067f 	cmn	w19, #0x1
   83120:	54fff8e0 	b.eq	8303c <atag_display+0x46c>  // b.none
   83124:	52800140 	mov	w0, #0xa                   	// #10
   83128:	97fffcd4 	bl	82478 <wait_micros>
   8312c:	17fffff9 	b	83110 <atag_display+0x540>
   83130:	52800100 	mov	w0, #0x8                   	// #8
   83134:	17ffffd9 	b	83098 <atag_display+0x4c8>
   83138:	34fff833 	cbz	w19, 8303c <atag_display+0x46c>
   8313c:	52800000 	mov	w0, #0x0                   	// #0
   83140:	17ffffc0 	b	83040 <atag_display+0x470>
   83144:	51000400 	sub	w0, w0, #0x1
   83148:	3100041f 	cmn	w0, #0x1
   8314c:	54000041 	b.ne	83154 <atag_display+0x584>  // b.any
   83150:	d65f03c0 	ret
   83154:	d503201f 	nop
   83158:	17fffffb 	b	83144 <atag_display+0x574>

000000000008315c <sd_readsector>:
   8315c:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   83160:	910003fd 	mov	x29, sp
   83164:	a90153f3 	stp	x19, x20, [sp, #16]
   83168:	a9025bf5 	stp	x21, x22, [sp, #32]
   8316c:	2a0003f5 	mov	w21, w0
   83170:	aa0103f6 	mov	x22, x1
   83174:	52800040 	mov	w0, #0x2                   	// #2
   83178:	97fffed7 	bl	82cd4 <atag_display+0x104>
   8317c:	34000140 	cbz	w0, 831a4 <sd_readsector+0x48>
   83180:	d0000000 	adrp	x0, 85000 <cwd+0x3e8>
   83184:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
   83188:	52800013 	mov	w19, #0x0                   	// #0
   8318c:	f9013801 	str	x1, [x0, #624]
   83190:	2a1303e0 	mov	w0, w19
   83194:	a94153f3 	ldp	x19, x20, [sp, #16]
   83198:	a9425bf5 	ldp	x21, x22, [sp, #32]
   8319c:	a8c37bfd 	ldp	x29, x30, [sp], #48
   831a0:	d65f03c0 	ret
   831a4:	2a0003f3 	mov	w19, w0
   831a8:	d0000000 	adrp	x0, 85000 <cwd+0x3e8>
   831ac:	91026001 	add	x1, x0, #0x98
   831b0:	aa0003f4 	mov	x20, x0
   831b4:	d2800080 	mov	x0, #0x4                   	// #4
   831b8:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   831bc:	f9400822 	ldr	x2, [x1, #16]
   831c0:	52804001 	mov	w1, #0x200                 	// #512
   831c4:	72a00021 	movk	w1, #0x1, lsl #16
   831c8:	b9000001 	str	w1, [x0]
   831cc:	36000102 	tbz	w2, #0, 831ec <sd_readsector+0x90>
   831d0:	2a1503e1 	mov	w1, w21
   831d4:	52800200 	mov	w0, #0x10                  	// #16
   831d8:	72a22440 	movk	w0, #0x1122, lsl #16
   831dc:	97ffff18 	bl	82e3c <atag_display+0x26c>
   831e0:	d0000000 	adrp	x0, 85000 <cwd+0x3e8>
   831e4:	f9413800 	ldr	x0, [x0, #624]
   831e8:	b5fffd40 	cbnz	x0, 83190 <sd_readsector+0x34>
   831ec:	91026280 	add	x0, x20, #0x98
   831f0:	f9400800 	ldr	x0, [x0, #16]
   831f4:	37000100 	tbnz	w0, #0, 83214 <sd_readsector+0xb8>
   831f8:	53175aa1 	lsl	w1, w21, #9
   831fc:	52800200 	mov	w0, #0x10                  	// #16
   83200:	72a22440 	movk	w0, #0x1122, lsl #16
   83204:	97ffff0e 	bl	82e3c <atag_display+0x26c>
   83208:	d0000000 	adrp	x0, 85000 <cwd+0x3e8>
   8320c:	f9413800 	ldr	x0, [x0, #624]
   83210:	b5fffc00 	cbnz	x0, 83190 <sd_readsector+0x34>
   83214:	52800400 	mov	w0, #0x20                  	// #32
   83218:	97fffed9 	bl	82d7c <atag_display+0x1ac>
   8321c:	d2800001 	mov	x1, #0x0                   	// #0
   83220:	350001c0 	cbnz	w0, 83258 <sd_readsector+0xfc>
   83224:	d2800402 	mov	x2, #0x20                  	// #32
   83228:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   8322c:	b9400040 	ldr	w0, [x2]
   83230:	b8217ac0 	str	w0, [x22, x1, lsl #2]
   83234:	91000421 	add	x1, x1, #0x1
   83238:	f102003f 	cmp	x1, #0x80
   8323c:	54ffff81 	b.ne	8322c <sd_readsector+0xd0>  // b.any
   83240:	d0000000 	adrp	x0, 85000 <cwd+0x3e8>
   83244:	f9413800 	ldr	x0, [x0, #624]
   83248:	52804013 	mov	w19, #0x200                 	// #512
   8324c:	f100001f 	cmp	x0, #0x0
   83250:	1a9313f3 	csel	w19, wzr, w19, ne  // ne = any
   83254:	17ffffcf 	b	83190 <sd_readsector+0x34>
   83258:	d0000001 	adrp	x1, 85000 <cwd+0x3e8>
   8325c:	93407c00 	sxtw	x0, w0
   83260:	f9013820 	str	x0, [x1, #624]
   83264:	17ffffcb 	b	83190 <sd_readsector+0x34>

0000000000083268 <sd_init>:
   83268:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
   8326c:	d2800203 	mov	x3, #0x10                  	// #16
   83270:	f2a7e403 	movk	x3, #0x3f20, lsl #16
   83274:	910003fd 	mov	x29, sp
   83278:	b9400060 	ldr	w0, [x3]
   8327c:	d2801282 	mov	x2, #0x94                  	// #148
   83280:	f2a7e402 	movk	x2, #0x3f20, lsl #16
   83284:	a90153f3 	stp	x19, x20, [sp, #16]
   83288:	52800044 	mov	w4, #0x2                   	// #2
   8328c:	a9025bf5 	stp	x21, x22, [sp, #32]
   83290:	2a0003e0 	mov	w0, w0
   83294:	a90363f7 	stp	x23, x24, [sp, #48]
   83298:	9268f000 	and	x0, x0, #0xffffffffff1fffff
   8329c:	a9046bf9 	stp	x25, x26, [sp, #64]
   832a0:	d2800593 	mov	x19, #0x2c                  	// #44
   832a4:	f2a7e613 	movk	x19, #0x3f30, lsl #16
   832a8:	f9002bfb 	str	x27, [sp, #80]
   832ac:	d284e215 	mov	x21, #0x2710                	// #10000
   832b0:	b9000060 	str	w0, [x3]
   832b4:	528012c0 	mov	w0, #0x96                  	// #150
   832b8:	b9000044 	str	w4, [x2]
   832bc:	97ffffa2 	bl	83144 <atag_display+0x574>
   832c0:	d2801381 	mov	x1, #0x9c                  	// #156
   832c4:	f2a7e401 	movk	x1, #0x3f20, lsl #16
   832c8:	52900000 	mov	w0, #0x8000                	// #32768
   832cc:	b9000020 	str	w0, [x1]
   832d0:	528012c0 	mov	w0, #0x96                  	// #150
   832d4:	97ffff9c 	bl	83144 <atag_display+0x574>
   832d8:	b900005f 	str	wzr, [x2]
   832dc:	b900003f 	str	wzr, [x1]
   832e0:	d2800d05 	mov	x5, #0x68                  	// #104
   832e4:	f2a7e405 	movk	x5, #0x3f20, lsl #16
   832e8:	b94000a0 	ldr	w0, [x5]
   832ec:	32110000 	orr	w0, w0, #0x8000
   832f0:	b90000a0 	str	w0, [x5]
   832f4:	b9400060 	ldr	w0, [x3]
   832f8:	32081400 	orr	w0, w0, #0x3f000000
   832fc:	b9000060 	str	w0, [x3]
   83300:	b9000044 	str	w4, [x2]
   83304:	528012c0 	mov	w0, #0x96                  	// #150
   83308:	97ffff8f 	bl	83144 <atag_display+0x574>
   8330c:	52a00060 	mov	w0, #0x30000               	// #196608
   83310:	b9000020 	str	w0, [x1]
   83314:	528012c0 	mov	w0, #0x96                  	// #150
   83318:	97ffff8b 	bl	83144 <atag_display+0x574>
   8331c:	b900005f 	str	wzr, [x2]
   83320:	b900003f 	str	wzr, [x1]
   83324:	d2800283 	mov	x3, #0x14                  	// #20
   83328:	f2a7e403 	movk	x3, #0x3f20, lsl #16
   8332c:	b9400060 	ldr	w0, [x3]
   83330:	32002c00 	orr	w0, w0, #0xfff
   83334:	b9000060 	str	w0, [x3]
   83338:	b9000044 	str	w4, [x2]
   8333c:	528012c0 	mov	w0, #0x96                  	// #150
   83340:	97ffff81 	bl	83144 <atag_display+0x574>
   83344:	52a00780 	mov	w0, #0x3c0000              	// #3932160
   83348:	b9000020 	str	w0, [x1]
   8334c:	528012c0 	mov	w0, #0x96                  	// #150
   83350:	97ffff7d 	bl	83144 <atag_display+0x574>
   83354:	b900005f 	str	wzr, [x2]
   83358:	b900003f 	str	wzr, [x1]
   8335c:	d2801f80 	mov	x0, #0xfc                  	// #252
   83360:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   83364:	d0000014 	adrp	x20, 85000 <cwd+0x3e8>
   83368:	91026281 	add	x1, x20, #0x98
   8336c:	b9400000 	ldr	w0, [x0]
   83370:	d3505c00 	ubfx	x0, x0, #16, #8
   83374:	f9000420 	str	x0, [x1, #8]
   83378:	d2800500 	mov	x0, #0x28                  	// #40
   8337c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   83380:	b900001f 	str	wzr, [x0]
   83384:	b9400260 	ldr	w0, [x19]
   83388:	32080000 	orr	w0, w0, #0x1000000
   8338c:	b9000260 	str	w0, [x19]
   83390:	52800140 	mov	w0, #0xa                   	// #10
   83394:	97fffc39 	bl	82478 <wait_micros>
   83398:	b9400260 	ldr	w0, [x19]
   8339c:	36c001a0 	tbz	w0, #24, 833d0 <sd_init+0x168>
   833a0:	d10006b5 	sub	x21, x21, #0x1
   833a4:	b10006bf 	cmn	x21, #0x1
   833a8:	54ffff41 	b.ne	83390 <sd_init+0x128>  // b.any
   833ac:	12800033 	mov	w19, #0xfffffffe            	// #-2
   833b0:	2a1303e0 	mov	w0, w19
   833b4:	f9402bfb 	ldr	x27, [sp, #80]
   833b8:	a94153f3 	ldp	x19, x20, [sp, #16]
   833bc:	a9425bf5 	ldp	x21, x22, [sp, #32]
   833c0:	a94363f7 	ldp	x23, x24, [sp, #48]
   833c4:	a9446bf9 	ldp	x25, x26, [sp, #64]
   833c8:	a8c67bfd 	ldp	x29, x30, [sp], #96
   833cc:	d65f03c0 	ret
   833d0:	b4fffef5 	cbz	x21, 833ac <sd_init+0x144>
   833d4:	b9400260 	ldr	w0, [x19]
   833d8:	52800021 	mov	w1, #0x1                   	// #1
   833dc:	72a001c1 	movk	w1, #0xe, lsl #16
   833e0:	2a010000 	orr	w0, w0, w1
   833e4:	b9000260 	str	w0, [x19]
   833e8:	52800140 	mov	w0, #0xa                   	// #10
   833ec:	97fffc23 	bl	82478 <wait_micros>
   833f0:	52835000 	mov	w0, #0x1a80                	// #6784
   833f4:	72a000c0 	movk	w0, #0x6, lsl #16
   833f8:	97ffff00 	bl	82ff8 <atag_display+0x428>
   833fc:	2a0003f3 	mov	w19, w0
   83400:	35fffd80 	cbnz	w0, 833b0 <sd_init+0x148>
   83404:	d2800702 	mov	x2, #0x38                  	// #56
   83408:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   8340c:	12800001 	mov	w1, #0xffffffff            	// #-1
   83410:	d0000015 	adrp	x21, 85000 <cwd+0x3e8>
   83414:	b9000041 	str	w1, [x2]
   83418:	d2800682 	mov	x2, #0x34                  	// #52
   8341c:	f2a7e602 	movk	x2, #0x3f30, lsl #16
   83420:	aa1503f7 	mov	x23, x21
   83424:	b9000041 	str	w1, [x2]
   83428:	91026281 	add	x1, x20, #0x98
   8342c:	f9013abf 	str	xzr, [x21, #624]
   83430:	f9004e9f 	str	xzr, [x20, #152]
   83434:	a9017c3f 	stp	xzr, xzr, [x1, #16]
   83438:	52800001 	mov	w1, #0x0                   	// #0
   8343c:	97fffe80 	bl	82e3c <atag_display+0x26c>
   83440:	f9413ab3 	ldr	x19, [x21, #624]
   83444:	b5fffb73 	cbnz	x19, 833b0 <sd_init+0x148>
   83448:	52803541 	mov	w1, #0x1aa                 	// #426
   8344c:	52a10040 	mov	w0, #0x8020000             	// #134348800
   83450:	97fffe7b 	bl	82e3c <atag_display+0x26c>
   83454:	f9413ab3 	ldr	x19, [x21, #624]
   83458:	b5fffad3 	cbnz	x19, 833b0 <sd_init+0x148>
   8345c:	52900016 	mov	w22, #0x8000                	// #32768
   83460:	72aa3ff6 	movk	w22, #0x51ff, lsl #16
   83464:	d28000d5 	mov	x21, #0x6                   	// #6
   83468:	d2800001 	mov	x1, #0x0                   	// #0
   8346c:	1400000f 	b	834a8 <sd_init+0x240>
   83470:	52803200 	mov	w0, #0x190                 	// #400
   83474:	97ffff34 	bl	83144 <atag_display+0x574>
   83478:	2a1603e1 	mov	w1, w22
   8347c:	52b52040 	mov	w0, #0xa9020000            	// #-1459486720
   83480:	97fffe6f 	bl	82e3c <atag_display+0x26c>
   83484:	93407c01 	sxtw	x1, w0
   83488:	36f80100 	tbz	w0, #31, 834a8 <sd_init+0x240>
   8348c:	7211201f 	tst	w0, #0xff8000
   83490:	540000c0 	b.eq	834a8 <sd_init+0x240>  // b.none
   83494:	36f000a0 	tbz	w0, #30, 834a8 <sd_init+0x240>
   83498:	f9413af3 	ldr	x19, [x23, #624]
   8349c:	d1000660 	sub	x0, x19, #0x1
   834a0:	b1000c1f 	cmn	x0, #0x3
   834a4:	54fff869 	b.ls	833b0 <sd_init+0x148>  // b.plast
   834a8:	b7f80381 	tbnz	x1, #63, 83518 <sd_init+0x2b0>
   834ac:	d10006b5 	sub	x21, x21, #0x1
   834b0:	b10006bf 	cmn	x21, #0x1
   834b4:	54fffde1 	b.ne	83470 <sd_init+0x208>  // b.any
   834b8:	12800013 	mov	w19, #0xffffffff            	// #-1
   834bc:	17ffffbd 	b	833b0 <sd_init+0x148>
   834c0:	52800020 	mov	w0, #0x1                   	// #1
   834c4:	97fffbed 	bl	82478 <wait_micros>
   834c8:	aa1603e0 	mov	x0, x22
   834cc:	aa0003f6 	mov	x22, x0
   834d0:	14000043 	b	835dc <sd_init+0x374>
   834d4:	d2800501 	mov	x1, #0x28                  	// #40
   834d8:	f2a7e601 	movk	x1, #0x3f30, lsl #16
   834dc:	b9400020 	ldr	w0, [x1]
   834e0:	321f0000 	orr	w0, w0, #0x2
   834e4:	b9000020 	str	w0, [x1]
   834e8:	91026281 	add	x1, x20, #0x98
   834ec:	f9400820 	ldr	x0, [x1, #16]
   834f0:	36c80080 	tbz	w0, #25, 83500 <sd_init+0x298>
   834f4:	b4000078 	cbz	x24, 83500 <sd_init+0x298>
   834f8:	927ff800 	and	x0, x0, #0xfffffffffffffffe
   834fc:	f9000820 	str	x0, [x1, #16]
   83500:	91026294 	add	x20, x20, #0x98
   83504:	92401ea1 	and	x1, x21, #0xff
   83508:	f9400a95 	ldr	x21, [x20, #16]
   8350c:	aa0102a1 	orr	x1, x21, x1
   83510:	f9000a81 	str	x1, [x20, #16]
   83514:	17ffffa7 	b	833b0 <sd_init+0x148>
   83518:	b4fffd15 	cbz	x21, 834b8 <sd_init+0x250>
   8351c:	f271203f 	tst	x1, #0xff8000
   83520:	54fff460 	b.eq	833ac <sd_init+0x144>  // b.none
   83524:	92620038 	and	x24, x1, #0x40000000
   83528:	531e7835 	ubfx	w21, w1, #30, #1
   8352c:	52a04020 	mov	w0, #0x2010000             	// #33619968
   83530:	52800001 	mov	w1, #0x0                   	// #0
   83534:	97fffe42 	bl	82e3c <atag_display+0x26c>
   83538:	52800001 	mov	w1, #0x0                   	// #0
   8353c:	52a06040 	mov	w0, #0x3020000             	// #50462720
   83540:	97fffe3f 	bl	82e3c <atag_display+0x26c>
   83544:	f9413af3 	ldr	x19, [x23, #624]
   83548:	93407c00 	sxtw	x0, w0
   8354c:	f9004e80 	str	x0, [x20, #152]
   83550:	b5fff313 	cbnz	x19, 833b0 <sd_init+0x148>
   83554:	528f0800 	mov	w0, #0x7840                	// #30784
   83558:	72a02fa0 	movk	w0, #0x17d, lsl #16
   8355c:	97fffea7 	bl	82ff8 <atag_display+0x428>
   83560:	2a0003f3 	mov	w19, w0
   83564:	35fff260 	cbnz	w0, 833b0 <sd_init+0x148>
   83568:	b9409a81 	ldr	w1, [x20, #152]
   8356c:	52a0e060 	mov	w0, #0x7030000             	// #117637120
   83570:	97fffe33 	bl	82e3c <atag_display+0x26c>
   83574:	f9413af3 	ldr	x19, [x23, #624]
   83578:	b5fff1d3 	cbnz	x19, 833b0 <sd_init+0x148>
   8357c:	52800040 	mov	w0, #0x2                   	// #2
   83580:	97fffdd5 	bl	82cd4 <atag_display+0x104>
   83584:	35fff9a0 	cbnz	w0, 834b8 <sd_init+0x250>
   83588:	d2800080 	mov	x0, #0x4                   	// #4
   8358c:	f2a7e600 	movk	x0, #0x3f30, lsl #16
   83590:	52800101 	mov	w1, #0x8                   	// #8
   83594:	72a00021 	movk	w1, #0x1, lsl #16
   83598:	b9000001 	str	w1, [x0]
   8359c:	52800001 	mov	w1, #0x0                   	// #0
   835a0:	52800200 	mov	w0, #0x10                  	// #16
   835a4:	72b66440 	movk	w0, #0xb322, lsl #16
   835a8:	97fffe25 	bl	82e3c <atag_display+0x26c>
   835ac:	f9413af3 	ldr	x19, [x23, #624]
   835b0:	b5fff013 	cbnz	x19, 833b0 <sd_init+0x148>
   835b4:	52800400 	mov	w0, #0x20                  	// #32
   835b8:	97fffdf1 	bl	82d7c <atag_display+0x1ac>
   835bc:	2a0003f3 	mov	w19, w0
   835c0:	35fff7c0 	cbnz	w0, 834b8 <sd_init+0x250>
   835c4:	91026299 	add	x25, x20, #0x98
   835c8:	d280049a 	mov	x26, #0x24                  	// #36
   835cc:	f2a7e61a 	movk	x26, #0x3f30, lsl #16
   835d0:	d280041b 	mov	x27, #0x20                  	// #32
   835d4:	f2a7e61b 	movk	x27, #0x3f30, lsl #16
   835d8:	d2800016 	mov	x22, #0x0                   	// #0
   835dc:	b9400340 	ldr	w0, [x26]
   835e0:	365ff700 	tbz	w0, #11, 834c0 <sd_init+0x258>
   835e4:	910006c0 	add	x0, x22, #0x1
   835e8:	b9400361 	ldr	w1, [x27]
   835ec:	8b160f36 	add	x22, x25, x22, lsl #3
   835f0:	f100081f 	cmp	x0, #0x2
   835f4:	2a0103e1 	mov	w1, w1
   835f8:	f9000ac1 	str	x1, [x22, #16]
   835fc:	54fff681 	b.ne	834cc <sd_init+0x264>  // b.any
   83600:	f9400b20 	ldr	x0, [x25, #16]
   83604:	3657f720 	tbz	w0, #10, 834e8 <sd_init+0x280>
   83608:	f9400321 	ldr	x1, [x25]
   8360c:	52b0c040 	mov	w0, #0x86020000            	// #-2046689280
   83610:	321f0021 	orr	w1, w1, #0x2
   83614:	97fffe0a 	bl	82e3c <atag_display+0x26c>
   83618:	f9413ae0 	ldr	x0, [x23, #624]
   8361c:	b4fff5c0 	cbz	x0, 834d4 <sd_init+0x26c>
   83620:	2a0003f3 	mov	w19, w0
   83624:	17ffff63 	b	833b0 <sd_init+0x148>

Disassembly of section .rodata:

0000000000083628 <__func__.2945>:
   83628:	6e72656b 	.word	0x6e72656b
   8362c:	6d5f6c65 	.word	0x6d5f6c65
   83630:	006e6961 	.word	0x006e6961
   83634:	00000000 	.word	0x00000000
   83638:	276e6143 	.word	0x276e6143
   8363c:	6e692074 	.word	0x6e692074
   83640:	61697469 	.word	0x61697469
   83644:	657a696c 	.word	0x657a696c
   83648:	20445320 	.word	0x20445320
   8364c:	64726163 	.word	0x64726163
   83650:	00000021 	.word	0x00000021
   83654:	00000000 	.word	0x00000000
   83658:	2f637273 	.word	0x2f637273
   8365c:	69616d6b 	.word	0x69616d6b
   83660:	00632e6e 	.word	0x00632e6e
   83664:	00000000 	.word	0x00000000

0000000000083668 <__func__.2975>:
   83668:	33746166 	.word	0x33746166
   8366c:	6e695f32 	.word	0x6e695f32
   83670:	00007469 	.word	0x00007469
   83674:	00000000 	.word	0x00000000

0000000000083678 <__func__.2950>:
   83678:	5f72626d 	.word	0x5f72626d
   8367c:	73726170 	.word	0x73726170
   83680:	00000065 	.word	0x00000065
   83684:	00000000 	.word	0x00000000

0000000000083688 <__func__.2966>:
   83688:	62706265 	.word	0x62706265
   8368c:	7261705f 	.word	0x7261705f
   83690:	00006573 	.word	0x00006573
   83694:	00000000 	.word	0x00000000

0000000000083698 <__func__.3010>:
   83698:	33746166 	.word	0x33746166
   8369c:	65725f32 	.word	0x65725f32
   836a0:	635f6461 	.word	0x635f6461
   836a4:	6e696168 	.word	0x6e696168
	...

00000000000836b0 <__func__.3022>:
   836b0:	33746166 	.word	0x33746166
   836b4:	69665f32 	.word	0x69665f32
   836b8:	655f646e 	.word	0x655f646e
   836bc:	7972746e 	.word	0x7972746e
	...

00000000000836c8 <__func__.3056>:
   836c8:	33746166 	.word	0x33746166
   836cc:	706f5f32 	.word	0x706f5f32
   836d0:	00006e65 	.word	0x00006e65
   836d4:	00000000 	.word	0x00000000
   836d8:	73756c63 	.word	0x73756c63
   836dc:	5f726574 	.word	0x5f726574
   836e0:	68676968 	.word	0x68676968
   836e4:	25203d20 	.word	0x25203d20
   836e8:	00000a64 	.word	0x00000a64
   836ec:	00000000 	.word	0x00000000
   836f0:	73756c63 	.word	0x73756c63
   836f4:	5f726574 	.word	0x5f726574
   836f8:	20776f6c 	.word	0x20776f6c
   836fc:	6425203d 	.word	0x6425203d
   83700:	0000000a 	.word	0x0000000a
   83704:	00000000 	.word	0x00000000
   83708:	6f727245 	.word	0x6f727245
   8370c:	6e692072 	.word	0x6e692072
   83710:	6c6c6120 	.word	0x6c6c6120
   83714:	7461636f 	.word	0x7461636f
   83718:	20676e69 	.word	0x20676e69
   8371c:	6f6d656d 	.word	0x6f6d656d
   83720:	66207972 	.word	0x66207972
   83724:	4620726f 	.word	0x4620726f
   83728:	32335441 	.word	0x32335441
   8372c:	73797320 	.word	0x73797320
   83730:	216d6574 	.word	0x216d6574
   83734:	0000000a 	.word	0x0000000a
   83738:	2f637273 	.word	0x2f637273
   8373c:	33746166 	.word	0x33746166
   83740:	00632e32 	.word	0x00632e32
   83744:	00000000 	.word	0x00000000
   83748:	276e6143 	.word	0x276e6143
   8374c:	65722074 	.word	0x65722074
   83750:	4d206461 	.word	0x4d206461
   83754:	66205242 	.word	0x66205242
   83758:	206d6f72 	.word	0x206d6f72
   8375c:	61636473 	.word	0x61636473
   83760:	202e6472 	.word	0x202e6472
   83764:	6f727245 	.word	0x6f727245
   83768:	6f632072 	.word	0x6f632072
   8376c:	25206564 	.word	0x25206564
   83770:	000a2e64 	.word	0x000a2e64
   83774:	00000000 	.word	0x00000000
   83778:	46206f4e 	.word	0x46206f4e
   8377c:	32335441 	.word	0x32335441
   83780:	72617020 	.word	0x72617020
   83784:	69746974 	.word	0x69746974
   83788:	77206e6f 	.word	0x77206e6f
   8378c:	66207361 	.word	0x66207361
   83790:	646e756f 	.word	0x646e756f
   83794:	00000a21 	.word	0x00000a21
   83798:	276e6143 	.word	0x276e6143
   8379c:	65722074 	.word	0x65722074
   837a0:	61206461 	.word	0x61206461
   837a4:	6420796e 	.word	0x6420796e
   837a8:	20617461 	.word	0x20617461
   837ac:	6d6f7266 	.word	0x6d6f7266
   837b0:	63657320 	.word	0x63657320
   837b4:	20726f74 	.word	0x20726f74
   837b8:	202e6425 	.word	0x202e6425
   837bc:	6f727245 	.word	0x6f727245
   837c0:	6f632072 	.word	0x6f632072
   837c4:	25206564 	.word	0x25206564
   837c8:	00000a64 	.word	0x00000a64
   837cc:	00000000 	.word	0x00000000
   837d0:	62206f4e 	.word	0x62206f4e
   837d4:	20746f6f 	.word	0x20746f6f
   837d8:	74726170 	.word	0x74726170
   837dc:	6f697469 	.word	0x6f697469
   837e0:	6177206e 	.word	0x6177206e
   837e4:	6f662073 	.word	0x6f662073
   837e8:	21646e75 	.word	0x21646e75
   837ec:	0000000a 	.word	0x0000000a
   837f0:	276e6143 	.word	0x276e6143
   837f4:	65722074 	.word	0x65722074
   837f8:	61206461 	.word	0x61206461
   837fc:	6420796e 	.word	0x6420796e
   83800:	63657269 	.word	0x63657269
   83804:	79726f74 	.word	0x79726f74
   83808:	746e6520 	.word	0x746e6520
   8380c:	61207972 	.word	0x61207972
   83810:	65732074 	.word	0x65732074
   83814:	726f7463 	.word	0x726f7463
   83818:	2e642520 	.word	0x2e642520
   8381c:	0000000a 	.word	0x0000000a
   83820:	61746f54 	.word	0x61746f54
   83824:	6425206c 	.word	0x6425206c
   83828:	74796220 	.word	0x74796220
   8382c:	64207365 	.word	0x64207365
   83830:	20617461 	.word	0x20617461
   83834:	64616572 	.word	0x64616572
   83838:	6f726620 	.word	0x6f726620
   8383c:	6c63206d 	.word	0x6c63206d
   83840:	65747375 	.word	0x65747375
   83844:	64252072 	.word	0x64252072
   83848:	00000a2e 	.word	0x00000a2e
   8384c:	00000000 	.word	0x00000000
   83850:	6e756f46 	.word	0x6e756f46
   83854:	69642064 	.word	0x69642064
   83858:	74636572 	.word	0x74636572
   8385c:	2079726f 	.word	0x2079726f
   83860:	22732522 	.word	0x22732522
   83864:	0000000a 	.word	0x0000000a
   83868:	646e6946 	.word	0x646e6946
   8386c:	73252220 	.word	0x73252220
   83870:	6e652022 	.word	0x6e652022
   83874:	20797274 	.word	0x20797274
   83878:	30207461 	.word	0x30207461
   8387c:	0a782578 	.word	0x0a782578
	...
   83888:	68746170 	.word	0x68746170
   8388c:	20736920 	.word	0x20736920
   83890:	4c4c554e 	.word	0x4c4c554e
   83894:	00000000 	.word	0x00000000
   83898:	6c727473 	.word	0x6c727473
   8389c:	70286e65 	.word	0x70286e65
   838a0:	29687461 	.word	0x29687461
   838a4:	25203d20 	.word	0x25203d20
   838a8:	00000a64 	.word	0x00000a64
   838ac:	00000000 	.word	0x00000000
   838b0:	206e7552 	.word	0x206e7552
   838b4:	2074756f 	.word	0x2074756f
   838b8:	6d20666f 	.word	0x6d20666f
   838bc:	726f6d65 	.word	0x726f6d65
   838c0:	000a2179 	.word	0x000a2179
   838c4:	00000000 	.word	0x00000000
   838c8:	0000002f 	.word	0x0000002f
   838cc:	00000000 	.word	0x00000000
   838d0:	69647026 	.word	0x69647026
   838d4:	6e655f72 	.word	0x6e655f72
   838d8:	20797274 	.word	0x20797274
   838dc:	7830203d 	.word	0x7830203d
   838e0:	00007825 	.word	0x00007825
   838e4:	00000000 	.word	0x00000000
   838e8:	20746f47 	.word	0x20746f47
   838ec:	7478656e 	.word	0x7478656e
   838f0:	72696420 	.word	0x72696420
   838f4:	746e655f 	.word	0x746e655f
   838f8:	70207972 	.word	0x70207972
   838fc:	5f726964 	.word	0x5f726964
   83900:	72746e65 	.word	0x72746e65
   83904:	203d2079 	.word	0x203d2079
   83908:	78257830 	.word	0x78257830
   8390c:	0000000a 	.word	0x0000000a
   83910:	746f6f52 	.word	0x746f6f52
   83914:	756c6320 	.word	0x756c6320
   83918:	72657473 	.word	0x72657473
   8391c:	61657220 	.word	0x61657220
   83920:	000a2e64 	.word	0x000a2e64
   83924:	00000000 	.word	0x00000000
   83928:	73756c43 	.word	0x73756c43
   8392c:	20726574 	.word	0x20726574
   83930:	72206425 	.word	0x72206425
   83934:	2e646165 	.word	0x2e646165
   83938:	0000000a 	.word	0x0000000a
   8393c:	00000000 	.word	0x00000000
   83940:	646e6946 	.word	0x646e6946
   83944:	20676e69 	.word	0x20676e69
   83948:	2d627573 	.word	0x2d627573
   8394c:	65726964 	.word	0x65726964
   83950:	726f7463 	.word	0x726f7463
   83954:	25222079 	.word	0x25222079
   83958:	0a2e2273 	.word	0x0a2e2273
   8395c:	00000000 	.word	0x00000000
   83960:	68746170 	.word	0x68746170
   83964:	20732520 	.word	0x20732520
   83968:	6e65706f 	.word	0x6e65706f
   8396c:	61206465 	.word	0x61206465
   83970:	7320646e 	.word	0x7320646e
   83974:	64657661 	.word	0x64657661
   83978:	20746120 	.word	0x20746120
   8397c:	72646461 	.word	0x72646461
   83980:	20737365 	.word	0x20737365
   83984:	78257830 	.word	0x78257830
   83988:	00000a2e 	.word	0x00000a2e
   8398c:	00000000 	.word	0x00000000
   83990:	6c616544 	.word	0x6c616544
   83994:	69636f6c 	.word	0x69636f6c
   83998:	002e676e 	.word	0x002e676e
   8399c:	00000000 	.word	0x00000000
   839a0:	20465457 	.word	0x20465457
   839a4:	45524548 	.word	0x45524548
   839a8:	21212121 	.word	0x21212121
   839ac:	21212121 	.word	0x21212121
   839b0:	00000a21 	.word	0x00000a21
   839b4:	00000000 	.word	0x00000000
   839b8:	72696470 	.word	0x72696470
   839bc:	746e655f 	.word	0x746e655f
   839c0:	3d207972 	.word	0x3d207972
   839c4:	25783020 	.word	0x25783020
   839c8:	00000a78 	.word	0x00000a78
   839cc:	00000000 	.word	0x00000000
   839d0:	75746552 	.word	0x75746552
   839d4:	70206e72 	.word	0x70206e72
   839d8:	656c6966 	.word	0x656c6966
   839dc:	30203d20 	.word	0x30203d20
   839e0:	0a782578 	.word	0x0a782578
   839e4:	00000000 	.word	0x00000000
   839e8:	6c696670 	.word	0x6c696670
   839ec:	203d2065 	.word	0x203d2065
   839f0:	78257830 	.word	0x78257830
   839f4:	0000000a 	.word	0x0000000a
   839f8:	68746170 	.word	0x68746170
   839fc:	20732520 	.word	0x20732520
   83a00:	6f207369 	.word	0x6f207369
   83a04:	6e6e6570 	.word	0x6e6e6570
   83a08:	20676e69 	.word	0x20676e69
   83a0c:	20646e61 	.word	0x20646e61
   83a10:	69766173 	.word	0x69766173
   83a14:	6120676e 	.word	0x6120676e
   83a18:	64612074 	.word	0x64612074
   83a1c:	73657264 	.word	0x73657264
   83a20:	78302073 	.word	0x78302073
   83a24:	0a2e7825 	.word	0x0a2e7825
	...
   83a30:	696b614d 	.word	0x696b614d
   83a34:	7220676e 	.word	0x7220676e
   83a38:	20746f6f 	.word	0x20746f6f
   83a3c:	656c6966 	.word	0x656c6966
   83a40:	72747320 	.word	0x72747320
   83a44:	2e746375 	.word	0x2e746375
	...
   83a50:	6f6c6c41 	.word	0x6f6c6c41
   83a54:	69746163 	.word	0x69746163
   83a58:	6d20676e 	.word	0x6d20676e
   83a5c:	726f6d65 	.word	0x726f6d65
   83a60:	6f662079 	.word	0x6f662079
   83a64:	69662072 	.word	0x69662072
   83a68:	0a2e656c 	.word	0x0a2e656c
   83a6c:	00000000 	.word	0x00000000
   83a70:	696b614d 	.word	0x696b614d
   83a74:	2520676e 	.word	0x2520676e
   83a78:	69662073 	.word	0x69662073
   83a7c:	7320656c 	.word	0x7320656c
   83a80:	63757274 	.word	0x63757274
   83a84:	000a2e74 	.word	0x000a2e74
   83a88:	656c6966 	.word	0x656c6966
   83a8c:	72747320 	.word	0x72747320
   83a90:	20746375 	.word	0x20746375
   83a94:	656b616d 	.word	0x656b616d
   83a98:	6e6f6420 	.word	0x6e6f6420
   83a9c:	000a2e65 	.word	0x000a2e65

0000000000083aa0 <__func__.2846>:
   83aa0:	725f6463 	.word	0x725f6463
   83aa4:	5f646165 	.word	0x5f646165
   83aa8:	74636573 	.word	0x74636573
   83aac:	0000726f 	.word	0x0000726f
   83ab0:	6d206f4e 	.word	0x6d206f4e
   83ab4:	726f6d65 	.word	0x726f6d65
   83ab8:	76612079 	.word	0x76612079
   83abc:	616c6961 	.word	0x616c6961
   83ac0:	20656c62 	.word	0x20656c62
   83ac4:	20726f66 	.word	0x20726f66
   83ac8:	63616362 	.word	0x63616362
   83acc:	0a2e6568 	.word	0x0a2e6568
	...
   83ad8:	2f637273 	.word	0x2f637273
   83adc:	69766564 	.word	0x69766564
   83ae0:	632e6563 	.word	0x632e6563
   83ae4:	00000000 	.word	0x00000000
   83ae8:	276e6143 	.word	0x276e6143
   83aec:	65722074 	.word	0x65722074
   83af0:	64206461 	.word	0x64206461
   83af4:	20617461 	.word	0x20617461
   83af8:	6d6f7266 	.word	0x6d6f7266
   83afc:	63657320 	.word	0x63657320
   83b00:	20726f74 	.word	0x20726f74
   83b04:	0a2e6425 	.word	0x0a2e6425
	...

0000000000083b10 <__func__.2808>:
   83b10:	5f6d656d 	.word	0x5f6d656d
   83b14:	74696e69 	.word	0x74696e69
	...

0000000000083b20 <__func__.2838>:
   83b20:	65657266 	.word	0x65657266
   83b24:	00000000 	.word	0x00000000
   83b28:	6f6d654d 	.word	0x6f6d654d
   83b2c:	6d207972 	.word	0x6d207972
   83b30:	65207061 	.word	0x65207061
   83b34:	726f7272 	.word	0x726f7272
   83b38:	6d5f0a21 	.word	0x6d5f0a21
   83b3c:	726f6d65 	.word	0x726f6d65
   83b40:	616d5f79 	.word	0x616d5f79
   83b44:	74732e70 	.word	0x74732e70
   83b48:	20747261 	.word	0x20747261
   83b4c:	7825203d 	.word	0x7825203d
   83b50:	6d5f202c 	.word	0x6d5f202c
   83b54:	726f6d65 	.word	0x726f6d65
   83b58:	616d5f79 	.word	0x616d5f79
   83b5c:	6e652e70 	.word	0x6e652e70
   83b60:	203d2064 	.word	0x203d2064
   83b64:	000a7825 	.word	0x000a7825
   83b68:	2f637273 	.word	0x2f637273
   83b6c:	6c6c616d 	.word	0x6c6c616d
   83b70:	632e636f 	.word	0x632e636f
   83b74:	00000000 	.word	0x00000000
   83b78:	276e6143 	.word	0x276e6143
   83b7c:	65662074 	.word	0x65662074
   83b80:	20686374 	.word	0x20686374
   83b84:	47415441 	.word	0x47415441
   83b88:	4d454d5f 	.word	0x4d454d5f
   83b8c:	67617420 	.word	0x67617420
   83b90:	00000a21 	.word	0x00000a21
   83b94:	00000000 	.word	0x00000000
   83b98:	63746546 	.word	0x63746546
   83b9c:	676e6968 	.word	0x676e6968
   83ba0:	68637020 	.word	0x68637020
   83ba4:	206b6375 	.word	0x206b6375
   83ba8:	7830203d 	.word	0x7830203d
   83bac:	000a7825 	.word	0x000a7825
   83bb0:	65657246 	.word	0x65657246
   83bb4:	63757320 	.word	0x63757320
   83bb8:	73736563 	.word	0x73736563
   83bbc:	00000a2e 	.word	0x00000a2e
	...

0000000000083fc0 <__func__.3102>:
   83fc0:	0000736c 	.word	0x0000736c
   83fc4:	00000000 	.word	0x00000000
   83fc8:	6d6d6f63 	.word	0x6d6d6f63
   83fcc:	20646e61 	.word	0x20646e61
   83fd0:	74207369 	.word	0x74207369
   83fd4:	6c206f6f 	.word	0x6c206f6f
   83fd8:	0a676e6f 	.word	0x0a676e6f
   83fdc:	00000000 	.word	0x00000000
   83fe0:	00000020 	.word	0x00000020
   83fe4:	00000000 	.word	0x00000000
   83fe8:	206f6f74 	.word	0x206f6f74
   83fec:	796e616d 	.word	0x796e616d
   83ff0:	67726120 	.word	0x67726120
   83ff4:	6e656d75 	.word	0x6e656d75
   83ff8:	000a7374 	.word	0x000a7374
   83ffc:	00000000 	.word	0x00000000
   84000:	00007325 	.word	0x00007325
   84004:	00000000 	.word	0x00000000
   84008:	69206f6e 	.word	0x69206f6e
   8400c:	7475706e 	.word	0x7475706e
   84010:	6c696620 	.word	0x6c696620
   84014:	00000a65 	.word	0x00000a65
   84018:	73206f6e 	.word	0x73206f6e
   8401c:	20686375 	.word	0x20686375
   84020:	656c6966 	.word	0x656c6966
   84024:	20726f20 	.word	0x20726f20
   84028:	65726964 	.word	0x65726964
   8402c:	726f7463 	.word	0x726f7463
   84030:	25203a79 	.word	0x25203a79
   84034:	00000a73 	.word	0x00000a73
   84038:	73277469 	.word	0x73277469
   8403c:	64206120 	.word	0x64206120
   84040:	63657269 	.word	0x63657269
   84044:	79726f74 	.word	0x79726f74
   84048:	7325203a 	.word	0x7325203a
   8404c:	0000000a 	.word	0x0000000a
   84050:	20746f6e 	.word	0x20746f6e
   84054:	69642061 	.word	0x69642061
   84058:	74636572 	.word	0x74636572
   8405c:	3a79726f 	.word	0x3a79726f
   84060:	0a732520 	.word	0x0a732520
   84064:	00000000 	.word	0x00000000
   84068:	00002e2e 	.word	0x00002e2e
   8406c:	00000000 	.word	0x00000000
   84070:	0000002e 	.word	0x0000002e
   84074:	00000000 	.word	0x00000000
   84078:	0000612d 	.word	0x0000612d
   8407c:	00000000 	.word	0x00000000
   84080:	73206f6e 	.word	0x73206f6e
   84084:	20686375 	.word	0x20686375
   84088:	656c6966 	.word	0x656c6966
   8408c:	20666f20 	.word	0x20666f20
   84090:	65726964 	.word	0x65726964
   84094:	726f7463 	.word	0x726f7463
   84098:	25203a79 	.word	0x25203a79
   8409c:	00000a73 	.word	0x00000a73
   840a0:	65746544 	.word	0x65746544
   840a4:	6e696d72 	.word	0x6e696d72
   840a8:	69662065 	.word	0x69662065
   840ac:	6920656c 	.word	0x6920656c
   840b0:	69642073 	.word	0x69642073
   840b4:	74636572 	.word	0x74636572
   840b8:	2079726f 	.word	0x2079726f
   840bc:	6620726f 	.word	0x6620726f
   840c0:	2e656c69 	.word	0x2e656c69
   840c4:	00000000 	.word	0x00000000
   840c8:	69207469 	.word	0x69207469
   840cc:	6f6e2073 	.word	0x6f6e2073
   840d0:	20612074 	.word	0x20612074
   840d4:	65726964 	.word	0x65726964
   840d8:	726f7463 	.word	0x726f7463
   840dc:	25203a79 	.word	0x25203a79
   840e0:	00000a73 	.word	0x00000a73
   840e4:	00000000 	.word	0x00000000
   840e8:	64616552 	.word	0x64616552
   840ec:	20676e69 	.word	0x20676e69
   840f0:	73756c63 	.word	0x73756c63
   840f4:	20726574 	.word	0x20726574
   840f8:	0a2e6425 	.word	0x0a2e6425
   840fc:	00000000 	.word	0x00000000
   84100:	64206425 	.word	0x64206425
   84104:	63657269 	.word	0x63657269
   84108:	79726f74 	.word	0x79726f74
   8410c:	746e6520 	.word	0x746e6520
   84110:	73656972 	.word	0x73656972
   84114:	61657220 	.word	0x61657220
   84118:	000a2e64 	.word	0x000a2e64
   8411c:	00000000 	.word	0x00000000
   84120:	25207325 	.word	0x25207325
   84124:	64252f64 	.word	0x64252f64
   84128:	0964252f 	.word	0x0964252f
   8412c:	253a6425 	.word	0x253a6425
   84130:	64253a64 	.word	0x64253a64
   84134:	2f642509 	.word	0x2f642509
   84138:	252f6425 	.word	0x252f6425
   8413c:	64250964 	.word	0x64250964
   84140:	3a64253a 	.word	0x3a64253a
   84144:	25096425 	.word	0x25096425
   84148:	73250964 	.word	0x73250964
   8414c:	0000000a 	.word	0x0000000a
   84150:	002d2d2d 	.word	0x002d2d2d
   84154:	00000000 	.word	0x00000000
   84158:	e28896e2 	.word	0xe28896e2
   8415c:	96e28896 	.word	0x96e28896
   84160:	8896e288 	.word	0x8896e288
   84164:	e28896e2 	.word	0xe28896e2
   84168:	96e28896 	.word	0x96e28896
   8416c:	9795e288 	.word	0x9795e288
   84170:	8896e220 	.word	0x8896e220
   84174:	e28896e2 	.word	0xe28896e2
   84178:	20209795 	.word	0x20209795
   8417c:	8896e220 	.word	0x8896e220
   84180:	e28896e2 	.word	0xe28896e2
   84184:	e2209795 	.word	0xe2209795
   84188:	96e28896 	.word	0x96e28896
   8418c:	8896e288 	.word	0x8896e288
   84190:	e28896e2 	.word	0xe28896e2
   84194:	96e28896 	.word	0x96e28896
   84198:	9795e288 	.word	0x9795e288
   8419c:	e28896e2 	.word	0xe28896e2
   841a0:	96e28896 	.word	0x96e28896
   841a4:	8896e288 	.word	0x8896e288
   841a8:	e28896e2 	.word	0xe28896e2
   841ac:	96e28896 	.word	0x96e28896
   841b0:	8896e288 	.word	0x8896e288
   841b4:	209795e2 	.word	0x209795e2
   841b8:	e28896e2 	.word	0xe28896e2
   841bc:	95e28896 	.word	0x95e28896
   841c0:	00000a97 	.word	0x00000a97
   841c4:	00000000 	.word	0x00000000
   841c8:	e28896e2 	.word	0xe28896e2
   841cc:	95e28896 	.word	0x95e28896
   841d0:	9095e294 	.word	0x9095e294
   841d4:	e29095e2 	.word	0xe29095e2
   841d8:	96e29095 	.word	0x96e29095
   841dc:	8896e288 	.word	0x8896e288
   841e0:	e29795e2 	.word	0xe29795e2
   841e4:	96e28896 	.word	0x96e28896
   841e8:	9195e288 	.word	0x9195e288
   841ec:	e2202020 	.word	0xe2202020
   841f0:	96e28896 	.word	0x96e28896
   841f4:	9195e288 	.word	0x9195e288
   841f8:	e28896e2 	.word	0xe28896e2
   841fc:	95e28896 	.word	0x95e28896
   84200:	9095e294 	.word	0x9095e294
   84204:	e29095e2 	.word	0xe29095e2
   84208:	95e29095 	.word	0x95e29095
   8420c:	9d95e290 	.word	0x9d95e290
   84210:	e29a95e2 	.word	0xe29a95e2
   84214:	95e29095 	.word	0x95e29095
   84218:	8896e290 	.word	0x8896e290
   8421c:	e28896e2 	.word	0xe28896e2
   84220:	95e29495 	.word	0x95e29495
   84224:	9095e290 	.word	0x9095e290
   84228:	209d95e2 	.word	0x209d95e2
   8422c:	e28896e2 	.word	0xe28896e2
   84230:	95e28896 	.word	0x95e28896
   84234:	00000a91 	.word	0x00000a91
   84238:	e28896e2 	.word	0xe28896e2
   8423c:	96e28896 	.word	0x96e28896
   84240:	8896e288 	.word	0x8896e288
   84244:	e28896e2 	.word	0xe28896e2
   84248:	96e28896 	.word	0x96e28896
   8424c:	9495e288 	.word	0x9495e288
   84250:	e29d95e2 	.word	0xe29d95e2
   84254:	96e29a95 	.word	0x96e29a95
   84258:	8896e288 	.word	0x8896e288
   8425c:	209795e2 	.word	0x209795e2
   84260:	e28896e2 	.word	0xe28896e2
   84264:	95e28896 	.word	0x95e28896
   84268:	9d95e294 	.word	0x9d95e294
   8426c:	e29a95e2 	.word	0xe29a95e2
   84270:	96e28896 	.word	0x96e28896
   84274:	8896e288 	.word	0x8896e288
   84278:	e28896e2 	.word	0xe28896e2
   8427c:	96e28896 	.word	0x96e28896
   84280:	9795e288 	.word	0x9795e288
   84284:	e2202020 	.word	0xe2202020
   84288:	96e28896 	.word	0x96e28896
   8428c:	9195e288 	.word	0x9195e288
   84290:	20202020 	.word	0x20202020
   84294:	e28896e2 	.word	0xe28896e2
   84298:	95e28896 	.word	0x95e28896
   8429c:	00000a91 	.word	0x00000a91
   842a0:	e28896e2 	.word	0xe28896e2
   842a4:	95e28896 	.word	0x95e28896
   842a8:	9095e294 	.word	0x9095e294
   842ac:	e29095e2 	.word	0xe29095e2
   842b0:	96e29095 	.word	0x96e29095
   842b4:	8896e288 	.word	0x8896e288
   842b8:	209795e2 	.word	0x209795e2
   842bc:	e29a95e2 	.word	0xe29a95e2
   842c0:	96e28896 	.word	0x96e28896
   842c4:	8896e288 	.word	0x8896e288
   842c8:	e28896e2 	.word	0xe28896e2
   842cc:	95e29495 	.word	0x95e29495
   842d0:	e220209d 	.word	0xe220209d
   842d4:	95e29a95 	.word	0x95e29a95
   842d8:	9095e290 	.word	0x9095e290
   842dc:	e29095e2 	.word	0xe29095e2
   842e0:	96e29095 	.word	0x96e29095
   842e4:	8896e288 	.word	0x8896e288
   842e8:	209795e2 	.word	0x209795e2
   842ec:	8896e220 	.word	0x8896e220
   842f0:	e28896e2 	.word	0xe28896e2
   842f4:	20209195 	.word	0x20209195
   842f8:	96e22020 	.word	0x96e22020
   842fc:	8896e288 	.word	0x8896e288
   84300:	0a9195e2 	.word	0x0a9195e2
   84304:	00000000 	.word	0x00000000
   84308:	e28896e2 	.word	0xe28896e2
   8430c:	96e28896 	.word	0x96e28896
   84310:	8896e288 	.word	0x8896e288
   84314:	e28896e2 	.word	0xe28896e2
   84318:	96e28896 	.word	0x96e28896
   8431c:	9495e288 	.word	0x9495e288
   84320:	209d95e2 	.word	0x209d95e2
   84324:	9a95e220 	.word	0x9a95e220
   84328:	e28896e2 	.word	0xe28896e2
   8432c:	95e28896 	.word	0x95e28896
   84330:	9d95e294 	.word	0x9d95e294
   84334:	e2202020 	.word	0xe2202020
   84338:	96e28896 	.word	0x96e28896
   8433c:	8896e288 	.word	0x8896e288
   84340:	e28896e2 	.word	0xe28896e2
   84344:	96e28896 	.word	0x96e28896
   84348:	9495e288 	.word	0x9495e288
   8434c:	209d95e2 	.word	0x209d95e2
   84350:	8896e220 	.word	0x8896e220
   84354:	e28896e2 	.word	0xe28896e2
   84358:	20209195 	.word	0x20209195
   8435c:	96e22020 	.word	0x96e22020
   84360:	8896e288 	.word	0x8896e288
   84364:	e28896e2 	.word	0xe28896e2
   84368:	96e28896 	.word	0x96e28896
   8436c:	8896e288 	.word	0x8896e288
   84370:	e28896e2 	.word	0xe28896e2
   84374:	000a9795 	.word	0x000a9795
   84378:	e29a95e2 	.word	0xe29a95e2
   8437c:	95e29095 	.word	0x95e29095
   84380:	9095e290 	.word	0x9095e290
   84384:	e29095e2 	.word	0xe29095e2
   84388:	95e29095 	.word	0x95e29095
   8438c:	9d95e290 	.word	0x9d95e290
   84390:	20202020 	.word	0x20202020
   84394:	e29a95e2 	.word	0xe29a95e2
   84398:	95e29095 	.word	0x95e29095
   8439c:	2020209d 	.word	0x2020209d
   843a0:	9a95e220 	.word	0x9a95e220
   843a4:	e29095e2 	.word	0xe29095e2
   843a8:	95e29095 	.word	0x95e29095
   843ac:	9095e290 	.word	0x9095e290
   843b0:	e29095e2 	.word	0xe29095e2
   843b4:	20209d95 	.word	0x20209d95
   843b8:	9a95e220 	.word	0x9a95e220
   843bc:	e29095e2 	.word	0xe29095e2
   843c0:	20209d95 	.word	0x20209d95
   843c4:	95e22020 	.word	0x95e22020
   843c8:	9095e29a 	.word	0x9095e29a
   843cc:	e29095e2 	.word	0xe29095e2
   843d0:	95e29095 	.word	0x95e29095
   843d4:	9095e290 	.word	0x9095e290
   843d8:	e29095e2 	.word	0xe29095e2
   843dc:	000a9d95 	.word	0x000a9d95
   843e0:	e28896e2 	.word	0xe28896e2
   843e4:	96e28896 	.word	0x96e28896
   843e8:	8896e288 	.word	0x8896e288
   843ec:	e28896e2 	.word	0xe28896e2
   843f0:	96e28896 	.word	0x96e28896
   843f4:	9795e288 	.word	0x9795e288
   843f8:	8896e220 	.word	0x8896e220
   843fc:	e28896e2 	.word	0xe28896e2
   84400:	96e28896 	.word	0x96e28896
   84404:	9795e288 	.word	0x9795e288
   84408:	e28896e2 	.word	0xe28896e2
   8440c:	95e28896 	.word	0x95e28896
   84410:	20202097 	.word	0x20202097
   84414:	e28896e2 	.word	0xe28896e2
   84418:	95e28896 	.word	0x95e28896
   8441c:	8896e297 	.word	0x8896e297
   84420:	e28896e2 	.word	0xe28896e2
   84424:	96e28896 	.word	0x96e28896
   84428:	9795e288 	.word	0x9795e288
   8442c:	8896e220 	.word	0x8896e220
   84430:	e28896e2 	.word	0xe28896e2
   84434:	96e28896 	.word	0x96e28896
   84438:	8896e288 	.word	0x8896e288
   8443c:	e28896e2 	.word	0xe28896e2
   84440:	96e29795 	.word	0x96e29795
   84444:	8896e288 	.word	0x8896e288
   84448:	e28896e2 	.word	0xe28896e2
   8444c:	96e28896 	.word	0x96e28896
   84450:	8896e288 	.word	0x8896e288
   84454:	e28896e2 	.word	0xe28896e2
   84458:	95e28896 	.word	0x95e28896
   8445c:	96e22097 	.word	0x96e22097
   84460:	8896e288 	.word	0x8896e288
   84464:	e28896e2 	.word	0xe28896e2
   84468:	95e28896 	.word	0x95e28896
   8446c:	e2202097 	.word	0xe2202097
   84470:	96e28896 	.word	0x96e28896
   84474:	9795e288 	.word	0x9795e288
   84478:	e2202020 	.word	0xe2202020
   8447c:	96e28896 	.word	0x96e28896
   84480:	9795e288 	.word	0x9795e288
   84484:	96e22020 	.word	0x96e22020
   84488:	8896e288 	.word	0x8896e288
   8448c:	e28896e2 	.word	0xe28896e2
   84490:	95e28896 	.word	0x95e28896
   84494:	e2202097 	.word	0xe2202097
   84498:	96e28896 	.word	0x96e28896
   8449c:	9795e288 	.word	0x9795e288
   844a0:	0000000a 	.word	0x0000000a
   844a4:	00000000 	.word	0x00000000
   844a8:	e28896e2 	.word	0xe28896e2
   844ac:	95e28896 	.word	0x95e28896
   844b0:	9095e294 	.word	0x9095e294
   844b4:	e29095e2 	.word	0xe29095e2
   844b8:	96e29095 	.word	0x96e29095
   844bc:	8896e288 	.word	0x8896e288
   844c0:	e29795e2 	.word	0xe29795e2
   844c4:	96e29a95 	.word	0x96e29a95
   844c8:	8896e288 	.word	0x8896e288
   844cc:	e29495e2 	.word	0xe29495e2
   844d0:	96e29d95 	.word	0x96e29d95
   844d4:	8896e288 	.word	0x8896e288
   844d8:	209195e2 	.word	0x209195e2
   844dc:	96e22020 	.word	0x96e22020
   844e0:	8896e288 	.word	0x8896e288
   844e4:	e29195e2 	.word	0xe29195e2
   844e8:	96e29a95 	.word	0x96e29a95
   844ec:	8896e288 	.word	0x8896e288
   844f0:	e29495e2 	.word	0xe29495e2
   844f4:	96e29d95 	.word	0x96e29d95
   844f8:	8896e288 	.word	0x8896e288
   844fc:	e29495e2 	.word	0xe29495e2
   84500:	95e29095 	.word	0x95e29095
   84504:	9095e290 	.word	0x9095e290
   84508:	e29095e2 	.word	0xe29095e2
   8450c:	95e29d95 	.word	0x95e29d95
   84510:	9095e29a 	.word	0x9095e29a
   84514:	e29095e2 	.word	0xe29095e2
   84518:	96e28896 	.word	0x96e28896
   8451c:	9495e288 	.word	0x9495e288
   84520:	e29095e2 	.word	0xe29095e2
   84524:	95e29095 	.word	0x95e29095
   84528:	8896e29d 	.word	0x8896e29d
   8452c:	e28896e2 	.word	0xe28896e2
   84530:	95e29495 	.word	0x95e29495
   84534:	8896e290 	.word	0x8896e290
   84538:	e28896e2 	.word	0xe28896e2
   8453c:	e2209795 	.word	0xe2209795
   84540:	96e28896 	.word	0x96e28896
   84544:	9195e288 	.word	0x9195e288
   84548:	e2202020 	.word	0xe2202020
   8454c:	96e28896 	.word	0x96e28896
   84550:	9195e288 	.word	0x9195e288
   84554:	8896e220 	.word	0x8896e220
   84558:	e28896e2 	.word	0xe28896e2
   8455c:	95e29495 	.word	0x95e29495
   84560:	8896e290 	.word	0x8896e290
   84564:	e28896e2 	.word	0xe28896e2
   84568:	e2209795 	.word	0xe2209795
   8456c:	96e28896 	.word	0x96e28896
   84570:	9195e288 	.word	0x9195e288
   84574:	0000000a 	.word	0x0000000a
   84578:	e28896e2 	.word	0xe28896e2
   8457c:	96e28896 	.word	0x96e28896
   84580:	8896e288 	.word	0x8896e288
   84584:	e28896e2 	.word	0xe28896e2
   84588:	96e28896 	.word	0x96e28896
   8458c:	9495e288 	.word	0x9495e288
   84590:	209d95e2 	.word	0x209d95e2
   84594:	e28896e2 	.word	0xe28896e2
   84598:	95e28896 	.word	0x95e28896
   8459c:	95e22091 	.word	0x95e22091
   845a0:	8896e29a 	.word	0x8896e29a
   845a4:	e28896e2 	.word	0xe28896e2
   845a8:	e2209795 	.word	0xe2209795
   845ac:	96e28896 	.word	0x96e28896
   845b0:	9495e288 	.word	0x9495e288
   845b4:	209d95e2 	.word	0x209d95e2
   845b8:	e28896e2 	.word	0xe28896e2
   845bc:	95e28896 	.word	0x95e28896
   845c0:	95e22091 	.word	0x95e22091
   845c4:	8896e29a 	.word	0x8896e29a
   845c8:	e28896e2 	.word	0xe28896e2
   845cc:	96e28896 	.word	0x96e28896
   845d0:	8896e288 	.word	0x8896e288
   845d4:	e28896e2 	.word	0xe28896e2
   845d8:	20209795 	.word	0x20209795
   845dc:	8896e220 	.word	0x8896e220
   845e0:	e28896e2 	.word	0xe28896e2
   845e4:	20209195 	.word	0x20209195
   845e8:	e28896e2 	.word	0xe28896e2
   845ec:	95e28896 	.word	0x95e28896
   845f0:	9d95e294 	.word	0x9d95e294
   845f4:	9a95e220 	.word	0x9a95e220
   845f8:	e28896e2 	.word	0xe28896e2
   845fc:	95e28896 	.word	0x95e28896
   84600:	8896e297 	.word	0x8896e297
   84604:	e28896e2 	.word	0xe28896e2
   84608:	20209195 	.word	0x20209195
   8460c:	8896e220 	.word	0x8896e220
   84610:	e28896e2 	.word	0xe28896e2
   84614:	96e29195 	.word	0x96e29195
   84618:	8896e288 	.word	0x8896e288
   8461c:	e29495e2 	.word	0xe29495e2
   84620:	e2209d95 	.word	0xe2209d95
   84624:	96e29a95 	.word	0x96e29a95
   84628:	8896e288 	.word	0x8896e288
   8462c:	e29795e2 	.word	0xe29795e2
   84630:	96e28896 	.word	0x96e28896
   84634:	9195e288 	.word	0x9195e288
   84638:	0000000a 	.word	0x0000000a
   8463c:	00000000 	.word	0x00000000
   84640:	e28896e2 	.word	0xe28896e2
   84644:	95e28896 	.word	0x95e28896
   84648:	9095e294 	.word	0x9095e294
   8464c:	e29095e2 	.word	0xe29095e2
   84650:	96e29095 	.word	0x96e29095
   84654:	8896e288 	.word	0x8896e288
   84658:	209795e2 	.word	0x209795e2
   8465c:	e28896e2 	.word	0xe28896e2
   84660:	95e28896 	.word	0x95e28896
   84664:	e2202091 	.word	0xe2202091
   84668:	96e29a95 	.word	0x96e29a95
   8466c:	8896e288 	.word	0x8896e288
   84670:	e28896e2 	.word	0xe28896e2
   84674:	95e28896 	.word	0x95e28896
   84678:	9d95e294 	.word	0x9d95e294
   8467c:	96e22020 	.word	0x96e22020
   84680:	8896e288 	.word	0x8896e288
   84684:	209195e2 	.word	0x209195e2
   84688:	9a95e220 	.word	0x9a95e220
   8468c:	e29095e2 	.word	0xe29095e2
   84690:	95e29095 	.word	0x95e29095
   84694:	9095e290 	.word	0x9095e290
   84698:	e28896e2 	.word	0xe28896e2
   8469c:	95e28896 	.word	0x95e28896
   846a0:	e2202097 	.word	0xe2202097
   846a4:	96e28896 	.word	0x96e28896
   846a8:	9195e288 	.word	0x9195e288
   846ac:	96e22020 	.word	0x96e22020
   846b0:	8896e288 	.word	0x8896e288
   846b4:	e28896e2 	.word	0xe28896e2
   846b8:	96e28896 	.word	0x96e28896
   846bc:	8896e288 	.word	0x8896e288
   846c0:	e28896e2 	.word	0xe28896e2
   846c4:	95e28896 	.word	0x95e28896
   846c8:	8896e291 	.word	0x8896e291
   846cc:	e28896e2 	.word	0xe28896e2
   846d0:	20209195 	.word	0x20209195
   846d4:	8896e220 	.word	0x8896e220
   846d8:	e28896e2 	.word	0xe28896e2
   846dc:	96e29195 	.word	0x96e29195
   846e0:	8896e288 	.word	0x8896e288
   846e4:	e28896e2 	.word	0xe28896e2
   846e8:	96e28896 	.word	0x96e28896
   846ec:	8896e288 	.word	0x8896e288
   846f0:	e28896e2 	.word	0xe28896e2
   846f4:	95e28896 	.word	0x95e28896
   846f8:	8896e291 	.word	0x8896e291
   846fc:	e28896e2 	.word	0xe28896e2
   84700:	000a9195 	.word	0x000a9195
   84704:	00000000 	.word	0x00000000
   84708:	e28896e2 	.word	0xe28896e2
   8470c:	96e28896 	.word	0x96e28896
   84710:	8896e288 	.word	0x8896e288
   84714:	e28896e2 	.word	0xe28896e2
   84718:	96e28896 	.word	0x96e28896
   8471c:	9495e288 	.word	0x9495e288
   84720:	e29d95e2 	.word	0xe29d95e2
   84724:	96e28896 	.word	0x96e28896
   84728:	8896e288 	.word	0x8896e288
   8472c:	e28896e2 	.word	0xe28896e2
   84730:	20209795 	.word	0x20209795
   84734:	e29a95e2 	.word	0xe29a95e2
   84738:	96e28896 	.word	0x96e28896
   8473c:	9495e288 	.word	0x9495e288
   84740:	209d95e2 	.word	0x209d95e2
   84744:	8896e220 	.word	0x8896e220
   84748:	e28896e2 	.word	0xe28896e2
   8474c:	96e28896 	.word	0x96e28896
   84750:	9795e288 	.word	0x9795e288
   84754:	8896e220 	.word	0x8896e220
   84758:	e28896e2 	.word	0xe28896e2
   8475c:	96e28896 	.word	0x96e28896
   84760:	8896e288 	.word	0x8896e288
   84764:	e28896e2 	.word	0xe28896e2
   84768:	95e29495 	.word	0x95e29495
   8476c:	e220209d 	.word	0xe220209d
   84770:	96e28896 	.word	0x96e28896
   84774:	9195e288 	.word	0x9195e288
   84778:	96e22020 	.word	0x96e22020
   8477c:	8896e288 	.word	0x8896e288
   84780:	e29495e2 	.word	0xe29495e2
   84784:	95e29095 	.word	0x95e29095
   84788:	9095e290 	.word	0x9095e290
   8478c:	e28896e2 	.word	0xe28896e2
   84790:	95e28896 	.word	0x95e28896
   84794:	9a95e291 	.word	0x9a95e291
   84798:	e28896e2 	.word	0xe28896e2
   8479c:	96e28896 	.word	0x96e28896
   847a0:	8896e288 	.word	0x8896e288
   847a4:	e28896e2 	.word	0xe28896e2
   847a8:	95e28896 	.word	0x95e28896
   847ac:	9d95e294 	.word	0x9d95e294
   847b0:	e28896e2 	.word	0xe28896e2
   847b4:	95e28896 	.word	0x95e28896
   847b8:	9095e294 	.word	0x9095e294
   847bc:	e29095e2 	.word	0xe29095e2
   847c0:	96e29095 	.word	0x96e29095
   847c4:	8896e288 	.word	0x8896e288
   847c8:	e29195e2 	.word	0xe29195e2
   847cc:	96e28896 	.word	0x96e28896
   847d0:	8896e288 	.word	0x8896e288
   847d4:	e28896e2 	.word	0xe28896e2
   847d8:	96e28896 	.word	0x96e28896
   847dc:	8896e288 	.word	0x8896e288
   847e0:	0a9795e2 	.word	0x0a9795e2
   847e4:	00000000 	.word	0x00000000
   847e8:	e29a95e2 	.word	0xe29a95e2
   847ec:	95e29095 	.word	0x95e29095
   847f0:	9095e290 	.word	0x9095e290
   847f4:	e29095e2 	.word	0xe29095e2
   847f8:	95e29095 	.word	0x95e29095
   847fc:	9d95e290 	.word	0x9d95e290
   84800:	9a95e220 	.word	0x9a95e220
   84804:	e29095e2 	.word	0xe29095e2
   84808:	95e29095 	.word	0x95e29095
   8480c:	9d95e290 	.word	0x9d95e290
   84810:	e2202020 	.word	0xe2202020
   84814:	95e29a95 	.word	0x95e29a95
   84818:	9d95e290 	.word	0x9d95e290
   8481c:	e2202020 	.word	0xe2202020
   84820:	95e29a95 	.word	0x95e29a95
   84824:	9095e290 	.word	0x9095e290
   84828:	e29095e2 	.word	0xe29095e2
   8482c:	e2209d95 	.word	0xe2209d95
   84830:	95e29a95 	.word	0x95e29a95
   84834:	9095e290 	.word	0x9095e290
   84838:	e29095e2 	.word	0xe29095e2
   8483c:	95e29095 	.word	0x95e29095
   84840:	9d95e290 	.word	0x9d95e290
   84844:	e2202020 	.word	0xe2202020
   84848:	95e29a95 	.word	0x95e29a95
   8484c:	9d95e290 	.word	0x9d95e290
   84850:	95e22020 	.word	0x95e22020
   84854:	9095e29a 	.word	0x9095e29a
   84858:	209d95e2 	.word	0x209d95e2
   8485c:	95e22020 	.word	0x95e22020
   84860:	9095e29a 	.word	0x9095e29a
   84864:	209d95e2 	.word	0x209d95e2
   84868:	e29a95e2 	.word	0xe29a95e2
   8486c:	95e29095 	.word	0x95e29095
   84870:	9095e290 	.word	0x9095e290
   84874:	e29095e2 	.word	0xe29095e2
   84878:	95e29095 	.word	0x95e29095
   8487c:	95e2209d 	.word	0x95e2209d
   84880:	9095e29a 	.word	0x9095e29a
   84884:	209d95e2 	.word	0x209d95e2
   84888:	95e22020 	.word	0x95e22020
   8488c:	9095e29a 	.word	0x9095e29a
   84890:	e29d95e2 	.word	0xe29d95e2
   84894:	95e29a95 	.word	0x95e29a95
   84898:	9095e290 	.word	0x9095e290
   8489c:	e29095e2 	.word	0xe29095e2
   848a0:	95e29095 	.word	0x95e29095
   848a4:	9095e290 	.word	0x9095e290
   848a8:	0a9d95e2 	.word	0x0a9d95e2
   848ac:	00000000 	.word	0x00000000
   848b0:	6f686365 	.word	0x6f686365
   848b4:	00000000 	.word	0x00000000
   848b8:	67617461 	.word	0x67617461
   848bc:	00000000 	.word	0x00000000
   848c0:	00006463 	.word	0x00006463
   848c4:	00000000 	.word	0x00000000
   848c8:	00746163 	.word	0x00746163
   848cc:	00000000 	.word	0x00000000
   848d0:	00647770 	.word	0x00647770
   848d4:	00000000 	.word	0x00000000
   848d8:	0000736c 	.word	0x0000736c
   848dc:	00000000 	.word	0x00000000
   848e0:	33746166 	.word	0x33746166
   848e4:	666e6932 	.word	0x666e6932
   848e8:	0000006f 	.word	0x0000006f
   848ec:	00000000 	.word	0x00000000
   848f0:	33544146 	.word	0x33544146
   848f4:	6e692032 	.word	0x6e692032
   848f8:	6d726f66 	.word	0x6d726f66
   848fc:	6f697461 	.word	0x6f697461
   84900:	000a3a6e 	.word	0x000a3a6e
   84904:	00000000 	.word	0x00000000
   84908:	74636573 	.word	0x74636573
   8490c:	7320726f 	.word	0x7320726f
   84910:	3a657a69 	.word	0x3a657a69
   84914:	20642509 	.word	0x20642509
   84918:	65747962 	.word	0x65747962
   8491c:	00000a73 	.word	0x00000a73
   84920:	73756c63 	.word	0x73756c63
   84924:	20726574 	.word	0x20726574
   84928:	657a6973 	.word	0x657a6973
   8492c:	6425093a 	.word	0x6425093a
   84930:	63657320 	.word	0x63657320
   84934:	73726f74 	.word	0x73726f74
   84938:	0000000a 	.word	0x0000000a
   8493c:	00000000 	.word	0x00000000
   84940:	20544146 	.word	0x20544146
   84944:	657a6973 	.word	0x657a6973
   84948:	6425093a 	.word	0x6425093a
   8494c:	63657320 	.word	0x63657320
   84950:	73726f74 	.word	0x73726f74
   84954:	0000000a 	.word	0x0000000a
   84958:	20544146 	.word	0x20544146
   8495c:	72617473 	.word	0x72617473
   84960:	74612074 	.word	0x74612074
   84964:	63657320 	.word	0x63657320
   84968:	20726f74 	.word	0x20726f74
   8496c:	000a6425 	.word	0x000a6425
   84970:	61746164 	.word	0x61746164
   84974:	61747320 	.word	0x61747320
   84978:	61207472 	.word	0x61207472
   8497c:	65732074 	.word	0x65732074
   84980:	726f7463 	.word	0x726f7463
   84984:	0a642520 	.word	0x0a642520
	...
   84990:	746f6f72 	.word	0x746f6f72
   84994:	72696420 	.word	0x72696420
   84998:	6f746365 	.word	0x6f746365
   8499c:	73207972 	.word	0x73207972
   849a0:	74726174 	.word	0x74726174
   849a4:	20746120 	.word	0x20746120
   849a8:	73756c63 	.word	0x73756c63
   849ac:	20726574 	.word	0x20726574
   849b0:	000a6425 	.word	0x000a6425
   849b4:	00000000 	.word	0x00000000
   849b8:	6c6c616d 	.word	0x6c6c616d
   849bc:	0000636f 	.word	0x0000636f
   849c0:	6e6b6e75 	.word	0x6e6b6e75
   849c4:	6320776f 	.word	0x6320776f
   849c8:	616d6d6f 	.word	0x616d6d6f
   849cc:	203a646e 	.word	0x203a646e
   849d0:	000a7325 	.word	0x000a7325
   849d4:	00000000 	.word	0x00000000
   849d8:	6c65570a 	.word	0x6c65570a
   849dc:	656d6f63 	.word	0x656d6f63
   849e0:	206f7420 	.word	0x206f7420
   849e4:	70736172 	.word	0x70736172
   849e8:	72726562 	.word	0x72726562
   849ec:	69702079 	.word	0x69702079
   849f0:	20623320 	.word	0x20623320
   849f4:	6c656873 	.word	0x6c656873
   849f8:	0a0a216c 	.word	0x0a0a216c
   849fc:	00000000 	.word	0x00000000
   84a00:	29732528 	.word	0x29732528
   84a04:	00203e20 	.word	0x00203e20
   84a08:	20202020 	.word	0x20202020
   84a0c:	20202020 	.word	0x20202020
   84a10:	28202020 	.word	0x28202020
   84a14:	0000000a 	.word	0x0000000a
   84a18:	20202020 	.word	0x20202020
   84a1c:	28202020 	.word	0x28202020
   84a20:	20202020 	.word	0x20202020
   84a24:	20202920 	.word	0x20202920
   84a28:	29202020 	.word	0x29202020
   84a2c:	0000000a 	.word	0x0000000a
   84a30:	20202020 	.word	0x20202020
   84a34:	20202020 	.word	0x20202020
   84a38:	20202029 	.word	0x20202029
   84a3c:	20202028 	.word	0x20202028
   84a40:	000a2820 	.word	0x000a2820
   84a44:	00000000 	.word	0x00000000
   84a48:	20202020 	.word	0x20202020
   84a4c:	28202020 	.word	0x28202020
   84a50:	20202020 	.word	0x20202020
   84a54:	20202020 	.word	0x20202020
   84a58:	0a602020 	.word	0x0a602020
   84a5c:	00000000 	.word	0x00000000
   84a60:	2e202020 	.word	0x2e202020
   84a64:	5e22222d 	.word	0x5e22222d
   84a68:	5e222222 	.word	0x5e222222
   84a6c:	225e2222 	.word	0x225e2222
   84a70:	225e2222 	.word	0x225e2222
   84a74:	0a2e2d22 	.word	0x0a2e2d22
	...
   84a80:	2f2f2820 	.word	0x2f2f2820
   84a84:	2f2f5c5c 	.word	0x2f2f5c5c
   84a88:	2f2f5c5c 	.word	0x2f2f5c5c
   84a8c:	2f2f5c5c 	.word	0x2f2f5c5c
   84a90:	2f2f5c5c 	.word	0x2f2f5c5c
   84a94:	2f2f5c5c 	.word	0x2f2f5c5c
   84a98:	00000a29 	.word	0x00000a29
   84a9c:	00000000 	.word	0x00000000
   84aa0:	5c7e2020 	.word	0x5c7e2020
   84aa4:	5e5e5e5e 	.word	0x5e5e5e5e
   84aa8:	5e5e5e5e 	.word	0x5e5e5e5e
   84aac:	5e5e5e5e 	.word	0x5e5e5e5e
   84ab0:	5e5e5e5e 	.word	0x5e5e5e5e
   84ab4:	7e2f5e5e 	.word	0x7e2f5e5e
   84ab8:	0000000a 	.word	0x0000000a
   84abc:	00000000 	.word	0x00000000
   84ac0:	20202020 	.word	0x20202020
   84ac4:	3d3d3d60 	.word	0x3d3d3d60
   84ac8:	3d3d3d3d 	.word	0x3d3d3d3d
   84acc:	3d3d3d3d 	.word	0x3d3d3d3d
   84ad0:	3d3d3d3d 	.word	0x3d3d3d3d
   84ad4:	0a0a603d 	.word	0x0a0a603d
	...
   84ae0:	20202020 	.word	0x20202020
   84ae4:	20656854 	.word	0x20656854
   84ae8:	69206970 	.word	0x69206970
   84aec:	766f2073 	.word	0x766f2073
   84af0:	6f647265 	.word	0x6f647265
   84af4:	0a2e656e 	.word	0x0a2e656e
   84af8:	0000000a 	.word	0x0000000a
   84afc:	00000000 	.word	0x00000000
   84b00:	2d2d2d2d 	.word	0x2d2d2d2d
   84b04:	2d2d2d2d 	.word	0x2d2d2d2d
   84b08:	50202d2d 	.word	0x50202d2d
   84b0c:	43494e41 	.word	0x43494e41
   84b10:	2d2d2d20 	.word	0x2d2d2d20
   84b14:	2d2d2d2d 	.word	0x2d2d2d2d
   84b18:	0a2d2d2d 	.word	0x0a2d2d2d
   84b1c:	0000000a 	.word	0x0000000a
   84b20:	454c4946 	.word	0x454c4946
   84b24:	7325203a 	.word	0x7325203a
   84b28:	0000000a 	.word	0x0000000a
   84b2c:	00000000 	.word	0x00000000
   84b30:	454e494c 	.word	0x454e494c
   84b34:	6425203a 	.word	0x6425203a
   84b38:	0000000a 	.word	0x0000000a
   84b3c:	00000000 	.word	0x00000000
   84b40:	434e5546 	.word	0x434e5546
   84b44:	7325203a 	.word	0x7325203a
   84b48:	00000a0a 	.word	0x00000a0a
   84b4c:	00000000 	.word	0x00000000
   84b50:	203a7325 	.word	0x203a7325
   84b54:	00000000 	.word	0x00000000
   84b58:	47415441 	.word	0x47415441
   84b5c:	524f435f 	.word	0x524f435f
   84b60:	000a3a45 	.word	0x000a3a45
   84b64:	00000000 	.word	0x00000000
   84b68:	616c6609 	.word	0x616c6609
   84b6c:	3d207367 	.word	0x3d207367
   84b70:	2c642520 	.word	0x2c642520
   84b74:	67617020 	.word	0x67617020
   84b78:	7a697365 	.word	0x7a697365
   84b7c:	203d2065 	.word	0x203d2065
   84b80:	202c6425 	.word	0x202c6425
   84b84:	746f6f72 	.word	0x746f6f72
   84b88:	20766564 	.word	0x20766564
   84b8c:	6425203d 	.word	0x6425203d
   84b90:	0000000a 	.word	0x0000000a
   84b94:	00000000 	.word	0x00000000
   84b98:	47415441 	.word	0x47415441
   84b9c:	4d454d5f 	.word	0x4d454d5f
   84ba0:	00000a3a 	.word	0x00000a3a
   84ba4:	00000000 	.word	0x00000000
   84ba8:	7a697309 	.word	0x7a697309
   84bac:	203d2065 	.word	0x203d2065
   84bb0:	78257830 	.word	0x78257830
   84bb4:	7473202c 	.word	0x7473202c
   84bb8:	20747261 	.word	0x20747261
   84bbc:	7830203d 	.word	0x7830203d
   84bc0:	000a7825 	.word	0x000a7825
   84bc4:	00000000 	.word	0x00000000
   84bc8:	47415441 	.word	0x47415441
   84bcc:	444d435f 	.word	0x444d435f
   84bd0:	454e494c 	.word	0x454e494c
   84bd4:	00000a3a 	.word	0x00000a3a
   84bd8:	646d6309 	.word	0x646d6309
   84bdc:	656e696c 	.word	0x656e696c
   84be0:	25203d20 	.word	0x25203d20
   84be4:	00000a73 	.word	0x00000a73
   84be8:	6e6b6e75 	.word	0x6e6b6e75
   84bec:	7420776f 	.word	0x7420776f
   84bf0:	203a6761 	.word	0x203a6761
   84bf4:	000a6425 	.word	0x000a6425

Disassembly of section .data:

0000000000084bf8 <current.2815-0x18>:
   84bf8:	00000200 	.word	0x00000200
   84bfc:	00000000 	.word	0x00000000
   84c00:	00083268 	.word	0x00083268
   84c04:	00000000 	.word	0x00000000
   84c08:	0008315c 	.word	0x0008315c
   84c0c:	00000000 	.word	0x00000000

0000000000084c10 <current.2815>:
   84c10:	00085278 	.word	0x00085278
   84c14:	00000000 	.word	0x00000000

0000000000084c18 <cwd>:
   84c18:	0000002f 	.word	0x0000002f
	...

Disassembly of section .got:

0000000000085018 <_GLOBAL_OFFSET_TABLE_>:
	...
   85020:	000850c0 	.word	0x000850c0
   85024:	00000000 	.word	0x00000000
   85028:	00085278 	.word	0x00085278
   8502c:	00000000 	.word	0x00000000
   85030:	000850d0 	.word	0x000850d0
   85034:	00000000 	.word	0x00000000
   85038:	00085080 	.word	0x00085080
   8503c:	00000000 	.word	0x00000000
   85040:	000850b8 	.word	0x000850b8
   85044:	00000000 	.word	0x00000000
   85048:	00085278 	.word	0x00085278
   8504c:	00000000 	.word	0x00000000

Disassembly of section .got.plt:

0000000000085050 <.got.plt>:
	...

Disassembly of section .bss:

0000000000085068 <__bss_start-0x18>:
	...

0000000000085080 <__bss_start>:
	...

0000000000085088 <scp.2784>:
	...

0000000000085090 <sep.2785>:
	...

00000000000850b8 <pfat32_global>:
	...

00000000000850c0 <_memory_map>:
	...

00000000000850d0 <mem_bin>:
	...

0000000000085270 <sd_err>:
	...
