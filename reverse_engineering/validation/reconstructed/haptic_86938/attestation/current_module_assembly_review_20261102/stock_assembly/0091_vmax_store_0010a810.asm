
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000079f0 <vmax_store>:
    79f0: d503233f     	paciasp
    79f4: d10103ff     	sub	sp, sp, #0x40
    79f8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    79fc: f90013f5     	str	x21, [sp, #0x20]
    7a00: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7a04: 910043fd     	add	x29, sp, #0x10
    7a08: d5384109     	mrs	x9, SP_EL0
    7a0c: aa0203e8     	mov	x8, x2
    7a10: 910013e2     	add	x2, sp, #0x4
    7a14: f9438929     	ldr	x9, [x9, #0x710]
    7a18: 2a1f03e1     	mov	w1, wzr
    7a1c: aa0303f3     	mov	x19, x3
    7a20: f90007e9     	str	x9, [sp, #0x8]
    7a24: f9404c15     	ldr	x21, [x0, #0x98]
    7a28: aa0803e0     	mov	x0, x8
    7a2c: b90007ff     	str	wzr, [sp, #0x4]
    7a30: 94000000     	bl	0x7a30 <vmax_store+0x40>
		0000000000007a30:  R_AARCH64_CALL26	kstrtouint
    7a34: 36f801c0     	tbz	w0, #0x1f, 0x7a6c <vmax_store+0x7c>
    7a38: 93407c13     	sxtw	x19, w0
    7a3c: d5384108     	mrs	x8, SP_EL0
    7a40: f9438908     	ldr	x8, [x8, #0x710]
    7a44: f94007e9     	ldr	x9, [sp, #0x8]
    7a48: eb09011f     	cmp	x8, x9
    7a4c: 54000461     	b.ne	0x7ad8 <vmax_store+0xe8>
    7a50: aa1303e0     	mov	x0, x19
    7a54: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7a58: f94013f5     	ldr	x21, [sp, #0x20]
    7a5c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7a60: 910103ff     	add	sp, sp, #0x40
    7a64: d50323bf     	autiasp
    7a68: d65f03c0     	ret
    7a6c: b94007e4     	ldr	w4, [sp, #0x4]
    7a70: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3
    7a74: 91000000     	add	x0, x0, #0x0
		0000000000007a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3
    7a78: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7a7c: 91000021     	add	x1, x1, #0x0
		0000000000007a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7a80: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd51
    7a84: 91000063     	add	x3, x3, #0x0
		0000000000007a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd51
    7a88: 52813242     	mov	w2, #0x992              // =2450
    7a8c: d102a2b4     	sub	x20, x21, #0xa8
    7a90: 94000000     	bl	0x7a90 <vmax_store+0xa0>
		0000000000007a90:  R_AARCH64_CALL26	_printk
    7a94: 910922a0     	add	x0, x21, #0x248
    7a98: 94000000     	bl	0x7a98 <vmax_store+0xa8>
		0000000000007a98:  R_AARCH64_CALL26	mutex_lock
    7a9c: b94007e1     	ldr	w1, [sp, #0x4]
    7aa0: f94292a8     	ldr	x8, [x21, #0x520]
    7aa4: aa1403e0     	mov	x0, x20
    7aa8: b81882a1     	stur	w1, [x21, #-0x78]
    7aac: f9405108     	ldr	x8, [x8, #0xa0]
    7ab0: b85fc110     	ldur	w16, [x8, #-0x4]
    7ab4: 729bedd1     	movk	w17, #0xdf6e
    7ab8: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7abc: 6b11021f     	cmp	w16, w17
    7ac0: 54000040     	b.eq	0x7ac8 <vmax_store+0xd8>
    7ac4: d4304500     	brk	#0x8228
    7ac8: d63f0100     	blr	x8
    7acc: 910922a0     	add	x0, x21, #0x248
    7ad0: 94000000     	bl	0x7ad0 <vmax_store+0xe0>
		0000000000007ad0:  R_AARCH64_CALL26	mutex_unlock
    7ad4: 17ffffda     	b	0x7a3c <vmax_store+0x4c>
    7ad8: 94000000     	bl	0x7ad8 <vmax_store+0xe8>
		0000000000007ad8:  R_AARCH64_CALL26	__stack_chk_fail
