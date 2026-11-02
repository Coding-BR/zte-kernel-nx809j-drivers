
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003388 <aw8693x_get_trim_lra>:
    3388: d503233f     	paciasp
    338c: d10083ff     	sub	sp, sp, #0x20
    3390: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3394: 910043fd     	add	x29, sp, #0x10
    3398: d5384108     	mrs	x8, SP_EL0
    339c: 910013e2     	add	x2, sp, #0x4
    33a0: 52800ba1     	mov	w1, #0x5d               // =93
    33a4: f9438908     	ldr	x8, [x8, #0x710]
    33a8: 52800023     	mov	w3, #0x1                // =1
    33ac: f90007e8     	str	x8, [sp, #0x8]
    33b0: 390013ff     	strb	wzr, [sp, #0x4]
    33b4: 94000000     	bl	0x33b4 <aw8693x_get_trim_lra+0x2c>
		00000000000033b4:  R_AARCH64_CALL26	i2c_r_bytes
    33b8: d5384109     	mrs	x9, SP_EL0
    33bc: f9438929     	ldr	x9, [x9, #0x710]
    33c0: 394013e8     	ldrb	w8, [sp, #0x4]
    33c4: f94007ea     	ldr	x10, [sp, #0x8]
    33c8: eb0a013f     	cmp	x9, x10
    33cc: 540000c1     	b.ne	0x33e4 <aw8693x_get_trim_lra+0x5c>
    33d0: 12001900     	and	w0, w8, #0x7f
    33d4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    33d8: 910083ff     	add	sp, sp, #0x20
    33dc: d50323bf     	autiasp
    33e0: d65f03c0     	ret
    33e4: 94000000     	bl	0x33e4 <aw8693x_get_trim_lra+0x5c>
		00000000000033e4:  R_AARCH64_CALL26	__stack_chk_fail
