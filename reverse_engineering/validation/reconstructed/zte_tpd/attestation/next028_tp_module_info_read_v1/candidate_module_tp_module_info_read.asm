
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e330 <tp_module_info_read>:
   1e330: d503233f     	paciasp
   1e334: d10483ff     	sub	sp, sp, #0x120
   1e338: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
   1e33c: f90073fc     	str	x28, [sp, #0xe0]
   1e340: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
   1e344: a91057f6     	stp	x22, x21, [sp, #0x100]
   1e348: a9114ff4     	stp	x20, x19, [sp, #0x110]
   1e34c: 910343fd     	add	x29, sp, #0xd0
   1e350: d5384108     	mrs	x8, SP_EL0
   1e354: f9438908     	ldr	x8, [x8, #0x710]
   1e358: f81f83a8     	stur	x8, [x29, #-0x8]
   1e35c: f9400068     	ldr	x8, [x3]
   1e360: b4000068     	cbz	x8, 0x1e36c <tp_module_info_read+0x3c>
   1e364: aa1f03e0     	mov	x0, xzr
   1e368: 1400008b     	b	0x1e594 <tp_module_info_read+0x264>
   1e36c: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x474>
		000000000001e36c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e370: a9007fff     	stp	xzr, xzr, [sp]
   1e374: aa0103f5     	mov	x21, x1
   1e378: f9400116     	ldr	x22, [x8]
		000000000001e378:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e37c: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1e380: aa0203f4     	mov	x20, x2
   1e384: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1e388: aa0303f3     	mov	x19, x3
   1e38c: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   1e390: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1e394: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   1e398: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1e39c: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   1e3a0: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   1e3a4: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   1e3a8: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
   1e3ac: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
   1e3b0: f90063ff     	str	xzr, [sp, #0xc0]
   1e3b4: f94712c8     	ldr	x8, [x22, #0xe20]
   1e3b8: b4000128     	cbz	x8, 0x1e3dc <tp_module_info_read+0xac>
   1e3bc: aa1603e0     	mov	x0, x22
   1e3c0: b85fc110     	ldur	w16, [x8, #-0x4]
   1e3c4: 7281af31     	movk	w17, #0xd79
   1e3c8: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1e3cc: 6b11021f     	cmp	w16, w17
   1e3d0: 54000040     	b.eq	0x1e3d8 <tp_module_info_read+0xa8>
   1e3d4: d4304500     	brk	#0x8228
   1e3d8: d63f0100     	blr	x8
   1e3dc: b94cfec4     	ldr	w4, [x22, #0xcfc]
   1e3e0: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e3e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf4
   1e3e4: 91000042     	add	x2, x2, #0x0
		000000000001e3e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf4
   1e3e8: 910003e0     	mov	x0, sp
   1e3ec: 913502c3     	add	x3, x22, #0xd40
   1e3f0: 52801901     	mov	w1, #0xc8               // =200
   1e3f4: 910003f7     	mov	x23, sp
   1e3f8: 94000000     	bl	0x1e3f8 <tp_module_info_read+0xc8>
		000000000001e3f8:  R_AARCH64_CALL26	snprintf
   1e3fc: 7103201f     	cmp	w0, #0xc8
   1e400: 54000e68     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e404: 2a0003f8     	mov	w24, w0
   1e408: 52801908     	mov	w8, #0xc8               // =200
   1e40c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e40c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f3
   1e410: 91000042     	add	x2, x2, #0x0
		000000000001e410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f3
   1e414: cb180101     	sub	x1, x8, x24
   1e418: 8b1802e0     	add	x0, x23, x24
   1e41c: 913462c3     	add	x3, x22, #0xd18
   1e420: 94000000     	bl	0x1e420 <tp_module_info_read+0xf0>
		000000000001e420:  R_AARCH64_CALL26	snprintf
   1e424: b94d0ec3     	ldr	w3, [x22, #0xd0c]
   1e428: 8b20c317     	add	x23, x24, w0, sxtw
   1e42c: 34000163     	cbz	w3, 0x1e458 <tp_module_info_read+0x128>
   1e430: f10322ff     	cmp	x23, #0xc8
   1e434: 54000cc8     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e438: 52801908     	mov	w8, #0xc8               // =200
   1e43c: 910003e9     	mov	x9, sp
   1e440: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bfa
   1e444: 91000042     	add	x2, x2, #0x0
		000000000001e444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bfa
   1e448: cb170101     	sub	x1, x8, x23
   1e44c: 8b170120     	add	x0, x9, x23
   1e450: 94000000     	bl	0x1e450 <tp_module_info_read+0x120>
		000000000001e450:  R_AARCH64_CALL26	snprintf
   1e454: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e458: b94d16c3     	ldr	w3, [x22, #0xd14]
   1e45c: 34000163     	cbz	w3, 0x1e488 <tp_module_info_read+0x158>
   1e460: f10322ff     	cmp	x23, #0xc8
   1e464: 54000b48     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e468: 52801908     	mov	w8, #0xc8               // =200
   1e46c: 910003e9     	mov	x9, sp
   1e470: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e7e
   1e474: 91000042     	add	x2, x2, #0x0
		000000000001e474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e7e
   1e478: cb170101     	sub	x1, x8, x23
   1e47c: 8b170120     	add	x0, x9, x23
   1e480: 94000000     	bl	0x1e480 <tp_module_info_read+0x150>
		000000000001e480:  R_AARCH64_CALL26	snprintf
   1e484: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e488: f10322ff     	cmp	x23, #0xc8
   1e48c: 54000a08     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e490: 52801908     	mov	w8, #0xc8               // =200
   1e494: b94d02c3     	ldr	w3, [x22, #0xd00]
   1e498: 910003e9     	mov	x9, sp
   1e49c: cb170101     	sub	x1, x8, x23
   1e4a0: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e4a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193d
   1e4a4: 91000042     	add	x2, x2, #0x0
		000000000001e4a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193d
   1e4a8: 8b170120     	add	x0, x9, x23
   1e4ac: 94000000     	bl	0x1e4ac <tp_module_info_read+0x17c>
		000000000001e4ac:  R_AARCH64_CALL26	snprintf
   1e4b0: b94d06c3     	ldr	w3, [x22, #0xd04]
   1e4b4: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e4b8: 34000163     	cbz	w3, 0x1e4e4 <tp_module_info_read+0x1b4>
   1e4bc: f10322ff     	cmp	x23, #0xc8
   1e4c0: 54000868     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e4c4: 52801908     	mov	w8, #0xc8               // =200
   1e4c8: 910003e9     	mov	x9, sp
   1e4cc: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e4cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d88
   1e4d0: 91000042     	add	x2, x2, #0x0
		000000000001e4d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d88
   1e4d4: cb170101     	sub	x1, x8, x23
   1e4d8: 8b170120     	add	x0, x9, x23
   1e4dc: 94000000     	bl	0x1e4dc <tp_module_info_read+0x1ac>
		000000000001e4dc:  R_AARCH64_CALL26	snprintf
   1e4e0: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e4e4: b94d0ac3     	ldr	w3, [x22, #0xd08]
   1e4e8: 34000163     	cbz	w3, 0x1e514 <tp_module_info_read+0x1e4>
   1e4ec: f10322ff     	cmp	x23, #0xc8
   1e4f0: 540006e8     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e4f4: 52801908     	mov	w8, #0xc8               // =200
   1e4f8: 910003e9     	mov	x9, sp
   1e4fc: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e4fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x315
   1e500: 91000042     	add	x2, x2, #0x0
		000000000001e500:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x315
   1e504: cb170101     	sub	x1, x8, x23
   1e508: 8b170120     	add	x0, x9, x23
   1e50c: 94000000     	bl	0x1e50c <tp_module_info_read+0x1dc>
		000000000001e50c:  R_AARCH64_CALL26	snprintf
   1e510: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e514: 3975a2c8     	ldrb	w8, [x22, #0xd68]
   1e518: 34000188     	cbz	w8, 0x1e548 <tp_module_info_read+0x218>
   1e51c: f10322ff     	cmp	x23, #0xc8
   1e520: 54000568     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e524: 52801908     	mov	w8, #0xc8               // =200
   1e528: 910003e9     	mov	x9, sp
   1e52c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e52c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c09
   1e530: 91000042     	add	x2, x2, #0x0
		000000000001e530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c09
   1e534: cb170101     	sub	x1, x8, x23
   1e538: 8b170120     	add	x0, x9, x23
   1e53c: 9135a2c3     	add	x3, x22, #0xd68
   1e540: 94000000     	bl	0x1e540 <tp_module_info_read+0x210>
		000000000001e540:  R_AARCH64_CALL26	snprintf
   1e544: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e548: 397642c8     	ldrb	w8, [x22, #0xd90]
   1e54c: 34000188     	cbz	w8, 0x1e57c <tp_module_info_read+0x24c>
   1e550: f10322ff     	cmp	x23, #0xc8
   1e554: 540003c8     	b.hi	0x1e5cc <tp_module_info_read+0x29c>
   1e558: 52801908     	mov	w8, #0xc8               // =200
   1e55c: 910003e9     	mov	x9, sp
   1e560: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x474>
		000000000001e560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x711a
   1e564: 91000042     	add	x2, x2, #0x0
		000000000001e564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x711a
   1e568: cb170101     	sub	x1, x8, x23
   1e56c: 8b170120     	add	x0, x9, x23
   1e570: 913642c3     	add	x3, x22, #0xd90
   1e574: 94000000     	bl	0x1e574 <tp_module_info_read+0x244>
		000000000001e574:  R_AARCH64_CALL26	snprintf
   1e578: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e57c: 910003e3     	mov	x3, sp
   1e580: aa1503e0     	mov	x0, x21
   1e584: aa1403e1     	mov	x1, x20
   1e588: aa1303e2     	mov	x2, x19
   1e58c: aa1703e4     	mov	x4, x23
   1e590: 94000000     	bl	0x1e590 <tp_module_info_read+0x260>
		000000000001e590:  R_AARCH64_CALL26	simple_read_from_buffer
   1e594: d5384108     	mrs	x8, SP_EL0
   1e598: f9438908     	ldr	x8, [x8, #0x710]
   1e59c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e5a0: eb09011f     	cmp	x8, x9
   1e5a4: 54000121     	b.ne	0x1e5c8 <tp_module_info_read+0x298>
   1e5a8: a9514ff4     	ldp	x20, x19, [sp, #0x110]
   1e5ac: f94073fc     	ldr	x28, [sp, #0xe0]
   1e5b0: a95057f6     	ldp	x22, x21, [sp, #0x100]
   1e5b4: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
   1e5b8: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
   1e5bc: 910483ff     	add	sp, sp, #0x120
   1e5c0: d50323bf     	autiasp
   1e5c4: d65f03c0     	ret
   1e5c8: 94000000     	bl	0x1e5c8 <tp_module_info_read+0x298>
		000000000001e5c8:  R_AARCH64_CALL26	__stack_chk_fail
   1e5cc: d42aa240     	brk	#0x5512
