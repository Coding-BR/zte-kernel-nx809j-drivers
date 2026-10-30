
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000007e8 <zte_ir_remove>:
     7e8: d503233f     	paciasp
     7ec: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     7f0: f9000bf5     	str	x21, [sp, #0x10]
     7f4: a9024ff4     	stp	x20, x19, [sp, #0x20]
     7f8: 910003fd     	mov	x29, sp
     7fc: 52871415     	mov	w21, #0x38a0            // =14496
     800: f9404c13     	ldr	x19, [x0, #0x98]
     804: 72a00035     	movk	w21, #0x1, lsl #16
     808: 8b150260     	add	x0, x19, x21
     80c: 91404e74     	add	x20, x19, #0x13, lsl #12 // =0x13000
     810: 94000000     	bl	0x810 <zte_ir_remove+0x28>
		0000000000000810:  R_AARCH64_CALL26	_raw_spin_lock_irq
     814: 8b150260     	add	x0, x19, x21
     818: f9044a9f     	str	xzr, [x20, #0x890]
     81c: 94000000     	bl	0x81c <zte_ir_remove+0x34>
		000000000000081c:  R_AARCH64_CALL26	_raw_spin_unlock_irq
     820: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000820:  R_AARCH64_ADR_PREL_PG_HI21	.data
     824: 91000000     	add	x0, x0, #0x0
		0000000000000824:  R_AARCH64_ADD_ABS_LO12_NC	.data
     828: 94000000     	bl	0x828 <zte_ir_remove+0x40>
		0000000000000828:  R_AARCH64_CALL26	mutex_lock
     82c: f9447288     	ldr	x8, [x20, #0x8e0]
     830: 91404e69     	add	x9, x19, #0x13, lsl #12 // =0x13000
     834: 91236120     	add	x0, x9, #0x8d8
     838: f940010a     	ldr	x10, [x8]
     83c: eb00015f     	cmp	x10, x0
     840: 54000481     	b.ne	0x8d0 <zte_ir_remove+0xe8>
     844: f9400009     	ldr	x9, [x0]
     848: f940052a     	ldr	x10, [x9, #0x8]
     84c: eb00015f     	cmp	x10, x0
     850: 54000401     	b.ne	0x8d0 <zte_ir_remove+0xe8>
     854: f9000528     	str	x8, [x9, #0x8]
     858: f9000109     	str	x9, [x8]
     85c: d2802008     	mov	x8, #0x100              // =256
     860: 52800449     	mov	w9, #0x22               // =34
     864: b9400261     	ldr	w1, [x19]
     868: f2fbd5a8     	movk	x8, #0xdead, lsl #48
     86c: f9046e88     	str	x8, [x20, #0x8d8]
     870: aa090108     	orr	x8, x8, x9
     874: f9047288     	str	x8, [x20, #0x8e0]
     878: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000878:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     87c: f9400100     	ldr	x0, [x8]
		000000000000087c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     880: 94000000     	bl	0x880 <zte_ir_remove+0x98>
		0000000000000880:  R_AARCH64_CALL26	device_destroy
     884: b9400268     	ldr	w8, [x19]
     888: 5280002a     	mov	w10, #0x1               // =1
     88c: d3464d09     	ubfx	x9, x8, #6, #14
     890: 9ac82148     	lsl	x8, x10, x8
     894: 14000011     	b	0x8d8 <zte_ir_remove+0xf0>
     898: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000898:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     89c: 9100014a     	add	x10, x10, #0x0
		000000000000089c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     8a0: 8b090d49     	add	x9, x10, x9, lsl #3
     8a4: f828113f     	stclr	x8, [x9]
     8a8: aa1303e0     	mov	x0, x19
     8ac: 94000000     	bl	0x8ac <zte_ir_remove+0xc4>
		00000000000008ac:  R_AARCH64_CALL26	kfree
     8b0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008b0:  R_AARCH64_ADR_PREL_PG_HI21	.data
     8b4: 91000000     	add	x0, x0, #0x0
		00000000000008b4:  R_AARCH64_ADD_ABS_LO12_NC	.data
     8b8: 94000000     	bl	0x8b8 <zte_ir_remove+0xd0>
		00000000000008b8:  R_AARCH64_CALL26	mutex_unlock
     8bc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     8c0: f9400bf5     	ldr	x21, [sp, #0x10]
     8c4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     8c8: d50323bf     	autiasp
     8cc: d65f03c0     	ret
     8d0: 94000000     	bl	0x8d0 <zte_ir_remove+0xe8>
		00000000000008d0:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     8d4: 17ffffe2     	b	0x85c <zte_ir_remove+0x74>
     8d8: 9000000a     	adrp	x10, 0x0 <.text>
		00000000000008d8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     8dc: 9100014a     	add	x10, x10, #0x0
		00000000000008dc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     8e0: 8b090d49     	add	x9, x10, x9, lsl #3
     8e4: f9800131     	prfm	pstl1strm, [x9]
     8e8: c85f7d2a     	ldxr	x10, [x9]
     8ec: 8a28014a     	bic	x10, x10, x8
     8f0: c80b7d2a     	stxr	w11, x10, [x9]
     8f4: 35ffffab     	cbnz	w11, 0x8e8 <zte_ir_remove+0x100>
     8f8: 17ffffec     	b	0x8a8 <zte_ir_remove+0xc0>
