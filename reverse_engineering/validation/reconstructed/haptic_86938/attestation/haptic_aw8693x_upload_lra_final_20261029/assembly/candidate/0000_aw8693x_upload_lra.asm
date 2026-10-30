
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003bc4 <aw8693x_upload_lra>:
    3bc4: d503233f     	paciasp
    3bc8: d100c3ff     	sub	sp, sp, #0x30
    3bcc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3bd0: f90013f3     	str	x19, [sp, #0x20]
    3bd4: 910043fd     	add	x29, sp, #0x10
    3bd8: d5384108     	mrs	x8, SP_EL0
    3bdc: aa0003f3     	mov	x19, x0
    3be0: f9438908     	ldr	x8, [x8, #0x710]
    3be4: 7100083f     	cmp	w1, #0x2
    3be8: f90007e8     	str	x8, [sp, #0x8]
    3bec: 390013ff     	strb	wzr, [sp, #0x4]
    3bf0: 540002e0     	b.eq	0x3c4c <aw8693x_upload_lra+0x88>
    3bf4: 7100043f     	cmp	w1, #0x1
    3bf8: 54000160     	b.eq	0x3c24 <aw8693x_upload_lra+0x60>
    3bfc: 350003e1     	cbnz	w1, 0x3c78 <aw8693x_upload_lra+0xb4>
    3c00: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x795
    3c04: 91000000     	add	x0, x0, #0x0
		0000000000003c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x795
    3c08: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3c0c: 91000021     	add	x1, x1, #0x0
		0000000000003c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3c10: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be
    3c14: 91000063     	add	x3, x3, #0x0
		0000000000003c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be
    3c18: 528057e2     	mov	w2, #0x2bf              // =703
    3c1c: 94000000     	bl	0x3c1c <aw8693x_upload_lra+0x58>
		0000000000003c1c:  R_AARCH64_CALL26	_printk
    3c20: 14000021     	b	0x3ca4 <aw8693x_upload_lra+0xe0>
    3c24: b9408a64     	ldr	w4, [x19, #0x88]
    3c28: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1
    3c2c: 91000000     	add	x0, x0, #0x0
		0000000000003c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1
    3c30: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3c34: 91000021     	add	x1, x1, #0x0
		0000000000003c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3c38: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be
    3c3c: 91000063     	add	x3, x3, #0x0
		0000000000003c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be
    3c40: 52805842     	mov	w2, #0x2c2              // =706
    3c44: 94000000     	bl	0x3c44 <aw8693x_upload_lra+0x80>
		0000000000003c44:  R_AARCH64_CALL26	_printk
    3c48: 14000014     	b	0x3c98 <aw8693x_upload_lra+0xd4>
    3c4c: b9409a64     	ldr	w4, [x19, #0x98]
    3c50: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x490
    3c54: 91000000     	add	x0, x0, #0x0
		0000000000003c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x490
    3c58: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3c5c: 91000021     	add	x1, x1, #0x0
		0000000000003c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3c60: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be
    3c64: 91000063     	add	x3, x3, #0x0
		0000000000003c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be
    3c68: 528058c2     	mov	w2, #0x2c6              // =710
    3c6c: 94000000     	bl	0x3c6c <aw8693x_upload_lra+0xa8>
		0000000000003c6c:  R_AARCH64_CALL26	_printk
    3c70: 39426268     	ldrb	w8, [x19, #0x98]
    3c74: 1400000a     	b	0x3c9c <aw8693x_upload_lra+0xd8>
    3c78: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ca
    3c7c: 91000000     	add	x0, x0, #0x0
		0000000000003c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ca
    3c80: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3c84: 91000021     	add	x1, x1, #0x0
		0000000000003c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3c88: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be
    3c8c: 91000063     	add	x3, x3, #0x0
		0000000000003c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be
    3c90: 52805942     	mov	w2, #0x2ca              // =714
    3c94: 94000000     	bl	0x3c94 <aw8693x_upload_lra+0xd0>
		0000000000003c94:  R_AARCH64_CALL26	_printk
    3c98: 39422268     	ldrb	w8, [x19, #0x88]
    3c9c: 12001908     	and	w8, w8, #0x7f
    3ca0: 390013e8     	strb	w8, [sp, #0x4]
    3ca4: 910013e2     	add	x2, sp, #0x4
    3ca8: aa1303e0     	mov	x0, x19
    3cac: 52800ba1     	mov	w1, #0x5d               // =93
    3cb0: 52800023     	mov	w3, #0x1                // =1
    3cb4: 94000000     	bl	0x3cb4 <aw8693x_upload_lra+0xf0>
		0000000000003cb4:  R_AARCH64_CALL26	i2c_w_bytes
    3cb8: d5384108     	mrs	x8, SP_EL0
    3cbc: f9438908     	ldr	x8, [x8, #0x710]
    3cc0: f94007e9     	ldr	x9, [sp, #0x8]
    3cc4: eb09011f     	cmp	x8, x9
    3cc8: 540000c1     	b.ne	0x3ce0 <aw8693x_upload_lra+0x11c>
    3ccc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3cd0: f94013f3     	ldr	x19, [sp, #0x20]
    3cd4: 9100c3ff     	add	sp, sp, #0x30
    3cd8: d50323bf     	autiasp
    3cdc: d65f03c0     	ret
    3ce0: 94000000     	bl	0x3ce0 <aw8693x_upload_lra+0x11c>
		0000000000003ce0:  R_AARCH64_CALL26	__stack_chk_fail
