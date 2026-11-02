
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000191c <aw8693x_set_gain>:
    191c: d503233f     	paciasp
    1920: d10083ff     	sub	sp, sp, #0x20
    1924: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1928: 910043fd     	add	x29, sp, #0x10
    192c: d5384108     	mrs	x8, SP_EL0
    1930: 910013e2     	add	x2, sp, #0x4
    1934: 52800023     	mov	w3, #0x1                // =1
    1938: f9438908     	ldr	x8, [x8, #0x710]
    193c: f90007e8     	str	x8, [sp, #0x8]
    1940: 390013e1     	strb	w1, [sp, #0x4]
    1944: 528000e1     	mov	w1, #0x7                // =7
    1948: 94000000     	bl	0x1948 <aw8693x_set_gain+0x2c>
		0000000000001948:  R_AARCH64_CALL26	i2c_w_bytes
    194c: d5384108     	mrs	x8, SP_EL0
    1950: f9438908     	ldr	x8, [x8, #0x710]
    1954: f94007e9     	ldr	x9, [sp, #0x8]
    1958: eb09011f     	cmp	x8, x9
    195c: 540000a1     	b.ne	0x1970 <aw8693x_set_gain+0x54>
    1960: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1964: 910083ff     	add	sp, sp, #0x20
    1968: d50323bf     	autiasp
    196c: d65f03c0     	ret
    1970: 94000000     	bl	0x1970 <aw8693x_set_gain+0x54>
		0000000000001970:  R_AARCH64_CALL26	__stack_chk_fail
