
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011b0 <aw8693x_rtp_get_fifo_aes>:
    11b0: d503233f     	paciasp
    11b4: d10083ff     	sub	sp, sp, #0x20
    11b8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    11bc: 910043fd     	add	x29, sp, #0x10
    11c0: d5384108     	mrs	x8, SP_EL0
    11c4: 910013e2     	add	x2, sp, #0x4
    11c8: 52800021     	mov	w1, #0x1                // =1
    11cc: f9438908     	ldr	x8, [x8, #0x710]
    11d0: 52800023     	mov	w3, #0x1                // =1
    11d4: f90007e8     	str	x8, [sp, #0x8]
    11d8: 390013ff     	strb	wzr, [sp, #0x4]
    11dc: 94000000     	bl	0x11dc <aw8693x_rtp_get_fifo_aes+0x2c>
		00000000000011dc:  R_AARCH64_CALL26	i2c_r_bytes
    11e0: d5384109     	mrs	x9, SP_EL0
    11e4: f9438929     	ldr	x9, [x9, #0x710]
    11e8: 394013e8     	ldrb	w8, [sp, #0x4]
    11ec: f94007ea     	ldr	x10, [sp, #0x8]
    11f0: eb0a013f     	cmp	x9, x10
    11f4: 540000c1     	b.ne	0x120c <aw8693x_rtp_get_fifo_aes+0x5c>
    11f8: 53041100     	ubfx	w0, w8, #4, #1
    11fc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1200: 910083ff     	add	sp, sp, #0x20
    1204: d50323bf     	autiasp
    1208: d65f03c0     	ret
    120c: 94000000     	bl	0x120c <aw8693x_rtp_get_fifo_aes+0x5c>
		000000000000120c:  R_AARCH64_CALL26	__stack_chk_fail
