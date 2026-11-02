
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012b4 <aw8693x_get_prctmode>:
    12b4: d503233f     	paciasp
    12b8: d10083ff     	sub	sp, sp, #0x20
    12bc: a9017bfd     	stp	x29, x30, [sp, #0x10]
    12c0: 910043fd     	add	x29, sp, #0x10
    12c4: d5384108     	mrs	x8, SP_EL0
    12c8: 910013e2     	add	x2, sp, #0x4
    12cc: 52800941     	mov	w1, #0x4a               // =74
    12d0: f9438908     	ldr	x8, [x8, #0x710]
    12d4: 52800023     	mov	w3, #0x1                // =1
    12d8: f90007e8     	str	x8, [sp, #0x8]
    12dc: 390013ff     	strb	wzr, [sp, #0x4]
    12e0: 94000000     	bl	0x12e0 <aw8693x_get_prctmode+0x2c>
		00000000000012e0:  R_AARCH64_CALL26	i2c_r_bytes
    12e4: d5384109     	mrs	x9, SP_EL0
    12e8: f9438929     	ldr	x9, [x9, #0x710]
    12ec: 394013e8     	ldrb	w8, [sp, #0x4]
    12f0: f94007ea     	ldr	x10, [sp, #0x8]
    12f4: eb0a013f     	cmp	x9, x10
    12f8: 540000c1     	b.ne	0x1310 <aw8693x_get_prctmode+0x5c>
    12fc: 53077d00     	lsr	w0, w8, #7
    1300: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1304: 910083ff     	add	sp, sp, #0x20
    1308: d50323bf     	autiasp
    130c: d65f03c0     	ret
    1310: 94000000     	bl	0x1310 <aw8693x_get_prctmode+0x5c>
		0000000000001310:  R_AARCH64_CALL26	__stack_chk_fail
