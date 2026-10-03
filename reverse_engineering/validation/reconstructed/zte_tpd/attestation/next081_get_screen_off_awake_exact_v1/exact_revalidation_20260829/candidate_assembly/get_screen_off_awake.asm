
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016c94 <get_screen_off_awake>:
   16c94: d503233f     	paciasp
   16c98: d10143ff     	sub	sp, sp, #0x50
   16c9c: a9027bfd     	stp	x29, x30, [sp, #0x20]
   16ca0: a90357f6     	stp	x22, x21, [sp, #0x30]
   16ca4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   16ca8: 910083fd     	add	x29, sp, #0x20
   16cac: d5384108     	mrs	x8, SP_EL0
   16cb0: aa1f03e0     	mov	x0, xzr
   16cb4: f9438908     	ldr	x8, [x8, #0x710]
   16cb8: f81f83a8     	stur	x8, [x29, #-0x8]
   16cbc: f9400068     	ldr	x8, [x3]
   16cc0: 790023ff     	strh	wzr, [sp, #0x10]
   16cc4: f90007ff     	str	xzr, [sp, #0x8]
   16cc8: b4000188     	cbz	x8, 0x16cf8 <get_screen_off_awake+0x64>
   16ccc: d5384108     	mrs	x8, SP_EL0
   16cd0: f9438908     	ldr	x8, [x8, #0x710]
   16cd4: f85f83a9     	ldur	x9, [x29, #-0x8]
   16cd8: eb09011f     	cmp	x8, x9
   16cdc: 54000521     	b.ne	0x16d80 <get_screen_off_awake+0xec>
   16ce0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   16ce4: a94357f6     	ldp	x22, x21, [sp, #0x30]
   16ce8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
   16cec: 910143ff     	add	sp, sp, #0x50
   16cf0: d50323bf     	autiasp
   16cf4: d65f03c0     	ret
   16cf8: 90000008     	adrp	x8, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016cf8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   16cfc: aa0103f5     	mov	x21, x1
   16d00: aa0203f4     	mov	x20, x2
   16d04: f9400116     	ldr	x22, [x8]
		0000000000016d04:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   16d08: aa0303f3     	mov	x19, x3
   16d0c: f947eec8     	ldr	x8, [x22, #0xfd8]
   16d10: b4000128     	cbz	x8, 0x16d34 <get_screen_off_awake+0xa0>
   16d14: aa1603e0     	mov	x0, x22
   16d18: b85fc110     	ldur	w16, [x8, #-0x4]
   16d1c: 7281af31     	movk	w17, #0xd79
   16d20: 72ae7f91     	movk	w17, #0x73fc, lsl #16
   16d24: 6b11021f     	cmp	w16, w17
   16d28: 54000040     	b.eq	0x16d30 <get_screen_off_awake+0x9c>
   16d2c: d4304500     	brk	#0x8228
   16d30: d63f0100     	blr	x8
   16d34: b94486c2     	ldr	w2, [x22, #0x484]
   16d38: 90000000     	adrp	x0, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9144
   16d3c: 91000000     	add	x0, x0, #0x0
		0000000000016d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9144
   16d40: 90000001     	adrp	x1, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b3c
   16d44: 91000021     	add	x1, x1, #0x0
		0000000000016d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b3c
   16d48: 94000000     	bl	0x16d48 <get_screen_off_awake+0xb4>
		0000000000016d48:  R_AARCH64_CALL26	_printk
   16d4c: b94486c3     	ldr	w3, [x22, #0x484]
   16d50: 90000002     	adrp	x2, 0x16000 <tp_sensibility_level_read+0xd8>
		0000000000016d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x81d4
   16d54: 91000042     	add	x2, x2, #0x0
		0000000000016d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x81d4
   16d58: 910023e0     	add	x0, sp, #0x8
   16d5c: 52800141     	mov	w1, #0xa                // =10
   16d60: 94000000     	bl	0x16d60 <get_screen_off_awake+0xcc>
		0000000000016d60:  R_AARCH64_CALL26	snprintf
   16d64: 93407c04     	sxtw	x4, w0
   16d68: 910023e3     	add	x3, sp, #0x8
   16d6c: aa1403e1     	mov	x1, x20
   16d70: aa1503e0     	mov	x0, x21
   16d74: aa1303e2     	mov	x2, x19
   16d78: 94000000     	bl	0x16d78 <get_screen_off_awake+0xe4>
		0000000000016d78:  R_AARCH64_CALL26	simple_read_from_buffer
   16d7c: 17ffffd4     	b	0x16ccc <get_screen_off_awake+0x38>
   16d80: 94000000     	bl	0x16d80 <get_screen_off_awake+0xec>
		0000000000016d80:  R_AARCH64_CALL26	__stack_chk_fail
