
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000012b74 <syna_tcm_identify>:
   12b74: d503233f     	paciasp
   12b78: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   12b7c: f9000bf5     	str	x21, [sp, #0x10]
   12b80: a9024ff4     	stp	x20, x19, [sp, #0x20]
   12b84: 910003fd     	mov	x29, sp
   12b88: b5000100     	cbnz	x0, 0x12ba8 <syna_tcm_identify+0x34>
   12b8c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   12b90: 91000000     	add	x0, x0, #0x0
		0000000000012b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   12b94: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef4
   12b98: 91000021     	add	x1, x1, #0x0
		0000000000012b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef4
   12b9c: 94000000     	bl	0x12b9c <syna_tcm_identify+0x28>
		0000000000012b9c:  R_AARCH64_CALL26	_printk
   12ba0: 12801e00     	mov	w0, #-0xf1              // =-241
   12ba4: 1400004d     	b	0x12cd8 <syna_tcm_identify+0x164>
   12ba8: 2a0203f5     	mov	w21, w2
   12bac: aa0003f3     	mov	x19, x0
   12bb0: aa0103f4     	mov	x20, x1
   12bb4: 35000182     	cbnz	w2, 0x12be4 <syna_tcm_identify+0x70>
   12bb8: f9402668     	ldr	x8, [x19, #0x48]
   12bbc: 39405108     	ldrb	w8, [x8, #0x14]
   12bc0: 36000068     	tbz	w8, #0x0, 0x12bcc <syna_tcm_identify+0x58>
   12bc4: 2a1f03f5     	mov	w21, wzr
   12bc8: 14000007     	b	0x12be4 <syna_tcm_identify+0x70>
   12bcc: b9420e75     	ldr	w21, [x19, #0x20c]
   12bd0: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   12bd4: 91000000     	add	x0, x0, #0x0
		0000000000012bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   12bd8: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef4
   12bdc: 91000021     	add	x1, x1, #0x0
		0000000000012bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef4
   12be0: 94000000     	bl	0x12be0 <syna_tcm_identify+0x6c>
		0000000000012be0:  R_AARCH64_CALL26	_printk
   12be4: f941ce68     	ldr	x8, [x19, #0x398]
   12be8: aa1303e0     	mov	x0, x19
   12bec: 52800041     	mov	w1, #0x2                // =2
   12bf0: aa1f03e2     	mov	x2, xzr
   12bf4: 2a1f03e3     	mov	w3, wzr
   12bf8: aa1f03e4     	mov	x4, xzr
   12bfc: 2a1503e5     	mov	w5, w21
   12c00: b85fc110     	ldur	w16, [x8, #-0x4]
   12c04: 728751d1     	movk	w17, #0x3a8e
   12c08: 72a48411     	movk	w17, #0x2420, lsl #16
   12c0c: 6b11021f     	cmp	w16, w17
   12c10: 54000040     	b.eq	0x12c18 <syna_tcm_identify+0xa4>
   12c14: d4304500     	brk	#0x8228
   12c18: d63f0100     	blr	x8
   12c1c: 2a0003f5     	mov	w21, w0
   12c20: 36f80120     	tbz	w0, #0x1f, 0x12c44 <syna_tcm_identify+0xd0>
   12c24: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   12c28: 91000000     	add	x0, x0, #0x0
		0000000000012c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   12c2c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef4
   12c30: 91000021     	add	x1, x1, #0x0
		0000000000012c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef4
   12c34: 52800042     	mov	w2, #0x2                // =2
   12c38: 94000000     	bl	0x12c38 <syna_tcm_identify+0xc4>
		0000000000012c38:  R_AARCH64_CALL26	_printk
   12c3c: 2a1503e0     	mov	w0, w21
   12c40: 14000026     	b	0x12cd8 <syna_tcm_identify+0x164>
   12c44: 39420662     	ldrb	w2, [x19, #0x81]
   12c48: 39420263     	ldrb	w3, [x19, #0x80]
   12c4c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb288
   12c50: 91000000     	add	x0, x0, #0x0
		0000000000012c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb288
   12c54: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef4
   12c58: 91000021     	add	x1, x1, #0x0
		0000000000012c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef4
   12c5c: 39002662     	strb	w2, [x19, #0x9]
   12c60: 94000000     	bl	0x12c60 <syna_tcm_identify+0xec>
		0000000000012c60:  R_AARCH64_CALL26	_printk
   12c64: 2a1503e0     	mov	w0, w21
   12c68: b4000394     	cbz	x20, 0x12cd8 <syna_tcm_identify+0x164>
   12c6c: 39462262     	ldrb	w2, [x19, #0x188]
   12c70: 350003e2     	cbnz	w2, 0x12cec <syna_tcm_identify+0x178>
   12c74: 91056260     	add	x0, x19, #0x158
   12c78: 94000000     	bl	0x12c78 <syna_tcm_identify+0x104>
		0000000000012c78:  R_AARCH64_CALL26	mutex_lock
   12c7c: b9415669     	ldr	w9, [x19, #0x154]
   12c80: 39462268     	ldrb	w8, [x19, #0x188]
   12c84: 5280060a     	mov	w10, #0x30              // =48
   12c88: f940a661     	ldr	x1, [x19, #0x148]
   12c8c: 7100c13f     	cmp	w9, #0x30
   12c90: 11000508     	add	w8, w8, #0x1
   12c94: 1a8a3124     	csel	w4, w9, w10, lo
   12c98: 39062268     	strb	w8, [x19, #0x188]
   12c9c: b4000401     	cbz	x1, 0x12d1c <syna_tcm_identify+0x1a8>
   12ca0: b9415262     	ldr	w2, [x19, #0x150]
   12ca4: 6b02009f     	cmp	w4, w2
   12ca8: 540002e8     	b.hi	0x12d04 <syna_tcm_identify+0x190>
   12cac: aa1403e0     	mov	x0, x20
   12cb0: aa0403e2     	mov	x2, x4
   12cb4: 94000000     	bl	0x12cb4 <syna_tcm_identify+0x140>
		0000000000012cb4:  R_AARCH64_CALL26	memcpy
   12cb8: 39462262     	ldrb	w2, [x19, #0x188]
   12cbc: 7100045f     	cmp	w2, #0x1
   12cc0: 54000401     	b.ne	0x12d40 <syna_tcm_identify+0x1cc>
   12cc4: 2a1f03e8     	mov	w8, wzr
   12cc8: 91056260     	add	x0, x19, #0x158
   12ccc: 39062268     	strb	w8, [x19, #0x188]
   12cd0: 94000000     	bl	0x12cd0 <syna_tcm_identify+0x15c>
		0000000000012cd0:  R_AARCH64_CALL26	mutex_unlock
   12cd4: 2a1f03e0     	mov	w0, wzr
   12cd8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   12cdc: f9400bf5     	ldr	x21, [sp, #0x10]
   12ce0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   12ce4: d50323bf     	autiasp
   12ce8: d65f03c0     	ret
   12cec: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12cf0: 91000000     	add	x0, x0, #0x0
		0000000000012cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12cf4: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   12cf8: 91000021     	add	x1, x1, #0x0
		0000000000012cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   12cfc: 94000000     	bl	0x12cfc <syna_tcm_identify+0x188>
		0000000000012cfc:  R_AARCH64_CALL26	_printk
   12d00: 17ffffdd     	b	0x12c74 <syna_tcm_identify+0x100>
   12d04: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   12d08: 91000000     	add	x0, x0, #0x0
		0000000000012d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   12d0c: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   12d10: 91000021     	add	x1, x1, #0x0
		0000000000012d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   12d14: 52800603     	mov	w3, #0x30               // =48
   12d18: 94000000     	bl	0x12d18 <syna_tcm_identify+0x1a4>
		0000000000012d18:  R_AARCH64_CALL26	_printk
   12d1c: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d5a
   12d20: 91000000     	add	x0, x0, #0x0
		0000000000012d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d5a
   12d24: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef4
   12d28: 91000021     	add	x1, x1, #0x0
		0000000000012d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef4
   12d2c: 94000000     	bl	0x12d2c <syna_tcm_identify+0x1b8>
		0000000000012d2c:  R_AARCH64_CALL26	_printk
   12d30: 91052260     	add	x0, x19, #0x148
   12d34: 9400000b     	bl	0x12d60 <syna_tcm_buf_unlock>
   12d38: 128002a0     	mov	w0, #-0x16              // =-22
   12d3c: 17ffffe7     	b	0x12cd8 <syna_tcm_identify+0x164>
   12d40: 90000000     	adrp	x0, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   12d44: 91000000     	add	x0, x0, #0x0
		0000000000012d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   12d48: 90000001     	adrp	x1, 0x12000 <syna_tcm_v1_set_up_max_rw_size+0x68>
		0000000000012d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   12d4c: 91000021     	add	x1, x1, #0x0
		0000000000012d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   12d50: 94000000     	bl	0x12d50 <syna_tcm_identify+0x1dc>
		0000000000012d50:  R_AARCH64_CALL26	_printk
   12d54: 39462268     	ldrb	w8, [x19, #0x188]
   12d58: 51000508     	sub	w8, w8, #0x1
   12d5c: 17ffffdb     	b	0x12cc8 <syna_tcm_identify+0x154>
