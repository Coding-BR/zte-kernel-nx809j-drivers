
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000095c0 <set_finger_lock_flag>:
    95c0: d503233f     	paciasp
    95c4: d100c3ff     	sub	sp, sp, #0x30
    95c8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    95cc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    95d0: 910043fd     	add	x29, sp, #0x10
    95d4: d5384108     	mrs	x8, SP_EL0
    95d8: aa0203f3     	mov	x19, x2
    95dc: aa0103e0     	mov	x0, x1
    95e0: f9438908     	ldr	x8, [x8, #0x710]
    95e4: 910013e3     	add	x3, sp, #0x4
    95e8: aa0203e1     	mov	x1, x2
    95ec: 52800142     	mov	w2, #0xa                // =10
    95f0: f90007e8     	str	x8, [sp, #0x8]
    95f4: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		00000000000095f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    95f8: f9400114     	ldr	x20, [x8]
		00000000000095f8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    95fc: b90007ff     	str	wzr, [sp, #0x4]
    9600: 94000000     	bl	0x9600 <set_finger_lock_flag+0x40>
		0000000000009600:  R_AARCH64_CALL26	kstrtouint_from_user
    9604: 340001a0     	cbz	w0, 0x9638 <set_finger_lock_flag+0x78>
    9608: 928002b3     	mov	x19, #-0x16             // =-22
    960c: d5384108     	mrs	x8, SP_EL0
    9610: f9438908     	ldr	x8, [x8, #0x710]
    9614: f94007e9     	ldr	x9, [sp, #0x8]
    9618: eb09011f     	cmp	x8, x9
    961c: 54000421     	b.ne	0x96a0 <set_finger_lock_flag+0xe0>
    9620: aa1303e0     	mov	x0, x19
    9624: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    9628: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    962c: 9100c3ff     	add	sp, sp, #0x30
    9630: d50323bf     	autiasp
    9634: d65f03c0     	ret
    9638: b94007e8     	ldr	w8, [sp, #0x4]
    963c: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		000000000000963c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d88
    9640: 91000000     	add	x0, x0, #0x0
		0000000000009640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d88
    9644: 90000001     	adrp	x1, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b902
    9648: 91000021     	add	x1, x1, #0x0
		0000000000009648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b902
    964c: 7100011f     	cmp	w8, #0x0
    9650: 1a9f07e2     	cset	w2, ne
    9654: b90007e2     	str	w2, [sp, #0x4]
    9658: 94000000     	bl	0x9658 <set_finger_lock_flag+0x98>
		0000000000009658:  R_AARCH64_CALL26	_printk
    965c: b94007e8     	ldr	w8, [sp, #0x4]
    9660: b9047688     	str	w8, [x20, #0x474]
    9664: 34fffd48     	cbz	w8, 0x960c <set_finger_lock_flag+0x4c>
    9668: 90000008     	adrp	x8, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009668:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0xa0
    966c: 39400108     	ldrb	w8, [x8]
		000000000000966c:  R_AARCH64_LDST8_ABS_LO12_NC	ufp_tp_ops+0xa0
    9670: 7100051f     	cmp	w8, #0x1
    9674: 54000081     	b.ne	0x9684 <set_finger_lock_flag+0xc4>
    9678: 90000000     	adrp	x0, 0x9000 <syna_tcm_testing_trx_trx_short+0x158>
		0000000000009678:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops+0x80
    967c: 91000000     	add	x0, x0, #0x0
		000000000000967c:  R_AARCH64_ADD_ABS_LO12_NC	ufp_tp_ops+0x80
    9680: 94000000     	bl	0x9680 <set_finger_lock_flag+0xc0>
		0000000000009680:  R_AARCH64_CALL26	complete
    9684: b9445a88     	ldr	w8, [x20, #0x458]
    9688: 35fffc28     	cbnz	w8, 0x960c <set_finger_lock_flag+0x4c>
    968c: 52800c80     	mov	w0, #0x64               // =100
    9690: 94000000     	bl	0x9690 <set_finger_lock_flag+0xd0>
		0000000000009690:  R_AARCH64_CALL26	msleep
    9694: 2a1f03e0     	mov	w0, wzr
    9698: 94000000     	bl	0x9698 <set_finger_lock_flag+0xd8>
		0000000000009698:  R_AARCH64_CALL26	report_ufp_uevent
    969c: 17ffffdc     	b	0x960c <set_finger_lock_flag+0x4c>
    96a0: 94000000     	bl	0x96a0 <set_finger_lock_flag+0xe0>
		00000000000096a0:  R_AARCH64_CALL26	__stack_chk_fail
