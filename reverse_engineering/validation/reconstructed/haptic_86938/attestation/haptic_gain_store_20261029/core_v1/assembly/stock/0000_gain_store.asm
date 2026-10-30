
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007b1c <gain_store>:
    7b1c: d503233f     	paciasp
    7b20: d10103ff     	sub	sp, sp, #0x40
    7b24: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7b28: f90013f5     	str	x21, [sp, #0x20]
    7b2c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7b30: 910043fd     	add	x29, sp, #0x10
    7b34: d5384109     	mrs	x9, SP_EL0
    7b38: aa0203e8     	mov	x8, x2
    7b3c: 910013e2     	add	x2, sp, #0x4
    7b40: f9438929     	ldr	x9, [x9, #0x710]
    7b44: 2a1f03e1     	mov	w1, wzr
    7b48: aa0303f3     	mov	x19, x3
    7b4c: f90007e9     	str	x9, [sp, #0x8]
    7b50: f9404c15     	ldr	x21, [x0, #0x98]
    7b54: aa0803e0     	mov	x0, x8
    7b58: b90007ff     	str	wzr, [sp, #0x4]
    7b5c: 94000000     	bl	0x7b5c <gain_store+0x40>
		0000000000007b5c:  R_AARCH64_CALL26	kstrtouint
    7b60: 36f801c0     	tbz	w0, #0x1f, 0x7b98 <gain_store+0x7c>
    7b64: 93407c13     	sxtw	x19, w0
    7b68: d5384108     	mrs	x8, SP_EL0
    7b6c: f9438908     	ldr	x8, [x8, #0x710]
    7b70: f94007e9     	ldr	x9, [sp, #0x8]
    7b74: eb09011f     	cmp	x8, x9
    7b78: 54000461     	b.ne	0x7c04 <gain_store+0xe8>
    7b7c: aa1303e0     	mov	x0, x19
    7b80: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7b84: f94013f5     	ldr	x21, [sp, #0x20]
    7b88: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7b8c: 910103ff     	add	sp, sp, #0x40
    7b90: d50323bf     	autiasp
    7b94: d65f03c0     	ret
    7b98: b94007e4     	ldr	w4, [sp, #0x4]
    7b9c: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bf
    7ba0: 91000000     	add	x0, x0, #0x0
		0000000000007ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bf
    7ba4: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7ba8: 91000021     	add	x1, x1, #0x0
		0000000000007ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7bac: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb3
    7bb0: 91000063     	add	x3, x3, #0x0
		0000000000007bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb3
    7bb4: 52813602     	mov	w2, #0x9b0              // =2480
    7bb8: d102a2b4     	sub	x20, x21, #0xa8
    7bbc: 94000000     	bl	0x7bbc <gain_store+0xa0>
		0000000000007bbc:  R_AARCH64_CALL26	_printk
    7bc0: 910922a0     	add	x0, x21, #0x248
    7bc4: 94000000     	bl	0x7bc4 <gain_store+0xa8>
		0000000000007bc4:  R_AARCH64_CALL26	mutex_lock
    7bc8: b94007e1     	ldr	w1, [sp, #0x4]
    7bcc: f94292a8     	ldr	x8, [x21, #0x520]
    7bd0: aa1403e0     	mov	x0, x20
    7bd4: b818c2a1     	stur	w1, [x21, #-0x74]
    7bd8: f9404508     	ldr	x8, [x8, #0x88]
    7bdc: b85fc110     	ldur	w16, [x8, #-0x4]
    7be0: 729bedd1     	movk	w17, #0xdf6e
    7be4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7be8: 6b11021f     	cmp	w16, w17
    7bec: 54000040     	b.eq	0x7bf4 <gain_store+0xd8>
    7bf0: d4304500     	brk	#0x8228
    7bf4: d63f0100     	blr	x8
    7bf8: 910922a0     	add	x0, x21, #0x248
    7bfc: 94000000     	bl	0x7bfc <gain_store+0xe0>
		0000000000007bfc:  R_AARCH64_CALL26	mutex_unlock
    7c00: 17ffffda     	b	0x7b68 <gain_store+0x4c>
    7c04: 94000000     	bl	0x7c04 <gain_store+0xe8>
		0000000000007c04:  R_AARCH64_CALL26	__stack_chk_fail
