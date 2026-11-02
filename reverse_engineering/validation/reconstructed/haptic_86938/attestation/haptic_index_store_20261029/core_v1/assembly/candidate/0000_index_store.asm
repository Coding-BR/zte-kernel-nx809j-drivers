
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000045e4 <index_store>:
    45e4: d503233f     	paciasp
    45e8: d10103ff     	sub	sp, sp, #0x40
    45ec: a9017bfd     	stp	x29, x30, [sp, #0x10]
    45f0: f90013f5     	str	x21, [sp, #0x20]
    45f4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    45f8: 910043fd     	add	x29, sp, #0x10
    45fc: d5384109     	mrs	x9, SP_EL0
    4600: aa0203e8     	mov	x8, x2
    4604: 910013e2     	add	x2, sp, #0x4
    4608: f9438929     	ldr	x9, [x9, #0x710]
    460c: 2a1f03e1     	mov	w1, wzr
    4610: aa0303f3     	mov	x19, x3
    4614: f90007e9     	str	x9, [sp, #0x8]
    4618: f9404c15     	ldr	x21, [x0, #0x98]
    461c: aa0803e0     	mov	x0, x8
    4620: b90007ff     	str	wzr, [sp, #0x4]
    4624: 94000000     	bl	0x4624 <index_store+0x40>
		0000000000004624:  R_AARCH64_CALL26	kstrtouint
    4628: 36f801c0     	tbz	w0, #0x1f, 0x4660 <index_store+0x7c>
    462c: 93407c13     	sxtw	x19, w0
    4630: d5384108     	mrs	x8, SP_EL0
    4634: f9438908     	ldr	x8, [x8, #0x710]
    4638: f94007e9     	ldr	x9, [sp, #0x8]
    463c: eb09011f     	cmp	x8, x9
    4640: 540005e1     	b.ne	0x46fc <index_store+0x118>
    4644: aa1303e0     	mov	x0, x19
    4648: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    464c: f94013f5     	ldr	x21, [sp, #0x20]
    4650: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4654: 910103ff     	add	sp, sp, #0x40
    4658: d50323bf     	autiasp
    465c: d65f03c0     	ret
    4660: b94007e4     	ldr	w4, [sp, #0x4]
    4664: 394ed2a8     	ldrb	w8, [x21, #0x3b4]
    4668: 6b08009f     	cmp	w4, w8
    466c: 54000149     	b.ls	0x4694 <index_store+0xb0>
    4670: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004670:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7ed
    4674: 91000000     	add	x0, x0, #0x0
		0000000000004674:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7ed
    4678: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		0000000000004678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    467c: 91000021     	add	x1, x1, #0x0
		000000000000467c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    4680: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004680:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8eb
    4684: 91000063     	add	x3, x3, #0x0
		0000000000004684:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8eb
    4688: 52812e22     	mov	w2, #0x971              // =2417
    468c: 94000000     	bl	0x468c <index_store+0xa8>
		000000000000468c:  R_AARCH64_CALL26	_printk
    4690: 17ffffe8     	b	0x4630 <index_store+0x4c>
    4694: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa9
    4698: 91000000     	add	x0, x0, #0x0
		0000000000004698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa9
    469c: 90000001     	adrp	x1, 0x4000 <awrw_store+0x210>
		000000000000469c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    46a0: 91000021     	add	x1, x1, #0x0
		00000000000046a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    46a4: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		00000000000046a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8eb
    46a8: 91000063     	add	x3, x3, #0x0
		00000000000046a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8eb
    46ac: 52812e82     	mov	w2, #0x974              // =2420
    46b0: d102a2b4     	sub	x20, x21, #0xa8
    46b4: 94000000     	bl	0x46b4 <index_store+0xd0>
		00000000000046b4:  R_AARCH64_CALL26	_printk
    46b8: 910922a0     	add	x0, x21, #0x248
    46bc: 94000000     	bl	0x46bc <index_store+0xd8>
		00000000000046bc:  R_AARCH64_CALL26	mutex_lock
    46c0: b94007e1     	ldr	w1, [sp, #0x4]
    46c4: f94292a8     	ldr	x8, [x21, #0x520]
    46c8: aa1403e0     	mov	x0, x20
    46cc: b819c2a1     	stur	w1, [x21, #-0x64]
    46d0: f9405508     	ldr	x8, [x8, #0xa8]
    46d4: b85fc110     	ldur	w16, [x8, #-0x4]
    46d8: 729bedd1     	movk	w17, #0xdf6e
    46dc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    46e0: 6b11021f     	cmp	w16, w17
    46e4: 54000040     	b.eq	0x46ec <index_store+0x108>
    46e8: d4304500     	brk	#0x8228
    46ec: d63f0100     	blr	x8
    46f0: 910922a0     	add	x0, x21, #0x248
    46f4: 94000000     	bl	0x46f4 <index_store+0x110>
		00000000000046f4:  R_AARCH64_CALL26	mutex_unlock
    46f8: 17ffffce     	b	0x4630 <index_store+0x4c>
    46fc: 94000000     	bl	0x46fc <index_store+0x118>
		00000000000046fc:  R_AARCH64_CALL26	__stack_chk_fail
