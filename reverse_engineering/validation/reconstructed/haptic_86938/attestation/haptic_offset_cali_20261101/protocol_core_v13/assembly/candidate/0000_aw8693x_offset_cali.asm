
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006314 <aw8693x_offset_cali>:
    6314: d503233f     	paciasp
    6318: d100c3ff     	sub	sp, sp, #0x30
    631c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    6320: f90013f3     	str	x19, [sp, #0x20]
    6324: 910043fd     	add	x29, sp, #0x10
    6328: d5384108     	mrs	x8, SP_EL0
    632c: 528009c1     	mov	w1, #0x4e               // =78
    6330: 128000e2     	mov	w2, #-0x8               // =-8
    6334: f9438908     	ldr	x8, [x8, #0x710]
    6338: aa0003f3     	mov	x19, x0
    633c: f90007e8     	str	x8, [sp, #0x8]
    6340: 39525403     	ldrb	w3, [x0, #0x495]
    6344: 39001bff     	strb	wzr, [sp, #0x6]
    6348: 79000bff     	strh	wzr, [sp, #0x4]
    634c: 94000000     	bl	0x634c <aw8693x_offset_cali+0x38>
		000000000000634c:  R_AARCH64_CALL26	i2c_w_bits
    6350: aa1303e0     	mov	x0, x19
    6354: 528008a1     	mov	w1, #0x45               // =69
    6358: 12800082     	mov	w2, #-0x5               // =-5
    635c: 52800083     	mov	w3, #0x4                // =4
    6360: 94000000     	bl	0x6360 <aw8693x_offset_cali+0x4c>
		0000000000006360:  R_AARCH64_CALL26	i2c_w_bits
    6364: 52803e80     	mov	w0, #0x1f4              // =500
    6368: 52804b01     	mov	w1, #0x258              // =600
    636c: 52800042     	mov	w2, #0x2                // =2
    6370: 94000000     	bl	0x6370 <aw8693x_offset_cali+0x5c>
		0000000000006370:  R_AARCH64_CALL26	usleep_range_state
    6374: aa1303e0     	mov	x0, x19
    6378: 528009c1     	mov	w1, #0x4e               // =78
    637c: 12800f02     	mov	w2, #-0x79              // =-121
    6380: 52800403     	mov	w3, #0x20               // =32
    6384: 94000000     	bl	0x6384 <aw8693x_offset_cali+0x70>
		0000000000006384:  R_AARCH64_CALL26	i2c_w_bits
    6388: aa1303e0     	mov	x0, x19
    638c: 528009a1     	mov	w1, #0x4d               // =77
    6390: 12800062     	mov	w2, #-0x4               // =-4
    6394: 52800023     	mov	w3, #0x1                // =1
    6398: 94000000     	bl	0x6398 <aw8693x_offset_cali+0x84>
		0000000000006398:  R_AARCH64_CALL26	i2c_w_bits
    639c: 52817700     	mov	w0, #0xbb8              // =3000
    63a0: 5281b581     	mov	w1, #0xdac              // =3500
    63a4: 52800042     	mov	w2, #0x2                // =2
    63a8: 94000000     	bl	0x63a8 <aw8693x_offset_cali+0x94>
		00000000000063a8:  R_AARCH64_CALL26	usleep_range_state
    63ac: aa1303e0     	mov	x0, x19
    63b0: 528009a1     	mov	w1, #0x4d               // =77
    63b4: 12800062     	mov	w2, #-0x4               // =-4
    63b8: 2a1f03e3     	mov	w3, wzr
    63bc: 94000000     	bl	0x63bc <aw8693x_offset_cali+0xa8>
		00000000000063bc:  R_AARCH64_CALL26	i2c_w_bits
    63c0: 910013e2     	add	x2, sp, #0x4
    63c4: aa1303e0     	mov	x0, x19
    63c8: 528009e1     	mov	w1, #0x4f               // =79
    63cc: 52800043     	mov	w3, #0x2                // =2
    63d0: 94000000     	bl	0x63d0 <aw8693x_offset_cali+0xbc>
		00000000000063d0:  R_AARCH64_CALL26	i2c_r_bytes
    63d4: aa1303e0     	mov	x0, x19
    63d8: 528008a1     	mov	w1, #0x45               // =69
    63dc: 12800082     	mov	w2, #-0x5               // =-5
    63e0: 2a1f03e3     	mov	w3, wzr
    63e4: 94000000     	bl	0x63e4 <aw8693x_offset_cali+0xd0>
		00000000000063e4:  R_AARCH64_CALL26	i2c_w_bits
    63e8: 39525668     	ldrb	w8, [x19, #0x495]
    63ec: f1001d1f     	cmp	x8, #0x7
    63f0: 540000a8     	b.hi	0x6404 <aw8693x_offset_cali+0xf0>
    63f4: 90000009     	adrp	x9, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000063f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.cst32
    63f8: 91000129     	add	x9, x9, #0x0
		00000000000063f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.cst32
    63fc: b8687928     	ldr	w8, [x9, x8, lsl #2]
    6400: 1400000a     	b	0x6428 <aw8693x_offset_cali+0x114>
    6404: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006404:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83e
    6408: 91000000     	add	x0, x0, #0x0
		0000000000006408:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83e
    640c: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		000000000000640c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    6410: 91000021     	add	x1, x1, #0x0
		0000000000006410:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    6414: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f1
    6418: 91000063     	add	x3, x3, #0x0
		0000000000006418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f1
    641c: 5280c122     	mov	w2, #0x609              // =1545
    6420: 94000000     	bl	0x6420 <aw8693x_offset_cali+0x10c>
		0000000000006420:  R_AARCH64_CALL26	_printk
    6424: 2a1f03e8     	mov	w8, wzr
    6428: 394013e9     	ldrb	w9, [sp, #0x4]
    642c: 394017ea     	ldrb	w10, [sp, #0x5]
    6430: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    6434: 91000000     	add	x0, x0, #0x0
		0000000000006434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    6438: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    643c: 91000021     	add	x1, x1, #0x0
		000000000000643c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    6440: 3318052a     	bfi	w10, w9, #8, #2
    6444: 52813109     	mov	w9, #0x988              // =2440
    6448: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		0000000000006448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f1
    644c: 91000063     	add	x3, x3, #0x0
		000000000000644c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f1
    6450: 5280c1c2     	mov	w2, #0x60e              // =1550
    6454: 1b097d49     	mul	w9, w10, w9
    6458: 5144c529     	sub	w9, w9, #0x131, lsl #12 // =0x131000
    645c: 1ac80d33     	sdiv	w19, w9, w8
    6460: 2a1303e4     	mov	w4, w19
    6464: 94000000     	bl	0x6464 <aw8693x_offset_cali+0x150>
		0000000000006464:  R_AARCH64_CALL26	_printk
    6468: 51004268     	sub	w8, w19, #0x10
    646c: 3100811f     	cmn	w8, #0x20
    6470: 54000169     	b.ls	0x649c <aw8693x_offset_cali+0x188>
    6474: d5384108     	mrs	x8, SP_EL0
    6478: f9438908     	ldr	x8, [x8, #0x710]
    647c: f94007e9     	ldr	x9, [sp, #0x8]
    6480: eb09011f     	cmp	x8, x9
    6484: 540001e1     	b.ne	0x64c0 <aw8693x_offset_cali+0x1ac>
    6488: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    648c: f94013f3     	ldr	x19, [sp, #0x20]
    6490: 9100c3ff     	add	sp, sp, #0x30
    6494: d50323bf     	autiasp
    6498: d65f03c0     	ret
    649c: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xc4>
		000000000000649c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc82
    64a0: 91000000     	add	x0, x0, #0x0
		00000000000064a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc82
    64a4: 90000001     	adrp	x1, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000064a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    64a8: 91000021     	add	x1, x1, #0x0
		00000000000064a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    64ac: 90000003     	adrp	x3, 0x6000 <aw8693x_get_wav_loop+0xc4>
		00000000000064ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f1
    64b0: 91000063     	add	x3, x3, #0x0
		00000000000064b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f1
    64b4: 5280c202     	mov	w2, #0x610              // =1552
    64b8: 94000000     	bl	0x64b8 <aw8693x_offset_cali+0x1a4>
		00000000000064b8:  R_AARCH64_CALL26	_printk
    64bc: 17ffffee     	b	0x6474 <aw8693x_offset_cali+0x160>
    64c0: 94000000     	bl	0x64c0 <aw8693x_offset_cali+0x1ac>
		00000000000064c0:  R_AARCH64_CALL26	__stack_chk_fail
