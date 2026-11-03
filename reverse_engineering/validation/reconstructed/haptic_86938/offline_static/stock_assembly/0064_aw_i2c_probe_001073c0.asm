
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000045a0 <aw_i2c_probe>:
    45a0: d503233f     	paciasp
    45a4: d10243ff     	sub	sp, sp, #0x90
    45a8: a9037bfd     	stp	x29, x30, [sp, #0x30]
    45ac: a9046ffc     	stp	x28, x27, [sp, #0x40]
    45b0: a90567fa     	stp	x26, x25, [sp, #0x50]
    45b4: a9065ff8     	stp	x24, x23, [sp, #0x60]
    45b8: a90757f6     	stp	x22, x21, [sp, #0x70]
    45bc: a9084ff4     	stp	x20, x19, [sp, #0x80]
    45c0: 9100c3fd     	add	x29, sp, #0x30
    45c4: d5384108     	mrs	x8, SP_EL0
    45c8: aa0003f6     	mov	x22, x0
    45cc: f9438908     	ldr	x8, [x8, #0x710]
    45d0: f81f83a8     	stur	x8, [x29, #-0x8]
    45d4: f9418415     	ldr	x21, [x0, #0x308]
    45d8: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000045d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1115
    45dc: 91000000     	add	x0, x0, #0x0
		00000000000045dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1115
    45e0: 94000000     	bl	0x45e0 <aw_i2c_probe+0x40>
		00000000000045e0:  R_AARCH64_CALL26	_printk
    45e4: f9400ec0     	ldr	x0, [x22, #0x18]
    45e8: f9400808     	ldr	x8, [x0, #0x10]
    45ec: f9401108     	ldr	x8, [x8, #0x20]
    45f0: b85fc110     	ldur	w16, [x8, #-0x4]
    45f4: 729d62d1     	movk	w17, #0xeb16
    45f8: 72af9851     	movk	w17, #0x7cc2, lsl #16
    45fc: 6b11021f     	cmp	w16, w17
    4600: 54000040     	b.eq	0x4608 <aw_i2c_probe+0x68>
    4604: d4304500     	brk	#0x8228
    4608: d63f0100     	blr	x8
    460c: 360002c0     	tbz	w0, #0x0, 0x4664 <aw_i2c_probe+0xc4>
    4610: 910082d4     	add	x20, x22, #0x20
    4614: 5280df01     	mov	w1, #0x6f8              // =1784
    4618: 5281b802     	mov	w2, #0xdc0              // =3520
    461c: aa1403e0     	mov	x0, x20
    4620: 94000000     	bl	0x4620 <aw_i2c_probe+0x80>
		0000000000004620:  R_AARCH64_CALL26	devm_kmalloc
    4624: b50002a0     	cbnz	x0, 0x4678 <aw_i2c_probe+0xd8>
    4628: 12800160     	mov	w0, #-0xc               // =-12
    462c: d5384108     	mrs	x8, SP_EL0
    4630: f9438908     	ldr	x8, [x8, #0x710]
    4634: f85f83a9     	ldur	x9, [x29, #-0x8]
    4638: eb09011f     	cmp	x8, x9
    463c: 54006861     	b.ne	0x5348 <aw_i2c_probe+0xda8>
    4640: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    4644: a94757f6     	ldp	x22, x21, [sp, #0x70]
    4648: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    464c: a94567fa     	ldp	x26, x25, [sp, #0x50]
    4650: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    4654: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    4658: 910243ff     	add	sp, sp, #0x90
    465c: d50323bf     	autiasp
    4660: d65f03c0     	ret
    4664: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c6f
    4668: 91000000     	add	x0, x0, #0x0
		0000000000004668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c6f
    466c: 94000000     	bl	0x466c <aw_i2c_probe+0xcc>
		000000000000466c:  R_AARCH64_CALL26	_printk
    4670: 12800080     	mov	w0, #-0x5               // =-5
    4674: 17ffffee     	b	0x462c <aw_i2c_probe+0x8c>
    4678: aa0003f3     	mov	x19, x0
    467c: f9019014     	str	x20, [x0, #0x320]
    4680: f9019416     	str	x22, [x0, #0x328]
    4684: f9005ec0     	str	x0, [x22, #0xb8]
    4688: b5001dd5     	cbnz	x21, 0x4a40 <aw_i2c_probe+0x4a0>
    468c: 12800008     	mov	w8, #-0x1               // =-1
    4690: b9005e68     	str	w8, [x19, #0x5c]
    4694: b9005268     	str	w8, [x19, #0x50]
    4698: b9405e61     	ldr	w1, [x19, #0x5c]
    469c: 37f800e1     	tbnz	w1, #0x1f, 0x46b8 <aw_i2c_probe+0x118>
    46a0: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000046a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2941
    46a4: 91000063     	add	x3, x3, #0x0
		00000000000046a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2941
    46a8: aa1403e0     	mov	x0, x20
    46ac: aa1f03e2     	mov	x2, xzr
    46b0: 94000000     	bl	0x46b0 <aw_i2c_probe+0x110>
		00000000000046b0:  R_AARCH64_CALL26	devm_gpio_request_one
    46b4: 350022a0     	cbnz	w0, 0x4b08 <aw_i2c_probe+0x568>
    46b8: b9405261     	ldr	w1, [x19, #0x50]
    46bc: 37f800e1     	tbnz	w1, #0x1f, 0x46d8 <aw_i2c_probe+0x138>
    46c0: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000046c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c36
    46c4: 91000063     	add	x3, x3, #0x0
		00000000000046c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c36
    46c8: aa1403e0     	mov	x0, x20
    46cc: 52800022     	mov	w2, #0x1                // =1
    46d0: 94000000     	bl	0x46d0 <aw_i2c_probe+0x130>
		00000000000046d0:  R_AARCH64_CALL26	devm_gpio_request_one
    46d4: 350022e0     	cbnz	w0, 0x4b30 <aw_i2c_probe+0x590>
    46d8: 2a1f03f6     	mov	w22, wzr
    46dc: 2a1f03f9     	mov	w25, wzr
    46e0: 52800408     	mov	w8, #0x20               // =32
    46e4: 90000017     	adrp	x23, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000046e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    46e8: 910002f7     	add	x23, x23, #0x0
		00000000000046e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    46ec: 90000018     	adrp	x24, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000046ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1688
    46f0: 91000318     	add	x24, x24, #0x0
		00000000000046f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1688
    46f4: 9000001a     	adrp	x26, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000046f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    46f8: 9100035a     	add	x26, x26, #0x0
		00000000000046f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    46fc: 910013fc     	add	x28, sp, #0x4
    4700: 391bce68     	strb	w8, [x19, #0x6f3]
    4704: 1400000f     	b	0x4740 <aw_i2c_probe+0x1a0>
    4708: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x94a
    470c: 91000000     	add	x0, x0, #0x0
		000000000000470c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x94a
    4710: aa1703e1     	mov	x1, x23
    4714: 52804262     	mov	w2, #0x213              // =531
    4718: aa1a03e3     	mov	x3, x26
    471c: 2a1903e4     	mov	w4, w25
    4720: 94000000     	bl	0x4720 <aw_i2c_probe+0x180>
		0000000000004720:  R_AARCH64_CALL26	_printk
    4724: 5280fa00     	mov	w0, #0x7d0              // =2000
    4728: 52813881     	mov	w1, #0x9c4              // =2500
    472c: 52800042     	mov	w2, #0x2                // =2
    4730: 94000000     	bl	0x4730 <aw_i2c_probe+0x190>
		0000000000004730:  R_AARCH64_CALL26	usleep_range_state
    4734: 710012df     	cmp	w22, #0x4
    4738: 110006d6     	add	w22, w22, #0x1
    473c: 540047e2     	b.hs	0x5038 <aw_i2c_probe+0xa98>
    4740: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb54
    4744: 91000000     	add	x0, x0, #0x0
		0000000000004744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb54
    4748: aa1703e1     	mov	x1, x23
    474c: 52802e22     	mov	w2, #0x171              // =369
    4750: aa1803e3     	mov	x3, x24
    4754: 94000000     	bl	0x4754 <aw_i2c_probe+0x1b4>
		0000000000004754:  R_AARCH64_CALL26	_printk
    4758: b9405e60     	ldr	w0, [x19, #0x5c]
    475c: 37f80220     	tbnz	w0, #0x1f, 0x47a0 <aw_i2c_probe+0x200>
    4760: 94000000     	bl	0x4760 <aw_i2c_probe+0x1c0>
		0000000000004760:  R_AARCH64_CALL26	gpio_to_desc
    4764: 2a1f03e1     	mov	w1, wzr
    4768: 94000000     	bl	0x4768 <aw_i2c_probe+0x1c8>
		0000000000004768:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    476c: 52807d00     	mov	w0, #0x3e8              // =1000
    4770: 5280fa01     	mov	w1, #0x7d0              // =2000
    4774: 52800042     	mov	w2, #0x2                // =2
    4778: 94000000     	bl	0x4778 <aw_i2c_probe+0x1d8>
		0000000000004778:  R_AARCH64_CALL26	usleep_range_state
    477c: b9405e60     	ldr	w0, [x19, #0x5c]
    4780: 94000000     	bl	0x4780 <aw_i2c_probe+0x1e0>
		0000000000004780:  R_AARCH64_CALL26	gpio_to_desc
    4784: 52800021     	mov	w1, #0x1                // =1
    4788: 94000000     	bl	0x4788 <aw_i2c_probe+0x1e8>
		0000000000004788:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    478c: 5283e800     	mov	w0, #0x1f40             // =8000
    4790: 52842681     	mov	w1, #0x2134             // =8500
    4794: 52800042     	mov	w2, #0x2                // =2
    4798: 94000000     	bl	0x4798 <aw_i2c_probe+0x1f8>
		0000000000004798:  R_AARCH64_CALL26	usleep_range_state
    479c: 14000007     	b	0x47b8 <aw_i2c_probe+0x218>
    47a0: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000047a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97e
    47a4: 91000000     	add	x0, x0, #0x0
		00000000000047a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97e
    47a8: aa1703e1     	mov	x1, x23
    47ac: 52802f02     	mov	w2, #0x178              // =376
    47b0: aa1803e3     	mov	x3, x24
    47b4: 94000000     	bl	0x47b4 <aw_i2c_probe+0x214>
		00000000000047b4:  R_AARCH64_CALL26	_printk
    47b8: f9419668     	ldr	x8, [x19, #0x328]
    47bc: 52a0002a     	mov	w10, #0x10000           // =65536
    47c0: 910023e1     	add	x1, sp, #0x8
    47c4: 52800042     	mov	w2, #0x2                // =2
    47c8: 79000bff     	strh	wzr, [sp, #0x4]
    47cc: 79400509     	ldrh	w9, [x8, #0x2]
    47d0: f90013fc     	str	x28, [sp, #0x20]
    47d4: f9400d00     	ldr	x0, [x8, #0x18]
    47d8: b800a3ea     	stur	w10, [sp, #0xa]
    47dc: 910003ea     	mov	x10, sp
    47e0: 790013e9     	strh	w9, [sp, #0x8]
    47e4: 790033e9     	strh	w9, [sp, #0x18]
    47e8: 320083e9     	mov	w9, #0x10001            // =65537
    47ec: 390003ff     	strb	wzr, [sp]
    47f0: 79001fff     	strh	wzr, [sp, #0xe]
    47f4: f9000bea     	str	x10, [sp, #0x10]
    47f8: b801a3e9     	stur	w9, [sp, #0x1a]
    47fc: 79003fff     	strh	wzr, [sp, #0x1e]
    4800: 94000000     	bl	0x4800 <aw_i2c_probe+0x260>
		0000000000004800:  R_AARCH64_CALL26	i2c_transfer
    4804: 2a0003fb     	mov	w27, w0
    4808: 36f80120     	tbz	w0, #0x1f, 0x482c <aw_i2c_probe+0x28c>
    480c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000480c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x905
    4810: 91000000     	add	x0, x0, #0x0
		0000000000004810:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x905
    4814: aa1703e1     	mov	x1, x23
    4818: 52800ca2     	mov	w2, #0x65               // =101
    481c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		000000000000481c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    4820: 91000063     	add	x3, x3, #0x0
		0000000000004820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    4824: 94000000     	bl	0x4824 <aw_i2c_probe+0x284>
		0000000000004824:  R_AARCH64_CALL26	_printk
    4828: 14000031     	b	0x48ec <aw_i2c_probe+0x34c>
    482c: 71000b7f     	cmp	w27, #0x2
    4830: 540004e1     	b.ne	0x48cc <aw_i2c_probe+0x32c>
    4834: 394013fb     	ldrb	w27, [sp, #0x4]
    4838: 721e137f     	tst	w27, #0x7c
    483c: 54000361     	b.ne	0x48a8 <aw_i2c_probe+0x308>
    4840: f9419668     	ldr	x8, [x19, #0x328]
    4844: 52800ae9     	mov	w9, #0x57               // =87
    4848: 52a0002a     	mov	w10, #0x10000           // =65536
    484c: 390003e9     	strb	w9, [sp]
    4850: 910023e1     	add	x1, sp, #0x8
    4854: 52800042     	mov	w2, #0x2                // =2
    4858: 79400509     	ldrh	w9, [x8, #0x2]
    485c: f90013fc     	str	x28, [sp, #0x20]
    4860: f9400d00     	ldr	x0, [x8, #0x18]
    4864: b800a3ea     	stur	w10, [sp, #0xa]
    4868: 910003ea     	mov	x10, sp
    486c: 790013e9     	strh	w9, [sp, #0x8]
    4870: 790033e9     	strh	w9, [sp, #0x18]
    4874: 52800029     	mov	w9, #0x1                // =1
    4878: 72a00049     	movk	w9, #0x2, lsl #16
    487c: 79001fff     	strh	wzr, [sp, #0xe]
    4880: f9000bea     	str	x10, [sp, #0x10]
    4884: b801a3e9     	stur	w9, [sp, #0x1a]
    4888: 79003fff     	strh	wzr, [sp, #0x1e]
    488c: 94000000     	bl	0x488c <aw_i2c_probe+0x2ec>
		000000000000488c:  R_AARCH64_CALL26	i2c_transfer
    4890: 2a0003fb     	mov	w27, w0
    4894: 37fffbc0     	tbnz	w0, #0x1f, 0x480c <aw_i2c_probe+0x26c>
    4898: 71000b7f     	cmp	w27, #0x2
    489c: 54000181     	b.ne	0x48cc <aw_i2c_probe+0x32c>
    48a0: 79400be8     	ldrh	w8, [sp, #0x4]
    48a4: 5ac0051b     	rev16	w27, w8
    48a8: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000048a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8a
    48ac: 91000000     	add	x0, x0, #0x0
		00000000000048ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8a
    48b0: aa1703e1     	mov	x1, x23
    48b4: 528037a2     	mov	w2, #0x1bd              // =445
    48b8: aa1a03e3     	mov	x3, x26
    48bc: 2a1b03e4     	mov	w4, w27
    48c0: 94000000     	bl	0x48c0 <aw_i2c_probe+0x320>
		00000000000048c0:  R_AARCH64_CALL26	_printk
    48c4: 2a1b03f9     	mov	w25, w27
    48c8: 14000017     	b	0x4924 <aw_i2c_probe+0x384>
    48cc: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000048cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162e
    48d0: 91000000     	add	x0, x0, #0x0
		00000000000048d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162e
    48d4: aa1703e1     	mov	x1, x23
    48d8: 52800d02     	mov	w2, #0x68               // =104
    48dc: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000048dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    48e0: 91000063     	add	x3, x3, #0x0
		00000000000048e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    48e4: 94000000     	bl	0x48e4 <aw_i2c_probe+0x344>
		00000000000048e4:  R_AARCH64_CALL26	_printk
    48e8: 128000bb     	mov	w27, #-0x6              // =-6
    48ec: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		00000000000048ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8a
    48f0: 91000000     	add	x0, x0, #0x0
		00000000000048f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8a
    48f4: aa1703e1     	mov	x1, x23
    48f8: 528037a2     	mov	w2, #0x1bd              // =445
    48fc: aa1a03e3     	mov	x3, x26
    4900: 2a1903e4     	mov	w4, w25
    4904: 94000000     	bl	0x4904 <aw_i2c_probe+0x364>
		0000000000004904:  R_AARCH64_CALL26	_printk
    4908: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2832
    490c: 91000000     	add	x0, x0, #0x0
		000000000000490c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2832
    4910: aa1703e1     	mov	x1, x23
    4914: 528037e2     	mov	w2, #0x1bf              // =447
    4918: aa1a03e3     	mov	x3, x26
    491c: 2a1b03e4     	mov	w4, w27
    4920: 94000000     	bl	0x4920 <aw_i2c_probe+0x380>
		0000000000004920:  R_AARCH64_CALL26	_printk
    4924: 528e2de8     	mov	w8, #0x716f             // =29039
    4928: 6b08033f     	cmp	w25, w8
    492c: 540001cd     	b.le	0x4964 <aw_i2c_probe+0x3c4>
    4930: 52924be8     	mov	w8, #0x925f             // =37471
    4934: 6b08033f     	cmp	w25, w8
    4938: 5400028c     	b.gt	0x4988 <aw_i2c_probe+0x3e8>
    493c: 528e2fe8     	mov	w8, #0x717f             // =29055
    4940: 6b08033f     	cmp	w25, w8
    4944: 5400044c     	b.gt	0x49cc <aw_i2c_probe+0x42c>
    4948: 528e2e08     	mov	w8, #0x7170             // =29040
    494c: 6b08033f     	cmp	w25, w8
    4950: 54001c80     	b.eq	0x4ce0 <aw_i2c_probe+0x740>
    4954: 528e2e28     	mov	w8, #0x7171             // =29041
    4958: 6b08033f     	cmp	w25, w8
    495c: 54ffed61     	b.ne	0x4708 <aw_i2c_probe+0x168>
    4960: 140000f7     	b	0x4d3c <aw_i2c_probe+0x79c>
    4964: 71001b3f     	cmp	w25, #0x6
    4968: 5400024d     	b.le	0x49b0 <aw_i2c_probe+0x410>
    496c: 71025b3f     	cmp	w25, #0x96
    4970: 540004ac     	b.gt	0x4a04 <aw_i2c_probe+0x464>
    4974: 71001f3f     	cmp	w25, #0x7
    4978: 54001f80     	b.eq	0x4d68 <aw_i2c_probe+0x7c8>
    497c: 7102573f     	cmp	w25, #0x95
    4980: 54ffec41     	b.ne	0x4708 <aw_i2c_probe+0x168>
    4984: 140000e2     	b	0x4d0c <aw_i2c_probe+0x76c>
    4988: 52924fe8     	mov	w8, #0x927f             // =37503
    498c: 6b08033f     	cmp	w25, w8
    4990: 540002cc     	b.gt	0x49e8 <aw_i2c_probe+0x448>
    4994: 52924c08     	mov	w8, #0x9260             // =37472
    4998: 6b08033f     	cmp	w25, w8
    499c: 54001120     	b.eq	0x4bc0 <aw_i2c_probe+0x620>
    49a0: 52924e08     	mov	w8, #0x9270             // =37488
    49a4: 6b08033f     	cmp	w25, w8
    49a8: 54ffeb01     	b.ne	0x4708 <aw_i2c_probe+0x168>
    49ac: 14000107     	b	0x4dc8 <aw_i2c_probe+0x828>
    49b0: 7100133f     	cmp	w25, #0x4
    49b4: 54001640     	b.eq	0x4c7c <aw_i2c_probe+0x6dc>
    49b8: 7100173f     	cmp	w25, #0x5
    49bc: 540017a0     	b.eq	0x4cb0 <aw_i2c_probe+0x710>
    49c0: 71001b3f     	cmp	w25, #0x6
    49c4: 54ffea21     	b.ne	0x4708 <aw_i2c_probe+0x168>
    49c8: 14000093     	b	0x4c14 <aw_i2c_probe+0x674>
    49cc: 528e3008     	mov	w8, #0x7180             // =29056
    49d0: 6b08033f     	cmp	w25, w8
    49d4: 540010a0     	b.eq	0x4be8 <aw_i2c_probe+0x648>
    49d8: 52924a08     	mov	w8, #0x9250             // =37456
    49dc: 6b08033f     	cmp	w25, w8
    49e0: 54ffe941     	b.ne	0x4708 <aw_i2c_probe+0x168>
    49e4: 14000103     	b	0x4df0 <aw_i2c_probe+0x850>
    49e8: 52925008     	mov	w8, #0x9280             // =37504
    49ec: 6b08033f     	cmp	w25, w8
    49f0: 54002140     	b.eq	0x4e18 <aw_i2c_probe+0x878>
    49f4: 52927008     	mov	w8, #0x9380             // =37760
    49f8: 6b08033f     	cmp	w25, w8
    49fc: 54ffe861     	b.ne	0x4708 <aw_i2c_probe+0x168>
    4a00: 140000e7     	b	0x4d9c <aw_i2c_probe+0x7fc>
    4a04: 71025f3f     	cmp	w25, #0x97
    4a08: 54001200     	b.eq	0x4c48 <aw_i2c_probe+0x6a8>
    4a0c: 528e2a08     	mov	w8, #0x7150             // =29008
    4a10: 6b08033f     	cmp	w25, w8
    4a14: 54ffe7a1     	b.ne	0x4708 <aw_i2c_probe+0x168>
    4a18: b9004a68     	str	w8, [x19, #0x48]
    4a1c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7d9
    4a20: 91000000     	add	x0, x0, #0x0
		0000000000004a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7d9
    4a24: 3900127f     	strb	wzr, [x19, #0x4]
    4a28: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4a2c: 91000021     	add	x1, x1, #0x0
		0000000000004a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4a30: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4a34: 91000063     	add	x3, x3, #0x0
		0000000000004a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4a38: 52803d02     	mov	w2, #0x1e8              // =488
    4a3c: 14000100     	b	0x4e3c <aw_i2c_probe+0x89c>
    4a40: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1202
    4a44: 91000021     	add	x1, x1, #0x0
		0000000000004a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1202
    4a48: aa1503e0     	mov	x0, x21
    4a4c: 2a1f03e2     	mov	w2, wzr
    4a50: 94000000     	bl	0x4a50 <aw_i2c_probe+0x4b0>
		0000000000004a50:  R_AARCH64_CALL26	of_get_named_gpio
    4a54: b9005e60     	str	w0, [x19, #0x5c]
    4a58: 36f80260     	tbz	w0, #0x1f, 0x4aa4 <aw_i2c_probe+0x504>
    4a5c: 90000015     	adrp	x21, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4a60: 910002b5     	add	x21, x21, #0x0
		0000000000004a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4a64: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184c
    4a68: 91000000     	add	x0, x0, #0x0
		0000000000004a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184c
    4a6c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120d
    4a70: 91000063     	add	x3, x3, #0x0
		0000000000004a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120d
    4a74: aa1503e1     	mov	x1, x21
    4a78: 52802a02     	mov	w2, #0x150              // =336
    4a7c: 94000000     	bl	0x4a7c <aw_i2c_probe+0x4dc>
		0000000000004a7c:  R_AARCH64_CALL26	_printk
    4a80: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x222a
    4a84: 91000000     	add	x0, x0, #0x0
		0000000000004a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x222a
    4a88: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    4a8c: 91000063     	add	x3, x3, #0x0
		0000000000004a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    4a90: aa1503e1     	mov	x1, x21
    4a94: 52821f42     	mov	w2, #0x10fa             // =4346
    4a98: 94000000     	bl	0x4a98 <aw_i2c_probe+0x4f8>
		0000000000004a98:  R_AARCH64_CALL26	_printk
    4a9c: 12800015     	mov	w21, #-0x1              // =-1
    4aa0: 14000139     	b	0x4f84 <aw_i2c_probe+0x9e4>
    4aa4: 2a0003e4     	mov	w4, w0
    4aa8: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x559
    4aac: 91000000     	add	x0, x0, #0x0
		0000000000004aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x559
    4ab0: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4ab4: 91000021     	add	x1, x1, #0x0
		0000000000004ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4ab8: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120d
    4abc: 91000063     	add	x3, x3, #0x0
		0000000000004abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120d
    4ac0: 52802a62     	mov	w2, #0x153              // =339
    4ac4: 94000000     	bl	0x4ac4 <aw_i2c_probe+0x524>
		0000000000004ac4:  R_AARCH64_CALL26	_printk
    4ac8: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24f2
    4acc: 91000021     	add	x1, x1, #0x0
		0000000000004acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24f2
    4ad0: aa1503e0     	mov	x0, x21
    4ad4: 2a1f03e2     	mov	w2, wzr
    4ad8: 94000000     	bl	0x4ad8 <aw_i2c_probe+0x538>
		0000000000004ad8:  R_AARCH64_CALL26	of_get_named_gpio
    4adc: b9005260     	str	w0, [x19, #0x50]
    4ae0: 36f803c0     	tbz	w0, #0x1f, 0x4b58 <aw_i2c_probe+0x5b8>
    4ae4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f84
    4ae8: 91000000     	add	x0, x0, #0x0
		0000000000004ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f84
    4aec: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4af0: 91000021     	add	x1, x1, #0x0
		0000000000004af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4af4: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120d
    4af8: 91000063     	add	x3, x3, #0x0
		0000000000004af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120d
    4afc: 52802ac2     	mov	w2, #0x156              // =342
    4b00: 94000000     	bl	0x4b00 <aw_i2c_probe+0x560>
		0000000000004b00:  R_AARCH64_CALL26	_printk
    4b04: 1400001e     	b	0x4b7c <aw_i2c_probe+0x5dc>
    4b08: 2a0003f5     	mov	w21, w0
    4b0c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2250
    4b10: 91000000     	add	x0, x0, #0x0
		0000000000004b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2250
    4b14: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4b18: 91000021     	add	x1, x1, #0x0
		0000000000004b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4b1c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    4b20: 91000063     	add	x3, x3, #0x0
		0000000000004b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    4b24: 528220c2     	mov	w2, #0x1106             // =4358
    4b28: 94000000     	bl	0x4b28 <aw_i2c_probe+0x588>
		0000000000004b28:  R_AARCH64_CALL26	_printk
    4b2c: 14000116     	b	0x4f84 <aw_i2c_probe+0x9e4>
    4b30: 2a0003f5     	mov	w21, w0
    4b34: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c3d
    4b38: 91000000     	add	x0, x0, #0x0
		0000000000004b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c3d
    4b3c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4b40: 91000021     	add	x1, x1, #0x0
		0000000000004b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4b44: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    4b48: 91000063     	add	x3, x3, #0x0
		0000000000004b48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    4b4c: 52822522     	mov	w2, #0x1129             // =4393
    4b50: 94000000     	bl	0x4b50 <aw_i2c_probe+0x5b0>
		0000000000004b50:  R_AARCH64_CALL26	_printk
    4b54: 14000109     	b	0x4f78 <aw_i2c_probe+0x9d8>
    4b58: 2a0003e4     	mov	w4, w0
    4b5c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2803
    4b60: 91000000     	add	x0, x0, #0x0
		0000000000004b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2803
    4b64: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4b68: 91000021     	add	x1, x1, #0x0
		0000000000004b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4b6c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120d
    4b70: 91000063     	add	x3, x3, #0x0
		0000000000004b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120d
    4b74: 52802b02     	mov	w2, #0x158              // =344
    4b78: 94000000     	bl	0x4b78 <aw_i2c_probe+0x5d8>
		0000000000004b78:  R_AARCH64_CALL26	_printk
    4b7c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a28
    4b80: 91000021     	add	x1, x1, #0x0
		0000000000004b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a28
    4b84: 91118262     	add	x2, x19, #0x460
    4b88: aa1503e0     	mov	x0, x21
    4b8c: 52800023     	mov	w3, #0x1                // =1
    4b90: aa1f03e4     	mov	x4, xzr
    4b94: 94000000     	bl	0x4b94 <aw_i2c_probe+0x5f4>
		0000000000004b94:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    4b98: 36ffd800     	tbz	w0, #0x1f, 0x4698 <aw_i2c_probe+0xf8>
    4b9c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfdb
    4ba0: 91000000     	add	x0, x0, #0x0
		0000000000004ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfdb
    4ba4: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4ba8: 91000021     	add	x1, x1, #0x0
		0000000000004ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4bac: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x120d
    4bb0: 91000063     	add	x3, x3, #0x0
		0000000000004bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x120d
    4bb4: 52802b62     	mov	w2, #0x15b              // =347
    4bb8: 94000000     	bl	0x4bb8 <aw_i2c_probe+0x618>
		0000000000004bb8:  R_AARCH64_CALL26	_printk
    4bbc: 17fffeb7     	b	0x4698 <aw_i2c_probe+0xf8>
    4bc0: b9004a68     	str	w8, [x19, #0x48]
    4bc4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fab
    4bc8: 91000000     	add	x0, x0, #0x0
		0000000000004bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fab
    4bcc: 39005a7f     	strb	wzr, [x19, #0x16]
    4bd0: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004bd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4bd4: 91000021     	add	x1, x1, #0x0
		0000000000004bd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4bd8: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4bdc: 91000063     	add	x3, x3, #0x0
		0000000000004bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4be0: 52804022     	mov	w2, #0x201              // =513
    4be4: 14000096     	b	0x4e3c <aw_i2c_probe+0x89c>
    4be8: 52800029     	mov	w9, #0x1                // =1
    4bec: b9004a68     	str	w8, [x19, #0x48]
    4bf0: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x927
    4bf4: 91000000     	add	x0, x0, #0x0
		0000000000004bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x927
    4bf8: 39001269     	strb	w9, [x19, #0x4]
    4bfc: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4c00: 91000021     	add	x1, x1, #0x0
		0000000000004c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4c04: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4c08: 91000063     	add	x3, x3, #0x0
		0000000000004c08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4c0c: 52803ee2     	mov	w2, #0x1f7              // =503
    4c10: 1400008b     	b	0x4e3c <aw_i2c_probe+0x89c>
    4c14: 528000c8     	mov	w8, #0x6                // =6
    4c18: 52800029     	mov	w9, #0x1                // =1
    4c1c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a0
    4c20: 91000000     	add	x0, x0, #0x0
		0000000000004c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a0
    4c24: b9004a68     	str	w8, [x19, #0x48]
    4c28: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4c2c: 91000021     	add	x1, x1, #0x0
		0000000000004c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4c30: 39005a69     	strb	w9, [x19, #0x16]
    4c34: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4c38: 91000063     	add	x3, x3, #0x0
		0000000000004c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4c3c: 39001269     	strb	w9, [x19, #0x4]
    4c40: 52803c62     	mov	w2, #0x1e3              // =483
    4c44: 1400007e     	b	0x4e3c <aw_i2c_probe+0x89c>
    4c48: 528012e8     	mov	w8, #0x97               // =151
    4c4c: 52800029     	mov	w9, #0x1                // =1
    4c50: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd2f
    4c54: 91000000     	add	x0, x0, #0x0
		0000000000004c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd2f
    4c58: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4c5c: 91000021     	add	x1, x1, #0x0
		0000000000004c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4c60: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4c64: 91000063     	add	x3, x3, #0x0
		0000000000004c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4c68: 52803962     	mov	w2, #0x1cb              // =459
    4c6c: b9004a68     	str	w8, [x19, #0x48]
    4c70: 39005a69     	strb	w9, [x19, #0x16]
    4c74: 3900127f     	strb	wzr, [x19, #0x4]
    4c78: 14000071     	b	0x4e3c <aw_i2c_probe+0x89c>
    4c7c: 52800088     	mov	w8, #0x4                // =4
    4c80: 52800029     	mov	w9, #0x1                // =1
    4c84: 3900127f     	strb	wzr, [x19, #0x4]
    4c88: b9004a68     	str	w8, [x19, #0x48]
    4c8c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2d
    4c90: 91000000     	add	x0, x0, #0x0
		0000000000004c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2d
    4c94: 39005a69     	strb	w9, [x19, #0x16]
    4c98: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4c9c: 91000021     	add	x1, x1, #0x0
		0000000000004c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4ca0: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4ca4: 91000063     	add	x3, x3, #0x0
		0000000000004ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4ca8: 52803ae2     	mov	w2, #0x1d7              // =471
    4cac: 14000064     	b	0x4e3c <aw_i2c_probe+0x89c>
    4cb0: 528000a8     	mov	w8, #0x5                // =5
    4cb4: 39005a7f     	strb	wzr, [x19, #0x16]
    4cb8: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24fb
    4cbc: 91000000     	add	x0, x0, #0x0
		0000000000004cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24fb
    4cc0: b9004a68     	str	w8, [x19, #0x48]
    4cc4: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004cc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4cc8: 91000021     	add	x1, x1, #0x0
		0000000000004cc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4ccc: 3900127f     	strb	wzr, [x19, #0x4]
    4cd0: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4cd4: 91000063     	add	x3, x3, #0x0
		0000000000004cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4cd8: 52803a22     	mov	w2, #0x1d1              // =465
    4cdc: 14000058     	b	0x4e3c <aw_i2c_probe+0x89c>
    4ce0: 52800029     	mov	w9, #0x1                // =1
    4ce4: b9004a68     	str	w8, [x19, #0x48]
    4ce8: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x153a
    4cec: 91000000     	add	x0, x0, #0x0
		0000000000004cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x153a
    4cf0: 39001269     	strb	w9, [x19, #0x4]
    4cf4: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4cf8: 91000021     	add	x1, x1, #0x0
		0000000000004cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4cfc: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4d00: 91000063     	add	x3, x3, #0x0
		0000000000004d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4d04: 52803da2     	mov	w2, #0x1ed              // =493
    4d08: 1400004d     	b	0x4e3c <aw_i2c_probe+0x89c>
    4d0c: 528012a8     	mov	w8, #0x95               // =149
    4d10: 39005a7f     	strb	wzr, [x19, #0x16]
    4d14: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b95
    4d18: 91000000     	add	x0, x0, #0x0
		0000000000004d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b95
    4d1c: b9004a68     	str	w8, [x19, #0x48]
    4d20: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4d24: 91000021     	add	x1, x1, #0x0
		0000000000004d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4d28: 3900127f     	strb	wzr, [x19, #0x4]
    4d2c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4d30: 91000063     	add	x3, x3, #0x0
		0000000000004d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4d34: 528038a2     	mov	w2, #0x1c5              // =453
    4d38: 14000041     	b	0x4e3c <aw_i2c_probe+0x89c>
    4d3c: 52800029     	mov	w9, #0x1                // =1
    4d40: b9004a68     	str	w8, [x19, #0x48]
    4d44: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb1
    4d48: 91000000     	add	x0, x0, #0x0
		0000000000004d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb1
    4d4c: 39001269     	strb	w9, [x19, #0x4]
    4d50: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4d54: 91000021     	add	x1, x1, #0x0
		0000000000004d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4d58: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4d5c: 91000063     	add	x3, x3, #0x0
		0000000000004d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4d60: 52803e42     	mov	w2, #0x1f2              // =498
    4d64: 14000036     	b	0x4e3c <aw_i2c_probe+0x89c>
    4d68: 528000e8     	mov	w8, #0x7                // =7
    4d6c: 52800029     	mov	w9, #0x1                // =1
    4d70: 39005a7f     	strb	wzr, [x19, #0x16]
    4d74: b9004a68     	str	w8, [x19, #0x48]
    4d78: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1873
    4d7c: 91000000     	add	x0, x0, #0x0
		0000000000004d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1873
    4d80: 39001269     	strb	w9, [x19, #0x4]
    4d84: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4d88: 91000021     	add	x1, x1, #0x0
		0000000000004d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4d8c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4d90: 91000063     	add	x3, x3, #0x0
		0000000000004d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4d94: 52803ba2     	mov	w2, #0x1dd              // =477
    4d98: 14000029     	b	0x4e3c <aw_i2c_probe+0x89c>
    4d9c: 52800809     	mov	w9, #0x40               // =64
    4da0: b9004a68     	str	w8, [x19, #0x48]
    4da4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cb
    4da8: 91000000     	add	x0, x0, #0x0
		0000000000004da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cb
    4dac: 391bce69     	strb	w9, [x19, #0x6f3]
    4db0: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4db4: 91000021     	add	x1, x1, #0x0
		0000000000004db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4db8: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4dbc: 91000063     	add	x3, x3, #0x0
		0000000000004dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4dc0: 52804202     	mov	w2, #0x210              // =528
    4dc4: 1400001e     	b	0x4e3c <aw_i2c_probe+0x89c>
    4dc8: b9004a68     	str	w8, [x19, #0x48]
    4dcc: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af6
    4dd0: 91000000     	add	x0, x0, #0x0
		0000000000004dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af6
    4dd4: 39005a7f     	strb	wzr, [x19, #0x16]
    4dd8: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4ddc: 91000021     	add	x1, x1, #0x0
		0000000000004ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4de0: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4de4: 91000063     	add	x3, x3, #0x0
		0000000000004de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4de8: 528040c2     	mov	w2, #0x206              // =518
    4dec: 14000014     	b	0x4e3c <aw_i2c_probe+0x89c>
    4df0: b9004a68     	str	w8, [x19, #0x48]
    4df4: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd4
    4df8: 91000000     	add	x0, x0, #0x0
		0000000000004df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd4
    4dfc: 39005a7f     	strb	wzr, [x19, #0x16]
    4e00: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4e04: 91000021     	add	x1, x1, #0x0
		0000000000004e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4e08: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4e0c: 91000063     	add	x3, x3, #0x0
		0000000000004e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4e10: 52803f82     	mov	w2, #0x1fc              // =508
    4e14: 1400000a     	b	0x4e3c <aw_i2c_probe+0x89c>
    4e18: b9004a68     	str	w8, [x19, #0x48]
    4e1c: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fce
    4e20: 91000000     	add	x0, x0, #0x0
		0000000000004e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fce
    4e24: 39005a7f     	strb	wzr, [x19, #0x16]
    4e28: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4e2c: 91000021     	add	x1, x1, #0x0
		0000000000004e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4e30: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1353
    4e34: 91000063     	add	x3, x3, #0x0
		0000000000004e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1353
    4e38: 52804162     	mov	w2, #0x20b              // =523
    4e3c: 94000000     	bl	0x4e3c <aw_i2c_probe+0x89c>
		0000000000004e3c:  R_AARCH64_CALL26	_printk
    4e40: 52801548     	mov	w8, #0xaa               // =170
    4e44: 910023e2     	add	x2, sp, #0x8
    4e48: aa1303e0     	mov	x0, x19
    4e4c: 2a1f03e1     	mov	w1, wzr
    4e50: 52800023     	mov	w3, #0x1                // =1
    4e54: 390023e8     	strb	w8, [sp, #0x8]
    4e58: 94000000     	bl	0x4e58 <aw_i2c_probe+0x8b8>
		0000000000004e58:  R_AARCH64_CALL26	i2c_w_bytes
    4e5c: 52817700     	mov	w0, #0xbb8              // =3000
    4e60: 5281b581     	mov	w1, #0xdac              // =3500
    4e64: 52800042     	mov	w2, #0x2                // =2
    4e68: 94000000     	bl	0x4e68 <aw_i2c_probe+0x8c8>
		0000000000004e68:  R_AARCH64_CALL26	usleep_range_state
    4e6c: b9404a68     	ldr	w8, [x19, #0x48]
    4e70: 7100011f     	cmp	w8, #0x0
    4e74: 5400022c     	b.gt	0x4eb8 <aw_i2c_probe+0x918>
    4e78: 90000015     	adrp	x21, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4e7c: 910002b5     	add	x21, x21, #0x0
		0000000000004e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4e80: 90000016     	adrp	x22, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121b
    4e84: 910002d6     	add	x22, x22, #0x0
		0000000000004e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121b
    4e88: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xca3
    4e8c: 91000000     	add	x0, x0, #0x0
		0000000000004e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xca3
    4e90: aa1503e1     	mov	x1, x21
    4e94: 528043e2     	mov	w2, #0x21f              // =543
    4e98: aa1603e3     	mov	x3, x22
    4e9c: 94000000     	bl	0x4e9c <aw_i2c_probe+0x8fc>
		0000000000004e9c:  R_AARCH64_CALL26	_printk
    4ea0: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x583
    4ea4: 91000000     	add	x0, x0, #0x0
		0000000000004ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x583
    4ea8: aa1503e1     	mov	x1, x21
    4eac: 52804402     	mov	w2, #0x220              // =544
    4eb0: aa1603e3     	mov	x3, x22
    4eb4: 14000023     	b	0x4f40 <aw_i2c_probe+0x9a0>
    4eb8: 52927009     	mov	w9, #0x9380             // =37760
    4ebc: 6b09011f     	cmp	w8, w9
    4ec0: 54000321     	b.ne	0x4f24 <aw_i2c_probe+0x984>
    4ec4: 90000008     	adrp	x8, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ec4:  R_AARCH64_ADR_PREL_PG_HI21	aw8693x_func_list
    4ec8: 91000108     	add	x8, x8, #0x0
		0000000000004ec8:  R_AARCH64_ADD_ABS_LO12_NC	aw8693x_func_list
    4ecc: aa1303e0     	mov	x0, x19
    4ed0: f9401109     	ldr	x9, [x8, #0x20]
    4ed4: f902e668     	str	x8, [x19, #0x5c8]
    4ed8: b85fc130     	ldur	w16, [x9, #-0x4]
    4edc: 729e3e11     	movk	w17, #0xf1f0
    4ee0: 72aa2591     	movk	w17, #0x512c, lsl #16
    4ee4: 6b11021f     	cmp	w16, w17
    4ee8: 54000040     	b.eq	0x4ef0 <aw_i2c_probe+0x950>
    4eec: d4304520     	brk	#0x8229
    4ef0: d63f0120     	blr	x9
    4ef4: 36f80520     	tbz	w0, #0x1f, 0x4f98 <aw_i2c_probe+0x9f8>
    4ef8: 90000008     	adrp	x8, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac3
    4efc: 91000108     	add	x8, x8, #0x0
		0000000000004efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac3
    4f00: 2a0003e4     	mov	w4, w0
    4f04: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4f08: 91000021     	add	x1, x1, #0x0
		0000000000004f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4f0c: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    4f10: 91000063     	add	x3, x3, #0x0
		0000000000004f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    4f14: aa0803e0     	mov	x0, x8
    4f18: 52822962     	mov	w2, #0x114b             // =4427
    4f1c: 2a0403f5     	mov	w21, w4
    4f20: 14000012     	b	0x4f68 <aw_i2c_probe+0x9c8>
    4f24: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x996
    4f28: 91000000     	add	x0, x0, #0x0
		0000000000004f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x996
    4f2c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4f30: 91000021     	add	x1, x1, #0x0
		0000000000004f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4f34: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x121b
    4f38: 91000063     	add	x3, x3, #0x0
		0000000000004f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x121b
    4f3c: 52804802     	mov	w2, #0x240              // =576
    4f40: 94000000     	bl	0x4f40 <aw_i2c_probe+0x9a0>
		0000000000004f40:  R_AARCH64_CALL26	_printk
    4f44: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26d9
    4f48: 91000000     	add	x0, x0, #0x0
		0000000000004f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26d9
    4f4c: 90000001     	adrp	x1, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    4f50: 91000021     	add	x1, x1, #0x0
		0000000000004f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    4f54: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    4f58: 91000063     	add	x3, x3, #0x0
		0000000000004f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    4f5c: 52822882     	mov	w2, #0x1144             // =4420
    4f60: 128002a4     	mov	w4, #-0x16              // =-22
    4f64: 128002b5     	mov	w21, #-0x16             // =-22
    4f68: 94000000     	bl	0x4f68 <aw_i2c_probe+0x9c8>
		0000000000004f68:  R_AARCH64_CALL26	_printk
    4f6c: b9405260     	ldr	w0, [x19, #0x50]
    4f70: 37f80040     	tbnz	w0, #0x1f, 0x4f78 <aw_i2c_probe+0x9d8>
    4f74: 94000000     	bl	0x4f74 <aw_i2c_probe+0x9d4>
		0000000000004f74:  R_AARCH64_CALL26	gpio_free
    4f78: b9405e60     	ldr	w0, [x19, #0x5c]
    4f7c: 37f80040     	tbnz	w0, #0x1f, 0x4f84 <aw_i2c_probe+0x9e4>
    4f80: 94000000     	bl	0x4f80 <aw_i2c_probe+0x9e0>
		0000000000004f80:  R_AARCH64_CALL26	gpio_free
    4f84: aa1403e0     	mov	x0, x20
    4f88: aa1303e1     	mov	x1, x19
    4f8c: 94000000     	bl	0x4f8c <aw_i2c_probe+0x9ec>
		0000000000004f8c:  R_AARCH64_CALL26	devm_kfree
    4f90: 2a1503e0     	mov	w0, w21
    4f94: 17fffda6     	b	0x462c <aw_i2c_probe+0x8c>
    4f98: f942e668     	ldr	x8, [x19, #0x5c8]
    4f9c: aa1403e0     	mov	x0, x20
    4fa0: aa1303e1     	mov	x1, x19
    4fa4: aa1503e2     	mov	x2, x21
    4fa8: f9407108     	ldr	x8, [x8, #0xe0]
    4fac: b85fc110     	ldur	w16, [x8, #-0x4]
    4fb0: 729a6551     	movk	w17, #0xd32a
    4fb4: 72a5cef1     	movk	w17, #0x2e77, lsl #16
    4fb8: 6b11021f     	cmp	w16, w17
    4fbc: 54000040     	b.eq	0x4fc4 <aw_i2c_probe+0xa24>
    4fc0: d4304500     	brk	#0x8228
    4fc4: d63f0100     	blr	x8
    4fc8: aa1403e0     	mov	x0, x20
    4fcc: aa1303e1     	mov	x1, x19
    4fd0: 9400015e     	bl	0x5548 <irq_config>
    4fd4: 35000420     	cbnz	w0, 0x5058 <aw_i2c_probe+0xab8>
    4fd8: aa1303e0     	mov	x0, x19
    4fdc: 9400019b     	bl	0x5648 <vibrator_init>
    4fe0: aa1303e0     	mov	x0, x19
    4fe4: 94000201     	bl	0x57e8 <haptic_init>
    4fe8: 52800141     	mov	w1, #0xa                // =10
    4fec: 90000000     	adrp	x0, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004fec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfd8
    4ff0: 91000000     	add	x0, x0, #0x0
		0000000000004ff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfd8
    4ff4: 90000003     	adrp	x3, 0x4000 <aw8693x_trig3_param_config+0x88>
		0000000000004ff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1136
    4ff8: 91000063     	add	x3, x3, #0x0
		0000000000004ff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1136
    4ffc: 72a000c1     	movk	w1, #0x6, lsl #16
    5000: 52800022     	mov	w2, #0x1                // =1
    5004: 94000000     	bl	0x5004 <aw_i2c_probe+0xa64>
		0000000000005004:  R_AARCH64_CALL26	alloc_workqueue
    5008: f9022660     	str	x0, [x19, #0x448]
    500c: b50003c0     	cbnz	x0, 0x5084 <aw_i2c_probe+0xae4>
    5010: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005010:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcf1
    5014: 91000000     	add	x0, x0, #0x0
		0000000000005014:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcf1
    5018: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    501c: 91000021     	add	x1, x1, #0x0
		000000000000501c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    5020: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    5024: 91000063     	add	x3, x3, #0x0
		0000000000005024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    5028: 52822da2     	mov	w2, #0x116d             // =4461
    502c: 94000000     	bl	0x502c <aw_i2c_probe+0xa8c>
		000000000000502c:  R_AARCH64_CALL26	_printk
    5030: 2a1f03f5     	mov	w21, wzr
    5034: 17ffffce     	b	0x4f6c <aw_i2c_probe+0x9cc>
    5038: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ae
    503c: 91000000     	add	x0, x0, #0x0
		000000000000503c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ae
    5040: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5044: 91000021     	add	x1, x1, #0x0
		0000000000005044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    5048: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    504c: 91000063     	add	x3, x3, #0x0
		000000000000504c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    5050: 528227a2     	mov	w2, #0x113d             // =4413
    5054: 17ffffc3     	b	0x4f60 <aw_i2c_probe+0x9c0>
    5058: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x52f
    505c: 91000108     	add	x8, x8, #0x0
		000000000000505c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x52f
    5060: 2a0003e4     	mov	w4, w0
    5064: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    5068: 91000021     	add	x1, x1, #0x0
		0000000000005068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    506c: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		000000000000506c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    5070: 91000063     	add	x3, x3, #0x0
		0000000000005070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    5074: aa0803e0     	mov	x0, x8
    5078: 52822b22     	mov	w2, #0x1159             // =4441
    507c: 2a0403f5     	mov	w21, w4
    5080: 17ffffba     	b	0x4f68 <aw_i2c_probe+0x9c8>
    5084: f942e668     	ldr	x8, [x19, #0x5c8]
    5088: aa1303e0     	mov	x0, x19
    508c: f9400508     	ldr	x8, [x8, #0x8]
    5090: b85fc110     	ldur	w16, [x8, #-0x4]
    5094: 729e3e11     	movk	w17, #0xf1f0
    5098: 72aa2591     	movk	w17, #0x512c, lsl #16
    509c: 6b11021f     	cmp	w16, w17
    50a0: 54000040     	b.eq	0x50a8 <aw_i2c_probe+0xb08>
    50a4: d4304500     	brk	#0x8228
    50a8: d63f0100     	blr	x8
    50ac: aa1303e0     	mov	x0, x19
    50b0: 9400026b     	bl	0x5a5c <ram_work_init>
    50b4: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		00000000000050b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac7
    50b8: 91000000     	add	x0, x0, #0x0
		00000000000050b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac7
    50bc: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		00000000000050bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    50c0: 91000021     	add	x1, x1, #0x0
		00000000000050c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    50c4: 90000003     	adrp	x3, 0x5000 <aw_i2c_probe+0xa60>
		00000000000050c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab6
    50c8: 91000063     	add	x3, x3, #0x0
		00000000000050c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab6
    50cc: 52822e42     	mov	w2, #0x1172             // =4466
    50d0: 94000000     	bl	0x50d0 <aw_i2c_probe+0xb30>
		00000000000050d0:  R_AARCH64_CALL26	_printk
    50d4: d503201f     	nop
    50d8: 5287d000     	mov	w0, #0x3e80             // =16000
    50dc: 52819801     	mov	w1, #0xcc0              // =3264
    50e0: 94000000     	bl	0x50e0 <aw_i2c_probe+0xb40>
		00000000000050e0:  R_AARCH64_CALL26	__kmalloc_large_noprof
    50e4: f9030660     	str	x0, [x19, #0x608]
    50e8: b4001480     	cbz	x0, 0x5378 <aw_i2c_probe+0xdd8>
    50ec: d503201f     	nop
    50f0: 52819800     	mov	w0, #0xcc0              // =3264
    50f4: 52800041     	mov	w1, #0x2                // =2
    50f8: 94000000     	bl	0x50f8 <aw_i2c_probe+0xb58>
		00000000000050f8:  R_AARCH64_CALL26	get_free_pages_noprof
    50fc: f9030a60     	str	x0, [x19, #0x610]
    5100: b40015c0     	cbz	x0, 0x53b8 <aw_i2c_probe+0xe18>
    5104: d378dc08     	lsl	x8, x0, #8
    5108: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    510c: 8b882128     	add	x8, x9, x8, asr #8
    5110: d346fd08     	lsr	x8, x8, #6
    5114: 927acd08     	and	x8, x8, #0x3ffffffffffffc0
    5118: 140000b7     	b	0x53f4 <aw_i2c_probe+0xe54>
    511c: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    5120: f2b80009     	movk	x9, #0xc000, lsl #16
    5124: 8b090108     	add	x8, x8, x9
    5128: 52880009     	mov	w9, #0x4000             // =16384
    512c: f829311f     	stset	x9, [x8]
    5130: f9430a68     	ldr	x8, [x19, #0x610]
    5134: 90000000     	adrp	x0, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005134:  R_AARCH64_ADR_PREL_PG_HI21	.data+0xa38
    5138: 91000000     	add	x0, x0, #0x0
		0000000000005138:  R_AARCH64_ADD_ABS_LO12_NC	.data+0xa38
    513c: 91100109     	add	x9, x8, #0x400
    5140: f9000509     	str	x9, [x8, #0x8]
    5144: f9430a69     	ldr	x9, [x19, #0x610]
    5148: 9120012a     	add	x10, x9, #0x800
    514c: f902050a     	str	x10, [x8, #0x408]
    5150: f9430a68     	ldr	x8, [x19, #0x610]
    5154: 9130010a     	add	x10, x8, #0xc00
    5158: f904052a     	str	x10, [x9, #0x808]
    515c: f9430a69     	ldr	x9, [x19, #0x610]
    5160: 9140052a     	add	x10, x9, #0x1, lsl #12  // =0x1000
    5164: f906050a     	str	x10, [x8, #0xc08]
    5168: 5282800a     	mov	w10, #0x1400            // =5120
    516c: f9430a68     	ldr	x8, [x19, #0x610]
    5170: 8b0a010a     	add	x10, x8, x10
    5174: f908052a     	str	x10, [x9, #0x1008]
    5178: 5283000a     	mov	w10, #0x1800            // =6144
    517c: f9430a69     	ldr	x9, [x19, #0x610]
    5180: 8b0a012a     	add	x10, x9, x10
    5184: f90a050a     	str	x10, [x8, #0x1408]
    5188: 5283800a     	mov	w10, #0x1c00            // =7168
    518c: f9430a68     	ldr	x8, [x19, #0x610]
    5190: 8b0a010a     	add	x10, x8, x10
    5194: f90c052a     	str	x10, [x9, #0x1808]
    5198: f9430a69     	ldr	x9, [x19, #0x610]
    519c: 9140092a     	add	x10, x9, #0x2, lsl #12  // =0x2000
    51a0: f90e050a     	str	x10, [x8, #0x1c08]
    51a4: 5284800a     	mov	w10, #0x2400            // =9216
    51a8: f9430a68     	ldr	x8, [x19, #0x610]
    51ac: 8b0a010a     	add	x10, x8, x10
    51b0: f910052a     	str	x10, [x9, #0x2008]
    51b4: 5285000a     	mov	w10, #0x2800            // =10240
    51b8: f9430a69     	ldr	x9, [x19, #0x610]
    51bc: 8b0a012a     	add	x10, x9, x10
    51c0: f912050a     	str	x10, [x8, #0x2408]
    51c4: 5285800a     	mov	w10, #0x2c00            // =11264
    51c8: f9430a68     	ldr	x8, [x19, #0x610]
    51cc: 8b0a010a     	add	x10, x8, x10
    51d0: f914052a     	str	x10, [x9, #0x2808]
    51d4: f9430a69     	ldr	x9, [x19, #0x610]
    51d8: 91400d2a     	add	x10, x9, #0x3, lsl #12  // =0x3000
    51dc: f916050a     	str	x10, [x8, #0x2c08]
    51e0: 5286800a     	mov	w10, #0x3400            // =13312
    51e4: f9430a68     	ldr	x8, [x19, #0x610]
    51e8: 8b0a010a     	add	x10, x8, x10
    51ec: f918052a     	str	x10, [x9, #0x3008]
    51f0: 5287000a     	mov	w10, #0x3800            // =14336
    51f4: f9430a69     	ldr	x9, [x19, #0x610]
    51f8: 8b0a012a     	add	x10, x9, x10
    51fc: f91a050a     	str	x10, [x8, #0x3408]
    5200: 5287800a     	mov	w10, #0x3c00            // =15360
    5204: f9430a68     	ldr	x8, [x19, #0x610]
    5208: 8b0a010a     	add	x10, x8, x10
    520c: f91c052a     	str	x10, [x9, #0x3808]
    5210: f9430a69     	ldr	x9, [x19, #0x610]
    5214: f91e0509     	str	x9, [x8, #0x3c08]
    5218: f9430a68     	ldr	x8, [x19, #0x610]
    521c: f9400509     	ldr	x9, [x8, #0x8]
    5220: 3900051f     	strb	wzr, [x8, #0x1]
    5224: 52800028     	mov	w8, #0x1                // =1
    5228: f940052a     	ldr	x10, [x9, #0x8]
    522c: 39000528     	strb	w8, [x9, #0x1]
    5230: 52800049     	mov	w9, #0x2                // =2
    5234: f940054b     	ldr	x11, [x10, #0x8]
    5238: 39000549     	strb	w9, [x10, #0x1]
    523c: 52800069     	mov	w9, #0x3                // =3
    5240: f940056a     	ldr	x10, [x11, #0x8]
    5244: 39000569     	strb	w9, [x11, #0x1]
    5248: 52800089     	mov	w9, #0x4                // =4
    524c: f940054b     	ldr	x11, [x10, #0x8]
    5250: 39000549     	strb	w9, [x10, #0x1]
    5254: 528000a9     	mov	w9, #0x5                // =5
    5258: f940056a     	ldr	x10, [x11, #0x8]
    525c: 39000569     	strb	w9, [x11, #0x1]
    5260: 528000c9     	mov	w9, #0x6                // =6
    5264: f940054b     	ldr	x11, [x10, #0x8]
    5268: 39000549     	strb	w9, [x10, #0x1]
    526c: 528000e9     	mov	w9, #0x7                // =7
    5270: f940056a     	ldr	x10, [x11, #0x8]
    5274: 39000569     	strb	w9, [x11, #0x1]
    5278: 52800109     	mov	w9, #0x8                // =8
    527c: f940054b     	ldr	x11, [x10, #0x8]
    5280: 39000549     	strb	w9, [x10, #0x1]
    5284: 52800129     	mov	w9, #0x9                // =9
    5288: f940056a     	ldr	x10, [x11, #0x8]
    528c: 39000569     	strb	w9, [x11, #0x1]
    5290: 52800149     	mov	w9, #0xa                // =10
    5294: f940054b     	ldr	x11, [x10, #0x8]
    5298: 39000549     	strb	w9, [x10, #0x1]
    529c: 52800169     	mov	w9, #0xb                // =11
    52a0: f940056a     	ldr	x10, [x11, #0x8]
    52a4: 39000569     	strb	w9, [x11, #0x1]
    52a8: 52800189     	mov	w9, #0xc                // =12
    52ac: f940054b     	ldr	x11, [x10, #0x8]
    52b0: 39000549     	strb	w9, [x10, #0x1]
    52b4: 528001a9     	mov	w9, #0xd                // =13
    52b8: f940056a     	ldr	x10, [x11, #0x8]
    52bc: 39000569     	strb	w9, [x11, #0x1]
    52c0: 528001c9     	mov	w9, #0xe                // =14
    52c4: f940054b     	ldr	x11, [x10, #0x8]
    52c8: 39000549     	strb	w9, [x10, #0x1]
    52cc: 528001e9     	mov	w9, #0xf                // =15
    52d0: 39000569     	strb	w9, [x11, #0x1]
    52d4: b26b7be9     	mov	x9, #0xfffffffe00000    // =4503599625273344
    52d8: 790c3268     	strh	w8, [x19, #0x618]
    52dc: 91194268     	add	x8, x19, #0x650
    52e0: f9032669     	str	x9, [x19, #0x648]
    52e4: f9032a68     	str	x8, [x19, #0x650]
    52e8: f9032e68     	str	x8, [x19, #0x658]
    52ec: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		00000000000052ec:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x5ad8
    52f0: 91000108     	add	x8, x8, #0x0
		00000000000052f0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x5ad8
    52f4: f9033268     	str	x8, [x19, #0x660]
    52f8: 9119c268     	add	x8, x19, #0x670
    52fc: f9033669     	str	x9, [x19, #0x668]
    5300: f9033a68     	str	x8, [x19, #0x670]
    5304: f9033e68     	str	x8, [x19, #0x678]
    5308: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005308:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x5d80
    530c: 91000108     	add	x8, x8, #0x0
		000000000000530c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x5d80
    5310: f9034268     	str	x8, [x19, #0x680]
    5314: 9118c268     	add	x8, x19, #0x630
    5318: f9031669     	str	x9, [x19, #0x628]
    531c: f9031a68     	str	x8, [x19, #0x630]
    5320: f9031e68     	str	x8, [x19, #0x638]
    5324: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005324:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x5e48
    5328: 91000108     	add	x8, x8, #0x0
		0000000000005328:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x5e48
    532c: f9032268     	str	x8, [x19, #0x640]
    5330: b906be7f     	str	wzr, [x19, #0x6bc]
    5334: 94000000     	bl	0x5334 <aw_i2c_probe+0xd94>
		0000000000005334:  R_AARCH64_CALL26	misc_register
    5338: 2a1f03e0     	mov	w0, wzr
    533c: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		000000000000533c:  R_AARCH64_ADR_PREL_PG_HI21	g_aw_haptic
    5340: f9000113     	str	x19, [x8]
		0000000000005340:  R_AARCH64_LDST64_ABS_LO12_NC	g_aw_haptic
    5344: 17fffcba     	b	0x462c <aw_i2c_probe+0x8c>
    5348: 94000000     	bl	0x5348 <aw_i2c_probe+0xda8>
		0000000000005348:  R_AARCH64_CALL26	__stack_chk_fail
    534c: d5384115     	mrs	x21, SP_EL0
    5350: f9402ab6     	ldr	x22, [x21, #0x50]
    5354: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005354:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    5358: 91000108     	add	x8, x8, #0x0
		0000000000005358:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    535c: 5287d000     	mov	w0, #0x3e80             // =16000
    5360: 52819801     	mov	w1, #0xcc0              // =3264
    5364: f9002aa8     	str	x8, [x21, #0x50]
    5368: 94000000     	bl	0x5368 <aw_i2c_probe+0xdc8>
		0000000000005368:  R_AARCH64_CALL26	__kmalloc_large_noprof
    536c: f9002ab6     	str	x22, [x21, #0x50]
    5370: f9030660     	str	x0, [x19, #0x608]
    5374: b5ffebc0     	cbnz	x0, 0x50ec <aw_i2c_probe+0xb4c>
    5378: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005378:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c97
    537c: 91000021     	add	x1, x1, #0x0
		000000000000537c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c97
    5380: aa1403e0     	mov	x0, x20
    5384: 94000000     	bl	0x5384 <aw_i2c_probe+0xde4>
		0000000000005384:  R_AARCH64_CALL26	_dev_err
    5388: 14000012     	b	0x53d0 <aw_i2c_probe+0xe30>
    538c: d5384115     	mrs	x21, SP_EL0
    5390: f9402ab6     	ldr	x22, [x21, #0x50]
    5394: 90000008     	adrp	x8, 0x5000 <aw_i2c_probe+0xa60>
		0000000000005394:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    5398: 91000108     	add	x8, x8, #0x0
		0000000000005398:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    539c: 52819800     	mov	w0, #0xcc0              // =3264
    53a0: 52800041     	mov	w1, #0x2                // =2
    53a4: f9002aa8     	str	x8, [x21, #0x50]
    53a8: 94000000     	bl	0x53a8 <aw_i2c_probe+0xe08>
		00000000000053a8:  R_AARCH64_CALL26	get_free_pages_noprof
    53ac: f9002ab6     	str	x22, [x21, #0x50]
    53b0: f9030a60     	str	x0, [x19, #0x610]
    53b4: b5ffea80     	cbnz	x0, 0x5104 <aw_i2c_probe+0xb64>
    53b8: 90000001     	adrp	x1, 0x5000 <aw_i2c_probe+0xa60>
		00000000000053b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182d
    53bc: 91000021     	add	x1, x1, #0x0
		00000000000053bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182d
    53c0: aa1403e0     	mov	x0, x20
    53c4: 94000000     	bl	0x53c4 <aw_i2c_probe+0xe24>
		00000000000053c4:  R_AARCH64_CALL26	_dev_err
    53c8: f9430660     	ldr	x0, [x19, #0x608]
    53cc: 94000000     	bl	0x53cc <aw_i2c_probe+0xe2c>
		00000000000053cc:  R_AARCH64_CALL26	kfree
    53d0: b9405260     	ldr	w0, [x19, #0x50]
    53d4: 94000000     	bl	0x53d4 <aw_i2c_probe+0xe34>
		00000000000053d4:  R_AARCH64_CALL26	gpio_to_desc
    53d8: 94000000     	bl	0x53d8 <aw_i2c_probe+0xe38>
		00000000000053d8:  R_AARCH64_CALL26	gpiod_to_irq
    53dc: 2a0003e1     	mov	w1, w0
    53e0: aa1403e0     	mov	x0, x20
    53e4: aa1303e2     	mov	x2, x19
    53e8: 94000000     	bl	0x53e8 <aw_i2c_probe+0xe48>
		00000000000053e8:  R_AARCH64_CALL26	devm_free_irq
    53ec: 2a1f03f5     	mov	w21, wzr
    53f0: 17fffedf     	b	0x4f6c <aw_i2c_probe+0x9cc>
    53f4: b25f7be9     	mov	x9, #-0x200000000       // =-8589934592
    53f8: f2b80009     	movk	x9, #0xc000, lsl #16
    53fc: 8b090108     	add	x8, x8, x9
    5400: f9800111     	prfm	pstl1strm, [x8]
    5404: c85f7d09     	ldxr	x9, [x8]
    5408: b2720129     	orr	x9, x9, #0x4000
    540c: c80a7d09     	stxr	w10, x9, [x8]
    5410: 35ffffaa     	cbnz	w10, 0x5404 <aw_i2c_probe+0xe64>
    5414: 17ffff47     	b	0x5130 <aw_i2c_probe+0xb90>
