
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e08 <tp_ghost_check_work>:
    1e08: d503233f     	paciasp
    1e0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1e10: f9000bf3     	str	x19, [sp, #0x10]
    1e14: 910003fd     	mov	x29, sp
    1e18: 90000008     	adrp	x8, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001e18:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1e1c: f9400113     	ldr	x19, [x8]
		0000000000001e1c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1e20: 94000000     	bl	0x1e20 <tp_ghost_check_work+0x18>
		0000000000001e20:  R_AARCH64_CALL26	tp_ghost_check
    1e24: 370000e0     	tbnz	w0, #0x0, 0x1e40 <tp_ghost_check_work+0x38>
    1e28: 94000000     	bl	0x1e28 <tp_ghost_check_work+0x20>
		0000000000001e28:  R_AARCH64_CALL26	ghost_check_reset
    1e2c: 3912227f     	strb	wzr, [x19, #0x488]
    1e30: f9400bf3     	ldr	x19, [sp, #0x10]
    1e34: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1e38: d50323bf     	autiasp
    1e3c: d65f03c0     	ret
    1e40: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa4c3
    1e44: 91000000     	add	x0, x0, #0x0
		0000000000001e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa4c3
    1e48: 94000000     	bl	0x1e48 <tp_ghost_check_work+0x40>
		0000000000001e48:  R_AARCH64_CALL26	_printk
    1e4c: b944aa68     	ldr	w8, [x19, #0x4a8]
    1e50: 7100091f     	cmp	w8, #0x2
    1e54: 540000cc     	b.gt	0x1e6c <tp_ghost_check_work+0x64>
    1e58: f947fa69     	ldr	x9, [x19, #0xff0]
    1e5c: b5000109     	cbnz	x9, 0x1e7c <tp_ghost_check_work+0x74>
    1e60: 11000508     	add	w8, w8, #0x1
    1e64: b904aa68     	str	w8, [x19, #0x4a8]
    1e68: 17fffff0     	b	0x1e28 <tp_ghost_check_work+0x20>
    1e6c: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5548
    1e70: 91000000     	add	x0, x0, #0x0
		0000000000001e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5548
    1e74: 94000000     	bl	0x1e74 <tp_ghost_check_work+0x6c>
		0000000000001e74:  R_AARCH64_CALL26	_printk
    1e78: 17ffffec     	b	0x1e28 <tp_ghost_check_work+0x20>
    1e7c: aa1303e0     	mov	x0, x19
    1e80: b85fc130     	ldur	w16, [x9, #-0x4]
    1e84: 7281af31     	movk	w17, #0xd79
    1e88: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    1e8c: 6b11021f     	cmp	w16, w17
    1e90: 54000040     	b.eq	0x1e98 <tp_ghost_check_work+0x90>
    1e94: d4304520     	brk	#0x8229
    1e98: d63f0120     	blr	x9
    1e9c: b944aa68     	ldr	w8, [x19, #0x4a8]
    1ea0: 90000000     	adrp	x0, 0x1000 <zlog_register_work_deinit+0x14>
		0000000000001ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7365
    1ea4: 91000000     	add	x0, x0, #0x0
		0000000000001ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7365
    1ea8: 11000501     	add	w1, w8, #0x1
    1eac: 94000000     	bl	0x1eac <tp_ghost_check_work+0xa4>
		0000000000001eac:  R_AARCH64_CALL26	_printk
    1eb0: b944aa68     	ldr	w8, [x19, #0x4a8]
    1eb4: 17ffffeb     	b	0x1e60 <tp_ghost_check_work+0x58>
