
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a9a4 <aw_rtp_store>:
    a9a4: d503233f     	paciasp
    a9a8: d10103ff     	sub	sp, sp, #0x40
    a9ac: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a9b0: f90013f5     	str	x21, [sp, #0x20]
    a9b4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a9b8: 910043fd     	add	x29, sp, #0x10
    a9bc: d5384109     	mrs	x9, SP_EL0
    a9c0: aa0203e8     	mov	x8, x2
    a9c4: 910013e2     	add	x2, sp, #0x4
    a9c8: f9438929     	ldr	x9, [x9, #0x710]
    a9cc: 2a1f03e1     	mov	w1, wzr
    a9d0: aa0303f3     	mov	x19, x3
    a9d4: f90007e9     	str	x9, [sp, #0x8]
    a9d8: f9404c15     	ldr	x21, [x0, #0x98]
    a9dc: aa0803e0     	mov	x0, x8
    a9e0: b90007ff     	str	wzr, [sp, #0x4]
    a9e4: 94000000     	bl	0xa9e4 <aw_rtp_store+0x40>
		000000000000a9e4:  R_AARCH64_CALL26	kstrtouint
    a9e8: 36f80180     	tbz	w0, #0x1f, 0xaa18 <aw_rtp_store+0x74>
    a9ec: 2a0003f4     	mov	w20, w0
    a9f0: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000a9f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3fc6
    a9f4: 91000000     	add	x0, x0, #0x0
		000000000000a9f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3fc6
    a9f8: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000a9f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    a9fc: 91000021     	add	x1, x1, #0x0
		000000000000a9fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    aa00: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000aa00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f14
    aa04: 91000063     	add	x3, x3, #0x0
		000000000000aa04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f14
    aa08: 528146c2     	mov	w2, #0xa36              // =2614
    aa0c: 94000000     	bl	0xaa0c <aw_rtp_store+0x68>
		000000000000aa0c:  R_AARCH64_CALL26	_printk
    aa10: 93407e93     	sxtw	x19, w20
    aa14: 14000042     	b	0xab1c <aw_rtp_store+0x178>
    aa18: 910922a0     	add	x0, x21, #0x248
    aa1c: d102a2b4     	sub	x20, x21, #0xa8
    aa20: 94000000     	bl	0xaa20 <aw_rtp_store+0x7c>
		000000000000aa20:  R_AARCH64_CALL26	mutex_lock
    aa24: f94292a8     	ldr	x8, [x21, #0x520]
    aa28: aa1403e0     	mov	x0, x20
    aa2c: f9401d08     	ldr	x8, [x8, #0x38]
    aa30: b85fc110     	ldur	w16, [x8, #-0x4]
    aa34: 72810611     	movk	w17, #0x830
    aa38: 72b08f51     	movk	w17, #0x847a, lsl #16
    aa3c: 6b11021f     	cmp	w16, w17
    aa40: 54000040     	b.eq	0xaa48 <aw_rtp_store+0xa4>
    aa44: d4304500     	brk	#0x8228
    aa48: d63f0100     	blr	x8
    aa4c: f94292a8     	ldr	x8, [x21, #0x520]
    aa50: aa1403e0     	mov	x0, x20
    aa54: 2a1f03e1     	mov	w1, wzr
    aa58: f9408908     	ldr	x8, [x8, #0x110]
    aa5c: b85fc110     	ldur	w16, [x8, #-0x4]
    aa60: 729bedd1     	movk	w17, #0xdf6e
    aa64: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    aa68: 6b11021f     	cmp	w16, w17
    aa6c: 54000040     	b.eq	0xaa74 <aw_rtp_store+0xd0>
    aa70: d4304500     	brk	#0x8228
    aa74: d63f0100     	blr	x8
    aa78: f94292a8     	ldr	x8, [x21, #0x520]
    aa7c: aa1403e0     	mov	x0, x20
    aa80: f9407908     	ldr	x8, [x8, #0xf0]
    aa84: b85fc110     	ldur	w16, [x8, #-0x4]
    aa88: 72810611     	movk	w17, #0x830
    aa8c: 72b08f51     	movk	w17, #0x847a, lsl #16
    aa90: 6b11021f     	cmp	w16, w17
    aa94: 54000040     	b.eq	0xaa9c <aw_rtp_store+0xf8>
    aa98: d4304500     	brk	#0x8228
    aa9c: d63f0100     	blr	x8
    aaa0: b94007e4     	ldr	w4, [sp, #0x4]
    aaa4: 51000488     	sub	w8, w4, #0x1
    aaa8: 71000d1f     	cmp	w8, #0x3
    aaac: 54000248     	b.hi	0xaaf4 <aw_rtp_store+0x150>
    aab0: 90000008     	adrp	x8, 0xa000 <vibrator_work_routine+0x348>
		000000000000aab0:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    aab4: 91000108     	add	x8, x8, #0x0
		000000000000aab4:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    aab8: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000aab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28a8
    aabc: 91000000     	add	x0, x0, #0x0
		000000000000aabc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28a8
    aac0: 8b041905     	add	x5, x8, x4, lsl #6
    aac4: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000aac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    aac8: 91000021     	add	x1, x1, #0x0
		000000000000aac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    aacc: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000aacc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f14
    aad0: 91000063     	add	x3, x3, #0x0
		000000000000aad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f14
    aad4: 52814862     	mov	w2, #0xa43              // =2627
    aad8: b81e82a4     	stur	w4, [x21, #-0x18]
    aadc: 94000000     	bl	0xaadc <aw_rtp_store+0x138>
		000000000000aadc:  R_AARCH64_CALL26	_printk
    aae0: f941d2a1     	ldr	x1, [x21, #0x3a0]
    aae4: 910be2a2     	add	x2, x21, #0x2f8
    aae8: 52800400     	mov	w0, #0x20               // =32
    aaec: 94000000     	bl	0xaaec <aw_rtp_store+0x148>
		000000000000aaec:  R_AARCH64_CALL26	queue_work_on
    aaf0: 14000009     	b	0xab14 <aw_rtp_store+0x170>
    aaf4: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x348>
		000000000000aaf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3572
    aaf8: 91000000     	add	x0, x0, #0x0
		000000000000aaf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3572
    aafc: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x348>
		000000000000aafc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0e
    ab00: 91000021     	add	x1, x1, #0x0
		000000000000ab00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0e
    ab04: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x348>
		000000000000ab04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f14
    ab08: 91000063     	add	x3, x3, #0x0
		000000000000ab08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f14
    ab0c: 528148e2     	mov	w2, #0xa47              // =2631
    ab10: 94000000     	bl	0xab10 <aw_rtp_store+0x16c>
		000000000000ab10:  R_AARCH64_CALL26	_printk
    ab14: 910922a0     	add	x0, x21, #0x248
    ab18: 94000000     	bl	0xab18 <aw_rtp_store+0x174>
		000000000000ab18:  R_AARCH64_CALL26	mutex_unlock
    ab1c: d5384108     	mrs	x8, SP_EL0
    ab20: f9438908     	ldr	x8, [x8, #0x710]
    ab24: f94007e9     	ldr	x9, [sp, #0x8]
    ab28: eb09011f     	cmp	x8, x9
    ab2c: 54000101     	b.ne	0xab4c <aw_rtp_store+0x1a8>
    ab30: aa1303e0     	mov	x0, x19
    ab34: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    ab38: f94013f5     	ldr	x21, [sp, #0x20]
    ab3c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ab40: 910103ff     	add	sp, sp, #0x40
    ab44: d50323bf     	autiasp
    ab48: d65f03c0     	ret
    ab4c: 94000000     	bl	0xab4c <aw_rtp_store+0x1a8>
		000000000000ab4c:  R_AARCH64_CALL26	__stack_chk_fail
