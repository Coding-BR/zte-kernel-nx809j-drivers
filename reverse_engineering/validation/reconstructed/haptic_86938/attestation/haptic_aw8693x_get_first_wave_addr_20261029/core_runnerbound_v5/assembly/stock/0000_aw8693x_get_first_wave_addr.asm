
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002f5c <aw8693x_get_first_wave_addr>:
    2f5c: d503233f     	paciasp
    2f60: d100c3ff     	sub	sp, sp, #0x30
    2f64: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2f68: f90013f3     	str	x19, [sp, #0x20]
    2f6c: 910043fd     	add	x29, sp, #0x10
    2f70: d5384108     	mrs	x8, SP_EL0
    2f74: aa0103f3     	mov	x19, x1
    2f78: 910013e2     	add	x2, sp, #0x4
    2f7c: f9438908     	ldr	x8, [x8, #0x710]
    2f80: 52800841     	mov	w1, #0x42               // =66
    2f84: 52800063     	mov	w3, #0x3                // =3
    2f88: f90007e8     	str	x8, [sp, #0x8]
    2f8c: 39001bff     	strb	wzr, [sp, #0x6]
    2f90: 79000bff     	strh	wzr, [sp, #0x4]
    2f94: 94000000     	bl	0x2f94 <aw8693x_get_first_wave_addr+0x38>
		0000000000002f94:  R_AARCH64_CALL26	i2c_r_bytes
    2f98: 784053e8     	ldurh	w8, [sp, #0x5]
    2f9c: 79000268     	strh	w8, [x19]
    2fa0: d5384108     	mrs	x8, SP_EL0
    2fa4: f9438908     	ldr	x8, [x8, #0x710]
    2fa8: f94007e9     	ldr	x9, [sp, #0x8]
    2fac: eb09011f     	cmp	x8, x9
    2fb0: 540000c1     	b.ne	0x2fc8 <aw8693x_get_first_wave_addr+0x6c>
    2fb4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2fb8: f94013f3     	ldr	x19, [sp, #0x20]
    2fbc: 9100c3ff     	add	sp, sp, #0x30
    2fc0: d50323bf     	autiasp
    2fc4: d65f03c0     	ret
    2fc8: 94000000     	bl	0x2fc8 <aw8693x_get_first_wave_addr+0x6c>
		0000000000002fc8:  R_AARCH64_CALL26	__stack_chk_fail
