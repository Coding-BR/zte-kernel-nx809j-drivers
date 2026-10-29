
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ca4 <aw8693x_set_repeat_seq>:
    1ca4: d503233f     	paciasp
    1ca8: d100c3ff     	sub	sp, sp, #0x30
    1cac: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1cb0: f90013f3     	str	x19, [sp, #0x20]
    1cb4: 910043fd     	add	x29, sp, #0x10
    1cb8: d5384108     	mrs	x8, SP_EL0
    1cbc: 910013e2     	add	x2, sp, #0x4
    1cc0: 52800023     	mov	w3, #0x1                // =1
    1cc4: f9438908     	ldr	x8, [x8, #0x710]
    1cc8: aa0003f3     	mov	x19, x0
    1ccc: f90007e8     	str	x8, [sp, #0x8]
    1cd0: 390013e1     	strb	w1, [sp, #0x4]
    1cd4: 52800141     	mov	w1, #0xa                // =10
    1cd8: 94000000     	bl	0x1cd8 <aw8693x_set_repeat_seq+0x34>
		0000000000001cd8:  R_AARCH64_CALL26	i2c_w_bytes
    1cdc: aa1303e0     	mov	x0, x19
    1ce0: 52800241     	mov	w1, #0x12               // =18
    1ce4: 12801e02     	mov	w2, #-0xf1              // =-241
    1ce8: 52801e03     	mov	w3, #0xf0               // =240
    1cec: 94000000     	bl	0x1cec <aw8693x_set_repeat_seq+0x48>
		0000000000001cec:  R_AARCH64_CALL26	i2c_w_bits
    1cf0: d5384108     	mrs	x8, SP_EL0
    1cf4: f9438908     	ldr	x8, [x8, #0x710]
    1cf8: f94007e9     	ldr	x9, [sp, #0x8]
    1cfc: eb09011f     	cmp	x8, x9
    1d00: 540000c1     	b.ne	0x1d18 <aw8693x_set_repeat_seq+0x74>
    1d04: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1d08: f94013f3     	ldr	x19, [sp, #0x20]
    1d0c: 9100c3ff     	add	sp, sp, #0x30
    1d10: d50323bf     	autiasp
    1d14: d65f03c0     	ret
    1d18: 94000000     	bl	0x1d18 <aw8693x_set_repeat_seq+0x74>
		0000000000001d18:  R_AARCH64_CALL26	__stack_chk_fail
