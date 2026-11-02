
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b67c <tpd_report_uevent>:
   1b67c: d503233f     	paciasp
   1b680: d10103ff     	sub	sp, sp, #0x40
   1b684: a9027bfd     	stp	x29, x30, [sp, #0x20]
   1b688: f9001bf3     	str	x19, [sp, #0x30]
   1b68c: 910083fd     	add	x29, sp, #0x20
   1b690: d5384108     	mrs	x8, SP_EL0
   1b694: 90000009     	adrp	x9, 0x1b000 <string_change+0x3a8>
		000000000001b694:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1b698: f9438908     	ldr	x8, [x8, #0x710]
   1b69c: f81f83a8     	stur	x8, [x29, #-0x8]
   1b6a0: 12001c08     	and	w8, w0, #0xff
   1b6a4: f9400133     	ldr	x19, [x9]
		000000000001b6a4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1b6a8: 7100091f     	cmp	w8, #0x2
   1b6ac: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   1b6b0: 54000280     	b.eq	0x1b700 <tpd_report_uevent+0x84>
   1b6b4: 7100051f     	cmp	w8, #0x1
   1b6b8: 54000140     	b.eq	0x1b6e0 <tpd_report_uevent+0x64>
   1b6bc: 350003e8     	cbnz	w8, 0x1b738 <tpd_report_uevent+0xbc>
   1b6c0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b6c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80d2
   1b6c4: 91000000     	add	x0, x0, #0x0
		000000000001b6c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80d2
   1b6c8: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b6c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b6cc: 91000021     	add	x1, x1, #0x0
		000000000001b6cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b6d0: 94000000     	bl	0x1b6d0 <tpd_report_uevent+0x54>
		000000000001b6d0:  R_AARCH64_CALL26	_printk
   1b6d4: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b6d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ece
   1b6d8: 91000108     	add	x8, x8, #0x0
		000000000001b6d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ece
   1b6dc: 14000010     	b	0x1b71c <tpd_report_uevent+0xa0>
   1b6e0: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b6e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b56
   1b6e4: 91000000     	add	x0, x0, #0x0
		000000000001b6e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b56
   1b6e8: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b6e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b6ec: 91000021     	add	x1, x1, #0x0
		000000000001b6ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b6f0: 94000000     	bl	0x1b6f0 <tpd_report_uevent+0x74>
		000000000001b6f0:  R_AARCH64_CALL26	_printk
   1b6f4: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b6f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44e8
   1b6f8: 91000108     	add	x8, x8, #0x0
		000000000001b6f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44e8
   1b6fc: 14000008     	b	0x1b71c <tpd_report_uevent+0xa0>
   1b700: 90000000     	adrp	x0, 0x1b000 <string_change+0x3a8>
		000000000001b700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6ef2
   1b704: 91000000     	add	x0, x0, #0x0
		000000000001b704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6ef2
   1b708: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b70c: 91000021     	add	x1, x1, #0x0
		000000000001b70c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b710: 94000000     	bl	0x1b710 <tpd_report_uevent+0x94>
		000000000001b710:  R_AARCH64_CALL26	_printk
   1b714: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b714:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80f0
   1b718: 91000108     	add	x8, x8, #0x0
		000000000001b718:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80f0
   1b71c: f90007e8     	str	x8, [sp, #0x8]
   1b720: f946ea68     	ldr	x8, [x19, #0xdd0]
   1b724: 910023e2     	add	x2, sp, #0x8
   1b728: 52800041     	mov	w1, #0x2                // =2
   1b72c: 91004100     	add	x0, x8, #0x10
   1b730: 94000000     	bl	0x1b730 <tpd_report_uevent+0xb4>
		000000000001b730:  R_AARCH64_CALL26	kobject_uevent_env
   1b734: 14000008     	b	0x1b754 <tpd_report_uevent+0xd8>
   1b738: 90000008     	adrp	x8, 0x1b000 <string_change+0x3a8>
		000000000001b738:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8694
   1b73c: 91000108     	add	x8, x8, #0x0
		000000000001b73c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8694
   1b740: 90000001     	adrp	x1, 0x1b000 <string_change+0x3a8>
		000000000001b740:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5188
   1b744: 91000021     	add	x1, x1, #0x0
		000000000001b744:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5188
   1b748: 12001c02     	and	w2, w0, #0xff
   1b74c: aa0803e0     	mov	x0, x8
   1b750: 94000000     	bl	0x1b750 <tpd_report_uevent+0xd4>
		000000000001b750:  R_AARCH64_CALL26	_printk
   1b754: d5384108     	mrs	x8, SP_EL0
   1b758: f9438908     	ldr	x8, [x8, #0x710]
   1b75c: f85f83a9     	ldur	x9, [x29, #-0x8]
   1b760: eb09011f     	cmp	x8, x9
   1b764: 540000c1     	b.ne	0x1b77c <tpd_report_uevent+0x100>
   1b768: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   1b76c: f9401bf3     	ldr	x19, [sp, #0x30]
   1b770: 910103ff     	add	sp, sp, #0x40
   1b774: d50323bf     	autiasp
   1b778: d65f03c0     	ret
   1b77c: 94000000     	bl	0x1b77c <tpd_report_uevent+0x100>
		000000000001b77c:  R_AARCH64_CALL26	__stack_chk_fail
