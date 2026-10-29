
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001d90 <aw8693x_set_wav_seq>:
    1d90: d503233f     	paciasp
    1d94: d10083ff     	sub	sp, sp, #0x20
    1d98: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1d9c: 910043fd     	add	x29, sp, #0x10
    1da0: d5384108     	mrs	x8, SP_EL0
    1da4: 11002821     	add	w1, w1, #0xa
    1da8: 52800023     	mov	w3, #0x1                // =1
    1dac: f9438908     	ldr	x8, [x8, #0x710]
    1db0: f90007e8     	str	x8, [sp, #0x8]
    1db4: 390013e2     	strb	w2, [sp, #0x4]
    1db8: 910013e2     	add	x2, sp, #0x4
    1dbc: 94000000     	bl	0x1dbc <aw8693x_set_wav_seq+0x2c>
		0000000000001dbc:  R_AARCH64_CALL26	i2c_w_bytes
    1dc0: d5384108     	mrs	x8, SP_EL0
    1dc4: f9438908     	ldr	x8, [x8, #0x710]
    1dc8: f94007e9     	ldr	x9, [sp, #0x8]
    1dcc: eb09011f     	cmp	x8, x9
    1dd0: 540000a1     	b.ne	0x1de4 <aw8693x_set_wav_seq+0x54>
    1dd4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1dd8: 910083ff     	add	sp, sp, #0x20
    1ddc: d50323bf     	autiasp
    1de0: d65f03c0     	ret
    1de4: 94000000     	bl	0x1de4 <aw8693x_set_wav_seq+0x54>
		0000000000001de4:  R_AARCH64_CALL26	__stack_chk_fail
