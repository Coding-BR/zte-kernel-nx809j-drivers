
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000005a8 <nb_fan_parse_dt>:
     5a8: d503233f     	paciasp
     5ac: d101c3ff     	sub	sp, sp, #0x70
     5b0: a9027bfd     	stp	x29, x30, [sp, #0x20]
     5b4: a90367fa     	stp	x26, x25, [sp, #0x30]
     5b8: a9045ff8     	stp	x24, x23, [sp, #0x40]
     5bc: a90557f6     	stp	x22, x21, [sp, #0x50]
     5c0: a9064ff4     	stp	x20, x19, [sp, #0x60]
     5c4: 910083fd     	add	x29, sp, #0x20
     5c8: d5384108     	mrs	x8, SP_EL0
     5cc: aa0003f3     	mov	x19, x0
     5d0: aa1f03e1     	mov	x1, xzr
     5d4: f9438908     	ldr	x8, [x8, #0x710]
     5d8: f81f83a8     	stur	x8, [x29, #-0x8]
     5dc: f9400008     	ldr	x8, [x0]
     5e0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     5e4: f90003ff     	str	xzr, [sp]
     5e8: f9417514     	ldr	x20, [x8, #0x2e8]
     5ec: aa1403e0     	mov	x0, x20
     5f0: 94000000     	bl	0x5f0 <nb_fan_parse_dt+0x48>
		00000000000005f0:  R_AARCH64_CALL26	of_get_next_available_child
     5f4: b4000ca0     	cbz	x0, 0x788 <nb_fan_parse_dt+0x1e0>
     5f8: aa0003e1     	mov	x1, x0
     5fc: 12800015     	mov	w21, #-0x1              // =-1
     600: aa1403e0     	mov	x0, x20
     604: 94000000     	bl	0x604 <nb_fan_parse_dt+0x5c>
		0000000000000604:  R_AARCH64_CALL26	of_get_next_available_child
     608: aa0003e1     	mov	x1, x0
     60c: 110006b5     	add	w21, w21, #0x1
     610: b5ffff80     	cbnz	x0, 0x600 <nb_fan_parse_dt+0x58>
     614: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
     618: 6b0802bf     	cmp	w21, w8
     61c: 54000b62     	b.hs	0x788 <nb_fan_parse_dt+0x1e0>
     620: 35000c95     	cbnz	w21, 0x7b0 <nb_fan_parse_dt+0x208>
     624: f9400260     	ldr	x0, [x19]
     628: 52801501     	mov	w1, #0xa8               // =168
     62c: 5281b802     	mov	w2, #0xdc0              // =3520
     630: 94000000     	bl	0x630 <nb_fan_parse_dt+0x88>
		0000000000000630:  R_AARCH64_CALL26	devm_kmalloc
     634: f9000660     	str	x0, [x19, #0x8]
     638: b4000d40     	cbz	x0, 0x7e0 <nb_fan_parse_dt+0x238>
     63c: aa1403e0     	mov	x0, x20
     640: aa1f03e1     	mov	x1, xzr
     644: 94000000     	bl	0x644 <nb_fan_parse_dt+0x9c>
		0000000000000644:  R_AARCH64_CALL26	of_get_next_available_child
     648: b4000940     	cbz	x0, 0x770 <nb_fan_parse_dt+0x1c8>
     64c: aa0003f5     	mov	x21, x0
     650: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95e
     654: 910002d6     	add	x22, x22, #0x0
		0000000000000654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95e
     658: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x230
     65c: 910002f7     	add	x23, x23, #0x0
		000000000000065c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x230
     660: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     664: 91000318     	add	x24, x24, #0x0
		0000000000000664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     668: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000668:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     66c: 91000339     	add	x25, x25, #0x0
		000000000000066c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     670: 14000006     	b	0x688 <nb_fan_parse_dt+0xe0>
     674: aa1403e0     	mov	x0, x20
     678: aa1503e1     	mov	x1, x21
     67c: 94000000     	bl	0x67c <nb_fan_parse_dt+0xd4>
		000000000000067c:  R_AARCH64_CALL26	of_get_next_available_child
     680: aa0003f5     	mov	x21, x0
     684: b4000760     	cbz	x0, 0x770 <nb_fan_parse_dt+0x1c8>
     688: aa1503e0     	mov	x0, x21
     68c: aa1603e1     	mov	x1, x22
     690: aa1f03e2     	mov	x2, xzr
     694: 94000000     	bl	0x694 <nb_fan_parse_dt+0xec>
		0000000000000694:  R_AARCH64_CALL26	of_get_property
     698: b5000060     	cbnz	x0, 0x6a4 <nb_fan_parse_dt+0xfc>
     69c: f94002a0     	ldr	x0, [x21]
     6a0: b4001000     	cbz	x0, 0x8a0 <nb_fan_parse_dt+0x2f8>
     6a4: 39400008     	ldrb	w8, [x0]
     6a8: 71019908     	subs	w8, w8, #0x66
     6ac: 54000081     	b.ne	0x6bc <nb_fan_parse_dt+0x114>
     6b0: 39400408     	ldrb	w8, [x0, #0x1]
     6b4: 71018508     	subs	w8, w8, #0x61
     6b8: 54000540     	b.eq	0x760 <nb_fan_parse_dt+0x1b8>
     6bc: 35fffdc8     	cbnz	w8, 0x674 <nb_fan_parse_dt+0xcc>
     6c0: f9400668     	ldr	x8, [x19, #0x8]
     6c4: b4fffd88     	cbz	x8, 0x674 <nb_fan_parse_dt+0xcc>
     6c8: aa0003fa     	mov	x26, x0
     6cc: f9400260     	ldr	x0, [x19]
     6d0: 910062a1     	add	x1, x21, #0x18
     6d4: aa1f03e2     	mov	x2, xzr
     6d8: 94000000     	bl	0x6d8 <nb_fan_parse_dt+0x130>
		00000000000006d8:  R_AARCH64_CALL26	devm_fwnode_pwm_get
     6dc: b13ffc1f     	cmn	x0, #0xfff
     6e0: 540004c2     	b.hs	0x778 <nb_fan_parse_dt+0x1d0>
     6e4: f9400668     	ldr	x8, [x19, #0x8]
     6e8: 910003e2     	mov	x2, sp
     6ec: f900111a     	str	x26, [x8, #0x20]
     6f0: f9400668     	ldr	x8, [x19, #0x8]
     6f4: f9003500     	str	x0, [x8, #0x68]
     6f8: f9400668     	ldr	x8, [x19, #0x8]
     6fc: f9403501     	ldr	x1, [x8, #0x68]
     700: a941a820     	ldp	x0, x10, [x1, #0x18]
     704: f9402028     	ldr	x8, [x1, #0x40]
     708: b9402829     	ldr	w9, [x1, #0x28]
     70c: a900a3ff     	stp	xzr, x8, [sp, #0x8]
     710: f941c808     	ldr	x8, [x0, #0x390]
     714: b90013e9     	str	w9, [sp, #0x10]
     718: f90003ea     	str	x10, [sp]
     71c: f9400d08     	ldr	x8, [x8, #0x18]
     720: 79002bff     	strh	wzr, [sp, #0x14]
     724: b85fc110     	ldur	w16, [x8, #-0x4]
     728: 7292fa11     	movk	w17, #0x97d0
     72c: 72bbba11     	movk	w17, #0xddd0, lsl #16
     730: 6b11021f     	cmp	w16, w17
     734: 54000040     	b.eq	0x73c <nb_fan_parse_dt+0x194>
     738: d4304500     	brk	#0x8228
     73c: d63f0100     	blr	x8
     740: 35000640     	cbnz	w0, 0x808 <nb_fan_parse_dt+0x260>
     744: aa1703e0     	mov	x0, x23
     748: aa1803e1     	mov	x1, x24
     74c: aa1903e2     	mov	x2, x25
     750: 52805c83     	mov	w3, #0x2e4              // =740
     754: aa1a03e4     	mov	x4, x26
     758: 94000000     	bl	0x758 <nb_fan_parse_dt+0x1b0>
		0000000000000758:  R_AARCH64_CALL26	_printk
     75c: 17ffffc6     	b	0x674 <nb_fan_parse_dt+0xcc>
     760: 39400808     	ldrb	w8, [x0, #0x2]
     764: 5101b908     	sub	w8, w8, #0x6e
     768: 35fff868     	cbnz	w8, 0x674 <nb_fan_parse_dt+0xcc>
     76c: 17ffffd5     	b	0x6c0 <nb_fan_parse_dt+0x118>
     770: 2a1f03f3     	mov	w19, wzr
     774: 1400003d     	b	0x868 <nb_fan_parse_dt+0x2c0>
     778: 3108141f     	cmn	w0, #0x205
     77c: 540005e1     	b.ne	0x838 <nb_fan_parse_dt+0x290>
     780: 12804093     	mov	w19, #-0x205            // =-517
     784: 14000039     	b	0x868 <nb_fan_parse_dt+0x2c0>
     788: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73d
     78c: 91000000     	add	x0, x0, #0x0
		000000000000078c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73d
     790: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000790:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     794: 91000021     	add	x1, x1, #0x0
		0000000000000794:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     798: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000798:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     79c: 91000042     	add	x2, x2, #0x0
		000000000000079c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     7a0: 52805443     	mov	w3, #0x2a2              // =674
     7a4: 94000000     	bl	0x7a4 <nb_fan_parse_dt+0x1fc>
		00000000000007a4:  R_AARCH64_CALL26	_printk
     7a8: 12800253     	mov	w19, #-0x13             // =-19
     7ac: 1400002f     	b	0x868 <nb_fan_parse_dt+0x2c0>
     7b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x50f
     7b4: 91000000     	add	x0, x0, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x50f
     7b8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     7bc: 91000021     	add	x1, x1, #0x0
		00000000000007bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     7c0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     7c4: 91000042     	add	x2, x2, #0x0
		00000000000007c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     7c8: 110006a4     	add	w4, w21, #0x1
     7cc: 528054e3     	mov	w3, #0x2a7              // =679
     7d0: 52800025     	mov	w5, #0x1                // =1
     7d4: 94000000     	bl	0x7d4 <nb_fan_parse_dt+0x22c>
		00000000000007d4:  R_AARCH64_CALL26	_printk
     7d8: 128002b3     	mov	w19, #-0x16             // =-22
     7dc: 14000023     	b	0x868 <nb_fan_parse_dt+0x2c0>
     7e0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a3
     7e4: 91000000     	add	x0, x0, #0x0
		00000000000007e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a3
     7e8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000007e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     7ec: 91000021     	add	x1, x1, #0x0
		00000000000007ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     7f0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     7f4: 91000042     	add	x2, x2, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     7f8: 528057a3     	mov	w3, #0x2bd              // =701
     7fc: 94000000     	bl	0x7fc <nb_fan_parse_dt+0x254>
		00000000000007fc:  R_AARCH64_CALL26	_printk
     800: 12800173     	mov	w19, #-0xc              // =-12
     804: 14000019     	b	0x868 <nb_fan_parse_dt+0x2c0>
     808: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f7
     80c: 91000108     	add	x8, x8, #0x0
		000000000000080c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f7
     810: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     814: 91000021     	add	x1, x1, #0x0
		0000000000000814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     818: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000818:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     81c: 91000042     	add	x2, x2, #0x0
		000000000000081c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     820: aa0003f3     	mov	x19, x0
     824: aa0803e0     	mov	x0, x8
     828: 52805c23     	mov	w3, #0x2e1              // =737
     82c: aa1a03e4     	mov	x4, x26
     830: 94000000     	bl	0x830 <nb_fan_parse_dt+0x288>
		0000000000000830:  R_AARCH64_CALL26	_printk
     834: 1400000d     	b	0x868 <nb_fan_parse_dt+0x2c0>
     838: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x796
     83c: 91000108     	add	x8, x8, #0x0
		000000000000083c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x796
     840: aa0003f3     	mov	x19, x0
     844: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     848: 91000021     	add	x1, x1, #0x0
		0000000000000848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     84c: 90000002     	adrp	x2, 0x0 <.text>
		000000000000084c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     850: 91000042     	add	x2, x2, #0x0
		0000000000000850:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     854: aa0803e0     	mov	x0, x8
     858: 52805aa3     	mov	w3, #0x2d5              // =725
     85c: aa1a03e4     	mov	x4, x26
     860: 2a1303e5     	mov	w5, w19
     864: 94000000     	bl	0x864 <nb_fan_parse_dt+0x2bc>
		0000000000000864:  R_AARCH64_CALL26	_printk
     868: d5384108     	mrs	x8, SP_EL0
     86c: f9438908     	ldr	x8, [x8, #0x710]
     870: f85f83a9     	ldur	x9, [x29, #-0x8]
     874: eb09011f     	cmp	x8, x9
     878: 54000241     	b.ne	0x8c0 <nb_fan_parse_dt+0x318>
     87c: 2a1303e0     	mov	w0, w19
     880: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     884: a94557f6     	ldp	x22, x21, [sp, #0x50]
     888: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     88c: a94367fa     	ldp	x26, x25, [sp, #0x30]
     890: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     894: 9101c3ff     	add	sp, sp, #0x70
     898: d50323bf     	autiasp
     89c: d65f03c0     	ret
     8a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68d
     8a4: 91000000     	add	x0, x0, #0x0
		00000000000008a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68d
     8a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
     8ac: 91000021     	add	x1, x1, #0x0
		00000000000008ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
     8b0: 90000002     	adrp	x2, 0x0 <.text>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3b
     8b4: 91000042     	add	x2, x2, #0x0
		00000000000008b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3b
     8b8: 52805883     	mov	w3, #0x2c4              // =708
     8bc: 17ffffba     	b	0x7a4 <nb_fan_parse_dt+0x1fc>
     8c0: 94000000     	bl	0x8c0 <nb_fan_parse_dt+0x318>
		00000000000008c0:  R_AARCH64_CALL26	__stack_chk_fail
