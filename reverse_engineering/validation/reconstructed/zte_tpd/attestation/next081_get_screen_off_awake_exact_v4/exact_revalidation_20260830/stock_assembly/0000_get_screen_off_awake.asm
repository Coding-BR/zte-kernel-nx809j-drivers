
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000069b8 <get_screen_off_awake>:
    69b8: d503233f     	paciasp
    69bc: d10143ff     	sub	sp, sp, #0x50
    69c0: a9027bfd     	stp	x29, x30, [sp, #0x20]
    69c4: a90357f6     	stp	x22, x21, [sp, #0x30]
    69c8: a9044ff4     	stp	x20, x19, [sp, #0x40]
    69cc: 910083fd     	add	x29, sp, #0x20
    69d0: d5384108     	mrs	x8, SP_EL0
    69d4: aa1f03e0     	mov	x0, xzr
    69d8: f9438908     	ldr	x8, [x8, #0x710]
    69dc: f81f83a8     	stur	x8, [x29, #-0x8]
    69e0: f9400068     	ldr	x8, [x3]
    69e4: 790023ff     	strh	wzr, [sp, #0x10]
    69e8: f90007ff     	str	xzr, [sp, #0x8]
    69ec: b4000188     	cbz	x8, 0x6a1c <get_screen_off_awake+0x64>
    69f0: d5384108     	mrs	x8, SP_EL0
    69f4: f9438908     	ldr	x8, [x8, #0x710]
    69f8: f85f83a9     	ldur	x9, [x29, #-0x8]
    69fc: eb09011f     	cmp	x8, x9
    6a00: 54000521     	b.ne	0x6aa4 <get_screen_off_awake+0xec>
    6a04: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6a08: a94357f6     	ldp	x22, x21, [sp, #0x30]
    6a0c: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    6a10: 910143ff     	add	sp, sp, #0x50
    6a14: d50323bf     	autiasp
    6a18: d65f03c0     	ret
    6a1c: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006a1c:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6a20: aa0103f5     	mov	x21, x1
    6a24: aa0203f4     	mov	x20, x2
    6a28: f9400116     	ldr	x22, [x8]
		0000000000006a28:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6a2c: aa0303f3     	mov	x19, x3
    6a30: f947eec8     	ldr	x8, [x22, #0xfd8]
    6a34: b4000128     	cbz	x8, 0x6a58 <get_screen_off_awake+0xa0>
    6a38: aa1603e0     	mov	x0, x22
    6a3c: b85fc110     	ldur	w16, [x8, #-0x4]
    6a40: 7281af31     	movk	w17, #0xd79
    6a44: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    6a48: 6b11021f     	cmp	w16, w17
    6a4c: 54000040     	b.eq	0x6a54 <get_screen_off_awake+0x9c>
    6a50: d4304500     	brk	#0x8228
    6a54: d63f0100     	blr	x8
    6a58: b94486c2     	ldr	w2, [x22, #0x484]
    6a5c: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8efe
    6a60: 91000000     	add	x0, x0, #0x0
		0000000000006a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8efe
    6a64: 90000001     	adrp	x1, 0x6000 <tp_pen_only_write+0x70>
		0000000000006a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4a2e
    6a68: 91000021     	add	x1, x1, #0x0
		0000000000006a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4a2e
    6a6c: 94000000     	bl	0x6a6c <get_screen_off_awake+0xb4>
		0000000000006a6c:  R_AARCH64_CALL26	_printk
    6a70: b94486c3     	ldr	w3, [x22, #0x484]
    6a74: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fca
    6a78: 91000042     	add	x2, x2, #0x0
		0000000000006a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fca
    6a7c: 910023e0     	add	x0, sp, #0x8
    6a80: 52800141     	mov	w1, #0xa                // =10
    6a84: 94000000     	bl	0x6a84 <get_screen_off_awake+0xcc>
		0000000000006a84:  R_AARCH64_CALL26	snprintf
    6a88: 93407c04     	sxtw	x4, w0
    6a8c: 910023e3     	add	x3, sp, #0x8
    6a90: aa1403e1     	mov	x1, x20
    6a94: aa1503e0     	mov	x0, x21
    6a98: aa1303e2     	mov	x2, x19
    6a9c: 94000000     	bl	0x6a9c <get_screen_off_awake+0xe4>
		0000000000006a9c:  R_AARCH64_CALL26	simple_read_from_buffer
    6aa0: 17ffffd4     	b	0x69f0 <get_screen_off_awake+0x38>
    6aa4: 94000000     	bl	0x6aa4 <get_screen_off_awake+0xec>
		0000000000006aa4:  R_AARCH64_CALL26	__stack_chk_fail
