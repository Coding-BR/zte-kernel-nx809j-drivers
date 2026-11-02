
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000062e4 <aw8693x_offset_cali>:
    62e4: d503233f     	paciasp
    62e8: d100c3ff     	sub	sp, sp, #0x30
    62ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    62f0: f90013f3     	str	x19, [sp, #0x20]
    62f4: 910043fd     	add	x29, sp, #0x10
    62f8: d5384108     	mrs	x8, SP_EL0
    62fc: 528009c1     	mov	w1, #0x4e               // =78
    6300: 128000e2     	mov	w2, #-0x8               // =-8
    6304: f9438908     	ldr	x8, [x8, #0x710]
    6308: aa0003f3     	mov	x19, x0
    630c: f90007e8     	str	x8, [sp, #0x8]
    6310: 39525403     	ldrb	w3, [x0, #0x495]
    6314: 39001bff     	strb	wzr, [sp, #0x6]
    6318: 79000bff     	strh	wzr, [sp, #0x4]
    631c: 94000000     	bl	0x631c <aw8693x_offset_cali+0x38>
		000000000000631c:  R_AARCH64_CALL26	i2c_w_bits
    6320: aa1303e0     	mov	x0, x19
    6324: 528008a1     	mov	w1, #0x45               // =69
    6328: 12800082     	mov	w2, #-0x5               // =-5
    632c: 52800083     	mov	w3, #0x4                // =4
    6330: 94000000     	bl	0x6330 <aw8693x_offset_cali+0x4c>
		0000000000006330:  R_AARCH64_CALL26	i2c_w_bits
    6334: 52803e80     	mov	w0, #0x1f4              // =500
    6338: 52804b01     	mov	w1, #0x258              // =600
    633c: 52800042     	mov	w2, #0x2                // =2
    6340: 94000000     	bl	0x6340 <aw8693x_offset_cali+0x5c>
		0000000000006340:  R_AARCH64_CALL26	usleep_range_state
    6344: aa1303e0     	mov	x0, x19
    6348: 528009c1     	mov	w1, #0x4e               // =78
    634c: 12800f02     	mov	w2, #-0x79              // =-121
    6350: 52800403     	mov	w3, #0x20               // =32
    6354: 94000000     	bl	0x6354 <aw8693x_offset_cali+0x70>
		0000000000006354:  R_AARCH64_CALL26	i2c_w_bits
    6358: aa1303e0     	mov	x0, x19
    635c: 528009a1     	mov	w1, #0x4d               // =77
    6360: 12800062     	mov	w2, #-0x4               // =-4
    6364: 52800023     	mov	w3, #0x1                // =1
    6368: 94000000     	bl	0x6368 <aw8693x_offset_cali+0x84>
		0000000000006368:  R_AARCH64_CALL26	i2c_w_bits
    636c: 52817700     	mov	w0, #0xbb8              // =3000
    6370: 5281b581     	mov	w1, #0xdac              // =3500
    6374: 52800042     	mov	w2, #0x2                // =2
    6378: 94000000     	bl	0x6378 <aw8693x_offset_cali+0x94>
		0000000000006378:  R_AARCH64_CALL26	usleep_range_state
    637c: aa1303e0     	mov	x0, x19
    6380: 528009a1     	mov	w1, #0x4d               // =77
    6384: 12800062     	mov	w2, #-0x4               // =-4
    6388: 2a1f03e3     	mov	w3, wzr
    638c: 94000000     	bl	0x638c <aw8693x_offset_cali+0xa8>
		000000000000638c:  R_AARCH64_CALL26	i2c_w_bits
    6390: 910013e2     	add	x2, sp, #0x4
    6394: aa1303e0     	mov	x0, x19
    6398: 528009e1     	mov	w1, #0x4f               // =79
    639c: 52800043     	mov	w3, #0x2                // =2
    63a0: 94000000     	bl	0x63a0 <aw8693x_offset_cali+0xbc>
		00000000000063a0:  R_AARCH64_CALL26	i2c_r_bytes
    63a4: aa1303e0     	mov	x0, x19
    63a8: 528008a1     	mov	w1, #0x45               // =69
    63ac: 12800082     	mov	w2, #-0x5               // =-5
    63b0: 2a1f03e3     	mov	w3, wzr
    63b4: 94000000     	bl	0x63b4 <aw8693x_offset_cali+0xd0>
		00000000000063b4:  R_AARCH64_CALL26	i2c_w_bits
    63b8: 39525668     	ldrb	w8, [x19, #0x495]
    63bc: f1001d1f     	cmp	x8, #0x7
    63c0: 540000a8     	b.hi	0x63d4 <aw8693x_offset_cali+0xf0>
    63c4: 90000009     	adrp	x9, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000063c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.cst32
    63c8: 91000129     	add	x9, x9, #0x0
		00000000000063c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.cst32
    63cc: b8687928     	ldr	w8, [x9, x8, lsl #2]
    63d0: 1400000a     	b	0x63f8 <aw8693x_offset_cali+0x114>
    63d4: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000063d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa88
    63d8: 91000000     	add	x0, x0, #0x0
		00000000000063d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa88
    63dc: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000063dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    63e0: 91000021     	add	x1, x1, #0x0
		00000000000063e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    63e4: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		00000000000063e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8be
    63e8: 91000063     	add	x3, x3, #0x0
		00000000000063e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8be
    63ec: 5280c122     	mov	w2, #0x609              // =1545
    63f0: 94000000     	bl	0x63f0 <aw8693x_offset_cali+0x10c>
		00000000000063f0:  R_AARCH64_CALL26	_printk
    63f4: 2a1f03e8     	mov	w8, wzr
    63f8: 394013e9     	ldrb	w9, [sp, #0x4]
    63fc: 394017ea     	ldrb	w10, [sp, #0x5]
    6400: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1850
    6404: 91000000     	add	x0, x0, #0x0
		0000000000006404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1850
    6408: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    640c: 91000021     	add	x1, x1, #0x0
		000000000000640c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    6410: 3318052a     	bfi	w10, w9, #8, #2
    6414: 52813109     	mov	w9, #0x988              // =2440
    6418: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8be
    641c: 91000063     	add	x3, x3, #0x0
		000000000000641c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8be
    6420: 5280c1c2     	mov	w2, #0x60e              // =1550
    6424: 1b097d49     	mul	w9, w10, w9
    6428: 5144c529     	sub	w9, w9, #0x131, lsl #12 // =0x131000
    642c: 1ac80d33     	sdiv	w19, w9, w8
    6430: 2a1303e4     	mov	w4, w19
    6434: 94000000     	bl	0x6434 <aw8693x_offset_cali+0x150>
		0000000000006434:  R_AARCH64_CALL26	_printk
    6438: 51004268     	sub	w8, w19, #0x10
    643c: 3100811f     	cmn	w8, #0x20
    6440: 54000169     	b.ls	0x646c <aw8693x_offset_cali+0x188>
    6444: d5384108     	mrs	x8, SP_EL0
    6448: f9438908     	ldr	x8, [x8, #0x710]
    644c: f94007e9     	ldr	x9, [sp, #0x8]
    6450: eb09011f     	cmp	x8, x9
    6454: 540001e1     	b.ne	0x6490 <aw8693x_offset_cali+0x1ac>
    6458: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    645c: f94013f3     	ldr	x19, [sp, #0x20]
    6460: 9100c3ff     	add	sp, sp, #0x30
    6464: d50323bf     	autiasp
    6468: d65f03c0     	ret
    646c: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		000000000000646c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1020
    6470: 91000000     	add	x0, x0, #0x0
		0000000000006470:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1020
    6474: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006474:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    6478: 91000021     	add	x1, x1, #0x0
		0000000000006478:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    647c: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xf4>
		000000000000647c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8be
    6480: 91000063     	add	x3, x3, #0x0
		0000000000006480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8be
    6484: 5280c202     	mov	w2, #0x610              // =1552
    6488: 94000000     	bl	0x6488 <aw8693x_offset_cali+0x1a4>
		0000000000006488:  R_AARCH64_CALL26	_printk
    648c: 17ffffee     	b	0x6444 <aw8693x_offset_cali+0x160>
    6490: 94000000     	bl	0x6490 <aw8693x_offset_cali+0x1ac>
		0000000000006490:  R_AARCH64_CALL26	__stack_chk_fail
