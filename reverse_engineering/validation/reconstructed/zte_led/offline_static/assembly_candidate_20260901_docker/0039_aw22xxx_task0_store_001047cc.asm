
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003608 <aw22xxx_task0_store>:
    3608: d503233f     	paciasp
    360c: d100c3ff     	sub	sp, sp, #0x30
    3610: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3614: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3618: 910043fd     	add	x29, sp, #0x10
    361c: d5384109     	mrs	x9, SP_EL0
    3620: aa0203e8     	mov	x8, x2
    3624: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003624:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x406
    3628: 91000021     	add	x1, x1, #0x0
		0000000000003628:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x406
    362c: f9438929     	ldr	x9, [x9, #0x710]
    3630: 910013e2     	add	x2, sp, #0x4
    3634: aa0303f3     	mov	x19, x3
    3638: f90007e9     	str	x9, [sp, #0x8]
    363c: f9404c14     	ldr	x20, [x0, #0x98]
    3640: aa0803e0     	mov	x0, x8
    3644: b90007ff     	str	wzr, [sp, #0x4]
    3648: 94000000     	bl	0x3648 <aw22xxx_task0_store+0x40>
		0000000000003648:  R_AARCH64_CALL26	sscanf
    364c: 7100041f     	cmp	w0, #0x1
    3650: 540001c1     	b.ne	0x3688 <aw22xxx_task0_store+0x80>
    3654: b94007e2     	ldr	w2, [sp, #0x4]
    3658: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88
    365c: 91000000     	add	x0, x0, #0x0
		000000000000365c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88
    3660: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003660:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1161
    3664: 91000021     	add	x1, x1, #0x0
		0000000000003664:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1161
    3668: 390bb282     	strb	w2, [x20, #0x2ec]
    366c: 94000000     	bl	0x366c <aw22xxx_task0_store+0x64>
		000000000000366c:  R_AARCH64_CALL26	_printk
    3670: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		0000000000003670:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    3674: 91078282     	add	x2, x20, #0x1e0
    3678: 52800400     	mov	w0, #0x20               // =32
    367c: f9400101     	ldr	x1, [x8]
		000000000000367c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    3680: 94000000     	bl	0x3680 <aw22xxx_task0_store+0x78>
		0000000000003680:  R_AARCH64_CALL26	queue_work_on
    3684: 14000007     	b	0x36a0 <aw22xxx_task0_store+0x98>
    3688: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7bc
    368c: 91000000     	add	x0, x0, #0x0
		000000000000368c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7bc
    3690: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1161
    3694: 91000021     	add	x1, x1, #0x0
		0000000000003694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1161
    3698: 94000000     	bl	0x3698 <aw22xxx_task0_store+0x90>
		0000000000003698:  R_AARCH64_CALL26	_printk
    369c: 928002b3     	mov	x19, #-0x16             // =-22
    36a0: d5384108     	mrs	x8, SP_EL0
    36a4: f9438908     	ldr	x8, [x8, #0x710]
    36a8: f94007e9     	ldr	x9, [sp, #0x8]
    36ac: eb09011f     	cmp	x8, x9
    36b0: 540000e1     	b.ne	0x36cc <aw22xxx_task0_store+0xc4>
    36b4: aa1303e0     	mov	x0, x19
    36b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    36bc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    36c0: 9100c3ff     	add	sp, sp, #0x30
    36c4: d50323bf     	autiasp
    36c8: d65f03c0     	ret
    36cc: 94000000     	bl	0x36cc <aw22xxx_task0_store+0xc4>
		00000000000036cc:  R_AARCH64_CALL26	__stack_chk_fail
