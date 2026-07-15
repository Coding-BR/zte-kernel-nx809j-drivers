
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a658 <ufp_report_lcd_state>:
    a658: d503233f     	paciasp
    a65c: d10103ff     	sub	sp, sp, #0x40
    a660: a9027bfd     	stp	x29, x30, [sp, #0x20]
    a664: f9001bf3     	str	x19, [sp, #0x30]
    a668: 910083fd     	add	x29, sp, #0x20
    a66c: d5384108     	mrs	x8, SP_EL0
    a670: f9438908     	ldr	x8, [x8, #0x710]
    a674: f81f83a8     	stur	x8, [x29, #-0x8]
    a678: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a678:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
    a67c: f9400113     	ldr	x19, [x8]
		000000000000a67c:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
    a680: b50000b3     	cbnz	x19, 0xa694 <ufp_report_lcd_state+0x3c>
    a684: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x68e3
    a688: 91000000     	add	x0, x0, #0x0
		000000000000a688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x68e3
    a68c: 94000000     	bl	0xa68c <ufp_report_lcd_state+0x34>
		000000000000a68c:  R_AARCH64_CALL26	_printk
    a690: 1400000c     	b	0xa6c0 <ufp_report_lcd_state+0x68>
    a694: 90000008     	adrp	x8, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a694:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba69
    a698: 91000108     	add	x8, x8, #0x0
		000000000000a698:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba69
    a69c: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a69c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a6d
    a6a0: 91000000     	add	x0, x0, #0x0
		000000000000a6a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a6d
    a6a4: a900ffe8     	stp	x8, xzr, [sp, #0x8]
    a6a8: 94000000     	bl	0xa6a8 <ufp_report_lcd_state+0x50>
		000000000000a6a8:  R_AARCH64_CALL26	_printk
    a6ac: 91004260     	add	x0, x19, #0x10
    a6b0: 910023e2     	add	x2, sp, #0x8
    a6b4: 52800041     	mov	w1, #0x2                // =2
    a6b8: 94000000     	bl	0xa6b8 <ufp_report_lcd_state+0x60>
		000000000000a6b8:  R_AARCH64_CALL26	kobject_uevent_env
    a6bc: 35000160     	cbnz	w0, 0xa6e8 <ufp_report_lcd_state+0x90>
    a6c0: d5384108     	mrs	x8, SP_EL0
    a6c4: f9438908     	ldr	x8, [x8, #0x710]
    a6c8: f85f83a9     	ldur	x9, [x29, #-0x8]
    a6cc: eb09011f     	cmp	x8, x9
    a6d0: 54000121     	b.ne	0xa6f4 <ufp_report_lcd_state+0x9c>
    a6d4: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    a6d8: f9401bf3     	ldr	x19, [sp, #0x30]
    a6dc: 910103ff     	add	sp, sp, #0x40
    a6e0: d50323bf     	autiasp
    a6e4: d65f03c0     	ret
    a6e8: 90000000     	adrp	x0, 0xa000 <ufp_report_gesture_uevent+0x10>
		000000000000a6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x693c
    a6ec: 91000000     	add	x0, x0, #0x0
		000000000000a6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x693c
    a6f0: 17ffffe7     	b	0xa68c <ufp_report_lcd_state+0x34>
    a6f4: 94000000     	bl	0xa6f4 <ufp_report_lcd_state+0x9c>
		000000000000a6f4:  R_AARCH64_CALL26	__stack_chk_fail
