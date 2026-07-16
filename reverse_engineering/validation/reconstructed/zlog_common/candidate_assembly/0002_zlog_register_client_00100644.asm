
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000264 <zlog_register_client>:
     264: d503233f     	paciasp
     268: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     26c: a9015ff8     	stp	x24, x23, [sp, #0x10]
     270: a90257f6     	stp	x22, x21, [sp, #0x20]
     274: a9034ff4     	stp	x20, x19, [sp, #0x30]
     278: 910003fd     	mov	x29, sp
     27c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000027c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x24c4
     280: 39400108     	ldrb	w8, [x8]
		0000000000000280:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x24c4
     284: 37000128     	tbnz	w8, #0x0, 0x2a8 <zlog_register_client+0x44>
     288: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000288:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     28c: 91000021     	add	x1, x1, #0x0
		000000000000028c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     290: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56b
     294: 91000000     	add	x0, x0, #0x0
		0000000000000294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56b
     298: aa0103e2     	mov	x2, x1
     29c: 94000000     	bl	0x29c <zlog_register_client+0x38>
		000000000000029c:  R_AARCH64_CALL26	_printk
     2a0: aa1f03f4     	mov	x20, xzr
     2a4: 140000ae     	b	0x55c <zlog_register_client+0x2f8>
     2a8: aa0003f3     	mov	x19, x0
     2ac: b5000100     	cbnz	x0, 0x2cc <zlog_register_client+0x68>
     2b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a9
     2b4: 91000000     	add	x0, x0, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a9
     2b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     2bc: 91000021     	add	x1, x1, #0x0
		00000000000002bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     2c0: 94000000     	bl	0x2c0 <zlog_register_client+0x5c>
		00000000000002c0:  R_AARCH64_CALL26	_printk
     2c4: aa1f03f4     	mov	x20, xzr
     2c8: 140000a5     	b	0x55c <zlog_register_client+0x2f8>
     2cc: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2d0: 91000294     	add	x20, x20, #0x0
		00000000000002d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2d4: 52800415     	mov	w21, #0x20              // =32
     2d8: 14000006     	b	0x2f0 <zlog_register_client+0x8c>
     2dc: 9102c280     	add	x0, x20, #0xb0
     2e0: 94000000     	bl	0x2e0 <zlog_register_client+0x7c>
		00000000000002e0:  R_AARCH64_CALL26	mutex_unlock
     2e4: f10006b5     	subs	x21, x21, #0x1
     2e8: 91048294     	add	x20, x20, #0x120
     2ec: 540005c0     	b.eq	0x3a4 <zlog_register_client+0x140>
     2f0: 9102c280     	add	x0, x20, #0xb0
     2f4: 94000000     	bl	0x2f4 <zlog_register_client+0x90>
		00000000000002f4:  R_AARCH64_CALL26	mutex_lock
     2f8: 39446288     	ldrb	w8, [x20, #0x118]
     2fc: 34ffff08     	cbz	w8, 0x2dc <zlog_register_client+0x78>
     300: b940e288     	ldr	w8, [x20, #0xe0]
     304: b9400269     	ldr	w9, [x19]
     308: 6b09011f     	cmp	w8, w9
     30c: 54fffe81     	b.ne	0x2dc <zlog_register_client+0x78>
     310: f9400661     	ldr	x1, [x19, #0x8]
     314: 91001280     	add	x0, x20, #0x4
     318: 528003e2     	mov	w2, #0x1f               // =31
     31c: 94000000     	bl	0x31c <zlog_register_client+0xb8>
		000000000000031c:  R_AARCH64_CALL26	strncmp
     320: 35fffde0     	cbnz	w0, 0x2dc <zlog_register_client+0x78>
     324: f9400a61     	ldr	x1, [x19, #0x10]
     328: 91009280     	add	x0, x20, #0x24
     32c: 528003e2     	mov	w2, #0x1f               // =31
     330: 94000000     	bl	0x330 <zlog_register_client+0xcc>
		0000000000000330:  R_AARCH64_CALL26	strncmp
     334: 35fffd40     	cbnz	w0, 0x2dc <zlog_register_client+0x78>
     338: f9400e61     	ldr	x1, [x19, #0x18]
     33c: 91011280     	add	x0, x20, #0x44
     340: 528007e2     	mov	w2, #0x3f               // =63
     344: 94000000     	bl	0x344 <zlog_register_client+0xe0>
		0000000000000344:  R_AARCH64_CALL26	strncmp
     348: 35fffca0     	cbnz	w0, 0x2dc <zlog_register_client+0x78>
     34c: f9401261     	ldr	x1, [x19, #0x20]
     350: 91021280     	add	x0, x20, #0x84
     354: 528003e2     	mov	w2, #0x1f               // =31
     358: 94000000     	bl	0x358 <zlog_register_client+0xf4>
		0000000000000358:  R_AARCH64_CALL26	strncmp
     35c: 35fffc00     	cbnz	w0, 0x2dc <zlog_register_client+0x78>
     360: 9102c280     	add	x0, x20, #0xb0
     364: 94000000     	bl	0x364 <zlog_register_client+0x100>
		0000000000000364:  R_AARCH64_CALL26	mutex_unlock
     368: b9400263     	ldr	w3, [x19]
     36c: f9400664     	ldr	x4, [x19, #0x8]
     370: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000370:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b
     374: 91000021     	add	x1, x1, #0x0
		0000000000000374:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b
     378: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174
     37c: 91000000     	add	x0, x0, #0x0
		000000000000037c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174
     380: aa0103e2     	mov	x2, x1
     384: 94000000     	bl	0x384 <zlog_register_client+0x120>
		0000000000000384:  R_AARCH64_CALL26	_printk
     388: aa1403e2     	mov	x2, x20
     38c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000038c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e8
     390: 91000000     	add	x0, x0, #0x0
		0000000000000390:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e8
     394: b8404443     	ldr	w3, [x2], #0x4
     398: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     39c: 91000021     	add	x1, x1, #0x0
		000000000000039c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     3a0: 1400006e     	b	0x558 <zlog_register_client+0x2f4>
     3a4: f9400662     	ldr	x2, [x19, #0x8]
     3a8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff
     3ac: 91000000     	add	x0, x0, #0x0
		00000000000003ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff
     3b0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     3b4: 91000021     	add	x1, x1, #0x0
		00000000000003b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     3b8: 94000000     	bl	0x3b8 <zlog_register_client+0x154>
		00000000000003b8:  R_AARCH64_CALL26	_printk
     3bc: aa1f03f8     	mov	x24, xzr
     3c0: 90000017     	adrp	x23, 0x0 <.text>
		00000000000003c0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     3c4: 910002f7     	add	x23, x23, #0x0
		00000000000003c4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x118
     3c8: d101a2f5     	sub	x21, x23, #0x68
     3cc: aa1503e0     	mov	x0, x21
     3d0: 94000000     	bl	0x3d0 <zlog_register_client+0x16c>
		00000000000003d0:  R_AARCH64_CALL26	mutex_lock
     3d4: 394002e8     	ldrb	w8, [x23]
     3d8: 340001e8     	cbz	w8, 0x414 <zlog_register_client+0x1b0>
     3dc: aa1503e0     	mov	x0, x21
     3e0: 94000000     	bl	0x3e0 <zlog_register_client+0x17c>
		00000000000003e0:  R_AARCH64_CALL26	mutex_unlock
     3e4: 91000718     	add	x24, x24, #0x1
     3e8: 910482f7     	add	x23, x23, #0x120
     3ec: f100831f     	cmp	x24, #0x20
     3f0: 54fffec1     	b.ne	0x3c8 <zlog_register_client+0x164>
     3f4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e
     3f8: 91000000     	add	x0, x0, #0x0
		00000000000003f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e
     3fc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     400: 91000021     	add	x1, x1, #0x0
		0000000000000400:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     404: 52800402     	mov	w2, #0x20               // =32
     408: 94000000     	bl	0x408 <zlog_register_client+0x1a4>
		0000000000000408:  R_AARCH64_CALL26	_printk
     40c: aa1f03f4     	mov	x20, xzr
     410: 14000053     	b	0x55c <zlog_register_client+0x2f8>
     414: aa1503e0     	mov	x0, x21
     418: 94000000     	bl	0x418 <zlog_register_client+0x1b4>
		0000000000000418:  R_AARCH64_CALL26	mutex_unlock
     41c: aa1503e0     	mov	x0, x21
     420: 94000000     	bl	0x420 <zlog_register_client+0x1bc>
		0000000000000420:  R_AARCH64_CALL26	mutex_lock
     424: d503201f     	nop
     428: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000428:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     42c: 5281b801     	mov	w1, #0xdc0              // =3520
     430: 52810002     	mov	w2, #0x800              // =2048
     434: f9400100     	ldr	x0, [x8]
		0000000000000434:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     438: 94000000     	bl	0x438 <zlog_register_client+0x1d4>
		0000000000000438:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     43c: f81f02e0     	stur	x0, [x23, #-0x10]
     440: b50002e0     	cbnz	x0, 0x49c <zlog_register_client+0x238>
     444: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ec
     448: 91000000     	add	x0, x0, #0x0
		0000000000000448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ec
     44c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000044c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     450: 91000021     	add	x1, x1, #0x0
		0000000000000450:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     454: 94000000     	bl	0x454 <zlog_register_client+0x1f0>
		0000000000000454:  R_AARCH64_CALL26	_printk
     458: aa1503e0     	mov	x0, x21
     45c: 94000000     	bl	0x45c <zlog_register_client+0x1f8>
		000000000000045c:  R_AARCH64_CALL26	mutex_unlock
     460: aa1f03f4     	mov	x20, xzr
     464: 1400003e     	b	0x55c <zlog_register_client+0x2f8>
     468: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000468:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     46c: 91000108     	add	x8, x8, #0x0
		000000000000046c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     470: d5384114     	mrs	x20, SP_EL0
     474: f9402a96     	ldr	x22, [x20, #0x50]
     478: f9002a88     	str	x8, [x20, #0x50]
     47c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000047c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     480: f9400100     	ldr	x0, [x8]
		0000000000000480:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     484: 5281b801     	mov	w1, #0xdc0              // =3520
     488: 52810002     	mov	w2, #0x800              // =2048
     48c: 94000000     	bl	0x48c <zlog_register_client+0x228>
		000000000000048c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     490: f9002a96     	str	x22, [x20, #0x50]
     494: f81f02e0     	stur	x0, [x23, #-0x10]
     498: b4fffd60     	cbz	x0, 0x444 <zlog_register_client+0x1e0>
     49c: 52810008     	mov	w8, #0x800              // =2048
     4a0: a93dfeff     	stp	xzr, xzr, [x23, #-0x28]
     4a4: d10452f6     	sub	x22, x23, #0x114
     4a8: f81e82e8     	stur	x8, [x23, #-0x18]
     4ac: aa1603e0     	mov	x0, x22
     4b0: 528003e2     	mov	w2, #0x1f               // =31
     4b4: f9400661     	ldr	x1, [x19, #0x8]
     4b8: 94000000     	bl	0x4b8 <zlog_register_client+0x254>
		00000000000004b8:  R_AARCH64_CALL26	strncpy
     4bc: 3810b2ff     	sturb	wzr, [x23, #-0xf5]
     4c0: f9400a61     	ldr	x1, [x19, #0x10]
     4c4: b40000a1     	cbz	x1, 0x4d8 <zlog_register_client+0x274>
     4c8: d103d2e0     	sub	x0, x23, #0xf4
     4cc: 528003e2     	mov	w2, #0x1f               // =31
     4d0: 94000000     	bl	0x4d0 <zlog_register_client+0x26c>
		00000000000004d0:  R_AARCH64_CALL26	strncpy
     4d4: 3812b2ff     	sturb	wzr, [x23, #-0xd5]
     4d8: f9400e61     	ldr	x1, [x19, #0x18]
     4dc: d10462f4     	sub	x20, x23, #0x118
     4e0: b40000a1     	cbz	x1, 0x4f4 <zlog_register_client+0x290>
     4e4: d10352e0     	sub	x0, x23, #0xd4
     4e8: 528007e2     	mov	w2, #0x3f               // =63
     4ec: 94000000     	bl	0x4ec <zlog_register_client+0x288>
		00000000000004ec:  R_AARCH64_CALL26	strncpy
     4f0: 3816b2ff     	sturb	wzr, [x23, #-0x95]
     4f4: f9401261     	ldr	x1, [x19, #0x20]
     4f8: b40000a1     	cbz	x1, 0x50c <zlog_register_client+0x2a8>
     4fc: d10252e0     	sub	x0, x23, #0x94
     500: 528003e2     	mov	w2, #0x1f               // =31
     504: 94000000     	bl	0x504 <zlog_register_client+0x2a0>
		0000000000000504:  R_AARCH64_CALL26	strncpy
     508: 3818b2ff     	sturb	wzr, [x23, #-0x75]
     50c: b9000298     	str	w24, [x20]
     510: 52800029     	mov	w9, #0x1                // =1
     514: b9400268     	ldr	w8, [x19]
     518: b81c82e8     	stur	w8, [x23, #-0x38]
     51c: f9401668     	ldr	x8, [x19, #0x28]
     520: 390002e9     	strb	w9, [x23]
     524: f81902e8     	stur	x8, [x23, #-0x70]
     528: 14000014     	b	0x578 <zlog_register_client+0x314>
     52c: d100c2e8     	sub	x8, x23, #0x30
     530: 52800049     	mov	w9, #0x2                // =2
     534: f829311f     	stset	x9, [x8]
     538: aa1503e0     	mov	x0, x21
     53c: 94000000     	bl	0x53c <zlog_register_client+0x2d8>
		000000000000053c:  R_AARCH64_CALL26	mutex_unlock
     540: b9400283     	ldr	w3, [x20]
     544: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000544:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     548: 91000000     	add	x0, x0, #0x0
		0000000000000548:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     54c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000054c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c7
     550: 91000021     	add	x1, x1, #0x0
		0000000000000550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c7
     554: aa1603e2     	mov	x2, x22
     558: 94000000     	bl	0x558 <zlog_register_client+0x2f4>
		0000000000000558:  R_AARCH64_CALL26	_printk
     55c: aa1403e0     	mov	x0, x20
     560: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     564: a94257f6     	ldp	x22, x21, [sp, #0x20]
     568: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     56c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     570: d50323bf     	autiasp
     574: d65f03c0     	ret
     578: d100c2e8     	sub	x8, x23, #0x30
     57c: f9800111     	prfm	pstl1strm, [x8]
     580: c85f7d09     	ldxr	x9, [x8]
     584: b27f0129     	orr	x9, x9, #0x2
     588: c80a7d09     	stxr	w10, x9, [x8]
     58c: 35ffffaa     	cbnz	w10, 0x580 <zlog_register_client+0x31c>
     590: 17ffffea     	b	0x538 <zlog_register_client+0x2d4>
