
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000019c <zlog_register_client>:
     19c: d503233f     	paciasp
     1a0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     1a4: a9015ff8     	stp	x24, x23, [sp, #0x10]
     1a8: a90257f6     	stp	x22, x21, [sp, #0x20]
     1ac: a9034ff4     	stp	x20, x19, [sp, #0x30]
     1b0: 910003fd     	mov	x29, sp
     1b4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001b4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0x24c4
     1b8: 39400108     	ldrb	w8, [x8]
		00000000000001b8:  R_AARCH64_LDST8_ABS_LO12_NC	zlog_exact_bss_base+0x24c4
     1bc: 36000128     	tbz	w8, #0x0, 0x1e0 <zlog_register_client+0x44>
     1c0: aa0003f3     	mov	x19, x0
     1c4: b50001c0     	cbnz	x0, 0x1fc <zlog_register_client+0x60>
     1c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001c8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x2ea
     1cc: 91000000     	add	x0, x0, #0x0
		00000000000001cc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x2ea
     1d0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001d0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     1d4: 91000021     	add	x1, x1, #0x0
		00000000000001d4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     1d8: 94000000     	bl	0x1d8 <zlog_register_client+0x3c>
		00000000000001d8:  R_AARCH64_CALL26	_printk
     1dc: 14000060     	b	0x35c <zlog_register_client+0x1c0>
     1e0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     1e4: 91000021     	add	x1, x1, #0x0
		00000000000001e4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     1e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x581
     1ec: 91000000     	add	x0, x0, #0x0
		00000000000001ec:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x581
     1f0: aa0103e2     	mov	x2, x1
     1f4: 94000000     	bl	0x1f4 <zlog_register_client+0x58>
		00000000000001f4:  R_AARCH64_CALL26	_printk
     1f8: 14000059     	b	0x35c <zlog_register_client+0x1c0>
     1fc: aa1f03f5     	mov	x21, xzr
     200: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server
     204: 91000294     	add	x20, x20, #0x0
		0000000000000204:  R_AARCH64_ADD_ABS_LO12_NC	g_zlog_server
     208: 14000007     	b	0x224 <zlog_register_client+0x88>
     20c: 9102c280     	add	x0, x20, #0xb0
     210: 94000000     	bl	0x210 <zlog_register_client+0x74>
		0000000000000210:  R_AARCH64_CALL26	mutex_unlock
     214: 910006b5     	add	x21, x21, #0x1
     218: 91048294     	add	x20, x20, #0x120
     21c: f10082bf     	cmp	x21, #0x20
     220: 54000600     	b.eq	0x2e0 <zlog_register_client+0x144>
     224: 9102c280     	add	x0, x20, #0xb0
     228: 94000000     	bl	0x228 <zlog_register_client+0x8c>
		0000000000000228:  R_AARCH64_CALL26	mutex_lock
     22c: 39446288     	ldrb	w8, [x20, #0x118]
     230: 34fffee8     	cbz	w8, 0x20c <zlog_register_client+0x70>
     234: b940e288     	ldr	w8, [x20, #0xe0]
     238: b9400269     	ldr	w9, [x19]
     23c: 6b09011f     	cmp	w8, w9
     240: 54fffe61     	b.ne	0x20c <zlog_register_client+0x70>
     244: f9400661     	ldr	x1, [x19, #0x8]
     248: 91001280     	add	x0, x20, #0x4
     24c: 528003e2     	mov	w2, #0x1f               // =31
     250: 94000000     	bl	0x250 <zlog_register_client+0xb4>
		0000000000000250:  R_AARCH64_CALL26	strncmp
     254: 35fffdc0     	cbnz	w0, 0x20c <zlog_register_client+0x70>
     258: f9400a61     	ldr	x1, [x19, #0x10]
     25c: 91009280     	add	x0, x20, #0x24
     260: 528003e2     	mov	w2, #0x1f               // =31
     264: 94000000     	bl	0x264 <zlog_register_client+0xc8>
		0000000000000264:  R_AARCH64_CALL26	strncmp
     268: 35fffd20     	cbnz	w0, 0x20c <zlog_register_client+0x70>
     26c: f9400e61     	ldr	x1, [x19, #0x18]
     270: 91011280     	add	x0, x20, #0x44
     274: 528007e2     	mov	w2, #0x3f               // =63
     278: 94000000     	bl	0x278 <zlog_register_client+0xdc>
		0000000000000278:  R_AARCH64_CALL26	strncmp
     27c: 35fffc80     	cbnz	w0, 0x20c <zlog_register_client+0x70>
     280: f9401261     	ldr	x1, [x19, #0x20]
     284: 91021280     	add	x0, x20, #0x84
     288: 528003e2     	mov	w2, #0x1f               // =31
     28c: 94000000     	bl	0x28c <zlog_register_client+0xf0>
		000000000000028c:  R_AARCH64_CALL26	strncmp
     290: 35fffbe0     	cbnz	w0, 0x20c <zlog_register_client+0x70>
     294: 9102c280     	add	x0, x20, #0xb0
     298: 94000000     	bl	0x298 <zlog_register_client+0xfc>
		0000000000000298:  R_AARCH64_CALL26	mutex_unlock
     29c: b9400263     	ldr	w3, [x19]
     2a0: f9400664     	ldr	x4, [x19, #0x8]
     2a4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002a4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x5b
     2a8: 91000021     	add	x1, x1, #0x0
		00000000000002a8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x5b
     2ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002ac:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x174
     2b0: 91000000     	add	x0, x0, #0x0
		00000000000002b0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x174
     2b4: aa0103e2     	mov	x2, x1
     2b8: 94000000     	bl	0x2b8 <zlog_register_client+0x11c>
		00000000000002b8:  R_AARCH64_CALL26	_printk
     2bc: f27b6abf     	tst	x21, #0xffffffe0
     2c0: 54000101     	b.ne	0x2e0 <zlog_register_client+0x144>
     2c4: aa1403e2     	mov	x2, x20
     2c8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6fe
     2cc: 91000000     	add	x0, x0, #0x0
		00000000000002cc:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6fe
     2d0: b8404443     	ldr	w3, [x2], #0x4
     2d4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002d4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     2d8: 91000021     	add	x1, x1, #0x0
		00000000000002d8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     2dc: 14000076     	b	0x4b4 <zlog_register_client+0x318>
     2e0: f9400662     	ldr	x2, [x19, #0x8]
     2e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002e4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x340
     2e8: 91000000     	add	x0, x0, #0x0
		00000000000002e8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x340
     2ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000002ec:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     2f0: 91000021     	add	x1, x1, #0x0
		00000000000002f0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     2f4: 94000000     	bl	0x2f4 <zlog_register_client+0x158>
		00000000000002f4:  R_AARCH64_CALL26	_printk
     2f8: aa1f03f8     	mov	x24, xzr
     2fc: 90000017     	adrp	x23, 0x0 <.text>
		00000000000002fc:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_bss_base+0x118
     300: 910002f7     	add	x23, x23, #0x0
		0000000000000300:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_bss_base+0x118
     304: d101a2f5     	sub	x21, x23, #0x68
     308: aa1503e0     	mov	x0, x21
     30c: 94000000     	bl	0x30c <zlog_register_client+0x170>
		000000000000030c:  R_AARCH64_CALL26	mutex_lock
     310: 394002e8     	ldrb	w8, [x23]
     314: 34000108     	cbz	w8, 0x334 <zlog_register_client+0x198>
     318: aa1503e0     	mov	x0, x21
     31c: 94000000     	bl	0x31c <zlog_register_client+0x180>
		000000000000031c:  R_AARCH64_CALL26	mutex_unlock
     320: 91000718     	add	x24, x24, #0x1
     324: 910482f7     	add	x23, x23, #0x120
     328: f100831f     	cmp	x24, #0x20
     32c: 54fffec1     	b.ne	0x304 <zlog_register_client+0x168>
     330: 14000005     	b	0x344 <zlog_register_client+0x1a8>
     334: aa1503e0     	mov	x0, x21
     338: 94000000     	bl	0x338 <zlog_register_client+0x19c>
		0000000000000338:  R_AARCH64_CALL26	mutex_unlock
     33c: 71007f1f     	cmp	w24, #0x1f
     340: 540001e9     	b.ls	0x37c <zlog_register_client+0x1e0>
     344: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x9e
     348: 91000000     	add	x0, x0, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x9e
     34c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000034c:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     350: 91000021     	add	x1, x1, #0x0
		0000000000000350:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     354: 52800402     	mov	w2, #0x20               // =32
     358: 94000000     	bl	0x358 <zlog_register_client+0x1bc>
		0000000000000358:  R_AARCH64_CALL26	_printk
     35c: aa1f03f4     	mov	x20, xzr
     360: aa1403e0     	mov	x0, x20
     364: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     368: a94257f6     	ldp	x22, x21, [sp, #0x20]
     36c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     370: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     374: d50323bf     	autiasp
     378: d65f03c0     	ret
     37c: aa1503e0     	mov	x0, x21
     380: 94000000     	bl	0x380 <zlog_register_client+0x1e4>
		0000000000000380:  R_AARCH64_CALL26	mutex_lock
     384: d503201f     	nop
     388: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000388:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     38c: 5281b801     	mov	w1, #0xdc0              // =3520
     390: 52810002     	mov	w2, #0x800              // =2048
     394: f9400100     	ldr	x0, [x8]
		0000000000000394:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     398: 94000000     	bl	0x398 <zlog_register_client+0x1fc>
		0000000000000398:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     39c: f81f02e0     	stur	x0, [x23, #-0x10]
     3a0: b50002c0     	cbnz	x0, 0x3f8 <zlog_register_client+0x25c>
     3a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000003a4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x502
     3a8: 91000000     	add	x0, x0, #0x0
		00000000000003a8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x502
     3ac: 90000001     	adrp	x1, 0x0 <.text>
		00000000000003ac:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     3b0: 91000021     	add	x1, x1, #0x0
		00000000000003b0:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     3b4: 94000000     	bl	0x3b4 <zlog_register_client+0x218>
		00000000000003b4:  R_AARCH64_CALL26	_printk
     3b8: aa1503e0     	mov	x0, x21
     3bc: 94000000     	bl	0x3bc <zlog_register_client+0x220>
		00000000000003bc:  R_AARCH64_CALL26	mutex_unlock
     3c0: 17ffffe7     	b	0x35c <zlog_register_client+0x1c0>
     3c4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003c4:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_codetag_base
     3c8: 91000108     	add	x8, x8, #0x0
		00000000000003c8:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_codetag_base
     3cc: d5384114     	mrs	x20, SP_EL0
     3d0: f9402a96     	ldr	x22, [x20, #0x50]
     3d4: f9002a88     	str	x8, [x20, #0x50]
     3d8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000003d8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x58
     3dc: f9400100     	ldr	x0, [x8]
		00000000000003dc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x58
     3e0: 5281b801     	mov	w1, #0xdc0              // =3520
     3e4: 52810002     	mov	w2, #0x800              // =2048
     3e8: 94000000     	bl	0x3e8 <zlog_register_client+0x24c>
		00000000000003e8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
     3ec: f9002a96     	str	x22, [x20, #0x50]
     3f0: f81f02e0     	stur	x0, [x23, #-0x10]
     3f4: b4fffd80     	cbz	x0, 0x3a4 <zlog_register_client+0x208>
     3f8: 52810008     	mov	w8, #0x800              // =2048
     3fc: f81d82ff     	stur	xzr, [x23, #-0x28]
     400: d10452f6     	sub	x22, x23, #0x114
     404: a93e22ff     	stp	xzr, x8, [x23, #-0x20]
     408: aa1603e0     	mov	x0, x22
     40c: 528003e2     	mov	w2, #0x1f               // =31
     410: f9400661     	ldr	x1, [x19, #0x8]
     414: 94000000     	bl	0x414 <zlog_register_client+0x278>
		0000000000000414:  R_AARCH64_CALL26	strncpy
     418: 3810b2ff     	sturb	wzr, [x23, #-0xf5]
     41c: f9400a61     	ldr	x1, [x19, #0x10]
     420: b40000a1     	cbz	x1, 0x434 <zlog_register_client+0x298>
     424: d103d2e0     	sub	x0, x23, #0xf4
     428: 528003e2     	mov	w2, #0x1f               // =31
     42c: 94000000     	bl	0x42c <zlog_register_client+0x290>
		000000000000042c:  R_AARCH64_CALL26	strncpy
     430: 3812b2ff     	sturb	wzr, [x23, #-0xd5]
     434: f9400e61     	ldr	x1, [x19, #0x18]
     438: d10462f4     	sub	x20, x23, #0x118
     43c: b40000a1     	cbz	x1, 0x450 <zlog_register_client+0x2b4>
     440: d10352e0     	sub	x0, x23, #0xd4
     444: 528007e2     	mov	w2, #0x3f               // =63
     448: 94000000     	bl	0x448 <zlog_register_client+0x2ac>
		0000000000000448:  R_AARCH64_CALL26	strncpy
     44c: 3816b2ff     	sturb	wzr, [x23, #-0x95]
     450: f9401261     	ldr	x1, [x19, #0x20]
     454: b40000a1     	cbz	x1, 0x468 <zlog_register_client+0x2cc>
     458: d10252e0     	sub	x0, x23, #0x94
     45c: 528003e2     	mov	w2, #0x1f               // =31
     460: 94000000     	bl	0x460 <zlog_register_client+0x2c4>
		0000000000000460:  R_AARCH64_CALL26	strncpy
     464: 3818b2ff     	sturb	wzr, [x23, #-0x75]
     468: b9400268     	ldr	w8, [x19]
     46c: b9000298     	str	w24, [x20]
     470: 52800029     	mov	w9, #0x1                // =1
     474: b81c82e8     	stur	w8, [x23, #-0x38]
     478: f9401668     	ldr	x8, [x19, #0x28]
     47c: 390002e9     	strb	w9, [x23]
     480: f81902e8     	stur	x8, [x23, #-0x70]
     484: 1400000e     	b	0x4bc <zlog_register_client+0x320>
     488: d100c2e8     	sub	x8, x23, #0x30
     48c: 52800049     	mov	w9, #0x2                // =2
     490: f829311f     	stset	x9, [x8]
     494: aa1503e0     	mov	x0, x21
     498: 94000000     	bl	0x498 <zlog_register_client+0x2fc>
		0000000000000498:  R_AARCH64_CALL26	mutex_unlock
     49c: b9400283     	ldr	w3, [x20]
     4a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004a0:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base
     4a4: 91000000     	add	x0, x0, #0x0
		00000000000004a4:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base
     4a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004a8:  R_AARCH64_ADR_PREL_PG_HI21	zlog_exact_rodata_str_base+0x6dd
     4ac: 91000021     	add	x1, x1, #0x0
		00000000000004ac:  R_AARCH64_ADD_ABS_LO12_NC	zlog_exact_rodata_str_base+0x6dd
     4b0: aa1603e2     	mov	x2, x22
     4b4: 94000000     	bl	0x4b4 <zlog_register_client+0x318>
		00000000000004b4:  R_AARCH64_CALL26	_printk
     4b8: 17ffffaa     	b	0x360 <zlog_register_client+0x1c4>
     4bc: d100c2e8     	sub	x8, x23, #0x30
     4c0: f9800111     	prfm	pstl1strm, [x8]
     4c4: c85f7d09     	ldxr	x9, [x8]
     4c8: b27f0129     	orr	x9, x9, #0x2
     4cc: c80a7d09     	stxr	w10, x9, [x8]
     4d0: 35ffffaa     	cbnz	w10, 0x4c4 <zlog_register_client+0x328>
     4d4: 17fffff0     	b	0x494 <zlog_register_client+0x2f8>
