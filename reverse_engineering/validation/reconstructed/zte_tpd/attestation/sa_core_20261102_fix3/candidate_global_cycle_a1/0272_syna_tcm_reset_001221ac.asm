
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013f24 <syna_tcm_reset>:
   13f24: d503233f     	paciasp
   13f28: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13f2c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13f30: 910003fd     	mov	x29, sp
   13f34: b40006a0     	cbz	x0, 0x14008 <syna_tcm_reset+0xe4>
   13f38: aa0003f3     	mov	x19, x0
   13f3c: 340000a1     	cbz	w1, 0x13f50 <syna_tcm_reset+0x2c>
   13f40: b941ee68     	ldr	w8, [x19, #0x1ec]
   13f44: 6b01011f     	cmp	w8, w1
   13f48: 1a818105     	csel	w5, w8, w1, hi
   13f4c: 14000005     	b	0x13f60 <syna_tcm_reset+0x3c>
   13f50: f9402668     	ldr	x8, [x19, #0x48]
   13f54: 39405108     	ldrb	w8, [x8, #0x14]
   13f58: 360008a8     	tbz	w8, #0x0, 0x1406c <syna_tcm_reset+0x148>
   13f5c: 2a1f03e5     	mov	w5, wzr
   13f60: f941ce68     	ldr	x8, [x19, #0x398]
   13f64: aa1303e0     	mov	x0, x19
   13f68: 52800081     	mov	w1, #0x4                // =4
   13f6c: aa1f03e2     	mov	x2, xzr
   13f70: 2a1f03e3     	mov	w3, wzr
   13f74: aa1f03e4     	mov	x4, xzr
   13f78: b85fc110     	ldur	w16, [x8, #-0x4]
   13f7c: 728751d1     	movk	w17, #0x3a8e
   13f80: 72a48411     	movk	w17, #0x2420, lsl #16
   13f84: 6b11021f     	cmp	w16, w17
   13f88: 54000040     	b.eq	0x13f90 <syna_tcm_reset+0x6c>
   13f8c: d4304500     	brk	#0x8228
   13f90: d63f0100     	blr	x8
   13f94: 37f80480     	tbnz	w0, #0x1f, 0x14024 <syna_tcm_reset+0x100>
   13f98: 39420669     	ldrb	w9, [x19, #0x81]
   13f9c: f941da68     	ldr	x8, [x19, #0x3b0]
   13fa0: 39002669     	strb	w9, [x19, #0x9]
   13fa4: b4000128     	cbz	x8, 0x13fc8 <syna_tcm_reset+0xa4>
   13fa8: aa1303e0     	mov	x0, x19
   13fac: b85fc110     	ldur	w16, [x8, #-0x4]
   13fb0: 728ca131     	movk	w17, #0x6509
   13fb4: 72baaf51     	movk	w17, #0xd57a, lsl #16
   13fb8: 6b11021f     	cmp	w16, w17
   13fbc: 54000040     	b.eq	0x13fc4 <syna_tcm_reset+0xa0>
   13fc0: d4304500     	brk	#0x8228
   13fc4: d63f0100     	blr	x8
   13fc8: f951f268     	ldr	x8, [x19, #0x23e0]
   13fcc: b4000148     	cbz	x8, 0x13ff4 <syna_tcm_reset+0xd0>
   13fd0: f951ee60     	ldr	x0, [x19, #0x23d8]
   13fd4: b85fc110     	ldur	w16, [x8, #-0x4]
   13fd8: 729c8c91     	movk	w17, #0xe464
   13fdc: 72b80d31     	movk	w17, #0xc069, lsl #16
   13fe0: 6b11021f     	cmp	w16, w17
   13fe4: 54000040     	b.eq	0x13fec <syna_tcm_reset+0xc8>
   13fe8: d4304500     	brk	#0x8228
   13fec: d63f0100     	blr	x8
   13ff0: 37f802c0     	tbnz	w0, #0x1f, 0x14048 <syna_tcm_reset+0x124>
   13ff4: 2a1f03e0     	mov	w0, wzr
   13ff8: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13ffc: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   14000: d50323bf     	autiasp
   14004: d65f03c0     	ret
   14008: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   1400c: 91000000     	add	x0, x0, #0x0
		000000000001400c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   14010: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   14014: 91000021     	add	x1, x1, #0x0
		0000000000014014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   14018: 94000000     	bl	0x14018 <syna_tcm_reset+0xf4>
		0000000000014018:  R_AARCH64_CALL26	_printk
   1401c: 12801e00     	mov	w0, #-0xf1              // =-241
   14020: 17fffff6     	b	0x13ff8 <syna_tcm_reset+0xd4>
   14024: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   14028: 91000108     	add	x8, x8, #0x0
		0000000000014028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   1402c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		000000000001402c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   14030: 91000021     	add	x1, x1, #0x0
		0000000000014030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   14034: 2a0003f3     	mov	w19, w0
   14038: aa0803e0     	mov	x0, x8
   1403c: 52800082     	mov	w2, #0x4                // =4
   14040: 94000000     	bl	0x14040 <syna_tcm_reset+0x11c>
		0000000000014040:  R_AARCH64_CALL26	_printk
   14044: 14000008     	b	0x14064 <syna_tcm_reset+0x140>
   14048: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e8
   1404c: 91000108     	add	x8, x8, #0x0
		000000000001404c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e8
   14050: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   14054: 91000021     	add	x1, x1, #0x0
		0000000000014054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   14058: 2a0003f3     	mov	w19, w0
   1405c: aa0803e0     	mov	x0, x8
   14060: 94000000     	bl	0x14060 <syna_tcm_reset+0x13c>
		0000000000014060:  R_AARCH64_CALL26	_printk
   14064: 2a1303e0     	mov	w0, w19
   14068: 17ffffe4     	b	0x13ff8 <syna_tcm_reset+0xd4>
   1406c: b941ee74     	ldr	w20, [x19, #0x1ec]
   14070: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   14074: 91000000     	add	x0, x0, #0x0
		0000000000014074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   14078: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   1407c: 91000021     	add	x1, x1, #0x0
		000000000001407c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   14080: 94000000     	bl	0x14080 <syna_tcm_reset+0x15c>
		0000000000014080:  R_AARCH64_CALL26	_printk
   14084: 2a1403e1     	mov	w1, w20
   14088: 35fff5d4     	cbnz	w20, 0x13f40 <syna_tcm_reset+0x1c>
   1408c: 17ffffb4     	b	0x13f5c <syna_tcm_reset+0x38>
