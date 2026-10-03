
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
     284: 36000128     	tbz	w8, #0x0, 0x2a8 <zlog_register_client+0x44>
     288: aa0003f3     	mov	x19, x0
     28c: b50001c0     	cbnz	x0, 0x2c4 <zlog_register_client+0x60>
     290: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000290:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ea
     294: 91000000     	add	x0, x0, #0x0
		0000000000000294:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ea
     298: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000298:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     29c: 91000021     	add	x1, x1, #0x0
		000000000000029c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     2a0: 94000000     	bl	0x2a0 <zlog_register_client+0x3c>
		00000000000002a0:  R_AARCH64_CALL26	_printk
     2a4: 14000060     	b	0x424 <zlog_register_client+0x1c0>
     2a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     2ac: 91000021     	add	x1, x1, #0x0
		00000000000002ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     2b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x581
     2b4: 91000000     	add	x0, x0, #0x0
		00000000000002b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x581
     2b8: aa0103e2     	mov	x2, x1
     2bc: 94000000     	bl	0x2bc <zlog_register_client+0x58>
		00000000000002bc:  R_AARCH64_CALL26	_printk
     2c0: 14000059     	b	0x424 <zlog_register_client+0x1c0>
     2c4: aa1f03f5     	mov	x21, xzr
     2c8: 90000014     	adrp	x20, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     2cc: 91000294     	add	x20, x20, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     2d0: 14000007     	b	0x2ec <zlog_register_client+0x88>
     2d4: 9102c280     	add	x0, x20, #0xb0
     2d8: 94000000     	bl	0x2d8 <zlog_register_client+0x74>
		00000000000002d8:  R_AARCH64_CALL26	mutex_unlock
     2dc: 910006b5     	add	x21, x21, #0x1
     2e0: 91048294     	add	x20, x20, #0x120
     2e4: f10082bf     	cmp	x21, #0x20
     2e8: 54000600     	b.eq	0x3a8 <zlog_register_client+0x144>
     2ec: 9102c280     	add	x0, x20, #0xb0
     2f0: 94000000     	bl	0x2f0 <zlog_register_client+0x8c>
		00000000000002f0:  R_AARCH64_CALL26	mutex_lock
     2f4: 39446288     	ldrb	w8, [x20, #0x118]
     2f8: 34fffee8     	cbz	w8, 0x2d4 <zlog_register_client+0x70>
     2fc: b940e288     	ldr	w8, [x20, #0xe0]
     300: b9400269     	ldr	w9, [x19]
     304: 6b09011f     	cmp	w8, w9
     308: 54fffe61     	b.ne	0x2d4 <zlog_register_client+0x70>
     30c: f9400661     	ldr	x1, [x19, #0x8]
     310: 91001280     	add	x0, x20, #0x4
     314: 528003e2     	mov	w2, #0x1f               // =31
     318: 94000000     	bl	0x318 <zlog_register_client+0xb4>
		0000000000000318:  R_AARCH64_CALL26	strncmp
     31c: 35fffdc0     	cbnz	w0, 0x2d4 <zlog_register_client+0x70>
     320: f9400a61     	ldr	x1, [x19, #0x10]
     324: 91009280     	add	x0, x20, #0x24
     328: 528003e2     	mov	w2, #0x1f               // =31
     32c: 94000000     	bl	0x32c <zlog_register_client+0xc8>
		000000000000032c:  R_AARCH64_CALL26	strncmp
     330: 35fffd20     	cbnz	w0, 0x2d4 <zlog_register_client+0x70>
     334: f9400e61     	ldr	x1, [x19, #0x18]
     338: 91011280     	add	x0, x20, #0x44
     33c: 528007e2     	mov	w2, #0x3f               // =63
     340: 94000000     	bl	0x340 <zlog_register_client+0xdc>
		0000000000000340:  R_AARCH64_CALL26	strncmp
     344: 35fffc80     	cbnz	w0, 0x2d4 <zlog_register_client+0x70>
     348: f9401261     	ldr	x1, [x19, #0x20]
     34c: 91021280     	add	x0, x20, #0x84
     350: 528003e2     	mov	w2, #0x1f               // =31
     354: 94000000     	bl	0x354 <zlog_register_client+0xf0>
		0000000000000354:  R_AARCH64_CALL26	strncmp
     358: 35fffbe0     	cbnz	w0, 0x2d4 <zlog_register_client+0x70>
     35c: 9102c280     	add	x0, x20, #0xb0
     360: 94000000     	bl	0x360 <zlog_register_client+0xfc>
		0000000000000360:  R_AARCH64_CALL26	mutex_unlock
     364: b9400263     	ldr	w3, [x19]
     368: f9400664     	ldr	x4, [x19, #0x8]
     36c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000036c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b
     370: 91000021     	add	x1, x1, #0x0
		0000000000000370:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b
     374: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000374:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174
     378: 91000000     	add	x0, x0, #0x0
		0000000000000378:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174
     37c: aa0103e2     	mov	x2, x1
     380: 94000000     	bl	0x380 <zlog_register_client+0x11c>
		0000000000000380:  R_AARCH64_CALL26	_printk
     384: f27b6abf     	tst	x21, #0xffffffe0
     388: 54000101     	b.ne	0x3a8 <zlog_register_client+0x144>
     38c: aa1403e2     	mov	x2, x20
     390: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000390:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fe
     394: 91000000     	add	x0, x0, #0x0
		0000000000000394:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fe
     398: b8404443     	ldr	w3, [x2], #0x4
     39c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000039c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     3a0: 91000021     	add	x1, x1, #0x0
		00000000000003a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     3a4: 14000076     	b	0x57c <zlog_register_client+0x318>
     3a8: f9400662     	ldr	x2, [x19, #0x8]
     3ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x340
     3b0: 91000000     	add	x0, x0, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x340
     3b4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     3b8: 91000021     	add	x1, x1, #0x0
		00000000000003b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     3bc: 94000000     	bl	0x3bc <zlog_register_client+0x158>
		00000000000003bc:  R_AARCH64_CALL26	_printk
     3c0: aa1f03f8     	mov	x24, xzr
     3c4: 90000017     	adrp	x23, 0x0 <.text>
		00000000000003c4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     3c8: 910002f7     	add	x23, x23, #0x0
		00000000000003c8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x118
     3cc: d101a2f5     	sub	x21, x23, #0x68
     3d0: aa1503e0     	mov	x0, x21
     3d4: 94000000     	bl	0x3d4 <zlog_register_client+0x170>
		00000000000003d4:  R_AARCH64_CALL26	mutex_lock
     3d8: 394002e8     	ldrb	w8, [x23]
     3dc: 34000108     	cbz	w8, 0x3fc <zlog_register_client+0x198>
     3e0: aa1503e0     	mov	x0, x21
     3e4: 94000000     	bl	0x3e4 <zlog_register_client+0x180>
		00000000000003e4:  R_AARCH64_CALL26	mutex_unlock
     3e8: 91000718     	add	x24, x24, #0x1
     3ec: 910482f7     	add	x23, x23, #0x120
     3f0: f100831f     	cmp	x24, #0x20
     3f4: 54fffec1     	b.ne	0x3cc <zlog_register_client+0x168>
     3f8: 14000005     	b	0x40c <zlog_register_client+0x1a8>
     3fc: aa1503e0     	mov	x0, x21
     400: 94000000     	bl	0x400 <zlog_register_client+0x19c>
		0000000000000400:  R_AARCH64_CALL26	mutex_unlock
     404: 71007f1f     	cmp	w24, #0x1f
     408: 540001e9     	b.ls	0x444 <zlog_register_client+0x1e0>
     40c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000040c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e
     410: 91000000     	add	x0, x0, #0x0
		0000000000000410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e
     414: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     418: 91000021     	add	x1, x1, #0x0
		0000000000000418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     41c: 52800402     	mov	w2, #0x20               // =32
     420: 94000000     	bl	0x420 <zlog_register_client+0x1bc>
		0000000000000420:  R_AARCH64_CALL26	_printk
     424: aa1f03f4     	mov	x20, xzr
     428: aa1403e0     	mov	x0, x20
     42c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     430: a94257f6     	ldp	x22, x21, [sp, #0x20]
     434: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     438: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     43c: d50323bf     	autiasp
     440: d65f03c0     	ret
     444: aa1503e0     	mov	x0, x21
     448: 94000000     	bl	0x448 <zlog_register_client+0x1e4>
		0000000000000448:  R_AARCH64_CALL26	mutex_lock
     44c: d503201f     	nop
     450: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000450:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     454: 5281b801     	mov	w1, #0xdc0              // =3520
     458: 52810002     	mov	w2, #0x800              // =2048
     45c: f9400100     	ldr	x0, [x8]
		000000000000045c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     460: 94000000     	bl	0x460 <zlog_register_client+0x1fc>
		0000000000000460:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     464: f81f02e0     	stur	x0, [x23, #-0x10]
     468: b50002c0     	cbnz	x0, 0x4c0 <zlog_register_client+0x25c>
     46c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000046c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x502
     470: 91000000     	add	x0, x0, #0x0
		0000000000000470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x502
     474: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     478: 91000021     	add	x1, x1, #0x0
		0000000000000478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     47c: 94000000     	bl	0x47c <zlog_register_client+0x218>
		000000000000047c:  R_AARCH64_CALL26	_printk
     480: aa1503e0     	mov	x0, x21
     484: 94000000     	bl	0x484 <zlog_register_client+0x220>
		0000000000000484:  R_AARCH64_CALL26	mutex_unlock
     488: 17ffffe7     	b	0x424 <zlog_register_client+0x1c0>
     48c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000048c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     490: 91000108     	add	x8, x8, #0x0
		0000000000000490:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     494: d5384114     	mrs	x20, SP_EL0
     498: f9402a96     	ldr	x22, [x20, #0x50]
     49c: f9002a88     	str	x8, [x20, #0x50]
     4a0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000004a0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     4a4: f9400100     	ldr	x0, [x8]
		00000000000004a4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     4a8: 5281b801     	mov	w1, #0xdc0              // =3520
     4ac: 52810002     	mov	w2, #0x800              // =2048
     4b0: 94000000     	bl	0x4b0 <zlog_register_client+0x24c>
		00000000000004b0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     4b4: f9002a96     	str	x22, [x20, #0x50]
     4b8: f81f02e0     	stur	x0, [x23, #-0x10]
     4bc: b4fffd80     	cbz	x0, 0x46c <zlog_register_client+0x208>
     4c0: 52810008     	mov	w8, #0x800              // =2048
     4c4: f81d82ff     	stur	xzr, [x23, #-0x28]
     4c8: d10452f6     	sub	x22, x23, #0x114
     4cc: a93e22ff     	stp	xzr, x8, [x23, #-0x20]
     4d0: aa1603e0     	mov	x0, x22
     4d4: 528003e2     	mov	w2, #0x1f               // =31
     4d8: f9400661     	ldr	x1, [x19, #0x8]
     4dc: 94000000     	bl	0x4dc <zlog_register_client+0x278>
		00000000000004dc:  R_AARCH64_CALL26	strncpy
     4e0: 3810b2ff     	sturb	wzr, [x23, #-0xf5]
     4e4: f9400a61     	ldr	x1, [x19, #0x10]
     4e8: b40000a1     	cbz	x1, 0x4fc <zlog_register_client+0x298>
     4ec: d103d2e0     	sub	x0, x23, #0xf4
     4f0: 528003e2     	mov	w2, #0x1f               // =31
     4f4: 94000000     	bl	0x4f4 <zlog_register_client+0x290>
		00000000000004f4:  R_AARCH64_CALL26	strncpy
     4f8: 3812b2ff     	sturb	wzr, [x23, #-0xd5]
     4fc: f9400e61     	ldr	x1, [x19, #0x18]
     500: d10462f4     	sub	x20, x23, #0x118
     504: b40000a1     	cbz	x1, 0x518 <zlog_register_client+0x2b4>
     508: d10352e0     	sub	x0, x23, #0xd4
     50c: 528007e2     	mov	w2, #0x3f               // =63
     510: 94000000     	bl	0x510 <zlog_register_client+0x2ac>
		0000000000000510:  R_AARCH64_CALL26	strncpy
     514: 3816b2ff     	sturb	wzr, [x23, #-0x95]
     518: f9401261     	ldr	x1, [x19, #0x20]
     51c: b40000a1     	cbz	x1, 0x530 <zlog_register_client+0x2cc>
     520: d10252e0     	sub	x0, x23, #0x94
     524: 528003e2     	mov	w2, #0x1f               // =31
     528: 94000000     	bl	0x528 <zlog_register_client+0x2c4>
		0000000000000528:  R_AARCH64_CALL26	strncpy
     52c: 3818b2ff     	sturb	wzr, [x23, #-0x75]
     530: b9400268     	ldr	w8, [x19]
     534: b9000298     	str	w24, [x20]
     538: 52800029     	mov	w9, #0x1                // =1
     53c: b81c82e8     	stur	w8, [x23, #-0x38]
     540: f9401668     	ldr	x8, [x19, #0x28]
     544: 390002e9     	strb	w9, [x23]
     548: f81902e8     	stur	x8, [x23, #-0x70]
     54c: 1400000e     	b	0x584 <zlog_register_client+0x320>
     550: d100c2e8     	sub	x8, x23, #0x30
     554: 52800049     	mov	w9, #0x2                // =2
     558: f829311f     	stset	x9, [x8]
     55c: aa1503e0     	mov	x0, x21
     560: 94000000     	bl	0x560 <zlog_register_client+0x2fc>
		0000000000000560:  R_AARCH64_CALL26	mutex_unlock
     564: b9400283     	ldr	w3, [x20]
     568: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     56c: 91000000     	add	x0, x0, #0x0
		000000000000056c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     570: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6dd
     574: 91000021     	add	x1, x1, #0x0
		0000000000000574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6dd
     578: aa1603e2     	mov	x2, x22
     57c: 94000000     	bl	0x57c <zlog_register_client+0x318>
		000000000000057c:  R_AARCH64_CALL26	_printk
     580: 17ffffaa     	b	0x428 <zlog_register_client+0x1c4>
     584: d100c2e8     	sub	x8, x23, #0x30
     588: f9800111     	prfm	pstl1strm, [x8]
     58c: c85f7d09     	ldxr	x9, [x8]
     590: b27f0129     	orr	x9, x9, #0x2
     594: c80a7d09     	stxr	w10, x9, [x8]
     598: 35ffffaa     	cbnz	w10, 0x58c <zlog_register_client+0x328>
     59c: 17fffff0     	b	0x55c <zlog_register_client+0x2f8>
