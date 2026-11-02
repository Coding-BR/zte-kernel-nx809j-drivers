
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000035c8 <aw8693x_interrupt_setup>:
    35c8: d503233f     	paciasp
    35cc: d100c3ff     	sub	sp, sp, #0x30
    35d0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    35d4: f90013f3     	str	x19, [sp, #0x20]
    35d8: 910043fd     	add	x29, sp, #0x10
    35dc: d5384108     	mrs	x8, SP_EL0
    35e0: 910013e2     	add	x2, sp, #0x4
    35e4: 52800041     	mov	w1, #0x2                // =2
    35e8: f9438908     	ldr	x8, [x8, #0x710]
    35ec: 52800023     	mov	w3, #0x1                // =1
    35f0: aa0003f3     	mov	x19, x0
    35f4: f90007e8     	str	x8, [sp, #0x8]
    35f8: 390013ff     	strb	wzr, [sp, #0x4]
    35fc: 94000000     	bl	0x35fc <aw8693x_interrupt_setup+0x34>
		00000000000035fc:  R_AARCH64_CALL26	i2c_r_bytes
    3600: aa1303e0     	mov	x0, x19
    3604: 528008c1     	mov	w1, #0x46               // =70
    3608: 12800302     	mov	w2, #-0x19              // =-25
    360c: 52800103     	mov	w3, #0x8                // =8
    3610: 94000000     	bl	0x3610 <aw8693x_interrupt_setup+0x48>
		0000000000003610:  R_AARCH64_CALL26	i2c_w_bits
    3614: aa1303e0     	mov	x0, x19
    3618: 52800061     	mov	w1, #0x3                // =3
    361c: 12801cc2     	mov	w2, #-0xe7              // =-231
    3620: 52800803     	mov	w3, #0x40               // =64
    3624: 94000000     	bl	0x3624 <aw8693x_interrupt_setup+0x5c>
		0000000000003624:  R_AARCH64_CALL26	i2c_w_bits
    3628: d5384108     	mrs	x8, SP_EL0
    362c: f9438908     	ldr	x8, [x8, #0x710]
    3630: f94007e9     	ldr	x9, [sp, #0x8]
    3634: eb09011f     	cmp	x8, x9
    3638: 540000c1     	b.ne	0x3650 <aw8693x_interrupt_setup+0x88>
    363c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3640: f94013f3     	ldr	x19, [sp, #0x20]
    3644: 9100c3ff     	add	sp, sp, #0x30
    3648: d50323bf     	autiasp
    364c: d65f03c0     	ret
    3650: 94000000     	bl	0x3650 <aw8693x_interrupt_setup+0x88>
		0000000000003650:  R_AARCH64_CALL26	__stack_chk_fail
