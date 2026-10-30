
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e770 <syna_tcm_reset>:
   1e770: d503233f     	paciasp
   1e774: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1e778: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1e77c: 910003fd     	mov	x29, sp
   1e780: b40006a0     	cbz	x0, 0x1e854 <syna_tcm_reset+0xe4>
   1e784: aa0003f3     	mov	x19, x0
   1e788: 340000a1     	cbz	w1, 0x1e79c <syna_tcm_reset+0x2c>
   1e78c: b941ee68     	ldr	w8, [x19, #0x1ec]
   1e790: 6b01011f     	cmp	w8, w1
   1e794: 1a818105     	csel	w5, w8, w1, hi
   1e798: 14000005     	b	0x1e7ac <syna_tcm_reset+0x3c>
   1e79c: f9402668     	ldr	x8, [x19, #0x48]
   1e7a0: 39405108     	ldrb	w8, [x8, #0x14]
   1e7a4: 360008a8     	tbz	w8, #0x0, 0x1e8b8 <syna_tcm_reset+0x148>
   1e7a8: 2a1f03e5     	mov	w5, wzr
   1e7ac: f941ce68     	ldr	x8, [x19, #0x398]
   1e7b0: aa1303e0     	mov	x0, x19
   1e7b4: 52800081     	mov	w1, #0x4                // =4
   1e7b8: aa1f03e2     	mov	x2, xzr
   1e7bc: 2a1f03e3     	mov	w3, wzr
   1e7c0: aa1f03e4     	mov	x4, xzr
   1e7c4: b85fc110     	ldur	w16, [x8, #-0x4]
   1e7c8: 728751d1     	movk	w17, #0x3a8e
   1e7cc: 72a48411     	movk	w17, #0x2420, lsl #16
   1e7d0: 6b11021f     	cmp	w16, w17
   1e7d4: 54000040     	b.eq	0x1e7dc <syna_tcm_reset+0x6c>
   1e7d8: d4304500     	brk	#0x8228
   1e7dc: d63f0100     	blr	x8
   1e7e0: 37f80480     	tbnz	w0, #0x1f, 0x1e870 <syna_tcm_reset+0x100>
   1e7e4: 39420669     	ldrb	w9, [x19, #0x81]
   1e7e8: f941da68     	ldr	x8, [x19, #0x3b0]
   1e7ec: 39002669     	strb	w9, [x19, #0x9]
   1e7f0: b4000128     	cbz	x8, 0x1e814 <syna_tcm_reset+0xa4>
   1e7f4: aa1303e0     	mov	x0, x19
   1e7f8: b85fc110     	ldur	w16, [x8, #-0x4]
   1e7fc: 728ca131     	movk	w17, #0x6509
   1e800: 72baaf51     	movk	w17, #0xd57a, lsl #16
   1e804: 6b11021f     	cmp	w16, w17
   1e808: 54000040     	b.eq	0x1e810 <syna_tcm_reset+0xa0>
   1e80c: d4304500     	brk	#0x8228
   1e810: d63f0100     	blr	x8
   1e814: f951f268     	ldr	x8, [x19, #0x23e0]
   1e818: b4000148     	cbz	x8, 0x1e840 <syna_tcm_reset+0xd0>
   1e81c: f951ee60     	ldr	x0, [x19, #0x23d8]
   1e820: b85fc110     	ldur	w16, [x8, #-0x4]
   1e824: 729c8c91     	movk	w17, #0xe464
   1e828: 72b80d31     	movk	w17, #0xc069, lsl #16
   1e82c: 6b11021f     	cmp	w16, w17
   1e830: 54000040     	b.eq	0x1e838 <syna_tcm_reset+0xc8>
   1e834: d4304500     	brk	#0x8228
   1e838: d63f0100     	blr	x8
   1e83c: 37f802c0     	tbnz	w0, #0x1f, 0x1e894 <syna_tcm_reset+0x124>
   1e840: 2a1f03e0     	mov	w0, wzr
   1e844: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1e848: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1e84c: d50323bf     	autiasp
   1e850: d65f03c0     	ret
   1e854: 90000000     	adrp	x0, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   1e858: 91000000     	add	x0, x0, #0x0
		000000000001e858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   1e85c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e85c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   1e860: 91000021     	add	x1, x1, #0x0
		000000000001e860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   1e864: 94000000     	bl	0x1e864 <syna_tcm_reset+0xf4>
		000000000001e864:  R_AARCH64_CALL26	_printk
   1e868: 12801e00     	mov	w0, #-0xf1              // =-241
   1e86c: 17fffff6     	b	0x1e844 <syna_tcm_reset+0xd4>
   1e870: 90000008     	adrp	x8, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   1e874: 91000108     	add	x8, x8, #0x0
		000000000001e874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   1e878: 90000001     	adrp	x1, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   1e87c: 91000021     	add	x1, x1, #0x0
		000000000001e87c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   1e880: 2a0003f3     	mov	w19, w0
   1e884: aa0803e0     	mov	x0, x8
   1e888: 52800082     	mov	w2, #0x4                // =4
   1e88c: 94000000     	bl	0x1e88c <syna_tcm_reset+0x11c>
		000000000001e88c:  R_AARCH64_CALL26	_printk
   1e890: 14000008     	b	0x1e8b0 <syna_tcm_reset+0x140>
   1e894: 90000008     	adrp	x8, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e8
   1e898: 91000108     	add	x8, x8, #0x0
		000000000001e898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e8
   1e89c: 90000001     	adrp	x1, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e89c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   1e8a0: 91000021     	add	x1, x1, #0x0
		000000000001e8a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   1e8a4: 2a0003f3     	mov	w19, w0
   1e8a8: aa0803e0     	mov	x0, x8
   1e8ac: 94000000     	bl	0x1e8ac <syna_tcm_reset+0x13c>
		000000000001e8ac:  R_AARCH64_CALL26	_printk
   1e8b0: 2a1303e0     	mov	w0, w19
   1e8b4: 17ffffe4     	b	0x1e844 <syna_tcm_reset+0xd4>
   1e8b8: b941ee74     	ldr	w20, [x19, #0x1ec]
   1e8bc: 90000000     	adrp	x0, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e8bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   1e8c0: 91000000     	add	x0, x0, #0x0
		000000000001e8c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   1e8c4: 90000001     	adrp	x1, 0x1e000 <syna_tcm_parse_fw_image+0x334>
		000000000001e8c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   1e8c8: 91000021     	add	x1, x1, #0x0
		000000000001e8c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   1e8cc: 94000000     	bl	0x1e8cc <syna_tcm_reset+0x15c>
		000000000001e8cc:  R_AARCH64_CALL26	_printk
   1e8d0: 2a1403e1     	mov	w1, w20
   1e8d4: 35fff5d4     	cbnz	w20, 0x1e78c <syna_tcm_reset+0x1c>
   1e8d8: 17ffffb4     	b	0x1e7a8 <syna_tcm_reset+0x38>
