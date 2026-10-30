
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ac4 <get_rotation_limit_level>:
     ac4: d503233f     	paciasp
     ac8: d10143ff     	sub	sp, sp, #0x50
     acc: a9027bfd     	stp	x29, x30, [sp, #0x20]
     ad0: a90357f6     	stp	x22, x21, [sp, #0x30]
     ad4: a9044ff4     	stp	x20, x19, [sp, #0x40]
     ad8: 910083fd     	add	x29, sp, #0x20
     adc: d5384108     	mrs	x8, SP_EL0
     ae0: aa1f03e0     	mov	x0, xzr
     ae4: f9438908     	ldr	x8, [x8, #0x710]
     ae8: f81f83a8     	stur	x8, [x29, #-0x8]
     aec: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     af0: d5384108     	mrs	x8, SP_EL0
     af4: f9400068     	ldr	x8, [x3]
     af8: b4000188     	cbz	x8, 0xb28 <get_rotation_limit_level+0x64>
     afc: d5384108     	mrs	x8, SP_EL0
     b00: f9438908     	ldr	x8, [x8, #0x710]
     b04: f85f83a9     	ldur	x9, [x29, #-0x8]
     b08: eb09011f     	cmp	x8, x9
     b0c: 54000521     	b.ne	0xbb0 <get_rotation_limit_level+0xec>
     b10: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     b14: a94357f6     	ldp	x22, x21, [sp, #0x30]
     b18: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     b1c: 910143ff     	add	sp, sp, #0x50
     b20: d50323bf     	autiasp
     b24: d65f03c0     	ret
     b28: 90000008     	adrp	x8, 0x0 <_inline_copy_from_user>
		0000000000000b28:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     b2c: aa0103f5     	mov	x21, x1
     b30: aa0203f4     	mov	x20, x2
     b34: f9400116     	ldr	x22, [x8]
		0000000000000b34:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     b38: aa0303f3     	mov	x19, x3
     b3c: f94746c8     	ldr	x8, [x22, #0xe88]
     b40: b4000128     	cbz	x8, 0xb64 <get_rotation_limit_level+0xa0>
     b44: aa1603e0     	mov	x0, x22
     b48: b85fc110     	ldur	w16, [x8, #-0x4]
     b4c: 7281af31     	movk	w17, #0xd79
     b50: 72ae7f91     	movk	w17, #0x73fc, lsl #16
     b54: 6b11021f     	cmp	w16, w17
     b58: 54000040     	b.eq	0xb60 <get_rotation_limit_level+0x9c>
     b5c: d4304500     	brk	#0x8228
     b60: d63f0100     	blr	x8
     b64: b9400ec2     	ldr	w2, [x22, #0xc]
     b68: 90000000     	adrp	x0, 0x0 <_inline_copy_from_user>
		0000000000000b68:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
     b6c: 91000000     	add	x0, x0, #0x0
		0000000000000b6c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
     b70: 90000001     	adrp	x1, 0x0 <_inline_copy_from_user>
		0000000000000b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4d5d
     b74: 91000021     	add	x1, x1, #0x0
		0000000000000b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4d5d
     b78: 94000000     	bl	0xb78 <get_rotation_limit_level+0xb4>
		0000000000000b78:  R_AARCH64_CALL26	_printk
     b7c: b9400ec3     	ldr	w3, [x22, #0xc]
     b80: 90000002     	adrp	x2, 0x0 <_inline_copy_from_user>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x499d
     b84: 91000042     	add	x2, x2, #0x0
		0000000000000b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x499d
     b88: 910023e0     	add	x0, sp, #0x8
     b8c: 52800141     	mov	w1, #0xa                // =10
     b90: 94000000     	bl	0xb90 <get_rotation_limit_level+0xcc>
		0000000000000b90:  R_AARCH64_CALL26	snprintf
     b94: 93407c04     	sxtw	x4, w0
     b98: 910023e3     	add	x3, sp, #0x8
     b9c: aa1403e1     	mov	x1, x20
     ba0: aa1503e0     	mov	x0, x21
     ba4: aa1303e2     	mov	x2, x19
     ba8: 94000000     	bl	0xba8 <get_rotation_limit_level+0xe4>
		0000000000000ba8:  R_AARCH64_CALL26	simple_read_from_buffer
     bac: 17ffffd4     	b	0xafc <get_rotation_limit_level+0x38>
     bb0: 94000000     	bl	0xbb0 <get_rotation_limit_level+0xec>
		0000000000000bb0:  R_AARCH64_CALL26	__stack_chk_fail
