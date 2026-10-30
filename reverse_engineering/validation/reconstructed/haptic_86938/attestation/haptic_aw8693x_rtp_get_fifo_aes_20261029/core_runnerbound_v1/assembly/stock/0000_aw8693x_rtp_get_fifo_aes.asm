
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003514 <aw8693x_rtp_get_fifo_aes>:
    3514: d503233f     	paciasp
    3518: d10083ff     	sub	sp, sp, #0x20
    351c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3520: 910043fd     	add	x29, sp, #0x10
    3524: d5384108     	mrs	x8, SP_EL0
    3528: 910013e2     	add	x2, sp, #0x4
    352c: 52800021     	mov	w1, #0x1                // =1
    3530: f9438908     	ldr	x8, [x8, #0x710]
    3534: 52800023     	mov	w3, #0x1                // =1
    3538: f90007e8     	str	x8, [sp, #0x8]
    353c: 390013ff     	strb	wzr, [sp, #0x4]
    3540: 94000000     	bl	0x3540 <aw8693x_rtp_get_fifo_aes+0x2c>
		0000000000003540:  R_AARCH64_CALL26	i2c_r_bytes
    3544: d5384109     	mrs	x9, SP_EL0
    3548: f9438929     	ldr	x9, [x9, #0x710]
    354c: 394013e8     	ldrb	w8, [sp, #0x4]
    3550: f94007ea     	ldr	x10, [sp, #0x8]
    3554: eb0a013f     	cmp	x9, x10
    3558: 540000c1     	b.ne	0x3570 <aw8693x_rtp_get_fifo_aes+0x5c>
    355c: 53041100     	ubfx	w0, w8, #4, #1
    3560: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3564: 910083ff     	add	sp, sp, #0x20
    3568: d50323bf     	autiasp
    356c: d65f03c0     	ret
    3570: 94000000     	bl	0x3570 <aw8693x_rtp_get_fifo_aes+0x5c>
		0000000000003570:  R_AARCH64_CALL26	__stack_chk_fail
