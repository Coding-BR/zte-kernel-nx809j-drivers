
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000102c <aw8693x_set_gain>:
    102c: d503233f     	paciasp
    1030: d10083ff     	sub	sp, sp, #0x20
    1034: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1038: 910043fd     	add	x29, sp, #0x10
    103c: d5384108     	mrs	x8, SP_EL0
    1040: 910013e2     	add	x2, sp, #0x4
    1044: 52800023     	mov	w3, #0x1                // =1
    1048: f9438908     	ldr	x8, [x8, #0x710]
    104c: f90007e8     	str	x8, [sp, #0x8]
    1050: 390013e1     	strb	w1, [sp, #0x4]
    1054: 528000e1     	mov	w1, #0x7                // =7
    1058: 94000000     	bl	0x1058 <aw8693x_set_gain+0x2c>
		0000000000001058:  R_AARCH64_CALL26	i2c_w_bytes
    105c: d5384108     	mrs	x8, SP_EL0
    1060: f9438908     	ldr	x8, [x8, #0x710]
    1064: f94007e9     	ldr	x9, [sp, #0x8]
    1068: eb09011f     	cmp	x8, x9
    106c: 540000a1     	b.ne	0x1080 <aw8693x_set_gain+0x54>
    1070: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1074: 910083ff     	add	sp, sp, #0x20
    1078: d50323bf     	autiasp
    107c: d65f03c0     	ret
    1080: 94000000     	bl	0x1080 <aw8693x_set_gain+0x54>
		0000000000001080:  R_AARCH64_CALL26	__stack_chk_fail
