
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f8c <aw8693x_set_wav_seq>:
     f8c: d503233f     	paciasp
     f90: d10083ff     	sub	sp, sp, #0x20
     f94: a9017bfd     	stp	x29, x30, [sp, #0x10]
     f98: 910043fd     	add	x29, sp, #0x10
     f9c: d5384108     	mrs	x8, SP_EL0
     fa0: 11002821     	add	w1, w1, #0xa
     fa4: 52800023     	mov	w3, #0x1                // =1
     fa8: f9438908     	ldr	x8, [x8, #0x710]
     fac: f90007e8     	str	x8, [sp, #0x8]
     fb0: 390013e2     	strb	w2, [sp, #0x4]
     fb4: 910013e2     	add	x2, sp, #0x4
     fb8: 94000000     	bl	0xfb8 <aw8693x_set_wav_seq+0x2c>
		0000000000000fb8:  R_AARCH64_CALL26	i2c_w_bytes
     fbc: d5384108     	mrs	x8, SP_EL0
     fc0: f9438908     	ldr	x8, [x8, #0x710]
     fc4: f94007e9     	ldr	x9, [sp, #0x8]
     fc8: eb09011f     	cmp	x8, x9
     fcc: 540000a1     	b.ne	0xfe0 <aw8693x_set_wav_seq+0x54>
     fd0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     fd4: 910083ff     	add	sp, sp, #0x20
     fd8: d50323bf     	autiasp
     fdc: d65f03c0     	ret
     fe0: 94000000     	bl	0xfe0 <aw8693x_set_wav_seq+0x54>
		0000000000000fe0:  R_AARCH64_CALL26	__stack_chk_fail
