
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000033ec <aw8693x_get_glb_state>:
    33ec: d503233f     	paciasp
    33f0: d10083ff     	sub	sp, sp, #0x20
    33f4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    33f8: 910043fd     	add	x29, sp, #0x10
    33fc: d5384108     	mrs	x8, SP_EL0
    3400: 910013e2     	add	x2, sp, #0x4
    3404: 528007e1     	mov	w1, #0x3f               // =63
    3408: f9438908     	ldr	x8, [x8, #0x710]
    340c: 52800023     	mov	w3, #0x1                // =1
    3410: f90007e8     	str	x8, [sp, #0x8]
    3414: 390013ff     	strb	wzr, [sp, #0x4]
    3418: 94000000     	bl	0x3418 <aw8693x_get_glb_state+0x2c>
		0000000000003418:  R_AARCH64_CALL26	i2c_r_bytes
    341c: d5384108     	mrs	x8, SP_EL0
    3420: f9438908     	ldr	x8, [x8, #0x710]
    3424: 394013e0     	ldrb	w0, [sp, #0x4]
    3428: f94007e9     	ldr	x9, [sp, #0x8]
    342c: eb09011f     	cmp	x8, x9
    3430: 540000a1     	b.ne	0x3444 <aw8693x_get_glb_state+0x58>
    3434: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3438: 910083ff     	add	sp, sp, #0x20
    343c: d50323bf     	autiasp
    3440: d65f03c0     	ret
    3444: 94000000     	bl	0x3444 <aw8693x_get_glb_state+0x58>
		0000000000003444:  R_AARCH64_CALL26	__stack_chk_fail
