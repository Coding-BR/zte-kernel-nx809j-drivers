
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000141c4 <syna_tcm_set_game_partition_config>:
   141c4: d503233f     	paciasp
   141c8: d10243ff     	sub	sp, sp, #0x90
   141cc: a9037bfd     	stp	x29, x30, [sp, #0x30]
   141d0: a9046ffc     	stp	x28, x27, [sp, #0x40]
   141d4: a90567fa     	stp	x26, x25, [sp, #0x50]
   141d8: a9065ff8     	stp	x24, x23, [sp, #0x60]
   141dc: a90757f6     	stp	x22, x21, [sp, #0x70]
   141e0: a9084ff4     	stp	x20, x19, [sp, #0x80]
   141e4: 9100c3fd     	add	x29, sp, #0x30
   141e8: 2a0403f5     	mov	w21, w4
   141ec: aa0303f6     	mov	x22, x3
   141f0: 2a0203f9     	mov	w25, w2
   141f4: 2a0103f7     	mov	w23, w1
   141f8: aa0003fa     	mov	x26, x0
   141fc: d503201f     	nop
   14200: 11000728     	add	w8, w25, #0x1
   14204: 52819801     	mov	w1, #0xcc0              // =3264
   14208: 93407d18     	sxtw	x24, w8
   1420c: aa1803e0     	mov	x0, x24
   14210: 94000000     	bl	0x14210 <syna_tcm_set_game_partition_config+0x4c>
		0000000000014210:  R_AARCH64_CALL26	__kmalloc_noprof
   14214: aa0003f4     	mov	x20, x0
   14218: b40006fa     	cbz	x26, 0x142f4 <syna_tcm_set_game_partition_config+0x130>
   1421c: 39402742     	ldrb	w2, [x26, #0x9]
   14220: 7100045f     	cmp	w2, #0x1
   14224: 54000321     	b.ne	0x14288 <syna_tcm_set_game_partition_config+0xc4>
   14228: 350000b5     	cbnz	w21, 0x1423c <syna_tcm_set_game_partition_config+0x78>
   1422c: f9402748     	ldr	x8, [x26, #0x48]
   14230: 39405108     	ldrb	w8, [x8, #0x14]
   14234: 36000388     	tbz	w8, #0x0, 0x142a4 <syna_tcm_set_game_partition_config+0xe0>
   14238: 2a1f03f5     	mov	w21, wzr
   1423c: 0b190728     	add	w8, w25, w25, lsl #1
   14240: f9000bfa     	str	x26, [sp, #0x10]
   14244: b81ec3b5     	stur	w21, [x29, #-0x14]
   14248: 531f791c     	lsl	w28, w8, #1
   1424c: 11008393     	add	w19, w28, #0x20
   14250: d503201f     	nop
   14254: 93407e60     	sxtw	x0, w19
   14258: 52819801     	mov	w1, #0xcc0              // =3264
   1425c: 94000000     	bl	0x1425c <syna_tcm_set_game_partition_config+0x98>
		000000000001425c:  R_AARCH64_CALL26	__kmalloc_noprof
   14260: aa0003fa     	mov	x26, x0
   14264: b400071a     	cbz	x26, 0x14344 <syna_tcm_set_game_partition_config+0x180>
   14268: 93407e61     	sxtw	x1, w19
   1426c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		000000000001426c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f06
   14270: 91000042     	add	x2, x2, #0x0
		0000000000014270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f06
   14274: aa1a03e0     	mov	x0, x26
   14278: 94000000     	bl	0x14278 <syna_tcm_set_game_partition_config+0xb4>
		0000000000014278:  R_AARCH64_CALL26	snprintf
   1427c: 2a0003fb     	mov	w27, w0
   14280: b5000678     	cbnz	x24, 0x1434c <syna_tcm_set_game_partition_config+0x188>
   14284: 14000083     	b	0x14490 <syna_tcm_set_game_partition_config+0x2cc>
   14288: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2d2
   1428c: 91000000     	add	x0, x0, #0x0
		000000000001428c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2d2
   14290: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   14294: 91000021     	add	x1, x1, #0x0
		0000000000014294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   14298: 94000000     	bl	0x14298 <syna_tcm_set_game_partition_config+0xd4>
		0000000000014298:  R_AARCH64_CALL26	_printk
   1429c: 12801e00     	mov	w0, #-0xf1              // =-241
   142a0: 1400005e     	b	0x14418 <syna_tcm_set_game_partition_config+0x254>
   142a4: b9420f55     	ldr	w21, [x26, #0x20c]
   142a8: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000142a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ab2
   142ac: 91000000     	add	x0, x0, #0x0
		00000000000142ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ab2
   142b0: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000142b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   142b4: 91000021     	add	x1, x1, #0x0
		00000000000142b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   142b8: 94000000     	bl	0x142b8 <syna_tcm_set_game_partition_config+0xf4>
		00000000000142b8:  R_AARCH64_CALL26	_printk
   142bc: 17ffffe0     	b	0x1423c <syna_tcm_set_game_partition_config+0x78>
   142c0: 11000728     	add	w8, w25, #0x1
   142c4: d5384113     	mrs	x19, SP_EL0
   142c8: f9402a74     	ldr	x20, [x19, #0x50]
   142cc: 93407d18     	sxtw	x24, w8
   142d0: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		00000000000142d0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x418
   142d4: 91000108     	add	x8, x8, #0x0
		00000000000142d4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x418
   142d8: 52819801     	mov	w1, #0xcc0              // =3264
   142dc: f9002a68     	str	x8, [x19, #0x50]
   142e0: aa1803e0     	mov	x0, x24
   142e4: 94000000     	bl	0x142e4 <syna_tcm_set_game_partition_config+0x120>
		00000000000142e4:  R_AARCH64_CALL26	__kmalloc_noprof
   142e8: f9002a74     	str	x20, [x19, #0x50]
   142ec: aa0003f4     	mov	x20, x0
   142f0: b5fff97a     	cbnz	x26, 0x1421c <syna_tcm_set_game_partition_config+0x58>
   142f4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		00000000000142f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   142f8: 91000000     	add	x0, x0, #0x0
		00000000000142f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   142fc: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		00000000000142fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   14300: 91000021     	add	x1, x1, #0x0
		0000000000014300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   14304: 94000000     	bl	0x14304 <syna_tcm_set_game_partition_config+0x140>
		0000000000014304:  R_AARCH64_CALL26	_printk
   14308: 12801e00     	mov	w0, #-0xf1              // =-241
   1430c: 14000043     	b	0x14418 <syna_tcm_set_game_partition_config+0x254>
   14310: 93407e60     	sxtw	x0, w19
   14314: aa1403fb     	mov	x27, x20
   14318: d5384114     	mrs	x20, SP_EL0
   1431c: f9402a95     	ldr	x21, [x20, #0x50]
   14320: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014320:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x440
   14324: 91000108     	add	x8, x8, #0x0
		0000000000014324:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x440
   14328: 52819801     	mov	w1, #0xcc0              // =3264
   1432c: f9002a88     	str	x8, [x20, #0x50]
   14330: 94000000     	bl	0x14330 <syna_tcm_set_game_partition_config+0x16c>
		0000000000014330:  R_AARCH64_CALL26	__kmalloc_noprof
   14334: aa0003fa     	mov	x26, x0
   14338: f9002a95     	str	x21, [x20, #0x50]
   1433c: aa1b03f4     	mov	x20, x27
   14340: b5fff95a     	cbnz	x26, 0x14268 <syna_tcm_set_game_partition_config+0xa4>
   14344: 2a1f03fb     	mov	w27, wzr
   14348: b4000a58     	cbz	x24, 0x14490 <syna_tcm_set_game_partition_config+0x2cc>
   1434c: 11000728     	add	w8, w25, #0x1
   14350: b9000ff7     	str	w23, [sp, #0xc]
   14354: 7100091f     	cmp	w8, #0x2
   14358: f81f03a8     	stur	x8, [x29, #-0x10]
   1435c: f81f83b4     	stur	x20, [x29, #-0x8]
   14360: 39000297     	strb	w23, [x20]
   14364: 5400036b     	b.lt	0x143d0 <syna_tcm_set_game_partition_config+0x20c>
   14368: a97f27a8     	ldp	x8, x9, [x29, #-0x10]
   1436c: aa1f03f4     	mov	x20, xzr
   14370: 11006397     	add	w23, w28, #0x18
   14374: 9000001c     	adrp	x28, 0x14000 <syna_tcm_reset+0x138>
		0000000000014374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x795c
   14378: 9100039c     	add	x28, x28, #0x0
		0000000000014378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x795c
   1437c: 91000535     	add	x21, x9, #0x1
   14380: d1000519     	sub	x25, x8, #0x1
   14384: 14000004     	b	0x14394 <syna_tcm_set_game_partition_config+0x1d0>
   14388: 91000694     	add	x20, x20, #0x1
   1438c: eb14033f     	cmp	x25, x20
   14390: 54000200     	b.eq	0x143d0 <syna_tcm_set_game_partition_config+0x20c>
   14394: 91000688     	add	x8, x20, #0x1
   14398: eb08031f     	cmp	x24, x8
   1439c: 540007a9     	b.ls	0x14490 <syna_tcm_set_game_partition_config+0x2cc>
   143a0: 38746ac3     	ldrb	w3, [x22, x20]
   143a4: 38346aa3     	strb	w3, [x21, x20]
   143a8: b4ffff1a     	cbz	x26, 0x14388 <syna_tcm_set_game_partition_config+0x1c4>
   143ac: 6b17037f     	cmp	w27, w23
   143b0: 54fffeca     	b.ge	0x14388 <syna_tcm_set_game_partition_config+0x1c4>
   143b4: 4b1b0268     	sub	w8, w19, w27
   143b8: 8b3bc340     	add	x0, x26, w27, sxtw
   143bc: aa1c03e2     	mov	x2, x28
   143c0: 93407d01     	sxtw	x1, w8
   143c4: 94000000     	bl	0x143c4 <syna_tcm_set_game_partition_config+0x200>
		00000000000143c4:  R_AARCH64_CALL26	snprintf
   143c8: 0b1b001b     	add	w27, w0, w27
   143cc: 17ffffef     	b	0x14388 <syna_tcm_set_game_partition_config+0x1c4>
   143d0: b500037a     	cbnz	x26, 0x1443c <syna_tcm_set_game_partition_config+0x278>
   143d4: f9400be0     	ldr	x0, [sp, #0x10]
   143d8: a97f0bb4     	ldp	x20, x2, [x29, #-0x10]
   143dc: b85ec3a5     	ldur	w5, [x29, #-0x14]
   143e0: 528018e1     	mov	w1, #0xc7               // =199
   143e4: aa1f03e4     	mov	x4, xzr
   143e8: f941cc08     	ldr	x8, [x0, #0x398]
   143ec: 2a1403e3     	mov	w3, w20
   143f0: b85fc110     	ldur	w16, [x8, #-0x4]
   143f4: 728751d1     	movk	w17, #0x3a8e
   143f8: 72a48411     	movk	w17, #0x2420, lsl #16
   143fc: 6b11021f     	cmp	w16, w17
   14400: 54000040     	b.eq	0x14408 <syna_tcm_set_game_partition_config+0x244>
   14404: d4304500     	brk	#0x8228
   14408: d63f0100     	blr	x8
   1440c: b9400fe9     	ldr	w9, [sp, #0xc]
   14410: 37f80280     	tbnz	w0, #0x1f, 0x14460 <syna_tcm_set_game_partition_config+0x29c>
   14414: 2a1f03e0     	mov	w0, wzr
   14418: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   1441c: a94757f6     	ldp	x22, x21, [sp, #0x70]
   14420: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   14424: a94567fa     	ldp	x26, x25, [sp, #0x50]
   14428: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   1442c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   14430: 910243ff     	add	sp, sp, #0x90
   14434: d50323bf     	autiasp
   14438: d65f03c0     	ret
   1443c: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		000000000001443c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfe0
   14440: 91000000     	add	x0, x0, #0x0
		0000000000014440:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfe0
   14444: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   14448: 91000021     	add	x1, x1, #0x0
		0000000000014448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   1444c: aa1a03e2     	mov	x2, x26
   14450: 94000000     	bl	0x14450 <syna_tcm_set_game_partition_config+0x28c>
		0000000000014450:  R_AARCH64_CALL26	_printk
   14454: aa1a03e0     	mov	x0, x26
   14458: 94000000     	bl	0x14458 <syna_tcm_set_game_partition_config+0x294>
		0000000000014458:  R_AARCH64_CALL26	kfree
   1445c: 17ffffde     	b	0x143d4 <syna_tcm_set_game_partition_config+0x210>
   14460: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf9c
   14464: 91000108     	add	x8, x8, #0x0
		0000000000014464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf9c
   14468: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   1446c: 91000021     	add	x1, x1, #0x0
		000000000001446c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   14470: 12001d24     	and	w4, w9, #0xff
   14474: 2a0003f3     	mov	w19, w0
   14478: aa0803e0     	mov	x0, x8
   1447c: 528018e2     	mov	w2, #0xc7               // =199
   14480: 2a1403e3     	mov	w3, w20
   14484: 94000000     	bl	0x14484 <syna_tcm_set_game_partition_config+0x2c0>
		0000000000014484:  R_AARCH64_CALL26	_printk
   14488: 2a1303e0     	mov	w0, w19
   1448c: 17ffffe3     	b	0x14418 <syna_tcm_set_game_partition_config+0x254>
   14490: d4200020     	brk	#0x1
