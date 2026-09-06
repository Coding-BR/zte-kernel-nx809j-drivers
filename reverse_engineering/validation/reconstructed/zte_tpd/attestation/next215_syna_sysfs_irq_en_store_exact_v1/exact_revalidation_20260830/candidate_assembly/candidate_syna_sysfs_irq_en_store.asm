
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001ecc0 <syna_sysfs_irq_en_store>:
   1ecc0: d503233f     	paciasp
   1ecc4: d10103ff     	sub	sp, sp, #0x40
   1ecc8: a9017bfd     	stp	x29, x30, [sp, #0x10]
   1eccc: f90013f5     	str	x21, [sp, #0x20]
   1ecd0: a9034ff4     	stp	x20, x19, [sp, #0x30]
   1ecd4: 910043fd     	add	x29, sp, #0x10
   1ecd8: d5384109     	mrs	x9, SP_EL0
   1ecdc: aa0203e8     	mov	x8, x2
   1ece0: 910013e2     	add	x2, sp, #0x4
   1ece4: f9438929     	ldr	x9, [x9, #0x710]
   1ece8: 52800141     	mov	w1, #0xa                // =10
   1ecec: aa0303f3     	mov	x19, x3
   1ecf0: f90007e9     	str	x9, [sp, #0x8]
   1ecf4: f9400c09     	ldr	x9, [x0, #0x18]
   1ecf8: aa0803e0     	mov	x0, x8
   1ecfc: b90007ff     	str	wzr, [sp, #0x4]
   1ed00: f9400d29     	ldr	x9, [x9, #0x18]
   1ed04: f9404d34     	ldr	x20, [x9, #0x98]
   1ed08: f9413a95     	ldr	x21, [x20, #0x270]
   1ed0c: 94000000     	bl	0x1ed0c <syna_sysfs_irq_en_store+0x4c>
		000000000001ed0c:  R_AARCH64_CALL26	kstrtouint
   1ed10: 34000060     	cbz	w0, 0x1ed1c <syna_sysfs_irq_en_store+0x5c>
   1ed14: 928002b3     	mov	x19, #-0x16             // =-22
   1ed18: 14000028     	b	0x1edb8 <syna_sysfs_irq_en_store+0xf8>
   1ed1c: 910022a0     	add	x0, x21, #0x8
   1ed20: b4000320     	cbz	x0, 0x1ed84 <syna_sysfs_irq_en_store+0xc4>
   1ed24: f94022a8     	ldr	x8, [x21, #0x40]
   1ed28: b40002e8     	cbz	x8, 0x1ed84 <syna_sysfs_irq_en_store+0xc4>
   1ed2c: 39560a89     	ldrb	w9, [x20, #0x582]
   1ed30: 360005c9     	tbz	w9, #0x0, 0x1ede8 <syna_sysfs_irq_en_store+0x128>
   1ed34: b9457e89     	ldr	w9, [x20, #0x57c]
   1ed38: 71000d3f     	cmp	w9, #0x3
   1ed3c: 54000620     	b.eq	0x1ee00 <syna_sysfs_irq_en_store+0x140>
   1ed40: b94007e2     	ldr	w2, [sp, #0x4]
   1ed44: 7100045f     	cmp	w2, #0x1
   1ed48: 54000220     	b.eq	0x1ed8c <syna_sysfs_irq_en_store+0xcc>
   1ed4c: 35000662     	cbnz	w2, 0x1ee18 <syna_sysfs_irq_en_store+0x158>
   1ed50: 2a1f03e1     	mov	w1, wzr
   1ed54: b85fc110     	ldur	w16, [x8, #-0x4]
   1ed58: 728c3631     	movk	w17, #0x61b1
   1ed5c: 72a685d1     	movk	w17, #0x342e, lsl #16
   1ed60: 6b11021f     	cmp	w16, w17
   1ed64: 54000040     	b.eq	0x1ed6c <syna_sysfs_irq_en_store+0xac>
   1ed68: d4304500     	brk	#0x8228
   1ed6c: d63f0100     	blr	x8
   1ed70: 36f80200     	tbz	w0, #0x1f, 0x1edb0 <syna_sysfs_irq_en_store+0xf0>
   1ed74: 2a0003f4     	mov	w20, w0
   1ed78: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ed78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18041
   1ed7c: 91000000     	add	x0, x0, #0x0
		000000000001ed7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18041
   1ed80: 14000030     	b	0x1ee40 <syna_sysfs_irq_en_store+0x180>
   1ed84: aa1f03f3     	mov	x19, xzr
   1ed88: 1400000c     	b	0x1edb8 <syna_sysfs_irq_en_store+0xf8>
   1ed8c: 52800021     	mov	w1, #0x1                // =1
   1ed90: b85fc110     	ldur	w16, [x8, #-0x4]
   1ed94: 728c3631     	movk	w17, #0x61b1
   1ed98: 72a685d1     	movk	w17, #0x342e, lsl #16
   1ed9c: 6b11021f     	cmp	w16, w17
   1eda0: 54000040     	b.eq	0x1eda8 <syna_sysfs_irq_en_store+0xe8>
   1eda4: d4304500     	brk	#0x8228
   1eda8: d63f0100     	blr	x8
   1edac: 37f80440     	tbnz	w0, #0x1f, 0x1ee34 <syna_sysfs_irq_en_store+0x174>
   1edb0: 2a1303f4     	mov	w20, w19
   1edb4: 93407e93     	sxtw	x19, w20
   1edb8: d5384108     	mrs	x8, SP_EL0
   1edbc: f9438908     	ldr	x8, [x8, #0x710]
   1edc0: f94007e9     	ldr	x9, [sp, #0x8]
   1edc4: eb09011f     	cmp	x8, x9
   1edc8: 54000441     	b.ne	0x1ee50 <syna_sysfs_irq_en_store+0x190>
   1edcc: aa1303e0     	mov	x0, x19
   1edd0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   1edd4: f94013f5     	ldr	x21, [sp, #0x20]
   1edd8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   1eddc: 910103ff     	add	sp, sp, #0x40
   1ede0: d50323bf     	autiasp
   1ede4: d65f03c0     	ret
   1ede8: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ede8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19190
   1edec: 91000000     	add	x0, x0, #0x0
		000000000001edec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19190
   1edf0: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001edf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1edf4: 91000021     	add	x1, x1, #0x0
		000000000001edf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1edf8: 94000000     	bl	0x1edf8 <syna_sysfs_irq_en_store+0x138>
		000000000001edf8:  R_AARCH64_CALL26	_printk
   1edfc: 17ffffef     	b	0x1edb8 <syna_sysfs_irq_en_store+0xf8>
   1ee00: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ee00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4f5
   1ee04: 91000000     	add	x0, x0, #0x0
		000000000001ee04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4f5
   1ee08: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ee08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1ee0c: 91000021     	add	x1, x1, #0x0
		000000000001ee0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1ee10: 94000000     	bl	0x1ee10 <syna_sysfs_irq_en_store+0x150>
		000000000001ee10:  R_AARCH64_CALL26	_printk
   1ee14: 17ffffe7     	b	0x1edb0 <syna_sysfs_irq_en_store+0xf0>
   1ee18: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ee18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x177f0
   1ee1c: 91000000     	add	x0, x0, #0x0
		000000000001ee1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x177f0
   1ee20: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ee20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1ee24: 91000021     	add	x1, x1, #0x0
		000000000001ee24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1ee28: 94000000     	bl	0x1ee28 <syna_sysfs_irq_en_store+0x168>
		000000000001ee28:  R_AARCH64_CALL26	_printk
   1ee2c: 128002b4     	mov	w20, #-0x16             // =-22
   1ee30: 17ffffe1     	b	0x1edb4 <syna_sysfs_irq_en_store+0xf4>
   1ee34: 2a0003f4     	mov	w20, w0
   1ee38: 90000000     	adrp	x0, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ee38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18550
   1ee3c: 91000000     	add	x0, x0, #0x0
		000000000001ee3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18550
   1ee40: 90000001     	adrp	x1, 0x1e000 <syna_cdev_ioctl_raw_write+0x194>
		000000000001ee40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a52c
   1ee44: 91000021     	add	x1, x1, #0x0
		000000000001ee44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a52c
   1ee48: 94000000     	bl	0x1ee48 <syna_sysfs_irq_en_store+0x188>
		000000000001ee48:  R_AARCH64_CALL26	_printk
   1ee4c: 17ffffda     	b	0x1edb4 <syna_sysfs_irq_en_store+0xf4>
   1ee50: 94000000     	bl	0x1ee50 <syna_sysfs_irq_en_store+0x190>
		000000000001ee50:  R_AARCH64_CALL26	__stack_chk_fail
