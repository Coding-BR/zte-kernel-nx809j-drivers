
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008bf4 <cali_show>:
    8bf4: d503233f     	paciasp
    8bf8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    8bfc: f9000bf5     	str	x21, [sp, #0x10]
    8c00: a9024ff4     	stp	x20, x19, [sp, #0x20]
    8c04: 910003fd     	mov	x29, sp
    8c08: f9404c15     	ldr	x21, [x0, #0x98]
    8c0c: aa0203f3     	mov	x19, x2
    8c10: 910922a0     	add	x0, x21, #0x248
    8c14: d102a2b4     	sub	x20, x21, #0xa8
    8c18: 94000000     	bl	0x8c18 <cali_show+0x24>
		0000000000008c18:  R_AARCH64_CALL26	mutex_lock
    8c1c: f94292a8     	ldr	x8, [x21, #0x520]
    8c20: aa1403e0     	mov	x0, x20
    8c24: 52800021     	mov	w1, #0x1                // =1
    8c28: f9408d08     	ldr	x8, [x8, #0x118]
    8c2c: b85fc110     	ldur	w16, [x8, #-0x4]
    8c30: 728dd2b1     	movk	w17, #0x6e95
    8c34: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    8c38: 6b11021f     	cmp	w16, w17
    8c3c: 54000040     	b.eq	0x8c44 <cali_show+0x50>
    8c40: d4304500     	brk	#0x8228
    8c44: d63f0100     	blr	x8
    8c48: f94292a8     	ldr	x8, [x21, #0x520]
    8c4c: aa1403e0     	mov	x0, x20
    8c50: f9400108     	ldr	x8, [x8]
    8c54: b85fc110     	ldur	w16, [x8, #-0x4]
    8c58: 729e3e11     	movk	w17, #0xf1f0
    8c5c: 72aa2591     	movk	w17, #0x512c, lsl #16
    8c60: 6b11021f     	cmp	w16, w17
    8c64: 54000040     	b.eq	0x8c6c <cali_show+0x78>
    8c68: d4304500     	brk	#0x8228
    8c6c: d63f0100     	blr	x8
    8c70: 910922a0     	add	x0, x21, #0x248
    8c74: 94000000     	bl	0x8c74 <cali_show+0x80>
		0000000000008c74:  R_AARCH64_CALL26	mutex_unlock
    8c78: b85b82a3     	ldur	w3, [x21, #-0x48]
    8c7c: b85c82a4     	ldur	w4, [x21, #-0x38]
    8c80: 90000002     	adrp	x2, 0x8000 <reg_show+0x10>
		0000000000008c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a
    8c84: 91000042     	add	x2, x2, #0x0
		0000000000008c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a
    8c88: aa1303e0     	mov	x0, x19
    8c8c: 52820001     	mov	w1, #0x1000             // =4096
    8c90: 94000000     	bl	0x8c90 <cali_show+0x9c>
		0000000000008c90:  R_AARCH64_CALL26	snprintf
    8c94: 93407c00     	sxtw	x0, w0
    8c98: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    8c9c: f9400bf5     	ldr	x21, [sp, #0x10]
    8ca0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    8ca4: d50323bf     	autiasp
    8ca8: d65f03c0     	ret
