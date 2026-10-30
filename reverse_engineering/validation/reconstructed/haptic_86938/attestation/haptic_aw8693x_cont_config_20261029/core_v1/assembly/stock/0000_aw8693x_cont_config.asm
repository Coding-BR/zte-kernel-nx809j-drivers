
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000012a4 <aw8693x_cont_config>:
    12a4: d503233f     	paciasp
    12a8: d10103ff     	sub	sp, sp, #0x40
    12ac: a9017bfd     	stp	x29, x30, [sp, #0x10]
    12b0: f90013f5     	str	x21, [sp, #0x20]
    12b4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    12b8: 910043fd     	add	x29, sp, #0x10
    12bc: d5384108     	mrs	x8, SP_EL0
    12c0: 90000014     	adrp	x20, 0x1000 <aw8693x_stop+0xd4>
		00000000000012c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    12c4: 91000294     	add	x20, x20, #0x0
		00000000000012c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    12c8: f9438908     	ldr	x8, [x8, #0x710]
    12cc: aa0003f3     	mov	x19, x0
    12d0: 52801fe9     	mov	w9, #0xff               // =255
    12d4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000012d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17dd
    12d8: 91000000     	add	x0, x0, #0x0
		00000000000012d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17dd
    12dc: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		00000000000012dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
    12e0: 91000063     	add	x3, x3, #0x0
		00000000000012e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
    12e4: aa1403e1     	mov	x1, x20
    12e8: 52804ea2     	mov	w2, #0x275              // =629
    12ec: f90007e8     	str	x8, [sp, #0x8]
    12f0: 390003e9     	strb	w9, [sp]
    12f4: 94000000     	bl	0x12f4 <aw8693x_cont_config+0x50>
		00000000000012f4:  R_AARCH64_CALL26	_printk
    12f8: 52800088     	mov	w8, #0x4                // =4
    12fc: aa1303e0     	mov	x0, x19
    1300: 52800101     	mov	w1, #0x8                // =8
    1304: 12800062     	mov	w2, #-0x4               // =-4
    1308: 52800043     	mov	w3, #0x2                // =2
    130c: 39005e68     	strb	w8, [x19, #0x17]
    1310: 94000000     	bl	0x1310 <aw8693x_cont_config+0x6c>
		0000000000001310:  R_AARCH64_CALL26	i2c_w_bits
    1314: aa1303e0     	mov	x0, x19
    1318: 52800101     	mov	w1, #0x8                // =8
    131c: 12800082     	mov	w2, #-0x5               // =-5
    1320: 52800083     	mov	w3, #0x4                // =4
    1324: 94000000     	bl	0x1324 <aw8693x_cont_config+0x80>
		0000000000001324:  R_AARCH64_CALL26	i2c_w_bits
    1328: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		0000000000001328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x505
    132c: 91000000     	add	x0, x0, #0x0
		000000000000132c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x505
    1330: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		0000000000001330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
    1334: 91000063     	add	x3, x3, #0x0
		0000000000001334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
    1338: aa1403e1     	mov	x1, x20
    133c: 52803fc2     	mov	w2, #0x1fe              // =510
    1340: 94000000     	bl	0x1340 <aw8693x_cont_config+0x9c>
		0000000000001340:  R_AARCH64_CALL26	_printk
    1344: aa1303e0     	mov	x0, x19
    1348: 528000c1     	mov	w1, #0x6                // =6
    134c: 12800402     	mov	w2, #-0x21              // =-33
    1350: 2a1f03e3     	mov	w3, wzr
    1354: 94000000     	bl	0x1354 <aw8693x_cont_config+0xb0>
		0000000000001354:  R_AARCH64_CALL26	i2c_w_bits
    1358: aa1303e0     	mov	x0, x19
    135c: 52800981     	mov	w1, #0x4c               // =76
    1360: 12800802     	mov	w2, #-0x41              // =-65
    1364: 52800803     	mov	w3, #0x40               // =64
    1368: 94000000     	bl	0x1368 <aw8693x_cont_config+0xc4>
		0000000000001368:  R_AARCH64_CALL26	i2c_w_bits
    136c: 39530268     	ldrb	w8, [x19, #0x4c0]
    1370: aa1303e0     	mov	x0, x19
    1374: 528003a1     	mov	w1, #0x1d               // =29
    1378: 12801002     	mov	w2, #-0x81              // =-129
    137c: 53196103     	lsl	w3, w8, #7
    1380: 94000000     	bl	0x1380 <aw8693x_cont_config+0xdc>
		0000000000001380:  R_AARCH64_CALL26	i2c_w_bits
    1384: 39526a63     	ldrb	w3, [x19, #0x49a]
    1388: aa1303e0     	mov	x0, x19
    138c: 528003a1     	mov	w1, #0x1d               // =29
    1390: 12800fe2     	mov	w2, #-0x80              // =-128
    1394: 94000000     	bl	0x1394 <aw8693x_cont_config+0xf0>
		0000000000001394:  R_AARCH64_CALL26	i2c_w_bits
    1398: 91126e62     	add	x2, x19, #0x49b
    139c: aa1303e0     	mov	x0, x19
    13a0: 528003c1     	mov	w1, #0x1e               // =30
    13a4: 52800023     	mov	w3, #0x1                // =1
    13a8: 52800035     	mov	w21, #0x1               // =1
    13ac: 94000000     	bl	0x13ac <aw8693x_cont_config+0x108>
		00000000000013ac:  R_AARCH64_CALL26	i2c_w_bytes
    13b0: 910003e2     	mov	x2, sp
    13b4: aa1303e0     	mov	x0, x19
    13b8: 52800401     	mov	w1, #0x20               // =32
    13bc: 52800023     	mov	w3, #0x1                // =1
    13c0: 94000000     	bl	0x13c0 <aw8693x_cont_config+0x11c>
		00000000000013c0:  R_AARCH64_CALL26	i2c_w_bytes
    13c4: 90000000     	adrp	x0, 0x1000 <aw8693x_stop+0xd4>
		00000000000013c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85c
    13c8: 91000000     	add	x0, x0, #0x0
		00000000000013c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85c
    13cc: 90000003     	adrp	x3, 0x1000 <aw8693x_stop+0xd4>
		00000000000013cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e
    13d0: 91000063     	add	x3, x3, #0x0
		00000000000013d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e
    13d4: aa1403e1     	mov	x1, x20
    13d8: 52803ae2     	mov	w2, #0x1d7              // =471
    13dc: 52800024     	mov	w4, #0x1                // =1
    13e0: 94000000     	bl	0x13e0 <aw8693x_cont_config+0x13c>
		00000000000013e0:  R_AARCH64_CALL26	_printk
    13e4: 910013e2     	add	x2, sp, #0x4
    13e8: aa1303e0     	mov	x0, x19
    13ec: 52800121     	mov	w1, #0x9                // =9
    13f0: 52800023     	mov	w3, #0x1                // =1
    13f4: 390013f5     	strb	w21, [sp, #0x4]
    13f8: 94000000     	bl	0x13f8 <aw8693x_cont_config+0x154>
		00000000000013f8:  R_AARCH64_CALL26	i2c_w_bytes
    13fc: d5384108     	mrs	x8, SP_EL0
    1400: f9438908     	ldr	x8, [x8, #0x710]
    1404: f94007e9     	ldr	x9, [sp, #0x8]
    1408: eb09011f     	cmp	x8, x9
    140c: 540000e1     	b.ne	0x1428 <aw8693x_cont_config+0x184>
    1410: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1414: f94013f5     	ldr	x21, [sp, #0x20]
    1418: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    141c: 910103ff     	add	sp, sp, #0x40
    1420: d50323bf     	autiasp
    1424: d65f03c0     	ret
    1428: 94000000     	bl	0x1428 <aw8693x_cont_config+0x184>
		0000000000001428:  R_AARCH64_CALL26	__stack_chk_fail
