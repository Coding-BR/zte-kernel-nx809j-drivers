
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e380 <tp_module_info_read>:
   1e380: d503233f     	paciasp
   1e384: d10483ff     	sub	sp, sp, #0x120
   1e388: a90d7bfd     	stp	x29, x30, [sp, #0xd0]
   1e38c: f90073fc     	str	x28, [sp, #0xe0]
   1e390: a90f5ff8     	stp	x24, x23, [sp, #0xf0]
   1e394: a91057f6     	stp	x22, x21, [sp, #0x100]
   1e398: a9114ff4     	stp	x20, x19, [sp, #0x110]
   1e39c: 910343fd     	add	x29, sp, #0xd0
   1e3a0: d5384108     	mrs	x8, SP_EL0
   1e3a4: f9438908     	ldr	x8, [x8, #0x710]
   1e3a8: f81f83a8     	stur	x8, [x29, #-0x8]
   1e3ac: f9400068     	ldr	x8, [x3]
   1e3b0: b4000068     	cbz	x8, 0x1e3bc <tp_module_info_read+0x3c>
   1e3b4: aa1f03e0     	mov	x0, xzr
   1e3b8: 1400008b     	b	0x1e5e4 <tp_module_info_read+0x264>
   1e3bc: 90000008     	adrp	x8, 0x1e000 <tp_ghost_check+0x424>
		000000000001e3bc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1e3c0: a9007fff     	stp	xzr, xzr, [sp]
   1e3c4: aa0103f5     	mov	x21, x1
   1e3c8: f9400116     	ldr	x22, [x8]
		000000000001e3c8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1e3cc: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   1e3d0: aa0203f4     	mov	x20, x2
   1e3d4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   1e3d8: aa0303f3     	mov	x19, x3
   1e3dc: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   1e3e0: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   1e3e4: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   1e3e8: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   1e3ec: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   1e3f0: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   1e3f4: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   1e3f8: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
   1e3fc: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
   1e400: f90063ff     	str	xzr, [sp, #0xc0]
   1e404: f94712c8     	ldr	x8, [x22, #0xe20]
   1e408: b4000128     	cbz	x8, 0x1e42c <tp_module_info_read+0xac>
   1e40c: aa1603e0     	mov	x0, x22
   1e410: b85fc110     	ldur	w16, [x8, #-0x4]
   1e414: 7281af31     	movk	w17, #0xd79
   1e418: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   1e41c: 6b11021f     	cmp	w16, w17
   1e420: 54000040     	b.eq	0x1e428 <tp_module_info_read+0xa8>
   1e424: d4304500     	brk	#0x8228
   1e428: d63f0100     	blr	x8
   1e42c: b94cfec4     	ldr	w4, [x22, #0xcfc]
   1e430: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c10
   1e434: 91000042     	add	x2, x2, #0x0
		000000000001e434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c10
   1e438: 910003e0     	mov	x0, sp
   1e43c: 913502c3     	add	x3, x22, #0xd40
   1e440: 52801901     	mov	w1, #0xc8               // =200
   1e444: 910003f7     	mov	x23, sp
   1e448: 94000000     	bl	0x1e448 <tp_module_info_read+0xc8>
		000000000001e448:  R_AARCH64_CALL26	snprintf
   1e44c: 7103201f     	cmp	w0, #0xc8
   1e450: 54000e68     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e454: 2a0003f8     	mov	w24, w0
   1e458: 52801908     	mov	w8, #0xc8               // =200
   1e45c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e45c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f3
   1e460: 91000042     	add	x2, x2, #0x0
		000000000001e460:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f3
   1e464: cb180101     	sub	x1, x8, x24
   1e468: 8b1802e0     	add	x0, x23, x24
   1e46c: 913462c3     	add	x3, x22, #0xd18
   1e470: 94000000     	bl	0x1e470 <tp_module_info_read+0xf0>
		000000000001e470:  R_AARCH64_CALL26	snprintf
   1e474: b94d0ec3     	ldr	w3, [x22, #0xd0c]
   1e478: 8b20c317     	add	x23, x24, w0, sxtw
   1e47c: 34000163     	cbz	w3, 0x1e4a8 <tp_module_info_read+0x128>
   1e480: f10322ff     	cmp	x23, #0xc8
   1e484: 54000cc8     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e488: 52801908     	mov	w8, #0xc8               // =200
   1e48c: 910003e9     	mov	x9, sp
   1e490: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bfa
   1e494: 91000042     	add	x2, x2, #0x0
		000000000001e494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bfa
   1e498: cb170101     	sub	x1, x8, x23
   1e49c: 8b170120     	add	x0, x9, x23
   1e4a0: 94000000     	bl	0x1e4a0 <tp_module_info_read+0x120>
		000000000001e4a0:  R_AARCH64_CALL26	snprintf
   1e4a4: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e4a8: b94d16c3     	ldr	w3, [x22, #0xd14]
   1e4ac: 34000163     	cbz	w3, 0x1e4d8 <tp_module_info_read+0x158>
   1e4b0: f10322ff     	cmp	x23, #0xc8
   1e4b4: 54000b48     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e4b8: 52801908     	mov	w8, #0xc8               // =200
   1e4bc: 910003e9     	mov	x9, sp
   1e4c0: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e4c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e9a
   1e4c4: 91000042     	add	x2, x2, #0x0
		000000000001e4c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e9a
   1e4c8: cb170101     	sub	x1, x8, x23
   1e4cc: 8b170120     	add	x0, x9, x23
   1e4d0: 94000000     	bl	0x1e4d0 <tp_module_info_read+0x150>
		000000000001e4d0:  R_AARCH64_CALL26	snprintf
   1e4d4: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e4d8: f10322ff     	cmp	x23, #0xc8
   1e4dc: 54000a08     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e4e0: 52801908     	mov	w8, #0xc8               // =200
   1e4e4: b94d02c3     	ldr	w3, [x22, #0xd00]
   1e4e8: 910003e9     	mov	x9, sp
   1e4ec: cb170101     	sub	x1, x8, x23
   1e4f0: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e4f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193d
   1e4f4: 91000042     	add	x2, x2, #0x0
		000000000001e4f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193d
   1e4f8: 8b170120     	add	x0, x9, x23
   1e4fc: 94000000     	bl	0x1e4fc <tp_module_info_read+0x17c>
		000000000001e4fc:  R_AARCH64_CALL26	snprintf
   1e500: b94d06c3     	ldr	w3, [x22, #0xd04]
   1e504: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e508: 34000163     	cbz	w3, 0x1e534 <tp_module_info_read+0x1b4>
   1e50c: f10322ff     	cmp	x23, #0xc8
   1e510: 54000868     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e514: 52801908     	mov	w8, #0xc8               // =200
   1e518: 910003e9     	mov	x9, sp
   1e51c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e51c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6da4
   1e520: 91000042     	add	x2, x2, #0x0
		000000000001e520:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6da4
   1e524: cb170101     	sub	x1, x8, x23
   1e528: 8b170120     	add	x0, x9, x23
   1e52c: 94000000     	bl	0x1e52c <tp_module_info_read+0x1ac>
		000000000001e52c:  R_AARCH64_CALL26	snprintf
   1e530: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e534: b94d0ac3     	ldr	w3, [x22, #0xd08]
   1e538: 34000163     	cbz	w3, 0x1e564 <tp_module_info_read+0x1e4>
   1e53c: f10322ff     	cmp	x23, #0xc8
   1e540: 540006e8     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e544: 52801908     	mov	w8, #0xc8               // =200
   1e548: 910003e9     	mov	x9, sp
   1e54c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e54c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x315
   1e550: 91000042     	add	x2, x2, #0x0
		000000000001e550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x315
   1e554: cb170101     	sub	x1, x8, x23
   1e558: 8b170120     	add	x0, x9, x23
   1e55c: 94000000     	bl	0x1e55c <tp_module_info_read+0x1dc>
		000000000001e55c:  R_AARCH64_CALL26	snprintf
   1e560: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e564: 3975a2c8     	ldrb	w8, [x22, #0xd68]
   1e568: 34000188     	cbz	w8, 0x1e598 <tp_module_info_read+0x218>
   1e56c: f10322ff     	cmp	x23, #0xc8
   1e570: 54000568     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e574: 52801908     	mov	w8, #0xc8               // =200
   1e578: 910003e9     	mov	x9, sp
   1e57c: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e57c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c25
   1e580: 91000042     	add	x2, x2, #0x0
		000000000001e580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c25
   1e584: cb170101     	sub	x1, x8, x23
   1e588: 8b170120     	add	x0, x9, x23
   1e58c: 9135a2c3     	add	x3, x22, #0xd68
   1e590: 94000000     	bl	0x1e590 <tp_module_info_read+0x210>
		000000000001e590:  R_AARCH64_CALL26	snprintf
   1e594: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e598: 397642c8     	ldrb	w8, [x22, #0xd90]
   1e59c: 34000188     	cbz	w8, 0x1e5cc <tp_module_info_read+0x24c>
   1e5a0: f10322ff     	cmp	x23, #0xc8
   1e5a4: 540003c8     	b.hi	0x1e61c <tp_module_info_read+0x29c>
   1e5a8: 52801908     	mov	w8, #0xc8               // =200
   1e5ac: 910003e9     	mov	x9, sp
   1e5b0: 90000002     	adrp	x2, 0x1e000 <tp_ghost_check+0x424>
		000000000001e5b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7136
   1e5b4: 91000042     	add	x2, x2, #0x0
		000000000001e5b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7136
   1e5b8: cb170101     	sub	x1, x8, x23
   1e5bc: 8b170120     	add	x0, x9, x23
   1e5c0: 913642c3     	add	x3, x22, #0xd90
   1e5c4: 94000000     	bl	0x1e5c4 <tp_module_info_read+0x244>
		000000000001e5c4:  R_AARCH64_CALL26	snprintf
   1e5c8: 8b20c2f7     	add	x23, x23, w0, sxtw
   1e5cc: 910003e3     	mov	x3, sp
   1e5d0: aa1503e0     	mov	x0, x21
   1e5d4: aa1403e1     	mov	x1, x20
   1e5d8: aa1303e2     	mov	x2, x19
   1e5dc: aa1703e4     	mov	x4, x23
   1e5e0: 94000000     	bl	0x1e5e0 <tp_module_info_read+0x260>
		000000000001e5e0:  R_AARCH64_CALL26	simple_read_from_buffer
   1e5e4: d5384108     	mrs	x8, SP_EL0
   1e5e8: f9438908     	ldr	x8, [x8, #0x710]
   1e5ec: f85f83a9     	ldur	x9, [x29, #-0x8]
   1e5f0: eb09011f     	cmp	x8, x9
   1e5f4: 54000121     	b.ne	0x1e618 <tp_module_info_read+0x298>
   1e5f8: a9514ff4     	ldp	x20, x19, [sp, #0x110]
   1e5fc: f94073fc     	ldr	x28, [sp, #0xe0]
   1e600: a95057f6     	ldp	x22, x21, [sp, #0x100]
   1e604: a94f5ff8     	ldp	x24, x23, [sp, #0xf0]
   1e608: a94d7bfd     	ldp	x29, x30, [sp, #0xd0]
   1e60c: 910483ff     	add	sp, sp, #0x120
   1e610: d50323bf     	autiasp
   1e614: d65f03c0     	ret
   1e618: 94000000     	bl	0x1e618 <tp_module_info_read+0x298>
		000000000001e618:  R_AARCH64_CALL26	__stack_chk_fail
   1e61c: d42aa240     	brk	#0x5512
