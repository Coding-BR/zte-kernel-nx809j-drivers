
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015a8 <aw8693x_check_qualify>:
    15a8: d503233f     	paciasp
    15ac: d10083ff     	sub	sp, sp, #0x20
    15b0: a9017bfd     	stp	x29, x30, [sp, #0x10]
    15b4: 910043fd     	add	x29, sp, #0x10
    15b8: d5384108     	mrs	x8, SP_EL0
    15bc: 910013e2     	add	x2, sp, #0x4
    15c0: 52800c81     	mov	w1, #0x64               // =100
    15c4: f9438908     	ldr	x8, [x8, #0x710]
    15c8: 52800023     	mov	w3, #0x1                // =1
    15cc: f90007e8     	str	x8, [sp, #0x8]
    15d0: 390013ff     	strb	wzr, [sp, #0x4]
    15d4: 94000000     	bl	0x15d4 <aw8693x_check_qualify+0x2c>
		00000000000015d4:  R_AARCH64_CALL26	i2c_r_bytes
    15d8: 39c013e8     	ldrsb	w8, [sp, #0x4]
    15dc: 37f80168     	tbnz	w8, #0x1f, 0x1608 <aw8693x_check_qualify+0x60>
    15e0: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000015e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x349
    15e4: 91000000     	add	x0, x0, #0x0
		00000000000015e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x349
    15e8: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000015e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    15ec: 91000021     	add	x1, x1, #0x0
		00000000000015ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    15f0: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		00000000000015f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x333
    15f4: 91000063     	add	x3, x3, #0x0
		00000000000015f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x333
    15f8: 528026c2     	mov	w2, #0x136              // =310
    15fc: 94000000     	bl	0x15fc <aw8693x_check_qualify+0x54>
		00000000000015fc:  R_AARCH64_CALL26	_printk
    1600: 12800420     	mov	w0, #-0x22              // =-34
    1604: 1400000a     	b	0x162c <aw8693x_check_qualify+0x84>
    1608: 90000000     	adrp	x0, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8
    160c: 91000000     	add	x0, x0, #0x0
		000000000000160c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8
    1610: 90000001     	adrp	x1, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001610:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    1614: 91000021     	add	x1, x1, #0x0
		0000000000001614:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    1618: 90000003     	adrp	x3, 0x1000 <aw8693x_set_bst_vol+0x18>
		0000000000001618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x333
    161c: 91000063     	add	x3, x3, #0x0
		000000000000161c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x333
    1620: 52802722     	mov	w2, #0x139              // =313
    1624: 94000000     	bl	0x1624 <aw8693x_check_qualify+0x7c>
		0000000000001624:  R_AARCH64_CALL26	_printk
    1628: 2a1f03e0     	mov	w0, wzr
    162c: d5384108     	mrs	x8, SP_EL0
    1630: f9438908     	ldr	x8, [x8, #0x710]
    1634: f94007e9     	ldr	x9, [sp, #0x8]
    1638: eb09011f     	cmp	x8, x9
    163c: 540000a1     	b.ne	0x1650 <aw8693x_check_qualify+0xa8>
    1640: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1644: 910083ff     	add	sp, sp, #0x20
    1648: d50323bf     	autiasp
    164c: d65f03c0     	ret
    1650: 94000000     	bl	0x1650 <aw8693x_check_qualify+0xa8>
		0000000000001650:  R_AARCH64_CALL26	__stack_chk_fail
