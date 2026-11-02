
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b924 <syna_tcm_reset>:
   1b924: d503233f     	paciasp
   1b928: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b92c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1b930: 910003fd     	mov	x29, sp
   1b934: b40006a0     	cbz	x0, 0x1ba08 <syna_tcm_reset+0xe4>
   1b938: aa0003f3     	mov	x19, x0
   1b93c: 340000a1     	cbz	w1, 0x1b950 <syna_tcm_reset+0x2c>
   1b940: b941ee68     	ldr	w8, [x19, #0x1ec]
   1b944: 6b01011f     	cmp	w8, w1
   1b948: 1a818105     	csel	w5, w8, w1, hi
   1b94c: 14000005     	b	0x1b960 <syna_tcm_reset+0x3c>
   1b950: f9402668     	ldr	x8, [x19, #0x48]
   1b954: 39405108     	ldrb	w8, [x8, #0x14]
   1b958: 360008a8     	tbz	w8, #0x0, 0x1ba6c <syna_tcm_reset+0x148>
   1b95c: 2a1f03e5     	mov	w5, wzr
   1b960: f941ce68     	ldr	x8, [x19, #0x398]
   1b964: aa1303e0     	mov	x0, x19
   1b968: 52800081     	mov	w1, #0x4                // =4
   1b96c: aa1f03e2     	mov	x2, xzr
   1b970: 2a1f03e3     	mov	w3, wzr
   1b974: aa1f03e4     	mov	x4, xzr
   1b978: b85fc110     	ldur	w16, [x8, #-0x4]
   1b97c: 728751d1     	movk	w17, #0x3a8e
   1b980: 72a48411     	movk	w17, #0x2420, lsl #16
   1b984: 6b11021f     	cmp	w16, w17
   1b988: 54000040     	b.eq	0x1b990 <syna_tcm_reset+0x6c>
   1b98c: d4304500     	brk	#0x8228
   1b990: d63f0100     	blr	x8
   1b994: 37f80480     	tbnz	w0, #0x1f, 0x1ba24 <syna_tcm_reset+0x100>
   1b998: 39420669     	ldrb	w9, [x19, #0x81]
   1b99c: f941da68     	ldr	x8, [x19, #0x3b0]
   1b9a0: 39002669     	strb	w9, [x19, #0x9]
   1b9a4: b4000128     	cbz	x8, 0x1b9c8 <syna_tcm_reset+0xa4>
   1b9a8: aa1303e0     	mov	x0, x19
   1b9ac: b85fc110     	ldur	w16, [x8, #-0x4]
   1b9b0: 728ca131     	movk	w17, #0x6509
   1b9b4: 72baaf51     	movk	w17, #0xd57a, lsl #16
   1b9b8: 6b11021f     	cmp	w16, w17
   1b9bc: 54000040     	b.eq	0x1b9c4 <syna_tcm_reset+0xa0>
   1b9c0: d4304500     	brk	#0x8228
   1b9c4: d63f0100     	blr	x8
   1b9c8: f951f268     	ldr	x8, [x19, #0x23e0]
   1b9cc: b4000148     	cbz	x8, 0x1b9f4 <syna_tcm_reset+0xd0>
   1b9d0: f951ee60     	ldr	x0, [x19, #0x23d8]
   1b9d4: b85fc110     	ldur	w16, [x8, #-0x4]
   1b9d8: 729c8c91     	movk	w17, #0xe464
   1b9dc: 72b80d31     	movk	w17, #0xc069, lsl #16
   1b9e0: 6b11021f     	cmp	w16, w17
   1b9e4: 54000040     	b.eq	0x1b9ec <syna_tcm_reset+0xc8>
   1b9e8: d4304500     	brk	#0x8228
   1b9ec: d63f0100     	blr	x8
   1b9f0: 37f802c0     	tbnz	w0, #0x1f, 0x1ba48 <syna_tcm_reset+0x124>
   1b9f4: 2a1f03e0     	mov	w0, wzr
   1b9f8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1b9fc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1ba00: d50323bf     	autiasp
   1ba04: d65f03c0     	ret
   1ba08: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1ba0c: 91000000     	add	x0, x0, #0x0
		000000000001ba0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1ba10: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
   1ba14: 91000021     	add	x1, x1, #0x0
		000000000001ba14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
   1ba18: 94000000     	bl	0x1ba18 <syna_tcm_reset+0xf4>
		000000000001ba18:  R_AARCH64_CALL26	_printk
   1ba1c: 12801e00     	mov	w0, #-0xf1              // =-241
   1ba20: 17fffff6     	b	0x1b9f8 <syna_tcm_reset+0xd4>
   1ba24: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x885a
   1ba28: 91000108     	add	x8, x8, #0x0
		000000000001ba28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x885a
   1ba2c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
   1ba30: 91000021     	add	x1, x1, #0x0
		000000000001ba30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
   1ba34: 2a0003f3     	mov	w19, w0
   1ba38: aa0803e0     	mov	x0, x8
   1ba3c: 52800082     	mov	w2, #0x4                // =4
   1ba40: 94000000     	bl	0x1ba40 <syna_tcm_reset+0x11c>
		000000000001ba40:  R_AARCH64_CALL26	_printk
   1ba44: 14000008     	b	0x1ba64 <syna_tcm_reset+0x140>
   1ba48: 90000008     	adrp	x8, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149d
   1ba4c: 91000108     	add	x8, x8, #0x0
		000000000001ba4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149d
   1ba50: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
   1ba54: 91000021     	add	x1, x1, #0x0
		000000000001ba54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
   1ba58: 2a0003f3     	mov	w19, w0
   1ba5c: aa0803e0     	mov	x0, x8
   1ba60: 94000000     	bl	0x1ba60 <syna_tcm_reset+0x13c>
		000000000001ba60:  R_AARCH64_CALL26	_printk
   1ba64: 2a1303e0     	mov	w0, w19
   1ba68: 17ffffe4     	b	0x1b9f8 <syna_tcm_reset+0xd4>
   1ba6c: b941ee74     	ldr	w20, [x19, #0x1ec]
   1ba70: 90000000     	adrp	x0, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   1ba74: 91000000     	add	x0, x0, #0x0
		000000000001ba74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   1ba78: 90000001     	adrp	x1, 0x1b000 <syna_tcm_remove_device+0x1b8>
		000000000001ba78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fa
   1ba7c: 91000021     	add	x1, x1, #0x0
		000000000001ba7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fa
   1ba80: 94000000     	bl	0x1ba80 <syna_tcm_reset+0x15c>
		000000000001ba80:  R_AARCH64_CALL26	_printk
   1ba84: 2a1403e1     	mov	w1, w20
   1ba88: 35fff5d4     	cbnz	w20, 0x1b940 <syna_tcm_reset+0x1c>
   1ba8c: 17ffffb4     	b	0x1b95c <syna_tcm_reset+0x38>
