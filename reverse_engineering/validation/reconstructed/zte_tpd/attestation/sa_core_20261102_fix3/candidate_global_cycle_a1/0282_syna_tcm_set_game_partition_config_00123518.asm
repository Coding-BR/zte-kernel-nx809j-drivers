
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014220 <syna_tcm_set_game_partition_config>:
   14220: d503233f     	paciasp
   14224: d10243ff     	sub	sp, sp, #0x90
   14228: a9037bfd     	stp	x29, x30, [sp, #0x30]
   1422c: a9046ffc     	stp	x28, x27, [sp, #0x40]
   14230: a90567fa     	stp	x26, x25, [sp, #0x50]
   14234: a9065ff8     	stp	x24, x23, [sp, #0x60]
   14238: a90757f6     	stp	x22, x21, [sp, #0x70]
   1423c: a9084ff4     	stp	x20, x19, [sp, #0x80]
   14240: 9100c3fd     	add	x29, sp, #0x30
   14244: 2a0403f5     	mov	w21, w4
   14248: aa0303f6     	mov	x22, x3
   1424c: 2a0203f9     	mov	w25, w2
   14250: 2a0103f7     	mov	w23, w1
   14254: aa0003fa     	mov	x26, x0
   14258: d503201f     	nop
   1425c: 11000728     	add	w8, w25, #0x1
   14260: 52819801     	mov	w1, #0xcc0              // =3264
   14264: 93407d18     	sxtw	x24, w8
   14268: aa1803e0     	mov	x0, x24
   1426c: 94000000     	bl	0x1426c <syna_tcm_set_game_partition_config+0x4c>
		000000000001426c:  R_AARCH64_CALL26	__kmalloc_noprof
   14270: aa0003f4     	mov	x20, x0
   14274: b40006fa     	cbz	x26, 0x14350 <syna_tcm_set_game_partition_config+0x130>
   14278: 39402742     	ldrb	w2, [x26, #0x9]
   1427c: 7100045f     	cmp	w2, #0x1
   14280: 54000321     	b.ne	0x142e4 <syna_tcm_set_game_partition_config+0xc4>
   14284: 350000b5     	cbnz	w21, 0x14298 <syna_tcm_set_game_partition_config+0x78>
   14288: f9402748     	ldr	x8, [x26, #0x48]
   1428c: 39405108     	ldrb	w8, [x8, #0x14]
   14290: 36000388     	tbz	w8, #0x0, 0x14300 <syna_tcm_set_game_partition_config+0xe0>
   14294: 2a1f03f5     	mov	w21, wzr
   14298: 0b190728     	add	w8, w25, w25, lsl #1
   1429c: f9000bfa     	str	x26, [sp, #0x10]
   142a0: b81ec3b5     	stur	w21, [x29, #-0x14]
   142a4: 531f791c     	lsl	w28, w8, #1
   142a8: 11008393     	add	w19, w28, #0x20
   142ac: d503201f     	nop
   142b0: 93407e60     	sxtw	x0, w19
   142b4: 52819801     	mov	w1, #0xcc0              // =3264
   142b8: 94000000     	bl	0x142b8 <syna_tcm_set_game_partition_config+0x98>
		00000000000142b8:  R_AARCH64_CALL26	__kmalloc_noprof
   142bc: aa0003fa     	mov	x26, x0
   142c0: b400071a     	cbz	x26, 0x143a0 <syna_tcm_set_game_partition_config+0x180>
   142c4: 93407e61     	sxtw	x1, w19
   142c8: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		00000000000142c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f06
   142cc: 91000042     	add	x2, x2, #0x0
		00000000000142cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f06
   142d0: aa1a03e0     	mov	x0, x26
   142d4: 94000000     	bl	0x142d4 <syna_tcm_set_game_partition_config+0xb4>
		00000000000142d4:  R_AARCH64_CALL26	snprintf
   142d8: 2a0003fb     	mov	w27, w0
   142dc: b5000678     	cbnz	x24, 0x143a8 <syna_tcm_set_game_partition_config+0x188>
   142e0: 14000083     	b	0x144ec <syna_tcm_set_game_partition_config+0x2cc>
   142e4: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		00000000000142e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb2d2
   142e8: 91000000     	add	x0, x0, #0x0
		00000000000142e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb2d2
   142ec: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000142ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   142f0: 91000021     	add	x1, x1, #0x0
		00000000000142f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   142f4: 94000000     	bl	0x142f4 <syna_tcm_set_game_partition_config+0xd4>
		00000000000142f4:  R_AARCH64_CALL26	_printk
   142f8: 12801e00     	mov	w0, #-0xf1              // =-241
   142fc: 1400005e     	b	0x14474 <syna_tcm_set_game_partition_config+0x254>
   14300: b9420f55     	ldr	w21, [x26, #0x20c]
   14304: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014304:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ab2
   14308: 91000000     	add	x0, x0, #0x0
		0000000000014308:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ab2
   1430c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		000000000001430c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   14310: 91000021     	add	x1, x1, #0x0
		0000000000014310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   14314: 94000000     	bl	0x14314 <syna_tcm_set_game_partition_config+0xf4>
		0000000000014314:  R_AARCH64_CALL26	_printk
   14318: 17ffffe0     	b	0x14298 <syna_tcm_set_game_partition_config+0x78>
   1431c: 11000728     	add	w8, w25, #0x1
   14320: d5384113     	mrs	x19, SP_EL0
   14324: f9402a74     	ldr	x20, [x19, #0x50]
   14328: 93407d18     	sxtw	x24, w8
   1432c: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		000000000001432c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x418
   14330: 91000108     	add	x8, x8, #0x0
		0000000000014330:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x418
   14334: 52819801     	mov	w1, #0xcc0              // =3264
   14338: f9002a68     	str	x8, [x19, #0x50]
   1433c: aa1803e0     	mov	x0, x24
   14340: 94000000     	bl	0x14340 <syna_tcm_set_game_partition_config+0x120>
		0000000000014340:  R_AARCH64_CALL26	__kmalloc_noprof
   14344: f9002a74     	str	x20, [x19, #0x50]
   14348: aa0003f4     	mov	x20, x0
   1434c: b5fff97a     	cbnz	x26, 0x14278 <syna_tcm_set_game_partition_config+0x58>
   14350: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014350:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   14354: 91000000     	add	x0, x0, #0x0
		0000000000014354:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   14358: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014358:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   1435c: 91000021     	add	x1, x1, #0x0
		000000000001435c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   14360: 94000000     	bl	0x14360 <syna_tcm_set_game_partition_config+0x140>
		0000000000014360:  R_AARCH64_CALL26	_printk
   14364: 12801e00     	mov	w0, #-0xf1              // =-241
   14368: 14000043     	b	0x14474 <syna_tcm_set_game_partition_config+0x254>
   1436c: 93407e60     	sxtw	x0, w19
   14370: aa1403fb     	mov	x27, x20
   14374: d5384114     	mrs	x20, SP_EL0
   14378: f9402a95     	ldr	x21, [x20, #0x50]
   1437c: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		000000000001437c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x440
   14380: 91000108     	add	x8, x8, #0x0
		0000000000014380:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x440
   14384: 52819801     	mov	w1, #0xcc0              // =3264
   14388: f9002a88     	str	x8, [x20, #0x50]
   1438c: 94000000     	bl	0x1438c <syna_tcm_set_game_partition_config+0x16c>
		000000000001438c:  R_AARCH64_CALL26	__kmalloc_noprof
   14390: aa0003fa     	mov	x26, x0
   14394: f9002a95     	str	x21, [x20, #0x50]
   14398: aa1b03f4     	mov	x20, x27
   1439c: b5fff95a     	cbnz	x26, 0x142c4 <syna_tcm_set_game_partition_config+0xa4>
   143a0: 2a1f03fb     	mov	w27, wzr
   143a4: b4000a58     	cbz	x24, 0x144ec <syna_tcm_set_game_partition_config+0x2cc>
   143a8: 11000728     	add	w8, w25, #0x1
   143ac: b9000ff7     	str	w23, [sp, #0xc]
   143b0: 7100091f     	cmp	w8, #0x2
   143b4: f81f03a8     	stur	x8, [x29, #-0x10]
   143b8: f81f83b4     	stur	x20, [x29, #-0x8]
   143bc: 39000297     	strb	w23, [x20]
   143c0: 5400036b     	b.lt	0x1442c <syna_tcm_set_game_partition_config+0x20c>
   143c4: a97f27a8     	ldp	x8, x9, [x29, #-0x10]
   143c8: aa1f03f4     	mov	x20, xzr
   143cc: 11006397     	add	w23, w28, #0x18
   143d0: 9000001c     	adrp	x28, 0x14000 <syna_tcm_reset+0xdc>
		00000000000143d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x795c
   143d4: 9100039c     	add	x28, x28, #0x0
		00000000000143d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x795c
   143d8: 91000535     	add	x21, x9, #0x1
   143dc: d1000519     	sub	x25, x8, #0x1
   143e0: 14000004     	b	0x143f0 <syna_tcm_set_game_partition_config+0x1d0>
   143e4: 91000694     	add	x20, x20, #0x1
   143e8: eb14033f     	cmp	x25, x20
   143ec: 54000200     	b.eq	0x1442c <syna_tcm_set_game_partition_config+0x20c>
   143f0: 91000688     	add	x8, x20, #0x1
   143f4: eb08031f     	cmp	x24, x8
   143f8: 540007a9     	b.ls	0x144ec <syna_tcm_set_game_partition_config+0x2cc>
   143fc: 38746ac3     	ldrb	w3, [x22, x20]
   14400: 38346aa3     	strb	w3, [x21, x20]
   14404: b4ffff1a     	cbz	x26, 0x143e4 <syna_tcm_set_game_partition_config+0x1c4>
   14408: 6b17037f     	cmp	w27, w23
   1440c: 54fffeca     	b.ge	0x143e4 <syna_tcm_set_game_partition_config+0x1c4>
   14410: 4b1b0268     	sub	w8, w19, w27
   14414: 8b3bc340     	add	x0, x26, w27, sxtw
   14418: aa1c03e2     	mov	x2, x28
   1441c: 93407d01     	sxtw	x1, w8
   14420: 94000000     	bl	0x14420 <syna_tcm_set_game_partition_config+0x200>
		0000000000014420:  R_AARCH64_CALL26	snprintf
   14424: 0b1b001b     	add	w27, w0, w27
   14428: 17ffffef     	b	0x143e4 <syna_tcm_set_game_partition_config+0x1c4>
   1442c: b500037a     	cbnz	x26, 0x14498 <syna_tcm_set_game_partition_config+0x278>
   14430: f9400be0     	ldr	x0, [sp, #0x10]
   14434: a97f0bb4     	ldp	x20, x2, [x29, #-0x10]
   14438: b85ec3a5     	ldur	w5, [x29, #-0x14]
   1443c: 528018e1     	mov	w1, #0xc7               // =199
   14440: aa1f03e4     	mov	x4, xzr
   14444: f941cc08     	ldr	x8, [x0, #0x398]
   14448: 2a1403e3     	mov	w3, w20
   1444c: b85fc110     	ldur	w16, [x8, #-0x4]
   14450: 728751d1     	movk	w17, #0x3a8e
   14454: 72a48411     	movk	w17, #0x2420, lsl #16
   14458: 6b11021f     	cmp	w16, w17
   1445c: 54000040     	b.eq	0x14464 <syna_tcm_set_game_partition_config+0x244>
   14460: d4304500     	brk	#0x8228
   14464: d63f0100     	blr	x8
   14468: b9400fe9     	ldr	w9, [sp, #0xc]
   1446c: 37f80280     	tbnz	w0, #0x1f, 0x144bc <syna_tcm_set_game_partition_config+0x29c>
   14470: 2a1f03e0     	mov	w0, wzr
   14474: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   14478: a94757f6     	ldp	x22, x21, [sp, #0x70]
   1447c: a9465ff8     	ldp	x24, x23, [sp, #0x60]
   14480: a94567fa     	ldp	x26, x25, [sp, #0x50]
   14484: a9446ffc     	ldp	x28, x27, [sp, #0x40]
   14488: a9437bfd     	ldp	x29, x30, [sp, #0x30]
   1448c: 910243ff     	add	sp, sp, #0x90
   14490: d50323bf     	autiasp
   14494: d65f03c0     	ret
   14498: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbfe0
   1449c: 91000000     	add	x0, x0, #0x0
		000000000001449c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbfe0
   144a0: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000144a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   144a4: 91000021     	add	x1, x1, #0x0
		00000000000144a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   144a8: aa1a03e2     	mov	x2, x26
   144ac: 94000000     	bl	0x144ac <syna_tcm_set_game_partition_config+0x28c>
		00000000000144ac:  R_AARCH64_CALL26	_printk
   144b0: aa1a03e0     	mov	x0, x26
   144b4: 94000000     	bl	0x144b4 <syna_tcm_set_game_partition_config+0x294>
		00000000000144b4:  R_AARCH64_CALL26	kfree
   144b8: 17ffffde     	b	0x14430 <syna_tcm_set_game_partition_config+0x210>
   144bc: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		00000000000144bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf9c
   144c0: 91000108     	add	x8, x8, #0x0
		00000000000144c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf9c
   144c4: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		00000000000144c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bfa
   144c8: 91000021     	add	x1, x1, #0x0
		00000000000144c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bfa
   144cc: 12001d24     	and	w4, w9, #0xff
   144d0: 2a0003f3     	mov	w19, w0
   144d4: aa0803e0     	mov	x0, x8
   144d8: 528018e2     	mov	w2, #0xc7               // =199
   144dc: 2a1403e3     	mov	w3, w20
   144e0: 94000000     	bl	0x144e0 <syna_tcm_set_game_partition_config+0x2c0>
		00000000000144e0:  R_AARCH64_CALL26	_printk
   144e4: 2a1303e0     	mov	w0, w19
   144e8: 17ffffe3     	b	0x14474 <syna_tcm_set_game_partition_config+0x254>
   144ec: d4200020     	brk	#0x1
