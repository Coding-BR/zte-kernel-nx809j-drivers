
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003b00 <aw9620x_i2c_read>:
    3b00: d503233f     	paciasp
    3b04: d10283ff     	sub	sp, sp, #0xa0
    3b08: a9047bfd     	stp	x29, x30, [sp, #0x40]
    3b0c: a9056ffc     	stp	x28, x27, [sp, #0x50]
    3b10: a90667fa     	stp	x26, x25, [sp, #0x60]
    3b14: a9075ff8     	stp	x24, x23, [sp, #0x70]
    3b18: a90857f6     	stp	x22, x21, [sp, #0x80]
    3b1c: a9094ff4     	stp	x20, x19, [sp, #0x90]
    3b20: 910103fd     	add	x29, sp, #0x40
    3b24: f90007e2     	str	x2, [sp, #0x8]
    3b28: d5384108     	mrs	x8, SP_EL0
    3b2c: 53087c29     	lsr	w9, w1, #8
    3b30: f9438908     	ldr	x8, [x8, #0x710]
    3b34: 910043fa     	add	x26, sp, #0x10
    3b38: 52800033     	mov	w19, #0x1               // =1
    3b3c: 2a0103f5     	mov	w21, w1
    3b40: aa0003f4     	mov	x20, x0
    3b44: 528000b6     	mov	w22, #0x5               // =5
    3b48: b27f035b     	orr	x27, x26, #0x2
    3b4c: 90000017     	adrp	x23, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3b50: 910002f7     	add	x23, x23, #0x0
		0000000000003b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3b54: 5280005c     	mov	w28, #0x2               // =2
    3b58: 90000018     	adrp	x24, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189d
    3b5c: 91000318     	add	x24, x24, #0x0
		0000000000003b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189d
    3b60: 72a00093     	movk	w19, #0x4, lsl #16
    3b64: 90000019     	adrp	x25, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c4
    3b68: 91000339     	add	x25, x25, #0x0
		0000000000003b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c4
    3b6c: f81f83a8     	stur	x8, [x29, #-0x8]
    3b70: b80123ff     	stur	wzr, [sp, #0x12]
    3b74: 390043e9     	strb	w9, [sp, #0x10]
    3b78: 390047e1     	strb	w1, [sp, #0x11]
    3b7c: f9401688     	ldr	x8, [x20, #0x28]
    3b80: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    3b84: 910063e1     	add	x1, sp, #0x18
    3b88: f9000fff     	str	xzr, [sp, #0x18]
    3b8c: 52800042     	mov	w2, #0x2                // =2
    3b90: 79400509     	ldrh	w9, [x8, #0x2]
    3b94: f9001bfb     	str	x27, [sp, #0x30]
    3b98: f9400d00     	ldr	x0, [x8, #0x18]
    3b9c: 79003bfc     	strh	w28, [sp, #0x1c]
    3ba0: 790033e9     	strh	w9, [sp, #0x18]
    3ba4: f90013fa     	str	x26, [sp, #0x20]
    3ba8: 790053e9     	strh	w9, [sp, #0x28]
    3bac: b802a3f3     	stur	w19, [sp, #0x2a]
    3bb0: 94000000     	bl	0x3bb0 <aw9620x_i2c_read+0xb0>
		0000000000003bb0:  R_AARCH64_CALL26	i2c_transfer
    3bb4: 36f80240     	tbz	w0, #0x1f, 0x3bfc <aw9620x_i2c_read+0xfc>
    3bb8: f9401a81     	ldr	x1, [x20, #0x30]
    3bbc: 2a0003e6     	mov	w6, w0
    3bc0: 12003ea5     	and	w5, w21, #0xffff
    3bc4: aa1703e0     	mov	x0, x23
    3bc8: aa1803e2     	mov	x2, x24
    3bcc: aa1903e3     	mov	x3, x25
    3bd0: 528047a4     	mov	w4, #0x23d              // =573
    3bd4: 2a1603e7     	mov	w7, w22
    3bd8: 94000000     	bl	0x3bd8 <aw9620x_i2c_read+0xd8>
		0000000000003bd8:  R_AARCH64_CALL26	_dev_printk
    3bdc: 5280fa00     	mov	w0, #0x7d0              // =2000
    3be0: 52817701     	mov	w1, #0xbb8              // =3000
    3be4: 52800042     	mov	w2, #0x2                // =2
    3be8: 94000000     	bl	0x3be8 <aw9620x_i2c_read+0xe8>
		0000000000003be8:  R_AARCH64_CALL26	usleep_range_state
    3bec: 510006d6     	sub	w22, w22, #0x1
    3bf0: 310006df     	cmn	w22, #0x1
    3bf4: 54fffc41     	b.ne	0x3b7c <aw9620x_i2c_read+0x7c>
    3bf8: 14000015     	b	0x3c4c <aw9620x_i2c_read+0x14c>
    3bfc: 37380296     	tbnz	w22, #0x7, 0x3c4c <aw9620x_i2c_read+0x14c>
    3c00: b84123e8     	ldur	w8, [sp, #0x12]
    3c04: f94007e9     	ldr	x9, [sp, #0x8]
    3c08: 2a1f03e0     	mov	w0, wzr
    3c0c: 5ac00908     	rev	w8, w8
    3c10: b9000128     	str	w8, [x9]
    3c14: d5384108     	mrs	x8, SP_EL0
    3c18: f9438908     	ldr	x8, [x8, #0x710]
    3c1c: f85f83a9     	ldur	x9, [x29, #-0x8]
    3c20: eb09011f     	cmp	x8, x9
    3c24: 540002a1     	b.ne	0x3c78 <aw9620x_i2c_read+0x178>
    3c28: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    3c2c: a94857f6     	ldp	x22, x21, [sp, #0x80]
    3c30: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    3c34: a94667fa     	ldp	x26, x25, [sp, #0x60]
    3c38: a9456ffc     	ldp	x28, x27, [sp, #0x50]
    3c3c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    3c40: 910283ff     	add	sp, sp, #0xa0
    3c44: d50323bf     	autiasp
    3c48: d65f03c0     	ret
    3c4c: f9401a81     	ldr	x1, [x20, #0x30]
    3c50: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3c54: 91000000     	add	x0, x0, #0x0
		0000000000003c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3c58: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38b1
    3c5c: 91000042     	add	x2, x2, #0x0
		0000000000003c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38b1
    3c60: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25c4
    3c64: 91000063     	add	x3, x3, #0x0
		0000000000003c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25c4
    3c68: 52804884     	mov	w4, #0x244              // =580
    3c6c: 94000000     	bl	0x3c6c <aw9620x_i2c_read+0x16c>
		0000000000003c6c:  R_AARCH64_CALL26	_dev_printk
    3c70: 12800000     	mov	w0, #-0x1               // =-1
    3c74: 17ffffe8     	b	0x3c14 <aw9620x_i2c_read+0x114>
    3c78: 94000000     	bl	0x3c78 <aw9620x_i2c_read+0x178>
		0000000000003c78:  R_AARCH64_CALL26	__stack_chk_fail
