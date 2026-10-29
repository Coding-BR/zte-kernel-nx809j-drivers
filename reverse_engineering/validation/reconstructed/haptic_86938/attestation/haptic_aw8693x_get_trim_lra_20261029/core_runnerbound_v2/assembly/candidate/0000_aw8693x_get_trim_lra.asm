
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001318 <aw8693x_get_trim_lra>:
    1318: d503233f     	paciasp
    131c: d10083ff     	sub	sp, sp, #0x20
    1320: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1324: 910043fd     	add	x29, sp, #0x10
    1328: d5384108     	mrs	x8, SP_EL0
    132c: 910013e2     	add	x2, sp, #0x4
    1330: 52800ba1     	mov	w1, #0x5d               // =93
    1334: f9438908     	ldr	x8, [x8, #0x710]
    1338: 52800023     	mov	w3, #0x1                // =1
    133c: f90007e8     	str	x8, [sp, #0x8]
    1340: 390013ff     	strb	wzr, [sp, #0x4]
    1344: 94000000     	bl	0x1344 <aw8693x_get_trim_lra+0x2c>
		0000000000001344:  R_AARCH64_CALL26	i2c_r_bytes
    1348: d5384109     	mrs	x9, SP_EL0
    134c: f9438929     	ldr	x9, [x9, #0x710]
    1350: 394013e8     	ldrb	w8, [sp, #0x4]
    1354: f94007ea     	ldr	x10, [sp, #0x8]
    1358: eb0a013f     	cmp	x9, x10
    135c: 540000c1     	b.ne	0x1374 <aw8693x_get_trim_lra+0x5c>
    1360: 12001900     	and	w0, w8, #0x7f
    1364: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1368: 910083ff     	add	sp, sp, #0x20
    136c: d50323bf     	autiasp
    1370: d65f03c0     	ret
    1374: 94000000     	bl	0x1374 <aw8693x_get_trim_lra+0x5c>
		0000000000001374:  R_AARCH64_CALL26	__stack_chk_fail
