
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001dec8 <syna_cdev_ioctl_raw_write>:
   1dec8: d503233f     	paciasp
   1decc: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1ded0: f9000bf9     	str	x25, [sp, #0x10]
   1ded4: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1ded8: a90357f6     	stp	x22, x21, [sp, #0x30]
   1dedc: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1dee0: 910003fd     	mov	x29, sp
   1dee4: 2a0303f3     	mov	w19, w3
   1dee8: 6b02007f     	cmp	w3, w2
   1deec: 54000f68     	b.hi	0x1e0d8 <syna_cdev_ioctl_raw_write+0x210>
   1def0: 34001053     	cbz	w19, 0x1e0f8 <syna_cdev_ioctl_raw_write+0x230>
   1def4: f9400008     	ldr	x8, [x0]
   1def8: aa0003f4     	mov	x20, x0
   1defc: aa0103f5     	mov	x21, x1
   1df00: 910d2100     	add	x0, x8, #0x348
   1df04: 94000000     	bl	0x1df04 <syna_cdev_ioctl_raw_write+0x3c>
		000000000001df04:  R_AARCH64_CALL26	mutex_lock
   1df08: 90000019     	adrp	x25, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001df08:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   1df0c: 39400322     	ldrb	w2, [x25]
		000000000001df0c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1df10: 35001022     	cbnz	w2, 0x1e114 <syna_cdev_ioctl_raw_write+0x24c>
   1df14: 90000017     	adrp	x23, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001df14:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1df18: 910002f7     	add	x23, x23, #0x0
		000000000001df18:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   1df1c: 910042e0     	add	x0, x23, #0x10
   1df20: 94000000     	bl	0x1df20 <syna_cdev_ioctl_raw_write+0x58>
		000000000001df20:  R_AARCH64_CALL26	mutex_lock
   1df24: 394102e8     	ldrb	w8, [x23, #0x40]
   1df28: b9400af6     	ldr	w22, [x23, #0x8]
   1df2c: f94002e0     	ldr	x0, [x23]
   1df30: 11000508     	add	w8, w8, #0x1
   1df34: 6b1302df     	cmp	w22, w19
   1df38: 390102e8     	strb	w8, [x23, #0x40]
   1df3c: 54000282     	b.hs	0x1df8c <syna_cdev_ioctl_raw_write+0xc4>
   1df40: b40000c0     	cbz	x0, 0x1df58 <syna_cdev_ioctl_raw_write+0x90>
   1df44: aa0003f6     	mov	x22, x0
   1df48: 94000000     	bl	0x1df48 <syna_cdev_ioctl_raw_write+0x80>
		000000000001df48:  R_AARCH64_CALL26	syna_request_managed_device
   1df4c: b4001220     	cbz	x0, 0x1e190 <syna_cdev_ioctl_raw_write+0x2c8>
   1df50: aa1603e1     	mov	x1, x22
   1df54: 94000000     	bl	0x1df54 <syna_cdev_ioctl_raw_write+0x8c>
		000000000001df54:  R_AARCH64_CALL26	devm_kfree
   1df58: 94000000     	bl	0x1df58 <syna_cdev_ioctl_raw_write+0x90>
		000000000001df58:  R_AARCH64_CALL26	syna_request_managed_device
   1df5c: b4001280     	cbz	x0, 0x1e1ac <syna_cdev_ioctl_raw_write+0x2e4>
   1df60: 7100027f     	cmp	w19, #0x0
   1df64: 5400110d     	b.le	0x1e184 <syna_cdev_ioctl_raw_write+0x2bc>
   1df68: 2a1303f6     	mov	w22, w19
   1df6c: 5281b802     	mov	w2, #0xdc0              // =3520
   1df70: aa1603e1     	mov	x1, x22
   1df74: 94000000     	bl	0x1df74 <syna_cdev_ioctl_raw_write+0xac>
		000000000001df74:  R_AARCH64_CALL26	devm_kmalloc
   1df78: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001df78:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1df7c: f9000100     	str	x0, [x8]
		000000000001df7c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1df80: b4001240     	cbz	x0, 0x1e1c8 <syna_cdev_ioctl_raw_write+0x300>
   1df84: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001df84:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1df88: b9000113     	str	w19, [x8]
		000000000001df88:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   1df8c: 2a1f03e1     	mov	w1, wzr
   1df90: aa1603e2     	mov	x2, x22
   1df94: 94000000     	bl	0x1df94 <syna_cdev_ioctl_raw_write+0xcc>
		000000000001df94:  R_AARCH64_CALL26	memset
   1df98: b9000eff     	str	wzr, [x23, #0xc]
   1df9c: 37f816b3     	tbnz	w19, #0x1f, 0x1e270 <syna_cdev_ioctl_raw_write+0x3a8>
   1dfa0: f94002f6     	ldr	x22, [x23]
   1dfa4: 2a1303f7     	mov	w23, w19
   1dfa8: 2a1f03e2     	mov	w2, wzr
   1dfac: aa1703e1     	mov	x1, x23
   1dfb0: aa1603e0     	mov	x0, x22
   1dfb4: 94000000     	bl	0x1dfb4 <syna_cdev_ioctl_raw_write+0xec>
		000000000001dfb4:  R_AARCH64_CALL26	__check_object_size
   1dfb8: d5384108     	mrs	x8, SP_EL0
   1dfbc: 39411909     	ldrb	w9, [x8, #0x46]
   1dfc0: 37280089     	tbnz	w9, #0x5, 0x1dfd0 <syna_cdev_ioctl_raw_write+0x108>
   1dfc4: f940010a     	ldr	x10, [x8]
   1dfc8: aa1503e9     	mov	x9, x21
   1dfcc: 36d0006a     	tbz	w10, #0x1a, 0x1dfd8 <syna_cdev_ioctl_raw_write+0x110>
   1dfd0: d378dea9     	lsl	x9, x21, #8
   1dfd4: 8a8922a9     	and	x9, x21, x9, asr #8
   1dfd8: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   1dfdc: aa1703f8     	mov	x24, x23
   1dfe0: cb17014a     	sub	x10, x10, x23
   1dfe4: eb09015f     	cmp	x10, x9
   1dfe8: 540001e2     	b.hs	0x1e024 <syna_cdev_ioctl_raw_write+0x15c>
   1dfec: cb1802e8     	sub	x8, x23, x24
   1dff0: 2a1f03e1     	mov	w1, wzr
   1dff4: aa1803e2     	mov	x2, x24
   1dff8: 8b0802c0     	add	x0, x22, x8
   1dffc: 94000000     	bl	0x1dffc <syna_cdev_ioctl_raw_write+0x134>
		000000000001dffc:  R_AARCH64_CALL26	memset
   1e000: 34000498     	cbz	w24, 0x1e090 <syna_cdev_ioctl_raw_write+0x1c8>
   1e004: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18bba
   1e008: 91000000     	add	x0, x0, #0x0
		000000000001e008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18bba
   1e00c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e00c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18720
   1e010: 91000021     	add	x1, x1, #0x0
		000000000001e010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18720
   1e014: 2a1803e2     	mov	w2, w24
   1e018: 94000000     	bl	0x1e018 <syna_cdev_ioctl_raw_write+0x150>
		000000000001e018:  R_AARCH64_CALL26	_printk
   1e01c: 12800673     	mov	w19, #-0x34             // =-52
   1e020: 14000079     	b	0x1e204 <syna_cdev_ioctl_raw_write+0x33c>
   1e024: d503201f     	nop
   1e028: d53b4229     	mrs	x9, DAIF
   1e02c: d50343df     	msr	DAIFSet, #0x3
   1e030: f9400508     	ldr	x8, [x8, #0x8]
   1e034: d538202a     	mrs	x10, TTBR1_EL1
   1e038: aa0803eb     	mov	x11, x8
   1e03c: b340bd4b     	bfxil	x11, x10, #0, #48
   1e040: d518202b     	msr	TTBR1_EL1, x11
   1e044: d5182008     	msr	TTBR0_EL1, x8
   1e048: d5033fdf     	isb
   1e04c: d51b4229     	msr	DAIF, x9
   1e050: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   1e054: aa1603e0     	mov	x0, x22
   1e058: aa1703e2     	mov	x2, x23
   1e05c: 94000000     	bl	0x1e05c <syna_cdev_ioctl_raw_write+0x194>
		000000000001e05c:  R_AARCH64_CALL26	__arch_copy_from_user
   1e060: aa0003f8     	mov	x24, x0
   1e064: d503201f     	nop
   1e068: d53b4228     	mrs	x8, DAIF
   1e06c: d50343df     	msr	DAIFSet, #0x3
   1e070: d5382029     	mrs	x9, TTBR1_EL1
   1e074: 9240bd29     	and	x9, x9, #0xffffffffffff
   1e078: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1e07c: d518200a     	msr	TTBR0_EL1, x10
   1e080: d5182029     	msr	TTBR1_EL1, x9
   1e084: d5033fdf     	isb
   1e088: d51b4228     	msr	DAIF, x8
   1e08c: b5fffb18     	cbnz	x24, 0x1dfec <syna_cdev_ioctl_raw_write+0x124>
   1e090: f9400288     	ldr	x8, [x20]
   1e094: b40004c8     	cbz	x8, 0x1e12c <syna_cdev_ioctl_raw_write+0x264>
   1e098: f9402500     	ldr	x0, [x8, #0x48]
   1e09c: b4000500     	cbz	x0, 0x1e13c <syna_cdev_ioctl_raw_write+0x274>
   1e0a0: f9401408     	ldr	x8, [x0, #0x28]
   1e0a4: b4000548     	cbz	x8, 0x1e14c <syna_cdev_ioctl_raw_write+0x284>
   1e0a8: aa1603e1     	mov	x1, x22
   1e0ac: 2a1303e2     	mov	w2, w19
   1e0b0: b85fc110     	ldur	w16, [x8, #-0x4]
   1e0b4: 728403f1     	movk	w17, #0x201f
   1e0b8: 72a51491     	movk	w17, #0x28a4, lsl #16
   1e0bc: 6b11021f     	cmp	w16, w17
   1e0c0: 54000040     	b.eq	0x1e0c8 <syna_cdev_ioctl_raw_write+0x200>
   1e0c4: d4304500     	brk	#0x8228
   1e0c8: d63f0100     	blr	x8
   1e0cc: 36f809c0     	tbz	w0, #0x1f, 0x1e204 <syna_cdev_ioctl_raw_write+0x33c>
   1e0d0: 2a0003f5     	mov	w21, w0
   1e0d4: 14000024     	b	0x1e164 <syna_cdev_ioctl_raw_write+0x29c>
   1e0d8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e0d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a8ad
   1e0dc: 91000000     	add	x0, x0, #0x0
		000000000001e0dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a8ad
   1e0e0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e0e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18720
   1e0e4: 91000021     	add	x1, x1, #0x0
		000000000001e0e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18720
   1e0e8: 2a1303e3     	mov	w3, w19
   1e0ec: 94000000     	bl	0x1e0ec <syna_cdev_ioctl_raw_write+0x224>
		000000000001e0ec:  R_AARCH64_CALL26	_printk
   1e0f0: 128002b3     	mov	w19, #-0x16             // =-22
   1e0f4: 1400004f     	b	0x1e230 <syna_cdev_ioctl_raw_write+0x368>
   1e0f8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5de
   1e0fc: 91000000     	add	x0, x0, #0x0
		000000000001e0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5de
   1e100: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e100:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18720
   1e104: 91000021     	add	x1, x1, #0x0
		000000000001e104:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18720
   1e108: 94000000     	bl	0x1e108 <syna_cdev_ioctl_raw_write+0x240>
		000000000001e108:  R_AARCH64_CALL26	_printk
   1e10c: 128002b3     	mov	w19, #-0x16             // =-22
   1e110: 14000048     	b	0x1e230 <syna_cdev_ioctl_raw_write+0x368>
   1e114: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e114:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   1e118: 91000000     	add	x0, x0, #0x0
		000000000001e118:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   1e11c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e11c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   1e120: 91000021     	add	x1, x1, #0x0
		000000000001e120:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   1e124: 94000000     	bl	0x1e124 <syna_cdev_ioctl_raw_write+0x25c>
		000000000001e124:  R_AARCH64_CALL26	_printk
   1e128: 17ffff7b     	b	0x1df14 <syna_cdev_ioctl_raw_write+0x4c>
   1e12c: 12801e15     	mov	w21, #-0xf1             // =-241
   1e130: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
   1e134: 91000000     	add	x0, x0, #0x0
		000000000001e134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
   1e138: 14000008     	b	0x1e158 <syna_cdev_ioctl_raw_write+0x290>
   1e13c: 12801e15     	mov	w21, #-0xf1             // =-241
   1e140: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e140:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a22f
   1e144: 91000000     	add	x0, x0, #0x0
		000000000001e144:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a22f
   1e148: 14000004     	b	0x1e158 <syna_cdev_ioctl_raw_write+0x290>
   1e14c: 12801e95     	mov	w21, #-0xf5             // =-245
   1e150: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e150:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a262
   1e154: 91000000     	add	x0, x0, #0x0
		000000000001e154:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a262
   1e158: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e158:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa8b
   1e15c: 91000021     	add	x1, x1, #0x0
		000000000001e15c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa8b
   1e160: 94000000     	bl	0x1e160 <syna_cdev_ioctl_raw_write+0x298>
		000000000001e160:  R_AARCH64_CALL26	_printk
   1e164: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c23
   1e168: 91000000     	add	x0, x0, #0x0
		000000000001e168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c23
   1e16c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18720
   1e170: 91000021     	add	x1, x1, #0x0
		000000000001e170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18720
   1e174: 2a1303e2     	mov	w2, w19
   1e178: 94000000     	bl	0x1e178 <syna_cdev_ioctl_raw_write+0x2b0>
		000000000001e178:  R_AARCH64_CALL26	_printk
   1e17c: 2a1503f3     	mov	w19, w21
   1e180: 14000021     	b	0x1e204 <syna_cdev_ioctl_raw_write+0x33c>
   1e184: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e184:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   1e188: 91000000     	add	x0, x0, #0x0
		000000000001e188:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   1e18c: 1400000a     	b	0x1e1b4 <syna_cdev_ioctl_raw_write+0x2ec>
   1e190: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e190:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e194: 91000000     	add	x0, x0, #0x0
		000000000001e194:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e198: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e198:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1e19c: 91000021     	add	x1, x1, #0x0
		000000000001e19c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1e1a0: 94000000     	bl	0x1e1a0 <syna_cdev_ioctl_raw_write+0x2d8>
		000000000001e1a0:  R_AARCH64_CALL26	_printk
   1e1a4: 94000000     	bl	0x1e1a4 <syna_cdev_ioctl_raw_write+0x2dc>
		000000000001e1a4:  R_AARCH64_CALL26	syna_request_managed_device
   1e1a8: b5ffedc0     	cbnz	x0, 0x1df60 <syna_cdev_ioctl_raw_write+0x98>
   1e1ac: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1e1b0: 91000000     	add	x0, x0, #0x0
		000000000001e1b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1e1b4: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   1e1b8: 91000021     	add	x1, x1, #0x0
		000000000001e1b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   1e1bc: 94000000     	bl	0x1e1bc <syna_cdev_ioctl_raw_write+0x2f4>
		000000000001e1bc:  R_AARCH64_CALL26	_printk
   1e1c0: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1c0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1e1c4: f900011f     	str	xzr, [x8]
		000000000001e1c4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1e1c8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   1e1cc: 91000000     	add	x0, x0, #0x0
		000000000001e1cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   1e1d0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   1e1d4: 91000021     	add	x1, x1, #0x0
		000000000001e1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   1e1d8: 2a1303e2     	mov	w2, w19
   1e1dc: 94000000     	bl	0x1e1dc <syna_cdev_ioctl_raw_write+0x314>
		000000000001e1dc:  R_AARCH64_CALL26	_printk
   1e1e0: 90000008     	adrp	x8, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1e0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1e1e4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   1e1e8: 91000000     	add	x0, x0, #0x0
		000000000001e1e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   1e1ec: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e1ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18720
   1e1f0: 91000021     	add	x1, x1, #0x0
		000000000001e1f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18720
   1e1f4: 2a1303e2     	mov	w2, w19
   1e1f8: f900011f     	str	xzr, [x8]
		000000000001e1f8:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   1e1fc: 94000000     	bl	0x1e1fc <syna_cdev_ioctl_raw_write+0x334>
		000000000001e1fc:  R_AARCH64_CALL26	_printk
   1e200: 12801e53     	mov	w19, #-0xf3             // =-243
   1e204: 39400322     	ldrb	w2, [x25]
		000000000001e204:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1e208: 7100045f     	cmp	w2, #0x1
   1e20c: 54000221     	b.ne	0x1e250 <syna_cdev_ioctl_raw_write+0x388>
   1e210: 2a1f03e8     	mov	w8, wzr
   1e214: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e214:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   1e218: 91000000     	add	x0, x0, #0x0
		000000000001e218:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   1e21c: 3900c008     	strb	w8, [x0, #0x30]
   1e220: 94000000     	bl	0x1e220 <syna_cdev_ioctl_raw_write+0x358>
		000000000001e220:  R_AARCH64_CALL26	mutex_unlock
   1e224: f9400288     	ldr	x8, [x20]
   1e228: 910d2100     	add	x0, x8, #0x348
   1e22c: 94000000     	bl	0x1e22c <syna_cdev_ioctl_raw_write+0x364>
		000000000001e22c:  R_AARCH64_CALL26	mutex_unlock
   1e230: 2a1303e0     	mov	w0, w19
   1e234: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1e238: f9400bf9     	ldr	x25, [sp, #0x10]
   1e23c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1e240: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1e244: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1e248: d50323bf     	autiasp
   1e24c: d65f03c0     	ret
   1e250: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   1e254: 91000000     	add	x0, x0, #0x0
		000000000001e254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   1e258: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001e258:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   1e25c: 91000021     	add	x1, x1, #0x0
		000000000001e25c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   1e260: 94000000     	bl	0x1e260 <syna_cdev_ioctl_raw_write+0x398>
		000000000001e260:  R_AARCH64_CALL26	_printk
   1e264: 39400328     	ldrb	w8, [x25]
		000000000001e264:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1e268: 51000508     	sub	w8, w8, #0x1
   1e26c: 17ffffea     	b	0x1e214 <syna_cdev_ioctl_raw_write+0x34c>
   1e270: d4210000     	brk	#0x800
   1e274: 2a1303f8     	mov	w24, w19
   1e278: 17ffff63     	b	0x1e004 <syna_cdev_ioctl_raw_write+0x13c>
