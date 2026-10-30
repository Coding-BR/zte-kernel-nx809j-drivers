
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003324 <aw8693x_get_prctmode>:
    3324: d503233f     	paciasp
    3328: d10083ff     	sub	sp, sp, #0x20
    332c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3330: 910043fd     	add	x29, sp, #0x10
    3334: d5384108     	mrs	x8, SP_EL0
    3338: 910013e2     	add	x2, sp, #0x4
    333c: 52800941     	mov	w1, #0x4a               // =74
    3340: f9438908     	ldr	x8, [x8, #0x710]
    3344: 52800023     	mov	w3, #0x1                // =1
    3348: f90007e8     	str	x8, [sp, #0x8]
    334c: 390013ff     	strb	wzr, [sp, #0x4]
    3350: 94000000     	bl	0x3350 <aw8693x_get_prctmode+0x2c>
		0000000000003350:  R_AARCH64_CALL26	i2c_r_bytes
    3354: d5384109     	mrs	x9, SP_EL0
    3358: f9438929     	ldr	x9, [x9, #0x710]
    335c: 394013e8     	ldrb	w8, [sp, #0x4]
    3360: f94007ea     	ldr	x10, [sp, #0x8]
    3364: eb0a013f     	cmp	x9, x10
    3368: 540000c1     	b.ne	0x3380 <aw8693x_get_prctmode+0x5c>
    336c: 53077d00     	lsr	w0, w8, #7
    3370: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3374: 910083ff     	add	sp, sp, #0x20
    3378: d50323bf     	autiasp
    337c: d65f03c0     	ret
    3380: 94000000     	bl	0x3380 <aw8693x_get_prctmode+0x5c>
		0000000000003380:  R_AARCH64_CALL26	__stack_chk_fail
