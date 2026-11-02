
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009d48 <aw9620x_reg_get>:
    9d48: d503233f     	paciasp
    9d4c: d101c3ff     	sub	sp, sp, #0x70
    9d50: a9017bfd     	stp	x29, x30, [sp, #0x10]
    9d54: f90013fb     	str	x27, [sp, #0x20]
    9d58: a90367fa     	stp	x26, x25, [sp, #0x30]
    9d5c: a9045ff8     	stp	x24, x23, [sp, #0x40]
    9d60: a90557f6     	stp	x22, x21, [sp, #0x50]
    9d64: a9064ff4     	stp	x20, x19, [sp, #0x60]
    9d68: 910043fd     	add	x29, sp, #0x10
    9d6c: d5384108     	mrs	x8, SP_EL0
    9d70: aa0203f4     	mov	x20, x2
    9d74: aa1f03f9     	mov	x25, xzr
    9d78: f9438908     	ldr	x8, [x8, #0x710]
    9d7c: aa1f03f3     	mov	x19, xzr
    9d80: 9000001a     	adrp	x26, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x618
    9d84: 9100035a     	add	x26, x26, #0x0
		0000000000009d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x618
    9d88: 90000015     	adrp	x21, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1437
    9d8c: 910002b5     	add	x21, x21, #0x0
		0000000000009d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1437
    9d90: f90007e8     	str	x8, [sp, #0x8]
    9d94: 5282001b     	mov	w27, #0x1000            // =4096
    9d98: 90000017     	adrp	x23, 0x9000 <aw9620x_mode_operation_set+0x54>
		0000000000009d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1667
    9d9c: 910002f7     	add	x23, x23, #0x0
		0000000000009d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1667
    9da0: f9404c08     	ldr	x8, [x0, #0x98]
    9da4: b90007ff     	str	wzr, [sp, #0x4]
    9da8: d100e116     	sub	x22, x8, #0x38
    9dac: 1400000b     	b	0x9dd8 <aw9620x_reg_get+0x90>
    9db0: b94007e4     	ldr	w4, [sp, #0x4]
    9db4: cb130361     	sub	x1, x27, x19
    9db8: 8b130280     	add	x0, x20, x19
    9dbc: aa1703e2     	mov	x2, x23
    9dc0: 2a1803e3     	mov	w3, w24
    9dc4: 94000000     	bl	0x9dc4 <aw9620x_reg_get+0x7c>
		0000000000009dc4:  R_AARCH64_CALL26	snprintf
    9dc8: 8b20c273     	add	x19, x19, w0, sxtw
    9dcc: 91001339     	add	x25, x25, #0x4
    9dd0: f10c433f     	cmp	x25, #0x310
    9dd4: 54000220     	b.eq	0x9e18 <aw9620x_reg_get+0xd0>
    9dd8: 38796b48     	ldrb	w8, [x26, x25]
    9ddc: 3607ff88     	tbz	w8, #0x0, 0x9dcc <aw9620x_reg_get+0x84>
    9de0: 8b190348     	add	x8, x26, x25
    9de4: 910013e2     	add	x2, sp, #0x4
    9de8: aa1603e0     	mov	x0, x22
    9dec: 79400518     	ldrh	w24, [x8, #0x2]
    9df0: 2a1803e1     	mov	w1, w24
    9df4: 97ffe743     	bl	0x3b00 <aw9620x_i2c_read>
    9df8: 36fffdc0     	tbz	w0, #0x1f, 0x9db0 <aw9620x_reg_get+0x68>
    9dfc: cb130361     	sub	x1, x27, x19
    9e00: 8b130280     	add	x0, x20, x19
    9e04: aa1503e2     	mov	x2, x21
    9e08: 12800003     	mov	w3, #-0x1               // =-1
    9e0c: 94000000     	bl	0x9e0c <aw9620x_reg_get+0xc4>
		0000000000009e0c:  R_AARCH64_CALL26	snprintf
    9e10: 8b20c273     	add	x19, x19, w0, sxtw
    9e14: 17ffffe7     	b	0x9db0 <aw9620x_reg_get+0x68>
    9e18: d5384108     	mrs	x8, SP_EL0
    9e1c: f9438908     	ldr	x8, [x8, #0x710]
    9e20: f94007e9     	ldr	x9, [sp, #0x8]
    9e24: eb09011f     	cmp	x8, x9
    9e28: 54000161     	b.ne	0x9e54 <aw9620x_reg_get+0x10c>
    9e2c: aa1303e0     	mov	x0, x19
    9e30: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    9e34: f94013fb     	ldr	x27, [sp, #0x20]
    9e38: a94557f6     	ldp	x22, x21, [sp, #0x50]
    9e3c: a9445ff8     	ldp	x24, x23, [sp, #0x40]
    9e40: a94367fa     	ldp	x26, x25, [sp, #0x30]
    9e44: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    9e48: 9101c3ff     	add	sp, sp, #0x70
    9e4c: d50323bf     	autiasp
    9e50: d65f03c0     	ret
    9e54: 94000000     	bl	0x9e54 <aw9620x_reg_get+0x10c>
		0000000000009e54:  R_AARCH64_CALL26	__stack_chk_fail
