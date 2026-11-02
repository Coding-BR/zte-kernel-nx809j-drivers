
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e5c <aw8693x_protect_config>:
    1e5c: d503233f     	paciasp
    1e60: d10103ff     	sub	sp, sp, #0x40
    1e64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1e68: f90013f5     	str	x21, [sp, #0x20]
    1e6c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1e70: 910043fd     	add	x29, sp, #0x10
    1e74: d5384108     	mrs	x8, SP_EL0
    1e78: 2a0203f4     	mov	w20, w2
    1e7c: 12001c55     	and	w21, w2, #0xff
    1e80: f9438908     	ldr	x8, [x8, #0x710]
    1e84: 12801002     	mov	w2, #-0x81              // =-129
    1e88: 2a1f03e3     	mov	w3, wzr
    1e8c: aa0003f3     	mov	x19, x0
    1e90: f90007e8     	str	x8, [sp, #0x8]
    1e94: 390013e1     	strb	w1, [sp, #0x4]
    1e98: 52800901     	mov	w1, #0x48               // =72
    1e9c: 94000000     	bl	0x1e9c <aw8693x_protect_config+0x40>
		0000000000001e9c:  R_AARCH64_CALL26	i2c_w_bits
    1ea0: 350001f5     	cbnz	w21, 0x1edc <aw8693x_protect_config+0x80>
    1ea4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac
    1ea8: 91000000     	add	x0, x0, #0x0
		0000000000001ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac
    1eac: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1eb0: 91000021     	add	x1, x1, #0x0
		0000000000001eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1eb4: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2619
    1eb8: 91000063     	add	x3, x3, #0x0
		0000000000001eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2619
    1ebc: 52805da2     	mov	w2, #0x2ed              // =749
    1ec0: 94000000     	bl	0x1ec0 <aw8693x_protect_config+0x64>
		0000000000001ec0:  R_AARCH64_CALL26	_printk
    1ec4: aa1303e0     	mov	x0, x19
    1ec8: 52800941     	mov	w1, #0x4a               // =74
    1ecc: 12801002     	mov	w2, #-0x81              // =-129
    1ed0: 2a1f03e3     	mov	w3, wzr
    1ed4: 94000000     	bl	0x1ed4 <aw8693x_protect_config+0x78>
		0000000000001ed4:  R_AARCH64_CALL26	i2c_w_bits
    1ed8: 14000015     	b	0x1f2c <aw8693x_protect_config+0xd0>
    1edc: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21b5
    1ee0: 91000000     	add	x0, x0, #0x0
		0000000000001ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21b5
    1ee4: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1ee8: 91000021     	add	x1, x1, #0x0
		0000000000001ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1eec: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2619
    1ef0: 91000063     	add	x3, x3, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2619
    1ef4: 52805cc2     	mov	w2, #0x2e6              // =742
    1ef8: 94000000     	bl	0x1ef8 <aw8693x_protect_config+0x9c>
		0000000000001ef8:  R_AARCH64_CALL26	_printk
    1efc: 32190288     	orr	w8, w20, #0x80
    1f00: 910003e2     	mov	x2, sp
    1f04: aa1303e0     	mov	x0, x19
    1f08: 52800941     	mov	w1, #0x4a               // =74
    1f0c: 52800023     	mov	w3, #0x1                // =1
    1f10: 390003e8     	strb	w8, [sp]
    1f14: 94000000     	bl	0x1f14 <aw8693x_protect_config+0xb8>
		0000000000001f14:  R_AARCH64_CALL26	i2c_w_bytes
    1f18: 910013e2     	add	x2, sp, #0x4
    1f1c: aa1303e0     	mov	x0, x19
    1f20: 52800961     	mov	w1, #0x4b               // =75
    1f24: 52800023     	mov	w3, #0x1                // =1
    1f28: 94000000     	bl	0x1f28 <aw8693x_protect_config+0xcc>
		0000000000001f28:  R_AARCH64_CALL26	i2c_w_bytes
    1f2c: d5384108     	mrs	x8, SP_EL0
    1f30: f9438908     	ldr	x8, [x8, #0x710]
    1f34: f94007e9     	ldr	x9, [sp, #0x8]
    1f38: eb09011f     	cmp	x8, x9
    1f3c: 540000e1     	b.ne	0x1f58 <aw8693x_protect_config+0xfc>
    1f40: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1f44: f94013f5     	ldr	x21, [sp, #0x20]
    1f48: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1f4c: 910103ff     	add	sp, sp, #0x40
    1f50: d50323bf     	autiasp
    1f54: d65f03c0     	ret
    1f58: 94000000     	bl	0x1f58 <aw8693x_protect_config+0xfc>
		0000000000001f58:  R_AARCH64_CALL26	__stack_chk_fail
