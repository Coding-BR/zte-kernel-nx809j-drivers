
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000057cc <loop_store>:
    57cc: d503233f     	paciasp
    57d0: d100c3ff     	sub	sp, sp, #0x30
    57d4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    57d8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    57dc: 910043fd     	add	x29, sp, #0x10
    57e0: d5384109     	mrs	x9, SP_EL0
    57e4: aa0203e8     	mov	x8, x2
    57e8: aa0303f3     	mov	x19, x3
    57ec: f9438929     	ldr	x9, [x9, #0x710]
    57f0: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000057f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf2
    57f4: 91000021     	add	x1, x1, #0x0
		00000000000057f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf2
    57f8: 910003e2     	mov	x2, sp
    57fc: f90007e9     	str	x9, [sp, #0x8]
    5800: 910003e9     	mov	x9, sp
    5804: f9404c14     	ldr	x20, [x0, #0x98]
    5808: b27e0123     	orr	x3, x9, #0x4
    580c: aa0803e0     	mov	x0, x8
    5810: f90003ff     	str	xzr, [sp]
    5814: 94000000     	bl	0x5814 <loop_store+0x48>
		0000000000005814:  R_AARCH64_CALL26	sscanf
    5818: 7100081f     	cmp	w0, #0x2
    581c: 54000180     	b.eq	0x584c <loop_store+0x80>
    5820: d5384108     	mrs	x8, SP_EL0
    5824: f9438908     	ldr	x8, [x8, #0x710]
    5828: f94007e9     	ldr	x9, [sp, #0x8]
    582c: eb09011f     	cmp	x8, x9
    5830: 540004a1     	b.ne	0x58c4 <loop_store+0xf8>
    5834: aa1303e0     	mov	x0, x19
    5838: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    583c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5840: 9100c3ff     	add	sp, sp, #0x30
    5844: d50323bf     	autiasp
    5848: d65f03c0     	ret
    584c: 294017e4     	ldp	w4, w5, [sp]
    5850: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f6
    5854: 91000000     	add	x0, x0, #0x0
		0000000000005854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f6
    5858: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005858:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    585c: 91000021     	add	x1, x1, #0x0
		000000000000585c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5860: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee5
    5864: 91000063     	add	x3, x3, #0x0
		0000000000005864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee5
    5868: 52813ea2     	mov	w2, #0x9f5              // =2549
    586c: 94000000     	bl	0x586c <loop_store+0xa0>
		000000000000586c:  R_AARCH64_CALL26	_printk
    5870: 91092280     	add	x0, x20, #0x248
    5874: 94000000     	bl	0x5874 <loop_store+0xa8>
		0000000000005874:  R_AARCH64_CALL26	mutex_lock
    5878: b94003e1     	ldr	w1, [sp]
    587c: 71001c3f     	cmp	w1, #0x7
    5880: 54000248     	b.hi	0x58c8 <loop_store+0xfc>
    5884: b94007e2     	ldr	w2, [sp, #0x4]
    5888: 8b010288     	add	x8, x20, x1
    588c: d102a280     	sub	x0, x20, #0xa8
    5890: 3817e102     	sturb	w2, [x8, #-0x82]
    5894: f9429288     	ldr	x8, [x20, #0x520]
    5898: f9406508     	ldr	x8, [x8, #0xc8]
    589c: b85fc110     	ldur	w16, [x8, #-0x4]
    58a0: 728fccb1     	movk	w17, #0x7e65
    58a4: 72af70f1     	movk	w17, #0x7b87, lsl #16
    58a8: 6b11021f     	cmp	w16, w17
    58ac: 54000040     	b.eq	0x58b4 <loop_store+0xe8>
    58b0: d4304500     	brk	#0x8228
    58b4: d63f0100     	blr	x8
    58b8: 91092280     	add	x0, x20, #0x248
    58bc: 94000000     	bl	0x58bc <loop_store+0xf0>
		00000000000058bc:  R_AARCH64_CALL26	mutex_unlock
    58c0: 17ffffd8     	b	0x5820 <loop_store+0x54>
    58c4: 94000000     	bl	0x58c4 <loop_store+0xf8>
		00000000000058c4:  R_AARCH64_CALL26	__stack_chk_fail
    58c8: d42aa240     	brk	#0x5512
