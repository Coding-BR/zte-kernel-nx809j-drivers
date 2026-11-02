
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254ec <set_one_key>:
   254ec: d503233f     	paciasp
   254f0: d100c3ff     	sub	sp, sp, #0x30
   254f4: a9017bfd     	stp	x29, x30, [sp, #0x10]
   254f8: a9024ff4     	stp	x20, x19, [sp, #0x20]
   254fc: 910043fd     	add	x29, sp, #0x10
   25500: d5384108     	mrs	x8, SP_EL0
   25504: aa0203f3     	mov	x19, x2
   25508: aa0103e0     	mov	x0, x1
   2550c: f9438908     	ldr	x8, [x8, #0x710]
   25510: 910013e3     	add	x3, sp, #0x4
   25514: aa0203e1     	mov	x1, x2
   25518: 52800142     	mov	w2, #0xa                // =10
   2551c: f90007e8     	str	x8, [sp, #0x8]
   25520: 90000008     	adrp	x8, 0x25000 <tp_edge_report_limit_read+0x148>
		0000000000025520:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   25524: f9400114     	ldr	x20, [x8]
		0000000000025524:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   25528: b90007ff     	str	wzr, [sp, #0x4]
   2552c: 94000000     	bl	0x2552c <set_one_key+0x40>
		000000000002552c:  R_AARCH64_CALL26	kstrtouint_from_user
   25530: 340001a0     	cbz	w0, 0x25564 <set_one_key+0x78>
   25534: 928002b3     	mov	x19, #-0x16             // =-22
   25538: d5384108     	mrs	x8, SP_EL0
   2553c: f9438908     	ldr	x8, [x8, #0x710]
   25540: f94007e9     	ldr	x9, [sp, #0x8]
   25544: eb09011f     	cmp	x8, x9
   25548: 54000381     	b.ne	0x255b8 <set_one_key+0xcc>
   2554c: aa1303e0     	mov	x0, x19
   25550: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25554: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25558: 9100c3ff     	add	sp, sp, #0x30
   2555c: d50323bf     	autiasp
   25560: d65f03c0     	ret
   25564: b94007e8     	ldr	w8, [sp, #0x4]
   25568: 90000000     	adrp	x0, 0x25000 <tp_edge_report_limit_read+0x148>
		0000000000025568:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x384d
   2556c: 91000000     	add	x0, x0, #0x0
		000000000002556c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x384d
   25570: 90000001     	adrp	x1, 0x25000 <tp_edge_report_limit_read+0x148>
		0000000000025570:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11b3
   25574: 91000021     	add	x1, x1, #0x0
		0000000000025574:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11b3
   25578: 7100011f     	cmp	w8, #0x0
   2557c: 1a9f07e2     	cset	w2, ne
   25580: b90007e2     	str	w2, [sp, #0x4]
   25584: 94000000     	bl	0x25584 <set_one_key+0x98>
		0000000000025584:  R_AARCH64_CALL26	_printk
   25588: f9477e88     	ldr	x8, [x20, #0xef8]
   2558c: b4fffd68     	cbz	x8, 0x25538 <set_one_key+0x4c>
   25590: b94007e1     	ldr	w1, [sp, #0x4]
   25594: aa1403e0     	mov	x0, x20
   25598: b85fc110     	ldur	w16, [x8, #-0x4]
   2559c: 72969331     	movk	w17, #0xb499
   255a0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   255a4: 6b11021f     	cmp	w16, w17
   255a8: 54000040     	b.eq	0x255b0 <set_one_key+0xc4>
   255ac: d4304500     	brk	#0x8228
   255b0: d63f0100     	blr	x8
   255b4: 17ffffe1     	b	0x25538 <set_one_key+0x4c>
   255b8: 94000000     	bl	0x255b8 <set_one_key+0xcc>
		00000000000255b8:  R_AARCH64_CALL26	__stack_chk_fail
