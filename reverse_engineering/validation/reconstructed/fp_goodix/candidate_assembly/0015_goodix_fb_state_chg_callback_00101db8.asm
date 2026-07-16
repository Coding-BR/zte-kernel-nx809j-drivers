
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000158c <goodix_fb_state_chg_callback>:
    158c: d503233f     	paciasp
    1590: d10103ff     	sub	sp, sp, #0x40
    1594: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1598: f90013f5     	str	x21, [sp, #0x20]
    159c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    15a0: 910043fd     	add	x29, sp, #0x10
    15a4: d5384108     	mrs	x8, SP_EL0
    15a8: f9438908     	ldr	x8, [x8, #0x710]
    15ac: f90007e8     	str	x8, [sp, #0x8]
    15b0: 390013ff     	strb	wzr, [sp, #0x4]
    15b4: b40000e1     	cbz	x1, 0x15d0 <goodix_fb_state_chg_callback+0x44>
    15b8: b40000c2     	cbz	x2, 0x15d0 <goodix_fb_state_chg_callback+0x44>
    15bc: 3941c048     	ldrb	w8, [x2, #0x70]
    15c0: 35000148     	cbnz	w8, 0x15e8 <goodix_fb_state_chg_callback+0x5c>
    15c4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x656
    15c8: 91000000     	add	x0, x0, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x656
    15cc: 14000003     	b	0x15d8 <goodix_fb_state_chg_callback+0x4c>
    15d0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000015d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132c
    15d4: 91000000     	add	x0, x0, #0x0
		00000000000015d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132c
    15d8: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		00000000000015d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
    15dc: 91000021     	add	x1, x1, #0x0
		00000000000015dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
    15e0: 94000000     	bl	0x15e0 <goodix_fb_state_chg_callback+0x54>
		00000000000015e0:  R_AARCH64_CALL26	_printk
    15e4: 1400000c     	b	0x1614 <goodix_fb_state_chg_callback+0x88>
    15e8: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2d8>
		00000000000015e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b5
    15ec: 91000108     	add	x8, x8, #0x0
		00000000000015ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b5
    15f0: aa0103f3     	mov	x19, x1
    15f4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2d8>
		00000000000015f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
    15f8: 91000021     	add	x1, x1, #0x0
		00000000000015f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
    15fc: 2a0003f5     	mov	w21, w0
    1600: aa0803e0     	mov	x0, x8
    1604: aa0203f4     	mov	x20, x2
    1608: 94000000     	bl	0x1608 <goodix_fb_state_chg_callback+0x7c>
		0000000000001608:  R_AARCH64_CALL26	_printk
    160c: 710006bf     	cmp	w21, #0x1
    1610: 54000180     	b.eq	0x1640 <goodix_fb_state_chg_callback+0xb4>
    1614: d5384108     	mrs	x8, SP_EL0
    1618: f9438908     	ldr	x8, [x8, #0x710]
    161c: f94007e9     	ldr	x9, [sp, #0x8]
    1620: eb09011f     	cmp	x8, x9
    1624: 540005a1     	b.ne	0x16d8 <goodix_fb_state_chg_callback+0x14c>
    1628: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    162c: f94013f5     	ldr	x21, [sp, #0x20]
    1630: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1634: 910103ff     	add	sp, sp, #0x40
    1638: d50323bf     	autiasp
    163c: d65f03c0     	ret
    1640: b9400268     	ldr	w8, [x19]
    1644: 7100051f     	cmp	w8, #0x1
    1648: 54000200     	b.eq	0x1688 <goodix_fb_state_chg_callback+0xfc>
    164c: 7100091f     	cmp	w8, #0x2
    1650: 540003e1     	b.ne	0x16cc <goodix_fb_state_chg_callback+0x140>
    1654: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		0000000000001654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
    1658: 91000273     	add	x19, x19, #0x0
		0000000000001658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
    165c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000165c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x424
    1660: 91000000     	add	x0, x0, #0x0
		0000000000001660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x424
    1664: aa1303e1     	mov	x1, x19
    1668: 94000000     	bl	0x1668 <goodix_fb_state_chg_callback+0xdc>
		0000000000001668:  R_AARCH64_CALL26	_printk
    166c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		000000000000166c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50c
    1670: 91000000     	add	x0, x0, #0x0
		0000000000001670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50c
    1674: aa1303e1     	mov	x1, x19
    1678: 3901c69f     	strb	wzr, [x20, #0x71]
    167c: 94000000     	bl	0x167c <goodix_fb_state_chg_callback+0xf0>
		000000000000167c:  R_AARCH64_CALL26	_printk
    1680: 52800068     	mov	w8, #0x3                // =3
    1684: 1400000e     	b	0x16bc <goodix_fb_state_chg_callback+0x130>
    1688: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2d8>
		0000000000001688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7e5
    168c: 91000273     	add	x19, x19, #0x0
		000000000000168c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7e5
    1690: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		0000000000001690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf69
    1694: 91000000     	add	x0, x0, #0x0
		0000000000001694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf69
    1698: aa1303e1     	mov	x1, x19
    169c: 94000000     	bl	0x169c <goodix_fb_state_chg_callback+0x110>
		000000000000169c:  R_AARCH64_CALL26	_printk
    16a0: 52800028     	mov	w8, #0x1                // =1
    16a4: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000016a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7b
    16a8: 91000000     	add	x0, x0, #0x0
		00000000000016a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7b
    16ac: aa1303e1     	mov	x1, x19
    16b0: 3901c688     	strb	w8, [x20, #0x71]
    16b4: 94000000     	bl	0x16b4 <goodix_fb_state_chg_callback+0x128>
		00000000000016b4:  R_AARCH64_CALL26	_printk
    16b8: 52800048     	mov	w8, #0x2                // =2
    16bc: 910013e0     	add	x0, sp, #0x4
    16c0: 390013e8     	strb	w8, [sp, #0x4]
    16c4: 94000000     	bl	0x16c4 <goodix_fb_state_chg_callback+0x138>
		00000000000016c4:  R_AARCH64_CALL26	sendnlmsg
    16c8: 17ffffd3     	b	0x1614 <goodix_fb_state_chg_callback+0x88>
    16cc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2d8>
		00000000000016cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11dc
    16d0: 91000000     	add	x0, x0, #0x0
		00000000000016d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11dc
    16d4: 17ffffc1     	b	0x15d8 <goodix_fb_state_chg_callback+0x4c>
    16d8: 94000000     	bl	0x16d8 <goodix_fb_state_chg_callback+0x14c>
		00000000000016d8:  R_AARCH64_CALL26	__stack_chk_fail
