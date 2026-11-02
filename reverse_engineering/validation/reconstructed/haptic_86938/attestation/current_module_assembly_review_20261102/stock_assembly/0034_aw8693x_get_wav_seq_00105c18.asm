
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002df8 <aw8693x_get_wav_seq>:
    2df8: d503233f     	paciasp
    2dfc: d10103ff     	sub	sp, sp, #0x40
    2e00: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2e04: f90013f5     	str	x21, [sp, #0x20]
    2e08: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2e0c: 910043fd     	add	x29, sp, #0x10
    2e10: d5384108     	mrs	x8, SP_EL0
    2e14: 52800109     	mov	w9, #0x8                // =8
    2e18: 2a0103f5     	mov	w21, w1
    2e1c: 7100203f     	cmp	w1, #0x8
    2e20: f9438908     	ldr	x8, [x8, #0x710]
    2e24: 910003e2     	mov	x2, sp
    2e28: 1a893034     	csel	w20, w1, w9, lo
    2e2c: 52800141     	mov	w1, #0xa                // =10
    2e30: aa0003f3     	mov	x19, x0
    2e34: 2a1403e3     	mov	w3, w20
    2e38: f90007e8     	str	x8, [sp, #0x8]
    2e3c: f90003ff     	str	xzr, [sp]
    2e40: 94000000     	bl	0x2e40 <aw8693x_get_wav_seq+0x48>
		0000000000002e40:  R_AARCH64_CALL26	i2c_r_bytes
    2e44: 340000b5     	cbz	w21, 0x2e58 <aw8693x_get_wav_seq+0x60>
    2e48: 91007a60     	add	x0, x19, #0x1e
    2e4c: 910003e1     	mov	x1, sp
    2e50: aa1403e2     	mov	x2, x20
    2e54: 94000000     	bl	0x2e54 <aw8693x_get_wav_seq+0x5c>
		0000000000002e54:  R_AARCH64_CALL26	memcpy
    2e58: d5384108     	mrs	x8, SP_EL0
    2e5c: f9438908     	ldr	x8, [x8, #0x710]
    2e60: f94007e9     	ldr	x9, [sp, #0x8]
    2e64: eb09011f     	cmp	x8, x9
    2e68: 540000e1     	b.ne	0x2e84 <aw8693x_get_wav_seq+0x8c>
    2e6c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    2e70: f94013f5     	ldr	x21, [sp, #0x20]
    2e74: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2e78: 910103ff     	add	sp, sp, #0x40
    2e7c: d50323bf     	autiasp
    2e80: d65f03c0     	ret
    2e84: 94000000     	bl	0x2e84 <aw8693x_get_wav_seq+0x8c>
		0000000000002e84:  R_AARCH64_CALL26	__stack_chk_fail
