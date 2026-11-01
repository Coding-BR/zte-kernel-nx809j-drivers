
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005548 <irq_config>:
    5548: d503233f     	paciasp
    554c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    5550: a9014ff4     	stp	x20, x19, [sp, #0x10]
    5554: 910003fd     	mov	x29, sp
    5558: b9405028     	ldr	w8, [x1, #0x50]
    555c: aa0103f3     	mov	x19, x1
    5560: aa0003f4     	mov	x20, x0
    5564: 37f803e8     	tbnz	w8, #0x1f, 0x55e0 <irq_config+0x98>
    5568: 39405668     	ldrb	w8, [x19, #0x15]
    556c: 370003a8     	tbnz	w8, #0x0, 0x55e0 <irq_config+0x98>
    5570: f942e668     	ldr	x8, [x19, #0x5c8]
    5574: aa1303e0     	mov	x0, x19
    5578: f9408508     	ldr	x8, [x8, #0x108]
    557c: b85fc110     	ldur	w16, [x8, #-0x4]
    5580: 72810611     	movk	w17, #0x830
    5584: 72b08f51     	movk	w17, #0x847a, lsl #16
    5588: 6b11021f     	cmp	w16, w17
    558c: 54000040     	b.eq	0x5594 <irq_config+0x4c>
    5590: d4304500     	brk	#0x8228
    5594: d63f0100     	blr	x8
    5598: b9405260     	ldr	w0, [x19, #0x50]
    559c: 94000000     	bl	0x559c <irq_config+0x54>
		000000000000559c:  R_AARCH64_CALL26	gpio_to_desc
    55a0: 94000000     	bl	0x55a0 <irq_config+0x58>
		00000000000055a0:  R_AARCH64_CALL26	gpiod_to_irq
    55a4: 2a0003e1     	mov	w1, w0
    55a8: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		00000000000055a8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x6270
    55ac: 91000063     	add	x3, x3, #0x0
		00000000000055ac:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x6270
    55b0: 90000005     	adrp	x5, 0x5000 <aw_i2c_probe+0xa60>
		00000000000055b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b19
    55b4: 910000a5     	add	x5, x5, #0x0
		00000000000055b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b19
    55b8: aa1403e0     	mov	x0, x20
    55bc: aa1f03e2     	mov	x2, xzr
    55c0: 52840044     	mov	w4, #0x2002             // =8194
    55c4: aa1303e6     	mov	x6, x19
    55c8: 94000000     	bl	0x55c8 <irq_config+0x80>
		00000000000055c8:  R_AARCH64_CALL26	devm_request_threaded_irq
    55cc: 350001c0     	cbnz	w0, 0x5604 <irq_config+0xbc>
    55d0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    55d4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    55d8: d50323bf     	autiasp
    55dc: d65f03c0     	ret
    55e0: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		00000000000055e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6a
    55e4: 91000021     	add	x1, x1, #0x0
		00000000000055e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6a
    55e8: aa1403e0     	mov	x0, x20
    55ec: 94000000     	bl	0x55ec <irq_config+0xa4>
		00000000000055ec:  R_AARCH64_CALL26	_dev_info
    55f0: 39405668     	ldrb	w8, [x19, #0x15]
    55f4: 2a1f03e0     	mov	w0, wzr
    55f8: 32000108     	orr	w8, w8, #0x1
    55fc: 39005668     	strb	w8, [x19, #0x15]
    5600: 17fffff4     	b	0x55d0 <irq_config+0x88>
    5604: b9405268     	ldr	w8, [x19, #0x50]
    5608: 2a0003f3     	mov	w19, w0
    560c: 2a0803e0     	mov	w0, w8
    5610: 94000000     	bl	0x5610 <irq_config+0xc8>
		0000000000005610:  R_AARCH64_CALL26	gpio_to_desc
    5614: 94000000     	bl	0x5614 <irq_config+0xcc>
		0000000000005614:  R_AARCH64_CALL26	gpiod_to_irq
    5618: 2a0003e4     	mov	w4, w0
    561c: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		000000000000561c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2702
    5620: 91000000     	add	x0, x0, #0x0
		0000000000005620:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2702
    5624: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5628: 91000021     	add	x1, x1, #0x0
		0000000000005628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    562c: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		000000000000562c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x283
    5630: 91000063     	add	x3, x3, #0x0
		0000000000005630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x283
    5634: 5280d9c2     	mov	w2, #0x6ce              // =1742
    5638: 2a1303e5     	mov	w5, w19
    563c: 94000000     	bl	0x563c <irq_config+0xf4>
		000000000000563c:  R_AARCH64_CALL26	_printk
    5640: 2a1303e0     	mov	w0, w19
    5644: 17ffffe3     	b	0x55d0 <irq_config+0x88>
