
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000579c <loop_store>:
    579c: d503233f     	paciasp
    57a0: d100c3ff     	sub	sp, sp, #0x30
    57a4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    57a8: a9024ff4     	stp	x20, x19, [sp, #0x20]
    57ac: 910043fd     	add	x29, sp, #0x10
    57b0: d5384109     	mrs	x9, SP_EL0
    57b4: aa0203e8     	mov	x8, x2
    57b8: aa0303f3     	mov	x19, x3
    57bc: f9438929     	ldr	x9, [x9, #0x710]
    57c0: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000057c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x901
    57c4: 91000021     	add	x1, x1, #0x0
		00000000000057c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x901
    57c8: 910003e2     	mov	x2, sp
    57cc: f90007e9     	str	x9, [sp, #0x8]
    57d0: 910003e9     	mov	x9, sp
    57d4: f9404c14     	ldr	x20, [x0, #0x98]
    57d8: b27e0123     	orr	x3, x9, #0x4
    57dc: aa0803e0     	mov	x0, x8
    57e0: f90003ff     	str	xzr, [sp]
    57e4: 94000000     	bl	0x57e4 <loop_store+0x48>
		00000000000057e4:  R_AARCH64_CALL26	sscanf
    57e8: 7100081f     	cmp	w0, #0x2
    57ec: 54000180     	b.eq	0x581c <loop_store+0x80>
    57f0: d5384108     	mrs	x8, SP_EL0
    57f4: f9438908     	ldr	x8, [x8, #0x710]
    57f8: f94007e9     	ldr	x9, [sp, #0x8]
    57fc: eb09011f     	cmp	x8, x9
    5800: 540004a1     	b.ne	0x5894 <loop_store+0xf8>
    5804: aa1303e0     	mov	x0, x19
    5808: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    580c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5810: 9100c3ff     	add	sp, sp, #0x30
    5814: d50323bf     	autiasp
    5818: d65f03c0     	ret
    581c: 294017e4     	ldp	w4, w5, [sp]
    5820: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005820:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x416
    5824: 91000000     	add	x0, x0, #0x0
		0000000000005824:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x416
    5828: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    582c: 91000021     	add	x1, x1, #0x0
		000000000000582c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5830: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f4
    5834: 91000063     	add	x3, x3, #0x0
		0000000000005834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f4
    5838: 52813ea2     	mov	w2, #0x9f5              // =2549
    583c: 94000000     	bl	0x583c <loop_store+0xa0>
		000000000000583c:  R_AARCH64_CALL26	_printk
    5840: 91092280     	add	x0, x20, #0x248
    5844: 94000000     	bl	0x5844 <loop_store+0xa8>
		0000000000005844:  R_AARCH64_CALL26	mutex_lock
    5848: b94003e1     	ldr	w1, [sp]
    584c: 71001c3f     	cmp	w1, #0x7
    5850: 54000248     	b.hi	0x5898 <loop_store+0xfc>
    5854: b94007e2     	ldr	w2, [sp, #0x4]
    5858: 8b010288     	add	x8, x20, x1
    585c: d102a280     	sub	x0, x20, #0xa8
    5860: 3817e102     	sturb	w2, [x8, #-0x82]
    5864: f9429288     	ldr	x8, [x20, #0x520]
    5868: f9406508     	ldr	x8, [x8, #0xc8]
    586c: b85fc110     	ldur	w16, [x8, #-0x4]
    5870: 728fccb1     	movk	w17, #0x7e65
    5874: 72af70f1     	movk	w17, #0x7b87, lsl #16
    5878: 6b11021f     	cmp	w16, w17
    587c: 54000040     	b.eq	0x5884 <loop_store+0xe8>
    5880: d4304500     	brk	#0x8228
    5884: d63f0100     	blr	x8
    5888: 91092280     	add	x0, x20, #0x248
    588c: 94000000     	bl	0x588c <loop_store+0xf0>
		000000000000588c:  R_AARCH64_CALL26	mutex_unlock
    5890: 17ffffd8     	b	0x57f0 <loop_store+0x54>
    5894: 94000000     	bl	0x5894 <loop_store+0xf8>
		0000000000005894:  R_AARCH64_CALL26	__stack_chk_fail
    5898: d42aa240     	brk	#0x5512
