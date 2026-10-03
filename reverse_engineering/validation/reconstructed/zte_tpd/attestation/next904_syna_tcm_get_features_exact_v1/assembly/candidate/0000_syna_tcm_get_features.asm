
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000013b8c <syna_tcm_get_features>:
   13b8c: d503233f     	paciasp
   13b90: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   13b94: f9000bf5     	str	x21, [sp, #0x10]
   13b98: a9024ff4     	stp	x20, x19, [sp, #0x20]
   13b9c: 910003fd     	mov	x29, sp
   13ba0: b4000780     	cbz	x0, 0x13c90 <syna_tcm_get_features+0x104>
   13ba4: 2a0203f5     	mov	w21, w2
   13ba8: 39402402     	ldrb	w2, [x0, #0x9]
   13bac: aa0003f3     	mov	x19, x0
   13bb0: 7100045f     	cmp	w2, #0x1
   13bb4: 540007c1     	b.ne	0x13cac <syna_tcm_get_features+0x120>
   13bb8: aa0103f4     	mov	x20, x1
   13bbc: 350000b5     	cbnz	w21, 0x13bd0 <syna_tcm_get_features+0x44>
   13bc0: f9402668     	ldr	x8, [x19, #0x48]
   13bc4: 39405108     	ldrb	w8, [x8, #0x14]
   13bc8: 36000d88     	tbz	w8, #0x0, 0x13d78 <syna_tcm_get_features+0x1ec>
   13bcc: 2a1f03f5     	mov	w21, wzr
   13bd0: f941ce68     	ldr	x8, [x19, #0x398]
   13bd4: aa1303e0     	mov	x0, x19
   13bd8: 52800641     	mov	w1, #0x32               // =50
   13bdc: aa1f03e2     	mov	x2, xzr
   13be0: 2a1f03e3     	mov	w3, wzr
   13be4: aa1f03e4     	mov	x4, xzr
   13be8: 2a1503e5     	mov	w5, w21
   13bec: b85fc110     	ldur	w16, [x8, #-0x4]
   13bf0: 728751d1     	movk	w17, #0x3a8e
   13bf4: 72a48411     	movk	w17, #0x2420, lsl #16
   13bf8: 6b11021f     	cmp	w16, w17
   13bfc: 54000040     	b.eq	0x13c04 <syna_tcm_get_features+0x78>
   13c00: d4304500     	brk	#0x8228
   13c04: d63f0100     	blr	x8
   13c08: 37f80600     	tbnz	w0, #0x1f, 0x13cc8 <syna_tcm_get_features+0x13c>
   13c0c: b4000394     	cbz	x20, 0x13c7c <syna_tcm_get_features+0xf0>
   13c10: 39462262     	ldrb	w2, [x19, #0x188]
   13c14: 350006e2     	cbnz	w2, 0x13cf0 <syna_tcm_get_features+0x164>
   13c18: 91056260     	add	x0, x19, #0x158
   13c1c: 94000000     	bl	0x13c1c <syna_tcm_get_features+0x90>
		0000000000013c1c:  R_AARCH64_CALL26	mutex_lock
   13c20: b9415669     	ldr	w9, [x19, #0x154]
   13c24: 39462268     	ldrb	w8, [x19, #0x188]
   13c28: 5280020a     	mov	w10, #0x10              // =16
   13c2c: f940a661     	ldr	x1, [x19, #0x148]
   13c30: 7100413f     	cmp	w9, #0x10
   13c34: 11000508     	add	w8, w8, #0x1
   13c38: 1a8a3124     	csel	w4, w9, w10, lo
   13c3c: 39062268     	strb	w8, [x19, #0x188]
   13c40: b4000701     	cbz	x1, 0x13d20 <syna_tcm_get_features+0x194>
   13c44: b9415262     	ldr	w2, [x19, #0x150]
   13c48: 6b02009f     	cmp	w4, w2
   13c4c: 540005e8     	b.hi	0x13d08 <syna_tcm_get_features+0x17c>
   13c50: aa1403e0     	mov	x0, x20
   13c54: aa0403e2     	mov	x2, x4
   13c58: 94000000     	bl	0x13c58 <syna_tcm_get_features+0xcc>
		0000000000013c58:  R_AARCH64_CALL26	memcpy
   13c5c: 39462262     	ldrb	w2, [x19, #0x188]
   13c60: 7100045f     	cmp	w2, #0x1
   13c64: 540007a1     	b.ne	0x13d58 <syna_tcm_get_features+0x1cc>
   13c68: 2a1f03e8     	mov	w8, wzr
   13c6c: 91056260     	add	x0, x19, #0x158
   13c70: 39062268     	strb	w8, [x19, #0x188]
   13c74: 94000000     	bl	0x13c74 <syna_tcm_get_features+0xe8>
		0000000000013c74:  R_AARCH64_CALL26	mutex_unlock
   13c78: 2a1f03e0     	mov	w0, wzr
   13c7c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   13c80: f9400bf5     	ldr	x21, [sp, #0x10]
   13c84: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   13c88: d50323bf     	autiasp
   13c8c: d65f03c0     	ret
   13c90: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
   13c94: 91000000     	add	x0, x0, #0x0
		0000000000013c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
   13c98: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13c9c: 91000021     	add	x1, x1, #0x0
		0000000000013c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13ca0: 94000000     	bl	0x13ca0 <syna_tcm_get_features+0x114>
		0000000000013ca0:  R_AARCH64_CALL26	_printk
   13ca4: 12801e00     	mov	w0, #-0xf1              // =-241
   13ca8: 17fffff5     	b	0x13c7c <syna_tcm_get_features+0xf0>
   13cac: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28c6
   13cb0: 91000000     	add	x0, x0, #0x0
		0000000000013cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28c6
   13cb4: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13cb8: 91000021     	add	x1, x1, #0x0
		0000000000013cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13cbc: 94000000     	bl	0x13cbc <syna_tcm_get_features+0x130>
		0000000000013cbc:  R_AARCH64_CALL26	_printk
   13cc0: 12801e00     	mov	w0, #-0xf1              // =-241
   13cc4: 17ffffee     	b	0x13c7c <syna_tcm_get_features+0xf0>
   13cc8: 90000008     	adrp	x8, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a86
   13ccc: 91000108     	add	x8, x8, #0x0
		0000000000013ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a86
   13cd0: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13cd4: 91000021     	add	x1, x1, #0x0
		0000000000013cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13cd8: 2a0003f3     	mov	w19, w0
   13cdc: aa0803e0     	mov	x0, x8
   13ce0: 52800642     	mov	w2, #0x32               // =50
   13ce4: 94000000     	bl	0x13ce4 <syna_tcm_get_features+0x158>
		0000000000013ce4:  R_AARCH64_CALL26	_printk
   13ce8: 2a1303e0     	mov	w0, w19
   13cec: 17ffffe4     	b	0x13c7c <syna_tcm_get_features+0xf0>
   13cf0: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13cf4: 91000000     	add	x0, x0, #0x0
		0000000000013cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13cf8: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70c4
   13cfc: 91000021     	add	x1, x1, #0x0
		0000000000013cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70c4
   13d00: 94000000     	bl	0x13d00 <syna_tcm_get_features+0x174>
		0000000000013d00:  R_AARCH64_CALL26	_printk
   13d04: 17ffffc5     	b	0x13c18 <syna_tcm_get_features+0x8c>
   13d08: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   13d0c: 91000000     	add	x0, x0, #0x0
		0000000000013d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   13d10: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   13d14: 91000021     	add	x1, x1, #0x0
		0000000000013d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   13d18: 52800203     	mov	w3, #0x10               // =16
   13d1c: 94000000     	bl	0x13d1c <syna_tcm_get_features+0x190>
		0000000000013d1c:  R_AARCH64_CALL26	_printk
   13d20: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbff2
   13d24: 91000000     	add	x0, x0, #0x0
		0000000000013d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbff2
   13d28: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13d2c: 91000021     	add	x1, x1, #0x0
		0000000000013d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13d30: 94000000     	bl	0x13d30 <syna_tcm_get_features+0x1a4>
		0000000000013d30:  R_AARCH64_CALL26	_printk
   13d34: 39462262     	ldrb	w2, [x19, #0x188]
   13d38: 7100045f     	cmp	w2, #0x1
   13d3c: 540002c1     	b.ne	0x13d94 <syna_tcm_get_features+0x208>
   13d40: 2a1f03e8     	mov	w8, wzr
   13d44: 91056260     	add	x0, x19, #0x158
   13d48: 39062268     	strb	w8, [x19, #0x188]
   13d4c: 94000000     	bl	0x13d4c <syna_tcm_get_features+0x1c0>
		0000000000013d4c:  R_AARCH64_CALL26	mutex_unlock
   13d50: 128002a0     	mov	w0, #-0x16              // =-22
   13d54: 17ffffca     	b	0x13c7c <syna_tcm_get_features+0xf0>
   13d58: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13d5c: 91000000     	add	x0, x0, #0x0
		0000000000013d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13d60: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   13d64: 91000021     	add	x1, x1, #0x0
		0000000000013d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   13d68: 94000000     	bl	0x13d68 <syna_tcm_get_features+0x1dc>
		0000000000013d68:  R_AARCH64_CALL26	_printk
   13d6c: 39462268     	ldrb	w8, [x19, #0x188]
   13d70: 51000508     	sub	w8, w8, #0x1
   13d74: 17ffffbe     	b	0x13c6c <syna_tcm_get_features+0xe0>
   13d78: b9420e75     	ldr	w21, [x19, #0x20c]
   13d7c: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab68
   13d80: 91000000     	add	x0, x0, #0x0
		0000000000013d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab68
   13d84: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4fe8
   13d88: 91000021     	add	x1, x1, #0x0
		0000000000013d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4fe8
   13d8c: 94000000     	bl	0x13d8c <syna_tcm_get_features+0x200>
		0000000000013d8c:  R_AARCH64_CALL26	_printk
   13d90: 17ffff90     	b	0x13bd0 <syna_tcm_get_features+0x44>
   13d94: 90000000     	adrp	x0, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7094
   13d98: 91000000     	add	x0, x0, #0x0
		0000000000013d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7094
   13d9c: 90000001     	adrp	x1, 0x13000 <syna_tcm_switch_fw_mode+0x30>
		0000000000013d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc4
   13da0: 91000021     	add	x1, x1, #0x0
		0000000000013da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc4
   13da4: 94000000     	bl	0x13da4 <syna_tcm_get_features+0x218>
		0000000000013da4:  R_AARCH64_CALL26	_printk
   13da8: 39462268     	ldrb	w8, [x19, #0x188]
   13dac: 51000508     	sub	w8, w8, #0x1
   13db0: 17ffffe5     	b	0x13d44 <syna_tcm_get_features+0x1b8>
