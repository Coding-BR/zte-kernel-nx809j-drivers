
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000608 <gf_probe>:
     608: d503233f     	paciasp
     60c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     610: a9015ff8     	stp	x24, x23, [sp, #0x10]
     614: a90257f6     	stp	x22, x21, [sp, #0x20]
     618: a9034ff4     	stp	x20, x19, [sp, #0x30]
     61c: 910003fd     	mov	x29, sp
     620: aa0003f3     	mov	x19, x0
     624: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78
     628: 91000000     	add	x0, x0, #0x0
		0000000000000628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78
     62c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000062c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1048
     630: 91000021     	add	x1, x1, #0x0
		0000000000000630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1048
     634: 94000000     	bl	0x634 <gf_probe+0x2c>
		0000000000000634:  R_AARCH64_CALL26	_printk
     638: 928002a8     	mov	x8, #-0x16              // =-22
     63c: 90000017     	adrp	x23, 0x0 <.text>
		000000000000063c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     640: 910002f7     	add	x23, x23, #0x0
		0000000000000640:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     644: f2dffd48     	movk	x8, #0xffea, lsl #32
     648: 52800141     	mov	w1, #0xa                // =10
     64c: f90002f7     	str	x23, [x23]
     650: f90006f7     	str	x23, [x23, #0x8]
     654: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000654:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93a
     658: 91000000     	add	x0, x0, #0x0
		0000000000000658:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93a
     65c: f80342e8     	stur	x8, [x23, #0x34]
     660: 128002a8     	mov	w8, #-0x16              // =-22
     664: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x85a
     668: 91000063     	add	x3, x3, #0x0
		0000000000000668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x85a
     66c: 72a000c1     	movk	w1, #0x6, lsl #16
     670: 52800022     	mov	w2, #0x1                // =1
     674: f9000af3     	str	x19, [x23, #0x10]
     678: f803c2e8     	stur	x8, [x23, #0x3c]
     67c: 7900d2ff     	strh	wzr, [x23, #0x68]
     680: 94000000     	bl	0x680 <gf_probe+0x78>
		0000000000000680:  R_AARCH64_CALL26	alloc_workqueue
     684: f9004ee0     	str	x0, [x23, #0x98]
     688: b4000300     	cbz	x0, 0x6e8 <gf_probe+0xe0>
     68c: 90000014     	adrp	x20, 0x0 <.text>
		000000000000068c:  R_AARCH64_ADR_PREL_PG_HI21	gf+0xa0
     690: 91000294     	add	x20, x20, #0x0
		0000000000000690:  R_AARCH64_ADD_ABS_LO12_NC	gf+0xa0
     694: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
     698: aa1403f3     	mov	x19, x20
     69c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000069c:  R_AARCH64_ADR_PREL_PG_HI21	delayed_work_timer_fn
     6a0: 91000021     	add	x1, x1, #0x0
		00000000000006a0:  R_AARCH64_ADD_ABS_LO12_NC	delayed_work_timer_fn
     6a4: f8008e68     	str	x8, [x19, #0x8]!
     6a8: 91004288     	add	x8, x20, #0x10
     6ac: f9000a88     	str	x8, [x20, #0x10]
     6b0: 9100a280     	add	x0, x20, #0x28
     6b4: 52a00402     	mov	w2, #0x200000           // =2097152
     6b8: f9000e88     	str	x8, [x20, #0x18]
     6bc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006bc:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xb74
     6c0: 91000108     	add	x8, x8, #0x0
		00000000000006c0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xb74
     6c4: aa1f03e3     	mov	x3, xzr
     6c8: aa1f03e4     	mov	x4, xzr
     6cc: f9001288     	str	x8, [x20, #0x20]
     6d0: 94000000     	bl	0x6d0 <gf_probe+0xc8>
		00000000000006d0:  R_AARCH64_CALL26	init_timer_key
     6d4: f9400281     	ldr	x1, [x20]
     6d8: 52800400     	mov	w0, #0x20               // =32
     6dc: aa1303e2     	mov	x2, x19
     6e0: 52809c43     	mov	w3, #0x4e2              // =1250
     6e4: 94000000     	bl	0x6e4 <gf_probe+0xdc>
		00000000000006e4:  R_AARCH64_CALL26	queue_delayed_work_on
     6e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000006e8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     6ec: 91000000     	add	x0, x0, #0x0
		00000000000006ec:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     6f0: 94000000     	bl	0x6f0 <gf_probe+0xe8>
		00000000000006f0:  R_AARCH64_CALL26	mutex_lock
     6f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000006f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     6f8: 90000013     	adrp	x19, 0x0 <.text>
		00000000000006f8:  R_AARCH64_ADR_PREL_PG_HI21	gf
     6fc: 91000273     	add	x19, x19, #0x0
		00000000000006fc:  R_AARCH64_ADD_ABS_LO12_NC	gf
     700: f9400108     	ldr	x8, [x8]
		0000000000000700:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e0
     704: b2607d08     	orr	x8, x8, #0xffffffff00000000
     708: b100051f     	cmn	x8, #0x1
     70c: 54000300     	b.eq	0x76c <gf_probe+0x164>
     710: aa2803e8     	mvn	x8, x8
     714: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000714:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x110
     718: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000718:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x118
     71c: dac00108     	rbit	x8, x8
     720: b9400129     	ldr	w9, [x9]
		0000000000000720:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x110
     724: f94002c0     	ldr	x0, [x22]
		0000000000000724:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x118
     728: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f
     72c: 91000294     	add	x20, x20, #0x0
		000000000000072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f
     730: aa1303e3     	mov	x3, x19
     734: dac01118     	clz	x24, x8
     738: f9400e68     	ldr	x8, [x19, #0x18]
     73c: aa1403e4     	mov	x4, x20
     740: 2a095302     	orr	w2, w24, w9, lsl #20
     744: 91004101     	add	x1, x8, #0x10
     748: b9000262     	str	w2, [x19]
     74c: 94000000     	bl	0x74c <gf_probe+0x144>
		000000000000074c:  R_AARCH64_CALL26	device_create
     750: b13ffc1f     	cmn	x0, #0xfff
     754: 54000283     	b.lo	0x7a4 <gf_probe+0x19c>
     758: aa0003f5     	mov	x21, x0
     75c: 34000255     	cbz	w21, 0x7a4 <gf_probe+0x19c>
     760: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000760:  R_AARCH64_ADR_PREL_PG_HI21	gf
     764: b900011f     	str	wzr, [x8]
		0000000000000764:  R_AARCH64_LDST32_ABS_LO12_NC	gf
     768: 14000005     	b	0x77c <gf_probe+0x174>
     76c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000076c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     770: 91000000     	add	x0, x0, #0x0
		0000000000000770:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     774: 94000000     	bl	0x774 <gf_probe+0x16c>
		0000000000000774:  R_AARCH64_CALL26	mutex_unlock
     778: 12800255     	mov	w21, #-0x13             // =-19
     77c: aa1303e0     	mov	x0, x19
     780: 94000000     	bl	0x780 <gf_probe+0x178>
		0000000000000780:  R_AARCH64_CALL26	gf_cleanup
     784: 3901c27f     	strb	wzr, [x19, #0x70]
     788: 2a1503e0     	mov	w0, w21
     78c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     790: a94257f6     	ldp	x22, x21, [sp, #0x20]
     794: a9415ff8     	ldp	x24, x23, [sp, #0x10]
     798: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     79c: d50323bf     	autiasp
     7a0: d65f03c0     	ret
     7a4: 52800028     	mov	w8, #0x1                // =1
     7a8: 9ad82108     	lsl	x8, x8, x24
     7ac: 1400008a     	b	0x9d4 <gf_probe+0x3cc>
     7b0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000007b0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     7b4: 91000129     	add	x9, x9, #0x0
		00000000000007b4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     7b8: f828313f     	stset	x8, [x9]
     7bc: 90000008     	adrp	x8, 0x0 <.text>
		00000000000007bc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     7c0: 91000108     	add	x8, x8, #0x0
		00000000000007c0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     7c4: f9400102     	ldr	x2, [x8]
     7c8: f9400449     	ldr	x9, [x2, #0x8]
     7cc: eb08013f     	cmp	x9, x8
     7d0: 54000f61     	b.ne	0x9bc <gf_probe+0x3b4>
     7d4: eb0802ff     	cmp	x23, x8
     7d8: 54000f20     	b.eq	0x9bc <gf_probe+0x3b4>
     7dc: eb17005f     	cmp	x2, x23
     7e0: 54000ee0     	b.eq	0x9bc <gf_probe+0x3b4>
     7e4: f9000457     	str	x23, [x2, #0x8]
     7e8: a90022e2     	stp	x2, x8, [x23]
     7ec: f9000117     	str	x23, [x8]
     7f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000007f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     7f4: 91000000     	add	x0, x0, #0x0
		00000000000007f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     7f8: 94000000     	bl	0x7f8 <gf_probe+0x1f0>
		00000000000007f8:  R_AARCH64_CALL26	mutex_unlock
     7fc: 94000000     	bl	0x7fc <gf_probe+0x1f4>
		00000000000007fc:  R_AARCH64_CALL26	input_allocate_device
     800: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000800:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x30
     804: f90002e0     	str	x0, [x23]
		0000000000000804:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     808: b5000100     	cbnz	x0, 0x828 <gf_probe+0x220>
     80c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000080c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd49
     810: 91000000     	add	x0, x0, #0x0
		0000000000000810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd49
     814: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000814:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1048
     818: 91000021     	add	x1, x1, #0x0
		0000000000000818:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1048
     81c: 94000000     	bl	0x81c <gf_probe+0x214>
		000000000000081c:  R_AARCH64_CALL26	_printk
     820: 12800175     	mov	w21, #-0xc              // =-12
     824: 1400004b     	b	0x950 <gf_probe+0x348>
     828: 52800021     	mov	w1, #0x1                // =1
     82c: 52800cc2     	mov	w2, #0x66               // =102
     830: 94000000     	bl	0x830 <gf_probe+0x228>
		0000000000000830:  R_AARCH64_CALL26	input_set_capability
     834: f94002e0     	ldr	x0, [x23]
		0000000000000834:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     838: 52800021     	mov	w1, #0x1                // =1
     83c: 52801162     	mov	w2, #0x8b               // =139
     840: 94000000     	bl	0x840 <gf_probe+0x238>
		0000000000000840:  R_AARCH64_CALL26	input_set_capability
     844: f94002e0     	ldr	x0, [x23]
		0000000000000844:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     848: 52800021     	mov	w1, #0x1                // =1
     84c: 528013c2     	mov	w2, #0x9e               // =158
     850: 94000000     	bl	0x850 <gf_probe+0x248>
		0000000000000850:  R_AARCH64_CALL26	input_set_capability
     854: f94002e0     	ldr	x0, [x23]
		0000000000000854:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     858: 52800021     	mov	w1, #0x1                // =1
     85c: 52800e82     	mov	w2, #0x74               // =116
     860: 94000000     	bl	0x860 <gf_probe+0x258>
		0000000000000860:  R_AARCH64_CALL26	input_set_capability
     864: f94002e0     	ldr	x0, [x23]
		0000000000000864:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     868: 52800021     	mov	w1, #0x1                // =1
     86c: 52800ce2     	mov	w2, #0x67               // =103
     870: 94000000     	bl	0x870 <gf_probe+0x268>
		0000000000000870:  R_AARCH64_CALL26	input_set_capability
     874: f94002e0     	ldr	x0, [x23]
		0000000000000874:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     878: 52800021     	mov	w1, #0x1                // =1
     87c: 52800d82     	mov	w2, #0x6c               // =108
     880: 94000000     	bl	0x880 <gf_probe+0x278>
		0000000000000880:  R_AARCH64_CALL26	input_set_capability
     884: f94002e0     	ldr	x0, [x23]
		0000000000000884:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     888: 52800021     	mov	w1, #0x1                // =1
     88c: 52800d42     	mov	w2, #0x6a               // =106
     890: 94000000     	bl	0x890 <gf_probe+0x288>
		0000000000000890:  R_AARCH64_CALL26	input_set_capability
     894: f94002e0     	ldr	x0, [x23]
		0000000000000894:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     898: 52800021     	mov	w1, #0x1                // =1
     89c: 52800d22     	mov	w2, #0x69               // =105
     8a0: 94000000     	bl	0x8a0 <gf_probe+0x298>
		00000000000008a0:  R_AARCH64_CALL26	input_set_capability
     8a4: f94002e0     	ldr	x0, [x23]
		00000000000008a4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8a8: 52800021     	mov	w1, #0x1                // =1
     8ac: 52801a82     	mov	w2, #0xd4               // =212
     8b0: 94000000     	bl	0x8b0 <gf_probe+0x2a8>
		00000000000008b0:  R_AARCH64_CALL26	input_set_capability
     8b4: f94002e0     	ldr	x0, [x23]
		00000000000008b4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8b8: 52800021     	mov	w1, #0x1                // =1
     8bc: 52800e42     	mov	w2, #0x72               // =114
     8c0: 94000000     	bl	0x8c0 <gf_probe+0x2b8>
		00000000000008c0:  R_AARCH64_CALL26	input_set_capability
     8c4: f94002e0     	ldr	x0, [x23]
		00000000000008c4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8c8: 52800021     	mov	w1, #0x1                // =1
     8cc: 52800e62     	mov	w2, #0x73               // =115
     8d0: 94000000     	bl	0x8d0 <gf_probe+0x2c8>
		00000000000008d0:  R_AARCH64_CALL26	input_set_capability
     8d4: f94002e0     	ldr	x0, [x23]
		00000000000008d4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8d8: 52800021     	mov	w1, #0x1                // =1
     8dc: 52801b22     	mov	w2, #0xd9               // =217
     8e0: 94000000     	bl	0x8e0 <gf_probe+0x2d8>
		00000000000008e0:  R_AARCH64_CALL26	input_set_capability
     8e4: f94002e0     	ldr	x0, [x23]
		00000000000008e4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8e8: 52800021     	mov	w1, #0x1                // =1
     8ec: 52801b02     	mov	w2, #0xd8               // =216
     8f0: 94000000     	bl	0x8f0 <gf_probe+0x2e8>
		00000000000008f0:  R_AARCH64_CALL26	input_set_capability
     8f4: f94002e8     	ldr	x8, [x23]
		00000000000008f4:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     8f8: f9000114     	str	x20, [x8]
     8fc: f94002e0     	ldr	x0, [x23]
		00000000000008fc:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     900: 94000000     	bl	0x900 <gf_probe+0x2f8>
		0000000000000900:  R_AARCH64_CALL26	input_register_device
     904: 2a0003f5     	mov	w21, w0
     908: 35000180     	cbnz	w0, 0x938 <gf_probe+0x330>
     90c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000090c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x120
     910: 91000000     	add	x0, x0, #0x0
		0000000000000910:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x120
     914: 94000000     	bl	0x914 <gf_probe+0x30c>
		0000000000000914:  R_AARCH64_CALL26	wakeup_source_add
     918: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf3c
     91c: 91000000     	add	x0, x0, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf3c
     920: 52800021     	mov	w1, #0x1                // =1
     924: 52800042     	mov	w2, #0x2                // =2
     928: 52800083     	mov	w3, #0x4                // =4
     92c: 52800044     	mov	w4, #0x2                // =2
     930: 94000000     	bl	0x930 <gf_probe+0x328>
		0000000000000930:  R_AARCH64_CALL26	_printk
     934: 17ffff95     	b	0x788 <gf_probe+0x180>
     938: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe9a
     93c: 91000000     	add	x0, x0, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe9a
     940: 94000000     	bl	0x940 <gf_probe+0x338>
		0000000000000940:  R_AARCH64_CALL26	_printk
     944: f94002e0     	ldr	x0, [x23]
		0000000000000944:  R_AARCH64_LDST64_ABS_LO12_NC	gf+0x30
     948: b4000040     	cbz	x0, 0x950 <gf_probe+0x348>
     94c: 94000000     	bl	0x94c <gf_probe+0x344>
		000000000000094c:  R_AARCH64_CALL26	input_free_device
     950: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000950:  R_AARCH64_ADR_PREL_PG_HI21	gf
     954: b9400288     	ldr	w8, [x20]
		0000000000000954:  R_AARCH64_LDST32_ABS_LO12_NC	gf
     958: 34fff128     	cbz	w8, 0x77c <gf_probe+0x174>
     95c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000095c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6fd
     960: 91000000     	add	x0, x0, #0x0
		0000000000000960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6fd
     964: 2a1503e1     	mov	w1, w21
     968: 94000000     	bl	0x968 <gf_probe+0x360>
		0000000000000968:  R_AARCH64_CALL26	_printk
     96c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     970: 91000000     	add	x0, x0, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     974: 94000000     	bl	0x974 <gf_probe+0x36c>
		0000000000000974:  R_AARCH64_CALL26	mutex_lock
     978: 940000cd     	bl	0xcac <list_del>
     97c: f94002c0     	ldr	x0, [x22]
		000000000000097c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x118
     980: b9400281     	ldr	w1, [x20]
		0000000000000980:  R_AARCH64_LDST32_ABS_LO12_NC	gf
     984: 94000000     	bl	0x984 <gf_probe+0x37c>
		0000000000000984:  R_AARCH64_CALL26	device_destroy
     988: b9400288     	ldr	w8, [x20]
		0000000000000988:  R_AARCH64_LDST32_ABS_LO12_NC	gf
     98c: 5280002a     	mov	w10, #0x1               // =1
     990: d3464d09     	ubfx	x9, x8, #6, #14
     994: 9ac82148     	lsl	x8, x10, x8
     998: 14000017     	b	0x9f4 <gf_probe+0x3ec>
     99c: 9000000a     	adrp	x10, 0x0 <.text>
		000000000000099c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     9a0: 9100014a     	add	x10, x10, #0x0
		00000000000009a0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     9a4: 8b090d49     	add	x9, x10, x9, lsl #3
     9a8: f828113f     	stclr	x8, [x9]
     9ac: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x30
     9b0: 91000000     	add	x0, x0, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x30
     9b4: 94000000     	bl	0x9b4 <gf_probe+0x3ac>
		00000000000009b4:  R_AARCH64_CALL26	mutex_unlock
     9b8: 17ffff71     	b	0x77c <gf_probe+0x174>
     9bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	gf+0x8
     9c0: 91000000     	add	x0, x0, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	gf+0x8
     9c4: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x60
     9c8: 91000021     	add	x1, x1, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x60
     9cc: 94000000     	bl	0x9cc <gf_probe+0x3c4>
		00000000000009cc:  R_AARCH64_CALL26	__list_add_valid_or_report
     9d0: 17ffff88     	b	0x7f0 <gf_probe+0x1e8>
     9d4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009d4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     9d8: 91000129     	add	x9, x9, #0x0
		00000000000009d8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     9dc: f9800131     	prfm	pstl1strm, [x9]
     9e0: c85f7d2a     	ldxr	x10, [x9]
     9e4: aa08014a     	orr	x10, x10, x8
     9e8: c80b7d2a     	stxr	w11, x10, [x9]
     9ec: 35ffffab     	cbnz	w11, 0x9e0 <gf_probe+0x3d8>
     9f0: 17ffff73     	b	0x7bc <gf_probe+0x1b4>
     9f4: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000009f4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e0
     9f8: 9100014a     	add	x10, x10, #0x0
		00000000000009f8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1e0
     9fc: 8b090d49     	add	x9, x10, x9, lsl #3
     a00: f9800131     	prfm	pstl1strm, [x9]
     a04: c85f7d2a     	ldxr	x10, [x9]
     a08: 8a28014a     	bic	x10, x10, x8
     a0c: c80b7d2a     	stxr	w11, x10, [x9]
     a10: 35ffffab     	cbnz	w11, 0xa04 <gf_probe+0x3fc>
     a14: 17ffffe6     	b	0x9ac <gf_probe+0x3a4>
