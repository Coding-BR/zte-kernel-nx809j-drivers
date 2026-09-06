
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001598 <goodix_fb_state_chg_callback>:
    1598: d503233f     	paciasp
    159c: d10103ff     	sub	sp, sp, #0x40
    15a0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    15a4: f90013f5     	str	x21, [sp, #0x20]
    15a8: a9034ff4     	stp	x20, x19, [sp, #0x30]
    15ac: 910043fd     	add	x29, sp, #0x10
    15b0: d5384108     	mrs	x8, SP_EL0
    15b4: f9438908     	ldr	x8, [x8, #0x710]
    15b8: f90007e8     	str	x8, [sp, #0x8]
    15bc: 390013ff     	strb	wzr, [sp, #0x4]
    15c0: b40000e1     	cbz	x1, 0x15dc <goodix_fb_state_chg_callback+0x44>
    15c4: b40000c2     	cbz	x2, 0x15dc <goodix_fb_state_chg_callback+0x44>
    15c8: 3941c048     	ldrb	w8, [x2, #0x70]
    15cc: 35000148     	cbnz	w8, 0x15f4 <goodix_fb_state_chg_callback+0x5c>
    15d0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000015d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f
    15d4: 91000000     	add	x0, x0, #0x0
		00000000000015d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f
    15d8: 14000003     	b	0x15e4 <goodix_fb_state_chg_callback+0x4c>
    15dc: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000015dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf6d
    15e0: 91000000     	add	x0, x0, #0x0
		00000000000015e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf6d
    15e4: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		00000000000015e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86f
    15e8: 91000021     	add	x1, x1, #0x0
		00000000000015e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86f
    15ec: 94000000     	bl	0x15ec <goodix_fb_state_chg_callback+0x54>
		00000000000015ec:  R_AARCH64_CALL26	_printk
    15f0: 1400000c     	b	0x1620 <goodix_fb_state_chg_callback+0x88>
    15f4: 90000008     	adrp	x8, 0x1000 <gf_probe+0x2cc>
		00000000000015f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1415
    15f8: 91000108     	add	x8, x8, #0x0
		00000000000015f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1415
    15fc: aa0103f3     	mov	x19, x1
    1600: 90000001     	adrp	x1, 0x1000 <gf_probe+0x2cc>
		0000000000001600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86f
    1604: 91000021     	add	x1, x1, #0x0
		0000000000001604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86f
    1608: 2a0003f5     	mov	w21, w0
    160c: aa0803e0     	mov	x0, x8
    1610: aa0203f4     	mov	x20, x2
    1614: 94000000     	bl	0x1614 <goodix_fb_state_chg_callback+0x7c>
		0000000000001614:  R_AARCH64_CALL26	_printk
    1618: 710006bf     	cmp	w21, #0x1
    161c: 54000180     	b.eq	0x164c <goodix_fb_state_chg_callback+0xb4>
    1620: d5384108     	mrs	x8, SP_EL0
    1624: f9438908     	ldr	x8, [x8, #0x710]
    1628: f94007e9     	ldr	x9, [sp, #0x8]
    162c: eb09011f     	cmp	x8, x9
    1630: 540005a1     	b.ne	0x16e4 <goodix_fb_state_chg_callback+0x14c>
    1634: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1638: f94013f5     	ldr	x21, [sp, #0x20]
    163c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1640: 910103ff     	add	sp, sp, #0x40
    1644: d50323bf     	autiasp
    1648: d65f03c0     	ret
    164c: b9400268     	ldr	w8, [x19]
    1650: 7100051f     	cmp	w8, #0x1
    1654: 54000200     	b.eq	0x1694 <goodix_fb_state_chg_callback+0xfc>
    1658: 7100091f     	cmp	w8, #0x2
    165c: 540003e1     	b.ne	0x16d8 <goodix_fb_state_chg_callback+0x140>
    1660: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		0000000000001660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86f
    1664: 91000273     	add	x19, x19, #0x0
		0000000000001664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86f
    1668: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf2
    166c: 91000000     	add	x0, x0, #0x0
		000000000000166c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf2
    1670: aa1303e1     	mov	x1, x19
    1674: 94000000     	bl	0x1674 <goodix_fb_state_chg_callback+0xdc>
		0000000000001674:  R_AARCH64_CALL26	_printk
    1678: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		0000000000001678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3
    167c: 91000000     	add	x0, x0, #0x0
		000000000000167c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3
    1680: aa1303e1     	mov	x1, x19
    1684: 3901c69f     	strb	wzr, [x20, #0x71]
    1688: 94000000     	bl	0x1688 <goodix_fb_state_chg_callback+0xf0>
		0000000000001688:  R_AARCH64_CALL26	_printk
    168c: 52800068     	mov	w8, #0x3                // =3
    1690: 1400000e     	b	0x16c8 <goodix_fb_state_chg_callback+0x130>
    1694: 90000013     	adrp	x19, 0x1000 <gf_probe+0x2cc>
		0000000000001694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86f
    1698: 91000273     	add	x19, x19, #0x0
		0000000000001698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86f
    169c: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		000000000000169c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f3
    16a0: 91000000     	add	x0, x0, #0x0
		00000000000016a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f3
    16a4: aa1303e1     	mov	x1, x19
    16a8: 94000000     	bl	0x16a8 <goodix_fb_state_chg_callback+0x110>
		00000000000016a8:  R_AARCH64_CALL26	_printk
    16ac: 52800028     	mov	w8, #0x1                // =1
    16b0: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000016b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbcf
    16b4: 91000000     	add	x0, x0, #0x0
		00000000000016b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbcf
    16b8: aa1303e1     	mov	x1, x19
    16bc: 3901c688     	strb	w8, [x20, #0x71]
    16c0: 94000000     	bl	0x16c0 <goodix_fb_state_chg_callback+0x128>
		00000000000016c0:  R_AARCH64_CALL26	_printk
    16c4: 52800048     	mov	w8, #0x2                // =2
    16c8: 910013e0     	add	x0, sp, #0x4
    16cc: 390013e8     	strb	w8, [sp, #0x4]
    16d0: 94000000     	bl	0x16d0 <goodix_fb_state_chg_callback+0x138>
		00000000000016d0:  R_AARCH64_CALL26	sendnlmsg
    16d4: 17ffffd3     	b	0x1620 <goodix_fb_state_chg_callback+0x88>
    16d8: 90000000     	adrp	x0, 0x1000 <gf_probe+0x2cc>
		00000000000016d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf5
    16dc: 91000000     	add	x0, x0, #0x0
		00000000000016dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf5
    16e0: 17ffffc1     	b	0x15e4 <goodix_fb_state_chg_callback+0x4c>
    16e4: 94000000     	bl	0x16e4 <goodix_fb_state_chg_callback+0x14c>
		00000000000016e4:  R_AARCH64_CALL26	__stack_chk_fail
