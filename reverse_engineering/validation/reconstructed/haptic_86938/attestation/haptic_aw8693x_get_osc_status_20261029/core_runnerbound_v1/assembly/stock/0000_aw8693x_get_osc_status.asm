
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000344c <aw8693x_get_osc_status>:
    344c: d503233f     	paciasp
    3450: d10083ff     	sub	sp, sp, #0x20
    3454: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3458: 910043fd     	add	x29, sp, #0x10
    345c: d5384108     	mrs	x8, SP_EL0
    3460: 910013e2     	add	x2, sp, #0x4
    3464: 52800081     	mov	w1, #0x4                // =4
    3468: f9438908     	ldr	x8, [x8, #0x710]
    346c: 52800023     	mov	w3, #0x1                // =1
    3470: f90007e8     	str	x8, [sp, #0x8]
    3474: 390013ff     	strb	wzr, [sp, #0x4]
    3478: 94000000     	bl	0x3478 <aw8693x_get_osc_status+0x2c>
		0000000000003478:  R_AARCH64_CALL26	i2c_r_bytes
    347c: d5384109     	mrs	x9, SP_EL0
    3480: f9438929     	ldr	x9, [x9, #0x710]
    3484: 394013e8     	ldrb	w8, [sp, #0x4]
    3488: f94007ea     	ldr	x10, [sp, #0x8]
    348c: eb0a013f     	cmp	x9, x10
    3490: 540000c1     	b.ne	0x34a8 <aw8693x_get_osc_status+0x5c>
    3494: 12000100     	and	w0, w8, #0x1
    3498: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    349c: 910083ff     	add	sp, sp, #0x20
    34a0: d50323bf     	autiasp
    34a4: d65f03c0     	ret
    34a8: 94000000     	bl	0x34a8 <aw8693x_get_osc_status+0x5c>
		00000000000034a8:  R_AARCH64_CALL26	__stack_chk_fail
