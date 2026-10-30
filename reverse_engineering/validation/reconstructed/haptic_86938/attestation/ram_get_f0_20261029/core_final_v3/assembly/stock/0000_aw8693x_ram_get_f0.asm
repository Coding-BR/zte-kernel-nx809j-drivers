
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004a4 <aw8693x_ram_get_f0>:
     4a4: d503233f     	paciasp
     4a8: d10143ff     	sub	sp, sp, #0x50
     4ac: a9027bfd     	stp	x29, x30, [sp, #0x20]
     4b0: a90357f6     	stp	x22, x21, [sp, #0x30]
     4b4: a9044ff4     	stp	x20, x19, [sp, #0x40]
     4b8: 910083fd     	add	x29, sp, #0x20
     4bc: d5384108     	mrs	x8, SP_EL0
     4c0: f9438908     	ldr	x8, [x8, #0x710]
     4c4: f81f83a8     	stur	x8, [x29, #-0x8]
     4c8: 39401808     	ldrb	w8, [x0, #0x6]
     4cc: 390003ff     	strb	wzr, [sp]
     4d0: 360001a8     	tbz	w8, #0x0, 0x504 <aw8693x_ram_get_f0+0x60>
     4d4: 39517008     	ldrb	w8, [x0, #0x45c]
     4d8: aa0003f3     	mov	x19, x0
     4dc: 7100111f     	cmp	w8, #0x4
     4e0: 54000268     	b.hi	0x52c <aw8693x_ram_get_f0+0x88>
     4e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000004e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12df
     4e8: 91000000     	add	x0, x0, #0x0
		00000000000004e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12df
     4ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000004ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     4f0: 91000021     	add	x1, x1, #0x0
		00000000000004f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     4f4: 90000003     	adrp	x3, 0x0 <.text>
		00000000000004f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4d
     4f8: 91000063     	add	x3, x3, #0x0
		00000000000004f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4d
     4fc: 5280a1c2     	mov	w2, #0x50e              // =1294
     500: 14000008     	b	0x520 <aw8693x_ram_get_f0+0x7c>
     504: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab3
     508: 91000000     	add	x0, x0, #0x0
		0000000000000508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab3
     50c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000050c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     510: 91000021     	add	x1, x1, #0x0
		0000000000000510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     514: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000514:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4d
     518: 91000063     	add	x3, x3, #0x0
		0000000000000518:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4d
     51c: 5280a142     	mov	w2, #0x50a              // =1290
     520: 94000000     	bl	0x520 <aw8693x_ram_get_f0+0x7c>
		0000000000000520:  R_AARCH64_CALL26	_printk
     524: 12800420     	mov	w0, #-0x22              // =-34
     528: 140000c3     	b	0x834 <aw8693x_ram_get_f0+0x390>
     52c: b9446a68     	ldr	w8, [x19, #0x468]
     530: aa1303e0     	mov	x0, x19
     534: b9006268     	str	w8, [x19, #0x60]
     538: 9400027d     	bl	0xf2c <aw8693x_stop>
     53c: 39525663     	ldrb	w3, [x19, #0x495]
     540: aa1303e0     	mov	x0, x19
     544: 528009c1     	mov	w1, #0x4e               // =78
     548: 128000e2     	mov	w2, #-0x8               // =-8
     54c: 94000000     	bl	0x54c <aw8693x_ram_get_f0+0xa8>
		000000000000054c:  R_AARCH64_CALL26	i2c_w_bits
     550: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000550:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     554: 91000294     	add	x20, x20, #0x0
		0000000000000554:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     558: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1081
     55c: 91000000     	add	x0, x0, #0x0
		000000000000055c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1081
     560: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000560:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88e
     564: 91000063     	add	x3, x3, #0x0
		0000000000000564:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88e
     568: aa1403e1     	mov	x1, x20
     56c: 528049e2     	mov	w2, #0x24f              // =591
     570: 94000000     	bl	0x570 <aw8693x_ram_get_f0+0xcc>
		0000000000000570:  R_AARCH64_CALL26	_printk
     574: 52800036     	mov	w22, #0x1               // =1
     578: aa1303e0     	mov	x0, x19
     57c: 52800101     	mov	w1, #0x8                // =8
     580: 12800062     	mov	w2, #-0x4               // =-4
     584: 2a1f03e3     	mov	w3, wzr
     588: 39005e76     	strb	w22, [x19, #0x17]
     58c: 94000000     	bl	0x58c <aw8693x_ram_get_f0+0xe8>
		000000000000058c:  R_AARCH64_CALL26	i2c_w_bits
     590: aa1303e0     	mov	x0, x19
     594: 52800101     	mov	w1, #0x8                // =8
     598: 12800082     	mov	w2, #-0x5               // =-5
     59c: 2a1f03e3     	mov	w3, wzr
     5a0: 94000000     	bl	0x5a0 <aw8693x_ram_get_f0+0xfc>
		00000000000005a0:  R_AARCH64_CALL26	i2c_w_bits
     5a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000005a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b2
     5a8: 91000000     	add	x0, x0, #0x0
		00000000000005a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b2
     5ac: 90000003     	adrp	x3, 0x0 <.text>
		00000000000005ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26b
     5b0: 91000063     	add	x3, x3, #0x0
		00000000000005b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26b
     5b4: aa1403e1     	mov	x1, x20
     5b8: 52803f02     	mov	w2, #0x1f8              // =504
     5bc: 94000000     	bl	0x5bc <aw8693x_ram_get_f0+0x118>
		00000000000005bc:  R_AARCH64_CALL26	_printk
     5c0: aa1303e0     	mov	x0, x19
     5c4: 528000c1     	mov	w1, #0x6                // =6
     5c8: 12800402     	mov	w2, #-0x21              // =-33
     5cc: 52800403     	mov	w3, #0x20               // =32
     5d0: 94000000     	bl	0x5d0 <aw8693x_ram_get_f0+0x12c>
		00000000000005d0:  R_AARCH64_CALL26	i2c_w_bits
     5d4: aa1303e0     	mov	x0, x19
     5d8: 52800981     	mov	w1, #0x4c               // =76
     5dc: 12800802     	mov	w2, #-0x41              // =-65
     5e0: 2a1f03e3     	mov	w3, wzr
     5e4: 94000000     	bl	0x5e4 <aw8693x_ram_get_f0+0x140>
		00000000000005e4:  R_AARCH64_CALL26	i2c_w_bits
     5e8: aa1303e0     	mov	x0, x19
     5ec: 52800301     	mov	w1, #0x18               // =24
     5f0: 12800402     	mov	w2, #-0x21              // =-33
     5f4: 52800403     	mov	w3, #0x20               // =32
     5f8: 94000000     	bl	0x5f8 <aw8693x_ram_get_f0+0x154>
		00000000000005f8:  R_AARCH64_CALL26	i2c_w_bits
     5fc: 910003e2     	mov	x2, sp
     600: aa1303e0     	mov	x0, x19
     604: 52800101     	mov	w1, #0x8                // =8
     608: 52800023     	mov	w3, #0x1                // =1
     60c: 94000000     	bl	0x60c <aw8693x_ram_get_f0+0x168>
		000000000000060c:  R_AARCH64_CALL26	i2c_r_bytes
     610: 394003f5     	ldrb	w21, [sp]
     614: aa1303e0     	mov	x0, x19
     618: 52800101     	mov	w1, #0x8                // =8
     61c: 12800082     	mov	w2, #-0x5               // =-5
     620: 52800083     	mov	w3, #0x4                // =4
     624: 94000000     	bl	0x624 <aw8693x_ram_get_f0+0x180>
		0000000000000624:  R_AARCH64_CALL26	i2c_w_bits
     628: aa1303e0     	mov	x0, x19
     62c: 528000c1     	mov	w1, #0x6                // =6
     630: 128003e2     	mov	w2, #-0x20              // =-32
     634: 528001a3     	mov	w3, #0xd                // =13
     638: 94000000     	bl	0x638 <aw8693x_ram_get_f0+0x194>
		0000000000000638:  R_AARCH64_CALL26	i2c_w_bits
     63c: 528000a8     	mov	w8, #0x5                // =5
     640: 910013e2     	add	x2, sp, #0x4
     644: aa1303e0     	mov	x0, x19
     648: 52800141     	mov	w1, #0xa                // =10
     64c: 52800023     	mov	w3, #0x1                // =1
     650: 390013e8     	strb	w8, [sp, #0x4]
     654: 94000000     	bl	0x654 <aw8693x_ram_get_f0+0x1b0>
		0000000000000654:  R_AARCH64_CALL26	i2c_w_bytes
     658: 910023e2     	add	x2, sp, #0x8
     65c: aa1303e0     	mov	x0, x19
     660: 52800161     	mov	w1, #0xb                // =11
     664: 52800023     	mov	w3, #0x1                // =1
     668: 390023ff     	strb	wzr, [sp, #0x8]
     66c: 94000000     	bl	0x66c <aw8693x_ram_get_f0+0x1c8>
		000000000000066c:  R_AARCH64_CALL26	i2c_w_bytes
     670: aa1303e0     	mov	x0, x19
     674: 52800241     	mov	w1, #0x12               // =18
     678: 12801e02     	mov	w2, #-0xf1              // =-241
     67c: 52800403     	mov	w3, #0x20               // =32
     680: 94000000     	bl	0x680 <aw8693x_ram_get_f0+0x1dc>
		0000000000000680:  R_AARCH64_CALL26	i2c_w_bits
     684: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85c
     688: 91000000     	add	x0, x0, #0x0
		0000000000000688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85c
     68c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87e
     690: 91000063     	add	x3, x3, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87e
     694: aa1403e1     	mov	x1, x20
     698: 52803ae2     	mov	w2, #0x1d7              // =471
     69c: 52800024     	mov	w4, #0x1                // =1
     6a0: 94000000     	bl	0x6a0 <aw8693x_ram_get_f0+0x1fc>
		00000000000006a0:  R_AARCH64_CALL26	_printk
     6a4: 910033e2     	add	x2, sp, #0xc
     6a8: aa1303e0     	mov	x0, x19
     6ac: 52800121     	mov	w1, #0x9                // =9
     6b0: 52800023     	mov	w3, #0x1                // =1
     6b4: 390033f6     	strb	w22, [sp, #0xc]
     6b8: 94000000     	bl	0x6b8 <aw8693x_ram_get_f0+0x214>
		00000000000006b8:  R_AARCH64_CALL26	i2c_w_bytes
     6bc: 5289c400     	mov	w0, #0x4e20             // =20000
     6c0: 528a0281     	mov	w1, #0x5014             // =20500
     6c4: 52800042     	mov	w2, #0x2                // =2
     6c8: 94000000     	bl	0x6c8 <aw8693x_ram_get_f0+0x224>
		00000000000006c8:  R_AARCH64_CALL26	usleep_range_state
     6cc: 12800c74     	mov	w20, #-0x64             // =-100
     6d0: 910043e2     	add	x2, sp, #0x10
     6d4: aa1303e0     	mov	x0, x19
     6d8: 528007e1     	mov	w1, #0x3f               // =63
     6dc: 52800023     	mov	w3, #0x1                // =1
     6e0: 390043ff     	strb	wzr, [sp, #0x10]
     6e4: 94000000     	bl	0x6e4 <aw8693x_ram_get_f0+0x240>
		00000000000006e4:  R_AARCH64_CALL26	i2c_r_bytes
     6e8: 394043e8     	ldrb	w8, [sp, #0x10]
     6ec: 340001e8     	cbz	w8, 0x728 <aw8693x_ram_get_f0+0x284>
     6f0: 5280fa00     	mov	w0, #0x7d0              // =2000
     6f4: 52813881     	mov	w1, #0x9c4              // =2500
     6f8: 52800042     	mov	w2, #0x2                // =2
     6fc: 94000000     	bl	0x6fc <aw8693x_ram_get_f0+0x258>
		00000000000006fc:  R_AARCH64_CALL26	usleep_range_state
     700: 31000694     	adds	w20, w20, #0x1
     704: 54fffe63     	b.lo	0x6d0 <aw8693x_ram_get_f0+0x22c>
     708: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa
     70c: 91000000     	add	x0, x0, #0x0
		000000000000070c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa
     710: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     714: 91000021     	add	x1, x1, #0x0
		0000000000000714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     718: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
     71c: 91000063     	add	x3, x3, #0x0
		000000000000071c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
     720: 52803de2     	mov	w2, #0x1ef              // =495
     724: 14000008     	b	0x744 <aw8693x_ram_get_f0+0x2a0>
     728: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x27ca
     72c: 91000000     	add	x0, x0, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x27ca
     730: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     734: 91000021     	add	x1, x1, #0x0
		0000000000000734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     738: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c4
     73c: 91000063     	add	x3, x3, #0x0
		000000000000073c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c4
     740: 52803d42     	mov	w2, #0x1ea              // =490
     744: 94000000     	bl	0x744 <aw8693x_ram_get_f0+0x2a0>
		0000000000000744:  R_AARCH64_CALL26	_printk
     748: d10033a2     	sub	x2, x29, #0xc
     74c: aa1303e0     	mov	x0, x19
     750: 528004e1     	mov	w1, #0x27               // =39
     754: 52800043     	mov	w3, #0x2                // =2
     758: 781f43bf     	sturh	wzr, [x29, #-0xc]
     75c: 94000000     	bl	0x75c <aw8693x_ram_get_f0+0x2b8>
		000000000000075c:  R_AARCH64_CALL26	i2c_r_bytes
     760: 785f43a8     	ldurh	w8, [x29, #-0xc]
     764: 5ac00508     	rev16	w8, w8
     768: 35000188     	cbnz	w8, 0x798 <aw8693x_ram_get_f0+0x2f4>
     76c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbe3
     770: 91000000     	add	x0, x0, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbe3
     774: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     778: 91000021     	add	x1, x1, #0x0
		0000000000000778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     77c: 90000003     	adrp	x3, 0x0 <.text>
		000000000000077c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x287f
     780: 91000063     	add	x3, x3, #0x0
		0000000000000780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x287f
     784: 52809582     	mov	w2, #0x4ac              // =1196
     788: b900627f     	str	wzr, [x19, #0x60]
     78c: 94000000     	bl	0x78c <aw8693x_ram_get_f0+0x2e8>
		000000000000078c:  R_AARCH64_CALL26	_printk
     790: 12800434     	mov	w20, #-0x22             // =-34
     794: 1400000f     	b	0x7d0 <aw8693x_ram_get_f0+0x32c>
     798: 52930009     	mov	w9, #0x9800             // =38912
     79c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000079c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc11
     7a0: 91000000     	add	x0, x0, #0x0
		00000000000007a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc11
     7a4: 72a00749     	movk	w9, #0x3a, lsl #16
     7a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     7ac: 91000021     	add	x1, x1, #0x0
		00000000000007ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     7b0: 1ac80924     	udiv	w4, w9, w8
     7b4: 90000003     	adrp	x3, 0x0 <.text>
		00000000000007b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x287f
     7b8: 91000063     	add	x3, x3, #0x0
		00000000000007b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x287f
     7bc: 52809622     	mov	w2, #0x4b1              // =1201
     7c0: b9006264     	str	w4, [x19, #0x60]
     7c4: b9007264     	str	w4, [x19, #0x70]
     7c8: 94000000     	bl	0x7c8 <aw8693x_ram_get_f0+0x324>
		00000000000007c8:  R_AARCH64_CALL26	_printk
     7cc: 2a1f03f4     	mov	w20, wzr
     7d0: 3940c268     	ldrb	w8, [x19, #0x30]
     7d4: 528000a9     	mov	w9, #0x5                // =5
     7d8: aa1303e0     	mov	x0, x19
     7dc: 528000c1     	mov	w1, #0x6                // =6
     7e0: 128003e2     	mov	w2, #-0x20              // =-32
     7e4: 7100151f     	cmp	w8, #0x5
     7e8: 1a898108     	csel	w8, w8, w9, hi
     7ec: 52800329     	mov	w9, #0x19               // =25
     7f0: 7100651f     	cmp	w8, #0x19
     7f4: 1a893103     	csel	w3, w8, w9, lo
     7f8: 94000000     	bl	0x7f8 <aw8693x_ram_get_f0+0x354>
		00000000000007f8:  R_AARCH64_CALL26	i2c_w_bits
     7fc: aa1303e0     	mov	x0, x19
     800: 52800301     	mov	w1, #0x18               // =24
     804: 12800402     	mov	w2, #-0x21              // =-33
     808: 2a1f03e3     	mov	w3, wzr
     80c: 94000000     	bl	0x80c <aw8693x_ram_get_f0+0x368>
		000000000000080c:  R_AARCH64_CALL26	i2c_w_bits
     810: aa1303e0     	mov	x0, x19
     814: 52800101     	mov	w1, #0x8                // =8
     818: 12800082     	mov	w2, #-0x5               // =-5
     81c: 37100075     	tbnz	w21, #0x2, 0x828 <aw8693x_ram_get_f0+0x384>
     820: 2a1f03e3     	mov	w3, wzr
     824: 14000002     	b	0x82c <aw8693x_ram_get_f0+0x388>
     828: 52800083     	mov	w3, #0x4                // =4
     82c: 94000000     	bl	0x82c <aw8693x_ram_get_f0+0x388>
		000000000000082c:  R_AARCH64_CALL26	i2c_w_bits
     830: 2a1403e0     	mov	w0, w20
     834: d5384108     	mrs	x8, SP_EL0
     838: f9438908     	ldr	x8, [x8, #0x710]
     83c: f85f83a9     	ldur	x9, [x29, #-0x8]
     840: eb09011f     	cmp	x8, x9
     844: 540000e1     	b.ne	0x860 <aw8693x_ram_get_f0+0x3bc>
     848: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     84c: a94357f6     	ldp	x22, x21, [sp, #0x30]
     850: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     854: 910143ff     	add	sp, sp, #0x50
     858: d50323bf     	autiasp
     85c: d65f03c0     	ret
     860: 94000000     	bl	0x860 <aw8693x_ram_get_f0+0x3bc>
		0000000000000860:  R_AARCH64_CALL26	__stack_chk_fail
