
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013e14 <syna_tcm_rezero>:
   13e14: d503233f     	paciasp
   13e18: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13e1c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13e20: 910003fd     	mov	x29, sp
   13e24: b40003c0     	cbz	x0, 0x13e9c <syna_tcm_rezero+0x88>
   13e28: 39402402     	ldrb	w2, [x0, #0x9]
   13e2c: 7100045f     	cmp	w2, #0x1
   13e30: 54000441     	b.ne	0x13eb8 <syna_tcm_rezero+0xa4>
   13e34: 2a0103f3     	mov	w19, w1
   13e38: 350000a1     	cbnz	w1, 0x13e4c <syna_tcm_rezero+0x38>
   13e3c: f9402408     	ldr	x8, [x0, #0x48]
   13e40: 39405108     	ldrb	w8, [x8, #0x14]
   13e44: 360005a8     	tbz	w8, #0x0, 0x13ef8 <syna_tcm_rezero+0xe4>
   13e48: 2a1f03f3     	mov	w19, wzr
   13e4c: f941cc08     	ldr	x8, [x0, #0x398]
   13e50: 528004e1     	mov	w1, #0x27               // =39
   13e54: aa1f03e2     	mov	x2, xzr
   13e58: 2a1f03e3     	mov	w3, wzr
   13e5c: aa1f03e4     	mov	x4, xzr
   13e60: 2a1303e5     	mov	w5, w19
   13e64: b85fc110     	ldur	w16, [x8, #-0x4]
   13e68: 728751d1     	movk	w17, #0x3a8e
   13e6c: 72a48411     	movk	w17, #0x2420, lsl #16
   13e70: 6b11021f     	cmp	w16, w17
   13e74: 54000040     	b.eq	0x13e7c <syna_tcm_rezero+0x68>
   13e78: d4304500     	brk	#0x8228
   13e7c: d63f0100     	blr	x8
   13e80: 2a0003e8     	mov	w8, w0
   13e84: 2a1f03e0     	mov	w0, wzr
   13e88: 37f80268     	tbnz	w8, #0x1f, 0x13ed4 <syna_tcm_rezero+0xc0>
   13e8c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13e90: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13e94: d50323bf     	autiasp
   13e98: d65f03c0     	ret
   13e9c: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13ea0: 91000000     	add	x0, x0, #0x0
		0000000000013ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13ea4: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13ea8: 91000021     	add	x1, x1, #0x0
		0000000000013ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13eac: 94000000     	bl	0x13eac <syna_tcm_rezero+0x98>
		0000000000013eac:  R_AARCH64_CALL26	_printk
   13eb0: 12801e00     	mov	w0, #-0xf1              // =-241
   13eb4: 17fffff6     	b	0x13e8c <syna_tcm_rezero+0x78>
   13eb8: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   13ebc: 91000000     	add	x0, x0, #0x0
		0000000000013ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   13ec0: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13ec4: 91000021     	add	x1, x1, #0x0
		0000000000013ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13ec8: 94000000     	bl	0x13ec8 <syna_tcm_rezero+0xb4>
		0000000000013ec8:  R_AARCH64_CALL26	_printk
   13ecc: 12801e00     	mov	w0, #-0xf1              // =-241
   13ed0: 17ffffef     	b	0x13e8c <syna_tcm_rezero+0x78>
   13ed4: 90000000     	adrp	x0, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13ed8: 91000000     	add	x0, x0, #0x0
		0000000000013ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   13edc: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13ee0: 91000021     	add	x1, x1, #0x0
		0000000000013ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13ee4: 528004e2     	mov	w2, #0x27               // =39
   13ee8: 2a0803f3     	mov	w19, w8
   13eec: 94000000     	bl	0x13eec <syna_tcm_rezero+0xd8>
		0000000000013eec:  R_AARCH64_CALL26	_printk
   13ef0: 2a1303e0     	mov	w0, w19
   13ef4: 17ffffe6     	b	0x13e8c <syna_tcm_rezero+0x78>
   13ef8: 90000008     	adrp	x8, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13efc: 91000108     	add	x8, x8, #0x0
		0000000000013efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13f00: b9420c13     	ldr	w19, [x0, #0x20c]
   13f04: 90000001     	adrp	x1, 0x13000 <syna_tcm_wait_for_report+0x234>
		0000000000013f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13f08: 91000021     	add	x1, x1, #0x0
		0000000000013f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13f0c: aa0003f4     	mov	x20, x0
   13f10: aa0803e0     	mov	x0, x8
   13f14: 94000000     	bl	0x13f14 <syna_tcm_rezero+0x100>
		0000000000013f14:  R_AARCH64_CALL26	_printk
   13f18: aa1403e0     	mov	x0, x20
   13f1c: 17ffffcc     	b	0x13e4c <syna_tcm_rezero+0x38>
