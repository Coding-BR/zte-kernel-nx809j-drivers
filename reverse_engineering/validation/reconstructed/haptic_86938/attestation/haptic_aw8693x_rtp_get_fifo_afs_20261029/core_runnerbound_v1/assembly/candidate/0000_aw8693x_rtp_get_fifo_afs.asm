
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000114c <aw8693x_rtp_get_fifo_afs>:
    114c: d503233f     	paciasp
    1150: d10083ff     	sub	sp, sp, #0x20
    1154: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1158: 910043fd     	add	x29, sp, #0x10
    115c: d5384108     	mrs	x8, SP_EL0
    1160: 910013e2     	add	x2, sp, #0x4
    1164: 52800021     	mov	w1, #0x1                // =1
    1168: f9438908     	ldr	x8, [x8, #0x710]
    116c: 52800023     	mov	w3, #0x1                // =1
    1170: f90007e8     	str	x8, [sp, #0x8]
    1174: 390013ff     	strb	wzr, [sp, #0x4]
    1178: 94000000     	bl	0x1178 <aw8693x_rtp_get_fifo_afs+0x2c>
		0000000000001178:  R_AARCH64_CALL26	i2c_r_bytes
    117c: d5384109     	mrs	x9, SP_EL0
    1180: f9438929     	ldr	x9, [x9, #0x710]
    1184: 394013e8     	ldrb	w8, [sp, #0x4]
    1188: f94007ea     	ldr	x10, [sp, #0x8]
    118c: eb0a013f     	cmp	x9, x10
    1190: 540000c1     	b.ne	0x11a8 <aw8693x_rtp_get_fifo_afs+0x5c>
    1194: 53030d00     	ubfx	w0, w8, #3, #1
    1198: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    119c: 910083ff     	add	sp, sp, #0x20
    11a0: d50323bf     	autiasp
    11a4: d65f03c0     	ret
    11a8: 94000000     	bl	0x11a8 <aw8693x_rtp_get_fifo_afs+0x5c>
		00000000000011a8:  R_AARCH64_CALL26	__stack_chk_fail
