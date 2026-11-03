
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000028e4 <aw8693x_set_ram_addr>:
    28e4: d503233f     	paciasp
    28e8: d10083ff     	sub	sp, sp, #0x20
    28ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    28f0: 910043fd     	add	x29, sp, #0x10
    28f4: d5384108     	mrs	x8, SP_EL0
    28f8: 910013e2     	add	x2, sp, #0x4
    28fc: 52800801     	mov	w1, #0x40               // =64
    2900: f9438908     	ldr	x8, [x8, #0x710]
    2904: 52800043     	mov	w3, #0x2                // =2
    2908: f90007e8     	str	x8, [sp, #0x8]
    290c: 7948b008     	ldrh	w8, [x0, #0x458]
    2910: 5ac00908     	rev	w8, w8
    2914: 53107d08     	lsr	w8, w8, #16
    2918: 79000be8     	strh	w8, [sp, #0x4]
    291c: 94000000     	bl	0x291c <aw8693x_set_ram_addr+0x38>
		000000000000291c:  R_AARCH64_CALL26	i2c_w_bytes
    2920: d5384108     	mrs	x8, SP_EL0
    2924: f9438908     	ldr	x8, [x8, #0x710]
    2928: f94007e9     	ldr	x9, [sp, #0x8]
    292c: eb09011f     	cmp	x8, x9
    2930: 540000a1     	b.ne	0x2944 <aw8693x_set_ram_addr+0x60>
    2934: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    2938: 910083ff     	add	sp, sp, #0x20
    293c: d50323bf     	autiasp
    2940: d65f03c0     	ret
    2944: 94000000     	bl	0x2944 <aw8693x_set_ram_addr+0x60>
		0000000000002944:  R_AARCH64_CALL26	__stack_chk_fail
