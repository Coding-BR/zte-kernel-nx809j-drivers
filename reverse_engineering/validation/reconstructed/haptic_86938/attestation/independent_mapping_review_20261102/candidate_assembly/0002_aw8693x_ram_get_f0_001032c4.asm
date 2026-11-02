
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005408 <aw8693x_ram_get_f0>:
    5408: d503233f     	paciasp
    540c: d10143ff     	sub	sp, sp, #0x50
    5410: a9027bfd     	stp	x29, x30, [sp, #0x20]
    5414: a90357f6     	stp	x22, x21, [sp, #0x30]
    5418: a9044ff4     	stp	x20, x19, [sp, #0x40]
    541c: 910083fd     	add	x29, sp, #0x20
    5420: d5384108     	mrs	x8, SP_EL0
    5424: f9438908     	ldr	x8, [x8, #0x710]
    5428: f81f83a8     	stur	x8, [x29, #-0x8]
    542c: 39401808     	ldrb	w8, [x0, #0x6]
    5430: 390003ff     	strb	wzr, [sp]
    5434: 360001a8     	tbz	w8, #0x0, 0x5468 <aw8693x_ram_get_f0+0x60>
    5438: 39517008     	ldrb	w8, [x0, #0x45c]
    543c: aa0003f3     	mov	x19, x0
    5440: 7100111f     	cmp	w8, #0x4
    5444: 54000268     	b.hi	0x5490 <aw8693x_ram_get_f0+0x88>
    5448: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa5d
    544c: 91000000     	add	x0, x0, #0x0
		000000000000544c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa5d
    5450: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005450:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5454: 91000021     	add	x1, x1, #0x0
		0000000000005454:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5458: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x678
    545c: 91000063     	add	x3, x3, #0x0
		000000000000545c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x678
    5460: 5280a1c2     	mov	w2, #0x50e              // =1294
    5464: 14000008     	b	0x5484 <aw8693x_ram_get_f0+0x7c>
    5468: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005468:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x193b
    546c: 91000000     	add	x0, x0, #0x0
		000000000000546c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x193b
    5470: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005470:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5474: 91000021     	add	x1, x1, #0x0
		0000000000005474:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5478: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x678
    547c: 91000063     	add	x3, x3, #0x0
		000000000000547c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x678
    5480: 5280a142     	mov	w2, #0x50a              // =1290
    5484: 94000000     	bl	0x5484 <aw8693x_ram_get_f0+0x7c>
		0000000000005484:  R_AARCH64_CALL26	_printk
    5488: 12800420     	mov	w0, #-0x22              // =-34
    548c: 140000c3     	b	0x5798 <aw8693x_ram_get_f0+0x390>
    5490: b9446a68     	ldr	w8, [x19, #0x468]
    5494: aa1303e0     	mov	x0, x19
    5498: b9006268     	str	w8, [x19, #0x60]
    549c: 94000000     	bl	0x549c <aw8693x_ram_get_f0+0x94>
		000000000000549c:  R_AARCH64_CALL26	aw8693x_stop
    54a0: 39525663     	ldrb	w3, [x19, #0x495]
    54a4: aa1303e0     	mov	x0, x19
    54a8: 528009c1     	mov	w1, #0x4e               // =78
    54ac: 128000e2     	mov	w2, #-0x8               // =-8
    54b0: 94000000     	bl	0x54b0 <aw8693x_ram_get_f0+0xa8>
		00000000000054b0:  R_AARCH64_CALL26	i2c_w_bits
    54b4: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000054b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    54b8: 91000294     	add	x20, x20, #0x0
		00000000000054b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    54bc: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000054bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x99a
    54c0: 91000000     	add	x0, x0, #0x0
		00000000000054c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x99a
    54c4: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000054c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e4
    54c8: 91000063     	add	x3, x3, #0x0
		00000000000054c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e4
    54cc: aa1403e1     	mov	x1, x20
    54d0: 528049e2     	mov	w2, #0x24f              // =591
    54d4: 94000000     	bl	0x54d4 <aw8693x_ram_get_f0+0xcc>
		00000000000054d4:  R_AARCH64_CALL26	_printk
    54d8: 52800036     	mov	w22, #0x1               // =1
    54dc: aa1303e0     	mov	x0, x19
    54e0: 52800101     	mov	w1, #0x8                // =8
    54e4: 12800062     	mov	w2, #-0x4               // =-4
    54e8: 2a1f03e3     	mov	w3, wzr
    54ec: 39005e76     	strb	w22, [x19, #0x17]
    54f0: 94000000     	bl	0x54f0 <aw8693x_ram_get_f0+0xe8>
		00000000000054f0:  R_AARCH64_CALL26	i2c_w_bits
    54f4: aa1303e0     	mov	x0, x19
    54f8: 52800101     	mov	w1, #0x8                // =8
    54fc: 12800082     	mov	w2, #-0x5               // =-5
    5500: 2a1f03e3     	mov	w3, wzr
    5504: 94000000     	bl	0x5504 <aw8693x_ram_get_f0+0xfc>
		0000000000005504:  R_AARCH64_CALL26	i2c_w_bits
    5508: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x163e
    550c: 91000000     	add	x0, x0, #0x0
		000000000000550c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x163e
    5510: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005510:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8
    5514: 91000063     	add	x3, x3, #0x0
		0000000000005514:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8
    5518: aa1403e1     	mov	x1, x20
    551c: 52803f02     	mov	w2, #0x1f8              // =504
    5520: 94000000     	bl	0x5520 <aw8693x_ram_get_f0+0x118>
		0000000000005520:  R_AARCH64_CALL26	_printk
    5524: aa1303e0     	mov	x0, x19
    5528: 528000c1     	mov	w1, #0x6                // =6
    552c: 12800402     	mov	w2, #-0x21              // =-33
    5530: 52800403     	mov	w3, #0x20               // =32
    5534: 94000000     	bl	0x5534 <aw8693x_ram_get_f0+0x12c>
		0000000000005534:  R_AARCH64_CALL26	i2c_w_bits
    5538: aa1303e0     	mov	x0, x19
    553c: 52800981     	mov	w1, #0x4c               // =76
    5540: 12800802     	mov	w2, #-0x41              // =-65
    5544: 2a1f03e3     	mov	w3, wzr
    5548: 94000000     	bl	0x5548 <aw8693x_ram_get_f0+0x140>
		0000000000005548:  R_AARCH64_CALL26	i2c_w_bits
    554c: aa1303e0     	mov	x0, x19
    5550: 52800301     	mov	w1, #0x18               // =24
    5554: 12800402     	mov	w2, #-0x21              // =-33
    5558: 52800403     	mov	w3, #0x20               // =32
    555c: 94000000     	bl	0x555c <aw8693x_ram_get_f0+0x154>
		000000000000555c:  R_AARCH64_CALL26	i2c_w_bits
    5560: 910003e2     	mov	x2, sp
    5564: aa1303e0     	mov	x0, x19
    5568: 52800101     	mov	w1, #0x8                // =8
    556c: 52800023     	mov	w3, #0x1                // =1
    5570: 94000000     	bl	0x5570 <aw8693x_ram_get_f0+0x168>
		0000000000005570:  R_AARCH64_CALL26	i2c_r_bytes
    5574: 394003f5     	ldrb	w21, [sp]
    5578: aa1303e0     	mov	x0, x19
    557c: 52800101     	mov	w1, #0x8                // =8
    5580: 12800082     	mov	w2, #-0x5               // =-5
    5584: 52800083     	mov	w3, #0x4                // =4
    5588: 94000000     	bl	0x5588 <aw8693x_ram_get_f0+0x180>
		0000000000005588:  R_AARCH64_CALL26	i2c_w_bits
    558c: aa1303e0     	mov	x0, x19
    5590: 528000c1     	mov	w1, #0x6                // =6
    5594: 128003e2     	mov	w2, #-0x20              // =-32
    5598: 528001a3     	mov	w3, #0xd                // =13
    559c: 94000000     	bl	0x559c <aw8693x_ram_get_f0+0x194>
		000000000000559c:  R_AARCH64_CALL26	i2c_w_bits
    55a0: 528000a8     	mov	w8, #0x5                // =5
    55a4: 910013e2     	add	x2, sp, #0x4
    55a8: aa1303e0     	mov	x0, x19
    55ac: 52800141     	mov	w1, #0xa                // =10
    55b0: 52800023     	mov	w3, #0x1                // =1
    55b4: 390013e8     	strb	w8, [sp, #0x4]
    55b8: 94000000     	bl	0x55b8 <aw8693x_ram_get_f0+0x1b0>
		00000000000055b8:  R_AARCH64_CALL26	i2c_w_bytes
    55bc: 910023e2     	add	x2, sp, #0x8
    55c0: aa1303e0     	mov	x0, x19
    55c4: 52800161     	mov	w1, #0xb                // =11
    55c8: 52800023     	mov	w3, #0x1                // =1
    55cc: 390023ff     	strb	wzr, [sp, #0x8]
    55d0: 94000000     	bl	0x55d0 <aw8693x_ram_get_f0+0x1c8>
		00000000000055d0:  R_AARCH64_CALL26	i2c_w_bytes
    55d4: aa1303e0     	mov	x0, x19
    55d8: 52800241     	mov	w1, #0x12               // =18
    55dc: 12801e02     	mov	w2, #-0xf1              // =-241
    55e0: 52800403     	mov	w3, #0x20               // =32
    55e4: 94000000     	bl	0x55e4 <aw8693x_ram_get_f0+0x1dc>
		00000000000055e4:  R_AARCH64_CALL26	i2c_w_bits
    55e8: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000055e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x591
    55ec: 91000000     	add	x0, x0, #0x0
		00000000000055ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x591
    55f0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000055f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b3
    55f4: 91000063     	add	x3, x3, #0x0
		00000000000055f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b3
    55f8: aa1403e1     	mov	x1, x20
    55fc: 52803ae2     	mov	w2, #0x1d7              // =471
    5600: 52800024     	mov	w4, #0x1                // =1
    5604: 94000000     	bl	0x5604 <aw8693x_ram_get_f0+0x1fc>
		0000000000005604:  R_AARCH64_CALL26	_printk
    5608: 910033e2     	add	x2, sp, #0xc
    560c: aa1303e0     	mov	x0, x19
    5610: 52800121     	mov	w1, #0x9                // =9
    5614: 52800023     	mov	w3, #0x1                // =1
    5618: 390033f6     	strb	w22, [sp, #0xc]
    561c: 94000000     	bl	0x561c <aw8693x_ram_get_f0+0x214>
		000000000000561c:  R_AARCH64_CALL26	i2c_w_bytes
    5620: 5289c400     	mov	w0, #0x4e20             // =20000
    5624: 528a0281     	mov	w1, #0x5014             // =20500
    5628: 52800042     	mov	w2, #0x2                // =2
    562c: 94000000     	bl	0x562c <aw8693x_ram_get_f0+0x224>
		000000000000562c:  R_AARCH64_CALL26	usleep_range_state
    5630: 12800c74     	mov	w20, #-0x64             // =-100
    5634: 910043e2     	add	x2, sp, #0x10
    5638: aa1303e0     	mov	x0, x19
    563c: 528007e1     	mov	w1, #0x3f               // =63
    5640: 52800023     	mov	w3, #0x1                // =1
    5644: 390043ff     	strb	wzr, [sp, #0x10]
    5648: 94000000     	bl	0x5648 <aw8693x_ram_get_f0+0x240>
		0000000000005648:  R_AARCH64_CALL26	i2c_r_bytes
    564c: 394043e8     	ldrb	w8, [sp, #0x10]
    5650: 340001e8     	cbz	w8, 0x568c <aw8693x_ram_get_f0+0x284>
    5654: 5280fa00     	mov	w0, #0x7d0              // =2000
    5658: 52813881     	mov	w1, #0x9c4              // =2500
    565c: 52800042     	mov	w2, #0x2                // =2
    5660: 94000000     	bl	0x5660 <aw8693x_ram_get_f0+0x258>
		0000000000005660:  R_AARCH64_CALL26	usleep_range_state
    5664: 31000694     	adds	w20, w20, #0x1
    5668: 54fffe63     	b.lo	0x5634 <aw8693x_ram_get_f0+0x22c>
    566c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000566c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    5670: 91000000     	add	x0, x0, #0x0
		0000000000005670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    5674: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005674:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5678: 91000021     	add	x1, x1, #0x0
		0000000000005678:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    567c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000567c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa42
    5680: 91000063     	add	x3, x3, #0x0
		0000000000005680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa42
    5684: 52803de2     	mov	w2, #0x1ef              // =495
    5688: 14000008     	b	0x56a8 <aw8693x_ram_get_f0+0x2a0>
    568c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000568c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1786
    5690: 91000000     	add	x0, x0, #0x0
		0000000000005690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1786
    5694: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5698: 91000021     	add	x1, x1, #0x0
		0000000000005698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    569c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000569c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa42
    56a0: 91000063     	add	x3, x3, #0x0
		00000000000056a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa42
    56a4: 52803d42     	mov	w2, #0x1ea              // =490
    56a8: 94000000     	bl	0x56a8 <aw8693x_ram_get_f0+0x2a0>
		00000000000056a8:  R_AARCH64_CALL26	_printk
    56ac: d10033a2     	sub	x2, x29, #0xc
    56b0: aa1303e0     	mov	x0, x19
    56b4: 528004e1     	mov	w1, #0x27               // =39
    56b8: 52800043     	mov	w3, #0x2                // =2
    56bc: 781f43bf     	sturh	wzr, [x29, #-0xc]
    56c0: 94000000     	bl	0x56c0 <aw8693x_ram_get_f0+0x2b8>
		00000000000056c0:  R_AARCH64_CALL26	i2c_r_bytes
    56c4: 785f43a8     	ldurh	w8, [x29, #-0xc]
    56c8: 5ac00508     	rev16	w8, w8
    56cc: 35000188     	cbnz	w8, 0x56fc <aw8693x_ram_get_f0+0x2f4>
    56d0: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000056d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74f
    56d4: 91000000     	add	x0, x0, #0x0
		00000000000056d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74f
    56d8: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000056d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    56dc: 91000021     	add	x1, x1, #0x0
		00000000000056dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    56e0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000056e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1840
    56e4: 91000063     	add	x3, x3, #0x0
		00000000000056e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1840
    56e8: 52809582     	mov	w2, #0x4ac              // =1196
    56ec: b900627f     	str	wzr, [x19, #0x60]
    56f0: 94000000     	bl	0x56f0 <aw8693x_ram_get_f0+0x2e8>
		00000000000056f0:  R_AARCH64_CALL26	_printk
    56f4: 12800434     	mov	w20, #-0x22             // =-34
    56f8: 1400000f     	b	0x5734 <aw8693x_ram_get_f0+0x32c>
    56fc: 52930009     	mov	w9, #0x9800             // =38912
    5700: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x77d
    5704: 91000000     	add	x0, x0, #0x0
		0000000000005704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x77d
    5708: 72a00749     	movk	w9, #0x3a, lsl #16
    570c: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000570c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5710: 91000021     	add	x1, x1, #0x0
		0000000000005710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5714: 1ac80924     	udiv	w4, w9, w8
    5718: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1840
    571c: 91000063     	add	x3, x3, #0x0
		000000000000571c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1840
    5720: 52809622     	mov	w2, #0x4b1              // =1201
    5724: b9006264     	str	w4, [x19, #0x60]
    5728: b9007264     	str	w4, [x19, #0x70]
    572c: 94000000     	bl	0x572c <aw8693x_ram_get_f0+0x324>
		000000000000572c:  R_AARCH64_CALL26	_printk
    5730: 2a1f03f4     	mov	w20, wzr
    5734: 3940c268     	ldrb	w8, [x19, #0x30]
    5738: 528000a9     	mov	w9, #0x5                // =5
    573c: aa1303e0     	mov	x0, x19
    5740: 528000c1     	mov	w1, #0x6                // =6
    5744: 128003e2     	mov	w2, #-0x20              // =-32
    5748: 7100151f     	cmp	w8, #0x5
    574c: 1a898108     	csel	w8, w8, w9, hi
    5750: 52800329     	mov	w9, #0x19               // =25
    5754: 7100651f     	cmp	w8, #0x19
    5758: 1a893103     	csel	w3, w8, w9, lo
    575c: 94000000     	bl	0x575c <aw8693x_ram_get_f0+0x354>
		000000000000575c:  R_AARCH64_CALL26	i2c_w_bits
    5760: aa1303e0     	mov	x0, x19
    5764: 52800301     	mov	w1, #0x18               // =24
    5768: 12800402     	mov	w2, #-0x21              // =-33
    576c: 2a1f03e3     	mov	w3, wzr
    5770: 94000000     	bl	0x5770 <aw8693x_ram_get_f0+0x368>
		0000000000005770:  R_AARCH64_CALL26	i2c_w_bits
    5774: aa1303e0     	mov	x0, x19
    5778: 52800101     	mov	w1, #0x8                // =8
    577c: 12800082     	mov	w2, #-0x5               // =-5
    5780: 37100075     	tbnz	w21, #0x2, 0x578c <aw8693x_ram_get_f0+0x384>
    5784: 2a1f03e3     	mov	w3, wzr
    5788: 14000002     	b	0x5790 <aw8693x_ram_get_f0+0x388>
    578c: 52800083     	mov	w3, #0x4                // =4
    5790: 94000000     	bl	0x5790 <aw8693x_ram_get_f0+0x388>
		0000000000005790:  R_AARCH64_CALL26	i2c_w_bits
    5794: 2a1403e0     	mov	w0, w20
    5798: d5384108     	mrs	x8, SP_EL0
    579c: f9438908     	ldr	x8, [x8, #0x710]
    57a0: f85f83a9     	ldur	x9, [x29, #-0x8]
    57a4: eb09011f     	cmp	x8, x9
    57a8: 540000e1     	b.ne	0x57c4 <aw8693x_ram_get_f0+0x3bc>
    57ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    57b0: a94357f6     	ldp	x22, x21, [sp, #0x30]
    57b4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    57b8: 910143ff     	add	sp, sp, #0x50
    57bc: d50323bf     	autiasp
    57c0: d65f03c0     	ret
    57c4: 94000000     	bl	0x57c4 <aw8693x_ram_get_f0+0x3bc>
		00000000000057c4:  R_AARCH64_CALL26	__stack_chk_fail
