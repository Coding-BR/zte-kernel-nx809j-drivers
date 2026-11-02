
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000010e8 <aw8693x_get_osc_status>:
    10e8: d503233f     	paciasp
    10ec: d10083ff     	sub	sp, sp, #0x20
    10f0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    10f4: 910043fd     	add	x29, sp, #0x10
    10f8: d5384108     	mrs	x8, SP_EL0
    10fc: 910013e2     	add	x2, sp, #0x4
    1100: 52800081     	mov	w1, #0x4                // =4
    1104: f9438908     	ldr	x8, [x8, #0x710]
    1108: 52800023     	mov	w3, #0x1                // =1
    110c: f90007e8     	str	x8, [sp, #0x8]
    1110: 390013ff     	strb	wzr, [sp, #0x4]
    1114: 94000000     	bl	0x1114 <aw8693x_get_osc_status+0x2c>
		0000000000001114:  R_AARCH64_CALL26	i2c_r_bytes
    1118: d5384109     	mrs	x9, SP_EL0
    111c: f9438929     	ldr	x9, [x9, #0x710]
    1120: 394013e8     	ldrb	w8, [sp, #0x4]
    1124: f94007ea     	ldr	x10, [sp, #0x8]
    1128: eb0a013f     	cmp	x9, x10
    112c: 540000c1     	b.ne	0x1144 <aw8693x_get_osc_status+0x5c>
    1130: 12000100     	and	w0, w8, #0x1
    1134: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1138: 910083ff     	add	sp, sp, #0x20
    113c: d50323bf     	autiasp
    1140: d65f03c0     	ret
    1144: 94000000     	bl	0x1144 <aw8693x_get_osc_status+0x5c>
		0000000000001144:  R_AARCH64_CALL26	__stack_chk_fail
