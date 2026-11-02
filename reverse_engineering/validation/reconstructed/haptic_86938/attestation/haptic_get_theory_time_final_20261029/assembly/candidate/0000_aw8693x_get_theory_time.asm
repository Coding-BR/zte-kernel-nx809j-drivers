
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003728 <aw8693x_get_theory_time>:
    3728: d503233f     	paciasp
    372c: d100c3ff     	sub	sp, sp, #0x30
    3730: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3734: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3738: 910043fd     	add	x29, sp, #0x10
    373c: d5384108     	mrs	x8, SP_EL0
    3740: 910013e2     	add	x2, sp, #0x4
    3744: 528008c1     	mov	w1, #0x46               // =70
    3748: f9438908     	ldr	x8, [x8, #0x710]
    374c: 52800023     	mov	w3, #0x1                // =1
    3750: aa0003f3     	mov	x19, x0
    3754: f90007e8     	str	x8, [sp, #0x8]
    3758: 390013ff     	strb	wzr, [sp, #0x4]
    375c: 94000000     	bl	0x375c <aw8693x_get_theory_time+0x34>
		000000000000375c:  R_AARCH64_CALL26	i2c_r_bytes
    3760: 394013e8     	ldrb	w8, [sp, #0x4]
    3764: 121b0508     	and	w8, w8, #0x60
    3768: 7101011f     	cmp	w8, #0x40
    376c: 54000100     	b.eq	0x378c <aw8693x_get_theory_time+0x64>
    3770: 7100811f     	cmp	w8, #0x20
    3774: 54000080     	b.eq	0x3784 <aw8693x_get_theory_time+0x5c>
    3778: 35000168     	cbnz	w8, 0x37a4 <aw8693x_get_theory_time+0x7c>
    377c: 52800308     	mov	w8, #0x18               // =24
    3780: 14000004     	b	0x3790 <aw8693x_get_theory_time+0x68>
    3784: 52800608     	mov	w8, #0x30               // =48
    3788: 14000002     	b	0x3790 <aw8693x_get_theory_time+0x68>
    378c: 52800188     	mov	w8, #0xc                // =12
    3790: b9407a69     	ldr	w9, [x19, #0x78]
    3794: 52807d0a     	mov	w10, #0x3e8             // =1000
    3798: 1b0a7d29     	mul	w9, w9, w10
    379c: 1ac80934     	udiv	w20, w9, w8
    37a0: 14000002     	b	0x37a8 <aw8693x_get_theory_time+0x80>
    37a4: aa1f03f4     	mov	x20, xzr
    37a8: f9405264     	ldr	x4, [x19, #0xa0]
    37ac: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		00000000000037ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x937
    37b0: 91000000     	add	x0, x0, #0x0
		00000000000037b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x937
    37b4: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		00000000000037b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    37b8: 91000021     	add	x1, x1, #0x0
		00000000000037b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    37bc: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		00000000000037bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x373
    37c0: 91000063     	add	x3, x3, #0x0
		00000000000037c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x373
    37c4: 5280d402     	mov	w2, #0x6a0              // =1696
    37c8: aa1403e5     	mov	x5, x20
    37cc: 94000000     	bl	0x37cc <aw8693x_get_theory_time+0xa4>
		00000000000037cc:  R_AARCH64_CALL26	_printk
    37d0: d5384108     	mrs	x8, SP_EL0
    37d4: f9438908     	ldr	x8, [x8, #0x710]
    37d8: f94007e9     	ldr	x9, [sp, #0x8]
    37dc: eb09011f     	cmp	x8, x9
    37e0: 540000e1     	b.ne	0x37fc <aw8693x_get_theory_time+0xd4>
    37e4: aa1403e0     	mov	x0, x20
    37e8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    37ec: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    37f0: 9100c3ff     	add	sp, sp, #0x30
    37f4: d50323bf     	autiasp
    37f8: d65f03c0     	ret
    37fc: 94000000     	bl	0x37fc <aw8693x_get_theory_time+0xd4>
		00000000000037fc:  R_AARCH64_CALL26	__stack_chk_fail
