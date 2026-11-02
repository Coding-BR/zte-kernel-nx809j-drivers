
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014ac <aw8693x_set_repeat_seq>:
    14ac: d503233f     	paciasp
    14b0: d100c3ff     	sub	sp, sp, #0x30
    14b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    14b8: f90013f3     	str	x19, [sp, #0x20]
    14bc: 910043fd     	add	x29, sp, #0x10
    14c0: d5384108     	mrs	x8, SP_EL0
    14c4: 910013e2     	add	x2, sp, #0x4
    14c8: 52800023     	mov	w3, #0x1                // =1
    14cc: f9438908     	ldr	x8, [x8, #0x710]
    14d0: aa0003f3     	mov	x19, x0
    14d4: f90007e8     	str	x8, [sp, #0x8]
    14d8: b90007ff     	str	wzr, [sp, #0x4]
    14dc: 390013e1     	strb	w1, [sp, #0x4]
    14e0: 52800141     	mov	w1, #0xa                // =10
    14e4: 94000000     	bl	0x14e4 <aw8693x_set_repeat_seq+0x38>
		00000000000014e4:  R_AARCH64_CALL26	i2c_w_bytes
    14e8: aa1303e0     	mov	x0, x19
    14ec: 52800241     	mov	w1, #0x12               // =18
    14f0: 12801e02     	mov	w2, #-0xf1              // =-241
    14f4: 52801e03     	mov	w3, #0xf0               // =240
    14f8: 94000000     	bl	0x14f8 <aw8693x_set_repeat_seq+0x4c>
		00000000000014f8:  R_AARCH64_CALL26	i2c_w_bits
    14fc: d5384108     	mrs	x8, SP_EL0
    1500: f9438908     	ldr	x8, [x8, #0x710]
    1504: f94007e9     	ldr	x9, [sp, #0x8]
    1508: eb09011f     	cmp	x8, x9
    150c: 540000c1     	b.ne	0x1524 <aw8693x_set_repeat_seq+0x78>
    1510: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1514: f94013f3     	ldr	x19, [sp, #0x20]
    1518: 9100c3ff     	add	sp, sp, #0x30
    151c: d50323bf     	autiasp
    1520: d65f03c0     	ret
    1524: 94000000     	bl	0x1524 <aw8693x_set_repeat_seq+0x78>
		0000000000001524:  R_AARCH64_CALL26	__stack_chk_fail
