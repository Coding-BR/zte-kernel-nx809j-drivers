
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000137c <aw8693x_set_ram_addr>:
    137c: d503233f     	paciasp
    1380: d10083ff     	sub	sp, sp, #0x20
    1384: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1388: 910043fd     	add	x29, sp, #0x10
    138c: d5384108     	mrs	x8, SP_EL0
    1390: 910013e2     	add	x2, sp, #0x4
    1394: 52800801     	mov	w1, #0x40               // =64
    1398: f9438908     	ldr	x8, [x8, #0x710]
    139c: 52800043     	mov	w3, #0x2                // =2
    13a0: f90007e8     	str	x8, [sp, #0x8]
    13a4: 7948b008     	ldrh	w8, [x0, #0x458]
    13a8: 5ac00908     	rev	w8, w8
    13ac: 53107d08     	lsr	w8, w8, #16
    13b0: 79000be8     	strh	w8, [sp, #0x4]
    13b4: 94000000     	bl	0x13b4 <aw8693x_set_ram_addr+0x38>
		00000000000013b4:  R_AARCH64_CALL26	i2c_w_bytes
    13b8: d5384108     	mrs	x8, SP_EL0
    13bc: f9438908     	ldr	x8, [x8, #0x710]
    13c0: f94007e9     	ldr	x9, [sp, #0x8]
    13c4: eb09011f     	cmp	x8, x9
    13c8: 540000a1     	b.ne	0x13dc <aw8693x_set_ram_addr+0x60>
    13cc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    13d0: 910083ff     	add	sp, sp, #0x20
    13d4: d50323bf     	autiasp
    13d8: d65f03c0     	ret
    13dc: 94000000     	bl	0x13dc <aw8693x_set_ram_addr+0x60>
		00000000000013dc:  R_AARCH64_CALL26	__stack_chk_fail
