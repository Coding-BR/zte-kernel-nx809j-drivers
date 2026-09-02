
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000035c0 <aw22xxx_para_show>:
    35c0: d503233f     	paciasp
    35c4: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    35c8: a9016ffc     	stp	x28, x27, [sp, #0x10]
    35cc: a90267fa     	stp	x26, x25, [sp, #0x20]
    35d0: a9035ff8     	stp	x24, x23, [sp, #0x30]
    35d4: a90457f6     	stp	x22, x21, [sp, #0x40]
    35d8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    35dc: 910003fd     	mov	x29, sp
    35e0: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		00000000000035e0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b4
    35e4: b9400108     	ldr	w8, [x8]
		00000000000035e4:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
    35e8: 34000668     	cbz	w8, 0x36b4 <aw22xxx_para_show+0xf4>
    35ec: 528b8539     	mov	w25, #0x5c29            // =23593
    35f0: 528e147a     	mov	w26, #0x70a3            // =28835
    35f4: aa0203f3     	mov	x19, x2
    35f8: aa1f03f8     	mov	x24, xzr
    35fc: aa1f03f6     	mov	x22, xzr
    3600: 72b851f9     	movk	w25, #0xc28f, lsl #16
    3604: 72a147ba     	movk	w26, #0xa3d, lsl #16
    3608: 5282001b     	mov	w27, #0x1000            // =4096
    360c: 9000001c     	adrp	x28, 0x3000 <aw22xxx_imax_store+0x48>
		000000000000360c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x5
    3610: 9100039c     	add	x28, x28, #0x0
		0000000000003610:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x5
    3614: 90000015     	adrp	x21, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x198d
    3618: 910002b5     	add	x21, x21, #0x0
		0000000000003618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x198d
    361c: 52800334     	mov	w20, #0x19              // =25
    3620: 1400000f     	b	0x365c <aw22xxx_para_show+0x9c>
    3624: f130d2ff     	cmp	x23, #0xc34
    3628: 54000588     	b.hi	0x36d8 <aw22xxx_para_show+0x118>
    362c: 38786b83     	ldrb	w3, [x28, x24]
    3630: cb160361     	sub	x1, x27, x22
    3634: 8b160260     	add	x0, x19, x22
    3638: aa1503e2     	mov	x2, x21
    363c: 94000000     	bl	0x363c <aw22xxx_para_show+0x7c>
		000000000000363c:  R_AARCH64_CALL26	snprintf
    3640: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003640:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x61b4
    3644: 91000718     	add	x24, x24, #0x1
    3648: 8b20c2d6     	add	x22, x22, w0, sxtw
    364c: b9400108     	ldr	w8, [x8]
		000000000000364c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x61b4
    3650: 1b147d08     	mul	w8, w8, w20
    3654: eb08031f     	cmp	x24, x8
    3658: 540001e2     	b.hs	0x3694 <aw22xxx_para_show+0xd4>
    365c: 12003f08     	and	w8, w24, #0xffff
    3660: d343ff17     	lsr	x23, x24, #3
    3664: 1b197d08     	mul	w8, w8, w25
    3668: 6b1a011f     	cmp	w8, w26
    366c: 54fffdc8     	b.hi	0x3624 <aw22xxx_para_show+0x64>
    3670: cb160361     	sub	x1, x27, x22
    3674: 8b160260     	add	x0, x19, x22
    3678: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4a
    367c: 91000042     	add	x2, x2, #0x0
		000000000000367c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4a
    3680: 94000000     	bl	0x3680 <aw22xxx_para_show+0xc0>
		0000000000003680:  R_AARCH64_CALL26	snprintf
    3684: f130d6ff     	cmp	x23, #0xc35
    3688: 54000282     	b.hs	0x36d8 <aw22xxx_para_show+0x118>
    368c: 8b20c2d6     	add	x22, x22, w0, sxtw
    3690: 17ffffe7     	b	0x362c <aw22xxx_para_show+0x6c>
    3694: 52820008     	mov	w8, #0x1000             // =4096
    3698: 90000002     	adrp	x2, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc4a
    369c: 91000042     	add	x2, x2, #0x0
		000000000000369c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc4a
    36a0: cb160101     	sub	x1, x8, x22
    36a4: 8b160260     	add	x0, x19, x22
    36a8: 94000000     	bl	0x36a8 <aw22xxx_para_show+0xe8>
		00000000000036a8:  R_AARCH64_CALL26	snprintf
    36ac: 8b20c2c0     	add	x0, x22, w0, sxtw
    36b0: 14000002     	b	0x36b8 <aw22xxx_para_show+0xf8>
    36b4: aa1f03e0     	mov	x0, xzr
    36b8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    36bc: a94457f6     	ldp	x22, x21, [sp, #0x40]
    36c0: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    36c4: a94267fa     	ldp	x26, x25, [sp, #0x20]
    36c8: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    36cc: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    36d0: d50323bf     	autiasp
    36d4: d65f03c0     	ret
    36d8: d42aa240     	brk	#0x5512
