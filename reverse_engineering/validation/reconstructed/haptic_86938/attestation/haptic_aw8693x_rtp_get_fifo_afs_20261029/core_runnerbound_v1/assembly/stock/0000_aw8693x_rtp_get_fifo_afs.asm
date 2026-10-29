
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000034b0 <aw8693x_rtp_get_fifo_afs>:
    34b0: d503233f     	paciasp
    34b4: d10083ff     	sub	sp, sp, #0x20
    34b8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    34bc: 910043fd     	add	x29, sp, #0x10
    34c0: d5384108     	mrs	x8, SP_EL0
    34c4: 910013e2     	add	x2, sp, #0x4
    34c8: 52800021     	mov	w1, #0x1                // =1
    34cc: f9438908     	ldr	x8, [x8, #0x710]
    34d0: 52800023     	mov	w3, #0x1                // =1
    34d4: f90007e8     	str	x8, [sp, #0x8]
    34d8: 390013ff     	strb	wzr, [sp, #0x4]
    34dc: 94000000     	bl	0x34dc <aw8693x_rtp_get_fifo_afs+0x2c>
		00000000000034dc:  R_AARCH64_CALL26	i2c_r_bytes
    34e0: d5384109     	mrs	x9, SP_EL0
    34e4: f9438929     	ldr	x9, [x9, #0x710]
    34e8: 394013e8     	ldrb	w8, [sp, #0x4]
    34ec: f94007ea     	ldr	x10, [sp, #0x8]
    34f0: eb0a013f     	cmp	x9, x10
    34f4: 540000c1     	b.ne	0x350c <aw8693x_rtp_get_fifo_afs+0x5c>
    34f8: 53030d00     	ubfx	w0, w8, #3, #1
    34fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3500: 910083ff     	add	sp, sp, #0x20
    3504: d50323bf     	autiasp
    3508: d65f03c0     	ret
    350c: 94000000     	bl	0x350c <aw8693x_rtp_get_fifo_afs+0x5c>
		000000000000350c:  R_AARCH64_CALL26	__stack_chk_fail
