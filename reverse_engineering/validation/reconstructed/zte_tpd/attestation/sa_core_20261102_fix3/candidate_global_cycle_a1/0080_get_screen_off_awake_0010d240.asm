
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016cf0 <get_screen_off_awake>:
   16cf0: d503233f     	paciasp
   16cf4: d10143ff     	sub	sp, sp, #0x50
   16cf8: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16cfc: a90357f6     	stp	x22, x21, [sp, #0x30]
   16d00: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16d04: 910083fd     	add	x29, sp, #0x20
   16d08: d5384108     	mrs	x8, SP_EL0
   16d0c: aa1f03e0     	mov	x0, xzr
   16d10: f9438908     	ldr	x8, [x8, #0x710]
   16d14: f81f83a8     	stur	x8, [x29, #-0x8]
   16d18: f9400068     	ldr	x8, [x3]
   16d1c: 790023ff     	strh	wzr, [sp, #0x10]
   16d20: f90007ff     	str	xzr, [sp, #0x8]
   16d24: b4000188     	cbz	x8, 0x16d54 <get_screen_off_awake+0x64>
   16d28: d5384108     	mrs	x8, SP_EL0
   16d2c: f9438908     	ldr	x8, [x8, #0x710]
   16d30: f85f83a9     	ldur	x9, [x29, #-0x8]
   16d34: eb09011f     	cmp	x8, x9
   16d38: 54000521     	b.ne	0x16ddc <get_screen_off_awake+0xec>
   16d3c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16d40: a94357f6     	ldp	x22, x21, [sp, #0x30]
   16d44: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16d48: 910143ff     	add	sp, sp, #0x50
   16d4c: d50323bf     	autiasp
   16d50: d65f03c0     	ret
   16d54: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016d54:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16d58: aa0103f5     	mov	x21, x1
   16d5c: aa0203f4     	mov	x20, x2
   16d60: f9400116     	ldr	x22, [x8]
		0000000000016d60:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16d64: aa0303f3     	mov	x19, x3
   16d68: f947eec8     	ldr	x8, [x22, #0xfd8]
   16d6c: b4000128     	cbz	x8, 0x16d90 <get_screen_off_awake+0xa0>
   16d70: aa1603e0     	mov	x0, x22
   16d74: b85fc110     	ldur	w16, [x8, #-0x4]
   16d78: 7281af31     	movk	w17, #0xd79
   16d7c: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   16d80: 6b11021f     	cmp	w16, w17
   16d84: 54000040     	b.eq	0x16d8c <get_screen_off_awake+0x9c>
   16d88: d4304500     	brk	#0x8228
   16d8c: d63f0100     	blr	x8
   16d90: b94486c2     	ldr	w2, [x22, #0x484]
   16d94: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   16d98: 91000000     	add	x0, x0, #0x0
		0000000000016d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   16d9c: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b3c
   16da0: 91000021     	add	x1, x1, #0x0
		0000000000016da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b3c
   16da4: 94000000     	bl	0x16da4 <get_screen_off_awake+0xb4>
		0000000000016da4:  R_AARCH64_CALL26	_printk
   16da8: b94486c3     	ldr	w3, [x22, #0x484]
   16dac: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0x7c>
		0000000000016dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   16db0: 91000042     	add	x2, x2, #0x0
		0000000000016db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   16db4: 910023e0     	add	x0, sp, #0x8
   16db8: 52800141     	mov	w1, #0xa                // =10
   16dbc: 94000000     	bl	0x16dbc <get_screen_off_awake+0xcc>
		0000000000016dbc:  R_AARCH64_CALL26	snprintf
   16dc0: 93407c04     	sxtw	x4, w0
   16dc4: 910023e3     	add	x3, sp, #0x8
   16dc8: aa1403e1     	mov	x1, x20
   16dcc: aa1503e0     	mov	x0, x21
   16dd0: aa1303e2     	mov	x2, x19
   16dd4: 94000000     	bl	0x16dd4 <get_screen_off_awake+0xe4>
		0000000000016dd4:  R_AARCH64_CALL26	simple_read_from_buffer
   16dd8: 17ffffd4     	b	0x16d28 <get_screen_off_awake+0x38>
   16ddc: 94000000     	bl	0x16ddc <get_screen_off_awake+0xec>
		0000000000016ddc:  R_AARCH64_CALL26	__stack_chk_fail
