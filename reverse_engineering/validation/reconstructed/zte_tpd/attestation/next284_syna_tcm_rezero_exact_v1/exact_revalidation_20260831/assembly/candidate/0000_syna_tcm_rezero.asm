
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013db8 <syna_tcm_rezero>:
   13db8: d503233f     	paciasp
   13dbc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   13dc0: a9014ff4     	stp	x20, x19, [sp, #0x10]
   13dc4: 910003fd     	mov	x29, sp
   13dc8: b40003c0     	cbz	x0, 0x13e40 <syna_tcm_rezero+0x88>
   13dcc: 39402402     	ldrb	w2, [x0, #0x9]
   13dd0: 7100045f     	cmp	w2, #0x1
   13dd4: 54000441     	b.ne	0x13e5c <syna_tcm_rezero+0xa4>
   13dd8: 2a0103f3     	mov	w19, w1
   13ddc: 350000a1     	cbnz	w1, 0x13df0 <syna_tcm_rezero+0x38>
   13de0: f9402408     	ldr	x8, [x0, #0x48]
   13de4: 39405108     	ldrb	w8, [x8, #0x14]
   13de8: 360005a8     	tbz	w8, #0x0, 0x13e9c <syna_tcm_rezero+0xe4>
   13dec: 2a1f03f3     	mov	w19, wzr
   13df0: f941cc08     	ldr	x8, [x0, #0x398]
   13df4: 528004e1     	mov	w1, #0x27               // =39
   13df8: aa1f03e2     	mov	x2, xzr
   13dfc: 2a1f03e3     	mov	w3, wzr
   13e00: aa1f03e4     	mov	x4, xzr
   13e04: 2a1303e5     	mov	w5, w19
   13e08: b85fc110     	ldur	w16, [x8, #-0x4]
   13e0c: 728751d1     	movk	w17, #0x3a8e
   13e10: 72a48411     	movk	w17, #0x2420, lsl #16
   13e14: 6b11021f     	cmp	w16, w17
   13e18: 54000040     	b.eq	0x13e20 <syna_tcm_rezero+0x68>
   13e1c: d4304500     	brk	#0x8228
   13e20: d63f0100     	blr	x8
   13e24: 2a0003e8     	mov	w8, w0
   13e28: 2a1f03e0     	mov	w0, wzr
   13e2c: 37f80268     	tbnz	w8, #0x1f, 0x13e78 <syna_tcm_rezero+0xc0>
   13e30: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   13e34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   13e38: d50323bf     	autiasp
   13e3c: d65f03c0     	ret
   13e40: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13e44: 91000000     	add	x0, x0, #0x0
		0000000000013e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13e48: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13e4c: 91000021     	add	x1, x1, #0x0
		0000000000013e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13e50: 94000000     	bl	0x13e50 <syna_tcm_rezero+0x98>
		0000000000013e50:  R_AARCH64_CALL26	_printk
   13e54: 12801e00     	mov	w0, #-0xf1              // =-241
   13e58: 17fffff6     	b	0x13e30 <syna_tcm_rezero+0x78>
   13e5c: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   13e60: 91000000     	add	x0, x0, #0x0
		0000000000013e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   13e64: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13e68: 91000021     	add	x1, x1, #0x0
		0000000000013e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13e6c: 94000000     	bl	0x13e6c <syna_tcm_rezero+0xb4>
		0000000000013e6c:  R_AARCH64_CALL26	_printk
   13e70: 12801e00     	mov	w0, #-0xf1              // =-241
   13e74: 17ffffef     	b	0x13e30 <syna_tcm_rezero+0x78>
   13e78: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13e7c: 91000000     	add	x0, x0, #0x0
		0000000000013e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   13e80: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13e84: 91000021     	add	x1, x1, #0x0
		0000000000013e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13e88: 528004e2     	mov	w2, #0x27               // =39
   13e8c: 2a0803f3     	mov	w19, w8
   13e90: 94000000     	bl	0x13e90 <syna_tcm_rezero+0xd8>
		0000000000013e90:  R_AARCH64_CALL26	_printk
   13e94: 2a1303e0     	mov	w0, w19
   13e98: 17ffffe6     	b	0x13e30 <syna_tcm_rezero+0x78>
   13e9c: 90000008     	adrp	x8, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13ea0: 91000108     	add	x8, x8, #0x0
		0000000000013ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13ea4: b9420c13     	ldr	w19, [x0, #0x20c]
   13ea8: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013ea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35d6
   13eac: 91000021     	add	x1, x1, #0x0
		0000000000013eac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35d6
   13eb0: aa0003f4     	mov	x20, x0
   13eb4: aa0803e0     	mov	x0, x8
   13eb8: 94000000     	bl	0x13eb8 <syna_tcm_rezero+0x100>
		0000000000013eb8:  R_AARCH64_CALL26	_printk
   13ebc: aa1403e0     	mov	x0, x20
   13ec0: 17ffffcc     	b	0x13df0 <syna_tcm_rezero+0x38>
