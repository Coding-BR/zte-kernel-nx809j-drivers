
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003724 <aw22xxx_para_show>:
    3724: d503233f     	paciasp
    3728: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    372c: a9016ffc     	stp	x28, x27, [sp, #0x10]
    3730: a90267fa     	stp	x26, x25, [sp, #0x20]
    3734: a9035ff8     	stp	x24, x23, [sp, #0x30]
    3738: a90457f6     	stp	x22, x21, [sp, #0x40]
    373c: a9054ff4     	stp	x20, x19, [sp, #0x50]
    3740: 910003fd     	mov	x29, sp
    3744: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003744:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    3748: b9400108     	ldr	w8, [x8]
		0000000000003748:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    374c: 34000668     	cbz	w8, 0x3818 <aw22xxx_para_show+0xf4>
    3750: 528b8539     	mov	w25, #0x5c29            // =23593
    3754: 528e147a     	mov	w26, #0x70a3            // =28835
    3758: aa0203f3     	mov	x19, x2
    375c: aa1f03f8     	mov	x24, xzr
    3760: aa1f03f6     	mov	x22, xzr
    3764: 72b851f9     	movk	w25, #0xc28f, lsl #16
    3768: 72a147ba     	movk	w26, #0xa3d, lsl #16
    376c: 5282001b     	mov	w27, #0x1000            // =4096
    3770: 9000001c     	adrp	x28, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003770:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x5
    3774: 9100039c     	add	x28, x28, #0x0
		0000000000003774:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_bss_base+0x5
    3778: 90000015     	adrp	x21, 0x3000 <aw22xxx_imax_show+0xd0>
		0000000000003778:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x198d
    377c: 910002b5     	add	x21, x21, #0x0
		000000000000377c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x198d
    3780: 52800334     	mov	w20, #0x19              // =25
    3784: 1400000f     	b	0x37c0 <aw22xxx_para_show+0x9c>
    3788: f130d2ff     	cmp	x23, #0xc34
    378c: 54000588     	b.hi	0x383c <aw22xxx_para_show+0x118>
    3790: 38786b83     	ldrb	w3, [x28, x24]
    3794: cb160361     	sub	x1, x27, x22
    3798: 8b160260     	add	x0, x19, x22
    379c: aa1503e2     	mov	x2, x21
    37a0: 94000000     	bl	0x37a0 <aw22xxx_para_show+0x7c>
		00000000000037a0:  R_AARCH64_CALL26	snprintf
    37a4: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000037a4:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61b4
    37a8: 91000718     	add	x24, x24, #0x1
    37ac: 8b20c2d6     	add	x22, x22, w0, sxtw
    37b0: b9400108     	ldr	w8, [x8]
		00000000000037b0:  R_AARCH64_LDST32_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61b4
    37b4: 1b147d08     	mul	w8, w8, w20
    37b8: eb08031f     	cmp	x24, x8
    37bc: 540001e2     	b.hs	0x37f8 <aw22xxx_para_show+0xd4>
    37c0: 12003f08     	and	w8, w24, #0xffff
    37c4: d343ff17     	lsr	x23, x24, #3
    37c8: 1b197d08     	mul	w8, w8, w25
    37cc: 6b1a011f     	cmp	w8, w26
    37d0: 54fffdc8     	b.hi	0x3788 <aw22xxx_para_show+0x64>
    37d4: cb160361     	sub	x1, x27, x22
    37d8: 8b160260     	add	x0, x19, x22
    37dc: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000037dc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc4a
    37e0: 91000042     	add	x2, x2, #0x0
		00000000000037e0:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc4a
    37e4: 94000000     	bl	0x37e4 <aw22xxx_para_show+0xc0>
		00000000000037e4:  R_AARCH64_CALL26	snprintf
    37e8: f130d6ff     	cmp	x23, #0xc35
    37ec: 54000282     	b.hs	0x383c <aw22xxx_para_show+0x118>
    37f0: 8b20c2d6     	add	x22, x22, w0, sxtw
    37f4: 17ffffe7     	b	0x3790 <aw22xxx_para_show+0x6c>
    37f8: 52820008     	mov	w8, #0x1000             // =4096
    37fc: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_show+0xd0>
		00000000000037fc:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0xc4a
    3800: 91000042     	add	x2, x2, #0x0
		0000000000003800:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0xc4a
    3804: cb160101     	sub	x1, x8, x22
    3808: 8b160260     	add	x0, x19, x22
    380c: 94000000     	bl	0x380c <aw22xxx_para_show+0xe8>
		000000000000380c:  R_AARCH64_CALL26	snprintf
    3810: 8b20c2c0     	add	x0, x22, w0, sxtw
    3814: 14000002     	b	0x381c <aw22xxx_para_show+0xf8>
    3818: aa1f03e0     	mov	x0, xzr
    381c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    3820: a94457f6     	ldp	x22, x21, [sp, #0x40]
    3824: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    3828: a94267fa     	ldp	x26, x25, [sp, #0x20]
    382c: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    3830: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    3834: d50323bf     	autiasp
    3838: d65f03c0     	ret
    383c: d42aa240     	brk	#0x5512
