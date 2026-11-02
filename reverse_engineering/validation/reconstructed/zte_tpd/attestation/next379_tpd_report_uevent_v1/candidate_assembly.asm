
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020478 <tpd_report_uevent>:
   20478: d503233f     	paciasp
   2047c: d10103ff     	sub	sp, sp, #0x40
   20480: a9027bfd     	stp	x29, x30, [sp, #0x20]
   20484: f9001bf3     	str	x19, [sp, #0x30]
   20488: 910083fd     	add	x29, sp, #0x20
   2048c: d5384108     	mrs	x8, SP_EL0
   20490: f9438908     	ldr	x8, [x8, #0x710]
   20494: f81f83a8     	stur	x8, [x29, #-0x8]
   20498: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020498:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   2049c: f9400113     	ldr	x19, [x8]
		000000000002049c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   204a0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   204a4: 12001c08     	and	w8, w0, #0xff
   204a8: 7100091f     	cmp	w8, #0x2
   204ac: 540005a0     	b.eq	0x20560 <tpd_report_uevent+0xe8>
   204b0: 7100051f     	cmp	w8, #0x1
   204b4: 54000460     	b.eq	0x20540 <tpd_report_uevent+0xc8>
   204b8: 35000348     	cbnz	w8, 0x20520 <tpd_report_uevent+0xa8>
   204bc: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		00000000000204bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_3912B
   204c0: 91000000     	add	x0, x0, #0x0
		00000000000204c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3912B
   204c4: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		00000000000204c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ad
   204c8: 91000021     	add	x1, x1, #0x0
		00000000000204c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ad
   204cc: 94000000     	bl	0x204cc <tpd_report_uevent+0x54>
		00000000000204cc:  R_AARCH64_CALL26	_printk
   204d0: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		00000000000204d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2683
   204d4: 91000108     	add	x8, x8, #0x0
		00000000000204d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2683
   204d8: f90007e8     	str	x8, [sp, #0x8]
   204dc: 910023e2     	add	x2, sp, #0x8
   204e0: 52800041     	mov	w1, #0x2                // =2
   204e4: f946ea68     	ldr	x8, [x19, #0xdd0]
   204e8: 91004100     	add	x0, x8, #0x10
   204ec: 94000000     	bl	0x204ec <tpd_report_uevent+0x74>
		00000000000204ec:  R_AARCH64_CALL26	kobject_uevent_env
   204f0: d5384108     	mrs	x8, SP_EL0
   204f4: f9438908     	ldr	x8, [x8, #0x710]
   204f8: d5384109     	mrs	x9, SP_EL0
   204fc: f85f83a9     	ldur	x9, [x29, #-0x8]
   20500: eb09011f     	cmp	x8, x9
   20504: 540000c1     	b.ne	0x2051c <tpd_report_uevent+0xa4>
   20508: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2050c: f9401bf3     	ldr	x19, [sp, #0x30]
   20510: 910103ff     	add	sp, sp, #0x40
   20514: d50323bf     	autiasp
   20518: d65f03c0     	ret
   2051c: 94000000     	bl	0x2051c <tpd_report_uevent+0xa4>
		000000000002051c:  R_AARCH64_CALL26	__stack_chk_fail
   20520: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020520:  R_AARCH64_ADR_PREL_PG_HI21	unk_396D3
   20524: 91000108     	add	x8, x8, #0x0
		0000000000020524:  R_AARCH64_ADD_ABS_LO12_NC	unk_396D3
   20528: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020528:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ad
   2052c: 91000021     	add	x1, x1, #0x0
		000000000002052c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ad
   20530: 12001c02     	and	w2, w0, #0xff
   20534: aa0803e0     	mov	x0, x8
   20538: 94000000     	bl	0x20538 <tpd_report_uevent+0xc0>
		0000000000020538:  R_AARCH64_CALL26	_printk
   2053c: 17ffffed     	b	0x204f0 <tpd_report_uevent+0x78>
   20540: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020540:  R_AARCH64_ADR_PREL_PG_HI21	unk_38BFD
   20544: 91000000     	add	x0, x0, #0x0
		0000000000020544:  R_AARCH64_ADD_ABS_LO12_NC	unk_38BFD
   20548: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ad
   2054c: 91000021     	add	x1, x1, #0x0
		000000000002054c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ad
   20550: 94000000     	bl	0x20550 <tpd_report_uevent+0xd8>
		0000000000020550:  R_AARCH64_CALL26	_printk
   20554: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020554:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a62
   20558: 91000108     	add	x8, x8, #0x0
		0000000000020558:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a62
   2055c: 17ffffdf     	b	0x204d8 <tpd_report_uevent+0x60>
   20560: 90000000     	adrp	x0, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020560:  R_AARCH64_ADR_PREL_PG_HI21	unk_380AB
   20564: 91000000     	add	x0, x0, #0x0
		0000000000020564:  R_AARCH64_ADD_ABS_LO12_NC	unk_380AB
   20568: 90000001     	adrp	x1, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x30ad
   2056c: 91000021     	add	x1, x1, #0x0
		000000000002056c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x30ad
   20570: 94000000     	bl	0x20570 <tpd_report_uevent+0xf8>
		0000000000020570:  R_AARCH64_CALL26	_printk
   20574: 90000008     	adrp	x8, 0x20000 <tpd_id3_report_work+0x28>
		0000000000020574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c64
   20578: 91000108     	add	x8, x8, #0x0
		0000000000020578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c64
   2057c: 17ffffd7     	b	0x204d8 <tpd_report_uevent+0x60>
