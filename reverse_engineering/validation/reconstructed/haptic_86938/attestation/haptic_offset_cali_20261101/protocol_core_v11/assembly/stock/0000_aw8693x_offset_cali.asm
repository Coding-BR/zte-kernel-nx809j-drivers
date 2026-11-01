
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001430 <aw8693x_offset_cali>:
    1430: d503233f     	paciasp
    1434: d100c3ff     	sub	sp, sp, #0x30
    1438: a9017bfd     	stp	x29, x30, [sp, #0x10]
    143c: f90013f3     	str	x19, [sp, #0x20]
    1440: 910043fd     	add	x29, sp, #0x10
    1444: d5384108     	mrs	x8, SP_EL0
    1448: 528009c1     	mov	w1, #0x4e               // =78
    144c: 128000e2     	mov	w2, #-0x8               // =-8
    1450: f9438908     	ldr	x8, [x8, #0x710]
    1454: aa0003f3     	mov	x19, x0
    1458: f90007e8     	str	x8, [sp, #0x8]
    145c: 39525403     	ldrb	w3, [x0, #0x495]
    1460: 39001bff     	strb	wzr, [sp, #0x6]
    1464: 79000bff     	strh	wzr, [sp, #0x4]
    1468: 94000000     	bl	0x1468 <aw8693x_offset_cali+0x38>
		0000000000001468:  R_AARCH64_CALL26	i2c_w_bits
    146c: aa1303e0     	mov	x0, x19
    1470: 528008a1     	mov	w1, #0x45               // =69
    1474: 12800082     	mov	w2, #-0x5               // =-5
    1478: 52800083     	mov	w3, #0x4                // =4
    147c: 94000000     	bl	0x147c <aw8693x_offset_cali+0x4c>
		000000000000147c:  R_AARCH64_CALL26	i2c_w_bits
    1480: 52803e80     	mov	w0, #0x1f4              // =500
    1484: 52804b01     	mov	w1, #0x258              // =600
    1488: 52800042     	mov	w2, #0x2                // =2
    148c: 94000000     	bl	0x148c <aw8693x_offset_cali+0x5c>
		000000000000148c:  R_AARCH64_CALL26	usleep_range_state
    1490: aa1303e0     	mov	x0, x19
    1494: 528009c1     	mov	w1, #0x4e               // =78
    1498: 12800f02     	mov	w2, #-0x79              // =-121
    149c: 52800403     	mov	w3, #0x20               // =32
    14a0: 94000000     	bl	0x14a0 <aw8693x_offset_cali+0x70>
		00000000000014a0:  R_AARCH64_CALL26	i2c_w_bits
    14a4: aa1303e0     	mov	x0, x19
    14a8: 528009a1     	mov	w1, #0x4d               // =77
    14ac: 12800062     	mov	w2, #-0x4               // =-4
    14b0: 52800023     	mov	w3, #0x1                // =1
    14b4: 94000000     	bl	0x14b4 <aw8693x_offset_cali+0x84>
		00000000000014b4:  R_AARCH64_CALL26	i2c_w_bits
    14b8: 52817700     	mov	w0, #0xbb8              // =3000
    14bc: 5281b581     	mov	w1, #0xdac              // =3500
    14c0: 52800042     	mov	w2, #0x2                // =2
    14c4: 94000000     	bl	0x14c4 <aw8693x_offset_cali+0x94>
		00000000000014c4:  R_AARCH64_CALL26	usleep_range_state
    14c8: aa1303e0     	mov	x0, x19
    14cc: 528009a1     	mov	w1, #0x4d               // =77
    14d0: 12800062     	mov	w2, #-0x4               // =-4
    14d4: 2a1f03e3     	mov	w3, wzr
    14d8: 94000000     	bl	0x14d8 <aw8693x_offset_cali+0xa8>
		00000000000014d8:  R_AARCH64_CALL26	i2c_w_bits
    14dc: 910013e2     	add	x2, sp, #0x4
    14e0: aa1303e0     	mov	x0, x19
    14e4: 528009e1     	mov	w1, #0x4f               // =79
    14e8: 52800043     	mov	w3, #0x2                // =2
    14ec: 94000000     	bl	0x14ec <aw8693x_offset_cali+0xbc>
		00000000000014ec:  R_AARCH64_CALL26	i2c_r_bytes
    14f0: aa1303e0     	mov	x0, x19
    14f4: 528008a1     	mov	w1, #0x45               // =69
    14f8: 12800082     	mov	w2, #-0x5               // =-5
    14fc: 2a1f03e3     	mov	w3, wzr
    1500: 94000000     	bl	0x1500 <aw8693x_offset_cali+0xd0>
		0000000000001500:  R_AARCH64_CALL26	i2c_w_bits
    1504: 39525668     	ldrb	w8, [x19, #0x495]
    1508: f100211f     	cmp	x8, #0x8
    150c: 540000a2     	b.hs	0x1520 <aw8693x_offset_cali+0xf0>
    1510: 90000009     	adrp	x9, 0x1000 <aw8693x_stop+0xd4>
		0000000000001510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.cst32
    1514: 91000129     	add	x9, x9, #0x0
		0000000000001514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.cst32
    1518: b8687928     	ldr	w8, [x9, x8, lsl #2]
    151c: 1400000a     	b	0x1544 <aw8693x_offset_cali+0x114>
    1520: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001520:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130a
    1524: 91000000     	add	x0, x0, #0x0
		0000000000001524:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130a
    1528: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    152c: 91000021     	add	x1, x1, #0x0
		000000000000152c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    1530: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe5c
    1534: 91000063     	add	x3, x3, #0x0
		0000000000001534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe5c
    1538: 5280c122     	mov	w2, #0x609              // =1545
    153c: 94000000     	bl	0x153c <aw8693x_offset_cali+0x10c>
		000000000000153c:  R_AARCH64_CALL26	_printk
    1540: 2a1f03e8     	mov	w8, wzr
    1544: 394013e9     	ldrb	w9, [sp, #0x4]
    1548: 394017ea     	ldrb	w10, [sp, #0x5]
    154c: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		000000000000154c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28bc
    1550: 91000000     	add	x0, x0, #0x0
		0000000000001550:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28bc
    1554: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		0000000000001554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    1558: 91000021     	add	x1, x1, #0x0
		0000000000001558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    155c: 3318052a     	bfi	w10, w9, #8, #2
    1560: 52813109     	mov	w9, #0x988              // =2440
    1564: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe5c
    1568: 91000063     	add	x3, x3, #0x0
		0000000000001568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe5c
    156c: 5280c1c2     	mov	w2, #0x60e              // =1550
    1570: 1b097d49     	mul	w9, w10, w9
    1574: 5144c529     	sub	w9, w9, #0x131, lsl #12 // =0x131000
    1578: 1ac80d33     	sdiv	w19, w9, w8
    157c: 2a1303e4     	mov	w4, w19
    1580: 94000000     	bl	0x1580 <aw8693x_offset_cali+0x150>
		0000000000001580:  R_AARCH64_CALL26	_printk
    1584: 51004268     	sub	w8, w19, #0x10
    1588: 3100811f     	cmn	w8, #0x20
    158c: 54000169     	b.ls	0x15b8 <aw8693x_offset_cali+0x188>
    1590: d5384108     	mrs	x8, SP_EL0
    1594: f9438908     	ldr	x8, [x8, #0x710]
    1598: f94007e9     	ldr	x9, [sp, #0x8]
    159c: eb09011f     	cmp	x8, x9
    15a0: 540001e1     	b.ne	0x15dc <aw8693x_offset_cali+0x1ac>
    15a4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    15a8: f94013f3     	ldr	x19, [sp, #0x20]
    15ac: 9100c3ff     	add	sp, sp, #0x30
    15b0: d50323bf     	autiasp
    15b4: d65f03c0     	ret
    15b8: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000015b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d97
    15bc: 91000000     	add	x0, x0, #0x0
		00000000000015bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d97
    15c0: 90000001     	adrp	x1, 0x1000 <aw8693x_stop+0xd4>
		00000000000015c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    15c4: 91000021     	add	x1, x1, #0x0
		00000000000015c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    15c8: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		00000000000015c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe5c
    15cc: 91000063     	add	x3, x3, #0x0
		00000000000015cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe5c
    15d0: 5280c202     	mov	w2, #0x610              // =1552
    15d4: 94000000     	bl	0x15d4 <aw8693x_offset_cali+0x1a4>
		00000000000015d4:  R_AARCH64_CALL26	_printk
    15d8: 17ffffee     	b	0x1590 <aw8693x_offset_cali+0x160>
    15dc: 94000000     	bl	0x15dc <aw8693x_offset_cali+0x1ac>
		00000000000015dc:  R_AARCH64_CALL26	__stack_chk_fail
