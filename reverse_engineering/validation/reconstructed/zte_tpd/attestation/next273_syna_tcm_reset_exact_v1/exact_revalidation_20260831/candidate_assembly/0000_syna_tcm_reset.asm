
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013ec8 <syna_tcm_reset>:
   13ec8: d503233f     	paciasp
   13ecc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13ed0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13ed4: 910003fd     	mov	x29, sp
   13ed8: b40006a0     	cbz	x0, 0x13fac <syna_tcm_reset+0xe4>
   13edc: aa0003f3     	mov	x19, x0
   13ee0: 340000a1     	cbz	w1, 0x13ef4 <syna_tcm_reset+0x2c>
   13ee4: b941ee68     	ldr	w8, [x19, #0x1ec]
   13ee8: 6b01011f     	cmp	w8, w1
   13eec: 1a818105     	csel	w5, w8, w1, hi
   13ef0: 14000005     	b	0x13f04 <syna_tcm_reset+0x3c>
   13ef4: f9402668     	ldr	x8, [x19, #0x48]
   13ef8: 39405108     	ldrb	w8, [x8, #0x14]
   13efc: 360008a8     	tbz	w8, #0x0, 0x14010 <syna_tcm_reset+0x148>
   13f00: 2a1f03e5     	mov	w5, wzr
   13f04: f941ce68     	ldr	x8, [x19, #0x398]
   13f08: aa1303e0     	mov	x0, x19
   13f0c: 52800081     	mov	w1, #0x4                // =4
   13f10: aa1f03e2     	mov	x2, xzr
   13f14: 2a1f03e3     	mov	w3, wzr
   13f18: aa1f03e4     	mov	x4, xzr
   13f1c: b85fc110     	ldur	w16, [x8, #-0x4]
   13f20: 728751d1     	movk	w17, #0x3a8e
   13f24: 72a48411     	movk	w17, #0x2420, lsl #16
   13f28: 6b11021f     	cmp	w16, w17
   13f2c: 54000040     	b.eq	0x13f34 <syna_tcm_reset+0x6c>
   13f30: d4304500     	brk	#0x8228
   13f34: d63f0100     	blr	x8
   13f38: 37f80480     	tbnz	w0, #0x1f, 0x13fc8 <syna_tcm_reset+0x100>
   13f3c: 39420669     	ldrb	w9, [x19, #0x81]
   13f40: f941da68     	ldr	x8, [x19, #0x3b0]
   13f44: 39002669     	strb	w9, [x19, #0x9]
   13f48: b4000128     	cbz	x8, 0x13f6c <syna_tcm_reset+0xa4>
   13f4c: aa1303e0     	mov	x0, x19
   13f50: b85fc110     	ldur	w16, [x8, #-0x4]
   13f54: 728ca131     	movk	w17, #0x6509
   13f58: 72baaf51     	movk	w17, #0xd57a, lsl #16
   13f5c: 6b11021f     	cmp	w16, w17
   13f60: 54000040     	b.eq	0x13f68 <syna_tcm_reset+0xa0>
   13f64: d4304500     	brk	#0x8228
   13f68: d63f0100     	blr	x8
   13f6c: f951f268     	ldr	x8, [x19, #0x23e0]
   13f70: b4000148     	cbz	x8, 0x13f98 <syna_tcm_reset+0xd0>
   13f74: f951ee60     	ldr	x0, [x19, #0x23d8]
   13f78: b85fc110     	ldur	w16, [x8, #-0x4]
   13f7c: 729c8c91     	movk	w17, #0xe464
   13f80: 72b80d31     	movk	w17, #0xc069, lsl #16
   13f84: 6b11021f     	cmp	w16, w17
   13f88: 54000040     	b.eq	0x13f90 <syna_tcm_reset+0xc8>
   13f8c: d4304500     	brk	#0x8228
   13f90: d63f0100     	blr	x8
   13f94: 37f802c0     	tbnz	w0, #0x1f, 0x13fec <syna_tcm_reset+0x124>
   13f98: 2a1f03e0     	mov	w0, wzr
   13f9c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13fa0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13fa4: d50323bf     	autiasp
   13fa8: d65f03c0     	ret
   13fac: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13fb0: 91000000     	add	x0, x0, #0x0
		0000000000013fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13fb4: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   13fb8: 91000021     	add	x1, x1, #0x0
		0000000000013fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   13fbc: 94000000     	bl	0x13fbc <syna_tcm_reset+0xf4>
		0000000000013fbc:  R_AARCH64_CALL26	_printk
   13fc0: 12801e00     	mov	w0, #-0xf1              // =-241
   13fc4: 17fffff6     	b	0x13f9c <syna_tcm_reset+0xd4>
   13fc8: 90000008     	adrp	x8, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13fcc: 91000108     	add	x8, x8, #0x0
		0000000000013fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   13fd0: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   13fd4: 91000021     	add	x1, x1, #0x0
		0000000000013fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   13fd8: 2a0003f3     	mov	w19, w0
   13fdc: aa0803e0     	mov	x0, x8
   13fe0: 52800082     	mov	w2, #0x4                // =4
   13fe4: 94000000     	bl	0x13fe4 <syna_tcm_reset+0x11c>
		0000000000013fe4:  R_AARCH64_CALL26	_printk
   13fe8: 14000008     	b	0x14008 <syna_tcm_reset+0x140>
   13fec: 90000008     	adrp	x8, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14e8
   13ff0: 91000108     	add	x8, x8, #0x0
		0000000000013ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14e8
   13ff4: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   13ff8: 91000021     	add	x1, x1, #0x0
		0000000000013ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   13ffc: 2a0003f3     	mov	w19, w0
   14000: aa0803e0     	mov	x0, x8
   14004: 94000000     	bl	0x14004 <syna_tcm_reset+0x13c>
		0000000000014004:  R_AARCH64_CALL26	_printk
   14008: 2a1303e0     	mov	w0, w19
   1400c: 17ffffe4     	b	0x13f9c <syna_tcm_reset+0xd4>
   14010: b941ee74     	ldr	w20, [x19, #0x1ec]
   14014: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   14018: 91000000     	add	x0, x0, #0x0
		0000000000014018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   1401c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		000000000001401c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x308
   14020: 91000021     	add	x1, x1, #0x0
		0000000000014020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x308
   14024: 94000000     	bl	0x14024 <syna_tcm_reset+0x15c>
		0000000000014024:  R_AARCH64_CALL26	_printk
   14028: 2a1403e1     	mov	w1, w20
   1402c: 35fff5d4     	cbnz	w20, 0x13ee4 <syna_tcm_reset+0x1c>
   14030: 17ffffb4     	b	0x13f00 <syna_tcm_reset+0x38>
