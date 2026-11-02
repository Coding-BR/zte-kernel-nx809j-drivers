
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001f684 <ufp_report_lcd_state>:
   1f684: d503233f     	paciasp
   1f688: d10103ff     	sub	sp, sp, #0x40
   1f68c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1f690: f9001bf3     	str	x19, [sp, #0x30]
   1f694: 910083fd     	add	x29, sp, #0x20
   1f698: d5384108     	mrs	x8, SP_EL0
   1f69c: f9438908     	ldr	x8, [x8, #0x710]
   1f6a0: f81f83a8     	stur	x8, [x29, #-0x8]
   1f6a4: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init+0x214>
		000000000001f6a4:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   1f6a8: f9400113     	ldr	x19, [x8]
		000000000001f6a8:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   1f6ac: b50000b3     	cbnz	x19, 0x1f6c0 <ufp_report_lcd_state+0x3c>
   1f6b0: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init+0x214>
		000000000001f6b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1add0
   1f6b4: 91000000     	add	x0, x0, #0x0
		000000000001f6b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1add0
   1f6b8: 94000000     	bl	0x1f6b8 <ufp_report_lcd_state+0x34>
		000000000001f6b8:  R_AARCH64_CALL26	_printk
   1f6bc: 1400000c     	b	0x1f6ec <ufp_report_lcd_state+0x68>
   1f6c0: 90000008     	adrp	x8, 0x1f000 <tpd_report_work_init+0x214>
		000000000001f6c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d84b
   1f6c4: 91000108     	add	x8, x8, #0x0
		000000000001f6c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d84b
   1f6c8: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init+0x214>
		000000000001f6c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d82
   1f6cc: 91000000     	add	x0, x0, #0x0
		000000000001f6cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d82
   1f6d0: a900ffe8     	stp	x8, xzr, [sp, #0x8]
   1f6d4: 94000000     	bl	0x1f6d4 <ufp_report_lcd_state+0x50>
		000000000001f6d4:  R_AARCH64_CALL26	_printk
   1f6d8: 91004260     	add	x0, x19, #0x10
   1f6dc: 910023e2     	add	x2, sp, #0x8
   1f6e0: 52800041     	mov	w1, #0x2                // =2
   1f6e4: 94000000     	bl	0x1f6e4 <ufp_report_lcd_state+0x60>
		000000000001f6e4:  R_AARCH64_CALL26	kobject_uevent_env
   1f6e8: 35000160     	cbnz	w0, 0x1f714 <ufp_report_lcd_state+0x90>
   1f6ec: d5384108     	mrs	x8, SP_EL0
   1f6f0: f9438908     	ldr	x8, [x8, #0x710]
   1f6f4: f85f83a9     	ldur	x9, [x29, #-0x8]
   1f6f8: eb09011f     	cmp	x8, x9
   1f6fc: 54000121     	b.ne	0x1f720 <ufp_report_lcd_state+0x9c>
   1f700: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1f704: f9401bf3     	ldr	x19, [sp, #0x30]
   1f708: 910103ff     	add	sp, sp, #0x40
   1f70c: d50323bf     	autiasp
   1f710: d65f03c0     	ret
   1f714: 90000000     	adrp	x0, 0x1f000 <tpd_report_work_init+0x214>
		000000000001f714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae17
   1f718: 91000000     	add	x0, x0, #0x0
		000000000001f718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae17
   1f71c: 17ffffe7     	b	0x1f6b8 <ufp_report_lcd_state+0x34>
   1f720: 94000000     	bl	0x1f720 <ufp_report_lcd_state+0x9c>
		000000000001f720:  R_AARCH64_CALL26	__stack_chk_fail
