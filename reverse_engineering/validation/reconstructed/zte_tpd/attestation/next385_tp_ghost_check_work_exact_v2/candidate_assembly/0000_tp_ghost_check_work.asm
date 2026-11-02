
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001023c <tp_ghost_check_work>:
   1023c: d503233f     	paciasp
   10240: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   10244: f9000bf3     	str	x19, [sp, #0x10]
   10248: 910003fd     	mov	x29, sp
   1024c: 90000008     	adrp	x8, 0x10000 <syna_ts_register_for_panel_events+0x6c>
		000000000001024c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   10250: f9400113     	ldr	x19, [x8]
		0000000000010250:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   10254: 94000000     	bl	0x10254 <tp_ghost_check_work+0x18>
		0000000000010254:  R_AARCH64_CALL26	tp_ghost_check
   10258: 370000e0     	tbnz	w0, #0x0, 0x10274 <tp_ghost_check_work+0x38>
   1025c: 94000000     	bl	0x1025c <tp_ghost_check_work+0x20>
		000000000001025c:  R_AARCH64_CALL26	ghost_check_reset
   10260: 3912227f     	strb	wzr, [x19, #0x488]
   10264: f9400bf3     	ldr	x19, [sp, #0x10]
   10268: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1026c: d50323bf     	autiasp
   10270: d65f03c0     	ret
   10274: 90000000     	adrp	x0, 0x10000 <syna_ts_register_for_panel_events+0x6c>
		0000000000010274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce2e
   10278: 91000000     	add	x0, x0, #0x0
		0000000000010278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce2e
   1027c: 94000000     	bl	0x1027c <tp_ghost_check_work+0x40>
		000000000001027c:  R_AARCH64_CALL26	_printk
   10280: b944aa68     	ldr	w8, [x19, #0x4a8]
   10284: 7100091f     	cmp	w8, #0x2
   10288: 540000cc     	b.gt	0x102a0 <tp_ghost_check_work+0x64>
   1028c: f947fa69     	ldr	x9, [x19, #0xff0]
   10290: b5000109     	cbnz	x9, 0x102b0 <tp_ghost_check_work+0x74>
   10294: 11000508     	add	w8, w8, #0x1
   10298: b904aa68     	str	w8, [x19, #0x4a8]
   1029c: 17fffff0     	b	0x1025c <tp_ghost_check_work+0x20>
   102a0: 90000000     	adrp	x0, 0x10000 <syna_ts_register_for_panel_events+0x6c>
		00000000000102a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a399
   102a4: 91000000     	add	x0, x0, #0x0
		00000000000102a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a399
   102a8: 94000000     	bl	0x102a8 <tp_ghost_check_work+0x6c>
		00000000000102a8:  R_AARCH64_CALL26	_printk
   102ac: 17ffffec     	b	0x1025c <tp_ghost_check_work+0x20>
   102b0: aa1303e0     	mov	x0, x19
   102b4: b85fc130     	ldur	w16, [x9, #-0x4]
   102b8: 7281af31     	movk	w17, #0xd79
   102bc: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   102c0: 6b11021f     	cmp	w16, w17
   102c4: 54000040     	b.eq	0x102cc <tp_ghost_check_work+0x90>
   102c8: d4304520     	brk	#0x8229
   102cc: d63f0120     	blr	x9
   102d0: b944aa68     	ldr	w8, [x19, #0x4a8]
   102d4: 90000000     	adrp	x0, 0x10000 <syna_ts_register_for_panel_events+0x6c>
		00000000000102d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3a5
   102d8: 91000000     	add	x0, x0, #0x0
		00000000000102d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3a5
   102dc: 11000501     	add	w1, w8, #0x1
   102e0: 94000000     	bl	0x102e0 <tp_ghost_check_work+0xa4>
		00000000000102e0:  R_AARCH64_CALL26	_printk
   102e4: b944aa68     	ldr	w8, [x19, #0x4a8]
   102e8: 17ffffeb     	b	0x10294 <tp_ghost_check_work+0x58>
