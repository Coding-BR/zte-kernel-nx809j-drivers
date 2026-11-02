
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000019b70 <ufp_report_lcd_state>:
   19b70: d503233f     	paciasp
   19b74: d10103ff     	sub	sp, sp, #0x40
   19b78: a9027bfd     	stp	x29, x30, [sp, #0x20]
   19b7c: f9001bf3     	str	x19, [sp, #0x30]
   19b80: 910083fd     	add	x29, sp, #0x20
   19b84: d5384108     	mrs	x8, SP_EL0
   19b88: f9438908     	ldr	x8, [x8, #0x710]
   19b8c: f81f83a8     	stur	x8, [x29, #-0x8]
   19b90: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b90:  R_AARCH64_ADR_PREL_PG_HI21	ufp_tp_ops
   19b94: f9400113     	ldr	x19, [x8]
		0000000000019b94:  R_AARCH64_LDST64_ABS_LO12_NC	ufp_tp_ops
   19b98: b50000b3     	cbnz	x19, 0x19bac <ufp_report_lcd_state+0x3c>
   19b9c: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a1b9
   19ba0: 91000000     	add	x0, x0, #0x0
		0000000000019ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a1b9
   19ba4: 94000000     	bl	0x19ba4 <ufp_report_lcd_state+0x34>
		0000000000019ba4:  R_AARCH64_CALL26	_printk
   19ba8: 1400000c     	b	0x19bd8 <ufp_report_lcd_state+0x68>
   19bac: 90000008     	adrp	x8, 0x19000 <tp_ghost_check+0x32c>
		0000000000019bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5d5
   19bb0: 91000108     	add	x8, x8, #0x0
		0000000000019bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5d5
   19bb4: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19500
   19bb8: 91000000     	add	x0, x0, #0x0
		0000000000019bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19500
   19bbc: a900ffe8     	stp	x8, xzr, [sp, #0x8]
   19bc0: 94000000     	bl	0x19bc0 <ufp_report_lcd_state+0x50>
		0000000000019bc0:  R_AARCH64_CALL26	_printk
   19bc4: 91004260     	add	x0, x19, #0x10
   19bc8: 910023e2     	add	x2, sp, #0x8
   19bcc: 52800041     	mov	w1, #0x2                // =2
   19bd0: 94000000     	bl	0x19bd0 <ufp_report_lcd_state+0x60>
		0000000000019bd0:  R_AARCH64_CALL26	kobject_uevent_env
   19bd4: 35000160     	cbnz	w0, 0x19c00 <ufp_report_lcd_state+0x90>
   19bd8: d5384108     	mrs	x8, SP_EL0
   19bdc: f9438908     	ldr	x8, [x8, #0x710]
   19be0: f85f83a9     	ldur	x9, [x29, #-0x8]
   19be4: eb09011f     	cmp	x8, x9
   19be8: 54000121     	b.ne	0x19c0c <ufp_report_lcd_state+0x9c>
   19bec: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   19bf0: f9401bf3     	ldr	x19, [sp, #0x30]
   19bf4: 910103ff     	add	sp, sp, #0x40
   19bf8: d50323bf     	autiasp
   19bfc: d65f03c0     	ret
   19c00: 90000000     	adrp	x0, 0x19000 <tp_ghost_check+0x32c>
		0000000000019c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a200
   19c04: 91000000     	add	x0, x0, #0x0
		0000000000019c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a200
   19c08: 17ffffe7     	b	0x19ba4 <ufp_report_lcd_state+0x34>
   19c0c: 94000000     	bl	0x19c0c <ufp_report_lcd_state+0x9c>
		0000000000019c0c:  R_AARCH64_CALL26	__stack_chk_fail
