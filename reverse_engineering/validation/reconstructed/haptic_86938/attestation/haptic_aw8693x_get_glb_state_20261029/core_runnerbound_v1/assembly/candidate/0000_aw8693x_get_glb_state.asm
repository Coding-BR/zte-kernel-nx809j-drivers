
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001088 <aw8693x_get_glb_state>:
    1088: d503233f     	paciasp
    108c: d10083ff     	sub	sp, sp, #0x20
    1090: a9017bfd     	stp	x29, x30, [sp, #0x10]
    1094: 910043fd     	add	x29, sp, #0x10
    1098: d5384108     	mrs	x8, SP_EL0
    109c: 910013e2     	add	x2, sp, #0x4
    10a0: 528007e1     	mov	w1, #0x3f               // =63
    10a4: f9438908     	ldr	x8, [x8, #0x710]
    10a8: 52800023     	mov	w3, #0x1                // =1
    10ac: f90007e8     	str	x8, [sp, #0x8]
    10b0: 390013ff     	strb	wzr, [sp, #0x4]
    10b4: 94000000     	bl	0x10b4 <aw8693x_get_glb_state+0x2c>
		00000000000010b4:  R_AARCH64_CALL26	i2c_r_bytes
    10b8: d5384108     	mrs	x8, SP_EL0
    10bc: f9438908     	ldr	x8, [x8, #0x710]
    10c0: 394013e0     	ldrb	w0, [sp, #0x4]
    10c4: f94007e9     	ldr	x9, [sp, #0x8]
    10c8: eb09011f     	cmp	x8, x9
    10cc: 540000a1     	b.ne	0x10e0 <aw8693x_get_glb_state+0x58>
    10d0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    10d4: 910083ff     	add	sp, sp, #0x20
    10d8: d50323bf     	autiasp
    10dc: d65f03c0     	ret
    10e0: 94000000     	bl	0x10e0 <aw8693x_get_glb_state+0x58>
		00000000000010e0:  R_AARCH64_CALL26	__stack_chk_fail
