
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001a664 <syna_tcm_v1_read>:
   1a664: d503233f     	paciasp
   1a668: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1a66c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1a670: 910003fd     	mov	x29, sp
   1a674: b4000402     	cbz	x2, 0x1a6f4 <syna_tcm_v1_read+0x90>
   1a678: 2a0103f3     	mov	w19, w1
   1a67c: 34000321     	cbz	w1, 0x1a6e0 <syna_tcm_v1_read+0x7c>
   1a680: 6b03027f     	cmp	w19, w3
   1a684: 54000468     	b.hi	0x1a710 <syna_tcm_v1_read+0xac>
   1a688: b9403c03     	ldr	w3, [x0, #0x3c]
   1a68c: aa0203f4     	mov	x20, x2
   1a690: 34000063     	cbz	w3, 0x1a69c <syna_tcm_v1_read+0x38>
   1a694: 6b13007f     	cmp	w3, w19
   1a698: 54000423     	b.lo	0x1a71c <syna_tcm_v1_read+0xb8>
   1a69c: f9402400     	ldr	x0, [x0, #0x48]
   1a6a0: b40004e0     	cbz	x0, 0x1a73c <syna_tcm_v1_read+0xd8>
   1a6a4: f9401008     	ldr	x8, [x0, #0x20]
   1a6a8: b4000528     	cbz	x8, 0x1a74c <syna_tcm_v1_read+0xe8>
   1a6ac: aa1403e1     	mov	x1, x20
   1a6b0: 2a1303e2     	mov	w2, w19
   1a6b4: b85fc110     	ldur	w16, [x8, #-0x4]
   1a6b8: 728403f1     	movk	w17, #0x201f
   1a6bc: 72a51491     	movk	w17, #0x28a4, lsl #16
   1a6c0: 6b11021f     	cmp	w16, w17
   1a6c4: 54000040     	b.eq	0x1a6cc <syna_tcm_v1_read+0x68>
   1a6c8: d4304500     	brk	#0x8228
   1a6cc: d63f0100     	blr	x8
   1a6d0: 37f804c0     	tbnz	w0, #0x1f, 0x1a768 <syna_tcm_v1_read+0x104>
   1a6d4: 39400282     	ldrb	w2, [x20]
   1a6d8: 7102945f     	cmp	w2, #0xa5
   1a6dc: 54000581     	b.ne	0x1a78c <syna_tcm_v1_read+0x128>
   1a6e0: 2a1f03e0     	mov	w0, wzr
   1a6e4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1a6e8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1a6ec: d50323bf     	autiasp
   1a6f0: d65f03c0     	ret
   1a6f4: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a6f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27fc
   1a6f8: 91000000     	add	x0, x0, #0x0
		000000000001a6f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27fc
   1a6fc: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a6fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cce
   1a700: 91000021     	add	x1, x1, #0x0
		000000000001a700:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cce
   1a704: 94000000     	bl	0x1a704 <syna_tcm_v1_read+0xa0>
		000000000001a704:  R_AARCH64_CALL26	_printk
   1a708: 12801e00     	mov	w0, #-0xf1              // =-241
   1a70c: 17fffff6     	b	0x1a6e4 <syna_tcm_v1_read+0x80>
   1a710: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7ad
   1a714: 91000000     	add	x0, x0, #0x0
		000000000001a714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7ad
   1a718: 14000003     	b	0x1a724 <syna_tcm_v1_read+0xc0>
   1a71c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a71c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2260
   1a720: 91000000     	add	x0, x0, #0x0
		000000000001a720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2260
   1a724: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cce
   1a728: 91000021     	add	x1, x1, #0x0
		000000000001a728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cce
   1a72c: 2a1303e2     	mov	w2, w19
   1a730: 94000000     	bl	0x1a730 <syna_tcm_v1_read+0xcc>
		000000000001a730:  R_AARCH64_CALL26	_printk
   1a734: 12801e00     	mov	w0, #-0xf1              // =-241
   1a738: 17ffffeb     	b	0x1a6e4 <syna_tcm_v1_read+0x80>
   1a73c: 12801e14     	mov	w20, #-0xf1             // =-241
   1a740: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   1a744: 91000000     	add	x0, x0, #0x0
		000000000001a744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   1a748: 14000004     	b	0x1a758 <syna_tcm_v1_read+0xf4>
   1a74c: 12801e94     	mov	w20, #-0xf5             // =-245
   1a750: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a750:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce6
   1a754: 91000000     	add	x0, x0, #0x0
		000000000001a754:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce6
   1a758: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a758:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd8
   1a75c: 91000021     	add	x1, x1, #0x0
		000000000001a75c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd8
   1a760: 94000000     	bl	0x1a760 <syna_tcm_v1_read+0xfc>
		000000000001a760:  R_AARCH64_CALL26	_printk
   1a764: 14000002     	b	0x1a76c <syna_tcm_v1_read+0x108>
   1a768: 2a0003f4     	mov	w20, w0
   1a76c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2aa
   1a770: 91000000     	add	x0, x0, #0x0
		000000000001a770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2aa
   1a774: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cce
   1a778: 91000021     	add	x1, x1, #0x0
		000000000001a778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cce
   1a77c: 2a1303e2     	mov	w2, w19
   1a780: 94000000     	bl	0x1a780 <syna_tcm_v1_read+0x11c>
		000000000001a780:  R_AARCH64_CALL26	_printk
   1a784: 2a1403e0     	mov	w0, w20
   1a788: 17ffffd7     	b	0x1a6e4 <syna_tcm_v1_read+0x80>
   1a78c: 90000000     	adrp	x0, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a78c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7130
   1a790: 91000000     	add	x0, x0, #0x0
		000000000001a790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7130
   1a794: 90000001     	adrp	x1, 0x1a000 <syna_tcm_v1_read_message+0x1050>
		000000000001a794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7cce
   1a798: 91000021     	add	x1, x1, #0x0
		000000000001a798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7cce
   1a79c: 94000000     	bl	0x1a79c <syna_tcm_v1_read+0x138>
		000000000001a79c:  R_AARCH64_CALL26	_printk
   1a7a0: 12801e20     	mov	w0, #-0xf2              // =-242
   1a7a4: 17ffffd0     	b	0x1a6e4 <syna_tcm_v1_read+0x80>
