
/input/zte_ir.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008e8 <zte_ir_remove>:
     8e8: d503233f     	paciasp
     8ec: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     8f0: f9000bf7     	str	x23, [sp, #0x10]
     8f4: a90257f6     	stp	x22, x21, [sp, #0x20]
     8f8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     8fc: 910003fd     	mov	x29, sp
     900: f9404c13     	ldr	x19, [x0, #0x98]
     904: b40006f3     	cbz	x19, 0x9e0 <zte_ir_remove+0xf8>
     908: 52871515     	mov	w21, #0x38a8            // =14504
     90c: aa0003f4     	mov	x20, x0
     910: 91404e76     	add	x22, x19, #0x13, lsl #12 // =0x13000
     914: 72a00035     	movk	w21, #0x1, lsl #16
     918: 8b150260     	add	x0, x19, x21
     91c: 94000000     	bl	0x91c <zte_ir_remove+0x34>
		000000000000091c:  R_AARCH64_CALL26	mutex_lock
     920: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000920:  R_AARCH64_ADR_PREL_PG_HI21	.data
     924: 91000000     	add	x0, x0, #0x0
		0000000000000924:  R_AARCH64_ADD_ABS_LO12_NC	.data
     928: 94000000     	bl	0x928 <zte_ir_remove+0x40>
		0000000000000928:  R_AARCH64_CALL26	mutex_lock
     92c: 52871417     	mov	w23, #0x38a0            // =14496
     930: 52800028     	mov	w8, #0x1                // =1
     934: 72a00037     	movk	w23, #0x1, lsl #16
     938: 3923b2c8     	strb	w8, [x22, #0x8ec]
     93c: 8b170260     	add	x0, x19, x23
     940: 94000000     	bl	0x940 <zte_ir_remove+0x58>
		0000000000000940:  R_AARCH64_CALL26	_raw_spin_lock_irq
     944: 8b170260     	add	x0, x19, x23
     948: f9044adf     	str	xzr, [x22, #0x890]
     94c: 94000000     	bl	0x94c <zte_ir_remove+0x64>
		000000000000094c:  R_AARCH64_CALL26	_raw_spin_unlock_irq
     950: f94472c8     	ldr	x8, [x22, #0x8e0]
     954: 912362c0     	add	x0, x22, #0x8d8
     958: f9400109     	ldr	x9, [x8]
     95c: eb00013f     	cmp	x9, x0
     960: 540004c1     	b.ne	0x9f8 <zte_ir_remove+0x110>
     964: f9400009     	ldr	x9, [x0]
     968: f940052a     	ldr	x10, [x9, #0x8]
     96c: eb00015f     	cmp	x10, x0
     970: 54000441     	b.ne	0x9f8 <zte_ir_remove+0x110>
     974: f9000528     	str	x8, [x9, #0x8]
     978: f9000109     	str	x9, [x8]
     97c: d2802008     	mov	x8, #0x100              // =256
     980: 52800449     	mov	w9, #0x22               // =34
     984: b9400261     	ldr	w1, [x19]
     988: f2fbd5a8     	movk	x8, #0xdead, lsl #48
     98c: f9046ec8     	str	x8, [x22, #0x8d8]
     990: aa090108     	orr	x8, x8, x9
     994: f90472c8     	str	x8, [x22, #0x8e0]
     998: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000998:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     99c: f9400100     	ldr	x0, [x8]
		000000000000099c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x8
     9a0: 94000000     	bl	0x9a0 <zte_ir_remove+0xb8>
		00000000000009a0:  R_AARCH64_CALL26	device_destroy
     9a4: 14000017     	b	0xa00 <zte_ir_remove+0x118>
     9a8: 52800028     	mov	w8, #0x1                // =1
     9ac: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009ac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     9b0: 91000129     	add	x9, x9, #0x0
		00000000000009b0:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     9b4: f828113f     	stclr	x8, [x9]
     9b8: f9004e9f     	str	xzr, [x20, #0x98]
     9bc: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.data
     9c0: 91000000     	add	x0, x0, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	.data
     9c4: b948ead4     	ldr	w20, [x22, #0x8e8]
     9c8: 94000000     	bl	0x9c8 <zte_ir_remove+0xe0>
		00000000000009c8:  R_AARCH64_CALL26	mutex_unlock
     9cc: 8b150260     	add	x0, x19, x21
     9d0: 94000000     	bl	0x9d0 <zte_ir_remove+0xe8>
		00000000000009d0:  R_AARCH64_CALL26	mutex_unlock
     9d4: 35000074     	cbnz	w20, 0x9e0 <zte_ir_remove+0xf8>
     9d8: aa1303e0     	mov	x0, x19
     9dc: 94000000     	bl	0x9dc <zte_ir_remove+0xf4>
		00000000000009dc:  R_AARCH64_CALL26	kfree
     9e0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     9e4: f9400bf7     	ldr	x23, [sp, #0x10]
     9e8: a94257f6     	ldp	x22, x21, [sp, #0x20]
     9ec: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     9f0: d50323bf     	autiasp
     9f4: d65f03c0     	ret
     9f8: 94000000     	bl	0x9f8 <zte_ir_remove+0x110>
		00000000000009f8:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     9fc: 17ffffe0     	b	0x97c <zte_ir_remove+0x94>
     a00: 52800028     	mov	w8, #0x1                // =1
     a04: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a04:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x18
     a08: 91000129     	add	x9, x9, #0x0
		0000000000000a08:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x18
     a0c: f9800131     	prfm	pstl1strm, [x9]
     a10: c85f7d2a     	ldxr	x10, [x9]
     a14: 8a28014a     	bic	x10, x10, x8
     a18: c80b7d2a     	stxr	w11, x10, [x9]
     a1c: 35ffffab     	cbnz	w11, 0xa10 <zte_ir_remove+0x128>
     a20: 17ffffe6     	b	0x9b8 <zte_ir_remove+0xd0>
