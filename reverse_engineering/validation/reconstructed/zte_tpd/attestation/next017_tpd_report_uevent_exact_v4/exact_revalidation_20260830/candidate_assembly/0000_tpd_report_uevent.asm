
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b620 <tpd_report_uevent>:
   1b620: d503233f     	paciasp
   1b624: d10103ff     	sub	sp, sp, #0x40
   1b628: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1b62c: f9001bf3     	str	x19, [sp, #0x30]
   1b630: 910083fd     	add	x29, sp, #0x20
   1b634: d5384108     	mrs	x8, SP_EL0
   1b638: 90000009     	adrp	x9, 0x1b000 <string_change+0x404>
		000000000001b638:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b63c: f9438908     	ldr	x8, [x8, #0x710]
   1b640: f81f83a8     	stur	x8, [x29, #-0x8]
   1b644: 12001c08     	and	w8, w0, #0xff
   1b648: f9400133     	ldr	x19, [x9]
		000000000001b648:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b64c: 7100091f     	cmp	w8, #0x2
   1b650: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1b654: 54000280     	b.eq	0x1b6a4 <tpd_report_uevent+0x84>
   1b658: 7100051f     	cmp	w8, #0x1
   1b65c: 54000140     	b.eq	0x1b684 <tpd_report_uevent+0x64>
   1b660: 350003e8     	cbnz	w8, 0x1b6dc <tpd_report_uevent+0xbc>
   1b664: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80d2
   1b668: 91000000     	add	x0, x0, #0x0
		000000000001b668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80d2
   1b66c: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b66c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b670: 91000021     	add	x1, x1, #0x0
		000000000001b670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b674: 94000000     	bl	0x1b674 <tpd_report_uevent+0x54>
		000000000001b674:  R_AARCH64_CALL26	_printk
   1b678: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b678:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   1b67c: 91000108     	add	x8, x8, #0x0
		000000000001b67c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   1b680: 14000010     	b	0x1b6c0 <tpd_report_uevent+0xa0>
   1b684: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b56
   1b688: 91000000     	add	x0, x0, #0x0
		000000000001b688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b56
   1b68c: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b68c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b690: 91000021     	add	x1, x1, #0x0
		000000000001b690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b694: 94000000     	bl	0x1b694 <tpd_report_uevent+0x74>
		000000000001b694:  R_AARCH64_CALL26	_printk
   1b698: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b698:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44e8
   1b69c: 91000108     	add	x8, x8, #0x0
		000000000001b69c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44e8
   1b6a0: 14000008     	b	0x1b6c0 <tpd_report_uevent+0xa0>
   1b6a4: 90000000     	adrp	x0, 0x1b000 <string_change+0x404>
		000000000001b6a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ef2
   1b6a8: 91000000     	add	x0, x0, #0x0
		000000000001b6a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ef2
   1b6ac: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b6ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b6b0: 91000021     	add	x1, x1, #0x0
		000000000001b6b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b6b4: 94000000     	bl	0x1b6b4 <tpd_report_uevent+0x94>
		000000000001b6b4:  R_AARCH64_CALL26	_printk
   1b6b8: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b6b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f0
   1b6bc: 91000108     	add	x8, x8, #0x0
		000000000001b6bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f0
   1b6c0: f90007e8     	str	x8, [sp, #0x8]
   1b6c4: f946ea68     	ldr	x8, [x19, #0xdd0]
   1b6c8: 910023e2     	add	x2, sp, #0x8
   1b6cc: 52800041     	mov	w1, #0x2                // =2
   1b6d0: 91004100     	add	x0, x8, #0x10
   1b6d4: 94000000     	bl	0x1b6d4 <tpd_report_uevent+0xb4>
		000000000001b6d4:  R_AARCH64_CALL26	kobject_uevent_env
   1b6d8: 14000008     	b	0x1b6f8 <tpd_report_uevent+0xd8>
   1b6dc: 90000008     	adrp	x8, 0x1b000 <string_change+0x404>
		000000000001b6dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8694
   1b6e0: 91000108     	add	x8, x8, #0x0
		000000000001b6e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8694
   1b6e4: 90000001     	adrp	x1, 0x1b000 <string_change+0x404>
		000000000001b6e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b6e8: 91000021     	add	x1, x1, #0x0
		000000000001b6e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b6ec: 12001c02     	and	w2, w0, #0xff
   1b6f0: aa0803e0     	mov	x0, x8
   1b6f4: 94000000     	bl	0x1b6f4 <tpd_report_uevent+0xd4>
		000000000001b6f4:  R_AARCH64_CALL26	_printk
   1b6f8: d5384108     	mrs	x8, SP_EL0
   1b6fc: f9438908     	ldr	x8, [x8, #0x710]
   1b700: f85f83a9     	ldur	x9, [x29, #-0x8]
   1b704: eb09011f     	cmp	x8, x9
   1b708: 540000c1     	b.ne	0x1b720 <tpd_report_uevent+0x100>
   1b70c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1b710: f9401bf3     	ldr	x19, [sp, #0x30]
   1b714: 910103ff     	add	sp, sp, #0x40
   1b718: d50323bf     	autiasp
   1b71c: d65f03c0     	ret
   1b720: 94000000     	bl	0x1b720 <tpd_report_uevent+0x100>
		000000000001b720:  R_AARCH64_CALL26	__stack_chk_fail
