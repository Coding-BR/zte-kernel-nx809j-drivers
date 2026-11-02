
/input/candidate_module_v2.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000035f8 <syna_tcm_update_mtp_data>:
    35f8: d503233f     	paciasp
    35fc: d103c3ff     	sub	sp, sp, #0xf0
    3600: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
    3604: a90b67fa     	stp	x26, x25, [sp, #0xb0]
    3608: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
    360c: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    3610: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    3614: 910283fd     	add	x29, sp, #0xa0
    3618: d5384108     	mrs	x8, SP_EL0
    361c: f9438908     	ldr	x8, [x8, #0x710]
    3620: f81f83a8     	stur	x8, [x29, #-0x8]
    3624: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    3628: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    362c: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    3630: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    3634: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    3638: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    363c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    3640: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    3644: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    3648: f90003ff     	str	xzr, [sp]
    364c: b4000d80     	cbz	x0, 0x37fc <syna_tcm_update_mtp_data+0x204>
    3650: aa0103f7     	mov	x23, x1
    3654: b4000da1     	cbz	x1, 0x3808 <syna_tcm_update_mtp_data+0x210>
    3658: 2a0203f6     	mov	w22, w2
    365c: 34000d62     	cbz	w2, 0x3808 <syna_tcm_update_mtp_data+0x210>
    3660: 2a0403f5     	mov	w21, w4
    3664: 2a0303f9     	mov	w25, w3
    3668: aa0003f3     	mov	x19, x0
    366c: 34000084     	cbz	w4, 0x367c <syna_tcm_update_mtp_data+0x84>
    3670: b9420e78     	ldr	w24, [x19, #0x20c]
    3674: b941ea74     	ldr	w20, [x19, #0x1e8]
    3678: 14000003     	b	0x3684 <syna_tcm_update_mtp_data+0x8c>
    367c: 2a1f03f4     	mov	w20, wzr
    3680: 2a1f03f8     	mov	w24, wzr
    3684: 910003e8     	mov	x8, sp
    3688: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafd8
    368c: 91000021     	add	x1, x1, #0x0
		000000000000368c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafd8
    3690: 90000002     	adrp	x2, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003690:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    3694: 91000042     	add	x2, x2, #0x0
		0000000000003694:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    3698: 91014100     	add	x0, x8, #0x50
    369c: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    36a0: 94000000     	bl	0x36a0 <syna_tcm_update_mtp_data+0xa8>
		00000000000036a0:  R_AARCH64_CALL26	__mutex_init
    36a4: 52800028     	mov	w8, #0x1                // =1
    36a8: 910003e1     	mov	x1, sp
    36ac: aa1303e0     	mov	x0, x19
    36b0: 2a1803e2     	mov	w2, w24
    36b4: 2a1403e3     	mov	w3, w20
    36b8: b9038a68     	str	w8, [x19, #0x388]
    36bc: 97fff243     	bl	0xffffffffffffffc8 <syna_ts_check_dt+0xfffffffffffd76c4>
		00000000000036bc:  R_AARCH64_CALL26	syna_tcm_set_up_flash_access
    36c0: 2a0003f8     	mov	w24, w0
    36c4: 37f80b00     	tbnz	w0, #0x1f, 0x3824 <syna_tcm_update_mtp_data+0x22c>
    36c8: f94013e8     	ldr	x8, [sp, #0x20]
    36cc: 39400102     	ldrb	w2, [x8]
    36d0: 7100085f     	cmp	w2, #0x2
    36d4: 54000c69     	b.ls	0x3860 <syna_tcm_update_mtp_data+0x268>
    36d8: b9402fe8     	ldr	w8, [sp, #0x2c]
    36dc: 34000ce8     	cbz	w8, 0x3878 <syna_tcm_update_mtp_data+0x280>
    36e0: 340000d9     	cbz	w25, 0x36f8 <syna_tcm_update_mtp_data+0x100>
    36e4: 0b080329     	add	w9, w25, w8
    36e8: 51000529     	sub	w9, w9, #0x1
    36ec: 1ac80929     	udiv	w9, w9, w8
    36f0: 1b087d3a     	mul	w26, w9, w8
    36f4: 14000002     	b	0x36fc <syna_tcm_update_mtp_data+0x104>
    36f8: 2a1f03fa     	mov	w26, wzr
    36fc: 0b0802c9     	add	w9, w22, w8
    3700: 51000529     	sub	w9, w9, #0x1
    3704: 1ac80929     	udiv	w9, w9, w8
    3708: 1b087d39     	mul	w25, w9, w8
    370c: b9008ff9     	str	w25, [sp, #0x8c]
    3710: 94000000     	bl	0x3710 <syna_tcm_update_mtp_data+0x118>
		0000000000003710:  R_AARCH64_CALL26	syna_request_managed_device
    3714: b4000be0     	cbz	x0, 0x3890 <syna_tcm_update_mtp_data+0x298>
    3718: 7100073f     	cmp	w25, #0x1
    371c: 54000c0b     	b.lt	0x389c <syna_tcm_update_mtp_data+0x2a4>
    3720: aa1903e1     	mov	x1, x25
    3724: 5281b802     	mov	w2, #0xdc0              // =3520
    3728: 94000000     	bl	0x3728 <syna_tcm_update_mtp_data+0x130>
		0000000000003728:  R_AARCH64_CALL26	devm_kmalloc
    372c: b4000c20     	cbz	x0, 0x38b0 <syna_tcm_update_mtp_data+0x2b8>
    3730: b9408fe3     	ldr	w3, [sp, #0x8c]
    3734: aa0003f8     	mov	x24, x0
    3738: 6b16007f     	cmp	w3, w22
    373c: 54000c83     	b.lo	0x38cc <syna_tcm_update_mtp_data+0x2d4>
    3740: 6b16033f     	cmp	w25, w22
    3744: 2a1603e2     	mov	w2, w22
    3748: 54000d43     	b.lo	0x38f0 <syna_tcm_update_mtp_data+0x2f8>
    374c: aa1803e0     	mov	x0, x24
    3750: aa1703e1     	mov	x1, x23
    3754: 94000000     	bl	0x3754 <syna_tcm_update_mtp_data+0x15c>
		0000000000003754:  R_AARCH64_CALL26	memcpy
    3758: b9403fe8     	ldr	w8, [sp, #0x3c]
    375c: b9408fe4     	ldr	w4, [sp, #0x8c]
    3760: 910003e1     	mov	x1, sp
    3764: aa1303e0     	mov	x0, x19
    3768: aa1803e3     	mov	x3, x24
    376c: 2a1503e5     	mov	w5, w21
    3770: 0b1a0102     	add	w2, w8, w26
    3774: 97fffcef     	bl	0x2b30 <syna_tcm_update_lockdown_config+0x248>
		0000000000003774:  R_AARCH64_CALL26	syna_tcm_write_flash
    3778: b9408fe8     	ldr	w8, [sp, #0x8c]
    377c: 7100001f     	cmp	w0, #0x0
    3780: 1a88b018     	csel	w24, w0, w8, lt
    3784: 39402668     	ldrb	w8, [x19, #0x9]
    3788: 71002d1f     	cmp	w8, #0xb
    378c: 540000a1     	b.ne	0x37a0 <syna_tcm_update_mtp_data+0x1a8>
    3790: aa1303e0     	mov	x0, x19
    3794: 52800021     	mov	w1, #0x1                // =1
    3798: 2a1403e2     	mov	w2, w20
    379c: 94000000     	bl	0x379c <syna_tcm_update_mtp_data+0x1a4>
		000000000000379c:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
    37a0: b9038a7f     	str	wzr, [x19, #0x388]
    37a4: 394203e2     	ldrb	w2, [sp, #0x80]
    37a8: 35000442     	cbnz	w2, 0x3830 <syna_tcm_update_mtp_data+0x238>
    37ac: f94023f3     	ldr	x19, [sp, #0x40]
    37b0: 94000000     	bl	0x37b0 <syna_tcm_update_mtp_data+0x1b8>
		00000000000037b0:  R_AARCH64_CALL26	syna_request_managed_device
    37b4: b40004a0     	cbz	x0, 0x3848 <syna_tcm_update_mtp_data+0x250>
    37b8: b4000073     	cbz	x19, 0x37c4 <syna_tcm_update_mtp_data+0x1cc>
    37bc: aa1303e1     	mov	x1, x19
    37c0: 94000000     	bl	0x37c0 <syna_tcm_update_mtp_data+0x1c8>
		00000000000037c0:  R_AARCH64_CALL26	devm_kfree
    37c4: d5384108     	mrs	x8, SP_EL0
    37c8: f9438908     	ldr	x8, [x8, #0x710]
    37cc: f85f83a9     	ldur	x9, [x29, #-0x8]
    37d0: eb09011f     	cmp	x8, x9
    37d4: 540008c1     	b.ne	0x38ec <syna_tcm_update_mtp_data+0x2f4>
    37d8: 2a1803e0     	mov	w0, w24
    37dc: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    37e0: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    37e4: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
    37e8: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
    37ec: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
    37f0: 9103c3ff     	add	sp, sp, #0xf0
    37f4: d50323bf     	autiasp
    37f8: d65f03c0     	ret
    37fc: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000037fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    3800: 91000000     	add	x0, x0, #0x0
		0000000000003800:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    3804: 14000003     	b	0x3810 <syna_tcm_update_mtp_data+0x218>
    3808: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ff4
    380c: 91000000     	add	x0, x0, #0x0
		000000000000380c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ff4
    3810: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4a
    3814: 91000021     	add	x1, x1, #0x0
		0000000000003814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4a
    3818: 94000000     	bl	0x3818 <syna_tcm_update_mtp_data+0x220>
		0000000000003818:  R_AARCH64_CALL26	_printk
    381c: 12801e18     	mov	w24, #-0xf1             // =-241
    3820: 17ffffe9     	b	0x37c4 <syna_tcm_update_mtp_data+0x1cc>
    3824: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    3828: 91000000     	add	x0, x0, #0x0
		0000000000003828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    382c: 14000015     	b	0x3880 <syna_tcm_update_mtp_data+0x288>
    3830: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33cc
    3834: 91000000     	add	x0, x0, #0x0
		0000000000003834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33cc
    3838: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bc8
    383c: 91000021     	add	x1, x1, #0x0
		000000000000383c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bc8
    3840: 94000000     	bl	0x3840 <syna_tcm_update_mtp_data+0x248>
		0000000000003840:  R_AARCH64_CALL26	_printk
    3844: 17ffffda     	b	0x37ac <syna_tcm_update_mtp_data+0x1b4>
    3848: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    384c: 91000000     	add	x0, x0, #0x0
		000000000000384c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    3850: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003850:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa204
    3854: 91000021     	add	x1, x1, #0x0
		0000000000003854:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa204
    3858: 94000000     	bl	0x3858 <syna_tcm_update_mtp_data+0x260>
		0000000000003858:  R_AARCH64_CALL26	_printk
    385c: 17ffffda     	b	0x37c4 <syna_tcm_update_mtp_data+0x1cc>
    3860: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003860:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f56
    3864: 91000000     	add	x0, x0, #0x0
		0000000000003864:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f56
    3868: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003868:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4a
    386c: 91000021     	add	x1, x1, #0x0
		000000000000386c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4a
    3870: 94000000     	bl	0x3870 <syna_tcm_update_mtp_data+0x278>
		0000000000003870:  R_AARCH64_CALL26	_printk
    3874: 17ffffc4     	b	0x3784 <syna_tcm_update_mtp_data+0x18c>
    3878: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3642
    387c: 91000000     	add	x0, x0, #0x0
		000000000000387c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3642
    3880: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4a
    3884: 91000021     	add	x1, x1, #0x0
		0000000000003884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4a
    3888: 94000000     	bl	0x3888 <syna_tcm_update_mtp_data+0x290>
		0000000000003888:  R_AARCH64_CALL26	_printk
    388c: 17ffffbe     	b	0x3784 <syna_tcm_update_mtp_data+0x18c>
    3890: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		0000000000003890:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    3894: 91000000     	add	x0, x0, #0x0
		0000000000003894:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    3898: 14000003     	b	0x38a4 <syna_tcm_update_mtp_data+0x2ac>
    389c: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		000000000000389c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70ae
    38a0: 91000000     	add	x0, x0, #0x0
		00000000000038a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70ae
    38a4: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
    38a8: 91000021     	add	x1, x1, #0x0
		00000000000038a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
    38ac: 94000000     	bl	0x38ac <syna_tcm_update_mtp_data+0x2b4>
		00000000000038ac:  R_AARCH64_CALL26	_printk
    38b0: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    38b4: 91000000     	add	x0, x0, #0x0
		00000000000038b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    38b8: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4a
    38bc: 91000021     	add	x1, x1, #0x0
		00000000000038bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4a
    38c0: 94000000     	bl	0x38c0 <syna_tcm_update_mtp_data+0x2c8>
		00000000000038c0:  R_AARCH64_CALL26	_printk
    38c4: 12801e58     	mov	w24, #-0xf3             // =-243
    38c8: 17ffffaf     	b	0x3784 <syna_tcm_update_mtp_data+0x18c>
    38cc: 90000000     	adrp	x0, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x83de
    38d0: 91000000     	add	x0, x0, #0x0
		00000000000038d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x83de
    38d4: 90000001     	adrp	x1, 0x3000 <syna_tcm_write_flash+0x1b8>
		00000000000038d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
    38d8: 91000021     	add	x1, x1, #0x0
		00000000000038d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
    38dc: 2a1603e2     	mov	w2, w22
    38e0: 2a1603e4     	mov	w4, w22
    38e4: 94000000     	bl	0x38e4 <syna_tcm_update_mtp_data+0x2ec>
		00000000000038e4:  R_AARCH64_CALL26	_printk
    38e8: 17ffff9c     	b	0x3758 <syna_tcm_update_mtp_data+0x160>
    38ec: 94000000     	bl	0x38ec <syna_tcm_update_mtp_data+0x2f4>
		00000000000038ec:  R_AARCH64_CALL26	__stack_chk_fail
    38f0: 52800220     	mov	w0, #0x11               // =17
    38f4: aa1903e1     	mov	x1, x25
    38f8: 94000000     	bl	0x38f8 <syna_tcm_update_mtp_data+0x300>
		00000000000038f8:  R_AARCH64_CALL26	__fortify_panic
