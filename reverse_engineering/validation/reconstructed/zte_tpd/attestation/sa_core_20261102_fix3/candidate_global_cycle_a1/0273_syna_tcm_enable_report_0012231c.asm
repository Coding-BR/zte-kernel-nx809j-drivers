
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b664 <syna_tcm_enable_report>:
    b664: d503233f     	paciasp
    b668: d10103ff     	sub	sp, sp, #0x40
    b66c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    b670: f90013f5     	str	x21, [sp, #0x20]
    b674: a9034ff4     	stp	x20, x19, [sp, #0x30]
    b678: 910043fd     	add	x29, sp, #0x10
    b67c: d5384108     	mrs	x8, SP_EL0
    b680: f9438908     	ldr	x8, [x8, #0x710]
    b684: f90007e8     	str	x8, [sp, #0x8]
    b688: 390013e1     	strb	w1, [sp, #0x4]
    b68c: b40004e0     	cbz	x0, 0xb728 <syna_tcm_enable_report+0xc4>
    b690: 2a0203f3     	mov	w19, w2
    b694: 39402402     	ldrb	w2, [x0, #0x9]
    b698: 7100045f     	cmp	w2, #0x1
    b69c: 54000541     	b.ne	0xb744 <syna_tcm_enable_report+0xe0>
    b6a0: 2a0303f4     	mov	w20, w3
    b6a4: 350000a3     	cbnz	w3, 0xb6b8 <syna_tcm_enable_report+0x54>
    b6a8: f9402408     	ldr	x8, [x0, #0x48]
    b6ac: 39405108     	ldrb	w8, [x8, #0x14]
    b6b0: 360007a8     	tbz	w8, #0x0, 0xb7a4 <syna_tcm_enable_report+0x140>
    b6b4: 2a1f03f4     	mov	w20, wzr
    b6b8: 7200027f     	tst	w19, #0x1
    b6bc: 528000a8     	mov	w8, #0x5                // =5
    b6c0: f941cc09     	ldr	x9, [x0, #0x398]
    b6c4: 1a881515     	cinc	w21, w8, eq
    b6c8: 910013e2     	add	x2, sp, #0x4
    b6cc: 52800023     	mov	w3, #0x1                // =1
    b6d0: 2a1503e1     	mov	w1, w21
    b6d4: aa1f03e4     	mov	x4, xzr
    b6d8: 2a1403e5     	mov	w5, w20
    b6dc: b85fc130     	ldur	w16, [x9, #-0x4]
    b6e0: 728751d1     	movk	w17, #0x3a8e
    b6e4: 72a48411     	movk	w17, #0x2420, lsl #16
    b6e8: 6b11021f     	cmp	w16, w17
    b6ec: 54000040     	b.eq	0xb6f4 <syna_tcm_enable_report+0x90>
    b6f0: d4304520     	brk	#0x8229
    b6f4: d63f0120     	blr	x9
    b6f8: 37f80340     	tbnz	w0, #0x1f, 0xb760 <syna_tcm_enable_report+0xfc>
    b6fc: d5384108     	mrs	x8, SP_EL0
    b700: f9438908     	ldr	x8, [x8, #0x710]
    b704: f94007e9     	ldr	x9, [sp, #0x8]
    b708: eb09011f     	cmp	x8, x9
    b70c: 54000601     	b.ne	0xb7cc <syna_tcm_enable_report+0x168>
    b710: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    b714: f94013f5     	ldr	x21, [sp, #0x20]
    b718: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    b71c: 910103ff     	add	sp, sp, #0x40
    b720: d50323bf     	autiasp
    b724: d65f03c0     	ret
    b728: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b72c: 91000000     	add	x0, x0, #0x0
		000000000000b72c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b730: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c493
    b734: 91000021     	add	x1, x1, #0x0
		000000000000b734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c493
    b738: 94000000     	bl	0xb738 <syna_tcm_enable_report+0xd4>
		000000000000b738:  R_AARCH64_CALL26	_printk
    b73c: 12801e00     	mov	w0, #-0xf1              // =-241
    b740: 17ffffef     	b	0xb6fc <syna_tcm_enable_report+0x98>
    b744: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1843f
    b748: 91000000     	add	x0, x0, #0x0
		000000000000b748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1843f
    b74c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b74c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c493
    b750: 91000021     	add	x1, x1, #0x0
		000000000000b750:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c493
    b754: 94000000     	bl	0xb754 <syna_tcm_enable_report+0xf0>
		000000000000b754:  R_AARCH64_CALL26	_printk
    b758: 12801e00     	mov	w0, #-0xf1              // =-241
    b75c: 17ffffe8     	b	0xb6fc <syna_tcm_enable_report+0x98>
    b760: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b760:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c715
    b764: 91000108     	add	x8, x8, #0x0
		000000000000b764:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c715
    b768: 7200027f     	tst	w19, #0x1
    b76c: 90000009     	adrp	x9, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4aa
    b770: 91000129     	add	x9, x9, #0x0
		000000000000b770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4aa
    b774: 394013e4     	ldrb	w4, [sp, #0x4]
    b778: 9a881123     	csel	x3, x9, x8, ne
    b77c: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b77c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b18a
    b780: 91000108     	add	x8, x8, #0x0
		000000000000b780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b18a
    b784: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b784:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c493
    b788: 91000021     	add	x1, x1, #0x0
		000000000000b788:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c493
    b78c: 12001ea2     	and	w2, w21, #0xff
    b790: 2a0003f3     	mov	w19, w0
    b794: aa0803e0     	mov	x0, x8
    b798: 94000000     	bl	0xb798 <syna_tcm_enable_report+0x134>
		000000000000b798:  R_AARCH64_CALL26	_printk
    b79c: 2a1303e0     	mov	w0, w19
    b7a0: 17ffffd7     	b	0xb6fc <syna_tcm_enable_report+0x98>
    b7a4: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b7a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bc6c
    b7a8: 91000108     	add	x8, x8, #0x0
		000000000000b7a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bc6c
    b7ac: b9420c14     	ldr	w20, [x0, #0x20c]
    b7b0: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b7b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c493
    b7b4: 91000021     	add	x1, x1, #0x0
		000000000000b7b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c493
    b7b8: aa0003f5     	mov	x21, x0
    b7bc: aa0803e0     	mov	x0, x8
    b7c0: 94000000     	bl	0xb7c0 <syna_tcm_enable_report+0x15c>
		000000000000b7c0:  R_AARCH64_CALL26	_printk
    b7c4: aa1503e0     	mov	x0, x21
    b7c8: 17ffffbc     	b	0xb6b8 <syna_tcm_enable_report+0x54>
    b7cc: 94000000     	bl	0xb7cc <syna_tcm_enable_report+0x168>
		000000000000b7cc:  R_AARCH64_CALL26	__stack_chk_fail
