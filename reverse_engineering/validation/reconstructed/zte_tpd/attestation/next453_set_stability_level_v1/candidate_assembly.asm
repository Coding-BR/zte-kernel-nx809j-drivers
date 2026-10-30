
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000254b8 <set_stability_level>:
   254b8: d503233f     	paciasp
   254bc: d100c3ff     	sub	sp, sp, #0x30
   254c0: a9017bfd     	stp	x29, x30, [sp, #0x10]
   254c4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   254c8: 910043fd     	add	x29, sp, #0x10
   254cc: d5384108     	mrs	x8, SP_EL0
   254d0: aa0203f3     	mov	x19, x2
   254d4: aa0103e0     	mov	x0, x1
   254d8: f9438908     	ldr	x8, [x8, #0x710]
   254dc: 910013e3     	add	x3, sp, #0x4
   254e0: aa0203e1     	mov	x1, x2
   254e4: 52800142     	mov	w2, #0xa                // =10
   254e8: f90007e8     	str	x8, [sp, #0x8]
   254ec: 90000008     	adrp	x8, 0x25000 <set_play_game+0x7c>
		00000000000254ec:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   254f0: f9400114     	ldr	x20, [x8]
		00000000000254f0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   254f4: b90007ff     	str	wzr, [sp, #0x4]
   254f8: 94000000     	bl	0x254f8 <set_stability_level+0x40>
		00000000000254f8:  R_AARCH64_CALL26	kstrtouint_from_user
   254fc: 340001a0     	cbz	w0, 0x25530 <set_stability_level+0x78>
   25500: 928002b3     	mov	x19, #-0x16             // =-22
   25504: d5384108     	mrs	x8, SP_EL0
   25508: f9438908     	ldr	x8, [x8, #0x710]
   2550c: f94007e9     	ldr	x9, [sp, #0x8]
   25510: eb09011f     	cmp	x8, x9
   25514: 54000321     	b.ne	0x25578 <set_stability_level+0xc0>
   25518: aa1303e0     	mov	x0, x19
   2551c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   25520: a9417bfd     	ldp	x29, x30, [sp, #0x10]
   25524: 9100c3ff     	add	sp, sp, #0x30
   25528: d50323bf     	autiasp
   2552c: d65f03c0     	ret
   25530: b94007e2     	ldr	w2, [sp, #0x4]
   25534: 90000000     	adrp	x0, 0x25000 <set_play_game+0x7c>
		0000000000025534:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x384d
   25538: 91000000     	add	x0, x0, #0x0
		0000000000025538:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x384d
   2553c: 90000001     	adrp	x1, 0x25000 <set_play_game+0x7c>
		000000000002553c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6df
   25540: 91000021     	add	x1, x1, #0x0
		0000000000025540:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6df
   25544: 94000000     	bl	0x25544 <set_stability_level+0x8c>
		0000000000025544:  R_AARCH64_CALL26	_printk
   25548: f9479a88     	ldr	x8, [x20, #0xf30]
   2554c: b4fffdc8     	cbz	x8, 0x25504 <set_stability_level+0x4c>
   25550: b94007e1     	ldr	w1, [sp, #0x4]
   25554: aa1403e0     	mov	x0, x20
   25558: b85fc110     	ldur	w16, [x8, #-0x4]
   2555c: 72969331     	movk	w17, #0xb499
   25560: 72ad5f11     	movk	w17, #0x6af8, lsl #16
   25564: 6b11021f     	cmp	w16, w17
   25568: 54000040     	b.eq	0x25570 <set_stability_level+0xb8>
   2556c: d4304500     	brk	#0x8228
   25570: d63f0100     	blr	x8
   25574: 17ffffe4     	b	0x25504 <set_stability_level+0x4c>
   25578: 94000000     	bl	0x25578 <set_stability_level+0xc0>
		0000000000025578:  R_AARCH64_CALL26	__stack_chk_fail
