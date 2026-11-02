
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ea08 <syna_sysfs_reset_store>:
   1ea08: d503233f     	paciasp
   1ea0c: d10103ff     	sub	sp, sp, #0x40
   1ea10: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1ea14: f90013f5     	str	x21, [sp, #0x20]
   1ea18: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1ea1c: 910043fd     	add	x29, sp, #0x10
   1ea20: d5384109     	mrs	x9, SP_EL0
   1ea24: aa0203e8     	mov	x8, x2
   1ea28: 910013e2     	add	x2, sp, #0x4
   1ea2c: f9438929     	ldr	x9, [x9, #0x710]
   1ea30: 52800141     	mov	w1, #0xa                // =10
   1ea34: aa0303f3     	mov	x19, x3
   1ea38: f90007e9     	str	x9, [sp, #0x8]
   1ea3c: f9400c09     	ldr	x9, [x0, #0x18]
   1ea40: aa0803e0     	mov	x0, x8
   1ea44: b90007ff     	str	wzr, [sp, #0x4]
   1ea48: 390003ff     	strb	wzr, [sp]
   1ea4c: f9400d29     	ldr	x9, [x9, #0x18]
   1ea50: f9404d34     	ldr	x20, [x9, #0x98]
   1ea54: f9413a95     	ldr	x21, [x20, #0x270]
   1ea58: 94000000     	bl	0x1ea58 <syna_sysfs_reset_store+0x50>
		000000000001ea58:  R_AARCH64_CALL26	kstrtouint
   1ea5c: 34000060     	cbz	w0, 0x1ea68 <syna_sysfs_reset_store+0x60>
   1ea60: 928002b3     	mov	x19, #-0x16             // =-22
   1ea64: 14000021     	b	0x1eae8 <syna_sysfs_reset_store+0xe0>
   1ea68: 39560a88     	ldrb	w8, [x20, #0x582]
   1ea6c: 36000568     	tbz	w8, #0x0, 0x1eb18 <syna_sysfs_reset_store+0x110>
   1ea70: b9457e88     	ldr	w8, [x20, #0x57c]
   1ea74: b94007e2     	ldr	w2, [sp, #0x4]
   1ea78: 71000d1f     	cmp	w8, #0x3
   1ea7c: 7a421844     	ccmp	w2, #0x2, #0x4, ne
   1ea80: 54000241     	b.ne	0x1eac8 <syna_sysfs_reset_store+0xc0>
   1ea84: f9413a80     	ldr	x0, [x20, #0x270]
   1ea88: f940c408     	ldr	x8, [x0, #0x188]
   1ea8c: b4000528     	cbz	x8, 0x1eb30 <syna_sysfs_reset_store+0x128>
   1ea90: b85fc110     	ldur	w16, [x8, #-0x4]
   1ea94: 72974371     	movk	w17, #0xba1b
   1ea98: 72a56791     	movk	w17, #0x2b3c, lsl #16
   1ea9c: 6b11021f     	cmp	w16, w17
   1eaa0: 54000040     	b.eq	0x1eaa8 <syna_sysfs_reset_store+0xa0>
   1eaa4: d4304500     	brk	#0x8228
   1eaa8: d63f0100     	blr	x8
   1eaac: 3942f2a8     	ldrb	w8, [x21, #0xbc]
   1eab0: 37000188     	tbnz	w8, #0x0, 0x1eae0 <syna_sysfs_reset_store+0xd8>
   1eab4: f9400280     	ldr	x0, [x20]
   1eab8: 910003e1     	mov	x1, sp
   1eabc: aa1f03e2     	mov	x2, xzr
   1eac0: 94000000     	bl	0x1eac0 <syna_sysfs_reset_store+0xb8>
		000000000001eac0:  R_AARCH64_CALL26	syna_tcm_get_event_data
   1eac4: 14000007     	b	0x1eae0 <syna_sysfs_reset_store+0xd8>
   1eac8: 7100045f     	cmp	w2, #0x1
   1eacc: 54000401     	b.ne	0x1eb4c <syna_sysfs_reset_store+0x144>
   1ead0: f9400280     	ldr	x0, [x20]
   1ead4: b9420c01     	ldr	w1, [x0, #0x20c]
   1ead8: 94000000     	bl	0x1ead8 <syna_sysfs_reset_store+0xd0>
		000000000001ead8:  R_AARCH64_CALL26	syna_tcm_reset
   1eadc: 37f80460     	tbnz	w0, #0x1f, 0x1eb68 <syna_sysfs_reset_store+0x160>
   1eae0: 2a1303f4     	mov	w20, w19
   1eae4: 93407e93     	sxtw	x19, w20
   1eae8: d5384108     	mrs	x8, SP_EL0
   1eaec: f9438908     	ldr	x8, [x8, #0x710]
   1eaf0: f94007e9     	ldr	x9, [sp, #0x8]
   1eaf4: eb09011f     	cmp	x8, x9
   1eaf8: 54000461     	b.ne	0x1eb84 <syna_sysfs_reset_store+0x17c>
   1eafc: aa1303e0     	mov	x0, x19
   1eb00: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1eb04: f94013f5     	ldr	x21, [sp, #0x20]
   1eb08: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1eb0c: 910103ff     	add	sp, sp, #0x40
   1eb10: d50323bf     	autiasp
   1eb14: d65f03c0     	ret
   1eb18: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19190
   1eb1c: 91000000     	add	x0, x0, #0x0
		000000000001eb1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19190
   1eb20: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eb24: 91000021     	add	x1, x1, #0x0
		000000000001eb24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eb28: 94000000     	bl	0x1eb28 <syna_sysfs_reset_store+0x120>
		000000000001eb28:  R_AARCH64_CALL26	_printk
   1eb2c: 17ffffef     	b	0x1eae8 <syna_sysfs_reset_store+0xe0>
   1eb30: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b48b
   1eb34: 91000000     	add	x0, x0, #0x0
		000000000001eb34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b48b
   1eb38: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eb3c: 91000021     	add	x1, x1, #0x0
		000000000001eb3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eb40: 94000000     	bl	0x1eb40 <syna_sysfs_reset_store+0x138>
		000000000001eb40:  R_AARCH64_CALL26	_printk
   1eb44: 2a1f03f4     	mov	w20, wzr
   1eb48: 17ffffe7     	b	0x1eae4 <syna_sysfs_reset_store+0xdc>
   1eb4c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182d3
   1eb50: 91000000     	add	x0, x0, #0x0
		000000000001eb50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182d3
   1eb54: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eb58: 91000021     	add	x1, x1, #0x0
		000000000001eb58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eb5c: 94000000     	bl	0x1eb5c <syna_sysfs_reset_store+0x154>
		000000000001eb5c:  R_AARCH64_CALL26	_printk
   1eb60: 128002b4     	mov	w20, #-0x16             // =-22
   1eb64: 17ffffe0     	b	0x1eae4 <syna_sysfs_reset_store+0xdc>
   1eb68: 2a0003f4     	mov	w20, w0
   1eb6c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b045
   1eb70: 91000000     	add	x0, x0, #0x0
		000000000001eb70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b045
   1eb74: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001eb74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17534
   1eb78: 91000021     	add	x1, x1, #0x0
		000000000001eb78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17534
   1eb7c: 94000000     	bl	0x1eb7c <syna_sysfs_reset_store+0x174>
		000000000001eb7c:  R_AARCH64_CALL26	_printk
   1eb80: 17ffffd9     	b	0x1eae4 <syna_sysfs_reset_store+0xdc>
   1eb84: 94000000     	bl	0x1eb84 <syna_sysfs_reset_store+0x17c>
		000000000001eb84:  R_AARCH64_CALL26	__stack_chk_fail
