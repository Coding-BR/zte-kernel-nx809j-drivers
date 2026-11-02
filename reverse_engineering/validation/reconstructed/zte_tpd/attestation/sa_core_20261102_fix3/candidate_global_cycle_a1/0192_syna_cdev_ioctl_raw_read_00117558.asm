
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001db48 <syna_cdev_ioctl_raw_read>:
   1db48: d503233f     	paciasp
   1db4c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   1db50: a9015ff8     	stp	x24, x23, [sp, #0x10]
   1db54: a90257f6     	stp	x22, x21, [sp, #0x20]
   1db58: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1db5c: 910003fd     	mov	x29, sp
   1db60: 2a0303f3     	mov	w19, w3
   1db64: 6b02007f     	cmp	w3, w2
   1db68: 54000e08     	b.hi	0x1dd28 <syna_cdev_ioctl_raw_read+0x1e0>
   1db6c: 34000ef3     	cbz	w19, 0x1dd48 <syna_cdev_ioctl_raw_read+0x200>
   1db70: f9400008     	ldr	x8, [x0]
   1db74: aa0003f4     	mov	x20, x0
   1db78: aa0103f5     	mov	x21, x1
   1db7c: 910d2100     	add	x0, x8, #0x348
   1db80: 94000000     	bl	0x1db80 <syna_cdev_ioctl_raw_read+0x38>
		000000000001db80:  R_AARCH64_CALL26	mutex_lock
   1db84: 90000018     	adrp	x24, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001db84:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   1db88: 39400302     	ldrb	w2, [x24]
		000000000001db88:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1db8c: 35000ea2     	cbnz	w2, 0x1dd60 <syna_cdev_ioctl_raw_read+0x218>
   1db90: 90000017     	adrp	x23, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001db90:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1db94: 910002f7     	add	x23, x23, #0x0
		000000000001db94:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   1db98: 910042e0     	add	x0, x23, #0x10
   1db9c: 94000000     	bl	0x1db9c <syna_cdev_ioctl_raw_read+0x54>
		000000000001db9c:  R_AARCH64_CALL26	mutex_lock
   1dba0: 394102e8     	ldrb	w8, [x23, #0x40]
   1dba4: b9400af6     	ldr	w22, [x23, #0x8]
   1dba8: f94002e0     	ldr	x0, [x23]
   1dbac: 11000508     	add	w8, w8, #0x1
   1dbb0: 6b1302df     	cmp	w22, w19
   1dbb4: 390102e8     	strb	w8, [x23, #0x40]
   1dbb8: 54000282     	b.hs	0x1dc08 <syna_cdev_ioctl_raw_read+0xc0>
   1dbbc: b40000c0     	cbz	x0, 0x1dbd4 <syna_cdev_ioctl_raw_read+0x8c>
   1dbc0: aa0003f6     	mov	x22, x0
   1dbc4: 94000000     	bl	0x1dbc4 <syna_cdev_ioctl_raw_read+0x7c>
		000000000001dbc4:  R_AARCH64_CALL26	syna_request_managed_device
   1dbc8: b40010e0     	cbz	x0, 0x1dde4 <syna_cdev_ioctl_raw_read+0x29c>
   1dbcc: aa1603e1     	mov	x1, x22
   1dbd0: 94000000     	bl	0x1dbd0 <syna_cdev_ioctl_raw_read+0x88>
		000000000001dbd0:  R_AARCH64_CALL26	devm_kfree
   1dbd4: 94000000     	bl	0x1dbd4 <syna_cdev_ioctl_raw_read+0x8c>
		000000000001dbd4:  R_AARCH64_CALL26	syna_request_managed_device
   1dbd8: b4001140     	cbz	x0, 0x1de00 <syna_cdev_ioctl_raw_read+0x2b8>
   1dbdc: 7100027f     	cmp	w19, #0x0
   1dbe0: 54000fcd     	b.le	0x1ddd8 <syna_cdev_ioctl_raw_read+0x290>
   1dbe4: 2a1303f6     	mov	w22, w19
   1dbe8: 5281b802     	mov	w2, #0xdc0              // =3520
   1dbec: aa1603e1     	mov	x1, x22
   1dbf0: 94000000     	bl	0x1dbf0 <syna_cdev_ioctl_raw_read+0xa8>
		000000000001dbf0:  R_AARCH64_CALL26	devm_kmalloc
   1dbf4: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dbf4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1dbf8: f9000100     	str	x0, [x8]
		000000000001dbf8:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1dbfc: b4001100     	cbz	x0, 0x1de1c <syna_cdev_ioctl_raw_read+0x2d4>
   1dc00: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dc00:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1dc04: b9000113     	str	w19, [x8]
		000000000001dc04:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   1dc08: 2a1f03e1     	mov	w1, wzr
   1dc0c: aa1603e2     	mov	x2, x22
   1dc10: 94000000     	bl	0x1dc10 <syna_cdev_ioctl_raw_read+0xc8>
		000000000001dc10:  R_AARCH64_CALL26	memset
   1dc14: b9000eff     	str	wzr, [x23, #0xc]
   1dc18: f9400288     	ldr	x8, [x20]
   1dc1c: b4000ae8     	cbz	x8, 0x1dd78 <syna_cdev_ioctl_raw_read+0x230>
   1dc20: f9402500     	ldr	x0, [x8, #0x48]
   1dc24: b4000b20     	cbz	x0, 0x1dd88 <syna_cdev_ioctl_raw_read+0x240>
   1dc28: f9401008     	ldr	x8, [x0, #0x20]
   1dc2c: b4000b68     	cbz	x8, 0x1dd98 <syna_cdev_ioctl_raw_read+0x250>
   1dc30: f94002f6     	ldr	x22, [x23]
   1dc34: 2a1303e2     	mov	w2, w19
   1dc38: aa1603e1     	mov	x1, x22
   1dc3c: b85fc110     	ldur	w16, [x8, #-0x4]
   1dc40: 728403f1     	movk	w17, #0x201f
   1dc44: 72a51491     	movk	w17, #0x28a4, lsl #16
   1dc48: 6b11021f     	cmp	w16, w17
   1dc4c: 54000040     	b.eq	0x1dc54 <syna_cdev_ioctl_raw_read+0x10c>
   1dc50: d4304500     	brk	#0x8228
   1dc54: d63f0100     	blr	x8
   1dc58: 37f80ae0     	tbnz	w0, #0x1f, 0x1ddb4 <syna_cdev_ioctl_raw_read+0x26c>
   1dc5c: 37f81333     	tbnz	w19, #0x1f, 0x1dec0 <syna_cdev_ioctl_raw_read+0x378>
   1dc60: 2a1303f7     	mov	w23, w19
   1dc64: aa1603e0     	mov	x0, x22
   1dc68: 52800022     	mov	w2, #0x1                // =1
   1dc6c: aa1703e1     	mov	x1, x23
   1dc70: 94000000     	bl	0x1dc70 <syna_cdev_ioctl_raw_read+0x128>
		000000000001dc70:  R_AARCH64_CALL26	__check_object_size
   1dc74: d5384108     	mrs	x8, SP_EL0
   1dc78: 39411909     	ldrb	w9, [x8, #0x46]
   1dc7c: 37280089     	tbnz	w9, #0x5, 0x1dc8c <syna_cdev_ioctl_raw_read+0x144>
   1dc80: f940010a     	ldr	x10, [x8]
   1dc84: aa1503e9     	mov	x9, x21
   1dc88: 36d0006a     	tbz	w10, #0x1a, 0x1dc94 <syna_cdev_ioctl_raw_read+0x14c>
   1dc8c: d378dea9     	lsl	x9, x21, #8
   1dc90: 8a8922a9     	and	x9, x21, x9, asr #8
   1dc94: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   1dc98: cb17014a     	sub	x10, x10, x23
   1dc9c: eb09015f     	cmp	x10, x9
   1dca0: 54000363     	b.lo	0x1dd0c <syna_cdev_ioctl_raw_read+0x1c4>
   1dca4: d503201f     	nop
   1dca8: d53b4229     	mrs	x9, DAIF
   1dcac: d50343df     	msr	DAIFSet, #0x3
   1dcb0: f9400508     	ldr	x8, [x8, #0x8]
   1dcb4: d538202a     	mrs	x10, TTBR1_EL1
   1dcb8: aa0803eb     	mov	x11, x8
   1dcbc: b340bd4b     	bfxil	x11, x10, #0, #48
   1dcc0: d518202b     	msr	TTBR1_EL1, x11
   1dcc4: d5182008     	msr	TTBR0_EL1, x8
   1dcc8: d5033fdf     	isb
   1dccc: d51b4229     	msr	DAIF, x9
   1dcd0: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   1dcd4: aa1603e1     	mov	x1, x22
   1dcd8: aa1703e2     	mov	x2, x23
   1dcdc: 94000000     	bl	0x1dcdc <syna_cdev_ioctl_raw_read+0x194>
		000000000001dcdc:  R_AARCH64_CALL26	__arch_copy_to_user
   1dce0: d503201f     	nop
   1dce4: d53b4228     	mrs	x8, DAIF
   1dce8: d50343df     	msr	DAIFSet, #0x3
   1dcec: d5382029     	mrs	x9, TTBR1_EL1
   1dcf0: 9240bd29     	and	x9, x9, #0xffffffffffff
   1dcf4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   1dcf8: d518200a     	msr	TTBR0_EL1, x10
   1dcfc: d5182029     	msr	TTBR1_EL1, x9
   1dd00: d5033fdf     	isb
   1dd04: d51b4228     	msr	DAIF, x8
   1dd08: b4000a80     	cbz	x0, 0x1de58 <syna_cdev_ioctl_raw_read+0x310>
   1dd0c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1956c
   1dd10: 91000000     	add	x0, x0, #0x0
		000000000001dd10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1956c
   1dd14: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad7e
   1dd18: 91000021     	add	x1, x1, #0x0
		000000000001dd18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad7e
   1dd1c: 94000000     	bl	0x1dd1c <syna_cdev_ioctl_raw_read+0x1d4>
		000000000001dd1c:  R_AARCH64_CALL26	_printk
   1dd20: 12800673     	mov	w19, #-0x34             // =-52
   1dd24: 1400004d     	b	0x1de58 <syna_cdev_ioctl_raw_read+0x310>
   1dd28: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a86e
   1dd2c: 91000000     	add	x0, x0, #0x0
		000000000001dd2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a86e
   1dd30: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad7e
   1dd34: 91000021     	add	x1, x1, #0x0
		000000000001dd34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad7e
   1dd38: 2a1303e3     	mov	w3, w19
   1dd3c: 94000000     	bl	0x1dd3c <syna_cdev_ioctl_raw_read+0x1f4>
		000000000001dd3c:  R_AARCH64_CALL26	_printk
   1dd40: 128002b3     	mov	w19, #-0x16             // =-22
   1dd44: 14000050     	b	0x1de84 <syna_cdev_ioctl_raw_read+0x33c>
   1dd48: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b735
   1dd4c: 91000000     	add	x0, x0, #0x0
		000000000001dd4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b735
   1dd50: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad7e
   1dd54: 91000021     	add	x1, x1, #0x0
		000000000001dd54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad7e
   1dd58: 94000000     	bl	0x1dd58 <syna_cdev_ioctl_raw_read+0x210>
		000000000001dd58:  R_AARCH64_CALL26	_printk
   1dd5c: 1400004a     	b	0x1de84 <syna_cdev_ioctl_raw_read+0x33c>
   1dd60: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   1dd64: 91000000     	add	x0, x0, #0x0
		000000000001dd64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   1dd68: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4e3
   1dd6c: 91000021     	add	x1, x1, #0x0
		000000000001dd6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4e3
   1dd70: 94000000     	bl	0x1dd70 <syna_cdev_ioctl_raw_read+0x228>
		000000000001dd70:  R_AARCH64_CALL26	_printk
   1dd74: 17ffff87     	b	0x1db90 <syna_cdev_ioctl_raw_read+0x48>
   1dd78: 12801e15     	mov	w21, #-0xf1             // =-241
   1dd7c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
   1dd80: 91000000     	add	x0, x0, #0x0
		000000000001dd80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
   1dd84: 14000008     	b	0x1dda4 <syna_cdev_ioctl_raw_read+0x25c>
   1dd88: 12801e15     	mov	w21, #-0xf1             // =-241
   1dd8c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a22f
   1dd90: 91000000     	add	x0, x0, #0x0
		000000000001dd90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a22f
   1dd94: 14000004     	b	0x1dda4 <syna_cdev_ioctl_raw_read+0x25c>
   1dd98: 12801e95     	mov	w21, #-0xf5             // =-245
   1dd9c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dd9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195a9
   1dda0: 91000000     	add	x0, x0, #0x0
		000000000001dda0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195a9
   1dda4: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dda4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1959b
   1dda8: 91000021     	add	x1, x1, #0x0
		000000000001dda8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1959b
   1ddac: 94000000     	bl	0x1ddac <syna_cdev_ioctl_raw_read+0x264>
		000000000001ddac:  R_AARCH64_CALL26	_printk
   1ddb0: 14000002     	b	0x1ddb8 <syna_cdev_ioctl_raw_read+0x270>
   1ddb4: 2a0003f5     	mov	w21, w0
   1ddb8: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001ddb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bde9
   1ddbc: 91000000     	add	x0, x0, #0x0
		000000000001ddbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bde9
   1ddc0: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001ddc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad7e
   1ddc4: 91000021     	add	x1, x1, #0x0
		000000000001ddc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad7e
   1ddc8: 2a1303e2     	mov	w2, w19
   1ddcc: 94000000     	bl	0x1ddcc <syna_cdev_ioctl_raw_read+0x284>
		000000000001ddcc:  R_AARCH64_CALL26	_printk
   1ddd0: 2a1503f3     	mov	w19, w21
   1ddd4: 14000021     	b	0x1de58 <syna_cdev_ioctl_raw_read+0x310>
   1ddd8: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001ddd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3eb
   1dddc: 91000000     	add	x0, x0, #0x0
		000000000001dddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3eb
   1dde0: 1400000a     	b	0x1de08 <syna_cdev_ioctl_raw_read+0x2c0>
   1dde4: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dde4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1dde8: 91000000     	add	x0, x0, #0x0
		000000000001dde8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1ddec: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001ddec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   1ddf0: 91000021     	add	x1, x1, #0x0
		000000000001ddf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   1ddf4: 94000000     	bl	0x1ddf4 <syna_cdev_ioctl_raw_read+0x2ac>
		000000000001ddf4:  R_AARCH64_CALL26	_printk
   1ddf8: 94000000     	bl	0x1ddf8 <syna_cdev_ioctl_raw_read+0x2b0>
		000000000001ddf8:  R_AARCH64_CALL26	syna_request_managed_device
   1ddfc: b5ffef00     	cbnz	x0, 0x1dbdc <syna_cdev_ioctl_raw_read+0x94>
   1de00: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   1de04: 91000000     	add	x0, x0, #0x0
		000000000001de04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   1de08: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194ed
   1de0c: 91000021     	add	x1, x1, #0x0
		000000000001de0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194ed
   1de10: 94000000     	bl	0x1de10 <syna_cdev_ioctl_raw_read+0x2c8>
		000000000001de10:  R_AARCH64_CALL26	_printk
   1de14: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de14:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   1de18: f900011f     	str	xzr, [x8]
		000000000001de18:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   1de1c: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bba
   1de20: 91000000     	add	x0, x0, #0x0
		000000000001de20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bba
   1de24: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a804
   1de28: 91000021     	add	x1, x1, #0x0
		000000000001de28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a804
   1de2c: 2a1303e2     	mov	w2, w19
   1de30: 94000000     	bl	0x1de30 <syna_cdev_ioctl_raw_read+0x2e8>
		000000000001de30:  R_AARCH64_CALL26	_printk
   1de34: 90000008     	adrp	x8, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de34:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   1de38: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19eef
   1de3c: 91000000     	add	x0, x0, #0x0
		000000000001de3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19eef
   1de40: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad7e
   1de44: 91000021     	add	x1, x1, #0x0
		000000000001de44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad7e
   1de48: 2a1303e2     	mov	w2, w19
   1de4c: f900011f     	str	xzr, [x8]
		000000000001de4c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   1de50: 94000000     	bl	0x1de50 <syna_cdev_ioctl_raw_read+0x308>
		000000000001de50:  R_AARCH64_CALL26	_printk
   1de54: 12801e53     	mov	w19, #-0xf3             // =-243
   1de58: 39400302     	ldrb	w2, [x24]
		000000000001de58:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1de5c: 7100045f     	cmp	w2, #0x1
   1de60: 54000201     	b.ne	0x1dea0 <syna_cdev_ioctl_raw_read+0x358>
   1de64: 2a1f03e8     	mov	w8, wzr
   1de68: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001de68:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   1de6c: 91000000     	add	x0, x0, #0x0
		000000000001de6c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   1de70: 3900c008     	strb	w8, [x0, #0x30]
   1de74: 94000000     	bl	0x1de74 <syna_cdev_ioctl_raw_read+0x32c>
		000000000001de74:  R_AARCH64_CALL26	mutex_unlock
   1de78: f9400288     	ldr	x8, [x20]
   1de7c: 910d2100     	add	x0, x8, #0x348
   1de80: 94000000     	bl	0x1de80 <syna_cdev_ioctl_raw_read+0x338>
		000000000001de80:  R_AARCH64_CALL26	mutex_unlock
   1de84: 2a1303e0     	mov	w0, w19
   1de88: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1de8c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   1de90: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   1de94: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   1de98: d50323bf     	autiasp
   1de9c: d65f03c0     	ret
   1dea0: 90000000     	adrp	x0, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3bb
   1dea4: 91000000     	add	x0, x0, #0x0
		000000000001dea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3bb
   1dea8: 90000001     	adrp	x1, 0x1d000 <syna_dev_probe+0x2b8>
		000000000001dea8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c45f
   1deac: 91000021     	add	x1, x1, #0x0
		000000000001deac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c45f
   1deb0: 94000000     	bl	0x1deb0 <syna_cdev_ioctl_raw_read+0x368>
		000000000001deb0:  R_AARCH64_CALL26	_printk
   1deb4: 39400308     	ldrb	w8, [x24]
		000000000001deb4:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   1deb8: 51000508     	sub	w8, w8, #0x1
   1debc: 17ffffeb     	b	0x1de68 <syna_cdev_ioctl_raw_read+0x320>
   1dec0: d4210000     	brk	#0x800
   1dec4: 17ffff92     	b	0x1dd0c <syna_cdev_ioctl_raw_read+0x1c4>
