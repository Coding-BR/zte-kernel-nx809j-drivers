
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021690 <tpd_report_uevent>:
   21690: d503233f     	paciasp
   21694: d10103ff     	sub	sp, sp, #0x40
   21698: a9027bfd     	stp	x29, x30, [sp, #0x20]
   2169c: a9034ff4     	stp	x20, x19, [sp, #0x30]
   216a0: 910083fd     	add	x29, sp, #0x20
   216a4: d5384108     	mrs	x8, SP_EL0
   216a8: 90000009     	adrp	x9, 0x21000 <tpd_get_singlefpgesture+0x14>
		00000000000216a8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   216ac: 12001c02     	and	w2, w0, #0xff
   216b0: f9438908     	ldr	x8, [x8, #0x710]
   216b4: 71000c5f     	cmp	w2, #0x3
   216b8: f81f83a8     	stur	x8, [x29, #-0x8]
   216bc: d5384108     	mrs	x8, SP_EL0
   216c0: f9400133     	ldr	x19, [x9]
		00000000000216c0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   216c4: f9438908     	ldr	x8, [x8, #0x710]
   216c8: f90003ff     	str	xzr, [sp]
   216cc: a900a3ff     	stp	xzr, x8, [sp, #0x8]
   216d0: 54000242     	b.hs	0x21718 <tpd_report_uevent+0x88>
   216d4: 92401c08     	and	x8, x0, #0xff
   216d8: 90000009     	adrp	x9, 0x21000 <tpd_get_singlefpgesture+0x14>
		00000000000216d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x16b8
   216dc: 91000129     	add	x9, x9, #0x0
		00000000000216dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x16b8
   216e0: f8687920     	ldr	x0, [x9, x8, lsl #3]
   216e4: 90000009     	adrp	x9, 0x21000 <tpd_get_singlefpgesture+0x14>
		00000000000216e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x16d0
   216e8: 91000129     	add	x9, x9, #0x0
		00000000000216e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x16d0
   216ec: f8687934     	ldr	x20, [x9, x8, lsl #3]
   216f0: 90000001     	adrp	x1, 0x21000 <tpd_get_singlefpgesture+0x14>
		00000000000216f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21dc
   216f4: 91000021     	add	x1, x1, #0x0
		00000000000216f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21dc
   216f8: 94000000     	bl	0x216f8 <tpd_report_uevent+0x68>
		00000000000216f8:  R_AARCH64_CALL26	_printk
   216fc: f90003f4     	str	x20, [sp]
   21700: 910003e2     	mov	x2, sp
   21704: 52800041     	mov	w1, #0x2                // =2
   21708: f9460e68     	ldr	x8, [x19, #0xc18]
   2170c: 91004100     	add	x0, x8, #0x10
   21710: 94000000     	bl	0x21710 <tpd_report_uevent+0x80>
		0000000000021710:  R_AARCH64_CALL26	kobject_uevent_env
   21714: 14000006     	b	0x2172c <tpd_report_uevent+0x9c>
   21718: 90000000     	adrp	x0, 0x21000 <tpd_get_singlefpgesture+0x14>
		0000000000021718:  R_AARCH64_ADR_PREL_PG_HI21	unk_396D3
   2171c: 91000000     	add	x0, x0, #0x0
		000000000002171c:  R_AARCH64_ADD_ABS_LO12_NC	unk_396D3
   21720: 90000001     	adrp	x1, 0x21000 <tpd_get_singlefpgesture+0x14>
		0000000000021720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21dc
   21724: 91000021     	add	x1, x1, #0x0
		0000000000021724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21dc
   21728: 94000000     	bl	0x21728 <tpd_report_uevent+0x98>
		0000000000021728:  R_AARCH64_CALL26	_printk
   2172c: d5384108     	mrs	x8, SP_EL0
   21730: f9438908     	ldr	x8, [x8, #0x710]
   21734: d5384109     	mrs	x9, SP_EL0
   21738: f85f83a9     	ldur	x9, [x29, #-0x8]
   2173c: eb09011f     	cmp	x8, x9
   21740: 540000c1     	b.ne	0x21758 <tpd_report_uevent+0xc8>
   21744: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   21748: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   2174c: 910103ff     	add	sp, sp, #0x40
   21750: d50323bf     	autiasp
   21754: d65f03c0     	ret
   21758: 94000000     	bl	0x21758 <tpd_report_uevent+0xc8>
		0000000000021758:  R_AARCH64_CALL26	__stack_chk_fail
