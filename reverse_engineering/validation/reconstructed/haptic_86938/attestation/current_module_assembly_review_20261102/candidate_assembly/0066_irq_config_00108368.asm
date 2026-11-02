
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008514 <irq_config>:
    8514: d503233f     	paciasp
    8518: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    851c: a9014ff4     	stp	x20, x19, [sp, #0x10]
    8520: 910003fd     	mov	x29, sp
    8524: b9405028     	ldr	w8, [x1, #0x50]
    8528: aa0103f3     	mov	x19, x1
    852c: aa0003f4     	mov	x20, x0
    8530: 37f803e8     	tbnz	w8, #0x1f, 0x85ac <irq_config+0x98>
    8534: 39405668     	ldrb	w8, [x19, #0x15]
    8538: 370003a8     	tbnz	w8, #0x0, 0x85ac <irq_config+0x98>
    853c: f942e668     	ldr	x8, [x19, #0x5c8]
    8540: aa1303e0     	mov	x0, x19
    8544: f9408508     	ldr	x8, [x8, #0x108]
    8548: b85fc110     	ldur	w16, [x8, #-0x4]
    854c: 72810611     	movk	w17, #0x830
    8550: 72b08f51     	movk	w17, #0x847a, lsl #16
    8554: 6b11021f     	cmp	w16, w17
    8558: 54000040     	b.eq	0x8560 <irq_config+0x4c>
    855c: d4304500     	brk	#0x8228
    8560: d63f0100     	blr	x8
    8564: b9405260     	ldr	w0, [x19, #0x50]
    8568: 94000000     	bl	0x8568 <irq_config+0x54>
		0000000000008568:  R_AARCH64_CALL26	gpio_to_desc
    856c: 94000000     	bl	0x856c <irq_config+0x58>
		000000000000856c:  R_AARCH64_CALL26	gpiod_to_irq
    8570: 2a0003e1     	mov	w1, w0
    8574: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		0000000000008574:  R_AARCH64_ADR_PREL_PG_HI21	irq_handle
    8578: 91000063     	add	x3, x3, #0x0
		0000000000008578:  R_AARCH64_ADD_ABS_LO12_NC	irq_handle
    857c: 90000005     	adrp	x5, 0x8000 <aw8693x_trig_init+0x15c>
		000000000000857c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3716
    8580: 910000a5     	add	x5, x5, #0x0
		0000000000008580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3716
    8584: aa1403e0     	mov	x0, x20
    8588: aa1f03e2     	mov	x2, xzr
    858c: 52840044     	mov	w4, #0x2002             // =8194
    8590: aa1303e6     	mov	x6, x19
    8594: 94000000     	bl	0x8594 <irq_config+0x80>
		0000000000008594:  R_AARCH64_CALL26	devm_request_threaded_irq
    8598: 350001c0     	cbnz	w0, 0x85d0 <irq_config+0xbc>
    859c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    85a0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    85a4: d50323bf     	autiasp
    85a8: d65f03c0     	ret
    85ac: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000085ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a76
    85b0: 91000021     	add	x1, x1, #0x0
		00000000000085b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a76
    85b4: aa1403e0     	mov	x0, x20
    85b8: 94000000     	bl	0x85b8 <irq_config+0xa4>
		00000000000085b8:  R_AARCH64_CALL26	_dev_info
    85bc: 39405668     	ldrb	w8, [x19, #0x15]
    85c0: 2a1f03e0     	mov	w0, wzr
    85c4: 32000108     	orr	w8, w8, #0x1
    85c8: 39005668     	strb	w8, [x19, #0x15]
    85cc: 17fffff4     	b	0x859c <irq_config+0x88>
    85d0: b9405268     	ldr	w8, [x19, #0x50]
    85d4: 2a0003f3     	mov	w19, w0
    85d8: 2a0803e0     	mov	w0, w8
    85dc: 94000000     	bl	0x85dc <irq_config+0xc8>
		00000000000085dc:  R_AARCH64_CALL26	gpio_to_desc
    85e0: 94000000     	bl	0x85e0 <irq_config+0xcc>
		00000000000085e0:  R_AARCH64_CALL26	gpiod_to_irq
    85e4: 2a0003e4     	mov	w4, w0
    85e8: 90000000     	adrp	x0, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000085e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4334
    85ec: 91000000     	add	x0, x0, #0x0
		00000000000085ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4334
    85f0: 90000001     	adrp	x1, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000085f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    85f4: 91000021     	add	x1, x1, #0x0
		00000000000085f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    85f8: 90000003     	adrp	x3, 0x8000 <aw8693x_trig_init+0x15c>
		00000000000085f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e0e
    85fc: 91000063     	add	x3, x3, #0x0
		00000000000085fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e0e
    8600: 5280d9c2     	mov	w2, #0x6ce              // =1742
    8604: 2a1303e5     	mov	w5, w19
    8608: 94000000     	bl	0x8608 <irq_config+0xf4>
		0000000000008608:  R_AARCH64_CALL26	_printk
    860c: 2a1303e0     	mov	w0, w19
    8610: 17ffffe3     	b	0x859c <irq_config+0x88>
