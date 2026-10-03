
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010cd0 <syna_cdev_ioctl_raw_read>:
   10cd0: d503233f     	paciasp
   10cd4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   10cd8: a9015ff8     	stp	x24, x23, [sp, #0x10]
   10cdc: a90257f6     	stp	x22, x21, [sp, #0x20]
   10ce0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   10ce4: 910003fd     	mov	x29, sp
   10ce8: 2a0303f3     	mov	w19, w3
   10cec: 6b02007f     	cmp	w3, w2
   10cf0: 54000e08     	b.hi	0x10eb0 <syna_cdev_ioctl_raw_read+0x1e0>
   10cf4: 34000ef3     	cbz	w19, 0x10ed0 <syna_cdev_ioctl_raw_read+0x200>
   10cf8: f9400008     	ldr	x8, [x0]
   10cfc: aa0003f4     	mov	x20, x0
   10d00: aa0103f5     	mov	x21, x1
   10d04: 910d2100     	add	x0, x8, #0x348
   10d08: 94000000     	bl	0x10d08 <syna_cdev_ioctl_raw_read+0x38>
		0000000000010d08:  R_AARCH64_CALL26	mutex_lock
   10d0c: 90000018     	adrp	x24, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010d0c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x808
   10d10: 39400302     	ldrb	w2, [x24]
		0000000000010d10:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   10d14: 35000ea2     	cbnz	w2, 0x10ee8 <syna_cdev_ioctl_raw_read+0x218>
   10d18: 90000017     	adrp	x23, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010d18:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   10d1c: 910002f7     	add	x23, x23, #0x0
		0000000000010d1c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7c8
   10d20: 910042e0     	add	x0, x23, #0x10
   10d24: 94000000     	bl	0x10d24 <syna_cdev_ioctl_raw_read+0x54>
		0000000000010d24:  R_AARCH64_CALL26	mutex_lock
   10d28: 394102e8     	ldrb	w8, [x23, #0x40]
   10d2c: b9400af6     	ldr	w22, [x23, #0x8]
   10d30: f94002e0     	ldr	x0, [x23]
   10d34: 11000508     	add	w8, w8, #0x1
   10d38: 6b1302df     	cmp	w22, w19
   10d3c: 390102e8     	strb	w8, [x23, #0x40]
   10d40: 54000282     	b.hs	0x10d90 <syna_cdev_ioctl_raw_read+0xc0>
   10d44: b40000c0     	cbz	x0, 0x10d5c <syna_cdev_ioctl_raw_read+0x8c>
   10d48: aa0003f6     	mov	x22, x0
   10d4c: 94000000     	bl	0x10d4c <syna_cdev_ioctl_raw_read+0x7c>
		0000000000010d4c:  R_AARCH64_CALL26	syna_request_managed_device
   10d50: b40010e0     	cbz	x0, 0x10f6c <syna_cdev_ioctl_raw_read+0x29c>
   10d54: aa1603e1     	mov	x1, x22
   10d58: 94000000     	bl	0x10d58 <syna_cdev_ioctl_raw_read+0x88>
		0000000000010d58:  R_AARCH64_CALL26	devm_kfree
   10d5c: 94000000     	bl	0x10d5c <syna_cdev_ioctl_raw_read+0x8c>
		0000000000010d5c:  R_AARCH64_CALL26	syna_request_managed_device
   10d60: b4001140     	cbz	x0, 0x10f88 <syna_cdev_ioctl_raw_read+0x2b8>
   10d64: 7100027f     	cmp	w19, #0x0
   10d68: 54000fcd     	b.le	0x10f60 <syna_cdev_ioctl_raw_read+0x290>
   10d6c: 2a1303f6     	mov	w22, w19
   10d70: 5281b802     	mov	w2, #0xdc0              // =3520
   10d74: aa1603e1     	mov	x1, x22
   10d78: 94000000     	bl	0x10d78 <syna_cdev_ioctl_raw_read+0xa8>
		0000000000010d78:  R_AARCH64_CALL26	devm_kmalloc
   10d7c: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010d7c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   10d80: f9000100     	str	x0, [x8]
		0000000000010d80:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   10d84: b4001100     	cbz	x0, 0x10fa4 <syna_cdev_ioctl_raw_read+0x2d4>
   10d88: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010d88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   10d8c: b9000113     	str	w19, [x8]
		0000000000010d8c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x7d0
   10d90: 2a1f03e1     	mov	w1, wzr
   10d94: aa1603e2     	mov	x2, x22
   10d98: 94000000     	bl	0x10d98 <syna_cdev_ioctl_raw_read+0xc8>
		0000000000010d98:  R_AARCH64_CALL26	memset
   10d9c: b9000eff     	str	wzr, [x23, #0xc]
   10da0: f9400288     	ldr	x8, [x20]
   10da4: b4000ae8     	cbz	x8, 0x10f00 <syna_cdev_ioctl_raw_read+0x230>
   10da8: f9402500     	ldr	x0, [x8, #0x48]
   10dac: b4000b20     	cbz	x0, 0x10f10 <syna_cdev_ioctl_raw_read+0x240>
   10db0: f9401008     	ldr	x8, [x0, #0x20]
   10db4: b4000b68     	cbz	x8, 0x10f20 <syna_cdev_ioctl_raw_read+0x250>
   10db8: f94002f6     	ldr	x22, [x23]
   10dbc: 2a1303e2     	mov	w2, w19
   10dc0: aa1603e1     	mov	x1, x22
   10dc4: b85fc110     	ldur	w16, [x8, #-0x4]
   10dc8: 728403f1     	movk	w17, #0x201f
   10dcc: 72a51491     	movk	w17, #0x28a4, lsl #16
   10dd0: 6b11021f     	cmp	w16, w17
   10dd4: 54000040     	b.eq	0x10ddc <syna_cdev_ioctl_raw_read+0x10c>
   10dd8: d4304500     	brk	#0x8228
   10ddc: d63f0100     	blr	x8
   10de0: 37f80ae0     	tbnz	w0, #0x1f, 0x10f3c <syna_cdev_ioctl_raw_read+0x26c>
   10de4: 37f81333     	tbnz	w19, #0x1f, 0x11048 <syna_cdev_ioctl_raw_read+0x378>
   10de8: 2a1303f7     	mov	w23, w19
   10dec: aa1603e0     	mov	x0, x22
   10df0: 52800022     	mov	w2, #0x1                // =1
   10df4: aa1703e1     	mov	x1, x23
   10df8: 94000000     	bl	0x10df8 <syna_cdev_ioctl_raw_read+0x128>
		0000000000010df8:  R_AARCH64_CALL26	__check_object_size
   10dfc: d5384108     	mrs	x8, SP_EL0
   10e00: 39411909     	ldrb	w9, [x8, #0x46]
   10e04: 37280089     	tbnz	w9, #0x5, 0x10e14 <syna_cdev_ioctl_raw_read+0x144>
   10e08: f940010a     	ldr	x10, [x8]
   10e0c: aa1503e9     	mov	x9, x21
   10e10: 36d0006a     	tbz	w10, #0x1a, 0x10e1c <syna_cdev_ioctl_raw_read+0x14c>
   10e14: d378dea9     	lsl	x9, x21, #8
   10e18: 8a8922a9     	and	x9, x21, x9, asr #8
   10e1c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   10e20: cb17014a     	sub	x10, x10, x23
   10e24: eb09015f     	cmp	x10, x9
   10e28: 54000363     	b.lo	0x10e94 <syna_cdev_ioctl_raw_read+0x1c4>
   10e2c: d503201f     	nop
   10e30: d53b4229     	mrs	x9, DAIF
   10e34: d50343df     	msr	DAIFSet, #0x3
   10e38: f9400508     	ldr	x8, [x8, #0x8]
   10e3c: d538202a     	mrs	x10, TTBR1_EL1
   10e40: aa0803eb     	mov	x11, x8
   10e44: b340bd4b     	bfxil	x11, x10, #0, #48
   10e48: d518202b     	msr	TTBR1_EL1, x11
   10e4c: d5182008     	msr	TTBR0_EL1, x8
   10e50: d5033fdf     	isb
   10e54: d51b4229     	msr	DAIF, x9
   10e58: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   10e5c: aa1603e1     	mov	x1, x22
   10e60: aa1703e2     	mov	x2, x23
   10e64: 94000000     	bl	0x10e64 <syna_cdev_ioctl_raw_read+0x194>
		0000000000010e64:  R_AARCH64_CALL26	__arch_copy_to_user
   10e68: d503201f     	nop
   10e6c: d53b4228     	mrs	x8, DAIF
   10e70: d50343df     	msr	DAIFSet, #0x3
   10e74: d5382029     	mrs	x9, TTBR1_EL1
   10e78: 9240bd29     	and	x9, x9, #0xffffffffffff
   10e7c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   10e80: d518200a     	msr	TTBR0_EL1, x10
   10e84: d5182029     	msr	TTBR1_EL1, x9
   10e88: d5033fdf     	isb
   10e8c: d51b4228     	msr	DAIF, x8
   10e90: b4000a80     	cbz	x0, 0x10fe0 <syna_cdev_ioctl_raw_read+0x310>
   10e94: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca9
   10e98: 91000000     	add	x0, x0, #0x0
		0000000000010e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca9
   10e9c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x817c
   10ea0: 91000021     	add	x1, x1, #0x0
		0000000000010ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x817c
   10ea4: 94000000     	bl	0x10ea4 <syna_cdev_ioctl_raw_read+0x1d4>
		0000000000010ea4:  R_AARCH64_CALL26	_printk
   10ea8: 12800673     	mov	w19, #-0x34             // =-52
   10eac: 1400004d     	b	0x10fe0 <syna_cdev_ioctl_raw_read+0x310>
   10eb0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x75e1
   10eb4: 91000000     	add	x0, x0, #0x0
		0000000000010eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x75e1
   10eb8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x817c
   10ebc: 91000021     	add	x1, x1, #0x0
		0000000000010ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x817c
   10ec0: 2a1303e3     	mov	w3, w19
   10ec4: 94000000     	bl	0x10ec4 <syna_cdev_ioctl_raw_read+0x1f4>
		0000000000010ec4:  R_AARCH64_CALL26	_printk
   10ec8: 128002b3     	mov	w19, #-0x16             // =-22
   10ecc: 14000050     	b	0x1100c <syna_cdev_ioctl_raw_read+0x33c>
   10ed0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97d9
   10ed4: 91000000     	add	x0, x0, #0x0
		0000000000010ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97d9
   10ed8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x817c
   10edc: 91000021     	add	x1, x1, #0x0
		0000000000010edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x817c
   10ee0: 94000000     	bl	0x10ee0 <syna_cdev_ioctl_raw_read+0x210>
		0000000000010ee0:  R_AARCH64_CALL26	_printk
   10ee4: 1400004a     	b	0x1100c <syna_cdev_ioctl_raw_read+0x33c>
   10ee8: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   10eec: 91000000     	add	x0, x0, #0x0
		0000000000010eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   10ef0: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f05
   10ef4: 91000021     	add	x1, x1, #0x0
		0000000000010ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f05
   10ef8: 94000000     	bl	0x10ef8 <syna_cdev_ioctl_raw_read+0x228>
		0000000000010ef8:  R_AARCH64_CALL26	_printk
   10efc: 17ffff87     	b	0x10d18 <syna_cdev_ioctl_raw_read+0x48>
   10f00: 12801e15     	mov	w21, #-0xf1             // =-241
   10f04: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   10f08: 91000000     	add	x0, x0, #0x0
		0000000000010f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   10f0c: 14000008     	b	0x10f2c <syna_cdev_ioctl_raw_read+0x25c>
   10f10: 12801e15     	mov	w21, #-0xf1             // =-241
   10f14: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a5a
   10f18: 91000000     	add	x0, x0, #0x0
		0000000000010f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a5a
   10f1c: 14000004     	b	0x10f2c <syna_cdev_ioctl_raw_read+0x25c>
   10f20: 12801e95     	mov	w21, #-0xf5             // =-245
   10f24: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce6
   10f28: 91000000     	add	x0, x0, #0x0
		0000000000010f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce6
   10f2c: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4cd8
   10f30: 91000021     	add	x1, x1, #0x0
		0000000000010f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4cd8
   10f34: 94000000     	bl	0x10f34 <syna_cdev_ioctl_raw_read+0x264>
		0000000000010f34:  R_AARCH64_CALL26	_printk
   10f38: 14000002     	b	0x10f40 <syna_cdev_ioctl_raw_read+0x270>
   10f3c: 2a0003f5     	mov	w21, w0
   10f40: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6d6
   10f44: 91000000     	add	x0, x0, #0x0
		0000000000010f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6d6
   10f48: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x817c
   10f4c: 91000021     	add	x1, x1, #0x0
		0000000000010f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x817c
   10f50: 2a1303e2     	mov	w2, w19
   10f54: 94000000     	bl	0x10f54 <syna_cdev_ioctl_raw_read+0x284>
		0000000000010f54:  R_AARCH64_CALL26	_printk
   10f58: 2a1503f3     	mov	w19, w21
   10f5c: 14000021     	b	0x10fe0 <syna_cdev_ioctl_raw_read+0x310>
   10f60: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f17
   10f64: 91000000     	add	x0, x0, #0x0
		0000000000010f64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f17
   10f68: 1400000a     	b	0x10f90 <syna_cdev_ioctl_raw_read+0x2c0>
   10f6c: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   10f70: 91000000     	add	x0, x0, #0x0
		0000000000010f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   10f74: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   10f78: 91000021     	add	x1, x1, #0x0
		0000000000010f78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   10f7c: 94000000     	bl	0x10f7c <syna_cdev_ioctl_raw_read+0x2ac>
		0000000000010f7c:  R_AARCH64_CALL26	_printk
   10f80: 94000000     	bl	0x10f80 <syna_cdev_ioctl_raw_read+0x2b0>
		0000000000010f80:  R_AARCH64_CALL26	syna_request_managed_device
   10f84: b5ffef00     	cbnz	x0, 0x10d64 <syna_cdev_ioctl_raw_read+0x94>
   10f88: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   10f8c: 91000000     	add	x0, x0, #0x0
		0000000000010f8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   10f90: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   10f94: 91000021     	add	x1, x1, #0x0
		0000000000010f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   10f98: 94000000     	bl	0x10f98 <syna_cdev_ioctl_raw_read+0x2c8>
		0000000000010f98:  R_AARCH64_CALL26	_printk
   10f9c: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010f9c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7c8
   10fa0: f900011f     	str	xzr, [x8]
		0000000000010fa0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7c8
   10fa4: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010fa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c25
   10fa8: 91000000     	add	x0, x0, #0x0
		0000000000010fa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c25
   10fac: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7620
   10fb0: 91000021     	add	x1, x1, #0x0
		0000000000010fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7620
   10fb4: 2a1303e2     	mov	w2, w19
   10fb8: 94000000     	bl	0x10fb8 <syna_cdev_ioctl_raw_read+0x2e8>
		0000000000010fb8:  R_AARCH64_CALL26	_printk
   10fbc: 90000008     	adrp	x8, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010fbc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d0
   10fc0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62e7
   10fc4: 91000000     	add	x0, x0, #0x0
		0000000000010fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62e7
   10fc8: 90000001     	adrp	x1, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x817c
   10fcc: 91000021     	add	x1, x1, #0x0
		0000000000010fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x817c
   10fd0: 2a1303e2     	mov	w2, w19
   10fd4: f900011f     	str	xzr, [x8]
		0000000000010fd4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x7d0
   10fd8: 94000000     	bl	0x10fd8 <syna_cdev_ioctl_raw_read+0x308>
		0000000000010fd8:  R_AARCH64_CALL26	_printk
   10fdc: 12801e53     	mov	w19, #-0xf3             // =-243
   10fe0: 39400302     	ldrb	w2, [x24]
		0000000000010fe0:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   10fe4: 7100045f     	cmp	w2, #0x1
   10fe8: 54000201     	b.ne	0x11028 <syna_cdev_ioctl_raw_read+0x358>
   10fec: 2a1f03e8     	mov	w8, wzr
   10ff0: 90000000     	adrp	x0, 0x10000 <syna_cdev_ioctls+0x179c>
		0000000000010ff0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x7d8
   10ff4: 91000000     	add	x0, x0, #0x0
		0000000000010ff4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x7d8
   10ff8: 3900c008     	strb	w8, [x0, #0x30]
   10ffc: 94000000     	bl	0x10ffc <syna_cdev_ioctl_raw_read+0x32c>
		0000000000010ffc:  R_AARCH64_CALL26	mutex_unlock
   11000: f9400288     	ldr	x8, [x20]
   11004: 910d2100     	add	x0, x8, #0x348
   11008: 94000000     	bl	0x11008 <syna_cdev_ioctl_raw_read+0x338>
		0000000000011008:  R_AARCH64_CALL26	mutex_unlock
   1100c: 2a1303e0     	mov	w0, w19
   11010: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   11014: a94257f6     	ldp	x22, x21, [sp, #0x20]
   11018: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   1101c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   11020: d50323bf     	autiasp
   11024: d65f03c0     	ret
   11028: 90000000     	adrp	x0, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ed5
   1102c: 91000000     	add	x0, x0, #0x0
		000000000001102c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ed5
   11030: 90000001     	adrp	x1, 0x11000 <syna_cdev_ioctl_raw_read+0x330>
		0000000000011030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaed
   11034: 91000021     	add	x1, x1, #0x0
		0000000000011034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaed
   11038: 94000000     	bl	0x11038 <syna_cdev_ioctl_raw_read+0x368>
		0000000000011038:  R_AARCH64_CALL26	_printk
   1103c: 39400308     	ldrb	w8, [x24]
		000000000001103c:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x808
   11040: 51000508     	sub	w8, w8, #0x1
   11044: 17ffffeb     	b	0x10ff0 <syna_cdev_ioctl_raw_read+0x320>
   11048: d4210000     	brk	#0x800
   1104c: 17ffff92     	b	0x10e94 <syna_cdev_ioctl_raw_read+0x1c4>
