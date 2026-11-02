
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029854 <syna_cdev_ioctl_raw_write>:
   29854: d503233f     	paciasp
   29858: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   2985c: f9000bf9     	str	x25, [sp, #0x10]
   29860: a9025ff8     	stp	x24, x23, [sp, #0x20]
   29864: a90357f6     	stp	x22, x21, [sp, #0x30]
   29868: a9044ff4     	stp	x20, x19, [sp, #0x40]
   2986c: 910003fd     	mov	x29, sp
   29870: 2a0303f3     	mov	w19, w3
   29874: 6b02007f     	cmp	w3, w2
   29878: 54000f68     	b.hi	0x29a64 <syna_cdev_ioctl_raw_write+0x210>
   2987c: 34001053     	cbz	w19, 0x29a84 <syna_cdev_ioctl_raw_write+0x230>
   29880: f9400008     	ldr	x8, [x0]
   29884: aa0003f4     	mov	x20, x0
   29888: aa0103f5     	mov	x21, x1
   2988c: 910d2100     	add	x0, x8, #0x348
   29890: 94000000     	bl	0x29890 <syna_cdev_ioctl_raw_write+0x3c>
		0000000000029890:  R_AARCH64_CALL26	mutex_lock
   29894: 90000019     	adrp	x25, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029894:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   29898: 39400322     	ldrb	w2, [x25]
		0000000000029898:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   2989c: 35001022     	cbnz	w2, 0x29aa0 <syna_cdev_ioctl_raw_write+0x24c>
   298a0: 90000017     	adrp	x23, 0x29000 <syna_dev_process_touch_report+0x3a8>
		00000000000298a0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   298a4: 910002f7     	add	x23, x23, #0x0
		00000000000298a4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   298a8: 910042e0     	add	x0, x23, #0x10
   298ac: 94000000     	bl	0x298ac <syna_cdev_ioctl_raw_write+0x58>
		00000000000298ac:  R_AARCH64_CALL26	mutex_lock
   298b0: 394102e8     	ldrb	w8, [x23, #0x40]
   298b4: b9400af6     	ldr	w22, [x23, #0x8]
   298b8: f94002e0     	ldr	x0, [x23]
   298bc: 11000508     	add	w8, w8, #0x1
   298c0: 6b1302df     	cmp	w22, w19
   298c4: 390102e8     	strb	w8, [x23, #0x40]
   298c8: 54000282     	b.hs	0x29918 <syna_cdev_ioctl_raw_write+0xc4>
   298cc: b40000c0     	cbz	x0, 0x298e4 <syna_cdev_ioctl_raw_write+0x90>
   298d0: aa0003f6     	mov	x22, x0
   298d4: 94000000     	bl	0x298d4 <syna_cdev_ioctl_raw_write+0x80>
		00000000000298d4:  R_AARCH64_CALL26	syna_request_managed_device
   298d8: b4001220     	cbz	x0, 0x29b1c <syna_cdev_ioctl_raw_write+0x2c8>
   298dc: aa1603e1     	mov	x1, x22
   298e0: 94000000     	bl	0x298e0 <syna_cdev_ioctl_raw_write+0x8c>
		00000000000298e0:  R_AARCH64_CALL26	devm_kfree
   298e4: 94000000     	bl	0x298e4 <syna_cdev_ioctl_raw_write+0x90>
		00000000000298e4:  R_AARCH64_CALL26	syna_request_managed_device
   298e8: b4001280     	cbz	x0, 0x29b38 <syna_cdev_ioctl_raw_write+0x2e4>
   298ec: 7100027f     	cmp	w19, #0x0
   298f0: 5400110d     	b.le	0x29b10 <syna_cdev_ioctl_raw_write+0x2bc>
   298f4: 2a1303f6     	mov	w22, w19
   298f8: 5281b802     	mov	w2, #0xdc0              // =3520
   298fc: aa1603e1     	mov	x1, x22
   29900: 94000000     	bl	0x29900 <syna_cdev_ioctl_raw_write+0xac>
		0000000000029900:  R_AARCH64_CALL26	devm_kmalloc
   29904: 90000008     	adrp	x8, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029904:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29908: f9000100     	str	x0, [x8]
		0000000000029908:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   2990c: b4001240     	cbz	x0, 0x29b54 <syna_cdev_ioctl_raw_write+0x300>
   29910: 90000008     	adrp	x8, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029910:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   29914: b9000113     	str	w19, [x8]
		0000000000029914:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   29918: 2a1f03e1     	mov	w1, wzr
   2991c: aa1603e2     	mov	x2, x22
   29920: 94000000     	bl	0x29920 <syna_cdev_ioctl_raw_write+0xcc>
		0000000000029920:  R_AARCH64_CALL26	memset
   29924: b9000eff     	str	wzr, [x23, #0xc]
   29928: 37f816b3     	tbnz	w19, #0x1f, 0x29bfc <syna_cdev_ioctl_raw_write+0x3a8>
   2992c: f94002f6     	ldr	x22, [x23]
   29930: 2a1303f7     	mov	w23, w19
   29934: 2a1f03e2     	mov	w2, wzr
   29938: aa1703e1     	mov	x1, x23
   2993c: aa1603e0     	mov	x0, x22
   29940: 94000000     	bl	0x29940 <syna_cdev_ioctl_raw_write+0xec>
		0000000000029940:  R_AARCH64_CALL26	__check_object_size
   29944: d5384108     	mrs	x8, SP_EL0
   29948: 39411909     	ldrb	w9, [x8, #0x46]
   2994c: 37280089     	tbnz	w9, #0x5, 0x2995c <syna_cdev_ioctl_raw_write+0x108>
   29950: f940010a     	ldr	x10, [x8]
   29954: aa1503e9     	mov	x9, x21
   29958: 36d0006a     	tbz	w10, #0x1a, 0x29964 <syna_cdev_ioctl_raw_write+0x110>
   2995c: d378dea9     	lsl	x9, x21, #8
   29960: 8a8922a9     	and	x9, x21, x9, asr #8
   29964: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   29968: aa1703f8     	mov	x24, x23
   2996c: cb17014a     	sub	x10, x10, x23
   29970: eb09015f     	cmp	x10, x9
   29974: 540001e2     	b.hs	0x299b0 <syna_cdev_ioctl_raw_write+0x15c>
   29978: cb1802e8     	sub	x8, x23, x24
   2997c: 2a1f03e1     	mov	w1, wzr
   29980: aa1803e2     	mov	x2, x24
   29984: 8b0802c0     	add	x0, x22, x8
   29988: 94000000     	bl	0x29988 <syna_cdev_ioctl_raw_write+0x134>
		0000000000029988:  R_AARCH64_CALL26	memset
   2998c: 34000498     	cbz	w24, 0x29a1c <syna_cdev_ioctl_raw_write+0x1c8>
   29990: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e25
   29994: 91000000     	add	x0, x0, #0x0
		0000000000029994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e25
   29998: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a6a
   2999c: 91000021     	add	x1, x1, #0x0
		000000000002999c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a6a
   299a0: 2a1803e2     	mov	w2, w24
   299a4: 94000000     	bl	0x299a4 <syna_cdev_ioctl_raw_write+0x150>
		00000000000299a4:  R_AARCH64_CALL26	_printk
   299a8: 12800673     	mov	w19, #-0x34             // =-52
   299ac: 14000079     	b	0x29b90 <syna_cdev_ioctl_raw_write+0x33c>
   299b0: d503201f     	nop
   299b4: d53b4229     	mrs	x9, DAIF
   299b8: d50343df     	msr	DAIFSet, #0x3
   299bc: f9400508     	ldr	x8, [x8, #0x8]
   299c0: d538202a     	mrs	x10, TTBR1_EL1
   299c4: aa0803eb     	mov	x11, x8
   299c8: b340bd4b     	bfxil	x11, x10, #0, #48
   299cc: d518202b     	msr	TTBR1_EL1, x11
   299d0: d5182008     	msr	TTBR0_EL1, x8
   299d4: d5033fdf     	isb
   299d8: d51b4229     	msr	DAIF, x9
   299dc: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   299e0: aa1603e0     	mov	x0, x22
   299e4: aa1703e2     	mov	x2, x23
   299e8: 94000000     	bl	0x299e8 <syna_cdev_ioctl_raw_write+0x194>
		00000000000299e8:  R_AARCH64_CALL26	__arch_copy_from_user
   299ec: aa0003f8     	mov	x24, x0
   299f0: d503201f     	nop
   299f4: d53b4228     	mrs	x8, DAIF
   299f8: d50343df     	msr	DAIFSet, #0x3
   299fc: d5382029     	mrs	x9, TTBR1_EL1
   29a00: 9240bd29     	and	x9, x9, #0xffffffffffff
   29a04: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   29a08: d518200a     	msr	TTBR0_EL1, x10
   29a0c: d5182029     	msr	TTBR1_EL1, x9
   29a10: d5033fdf     	isb
   29a14: d51b4228     	msr	DAIF, x8
   29a18: b5fffb18     	cbnz	x24, 0x29978 <syna_cdev_ioctl_raw_write+0x124>
   29a1c: f9400288     	ldr	x8, [x20]
   29a20: b40004c8     	cbz	x8, 0x29ab8 <syna_cdev_ioctl_raw_write+0x264>
   29a24: f9402500     	ldr	x0, [x8, #0x48]
   29a28: b4000500     	cbz	x0, 0x29ac8 <syna_cdev_ioctl_raw_write+0x274>
   29a2c: f9401408     	ldr	x8, [x0, #0x28]
   29a30: b4000548     	cbz	x8, 0x29ad8 <syna_cdev_ioctl_raw_write+0x284>
   29a34: aa1603e1     	mov	x1, x22
   29a38: 2a1303e2     	mov	w2, w19
   29a3c: b85fc110     	ldur	w16, [x8, #-0x4]
   29a40: 728403f1     	movk	w17, #0x201f
   29a44: 72a51491     	movk	w17, #0x28a4, lsl #16
   29a48: 6b11021f     	cmp	w16, w17
   29a4c: 54000040     	b.eq	0x29a54 <syna_cdev_ioctl_raw_write+0x200>
   29a50: d4304500     	brk	#0x8228
   29a54: d63f0100     	blr	x8
   29a58: 36f809c0     	tbz	w0, #0x1f, 0x29b90 <syna_cdev_ioctl_raw_write+0x33c>
   29a5c: 2a0003f5     	mov	w21, w0
   29a60: 14000024     	b	0x29af0 <syna_cdev_ioctl_raw_write+0x29c>
   29a64: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa2d
   29a68: 91000000     	add	x0, x0, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa2d
   29a6c: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a6a
   29a70: 91000021     	add	x1, x1, #0x0
		0000000000029a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a6a
   29a74: 2a1303e3     	mov	w3, w19
   29a78: 94000000     	bl	0x29a78 <syna_cdev_ioctl_raw_write+0x224>
		0000000000029a78:  R_AARCH64_CALL26	_printk
   29a7c: 128002b3     	mov	w19, #-0x16             // =-22
   29a80: 1400004f     	b	0x29bbc <syna_cdev_ioctl_raw_write+0x368>
   29a84: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029a84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c70a
   29a88: 91000000     	add	x0, x0, #0x0
		0000000000029a88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c70a
   29a8c: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a6a
   29a90: 91000021     	add	x1, x1, #0x0
		0000000000029a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a6a
   29a94: 94000000     	bl	0x29a94 <syna_cdev_ioctl_raw_write+0x240>
		0000000000029a94:  R_AARCH64_CALL26	_printk
   29a98: 128002b3     	mov	w19, #-0x16             // =-22
   29a9c: 14000048     	b	0x29bbc <syna_cdev_ioctl_raw_write+0x368>
   29aa0: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a529
   29aa4: 91000000     	add	x0, x0, #0x0
		0000000000029aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a529
   29aa8: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a480
   29aac: 91000021     	add	x1, x1, #0x0
		0000000000029aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a480
   29ab0: 94000000     	bl	0x29ab0 <syna_cdev_ioctl_raw_write+0x25c>
		0000000000029ab0:  R_AARCH64_CALL26	_printk
   29ab4: 17ffff7b     	b	0x298a0 <syna_cdev_ioctl_raw_write+0x4c>
   29ab8: 12801e15     	mov	w21, #-0xf1             // =-241
   29abc: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18369
   29ac0: 91000000     	add	x0, x0, #0x0
		0000000000029ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18369
   29ac4: 14000008     	b	0x29ae4 <syna_cdev_ioctl_raw_write+0x290>
   29ac8: 12801e15     	mov	w21, #-0xf1             // =-241
   29acc: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3ce
   29ad0: 91000000     	add	x0, x0, #0x0
		0000000000029ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3ce
   29ad4: 14000004     	b	0x29ae4 <syna_cdev_ioctl_raw_write+0x290>
   29ad8: 12801e95     	mov	w21, #-0xf5             // =-245
   29adc: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a401
   29ae0: 91000000     	add	x0, x0, #0x0
		0000000000029ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a401
   29ae4: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1acfd
   29ae8: 91000021     	add	x1, x1, #0x0
		0000000000029ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1acfd
   29aec: 94000000     	bl	0x29aec <syna_cdev_ioctl_raw_write+0x298>
		0000000000029aec:  R_AARCH64_CALL26	_printk
   29af0: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19efe
   29af4: 91000000     	add	x0, x0, #0x0
		0000000000029af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19efe
   29af8: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a6a
   29afc: 91000021     	add	x1, x1, #0x0
		0000000000029afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a6a
   29b00: 2a1303e2     	mov	w2, w19
   29b04: 94000000     	bl	0x29b04 <syna_cdev_ioctl_raw_write+0x2b0>
		0000000000029b04:  R_AARCH64_CALL26	_printk
   29b08: 2a1503f3     	mov	w19, w21
   29b0c: 14000021     	b	0x29b90 <syna_cdev_ioctl_raw_write+0x33c>
   29b10: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a559
   29b14: 91000000     	add	x0, x0, #0x0
		0000000000029b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a559
   29b18: 1400000a     	b	0x29b40 <syna_cdev_ioctl_raw_write+0x2ec>
   29b1c: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf8c
   29b20: 91000000     	add	x0, x0, #0x0
		0000000000029b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf8c
   29b24: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9d7
   29b28: 91000021     	add	x1, x1, #0x0
		0000000000029b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9d7
   29b2c: 94000000     	bl	0x29b2c <syna_cdev_ioctl_raw_write+0x2d8>
		0000000000029b2c:  R_AARCH64_CALL26	_printk
   29b30: 94000000     	bl	0x29b30 <syna_cdev_ioctl_raw_write+0x2dc>
		0000000000029b30:  R_AARCH64_CALL26	syna_request_managed_device
   29b34: b5ffedc0     	cbnz	x0, 0x298ec <syna_cdev_ioctl_raw_write+0x98>
   29b38: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf8c
   29b3c: 91000000     	add	x0, x0, #0x0
		0000000000029b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf8c
   29b40: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1957d
   29b44: 91000021     	add	x1, x1, #0x0
		0000000000029b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1957d
   29b48: 94000000     	bl	0x29b48 <syna_cdev_ioctl_raw_write+0x2f4>
		0000000000029b48:  R_AARCH64_CALL26	_printk
   29b4c: 90000008     	adrp	x8, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b4c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29b50: f900011f     	str	xzr, [x8]
		0000000000029b50:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   29b54: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e95
   29b58: 91000000     	add	x0, x0, #0x0
		0000000000029b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e95
   29b5c: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6db
   29b60: 91000021     	add	x1, x1, #0x0
		0000000000029b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6db
   29b64: 2a1303e2     	mov	w2, w19
   29b68: 94000000     	bl	0x29b68 <syna_cdev_ioctl_raw_write+0x314>
		0000000000029b68:  R_AARCH64_CALL26	_printk
   29b6c: 90000008     	adrp	x8, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b6c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   29b70: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a21a
   29b74: 91000000     	add	x0, x0, #0x0
		0000000000029b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a21a
   29b78: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a6a
   29b7c: 91000021     	add	x1, x1, #0x0
		0000000000029b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a6a
   29b80: 2a1303e2     	mov	w2, w19
   29b84: f900011f     	str	xzr, [x8]
		0000000000029b84:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   29b88: 94000000     	bl	0x29b88 <syna_cdev_ioctl_raw_write+0x334>
		0000000000029b88:  R_AARCH64_CALL26	_printk
   29b8c: 12801e53     	mov	w19, #-0xf3             // =-243
   29b90: 39400322     	ldrb	w2, [x25]
		0000000000029b90:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29b94: 7100045f     	cmp	w2, #0x1
   29b98: 54000221     	b.ne	0x29bdc <syna_cdev_ioctl_raw_write+0x388>
   29b9c: 2a1f03e8     	mov	w8, wzr
   29ba0: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029ba0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   29ba4: 91000000     	add	x0, x0, #0x0
		0000000000029ba4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   29ba8: 3900c008     	strb	w8, [x0, #0x30]
   29bac: 94000000     	bl	0x29bac <syna_cdev_ioctl_raw_write+0x358>
		0000000000029bac:  R_AARCH64_CALL26	mutex_unlock
   29bb0: f9400288     	ldr	x8, [x20]
   29bb4: 910d2100     	add	x0, x8, #0x348
   29bb8: 94000000     	bl	0x29bb8 <syna_cdev_ioctl_raw_write+0x364>
		0000000000029bb8:  R_AARCH64_CALL26	mutex_unlock
   29bbc: 2a1303e0     	mov	w0, w19
   29bc0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   29bc4: f9400bf9     	ldr	x25, [sp, #0x10]
   29bc8: a94357f6     	ldp	x22, x21, [sp, #0x30]
   29bcc: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   29bd0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   29bd4: d50323bf     	autiasp
   29bd8: d65f03c0     	ret
   29bdc: 90000000     	adrp	x0, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a529
   29be0: 91000000     	add	x0, x0, #0x0
		0000000000029be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a529
   29be4: 90000001     	adrp	x1, 0x29000 <syna_dev_process_touch_report+0x3a8>
		0000000000029be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3fe
   29be8: 91000021     	add	x1, x1, #0x0
		0000000000029be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3fe
   29bec: 94000000     	bl	0x29bec <syna_cdev_ioctl_raw_write+0x398>
		0000000000029bec:  R_AARCH64_CALL26	_printk
   29bf0: 39400328     	ldrb	w8, [x25]
		0000000000029bf0:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29bf4: 51000508     	sub	w8, w8, #0x1
   29bf8: 17ffffea     	b	0x29ba0 <syna_cdev_ioctl_raw_write+0x34c>
   29bfc: d4210000     	brk	#0x800
   29c00: 2a1303f8     	mov	w24, w19
   29c04: 17ffff63     	b	0x29990 <syna_cdev_ioctl_raw_write+0x13c>
