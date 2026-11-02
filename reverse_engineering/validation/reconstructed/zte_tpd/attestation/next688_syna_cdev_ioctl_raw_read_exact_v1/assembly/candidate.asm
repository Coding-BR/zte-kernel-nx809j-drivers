
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000298c0 <syna_cdev_ioctl_raw_read>:
   298c0: d503233f     	paciasp
   298c4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   298c8: a9015ff8     	stp	x24, x23, [sp, #0x10]
   298cc: a90257f6     	stp	x22, x21, [sp, #0x20]
   298d0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   298d4: 910003fd     	mov	x29, sp
   298d8: 2a0303f3     	mov	w19, w3
   298dc: 6b02007f     	cmp	w3, w2
   298e0: 54000e08     	b.hi	0x29aa0 <syna_cdev_ioctl_raw_read+0x1e0>
   298e4: 34000ef3     	cbz	w19, 0x29ac0 <syna_cdev_ioctl_raw_read+0x200>
   298e8: f9400008     	ldr	x8, [x0]
   298ec: aa0003f4     	mov	x20, x0
   298f0: aa0103f5     	mov	x21, x1
   298f4: 910d2100     	add	x0, x8, #0x348
   298f8: 94000000     	bl	0x298f8 <syna_cdev_ioctl_raw_read+0x38>
		00000000000298f8:  R_AARCH64_CALL26	mutex_lock
   298fc: 90000018     	adrp	x24, 0x29000 <syna_dev_probe+0x540>
		00000000000298fc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   29900: 39400302     	ldrb	w2, [x24]
		0000000000029900:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29904: 35000ea2     	cbnz	w2, 0x29ad8 <syna_cdev_ioctl_raw_read+0x218>
   29908: 90000017     	adrp	x23, 0x29000 <syna_dev_probe+0x540>
		0000000000029908:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   2990c: 910002f7     	add	x23, x23, #0x0
		000000000002990c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   29910: 910042e0     	add	x0, x23, #0x10
   29914: 94000000     	bl	0x29914 <syna_cdev_ioctl_raw_read+0x54>
		0000000000029914:  R_AARCH64_CALL26	mutex_lock
   29918: 394102e8     	ldrb	w8, [x23, #0x40]
   2991c: b9400af6     	ldr	w22, [x23, #0x8]
   29920: f94002e0     	ldr	x0, [x23]
   29924: 11000508     	add	w8, w8, #0x1
   29928: 6b1302df     	cmp	w22, w19
   2992c: 390102e8     	strb	w8, [x23, #0x40]
   29930: 54000282     	b.hs	0x29980 <syna_cdev_ioctl_raw_read+0xc0>
   29934: b40000c0     	cbz	x0, 0x2994c <syna_cdev_ioctl_raw_read+0x8c>
   29938: aa0003f6     	mov	x22, x0
   2993c: 94000000     	bl	0x2993c <syna_cdev_ioctl_raw_read+0x7c>
		000000000002993c:  R_AARCH64_CALL26	syna_request_managed_device
   29940: b40010e0     	cbz	x0, 0x29b5c <syna_cdev_ioctl_raw_read+0x29c>
   29944: aa1603e1     	mov	x1, x22
   29948: 94000000     	bl	0x29948 <syna_cdev_ioctl_raw_read+0x88>
		0000000000029948:  R_AARCH64_CALL26	devm_kfree
   2994c: 94000000     	bl	0x2994c <syna_cdev_ioctl_raw_read+0x8c>
		000000000002994c:  R_AARCH64_CALL26	syna_request_managed_device
   29950: b4001140     	cbz	x0, 0x29b78 <syna_cdev_ioctl_raw_read+0x2b8>
   29954: 7100027f     	cmp	w19, #0x0
   29958: 54000fcd     	b.le	0x29b50 <syna_cdev_ioctl_raw_read+0x290>
   2995c: 2a1303f6     	mov	w22, w19
   29960: 5281b802     	mov	w2, #0xdc0              // =3520
   29964: aa1603e1     	mov	x1, x22
   29968: 94000000     	bl	0x29968 <syna_cdev_ioctl_raw_read+0xa8>
		0000000000029968:  R_AARCH64_CALL26	devm_kmalloc
   2996c: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x540>
		000000000002996c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29970: f9000100     	str	x0, [x8]
		0000000000029970:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   29974: b4001100     	cbz	x0, 0x29b94 <syna_cdev_ioctl_raw_read+0x2d4>
   29978: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x540>
		0000000000029978:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   2997c: b9000113     	str	w19, [x8]
		000000000002997c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   29980: 2a1f03e1     	mov	w1, wzr
   29984: aa1603e2     	mov	x2, x22
   29988: 94000000     	bl	0x29988 <syna_cdev_ioctl_raw_read+0xc8>
		0000000000029988:  R_AARCH64_CALL26	memset
   2998c: b9000eff     	str	wzr, [x23, #0xc]
   29990: f9400288     	ldr	x8, [x20]
   29994: b4000ae8     	cbz	x8, 0x29af0 <syna_cdev_ioctl_raw_read+0x230>
   29998: f9402500     	ldr	x0, [x8, #0x48]
   2999c: b4000b20     	cbz	x0, 0x29b00 <syna_cdev_ioctl_raw_read+0x240>
   299a0: f9401008     	ldr	x8, [x0, #0x20]
   299a4: b4000b68     	cbz	x8, 0x29b10 <syna_cdev_ioctl_raw_read+0x250>
   299a8: f94002f6     	ldr	x22, [x23]
   299ac: 2a1303e2     	mov	w2, w19
   299b0: aa1603e1     	mov	x1, x22
   299b4: b85fc110     	ldur	w16, [x8, #-0x4]
   299b8: 728403f1     	movk	w17, #0x201f
   299bc: 72a51491     	movk	w17, #0x28a4, lsl #16
   299c0: 6b11021f     	cmp	w16, w17
   299c4: 54000040     	b.eq	0x299cc <syna_cdev_ioctl_raw_read+0x10c>
   299c8: d4304500     	brk	#0x8228
   299cc: d63f0100     	blr	x8
   299d0: 37f80ae0     	tbnz	w0, #0x1f, 0x29b2c <syna_cdev_ioctl_raw_read+0x26c>
   299d4: 37f81333     	tbnz	w19, #0x1f, 0x29c38 <syna_cdev_ioctl_raw_read+0x378>
   299d8: 2a1303f7     	mov	w23, w19
   299dc: aa1603e0     	mov	x0, x22
   299e0: 52800022     	mov	w2, #0x1                // =1
   299e4: aa1703e1     	mov	x1, x23
   299e8: 94000000     	bl	0x299e8 <syna_cdev_ioctl_raw_read+0x128>
		00000000000299e8:  R_AARCH64_CALL26	__check_object_size
   299ec: d5384108     	mrs	x8, SP_EL0
   299f0: 39411909     	ldrb	w9, [x8, #0x46]
   299f4: 37280089     	tbnz	w9, #0x5, 0x29a04 <syna_cdev_ioctl_raw_read+0x144>
   299f8: f940010a     	ldr	x10, [x8]
   299fc: aa1503e9     	mov	x9, x21
   29a00: 36d0006a     	tbz	w10, #0x1a, 0x29a0c <syna_cdev_ioctl_raw_read+0x14c>
   29a04: d378dea9     	lsl	x9, x21, #8
   29a08: 8a8922a9     	and	x9, x21, x9, asr #8
   29a0c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   29a10: cb17014a     	sub	x10, x10, x23
   29a14: eb09015f     	cmp	x10, x9
   29a18: 54000363     	b.lo	0x29a84 <syna_cdev_ioctl_raw_read+0x1c4>
   29a1c: d503201f     	nop
   29a20: d53b4229     	mrs	x9, DAIF
   29a24: d50343df     	msr	DAIFSet, #0x3
   29a28: f9400508     	ldr	x8, [x8, #0x8]
   29a2c: d538202a     	mrs	x10, TTBR1_EL1
   29a30: aa0803eb     	mov	x11, x8
   29a34: b340bd4b     	bfxil	x11, x10, #0, #48
   29a38: d518202b     	msr	TTBR1_EL1, x11
   29a3c: d5182008     	msr	TTBR0_EL1, x8
   29a40: d5033fdf     	isb
   29a44: d51b4229     	msr	DAIF, x9
   29a48: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   29a4c: aa1603e1     	mov	x1, x22
   29a50: aa1703e2     	mov	x2, x23
   29a54: 94000000     	bl	0x29a54 <syna_cdev_ioctl_raw_read+0x194>
		0000000000029a54:  R_AARCH64_CALL26	__arch_copy_to_user
   29a58: d503201f     	nop
   29a5c: d53b4228     	mrs	x8, DAIF
   29a60: d50343df     	msr	DAIFSet, #0x3
   29a64: d5382029     	mrs	x9, TTBR1_EL1
   29a68: 9240bd29     	and	x9, x9, #0xffffffffffff
   29a6c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   29a70: d518200a     	msr	TTBR0_EL1, x10
   29a74: d5182029     	msr	TTBR1_EL1, x9
   29a78: d5033fdf     	isb
   29a7c: d51b4228     	msr	DAIF, x8
   29a80: b4000a80     	cbz	x0, 0x29bd0 <syna_cdev_ioctl_raw_read+0x310>
   29a84: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19774
   29a88: 91000000     	add	x0, x0, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19774
   29a8c: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af49
   29a90: 91000021     	add	x1, x1, #0x0
		0000000000029a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af49
   29a94: 94000000     	bl	0x29a94 <syna_cdev_ioctl_raw_read+0x1d4>
		0000000000029a94:  R_AARCH64_CALL26	_printk
   29a98: 12800673     	mov	w19, #-0x34             // =-52
   29a9c: 1400004d     	b	0x29bd0 <syna_cdev_ioctl_raw_read+0x310>
   29aa0: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a93c
   29aa4: 91000000     	add	x0, x0, #0x0
		0000000000029aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a93c
   29aa8: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af49
   29aac: 91000021     	add	x1, x1, #0x0
		0000000000029aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af49
   29ab0: 2a1303e3     	mov	w3, w19
   29ab4: 94000000     	bl	0x29ab4 <syna_cdev_ioctl_raw_read+0x1f4>
		0000000000029ab4:  R_AARCH64_CALL26	_printk
   29ab8: 128002b3     	mov	w19, #-0x16             // =-22
   29abc: 14000050     	b	0x29bfc <syna_cdev_ioctl_raw_read+0x33c>
   29ac0: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b8c5
   29ac4: 91000000     	add	x0, x0, #0x0
		0000000000029ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b8c5
   29ac8: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af49
   29acc: 91000021     	add	x1, x1, #0x0
		0000000000029acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af49
   29ad0: 94000000     	bl	0x29ad0 <syna_cdev_ioctl_raw_read+0x210>
		0000000000029ad0:  R_AARCH64_CALL26	_printk
   29ad4: 1400004a     	b	0x29bfc <syna_cdev_ioctl_raw_read+0x33c>
   29ad8: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a477
   29adc: 91000000     	add	x0, x0, #0x0
		0000000000029adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a477
   29ae0: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ce
   29ae4: 91000021     	add	x1, x1, #0x0
		0000000000029ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ce
   29ae8: 94000000     	bl	0x29ae8 <syna_cdev_ioctl_raw_read+0x228>
		0000000000029ae8:  R_AARCH64_CALL26	_printk
   29aec: 17ffff87     	b	0x29908 <syna_cdev_ioctl_raw_read+0x48>
   29af0: 12801e15     	mov	w21, #-0xf1             // =-241
   29af4: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18369
   29af8: 91000000     	add	x0, x0, #0x0
		0000000000029af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18369
   29afc: 14000008     	b	0x29b1c <syna_cdev_ioctl_raw_read+0x25c>
   29b00: 12801e15     	mov	w21, #-0xf1             // =-241
   29b04: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a364
   29b08: 91000000     	add	x0, x0, #0x0
		0000000000029b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a364
   29b0c: 14000004     	b	0x29b1c <syna_cdev_ioctl_raw_read+0x25c>
   29b10: 12801e95     	mov	w21, #-0xf5             // =-245
   29b14: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197b1
   29b18: 91000000     	add	x0, x0, #0x0
		0000000000029b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197b1
   29b1c: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x197a3
   29b20: 91000021     	add	x1, x1, #0x0
		0000000000029b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x197a3
   29b24: 94000000     	bl	0x29b24 <syna_cdev_ioctl_raw_read+0x264>
		0000000000029b24:  R_AARCH64_CALL26	_printk
   29b28: 14000002     	b	0x29b30 <syna_cdev_ioctl_raw_read+0x270>
   29b2c: 2a0003f5     	mov	w21, w0
   29b30: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be2f
   29b34: 91000000     	add	x0, x0, #0x0
		0000000000029b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be2f
   29b38: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af49
   29b3c: 91000021     	add	x1, x1, #0x0
		0000000000029b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af49
   29b40: 2a1303e2     	mov	w2, w19
   29b44: 94000000     	bl	0x29b44 <syna_cdev_ioctl_raw_read+0x284>
		0000000000029b44:  R_AARCH64_CALL26	_printk
   29b48: 2a1503f3     	mov	w19, w21
   29b4c: 14000021     	b	0x29bd0 <syna_cdev_ioctl_raw_read+0x310>
   29b50: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4a7
   29b54: 91000000     	add	x0, x0, #0x0
		0000000000029b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4a7
   29b58: 1400000a     	b	0x29b80 <syna_cdev_ioctl_raw_read+0x2c0>
   29b5c: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bec0
   29b60: 91000000     	add	x0, x0, #0x0
		0000000000029b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bec0
   29b64: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b90b
   29b68: 91000021     	add	x1, x1, #0x0
		0000000000029b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b90b
   29b6c: 94000000     	bl	0x29b6c <syna_cdev_ioctl_raw_read+0x2ac>
		0000000000029b6c:  R_AARCH64_CALL26	_printk
   29b70: 94000000     	bl	0x29b70 <syna_cdev_ioctl_raw_read+0x2b0>
		0000000000029b70:  R_AARCH64_CALL26	syna_request_managed_device
   29b74: b5ffef00     	cbnz	x0, 0x29954 <syna_cdev_ioctl_raw_read+0x94>
   29b78: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bec0
   29b7c: 91000000     	add	x0, x0, #0x0
		0000000000029b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bec0
   29b80: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19543
   29b84: 91000021     	add	x1, x1, #0x0
		0000000000029b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19543
   29b88: 94000000     	bl	0x29b88 <syna_cdev_ioctl_raw_read+0x2c8>
		0000000000029b88:  R_AARCH64_CALL26	_printk
   29b8c: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x540>
		0000000000029b8c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29b90: f900011f     	str	xzr, [x8]
		0000000000029b90:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   29b94: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e5b
   29b98: 91000000     	add	x0, x0, #0x0
		0000000000029b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e5b
   29b9c: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a629
   29ba0: 91000021     	add	x1, x1, #0x0
		0000000000029ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a629
   29ba4: 2a1303e2     	mov	w2, w19
   29ba8: 94000000     	bl	0x29ba8 <syna_cdev_ioctl_raw_read+0x2e8>
		0000000000029ba8:  R_AARCH64_CALL26	_printk
   29bac: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x540>
		0000000000029bac:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   29bb0: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1b0
   29bb4: 91000000     	add	x0, x0, #0x0
		0000000000029bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1b0
   29bb8: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af49
   29bbc: 91000021     	add	x1, x1, #0x0
		0000000000029bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af49
   29bc0: 2a1303e2     	mov	w2, w19
   29bc4: f900011f     	str	xzr, [x8]
		0000000000029bc4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   29bc8: 94000000     	bl	0x29bc8 <syna_cdev_ioctl_raw_read+0x308>
		0000000000029bc8:  R_AARCH64_CALL26	_printk
   29bcc: 12801e53     	mov	w19, #-0xf3             // =-243
   29bd0: 39400302     	ldrb	w2, [x24]
		0000000000029bd0:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29bd4: 7100045f     	cmp	w2, #0x1
   29bd8: 54000201     	b.ne	0x29c18 <syna_cdev_ioctl_raw_read+0x358>
   29bdc: 2a1f03e8     	mov	w8, wzr
   29be0: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029be0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   29be4: 91000000     	add	x0, x0, #0x0
		0000000000029be4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   29be8: 3900c008     	strb	w8, [x0, #0x30]
   29bec: 94000000     	bl	0x29bec <syna_cdev_ioctl_raw_read+0x32c>
		0000000000029bec:  R_AARCH64_CALL26	mutex_unlock
   29bf0: f9400288     	ldr	x8, [x20]
   29bf4: 910d2100     	add	x0, x8, #0x348
   29bf8: 94000000     	bl	0x29bf8 <syna_cdev_ioctl_raw_read+0x338>
		0000000000029bf8:  R_AARCH64_CALL26	mutex_unlock
   29bfc: 2a1303e0     	mov	w0, w19
   29c00: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29c04: a94257f6     	ldp	x22, x21, [sp, #0x20]
   29c08: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   29c0c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   29c10: d50323bf     	autiasp
   29c14: d65f03c0     	ret
   29c18: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x540>
		0000000000029c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a477
   29c1c: 91000000     	add	x0, x0, #0x0
		0000000000029c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a477
   29c20: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x540>
		0000000000029c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c332
   29c24: 91000021     	add	x1, x1, #0x0
		0000000000029c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c332
   29c28: 94000000     	bl	0x29c28 <syna_cdev_ioctl_raw_read+0x368>
		0000000000029c28:  R_AARCH64_CALL26	_printk
   29c2c: 39400308     	ldrb	w8, [x24]
		0000000000029c2c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29c30: 51000508     	sub	w8, w8, #0x1
   29c34: 17ffffeb     	b	0x29be0 <syna_cdev_ioctl_raw_read+0x320>
   29c38: d4210000     	brk	#0x800
   29c3c: 17ffff92     	b	0x29a84 <syna_cdev_ioctl_raw_read+0x1c4>
