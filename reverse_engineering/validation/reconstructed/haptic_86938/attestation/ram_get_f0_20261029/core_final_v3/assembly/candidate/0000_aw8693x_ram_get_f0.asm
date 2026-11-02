
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000053d8 <aw8693x_ram_get_f0>:
    53d8: d503233f     	paciasp
    53dc: d10143ff     	sub	sp, sp, #0x50
    53e0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    53e4: a90357f6     	stp	x22, x21, [sp, #0x30]
    53e8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    53ec: 910083fd     	add	x29, sp, #0x20
    53f0: d5384108     	mrs	x8, SP_EL0
    53f4: f9438908     	ldr	x8, [x8, #0x710]
    53f8: f81f83a8     	stur	x8, [x29, #-0x8]
    53fc: 39401808     	ldrb	w8, [x0, #0x6]
    5400: 390003ff     	strb	wzr, [sp]
    5404: 360001a8     	tbz	w8, #0x0, 0x5438 <aw8693x_ram_get_f0+0x60>
    5408: 39517008     	ldrb	w8, [x0, #0x45c]
    540c: aa0003f3     	mov	x19, x0
    5410: 7100111f     	cmp	w8, #0x4
    5414: 54000268     	b.hi	0x5460 <aw8693x_ram_get_f0+0x88>
    5418: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005418:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a9
    541c: 91000000     	add	x0, x0, #0x0
		000000000000541c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a9
    5420: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005420:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5424: 91000021     	add	x1, x1, #0x0
		0000000000005424:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5428: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005428:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b
    542c: 91000063     	add	x3, x3, #0x0
		000000000000542c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b
    5430: 5280a1c2     	mov	w2, #0x50e              // =1294
    5434: 14000008     	b	0x5454 <aw8693x_ram_get_f0+0x7c>
    5438: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf64
    543c: 91000000     	add	x0, x0, #0x0
		000000000000543c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf64
    5440: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5444: 91000021     	add	x1, x1, #0x0
		0000000000005444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5448: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x43b
    544c: 91000063     	add	x3, x3, #0x0
		000000000000544c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x43b
    5450: 5280a142     	mov	w2, #0x50a              // =1290
    5454: 94000000     	bl	0x5454 <aw8693x_ram_get_f0+0x7c>
		0000000000005454:  R_AARCH64_CALL26	_printk
    5458: 12800420     	mov	w0, #-0x22              // =-34
    545c: 140000c3     	b	0x5768 <aw8693x_ram_get_f0+0x390>
    5460: b9446a68     	ldr	w8, [x19, #0x468]
    5464: aa1303e0     	mov	x0, x19
    5468: b9006268     	str	w8, [x19, #0x60]
    546c: 94000000     	bl	0x546c <aw8693x_ram_get_f0+0x94>
		000000000000546c:  R_AARCH64_CALL26	aw8693x_stop
    5470: 39525663     	ldrb	w3, [x19, #0x495]
    5474: aa1303e0     	mov	x0, x19
    5478: 528009c1     	mov	w1, #0x4e               // =78
    547c: 128000e2     	mov	w2, #-0x8               // =-8
    5480: 94000000     	bl	0x5480 <aw8693x_ram_get_f0+0xa8>
		0000000000005480:  R_AARCH64_CALL26	i2c_w_bits
    5484: 90000014     	adrp	x20, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5488: 91000294     	add	x20, x20, #0x0
		0000000000005488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    548c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000548c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x628
    5490: 91000000     	add	x0, x0, #0x0
		0000000000005490:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x628
    5494: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005494:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x404
    5498: 91000063     	add	x3, x3, #0x0
		0000000000005498:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x404
    549c: aa1403e1     	mov	x1, x20
    54a0: 528049e2     	mov	w2, #0x24f              // =591
    54a4: 94000000     	bl	0x54a4 <aw8693x_ram_get_f0+0xcc>
		00000000000054a4:  R_AARCH64_CALL26	_printk
    54a8: 52800036     	mov	w22, #0x1               // =1
    54ac: aa1303e0     	mov	x0, x19
    54b0: 52800101     	mov	w1, #0x8                // =8
    54b4: 12800062     	mov	w2, #-0x4               // =-4
    54b8: 2a1f03e3     	mov	w3, wzr
    54bc: 39005e76     	strb	w22, [x19, #0x17]
    54c0: 94000000     	bl	0x54c0 <aw8693x_ram_get_f0+0xe8>
		00000000000054c0:  R_AARCH64_CALL26	i2c_w_bits
    54c4: aa1303e0     	mov	x0, x19
    54c8: 52800101     	mov	w1, #0x8                // =8
    54cc: 12800082     	mov	w2, #-0x5               // =-5
    54d0: 2a1f03e3     	mov	w3, wzr
    54d4: 94000000     	bl	0x54d4 <aw8693x_ram_get_f0+0xfc>
		00000000000054d4:  R_AARCH64_CALL26	i2c_w_bits
    54d8: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000054d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf8
    54dc: 91000000     	add	x0, x0, #0x0
		00000000000054dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf8
    54e0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000054e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11b
    54e4: 91000063     	add	x3, x3, #0x0
		00000000000054e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11b
    54e8: aa1403e1     	mov	x1, x20
    54ec: 52803f02     	mov	w2, #0x1f8              // =504
    54f0: 94000000     	bl	0x54f0 <aw8693x_ram_get_f0+0x118>
		00000000000054f0:  R_AARCH64_CALL26	_printk
    54f4: aa1303e0     	mov	x0, x19
    54f8: 528000c1     	mov	w1, #0x6                // =6
    54fc: 12800402     	mov	w2, #-0x21              // =-33
    5500: 52800403     	mov	w3, #0x20               // =32
    5504: 94000000     	bl	0x5504 <aw8693x_ram_get_f0+0x12c>
		0000000000005504:  R_AARCH64_CALL26	i2c_w_bits
    5508: aa1303e0     	mov	x0, x19
    550c: 52800981     	mov	w1, #0x4c               // =76
    5510: 12800802     	mov	w2, #-0x41              // =-65
    5514: 2a1f03e3     	mov	w3, wzr
    5518: 94000000     	bl	0x5518 <aw8693x_ram_get_f0+0x140>
		0000000000005518:  R_AARCH64_CALL26	i2c_w_bits
    551c: aa1303e0     	mov	x0, x19
    5520: 52800301     	mov	w1, #0x18               // =24
    5524: 12800402     	mov	w2, #-0x21              // =-33
    5528: 52800403     	mov	w3, #0x20               // =32
    552c: 94000000     	bl	0x552c <aw8693x_ram_get_f0+0x154>
		000000000000552c:  R_AARCH64_CALL26	i2c_w_bits
    5530: 910003e2     	mov	x2, sp
    5534: aa1303e0     	mov	x0, x19
    5538: 52800101     	mov	w1, #0x8                // =8
    553c: 52800023     	mov	w3, #0x1                // =1
    5540: 94000000     	bl	0x5540 <aw8693x_ram_get_f0+0x168>
		0000000000005540:  R_AARCH64_CALL26	i2c_r_bytes
    5544: 394003f5     	ldrb	w21, [sp]
    5548: aa1303e0     	mov	x0, x19
    554c: 52800101     	mov	w1, #0x8                // =8
    5550: 12800082     	mov	w2, #-0x5               // =-5
    5554: 52800083     	mov	w3, #0x4                // =4
    5558: 94000000     	bl	0x5558 <aw8693x_ram_get_f0+0x180>
		0000000000005558:  R_AARCH64_CALL26	i2c_w_bits
    555c: aa1303e0     	mov	x0, x19
    5560: 528000c1     	mov	w1, #0x6                // =6
    5564: 128003e2     	mov	w2, #-0x20              // =-32
    5568: 528001a3     	mov	w3, #0xd                // =13
    556c: 94000000     	bl	0x556c <aw8693x_ram_get_f0+0x194>
		000000000000556c:  R_AARCH64_CALL26	i2c_w_bits
    5570: 528000a8     	mov	w8, #0x5                // =5
    5574: 910013e2     	add	x2, sp, #0x4
    5578: aa1303e0     	mov	x0, x19
    557c: 52800141     	mov	w1, #0xa                // =10
    5580: 52800023     	mov	w3, #0x1                // =1
    5584: 390013e8     	strb	w8, [sp, #0x4]
    5588: 94000000     	bl	0x5588 <aw8693x_ram_get_f0+0x1b0>
		0000000000005588:  R_AARCH64_CALL26	i2c_w_bytes
    558c: 910023e2     	add	x2, sp, #0x8
    5590: aa1303e0     	mov	x0, x19
    5594: 52800161     	mov	w1, #0xb                // =11
    5598: 52800023     	mov	w3, #0x1                // =1
    559c: 390023ff     	strb	wzr, [sp, #0x8]
    55a0: 94000000     	bl	0x55a0 <aw8693x_ram_get_f0+0x1c8>
		00000000000055a0:  R_AARCH64_CALL26	i2c_w_bytes
    55a4: aa1303e0     	mov	x0, x19
    55a8: 52800241     	mov	w1, #0x12               // =18
    55ac: 12801e02     	mov	w2, #-0xf1              // =-241
    55b0: 52800403     	mov	w3, #0x20               // =32
    55b4: 94000000     	bl	0x55b4 <aw8693x_ram_get_f0+0x1dc>
		00000000000055b4:  R_AARCH64_CALL26	i2c_w_bits
    55b8: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000055b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3b1
    55bc: 91000000     	add	x0, x0, #0x0
		00000000000055bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3b1
    55c0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000055c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d3
    55c4: 91000063     	add	x3, x3, #0x0
		00000000000055c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d3
    55c8: aa1403e1     	mov	x1, x20
    55cc: 52803ae2     	mov	w2, #0x1d7              // =471
    55d0: 52800024     	mov	w4, #0x1                // =1
    55d4: 94000000     	bl	0x55d4 <aw8693x_ram_get_f0+0x1fc>
		00000000000055d4:  R_AARCH64_CALL26	_printk
    55d8: 910033e2     	add	x2, sp, #0xc
    55dc: aa1303e0     	mov	x0, x19
    55e0: 52800121     	mov	w1, #0x9                // =9
    55e4: 52800023     	mov	w3, #0x1                // =1
    55e8: 390033f6     	strb	w22, [sp, #0xc]
    55ec: 94000000     	bl	0x55ec <aw8693x_ram_get_f0+0x214>
		00000000000055ec:  R_AARCH64_CALL26	i2c_w_bytes
    55f0: 5289c400     	mov	w0, #0x4e20             // =20000
    55f4: 528a0281     	mov	w1, #0x5014             // =20500
    55f8: 52800042     	mov	w2, #0x2                // =2
    55fc: 94000000     	bl	0x55fc <aw8693x_ram_get_f0+0x224>
		00000000000055fc:  R_AARCH64_CALL26	usleep_range_state
    5600: 12800c74     	mov	w20, #-0x64             // =-100
    5604: 910043e2     	add	x2, sp, #0x10
    5608: aa1303e0     	mov	x0, x19
    560c: 528007e1     	mov	w1, #0x3f               // =63
    5610: 52800023     	mov	w3, #0x1                // =1
    5614: 390043ff     	strb	wzr, [sp, #0x10]
    5618: 94000000     	bl	0x5618 <aw8693x_ram_get_f0+0x240>
		0000000000005618:  R_AARCH64_CALL26	i2c_r_bytes
    561c: 394043e8     	ldrb	w8, [sp, #0x10]
    5620: 340001e8     	cbz	w8, 0x565c <aw8693x_ram_get_f0+0x284>
    5624: 5280fa00     	mov	w0, #0x7d0              // =2000
    5628: 52813881     	mov	w1, #0x9c4              // =2500
    562c: 52800042     	mov	w2, #0x2                // =2
    5630: 94000000     	bl	0x5630 <aw8693x_ram_get_f0+0x258>
		0000000000005630:  R_AARCH64_CALL26	usleep_range_state
    5634: 31000694     	adds	w20, w20, #0x1
    5638: 54fffe63     	b.lo	0x5604 <aw8693x_ram_get_f0+0x22c>
    563c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000563c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    5640: 91000000     	add	x0, x0, #0x0
		0000000000005640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    5644: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5648: 91000021     	add	x1, x1, #0x0
		0000000000005648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    564c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000564c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e
    5650: 91000063     	add	x3, x3, #0x0
		0000000000005650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e
    5654: 52803de2     	mov	w2, #0x1ef              // =495
    5658: 14000008     	b	0x5678 <aw8693x_ram_get_f0+0x2a0>
    565c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000565c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe69
    5660: 91000000     	add	x0, x0, #0x0
		0000000000005660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe69
    5664: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5668: 91000021     	add	x1, x1, #0x0
		0000000000005668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    566c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000566c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e
    5670: 91000063     	add	x3, x3, #0x0
		0000000000005670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e
    5674: 52803d42     	mov	w2, #0x1ea              // =490
    5678: 94000000     	bl	0x5678 <aw8693x_ram_get_f0+0x2a0>
		0000000000005678:  R_AARCH64_CALL26	_printk
    567c: d10033a2     	sub	x2, x29, #0xc
    5680: aa1303e0     	mov	x0, x19
    5684: 528004e1     	mov	w1, #0x27               // =39
    5688: 52800043     	mov	w3, #0x2                // =2
    568c: 781f43bf     	sturh	wzr, [x29, #-0xc]
    5690: 94000000     	bl	0x5690 <aw8693x_ram_get_f0+0x2b8>
		0000000000005690:  R_AARCH64_CALL26	i2c_r_bytes
    5694: 785f43a8     	ldurh	w8, [x29, #-0xc]
    5698: 5ac00508     	rev16	w8, w8
    569c: 35000188     	cbnz	w8, 0x56cc <aw8693x_ram_get_f0+0x2f4>
    56a0: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000056a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x478
    56a4: 91000000     	add	x0, x0, #0x0
		00000000000056a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x478
    56a8: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000056a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    56ac: 91000021     	add	x1, x1, #0x0
		00000000000056ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    56b0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000056b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf0c
    56b4: 91000063     	add	x3, x3, #0x0
		00000000000056b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf0c
    56b8: 52809582     	mov	w2, #0x4ac              // =1196
    56bc: b900627f     	str	wzr, [x19, #0x60]
    56c0: 94000000     	bl	0x56c0 <aw8693x_ram_get_f0+0x2e8>
		00000000000056c0:  R_AARCH64_CALL26	_printk
    56c4: 12800434     	mov	w20, #-0x22             // =-34
    56c8: 1400000f     	b	0x5704 <aw8693x_ram_get_f0+0x32c>
    56cc: 52930009     	mov	w9, #0x9800             // =38912
    56d0: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000056d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a6
    56d4: 91000000     	add	x0, x0, #0x0
		00000000000056d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a6
    56d8: 72a00749     	movk	w9, #0x3a, lsl #16
    56dc: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000056dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    56e0: 91000021     	add	x1, x1, #0x0
		00000000000056e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    56e4: 1ac80924     	udiv	w4, w9, w8
    56e8: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000056e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf0c
    56ec: 91000063     	add	x3, x3, #0x0
		00000000000056ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf0c
    56f0: 52809622     	mov	w2, #0x4b1              // =1201
    56f4: b9006264     	str	w4, [x19, #0x60]
    56f8: b9007264     	str	w4, [x19, #0x70]
    56fc: 94000000     	bl	0x56fc <aw8693x_ram_get_f0+0x324>
		00000000000056fc:  R_AARCH64_CALL26	_printk
    5700: 2a1f03f4     	mov	w20, wzr
    5704: 3940c268     	ldrb	w8, [x19, #0x30]
    5708: 528000a9     	mov	w9, #0x5                // =5
    570c: aa1303e0     	mov	x0, x19
    5710: 528000c1     	mov	w1, #0x6                // =6
    5714: 128003e2     	mov	w2, #-0x20              // =-32
    5718: 7100151f     	cmp	w8, #0x5
    571c: 1a898108     	csel	w8, w8, w9, hi
    5720: 52800329     	mov	w9, #0x19               // =25
    5724: 7100651f     	cmp	w8, #0x19
    5728: 1a893103     	csel	w3, w8, w9, lo
    572c: 94000000     	bl	0x572c <aw8693x_ram_get_f0+0x354>
		000000000000572c:  R_AARCH64_CALL26	i2c_w_bits
    5730: aa1303e0     	mov	x0, x19
    5734: 52800301     	mov	w1, #0x18               // =24
    5738: 12800402     	mov	w2, #-0x21              // =-33
    573c: 2a1f03e3     	mov	w3, wzr
    5740: 94000000     	bl	0x5740 <aw8693x_ram_get_f0+0x368>
		0000000000005740:  R_AARCH64_CALL26	i2c_w_bits
    5744: aa1303e0     	mov	x0, x19
    5748: 52800101     	mov	w1, #0x8                // =8
    574c: 12800082     	mov	w2, #-0x5               // =-5
    5750: 37100075     	tbnz	w21, #0x2, 0x575c <aw8693x_ram_get_f0+0x384>
    5754: 2a1f03e3     	mov	w3, wzr
    5758: 14000002     	b	0x5760 <aw8693x_ram_get_f0+0x388>
    575c: 52800083     	mov	w3, #0x4                // =4
    5760: 94000000     	bl	0x5760 <aw8693x_ram_get_f0+0x388>
		0000000000005760:  R_AARCH64_CALL26	i2c_w_bits
    5764: 2a1403e0     	mov	w0, w20
    5768: d5384108     	mrs	x8, SP_EL0
    576c: f9438908     	ldr	x8, [x8, #0x710]
    5770: f85f83a9     	ldur	x9, [x29, #-0x8]
    5774: eb09011f     	cmp	x8, x9
    5778: 540000e1     	b.ne	0x5794 <aw8693x_ram_get_f0+0x3bc>
    577c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    5780: a94357f6     	ldp	x22, x21, [sp, #0x30]
    5784: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    5788: 910143ff     	add	sp, sp, #0x50
    578c: d50323bf     	autiasp
    5790: d65f03c0     	ret
    5794: 94000000     	bl	0x5794 <aw8693x_ram_get_f0+0x3bc>
		0000000000005794:  R_AARCH64_CALL26	__stack_chk_fail
