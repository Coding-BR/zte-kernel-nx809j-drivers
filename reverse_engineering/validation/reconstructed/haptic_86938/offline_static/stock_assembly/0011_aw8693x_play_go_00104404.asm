
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015e4 <aw8693x_play_go>:
    15e4: d503233f     	paciasp
    15e8: d100c3ff     	sub	sp, sp, #0x30
    15ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    15f0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    15f4: 910043fd     	add	x29, sp, #0x10
    15f8: d5384108     	mrs	x8, SP_EL0
    15fc: aa0003f3     	mov	x19, x0
    1600: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85c
    1604: 91000000     	add	x0, x0, #0x0
		0000000000001604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85c
    1608: f9438908     	ldr	x8, [x8, #0x710]
    160c: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		000000000000160c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e
    1610: 91000063     	add	x3, x3, #0x0
		0000000000001610:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e
    1614: 72000024     	ands	w4, w1, #0x1
    1618: 52800029     	mov	w9, #0x1                // =1
    161c: f90007e8     	str	x8, [sp, #0x8]
    1620: 90000008     	adrp	x8, 0x1000 <aw8693x_stop+0xd4>
		0000000000001620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1624: 91000108     	add	x8, x8, #0x0
		0000000000001624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1628: aa0803e1     	mov	x1, x8
    162c: 52803ae2     	mov	w2, #0x1d7              // =471
    1630: 1a891534     	cinc	w20, w9, eq
    1634: 94000000     	bl	0x1634 <aw8693x_play_go+0x50>
		0000000000001634:  R_AARCH64_CALL26	_printk
    1638: 910013e2     	add	x2, sp, #0x4
    163c: aa1303e0     	mov	x0, x19
    1640: 52800121     	mov	w1, #0x9                // =9
    1644: 52800023     	mov	w3, #0x1                // =1
    1648: 390013f4     	strb	w20, [sp, #0x4]
    164c: 94000000     	bl	0x164c <aw8693x_play_go+0x68>
		000000000000164c:  R_AARCH64_CALL26	i2c_w_bytes
    1650: d5384108     	mrs	x8, SP_EL0
    1654: f9438908     	ldr	x8, [x8, #0x710]
    1658: f94007e9     	ldr	x9, [sp, #0x8]
    165c: eb09011f     	cmp	x8, x9
    1660: 540000c1     	b.ne	0x1678 <aw8693x_play_go+0x94>
    1664: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1668: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    166c: 9100c3ff     	add	sp, sp, #0x30
    1670: d50323bf     	autiasp
    1674: d65f03c0     	ret
    1678: 94000000     	bl	0x1678 <aw8693x_play_go+0x94>
		0000000000001678:  R_AARCH64_CALL26	__stack_chk_fail
