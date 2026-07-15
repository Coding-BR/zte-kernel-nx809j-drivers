
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006260 <tp_self_test_read>:
    6260: d503233f     	paciasp
    6264: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    6268: a90167fa     	stp	x26, x25, [sp, #0x10]
    626c: a9025ff8     	stp	x24, x23, [sp, #0x20]
    6270: a90357f6     	stp	x22, x21, [sp, #0x30]
    6274: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6278: 910003fd     	mov	x29, sp
    627c: f9400068     	ldr	x8, [x3]
    6280: b5000208     	cbnz	x8, 0x62c0 <tp_self_test_read+0x60>
    6284: 90000018     	adrp	x24, 0x6000 <tp_pen_only_write+0x70>
		0000000000006284:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6288: aa0303f3     	mov	x19, x3
    628c: aa0103f5     	mov	x21, x1
    6290: f9400316     	ldr	x22, [x24]
		0000000000006290:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6294: aa0203f4     	mov	x20, x2
    6298: d503201f     	nop
    629c: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		000000000000629c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    62a0: 5281b801     	mov	w1, #0xdc0              // =3520
    62a4: 52820002     	mov	w2, #0x1000             // =4096
    62a8: f9400100     	ldr	x0, [x8]
		00000000000062a8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    62ac: 94000000     	bl	0x62ac <tp_self_test_read+0x4c>
		00000000000062ac:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    62b0: aa0003f7     	mov	x23, x0
    62b4: b40007f7     	cbz	x23, 0x63b0 <tp_self_test_read+0x150>
    62b8: f9400268     	ldr	x8, [x19]
    62bc: b4000128     	cbz	x8, 0x62e0 <tp_self_test_read+0x80>
    62c0: aa1f03e0     	mov	x0, xzr
    62c4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    62c8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    62cc: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    62d0: a94167fa     	ldp	x26, x25, [sp, #0x10]
    62d4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    62d8: d50323bf     	autiasp
    62dc: d65f03c0     	ret
    62e0: f947cec8     	ldr	x8, [x22, #0xf98]
    62e4: b4000188     	cbz	x8, 0x6314 <tp_self_test_read+0xb4>
    62e8: aa1603e0     	mov	x0, x22
    62ec: aa1703e1     	mov	x1, x23
    62f0: b85fc110     	ldur	w16, [x8, #-0x4]
    62f4: 728bf651     	movk	w17, #0x5fb2
    62f8: 72ac9e51     	movk	w17, #0x64f2, lsl #16
    62fc: 6b11021f     	cmp	w16, w17
    6300: 54000040     	b.eq	0x6308 <tp_self_test_read+0xa8>
    6304: d4304500     	brk	#0x8228
    6308: d63f0100     	blr	x8
    630c: 93407c16     	sxtw	x22, w0
    6310: 14000002     	b	0x6318 <tp_self_test_read+0xb8>
    6314: aa1f03f6     	mov	x22, xzr
    6318: aa1503e0     	mov	x0, x21
    631c: aa1403e1     	mov	x1, x20
    6320: aa1303e2     	mov	x2, x19
    6324: aa1703e3     	mov	x3, x23
    6328: aa1603e4     	mov	x4, x22
    632c: 94000000     	bl	0x632c <tp_self_test_read+0xcc>
		000000000000632c:  R_AARCH64_CALL26	simple_read_from_buffer
    6330: aa1703e0     	mov	x0, x23
    6334: 94000000     	bl	0x6334 <tp_self_test_read+0xd4>
		0000000000006334:  R_AARCH64_CALL26	kfree
    6338: f9400313     	ldr	x19, [x24]
		0000000000006338:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    633c: f9462e60     	ldr	x0, [x19, #0xc58]
    6340: b4000180     	cbz	x0, 0x6370 <tp_self_test_read+0x110>
    6344: f9400408     	ldr	x8, [x0, #0x8]
    6348: b4000108     	cbz	x8, 0x6368 <tp_self_test_read+0x108>
    634c: aa0803e0     	mov	x0, x8
    6350: 94000000     	bl	0x6350 <tp_self_test_read+0xf0>
		0000000000006350:  R_AARCH64_CALL26	vfree
    6354: f9462e68     	ldr	x8, [x19, #0xc58]
    6358: f900051f     	str	xzr, [x8, #0x8]
    635c: f9462e68     	ldr	x8, [x19, #0xc58]
    6360: f900011f     	str	xzr, [x8]
    6364: f9462e60     	ldr	x0, [x19, #0xc58]
    6368: 94000000     	bl	0x6368 <tp_self_test_read+0x108>
		0000000000006368:  R_AARCH64_CALL26	kfree
    636c: f9062e7f     	str	xzr, [x19, #0xc58]
    6370: aa1603e0     	mov	x0, x22
    6374: b9044a7f     	str	wzr, [x19, #0x448]
    6378: 17ffffd3     	b	0x62c4 <tp_self_test_read+0x64>
    637c: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		000000000000637c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xf0
    6380: 91000108     	add	x8, x8, #0x0
		0000000000006380:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xf0
    6384: d5384119     	mrs	x25, SP_EL0
    6388: f9402b3a     	ldr	x26, [x25, #0x50]
    638c: f9002b28     	str	x8, [x25, #0x50]
    6390: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006390:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    6394: f9400100     	ldr	x0, [x8]
		0000000000006394:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    6398: 5281b801     	mov	w1, #0xdc0              // =3520
    639c: 52820002     	mov	w2, #0x1000             // =4096
    63a0: 94000000     	bl	0x63a0 <tp_self_test_read+0x140>
		00000000000063a0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    63a4: aa0003f7     	mov	x23, x0
    63a8: f9002b3a     	str	x26, [x25, #0x50]
    63ac: b5fff877     	cbnz	x23, 0x62b8 <tp_self_test_read+0x58>
    63b0: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		00000000000063b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dff
    63b4: 91000000     	add	x0, x0, #0x0
		00000000000063b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dff
    63b8: 94000000     	bl	0x63b8 <tp_self_test_read+0x158>
		00000000000063b8:  R_AARCH64_CALL26	_printk
    63bc: 92800160     	mov	x0, #-0xc               // =-12
    63c0: 17ffffc1     	b	0x62c4 <tp_self_test_read+0x64>
