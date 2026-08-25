
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020d08 <syna_tcm_send_command>:
   20d08: d503233f     	paciasp
   20d0c: d10183ff     	sub	sp, sp, #0x60
   20d10: a9017bfd     	stp	x29, x30, [sp, #0x10]
   20d14: f90013f9     	str	x25, [sp, #0x20]
   20d18: a9035ff8     	stp	x24, x23, [sp, #0x30]
   20d1c: a90457f6     	stp	x22, x21, [sp, #0x40]
   20d20: a9054ff4     	stp	x20, x19, [sp, #0x50]
   20d24: 910043fd     	add	x29, sp, #0x10
   20d28: d5384108     	mrs	x8, SP_EL0
   20d2c: f9438908     	ldr	x8, [x8, #0x710]
   20d30: f90007e8     	str	x8, [sp, #0x8]
   20d34: 390013ff     	strb	wzr, [sp, #0x4]
   20d38: b4000800     	cbz	x0, 0x20e38 <syna_tcm_send_command+0x130>
   20d3c: aa0503f3     	mov	x19, x5
   20d40: aa0403f5     	mov	x21, x4
   20d44: aa0003f4     	mov	x20, x0
   20d48: 2a0103f6     	mov	w22, w1
   20d4c: 350000a6     	cbnz	w6, 0x20d60 <syna_tcm_send_command+0x58>
   20d50: f9402688     	ldr	x8, [x20, #0x48]
   20d54: 39405108     	ldrb	w8, [x8, #0x14]
   20d58: 36000ac8     	tbz	w8, #0x0, 0x20eb0 <syna_tcm_send_command+0x1a8>
   20d5c: 2a1f03e6     	mov	w6, wzr
   20d60: f941ce88     	ldr	x8, [x20, #0x398]
   20d64: 910013e4     	add	x4, sp, #0x4
   20d68: aa1403e0     	mov	x0, x20
   20d6c: 2a1603e1     	mov	w1, w22
   20d70: 2a0603e5     	mov	w5, w6
   20d74: b85fc110     	ldur	w16, [x8, #-0x4]
   20d78: 728751d1     	movk	w17, #0x3a8e
   20d7c: 72a48411     	movk	w17, #0x2420, lsl #16
   20d80: 6b11021f     	cmp	w16, w17
   20d84: 54000040     	b.eq	0x20d8c <syna_tcm_send_command+0x84>
   20d88: d4304500     	brk	#0x8228
   20d8c: d63f0100     	blr	x8
   20d90: 37f807a0     	tbnz	w0, #0x1f, 0x20e84 <syna_tcm_send_command+0x17c>
   20d94: b4000075     	cbz	x21, 0x20da0 <syna_tcm_send_command+0x98>
   20d98: 394013e8     	ldrb	w8, [sp, #0x4]
   20d9c: 390002a8     	strb	w8, [x21]
   20da0: b4000593     	cbz	x19, 0x20e50 <syna_tcm_send_command+0x148>
   20da4: 394013e8     	ldrb	w8, [sp, #0x4]
   20da8: 51004109     	sub	w9, w8, #0x10
   20dac: 7103b93f     	cmp	w9, #0xee
   20db0: 540001c8     	b.hi	0x20de8 <syna_tcm_send_command+0xe0>
   20db4: b9410e88     	ldr	w8, [x20, #0x10c]
   20db8: 340004c8     	cbz	w8, 0x20e50 <syna_tcm_send_command+0x148>
   20dbc: 91040281     	add	x1, x20, #0x100
   20dc0: 2a0003f4     	mov	w20, w0
   20dc4: aa1303e0     	mov	x0, x19
   20dc8: 97fff764     	bl	0x1eb58 <syna_tcm_buf_copy>
   20dcc: 2a0003e8     	mov	w8, w0
   20dd0: 2a1403e0     	mov	w0, w20
   20dd4: 36f803e8     	tbz	w8, #0x1f, 0x20e50 <syna_tcm_send_command+0x148>
   20dd8: 394013e2     	ldrb	w2, [sp, #0x4]
   20ddc: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157e2
   20de0: 91000000     	add	x0, x0, #0x0
		0000000000020de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157e2
   20de4: 14000010     	b	0x20e24 <syna_tcm_send_command+0x11c>
   20de8: 51000508     	sub	w8, w8, #0x1
   20dec: 7100391f     	cmp	w8, #0xe
   20df0: 54000308     	b.hi	0x20e50 <syna_tcm_send_command+0x148>
   20df4: b9415688     	ldr	w8, [x20, #0x154]
   20df8: 340002c8     	cbz	w8, 0x20e50 <syna_tcm_send_command+0x148>
   20dfc: 91052281     	add	x1, x20, #0x148
   20e00: 2a0003f4     	mov	w20, w0
   20e04: aa1303e0     	mov	x0, x19
   20e08: 97fff754     	bl	0x1eb58 <syna_tcm_buf_copy>
   20e0c: 2a0003e8     	mov	w8, w0
   20e10: 2a1403e0     	mov	w0, w20
   20e14: 36f801e8     	tbz	w8, #0x1f, 0x20e50 <syna_tcm_send_command+0x148>
   20e18: 394013e2     	ldrb	w2, [sp, #0x4]
   20e1c: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16570
   20e20: 91000000     	add	x0, x0, #0x0
		0000000000020e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16570
   20e24: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1732e
   20e28: 91000021     	add	x1, x1, #0x0
		0000000000020e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1732e
   20e2c: 94000000     	bl	0x20e2c <syna_tcm_send_command+0x124>
		0000000000020e2c:  R_AARCH64_CALL26	_printk
   20e30: 12801e40     	mov	w0, #-0xf3              // =-243
   20e34: 14000007     	b	0x20e50 <syna_tcm_send_command+0x148>
   20e38: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcda2
   20e3c: 91000000     	add	x0, x0, #0x0
		0000000000020e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcda2
   20e40: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1732e
   20e44: 91000021     	add	x1, x1, #0x0
		0000000000020e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1732e
   20e48: 94000000     	bl	0x20e48 <syna_tcm_send_command+0x140>
		0000000000020e48:  R_AARCH64_CALL26	_printk
   20e4c: 12801e00     	mov	w0, #-0xf1              // =-241
   20e50: d5384108     	mrs	x8, SP_EL0
   20e54: f9438908     	ldr	x8, [x8, #0x710]
   20e58: f94007e9     	ldr	x9, [sp, #0x8]
   20e5c: eb09011f     	cmp	x8, x9
   20e60: 54000401     	b.ne	0x20ee0 <syna_tcm_send_command+0x1d8>
   20e64: a9454ff4     	ldp	x20, x19, [sp, #0x50]
   20e68: f94013f9     	ldr	x25, [sp, #0x20]
   20e6c: a94457f6     	ldp	x22, x21, [sp, #0x40]
   20e70: a9435ff8     	ldp	x24, x23, [sp, #0x30]
   20e74: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   20e78: 910183ff     	add	sp, sp, #0x60
   20e7c: d50323bf     	autiasp
   20e80: d65f03c0     	ret
   20e84: 90000008     	adrp	x8, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1069c
   20e88: 91000108     	add	x8, x8, #0x0
		0000000000020e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1069c
   20e8c: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1732e
   20e90: 91000021     	add	x1, x1, #0x0
		0000000000020e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1732e
   20e94: 12001ec2     	and	w2, w22, #0xff
   20e98: 2a0003f6     	mov	w22, w0
   20e9c: aa0803e0     	mov	x0, x8
   20ea0: 94000000     	bl	0x20ea0 <syna_tcm_send_command+0x198>
		0000000000020ea0:  R_AARCH64_CALL26	_printk
   20ea4: 2a1603e0     	mov	w0, w22
   20ea8: b5fff795     	cbnz	x21, 0x20d98 <syna_tcm_send_command+0x90>
   20eac: 17ffffbd     	b	0x20da0 <syna_tcm_send_command+0x98>
   20eb0: b9420e99     	ldr	w25, [x20, #0x20c]
   20eb4: 90000000     	adrp	x0, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15814
   20eb8: 91000000     	add	x0, x0, #0x0
		0000000000020eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15814
   20ebc: 90000001     	adrp	x1, 0x20000 <syna_tcm_get_features+0xf0>
		0000000000020ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1732e
   20ec0: 91000021     	add	x1, x1, #0x0
		0000000000020ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1732e
   20ec4: 2a0303f7     	mov	w23, w3
   20ec8: aa0203f8     	mov	x24, x2
   20ecc: 94000000     	bl	0x20ecc <syna_tcm_send_command+0x1c4>
		0000000000020ecc:  R_AARCH64_CALL26	_printk
   20ed0: 2a1903e6     	mov	w6, w25
   20ed4: aa1803e2     	mov	x2, x24
   20ed8: 2a1703e3     	mov	w3, w23
   20edc: 17ffffa1     	b	0x20d60 <syna_tcm_send_command+0x58>
   20ee0: 94000000     	bl	0x20ee0 <syna_tcm_send_command+0x1d8>
		0000000000020ee0:  R_AARCH64_CALL26	__stack_chk_fail
