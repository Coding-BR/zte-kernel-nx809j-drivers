
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008544 <irq_config>:
    8544: d503233f     	paciasp
    8548: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    854c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8550: 910003fd     	mov	x29, sp
    8554: b9405028     	ldr	w8, [x1, #0x50]
    8558: aa0103f3     	mov	x19, x1
    855c: aa0003f4     	mov	x20, x0
    8560: 37f803e8     	tbnz	w8, #0x1f, 0x85dc <irq_config+0x98>
    8564: 39405668     	ldrb	w8, [x19, #0x15]
    8568: 370003a8     	tbnz	w8, #0x0, 0x85dc <irq_config+0x98>
    856c: f942e668     	ldr	x8, [x19, #0x5c8]
    8570: aa1303e0     	mov	x0, x19
    8574: f9408508     	ldr	x8, [x8, #0x108]
    8578: b85fc110     	ldur	w16, [x8, #-0x4]
    857c: 72810611     	movk	w17, #0x830
    8580: 72b08f51     	movk	w17, #0x847a, lsl #16
    8584: 6b11021f     	cmp	w16, w17
    8588: 54000040     	b.eq	0x8590 <irq_config+0x4c>
    858c: d4304500     	brk	#0x8228
    8590: d63f0100     	blr	x8
    8594: b9405260     	ldr	w0, [x19, #0x50]
    8598: 94000000     	bl	0x8598 <irq_config+0x54>
		0000000000008598:  R_AARCH64_CALL26	gpio_to_desc
    859c: 94000000     	bl	0x859c <irq_config+0x58>
		000000000000859c:  R_AARCH64_CALL26	gpiod_to_irq
    85a0: 2a0003e1     	mov	w1, w0
    85a4: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000085a4:  R_AARCH64_ADR_PREL_PG_HI21	irq_handle
    85a8: 91000063     	add	x3, x3, #0x0
		00000000000085a8:  R_AARCH64_ADD_ABS_LO12_NC	irq_handle
    85ac: 90000005     	adrp	x5, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000085ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36a2
    85b0: 910000a5     	add	x5, x5, #0x0
		00000000000085b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36a2
    85b4: aa1403e0     	mov	x0, x20
    85b8: aa1f03e2     	mov	x2, xzr
    85bc: 52840044     	mov	w4, #0x2002             // =8194
    85c0: aa1303e6     	mov	x6, x19
    85c4: 94000000     	bl	0x85c4 <irq_config+0x80>
		00000000000085c4:  R_AARCH64_CALL26	devm_request_threaded_irq
    85c8: 350001c0     	cbnz	w0, 0x8600 <irq_config+0xbc>
    85cc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    85d0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    85d4: d50323bf     	autiasp
    85d8: d65f03c0     	ret
    85dc: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		00000000000085dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a02
    85e0: 91000021     	add	x1, x1, #0x0
		00000000000085e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a02
    85e4: aa1403e0     	mov	x0, x20
    85e8: 94000000     	bl	0x85e8 <irq_config+0xa4>
		00000000000085e8:  R_AARCH64_CALL26	_dev_info
    85ec: 39405668     	ldrb	w8, [x19, #0x15]
    85f0: 2a1f03e0     	mov	w0, wzr
    85f4: 32000108     	orr	w8, w8, #0x1
    85f8: 39005668     	strb	w8, [x19, #0x15]
    85fc: 17fffff4     	b	0x85cc <irq_config+0x88>
    8600: b9405268     	ldr	w8, [x19, #0x50]
    8604: 2a0003f3     	mov	w19, w0
    8608: 2a0803e0     	mov	w0, w8
    860c: 94000000     	bl	0x860c <irq_config+0xc8>
		000000000000860c:  R_AARCH64_CALL26	gpio_to_desc
    8610: 94000000     	bl	0x8610 <irq_config+0xcc>
		0000000000008610:  R_AARCH64_CALL26	gpiod_to_irq
    8614: 2a0003e4     	mov	w4, w0
    8618: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008618:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42c0
    861c: 91000000     	add	x0, x0, #0x0
		000000000000861c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42c0
    8620: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    8624: 91000021     	add	x1, x1, #0x0
		0000000000008624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    8628: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x12c>
		0000000000008628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d9a
    862c: 91000063     	add	x3, x3, #0x0
		000000000000862c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d9a
    8630: 5280d9c2     	mov	w2, #0x6ce              // =1742
    8634: 2a1303e5     	mov	w5, w19
    8638: 94000000     	bl	0x8638 <irq_config+0xf4>
		0000000000008638:  R_AARCH64_CALL26	_printk
    863c: 2a1303e0     	mov	w0, w19
    8640: 17ffffe3     	b	0x85cc <irq_config+0x88>
