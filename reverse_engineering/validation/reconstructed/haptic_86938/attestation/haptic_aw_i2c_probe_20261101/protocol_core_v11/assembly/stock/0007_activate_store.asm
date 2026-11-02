
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007610 <activate_store>:
    7610: d503233f     	paciasp
    7614: d10103ff     	sub	sp, sp, #0x40
    7618: a9017bfd     	stp	x29, x30, [sp, #0x10]
    761c: f90013f5     	str	x21, [sp, #0x20]
    7620: a9034ff4     	stp	x20, x19, [sp, #0x30]
    7624: 910043fd     	add	x29, sp, #0x10
    7628: d5384109     	mrs	x9, SP_EL0
    762c: aa0203e8     	mov	x8, x2
    7630: 910013e2     	add	x2, sp, #0x4
    7634: f9438929     	ldr	x9, [x9, #0x710]
    7638: 2a1f03e1     	mov	w1, wzr
    763c: aa0303f3     	mov	x19, x3
    7640: f90007e9     	str	x9, [sp, #0x8]
    7644: f9404c15     	ldr	x21, [x0, #0x98]
    7648: aa0803e0     	mov	x0, x8
    764c: b90007ff     	str	wzr, [sp, #0x4]
    7650: 94000000     	bl	0x7650 <activate_store+0x40>
		0000000000007650:  R_AARCH64_CALL26	kstrtouint
    7654: 36f801c0     	tbz	w0, #0x1f, 0x768c <activate_store+0x7c>
    7658: 93407c13     	sxtw	x19, w0
    765c: d5384108     	mrs	x8, SP_EL0
    7660: f9438908     	ldr	x8, [x8, #0x710]
    7664: f94007e9     	ldr	x9, [sp, #0x8]
    7668: eb09011f     	cmp	x8, x9
    766c: 540006a1     	b.ne	0x7740 <activate_store+0x130>
    7670: aa1303e0     	mov	x0, x19
    7674: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    7678: f94013f5     	ldr	x21, [sp, #0x20]
    767c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7680: 910103ff     	add	sp, sp, #0x40
    7684: d50323bf     	autiasp
    7688: d65f03c0     	ret
    768c: b94007e4     	ldr	w4, [sp, #0x4]
    7690: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3
    7694: 91000000     	add	x0, x0, #0x0
		0000000000007694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3
    7698: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    769c: 91000021     	add	x1, x1, #0x0
		000000000000769c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    76a0: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		00000000000076a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2274
    76a4: 91000063     	add	x3, x3, #0x0
		00000000000076a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2274
    76a8: 52811c62     	mov	w2, #0x8e3              // =2275
    76ac: 94000000     	bl	0x76ac <activate_store+0x9c>
		00000000000076ac:  R_AARCH64_CALL26	_printk
    76b0: 3855e2a8     	ldurb	w8, [x21, #-0xa2]
    76b4: 36000348     	tbz	w8, #0x0, 0x771c <activate_store+0x10c>
    76b8: 910922a0     	add	x0, x21, #0x248
    76bc: d102a2b4     	sub	x20, x21, #0xa8
    76c0: 94000000     	bl	0x76c0 <activate_store+0xb0>
		00000000000076c0:  R_AARCH64_CALL26	mutex_lock
    76c4: f94292a8     	ldr	x8, [x21, #0x520]
    76c8: aa1403e0     	mov	x0, x20
    76cc: 52800021     	mov	w1, #0x1                // =1
    76d0: f9404108     	ldr	x8, [x8, #0x80]
    76d4: b85fc110     	ldur	w16, [x8, #-0x4]
    76d8: 729bedd1     	movk	w17, #0xdf6e
    76dc: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    76e0: 6b11021f     	cmp	w16, w17
    76e4: 54000040     	b.eq	0x76ec <activate_store+0xdc>
    76e8: d4304500     	brk	#0x8228
    76ec: d63f0100     	blr	x8
    76f0: 910a22a0     	add	x0, x21, #0x288
    76f4: 94000000     	bl	0x76f4 <activate_store+0xe4>
		00000000000076f4:  R_AARCH64_CALL26	hrtimer_cancel
    76f8: b94007e8     	ldr	w8, [sp, #0x4]
    76fc: 910922a0     	add	x0, x21, #0x248
    7700: b81982a8     	stur	w8, [x21, #-0x68]
    7704: 94000000     	bl	0x7704 <activate_store+0xf4>
		0000000000007704:  R_AARCH64_CALL26	mutex_unlock
    7708: f941d2a1     	ldr	x1, [x21, #0x3a0]
    770c: 910e02a2     	add	x2, x21, #0x380
    7710: 52800400     	mov	w0, #0x20               // =32
    7714: 94000000     	bl	0x7714 <activate_store+0x104>
		0000000000007714:  R_AARCH64_CALL26	queue_work_on
    7718: 17ffffd1     	b	0x765c <activate_store+0x4c>
    771c: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		000000000000771c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ab3
    7720: 91000000     	add	x0, x0, #0x0
		0000000000007720:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ab3
    7724: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7728: 91000021     	add	x1, x1, #0x0
		0000000000007728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    772c: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		000000000000772c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2274
    7730: 91000063     	add	x3, x3, #0x0
		0000000000007730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2274
    7734: 52811ca2     	mov	w2, #0x8e5              // =2277
    7738: 94000000     	bl	0x7738 <activate_store+0x128>
		0000000000007738:  R_AARCH64_CALL26	_printk
    773c: 17ffffc8     	b	0x765c <activate_store+0x4c>
    7740: 94000000     	bl	0x7740 <activate_store+0x130>
		0000000000007740:  R_AARCH64_CALL26	__stack_chk_fail
