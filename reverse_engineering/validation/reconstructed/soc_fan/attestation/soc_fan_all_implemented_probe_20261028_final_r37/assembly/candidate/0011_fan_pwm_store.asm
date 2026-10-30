
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001444 <fan_pwm_store>:
    1444: d503233f     	paciasp
    1448: d10183ff     	sub	sp, sp, #0x60
    144c: a9037bfd     	stp	x29, x30, [sp, #0x30]
    1450: a90457f6     	stp	x22, x21, [sp, #0x40]
    1454: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1458: 9100c3fd     	add	x29, sp, #0x30
    145c: d5384108     	mrs	x8, SP_EL0
    1460: aa0203e0     	mov	x0, x2
    1464: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001464:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8bd
    1468: 91000021     	add	x1, x1, #0x0
		0000000000001468:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8bd
    146c: f9438908     	ldr	x8, [x8, #0x710]
    1470: 910033e2     	add	x2, sp, #0xc
    1474: aa0303f3     	mov	x19, x3
    1478: f81f83a8     	stur	x8, [x29, #-0x8]
    147c: b9000fff     	str	wzr, [sp, #0xc]
    1480: 94000000     	bl	0x1480 <fan_pwm_store+0x3c>
		0000000000001480:  R_AARCH64_CALL26	sscanf
    1484: b9400fe4     	ldr	w4, [sp, #0xc]
    1488: 7101949f     	cmp	w4, #0x65
    148c: 540005e2     	b.hs	0x1548 <fan_pwm_store+0x104>
    1490: 90000016     	adrp	x22, 0x1000 <fan_level_store+0x54>
		0000000000001490:  R_AARCH64_ADR_PREL_PG_HI21	chip
    1494: f94002c8     	ldr	x8, [x22]
		0000000000001494:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    1498: 91006100     	add	x0, x8, #0x18
    149c: 94000000     	bl	0x149c <fan_pwm_store+0x58>
		000000000000149c:  R_AARCH64_CALL26	mutex_lock
    14a0: f94002c8     	ldr	x8, [x22]
		00000000000014a0:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    14a4: 394033f4     	ldrb	w20, [sp, #0xc]
    14a8: 52803209     	mov	w9, #0x190              // =400
    14ac: 910043e2     	add	x2, sp, #0x10
    14b0: f9400508     	ldr	x8, [x8, #0x8]
    14b4: 9ba97e89     	umull	x9, w20, w9
    14b8: f9403501     	ldr	x1, [x8, #0x68]
    14bc: f9400c20     	ldr	x0, [x1, #0x18]
    14c0: f9402028     	ldr	x8, [x1, #0x40]
    14c4: f941c80a     	ldr	x10, [x0, #0x390]
    14c8: f90013e8     	str	x8, [sp, #0x20]
    14cc: 52800028     	mov	w8, #0x1                // =1
    14d0: 390093e8     	strb	w8, [sp, #0x24]
    14d4: 52938808     	mov	w8, #0x9c40             // =40000
    14d8: f9400d4a     	ldr	x10, [x10, #0x18]
    14dc: a90127e8     	stp	x8, x9, [sp, #0x10]
    14e0: b85fc150     	ldur	w16, [x10, #-0x4]
    14e4: 7292fa11     	movk	w17, #0x97d0
    14e8: 72bbba11     	movk	w17, #0xddd0, lsl #16
    14ec: 6b11021f     	cmp	w16, w17
    14f0: 54000040     	b.eq	0x14f8 <fan_pwm_store+0xb4>
    14f4: d4304540     	brk	#0x822a
    14f8: d63f0140     	blr	x10
    14fc: 2a0003f5     	mov	w21, w0
    1500: 37f803c0     	tbnz	w0, #0x1f, 0x1578 <fan_pwm_store+0x134>
    1504: 34000515     	cbz	w21, 0x15a4 <fan_pwm_store+0x160>
    1508: f94002c8     	ldr	x8, [x22]
		0000000000001508:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    150c: 91006100     	add	x0, x8, #0x18
    1510: 94000000     	bl	0x1510 <fan_pwm_store+0xcc>
		0000000000001510:  R_AARCH64_CALL26	mutex_unlock
    1514: 93407eb3     	sxtw	x19, w21
    1518: d5384108     	mrs	x8, SP_EL0
    151c: f9438908     	ldr	x8, [x8, #0x710]
    1520: f85f83a9     	ldur	x9, [x29, #-0x8]
    1524: eb09011f     	cmp	x8, x9
    1528: 540005a1     	b.ne	0x15dc <fan_pwm_store+0x198>
    152c: aa1303e0     	mov	x0, x19
    1530: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1534: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1538: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    153c: 910183ff     	add	sp, sp, #0x60
    1540: d50323bf     	autiasp
    1544: d65f03c0     	ret
    1548: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		0000000000001548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c9
    154c: 91000000     	add	x0, x0, #0x0
		000000000000154c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c9
    1550: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    1554: 91000021     	add	x1, x1, #0x0
		0000000000001554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    1558: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x852
    155c: 91000042     	add	x2, x2, #0x0
		000000000000155c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x852
    1560: 52803023     	mov	w3, #0x181              // =385
    1564: 2a1f03e5     	mov	w5, wzr
    1568: 52800c86     	mov	w6, #0x64               // =100
    156c: 94000000     	bl	0x156c <fan_pwm_store+0x128>
		000000000000156c:  R_AARCH64_CALL26	_printk
    1570: 928002b3     	mov	x19, #-0x16             // =-22
    1574: 17ffffe9     	b	0x1518 <fan_pwm_store+0xd4>
    1578: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		0000000000001578:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x261
    157c: 91000000     	add	x0, x0, #0x0
		000000000000157c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x261
    1580: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		0000000000001580:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    1584: 91000021     	add	x1, x1, #0x0
		0000000000001584:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    1588: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		0000000000001588:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x665
    158c: 91000042     	add	x2, x2, #0x0
		000000000000158c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x665
    1590: 52801aa3     	mov	w3, #0xd5               // =213
    1594: 2a1403e4     	mov	w4, w20
    1598: 2a1503e5     	mov	w5, w21
    159c: 94000000     	bl	0x159c <fan_pwm_store+0x158>
		000000000000159c:  R_AARCH64_CALL26	_printk
    15a0: 17ffffda     	b	0x1508 <fan_pwm_store+0xc4>
    15a4: f94002c8     	ldr	x8, [x22]
		00000000000015a4:  R_AARCH64_LDST64_ABS_LO12_NC	chip
    15a8: 91006100     	add	x0, x8, #0x18
    15ac: 94000000     	bl	0x15ac <fan_pwm_store+0x168>
		00000000000015ac:  R_AARCH64_CALL26	mutex_unlock
    15b0: b9400fe4     	ldr	w4, [sp, #0xc]
    15b4: 90000000     	adrp	x0, 0x1000 <fan_level_store+0x54>
		00000000000015b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ef
    15b8: 91000000     	add	x0, x0, #0x0
		00000000000015b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ef
    15bc: 90000001     	adrp	x1, 0x1000 <fan_level_store+0x54>
		00000000000015bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c1
    15c0: 91000021     	add	x1, x1, #0x0
		00000000000015c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c1
    15c4: 90000002     	adrp	x2, 0x1000 <fan_level_store+0x54>
		00000000000015c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x852
    15c8: 91000042     	add	x2, x2, #0x0
		00000000000015c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x852
    15cc: 52803183     	mov	w3, #0x18c              // =396
    15d0: 2a1f03e5     	mov	w5, wzr
    15d4: 94000000     	bl	0x15d4 <fan_pwm_store+0x190>
		00000000000015d4:  R_AARCH64_CALL26	_printk
    15d8: 17ffffd0     	b	0x1518 <fan_pwm_store+0xd4>
    15dc: 94000000     	bl	0x15dc <fan_pwm_store+0x198>
		00000000000015dc:  R_AARCH64_CALL26	__stack_chk_fail
