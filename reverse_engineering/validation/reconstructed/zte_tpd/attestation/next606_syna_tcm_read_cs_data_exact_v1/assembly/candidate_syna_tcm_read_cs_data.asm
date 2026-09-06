
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000035f8 <syna_tcm_read_cs_data>:
    35f8: d503233f     	paciasp
    35fc: d10543ff     	sub	sp, sp, #0x150
    3600: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
    3604: a9106ffc     	stp	x28, x27, [sp, #0x100]
    3608: a91167fa     	stp	x26, x25, [sp, #0x110]
    360c: a9125ff8     	stp	x24, x23, [sp, #0x120]
    3610: a91357f6     	stp	x22, x21, [sp, #0x130]
    3614: a9144ff4     	stp	x20, x19, [sp, #0x140]
    3618: 9103c3fd     	add	x29, sp, #0xf0
    361c: d5384108     	mrs	x8, SP_EL0
    3620: f9438908     	ldr	x8, [x8, #0x710]
    3624: f81f83a8     	stur	x8, [x29, #-0x8]
    3628: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    362c: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    3630: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    3634: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    3638: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    363c: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    3640: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    3644: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    3648: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    364c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    3650: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    3654: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    3658: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    365c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3660: b4000de0     	cbz	x0, 0x381c <syna_tcm_read_cs_data+0x224>
    3664: aa0103f5     	mov	x21, x1
    3668: b4000e01     	cbz	x1, 0x3828 <syna_tcm_read_cs_data+0x230>
    366c: 2a0203f4     	mov	w20, w2
    3670: 34000dc2     	cbz	w2, 0x3828 <syna_tcm_read_cs_data+0x230>
    3674: 2a0403f7     	mov	w23, w4
    3678: 2a0303f8     	mov	w24, w3
    367c: aa0003f3     	mov	x19, x0
    3680: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
    3684: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
    3688: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
    368c: a90affff     	stp	xzr, xzr, [sp, #0xa8]
    3690: a909ffff     	stp	xzr, xzr, [sp, #0x98]
    3694: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    3698: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    369c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    36a0: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    36a4: f9002bff     	str	xzr, [sp, #0x50]
    36a8: 34000084     	cbz	w4, 0x36b8 <syna_tcm_read_cs_data+0xc0>
    36ac: b9420e79     	ldr	w25, [x19, #0x20c]
    36b0: b941ea76     	ldr	w22, [x19, #0x1e8]
    36b4: 14000003     	b	0x36c0 <syna_tcm_read_cs_data+0xc8>
    36b8: 2a1f03f6     	mov	w22, wzr
    36bc: 2a1f03f9     	mov	w25, wzr
    36c0: 910143e8     	add	x8, sp, #0x50
    36c4: 9000001a     	adrp	x26, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000036c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd8
    36c8: 9100035a     	add	x26, x26, #0x0
		00000000000036c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd8
    36cc: 9000001b     	adrp	x27, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000036cc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    36d0: 9100037b     	add	x27, x27, #0x0
		00000000000036d0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    36d4: 91014100     	add	x0, x8, #0x50
    36d8: aa1a03e1     	mov	x1, x26
    36dc: aa1b03e2     	mov	x2, x27
    36e0: a9097fff     	stp	xzr, xzr, [sp, #0x90]
    36e4: 94000000     	bl	0x36e4 <syna_tcm_read_cs_data+0xec>
		00000000000036e4:  R_AARCH64_CALL26	__mutex_init
    36e8: 910023e8     	add	x8, sp, #0x8
    36ec: aa1a03e1     	mov	x1, x26
    36f0: aa1b03e2     	mov	x2, x27
    36f4: 91004100     	add	x0, x8, #0x10
    36f8: 390123ff     	strb	wzr, [sp, #0x48]
    36fc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3700: 94000000     	bl	0x3700 <syna_tcm_read_cs_data+0x108>
		0000000000003700:  R_AARCH64_CALL26	__mutex_init
    3704: 910143e1     	add	x1, sp, #0x50
    3708: aa1303e0     	mov	x0, x19
    370c: 2a1903e2     	mov	w2, w25
    3710: 2a1603e3     	mov	w3, w22
    3714: 97fff2f3     	bl	0x2e0 <syna_tcm_set_up_flash_access>
    3718: 37f80960     	tbnz	w0, #0x1f, 0x3844 <syna_tcm_read_cs_data+0x24c>
    371c: b9407fe8     	ldr	w8, [sp, #0x7c]
    3720: 340000a8     	cbz	w8, 0x3734 <syna_tcm_read_cs_data+0x13c>
    3724: 0b080289     	add	w9, w20, w8
    3728: 51000529     	sub	w9, w9, #0x1
    372c: 1ac80929     	udiv	w9, w9, w8
    3730: 14000002     	b	0x3738 <syna_tcm_read_cs_data+0x140>
    3734: 2a1f03e9     	mov	w9, wzr
    3738: 1b087d23     	mul	w3, w9, w8
    373c: 910143e1     	add	x1, sp, #0x50
    3740: 910023e2     	add	x2, sp, #0x8
    3744: aa1303e0     	mov	x0, x19
    3748: 2a1803e4     	mov	w4, w24
    374c: 2a1703e5     	mov	w5, w23
    3750: 97fff6da     	bl	0x12b8 <syna_tcm_read_flash_boot_cs_config>
    3754: 37f80b00     	tbnz	w0, #0x1f, 0x38b4 <syna_tcm_read_cs_data+0x2bc>
    3758: f94007e1     	ldr	x1, [sp, #0x8]
    375c: b4000c81     	cbz	x1, 0x38ec <syna_tcm_read_cs_data+0x2f4>
    3760: b94013e2     	ldr	w2, [sp, #0x10]
    3764: 6b14005f     	cmp	w2, w20
    3768: 54000b43     	b.lo	0x38d0 <syna_tcm_read_cs_data+0x2d8>
    376c: 2a1403e2     	mov	w2, w20
    3770: aa1503e0     	mov	x0, x21
    3774: 94000000     	bl	0x3774 <syna_tcm_read_cs_data+0x17c>
		0000000000003774:  R_AARCH64_CALL26	memcpy
    3778: 2a1f03f4     	mov	w20, wzr
    377c: 39402668     	ldrb	w8, [x19, #0x9]
    3780: 71002d1f     	cmp	w8, #0xb
    3784: 540000a1     	b.ne	0x3798 <syna_tcm_read_cs_data+0x1a0>
    3788: aa1303e0     	mov	x0, x19
    378c: 52800021     	mov	w1, #0x1                // =1
    3790: 2a1603e2     	mov	w2, w22
    3794: 94000000     	bl	0x3794 <syna_tcm_read_cs_data+0x19c>
		0000000000003794:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    3798: 394123e2     	ldrb	w2, [sp, #0x48]
    379c: 350005c2     	cbnz	w2, 0x3854 <syna_tcm_read_cs_data+0x25c>
    37a0: f94007f3     	ldr	x19, [sp, #0x8]
    37a4: 94000000     	bl	0x37a4 <syna_tcm_read_cs_data+0x1ac>
		00000000000037a4:  R_AARCH64_CALL26	syna_request_managed_device
    37a8: b4000620     	cbz	x0, 0x386c <syna_tcm_read_cs_data+0x274>
    37ac: b4000073     	cbz	x19, 0x37b8 <syna_tcm_read_cs_data+0x1c0>
    37b0: aa1303e1     	mov	x1, x19
    37b4: 94000000     	bl	0x37b4 <syna_tcm_read_cs_data+0x1bc>
		00000000000037b4:  R_AARCH64_CALL26	devm_kfree
    37b8: 394343e2     	ldrb	w2, [sp, #0xd0]
    37bc: f9000bff     	str	xzr, [sp, #0x10]
    37c0: 390123ff     	strb	wzr, [sp, #0x48]
    37c4: 35000602     	cbnz	w2, 0x3884 <syna_tcm_read_cs_data+0x28c>
    37c8: f9404bf3     	ldr	x19, [sp, #0x90]
    37cc: 94000000     	bl	0x37cc <syna_tcm_read_cs_data+0x1d4>
		00000000000037cc:  R_AARCH64_CALL26	syna_request_managed_device
    37d0: b4000660     	cbz	x0, 0x389c <syna_tcm_read_cs_data+0x2a4>
    37d4: b4000073     	cbz	x19, 0x37e0 <syna_tcm_read_cs_data+0x1e8>
    37d8: aa1303e1     	mov	x1, x19
    37dc: 94000000     	bl	0x37dc <syna_tcm_read_cs_data+0x1e4>
		00000000000037dc:  R_AARCH64_CALL26	devm_kfree
    37e0: 2a1403e0     	mov	w0, w20
    37e4: d5384108     	mrs	x8, SP_EL0
    37e8: f9438908     	ldr	x8, [x8, #0x710]
    37ec: f85f83a9     	ldur	x9, [x29, #-0x8]
    37f0: eb09011f     	cmp	x8, x9
    37f4: 540008a1     	b.ne	0x3908 <syna_tcm_read_cs_data+0x310>
    37f8: a9544ff4     	ldp	x20, x19, [sp, #0x140]
    37fc: a95357f6     	ldp	x22, x21, [sp, #0x130]
    3800: a9525ff8     	ldp	x24, x23, [sp, #0x120]
    3804: a95167fa     	ldp	x26, x25, [sp, #0x110]
    3808: a9506ffc     	ldp	x28, x27, [sp, #0x100]
    380c: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
    3810: 910543ff     	add	sp, sp, #0x150
    3814: d50323bf     	autiasp
    3818: d65f03c0     	ret
    381c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000381c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    3820: 91000000     	add	x0, x0, #0x0
		0000000000003820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    3824: 14000003     	b	0x3830 <syna_tcm_read_cs_data+0x238>
    3828: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003828:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3622
    382c: 91000000     	add	x0, x0, #0x0
		000000000000382c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3622
    3830: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2980
    3834: 91000021     	add	x1, x1, #0x0
		0000000000003834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2980
    3838: 94000000     	bl	0x3838 <syna_tcm_read_cs_data+0x240>
		0000000000003838:  R_AARCH64_CALL26	_printk
    383c: 12801e00     	mov	w0, #-0xf1              // =-241
    3840: 17ffffe9     	b	0x37e4 <syna_tcm_read_cs_data+0x1ec>
    3844: 2a0003f4     	mov	w20, w0
    3848: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    384c: 91000000     	add	x0, x0, #0x0
		000000000000384c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    3850: 1400001c     	b	0x38c0 <syna_tcm_read_cs_data+0x2c8>
    3854: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003854:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    3858: 91000000     	add	x0, x0, #0x0
		0000000000003858:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    385c: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000385c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    3860: 91000021     	add	x1, x1, #0x0
		0000000000003860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    3864: 94000000     	bl	0x3864 <syna_tcm_read_cs_data+0x26c>
		0000000000003864:  R_AARCH64_CALL26	_printk
    3868: 17ffffce     	b	0x37a0 <syna_tcm_read_cs_data+0x1a8>
    386c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000386c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    3870: 91000000     	add	x0, x0, #0x0
		0000000000003870:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    3874: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    3878: 91000021     	add	x1, x1, #0x0
		0000000000003878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    387c: 94000000     	bl	0x387c <syna_tcm_read_cs_data+0x284>
		000000000000387c:  R_AARCH64_CALL26	_printk
    3880: 17ffffce     	b	0x37b8 <syna_tcm_read_cs_data+0x1c0>
    3884: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003884:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    3888: 91000000     	add	x0, x0, #0x0
		0000000000003888:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    388c: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000388c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    3890: 91000021     	add	x1, x1, #0x0
		0000000000003890:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    3894: 94000000     	bl	0x3894 <syna_tcm_read_cs_data+0x29c>
		0000000000003894:  R_AARCH64_CALL26	_printk
    3898: 17ffffcc     	b	0x37c8 <syna_tcm_read_cs_data+0x1d0>
    389c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000389c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    38a0: 91000000     	add	x0, x0, #0x0
		00000000000038a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    38a4: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    38a8: 91000021     	add	x1, x1, #0x0
		00000000000038a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    38ac: 94000000     	bl	0x38ac <syna_tcm_read_cs_data+0x2b4>
		00000000000038ac:  R_AARCH64_CALL26	_printk
    38b0: 17ffffcc     	b	0x37e0 <syna_tcm_read_cs_data+0x1e8>
    38b4: 2a0003f4     	mov	w20, w0
    38b8: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23cc
    38bc: 91000000     	add	x0, x0, #0x0
		00000000000038bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23cc
    38c0: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2980
    38c4: 91000021     	add	x1, x1, #0x0
		00000000000038c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2980
    38c8: 94000000     	bl	0x38c8 <syna_tcm_read_cs_data+0x2d0>
		00000000000038c8:  R_AARCH64_CALL26	_printk
    38cc: 17ffffac     	b	0x377c <syna_tcm_read_cs_data+0x184>
    38d0: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83de
    38d4: 91000000     	add	x0, x0, #0x0
		00000000000038d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83de
    38d8: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    38dc: 91000021     	add	x1, x1, #0x0
		00000000000038dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    38e0: 2a1403e3     	mov	w3, w20
    38e4: 2a1403e4     	mov	w4, w20
    38e8: 94000000     	bl	0x38e8 <syna_tcm_read_cs_data+0x2f0>
		00000000000038e8:  R_AARCH64_CALL26	_printk
    38ec: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc670
    38f0: 91000000     	add	x0, x0, #0x0
		00000000000038f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc670
    38f4: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2980
    38f8: 91000021     	add	x1, x1, #0x0
		00000000000038f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2980
    38fc: 94000000     	bl	0x38fc <syna_tcm_read_cs_data+0x304>
		00000000000038fc:  R_AARCH64_CALL26	_printk
    3900: 128002b4     	mov	w20, #-0x16             // =-22
    3904: 17ffff9e     	b	0x377c <syna_tcm_read_cs_data+0x184>
    3908: 94000000     	bl	0x3908 <syna_tcm_read_cs_data+0x310>
		0000000000003908:  R_AARCH64_CALL26	__stack_chk_fail
