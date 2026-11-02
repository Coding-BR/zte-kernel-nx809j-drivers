
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007894 <index_store>:
    7894: d503233f     	paciasp
    7898: d10103ff     	sub	sp, sp, #0x40
    789c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    78a0: f90013f5     	str	x21, [sp, #0x20]
    78a4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    78a8: 910043fd     	add	x29, sp, #0x10
    78ac: d5384109     	mrs	x9, SP_EL0
    78b0: aa0203e8     	mov	x8, x2
    78b4: 910013e2     	add	x2, sp, #0x4
    78b8: f9438929     	ldr	x9, [x9, #0x710]
    78bc: 2a1f03e1     	mov	w1, wzr
    78c0: aa0303f3     	mov	x19, x3
    78c4: f90007e9     	str	x9, [sp, #0x8]
    78c8: f9404c15     	ldr	x21, [x0, #0x98]
    78cc: aa0803e0     	mov	x0, x8
    78d0: b90007ff     	str	wzr, [sp, #0x4]
    78d4: 94000000     	bl	0x78d4 <index_store+0x40>
		00000000000078d4:  R_AARCH64_CALL26	kstrtouint
    78d8: 36f801c0     	tbz	w0, #0x1f, 0x7910 <index_store+0x7c>
    78dc: 93407c13     	sxtw	x19, w0
    78e0: d5384108     	mrs	x8, SP_EL0
    78e4: f9438908     	ldr	x8, [x8, #0x710]
    78e8: f94007e9     	ldr	x9, [sp, #0x8]
    78ec: eb09011f     	cmp	x8, x9
    78f0: 540005e1     	b.ne	0x79ac <index_store+0x118>
    78f4: aa1303e0     	mov	x0, x19
    78f8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    78fc: f94013f5     	ldr	x21, [sp, #0x20]
    7900: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7904: 910103ff     	add	sp, sp, #0x40
    7908: d50323bf     	autiasp
    790c: d65f03c0     	ret
    7910: b94007e4     	ldr	w4, [sp, #0x4]
    7914: 394ed2a8     	ldrb	w8, [x21, #0x3b4]
    7918: 6b08009f     	cmp	w4, w8
    791c: 54000149     	b.ls	0x7944 <index_store+0xb0>
    7920: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007920:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1f
    7924: 91000000     	add	x0, x0, #0x0
		0000000000007924:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1f
    7928: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    792c: 91000021     	add	x1, x1, #0x0
		000000000000792c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7930: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2014
    7934: 91000063     	add	x3, x3, #0x0
		0000000000007934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2014
    7938: 52812e22     	mov	w2, #0x971              // =2417
    793c: 94000000     	bl	0x793c <index_store+0xa8>
		000000000000793c:  R_AARCH64_CALL26	_printk
    7940: 17ffffe8     	b	0x78e0 <index_store+0x4c>
    7944: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3
    7948: 91000000     	add	x0, x0, #0x0
		0000000000007948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3
    794c: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		000000000000794c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7950: 91000021     	add	x1, x1, #0x0
		0000000000007950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7954: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2014
    7958: 91000063     	add	x3, x3, #0x0
		0000000000007958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2014
    795c: 52812e82     	mov	w2, #0x974              // =2420
    7960: d102a2b4     	sub	x20, x21, #0xa8
    7964: 94000000     	bl	0x7964 <index_store+0xd0>
		0000000000007964:  R_AARCH64_CALL26	_printk
    7968: 910922a0     	add	x0, x21, #0x248
    796c: 94000000     	bl	0x796c <index_store+0xd8>
		000000000000796c:  R_AARCH64_CALL26	mutex_lock
    7970: b94007e1     	ldr	w1, [sp, #0x4]
    7974: f94292a8     	ldr	x8, [x21, #0x520]
    7978: aa1403e0     	mov	x0, x20
    797c: b819c2a1     	stur	w1, [x21, #-0x64]
    7980: f9405508     	ldr	x8, [x8, #0xa8]
    7984: b85fc110     	ldur	w16, [x8, #-0x4]
    7988: 729bedd1     	movk	w17, #0xdf6e
    798c: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    7990: 6b11021f     	cmp	w16, w17
    7994: 54000040     	b.eq	0x799c <index_store+0x108>
    7998: d4304500     	brk	#0x8228
    799c: d63f0100     	blr	x8
    79a0: 910922a0     	add	x0, x21, #0x248
    79a4: 94000000     	bl	0x79a4 <index_store+0x110>
		00000000000079a4:  R_AARCH64_CALL26	mutex_unlock
    79a8: 17ffffce     	b	0x78e0 <index_store+0x4c>
    79ac: 94000000     	bl	0x79ac <index_store+0x118>
		00000000000079ac:  R_AARCH64_CALL26	__stack_chk_fail
