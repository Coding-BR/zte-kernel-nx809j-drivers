
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001e9ac <syna_sysfs_reset_store>:
   1e9ac: d503233f     	paciasp
   1e9b0: d10103ff     	sub	sp, sp, #0x40
   1e9b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1e9b8: f90013f5     	str	x21, [sp, #0x20]
   1e9bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1e9c0: 910043fd     	add	x29, sp, #0x10
   1e9c4: d5384109     	mrs	x9, SP_EL0
   1e9c8: aa0203e8     	mov	x8, x2
   1e9cc: 910013e2     	add	x2, sp, #0x4
   1e9d0: f9438929     	ldr	x9, [x9, #0x710]
   1e9d4: 52800141     	mov	w1, #0xa                // =10
   1e9d8: aa0303f3     	mov	x19, x3
   1e9dc: f90007e9     	str	x9, [sp, #0x8]
   1e9e0: f9400c09     	ldr	x9, [x0, #0x18]
   1e9e4: aa0803e0     	mov	x0, x8
   1e9e8: b90007ff     	str	wzr, [sp, #0x4]
   1e9ec: 390003ff     	strb	wzr, [sp]
   1e9f0: f9400d29     	ldr	x9, [x9, #0x18]
   1e9f4: f9404d34     	ldr	x20, [x9, #0x98]
   1e9f8: f9413a95     	ldr	x21, [x20, #0x270]
   1e9fc: 94000000     	bl	0x1e9fc <syna_sysfs_reset_store+0x50>
		000000000001e9fc:  R_AARCH64_CALL26	kstrtouint
   1ea00: 34000060     	cbz	w0, 0x1ea0c <syna_sysfs_reset_store+0x60>
   1ea04: 928002b3     	mov	x19, #-0x16             // =-22
   1ea08: 14000021     	b	0x1ea8c <syna_sysfs_reset_store+0xe0>
   1ea0c: 39560a88     	ldrb	w8, [x20, #0x582]
   1ea10: 36000568     	tbz	w8, #0x0, 0x1eabc <syna_sysfs_reset_store+0x110>
   1ea14: b9457e88     	ldr	w8, [x20, #0x57c]
   1ea18: b94007e2     	ldr	w2, [sp, #0x4]
   1ea1c: 71000d1f     	cmp	w8, #0x3
   1ea20: 7a421844     	ccmp	w2, #0x2, #0x4, ne
   1ea24: 54000241     	b.ne	0x1ea6c <syna_sysfs_reset_store+0xc0>
   1ea28: f9413a80     	ldr	x0, [x20, #0x270]
   1ea2c: f940c408     	ldr	x8, [x0, #0x188]
   1ea30: b4000528     	cbz	x8, 0x1ead4 <syna_sysfs_reset_store+0x128>
   1ea34: b85fc110     	ldur	w16, [x8, #-0x4]
   1ea38: 72974371     	movk	w17, #0xba1b
   1ea3c: 72a56791     	movk	w17, #0x2b3c, lsl #16
   1ea40: 6b11021f     	cmp	w16, w17
   1ea44: 54000040     	b.eq	0x1ea4c <syna_sysfs_reset_store+0xa0>
   1ea48: d4304500     	brk	#0x8228
   1ea4c: d63f0100     	blr	x8
   1ea50: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   1ea54: 37000188     	tbnz	w8, #0x0, 0x1ea84 <syna_sysfs_reset_store+0xd8>
   1ea58: f9400280     	ldr	x0, [x20]
   1ea5c: 910003e1     	mov	x1, sp
   1ea60: aa1f03e2     	mov	x2, xzr
   1ea64: 94000000     	bl	0x1ea64 <syna_sysfs_reset_store+0xb8>
		000000000001ea64:  R_AARCH64_CALL26	syna_tcm_get_event_data
   1ea68: 14000007     	b	0x1ea84 <syna_sysfs_reset_store+0xd8>
   1ea6c: 7100045f     	cmp	w2, #0x1
   1ea70: 54000401     	b.ne	0x1eaf0 <syna_sysfs_reset_store+0x144>
   1ea74: f9400280     	ldr	x0, [x20]
   1ea78: b9420c01     	ldr	w1, [x0, #0x20c]
   1ea7c: 94000000     	bl	0x1ea7c <syna_sysfs_reset_store+0xd0>
		000000000001ea7c:  R_AARCH64_CALL26	syna_tcm_reset
   1ea80: 37f80460     	tbnz	w0, #0x1f, 0x1eb0c <syna_sysfs_reset_store+0x160>
   1ea84: 2a1303f4     	mov	w20, w19
   1ea88: 93407e93     	sxtw	x19, w20
   1ea8c: d5384108     	mrs	x8, SP_EL0
   1ea90: f9438908     	ldr	x8, [x8, #0x710]
   1ea94: f94007e9     	ldr	x9, [sp, #0x8]
   1ea98: eb09011f     	cmp	x8, x9
   1ea9c: 54000461     	b.ne	0x1eb28 <syna_sysfs_reset_store+0x17c>
   1eaa0: aa1303e0     	mov	x0, x19
   1eaa4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1eaa8: f94013f5     	ldr	x21, [sp, #0x20]
   1eaac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1eab0: 910103ff     	add	sp, sp, #0x40
   1eab4: d50323bf     	autiasp
   1eab8: d65f03c0     	ret
   1eabc: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eabc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19190
   1eac0: 91000000     	add	x0, x0, #0x0
		000000000001eac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19190
   1eac4: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eac8: 91000021     	add	x1, x1, #0x0
		000000000001eac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eacc: 94000000     	bl	0x1eacc <syna_sysfs_reset_store+0x120>
		000000000001eacc:  R_AARCH64_CALL26	_printk
   1ead0: 17ffffef     	b	0x1ea8c <syna_sysfs_reset_store+0xe0>
   1ead4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ead4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b48b
   1ead8: 91000000     	add	x0, x0, #0x0
		000000000001ead8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b48b
   1eadc: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eadc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eae0: 91000021     	add	x1, x1, #0x0
		000000000001eae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eae4: 94000000     	bl	0x1eae4 <syna_sysfs_reset_store+0x138>
		000000000001eae4:  R_AARCH64_CALL26	_printk
   1eae8: 2a1f03f4     	mov	w20, wzr
   1eaec: 17ffffe7     	b	0x1ea88 <syna_sysfs_reset_store+0xdc>
   1eaf0: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eaf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182d3
   1eaf4: 91000000     	add	x0, x0, #0x0
		000000000001eaf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182d3
   1eaf8: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eaf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eafc: 91000021     	add	x1, x1, #0x0
		000000000001eafc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eb00: 94000000     	bl	0x1eb00 <syna_sysfs_reset_store+0x154>
		000000000001eb00:  R_AARCH64_CALL26	_printk
   1eb04: 128002b4     	mov	w20, #-0x16             // =-22
   1eb08: 17ffffe0     	b	0x1ea88 <syna_sysfs_reset_store+0xdc>
   1eb0c: 2a0003f4     	mov	w20, w0
   1eb10: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eb10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b045
   1eb14: 91000000     	add	x0, x0, #0x0
		000000000001eb14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b045
   1eb18: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001eb18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eb1c: 91000021     	add	x1, x1, #0x0
		000000000001eb1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eb20: 94000000     	bl	0x1eb20 <syna_sysfs_reset_store+0x174>
		000000000001eb20:  R_AARCH64_CALL26	_printk
   1eb24: 17ffffd9     	b	0x1ea88 <syna_sysfs_reset_store+0xdc>
   1eb28: 94000000     	bl	0x1eb28 <syna_sysfs_reset_store+0x17c>
		000000000001eb28:  R_AARCH64_CALL26	__stack_chk_fail
