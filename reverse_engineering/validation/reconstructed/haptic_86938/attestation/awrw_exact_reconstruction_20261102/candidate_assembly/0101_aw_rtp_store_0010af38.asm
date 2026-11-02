
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a974 <aw_rtp_store>:
    a974: d503233f     	paciasp
    a978: d10103ff     	sub	sp, sp, #0x40
    a97c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    a980: f90013f5     	str	x21, [sp, #0x20]
    a984: a9034ff4     	stp	x20, x19, [sp, #0x30]
    a988: 910043fd     	add	x29, sp, #0x10
    a98c: d5384109     	mrs	x9, SP_EL0
    a990: aa0203e8     	mov	x8, x2
    a994: 910013e2     	add	x2, sp, #0x4
    a998: f9438929     	ldr	x9, [x9, #0x710]
    a99c: 2a1f03e1     	mov	w1, wzr
    a9a0: aa0303f3     	mov	x19, x3
    a9a4: f90007e9     	str	x9, [sp, #0x8]
    a9a8: f9404c15     	ldr	x21, [x0, #0x98]
    a9ac: aa0803e0     	mov	x0, x8
    a9b0: b90007ff     	str	wzr, [sp, #0x4]
    a9b4: 94000000     	bl	0xa9b4 <aw_rtp_store+0x40>
		000000000000a9b4:  R_AARCH64_CALL26	kstrtouint
    a9b8: 36f80180     	tbz	w0, #0x1f, 0xa9e8 <aw_rtp_store+0x74>
    a9bc: 2a0003f4     	mov	w20, w0
    a9c0: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000a9c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x403a
    a9c4: 91000000     	add	x0, x0, #0x0
		000000000000a9c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x403a
    a9c8: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000a9c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    a9cc: 91000021     	add	x1, x1, #0x0
		000000000000a9cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    a9d0: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000a9d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f88
    a9d4: 91000063     	add	x3, x3, #0x0
		000000000000a9d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f88
    a9d8: 528146c2     	mov	w2, #0xa36              // =2614
    a9dc: 94000000     	bl	0xa9dc <aw_rtp_store+0x68>
		000000000000a9dc:  R_AARCH64_CALL26	_printk
    a9e0: 93407e93     	sxtw	x19, w20
    a9e4: 14000042     	b	0xaaec <aw_rtp_store+0x178>
    a9e8: 910922a0     	add	x0, x21, #0x248
    a9ec: d102a2b4     	sub	x20, x21, #0xa8
    a9f0: 94000000     	bl	0xa9f0 <aw_rtp_store+0x7c>
		000000000000a9f0:  R_AARCH64_CALL26	mutex_lock
    a9f4: f94292a8     	ldr	x8, [x21, #0x520]
    a9f8: aa1403e0     	mov	x0, x20
    a9fc: f9401d08     	ldr	x8, [x8, #0x38]
    aa00: b85fc110     	ldur	w16, [x8, #-0x4]
    aa04: 72810611     	movk	w17, #0x830
    aa08: 72b08f51     	movk	w17, #0x847a, lsl #16
    aa0c: 6b11021f     	cmp	w16, w17
    aa10: 54000040     	b.eq	0xaa18 <aw_rtp_store+0xa4>
    aa14: d4304500     	brk	#0x8228
    aa18: d63f0100     	blr	x8
    aa1c: f94292a8     	ldr	x8, [x21, #0x520]
    aa20: aa1403e0     	mov	x0, x20
    aa24: 2a1f03e1     	mov	w1, wzr
    aa28: f9408908     	ldr	x8, [x8, #0x110]
    aa2c: b85fc110     	ldur	w16, [x8, #-0x4]
    aa30: 729bedd1     	movk	w17, #0xdf6e
    aa34: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    aa38: 6b11021f     	cmp	w16, w17
    aa3c: 54000040     	b.eq	0xaa44 <aw_rtp_store+0xd0>
    aa40: d4304500     	brk	#0x8228
    aa44: d63f0100     	blr	x8
    aa48: f94292a8     	ldr	x8, [x21, #0x520]
    aa4c: aa1403e0     	mov	x0, x20
    aa50: f9407908     	ldr	x8, [x8, #0xf0]
    aa54: b85fc110     	ldur	w16, [x8, #-0x4]
    aa58: 72810611     	movk	w17, #0x830
    aa5c: 72b08f51     	movk	w17, #0x847a, lsl #16
    aa60: 6b11021f     	cmp	w16, w17
    aa64: 54000040     	b.eq	0xaa6c <aw_rtp_store+0xf8>
    aa68: d4304500     	brk	#0x8228
    aa6c: d63f0100     	blr	x8
    aa70: b94007e4     	ldr	w4, [sp, #0x4]
    aa74: 51000488     	sub	w8, w4, #0x1
    aa78: 71000d1f     	cmp	w8, #0x3
    aa7c: 54000248     	b.hi	0xaac4 <aw_rtp_store+0x150>
    aa80: 90000008     	adrp	x8, 0xa000 <vibrator_work_routine+0x378>
		000000000000aa80:  R_AARCH64_ADR_PREL_PG_HI21	aw_rtp_name
    aa84: 91000108     	add	x8, x8, #0x0
		000000000000aa84:  R_AARCH64_ADD_ABS_LO12_NC	aw_rtp_name
    aa88: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000aa88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x291c
    aa8c: 91000000     	add	x0, x0, #0x0
		000000000000aa8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x291c
    aa90: 8b041905     	add	x5, x8, x4, lsl #6
    aa94: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000aa94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    aa98: 91000021     	add	x1, x1, #0x0
		000000000000aa98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    aa9c: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000aa9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f88
    aaa0: 91000063     	add	x3, x3, #0x0
		000000000000aaa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f88
    aaa4: 52814862     	mov	w2, #0xa43              // =2627
    aaa8: b81e82a4     	stur	w4, [x21, #-0x18]
    aaac: 94000000     	bl	0xaaac <aw_rtp_store+0x138>
		000000000000aaac:  R_AARCH64_CALL26	_printk
    aab0: f941d2a1     	ldr	x1, [x21, #0x3a0]
    aab4: 910be2a2     	add	x2, x21, #0x2f8
    aab8: 52800400     	mov	w0, #0x20               // =32
    aabc: 94000000     	bl	0xaabc <aw_rtp_store+0x148>
		000000000000aabc:  R_AARCH64_CALL26	queue_work_on
    aac0: 14000009     	b	0xaae4 <aw_rtp_store+0x170>
    aac4: 90000000     	adrp	x0, 0xa000 <vibrator_work_routine+0x378>
		000000000000aac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35e6
    aac8: 91000000     	add	x0, x0, #0x0
		000000000000aac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35e6
    aacc: 90000001     	adrp	x1, 0xa000 <vibrator_work_routine+0x378>
		000000000000aacc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b82
    aad0: 91000021     	add	x1, x1, #0x0
		000000000000aad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b82
    aad4: 90000003     	adrp	x3, 0xa000 <vibrator_work_routine+0x378>
		000000000000aad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f88
    aad8: 91000063     	add	x3, x3, #0x0
		000000000000aad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f88
    aadc: 528148e2     	mov	w2, #0xa47              // =2631
    aae0: 94000000     	bl	0xaae0 <aw_rtp_store+0x16c>
		000000000000aae0:  R_AARCH64_CALL26	_printk
    aae4: 910922a0     	add	x0, x21, #0x248
    aae8: 94000000     	bl	0xaae8 <aw_rtp_store+0x174>
		000000000000aae8:  R_AARCH64_CALL26	mutex_unlock
    aaec: d5384108     	mrs	x8, SP_EL0
    aaf0: f9438908     	ldr	x8, [x8, #0x710]
    aaf4: f94007e9     	ldr	x9, [sp, #0x8]
    aaf8: eb09011f     	cmp	x8, x9
    aafc: 54000101     	b.ne	0xab1c <aw_rtp_store+0x1a8>
    ab00: aa1303e0     	mov	x0, x19
    ab04: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    ab08: f94013f5     	ldr	x21, [sp, #0x20]
    ab0c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    ab10: 910103ff     	add	sp, sp, #0x40
    ab14: d50323bf     	autiasp
    ab18: d65f03c0     	ret
    ab1c: 94000000     	bl	0xab1c <aw_rtp_store+0x1a8>
		000000000000ab1c:  R_AARCH64_CALL26	__stack_chk_fail
