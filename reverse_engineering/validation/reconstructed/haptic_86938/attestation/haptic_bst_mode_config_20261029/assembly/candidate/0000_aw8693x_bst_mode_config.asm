
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003658 <aw8693x_bst_mode_config>:
    3658: d503233f     	paciasp
    365c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3660: f9000bf3     	str	x19, [sp, #0x10]
    3664: 910003fd     	mov	x29, sp
    3668: 12001c28     	and	w8, w1, #0xff
    366c: aa0003f3     	mov	x19, x0
    3670: 7100051f     	cmp	w8, #0x1
    3674: 54000200     	b.eq	0x36b4 <aw8693x_bst_mode_config+0x5c>
    3678: 350003a8     	cbnz	w8, 0x36ec <aw8693x_bst_mode_config+0x94>
    367c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		000000000000367c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5
    3680: 91000000     	add	x0, x0, #0x0
		0000000000003680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5
    3684: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3688: 91000021     	add	x1, x1, #0x0
		0000000000003688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    368c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		000000000000368c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
    3690: 91000063     	add	x3, x3, #0x0
		0000000000003690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
    3694: 52803fc2     	mov	w2, #0x1fe              // =510
    3698: 94000000     	bl	0x3698 <aw8693x_bst_mode_config+0x40>
		0000000000003698:  R_AARCH64_CALL26	_printk
    369c: aa1303e0     	mov	x0, x19
    36a0: 528000c1     	mov	w1, #0x6                // =6
    36a4: 12800402     	mov	w2, #-0x21              // =-33
    36a8: 2a1f03e3     	mov	w3, wzr
    36ac: 94000000     	bl	0x36ac <aw8693x_bst_mode_config+0x54>
		00000000000036ac:  R_AARCH64_CALL26	i2c_w_bits
    36b0: 14000019     	b	0x3714 <aw8693x_bst_mode_config+0xbc>
    36b4: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		00000000000036b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x818
    36b8: 91000000     	add	x0, x0, #0x0
		00000000000036b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x818
    36bc: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		00000000000036bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    36c0: 91000021     	add	x1, x1, #0x0
		00000000000036c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    36c4: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		00000000000036c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
    36c8: 91000063     	add	x3, x3, #0x0
		00000000000036c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
    36cc: 52803f02     	mov	w2, #0x1f8              // =504
    36d0: 94000000     	bl	0x36d0 <aw8693x_bst_mode_config+0x78>
		00000000000036d0:  R_AARCH64_CALL26	_printk
    36d4: aa1303e0     	mov	x0, x19
    36d8: 528000c1     	mov	w1, #0x6                // =6
    36dc: 12800402     	mov	w2, #-0x21              // =-33
    36e0: 52800403     	mov	w3, #0x20               // =32
    36e4: 94000000     	bl	0x36e4 <aw8693x_bst_mode_config+0x8c>
		00000000000036e4:  R_AARCH64_CALL26	i2c_w_bits
    36e8: 1400000b     	b	0x3714 <aw8693x_bst_mode_config+0xbc>
    36ec: 90000008     	adrp	x8, 0x3000 <f0_show+0xb4>
		00000000000036ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    36f0: 91000108     	add	x8, x8, #0x0
		00000000000036f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    36f4: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		00000000000036f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x238
    36f8: 91000000     	add	x0, x0, #0x0
		00000000000036f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x238
    36fc: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		00000000000036fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
    3700: 91000063     	add	x3, x3, #0x0
		0000000000003700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
    3704: 12001c24     	and	w4, w1, #0xff
    3708: aa0803e1     	mov	x1, x8
    370c: 52804082     	mov	w2, #0x204              // =516
    3710: 94000000     	bl	0x3710 <aw8693x_bst_mode_config+0xb8>
		0000000000003710:  R_AARCH64_CALL26	_printk
    3714: f9400bf3     	ldr	x19, [sp, #0x10]
    3718: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    371c: d50323bf     	autiasp
    3720: d65f03c0     	ret
