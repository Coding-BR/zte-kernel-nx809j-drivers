
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ed1c <syna_sysfs_irq_en_store>:
   1ed1c: d503233f     	paciasp
   1ed20: d10103ff     	sub	sp, sp, #0x40
   1ed24: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1ed28: f90013f5     	str	x21, [sp, #0x20]
   1ed2c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1ed30: 910043fd     	add	x29, sp, #0x10
   1ed34: d5384109     	mrs	x9, SP_EL0
   1ed38: aa0203e8     	mov	x8, x2
   1ed3c: 910013e2     	add	x2, sp, #0x4
   1ed40: f9438929     	ldr	x9, [x9, #0x710]
   1ed44: 52800141     	mov	w1, #0xa                // =10
   1ed48: aa0303f3     	mov	x19, x3
   1ed4c: f90007e9     	str	x9, [sp, #0x8]
   1ed50: f9400c09     	ldr	x9, [x0, #0x18]
   1ed54: aa0803e0     	mov	x0, x8
   1ed58: b90007ff     	str	wzr, [sp, #0x4]
   1ed5c: f9400d29     	ldr	x9, [x9, #0x18]
   1ed60: f9404d34     	ldr	x20, [x9, #0x98]
   1ed64: f9413a95     	ldr	x21, [x20, #0x270]
   1ed68: 94000000     	bl	0x1ed68 <syna_sysfs_irq_en_store+0x4c>
		000000000001ed68:  R_AARCH64_CALL26	kstrtouint
   1ed6c: 34000060     	cbz	w0, 0x1ed78 <syna_sysfs_irq_en_store+0x5c>
   1ed70: 928002b3     	mov	x19, #-0x16             // =-22
   1ed74: 14000028     	b	0x1ee14 <syna_sysfs_irq_en_store+0xf8>
   1ed78: 910022a0     	add	x0, x21, #0x8
   1ed7c: b4000320     	cbz	x0, 0x1ede0 <syna_sysfs_irq_en_store+0xc4>
   1ed80: f94022a8     	ldr	x8, [x21, #0x40]
   1ed84: b40002e8     	cbz	x8, 0x1ede0 <syna_sysfs_irq_en_store+0xc4>
   1ed88: 39560a89     	ldrb	w9, [x20, #0x582]
   1ed8c: 360005c9     	tbz	w9, #0x0, 0x1ee44 <syna_sysfs_irq_en_store+0x128>
   1ed90: b9457e89     	ldr	w9, [x20, #0x57c]
   1ed94: 71000d3f     	cmp	w9, #0x3
   1ed98: 54000620     	b.eq	0x1ee5c <syna_sysfs_irq_en_store+0x140>
   1ed9c: b94007e2     	ldr	w2, [sp, #0x4]
   1eda0: 7100045f     	cmp	w2, #0x1
   1eda4: 54000220     	b.eq	0x1ede8 <syna_sysfs_irq_en_store+0xcc>
   1eda8: 35000662     	cbnz	w2, 0x1ee74 <syna_sysfs_irq_en_store+0x158>
   1edac: 2a1f03e1     	mov	w1, wzr
   1edb0: b85fc110     	ldur	w16, [x8, #-0x4]
   1edb4: 728c3631     	movk	w17, #0x61b1
   1edb8: 72a685d1     	movk	w17, #0x342e, lsl #16
   1edbc: 6b11021f     	cmp	w16, w17
   1edc0: 54000040     	b.eq	0x1edc8 <syna_sysfs_irq_en_store+0xac>
   1edc4: d4304500     	brk	#0x8228
   1edc8: d63f0100     	blr	x8
   1edcc: 36f80200     	tbz	w0, #0x1f, 0x1ee0c <syna_sysfs_irq_en_store+0xf0>
   1edd0: 2a0003f4     	mov	w20, w0
   1edd4: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001edd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18041
   1edd8: 91000000     	add	x0, x0, #0x0
		000000000001edd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18041
   1eddc: 14000030     	b	0x1ee9c <syna_sysfs_irq_en_store+0x180>
   1ede0: aa1f03f3     	mov	x19, xzr
   1ede4: 1400000c     	b	0x1ee14 <syna_sysfs_irq_en_store+0xf8>
   1ede8: 52800021     	mov	w1, #0x1                // =1
   1edec: b85fc110     	ldur	w16, [x8, #-0x4]
   1edf0: 728c3631     	movk	w17, #0x61b1
   1edf4: 72a685d1     	movk	w17, #0x342e, lsl #16
   1edf8: 6b11021f     	cmp	w16, w17
   1edfc: 54000040     	b.eq	0x1ee04 <syna_sysfs_irq_en_store+0xe8>
   1ee00: d4304500     	brk	#0x8228
   1ee04: d63f0100     	blr	x8
   1ee08: 37f80440     	tbnz	w0, #0x1f, 0x1ee90 <syna_sysfs_irq_en_store+0x174>
   1ee0c: 2a1303f4     	mov	w20, w19
   1ee10: 93407e93     	sxtw	x19, w20
   1ee14: d5384108     	mrs	x8, SP_EL0
   1ee18: f9438908     	ldr	x8, [x8, #0x710]
   1ee1c: f94007e9     	ldr	x9, [sp, #0x8]
   1ee20: eb09011f     	cmp	x8, x9
   1ee24: 54000441     	b.ne	0x1eeac <syna_sysfs_irq_en_store+0x190>
   1ee28: aa1303e0     	mov	x0, x19
   1ee2c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1ee30: f94013f5     	ldr	x21, [sp, #0x20]
   1ee34: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1ee38: 910103ff     	add	sp, sp, #0x40
   1ee3c: d50323bf     	autiasp
   1ee40: d65f03c0     	ret
   1ee44: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19190
   1ee48: 91000000     	add	x0, x0, #0x0
		000000000001ee48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19190
   1ee4c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1ee50: 91000021     	add	x1, x1, #0x0
		000000000001ee50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1ee54: 94000000     	bl	0x1ee54 <syna_sysfs_irq_en_store+0x138>
		000000000001ee54:  R_AARCH64_CALL26	_printk
   1ee58: 17ffffef     	b	0x1ee14 <syna_sysfs_irq_en_store+0xf8>
   1ee5c: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f5
   1ee60: 91000000     	add	x0, x0, #0x0
		000000000001ee60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f5
   1ee64: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1ee68: 91000021     	add	x1, x1, #0x0
		000000000001ee68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1ee6c: 94000000     	bl	0x1ee6c <syna_sysfs_irq_en_store+0x150>
		000000000001ee6c:  R_AARCH64_CALL26	_printk
   1ee70: 17ffffe7     	b	0x1ee0c <syna_sysfs_irq_en_store+0xf0>
   1ee74: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177f0
   1ee78: 91000000     	add	x0, x0, #0x0
		000000000001ee78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177f0
   1ee7c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1ee80: 91000021     	add	x1, x1, #0x0
		000000000001ee80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1ee84: 94000000     	bl	0x1ee84 <syna_sysfs_irq_en_store+0x168>
		000000000001ee84:  R_AARCH64_CALL26	_printk
   1ee88: 128002b4     	mov	w20, #-0x16             // =-22
   1ee8c: 17ffffe1     	b	0x1ee10 <syna_sysfs_irq_en_store+0xf4>
   1ee90: 2a0003f4     	mov	w20, w0
   1ee94: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18550
   1ee98: 91000000     	add	x0, x0, #0x0
		000000000001ee98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18550
   1ee9c: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x138>
		000000000001ee9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1eea0: 91000021     	add	x1, x1, #0x0
		000000000001eea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1eea4: 94000000     	bl	0x1eea4 <syna_sysfs_irq_en_store+0x188>
		000000000001eea4:  R_AARCH64_CALL26	_printk
   1eea8: 17ffffda     	b	0x1ee10 <syna_sysfs_irq_en_store+0xf4>
   1eeac: 94000000     	bl	0x1eeac <syna_sysfs_irq_en_store+0x190>
		000000000001eeac:  R_AARCH64_CALL26	__stack_chk_fail
