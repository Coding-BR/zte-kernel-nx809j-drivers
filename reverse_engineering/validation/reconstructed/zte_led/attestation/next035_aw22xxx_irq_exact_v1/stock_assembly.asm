
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000013a0 <aw22xxx_irq>:
    13a0: d503233f     	paciasp
    13a4: d100c3ff     	sub	sp, sp, #0x30
    13a8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    13ac: a9024ff4     	stp	x20, x19, [sp, #0x20]
    13b0: 910043fd     	add	x29, sp, #0x10
    13b4: d5384108     	mrs	x8, SP_EL0
    13b8: 90000014     	adrp	x20, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000013b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1338
    13bc: 91000294     	add	x20, x20, #0x0
		00000000000013bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1338
    13c0: f9438908     	ldr	x8, [x8, #0x710]
    13c4: aa0103f3     	mov	x19, x1
    13c8: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000013c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    13cc: 91000000     	add	x0, x0, #0x0
		00000000000013cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    13d0: aa1403e1     	mov	x1, x20
    13d4: f90007e8     	str	x8, [sp, #0x8]
    13d8: 390013ff     	strb	wzr, [sp, #0x4]
    13dc: 94000000     	bl	0x13dc <aw22xxx_irq+0x3c>
		00000000000013dc:  R_AARCH64_CALL26	_printk
    13e0: 910013e2     	add	x2, sp, #0x4
    13e4: aa1303e0     	mov	x0, x19
    13e8: 52800141     	mov	w1, #0xa                // =10
    13ec: 97fffc58     	bl	0x54c <aw22xxx_i2c_read>
    13f0: 394013e2     	ldrb	w2, [sp, #0x4]
    13f4: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000013f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x387
    13f8: 91000000     	add	x0, x0, #0x0
		00000000000013f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x387
    13fc: aa1403e1     	mov	x1, x20
    1400: 94000000     	bl	0x1400 <aw22xxx_irq+0x60>
		0000000000001400:  R_AARCH64_CALL26	_printk
    1404: 394013e8     	ldrb	w8, [sp, #0x4]
    1408: 362002c8     	tbz	w8, #0x4, 0x1460 <aw22xxx_irq+0xc0>
    140c: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000140c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1410: 91094262     	add	x2, x19, #0x250
    1414: 52800400     	mov	w0, #0x20               // =32
    1418: f9400101     	ldr	x1, [x8]
		0000000000001418:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    141c: 94000000     	bl	0x141c <aw22xxx_irq+0x7c>
		000000000000141c:  R_AARCH64_CALL26	queue_work_on
    1420: b942fa63     	ldr	w3, [x19, #0x2f8]
    1424: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001424:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c8
    1428: 91000000     	add	x0, x0, #0x0
		0000000000001428:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c8
    142c: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000142c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1338
    1430: 91000021     	add	x1, x1, #0x0
		0000000000001430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1338
    1434: 5280c4a2     	mov	w2, #0x625              // =1573
    1438: 94000000     	bl	0x1438 <aw22xxx_irq+0x98>
		0000000000001438:  R_AARCH64_CALL26	_printk
    143c: f941aa60     	ldr	x0, [x19, #0x350]
    1440: b942fa62     	ldr	w2, [x19, #0x2f8]
    1444: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001444:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e3
    1448: 91000021     	add	x1, x1, #0x0
		0000000000001448:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e3
    144c: 94000000     	bl	0x144c <aw22xxx_irq+0xac>
		000000000000144c:  R_AARCH64_CALL26	zlog_client_record
    1450: f941aa60     	ldr	x0, [x19, #0x350]
    1454: 52804b21     	mov	w1, #0x259              // =601
    1458: 72a00801     	movk	w1, #0x40, lsl #16
    145c: 94000000     	bl	0x145c <aw22xxx_irq+0xbc>
		000000000000145c:  R_AARCH64_CALL26	zlog_client_notify
    1460: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1423
    1464: 91000000     	add	x0, x0, #0x0
		0000000000001464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1423
    1468: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1338
    146c: 91000021     	add	x1, x1, #0x0
		000000000000146c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1338
    1470: 94000000     	bl	0x1470 <aw22xxx_irq+0xd0>
		0000000000001470:  R_AARCH64_CALL26	_printk
    1474: d5384108     	mrs	x8, SP_EL0
    1478: f9438908     	ldr	x8, [x8, #0x710]
    147c: f94007e9     	ldr	x9, [sp, #0x8]
    1480: eb09011f     	cmp	x8, x9
    1484: 540000e1     	b.ne	0x14a0 <aw22xxx_irq+0x100>
    1488: 52800020     	mov	w0, #0x1                // =1
    148c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1490: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1494: 9100c3ff     	add	sp, sp, #0x30
    1498: d50323bf     	autiasp
    149c: d65f03c0     	ret
    14a0: 94000000     	bl	0x14a0 <aw22xxx_irq+0x100>
		00000000000014a0:  R_AARCH64_CALL26	__stack_chk_fail
