
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003a24 <suspend_store>:
    3a24: d503233f     	paciasp
    3a28: d100c3ff     	sub	sp, sp, #0x30
    3a2c: a9017bfd     	stp	x29, x30, [sp, #0x10]
    3a30: a9024ff4     	stp	x20, x19, [sp, #0x20]
    3a34: 910043fd     	add	x29, sp, #0x10
    3a38: d5384108     	mrs	x8, SP_EL0
    3a3c: aa0203f3     	mov	x19, x2
    3a40: aa0103e0     	mov	x0, x1
    3a44: f9438908     	ldr	x8, [x8, #0x710]
    3a48: 910013e3     	add	x3, sp, #0x4
    3a4c: aa0203e1     	mov	x1, x2
    3a50: 52800142     	mov	w2, #0xa                // =10
    3a54: f90007e8     	str	x8, [sp, #0x8]
    3a58: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003a58:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3a5c: f9400114     	ldr	x20, [x8]
		0000000000003a5c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3a60: b90007ff     	str	wzr, [sp, #0x4]
    3a64: 94000000     	bl	0x3a64 <suspend_store+0x40>
		0000000000003a64:  R_AARCH64_CALL26	kstrtouint_from_user
    3a68: 340001a0     	cbz	w0, 0x3a9c <suspend_store+0x78>
    3a6c: 928002b3     	mov	x19, #-0x16             // =-22
    3a70: d5384108     	mrs	x8, SP_EL0
    3a74: f9438908     	ldr	x8, [x8, #0x710]
    3a78: f94007e9     	ldr	x9, [sp, #0x8]
    3a7c: eb09011f     	cmp	x8, x9
    3a80: 540005a1     	b.ne	0x3b34 <suspend_store+0x110>
    3a84: aa1303e0     	mov	x0, x19
    3a88: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    3a8c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    3a90: 9100c3ff     	add	sp, sp, #0x30
    3a94: d50323bf     	autiasp
    3a98: d65f03c0     	ret
    3a9c: b94007e8     	ldr	w8, [sp, #0x4]
    3aa0: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003aa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11e6
    3aa4: 91000000     	add	x0, x0, #0x0
		0000000000003aa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11e6
    3aa8: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8
    3aac: 91000021     	add	x1, x1, #0x0
		0000000000003aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8
    3ab0: 7100011f     	cmp	w8, #0x0
    3ab4: 1a9f07e2     	cset	w2, ne
    3ab8: b90007e2     	str	w2, [sp, #0x4]
    3abc: 94000000     	bl	0x3abc <suspend_store+0x98>
		0000000000003abc:  R_AARCH64_CALL26	_printk
    3ac0: 91318280     	add	x0, x20, #0xc60
    3ac4: 94000000     	bl	0x3ac4 <suspend_store+0xa0>
		0000000000003ac4:  R_AARCH64_CALL26	mutex_lock
    3ac8: 39405a88     	ldrb	w8, [x20, #0x16]
    3acc: b94007e2     	ldr	w2, [sp, #0x4]
    3ad0: 6b08005f     	cmp	w2, w8
    3ad4: 54000240     	b.eq	0x3b1c <suspend_store+0xf8>
    3ad8: 7100005f     	cmp	w2, #0x0
    3adc: f9473288     	ldr	x8, [x20, #0xe60]
    3ae0: 1a9f07e9     	cset	w9, ne
    3ae4: 39005a89     	strb	w9, [x20, #0x16]
    3ae8: b4000148     	cbz	x8, 0x3b10 <suspend_store+0xec>
    3aec: aa1403e0     	mov	x0, x20
    3af0: 2a1f03e1     	mov	w1, wzr
    3af4: b85fc110     	ldur	w16, [x8, #-0x4]
    3af8: 72969211     	movk	w17, #0xb490
    3afc: 72a71ab1     	movk	w17, #0x38d5, lsl #16
    3b00: 6b11021f     	cmp	w16, w17
    3b04: 54000040     	b.eq	0x3b0c <suspend_store+0xe8>
    3b08: d4304500     	brk	#0x8228
    3b0c: d63f0100     	blr	x8
    3b10: 91318280     	add	x0, x20, #0xc60
    3b14: 94000000     	bl	0x3b14 <suspend_store+0xf0>
		0000000000003b14:  R_AARCH64_CALL26	mutex_unlock
    3b18: 17ffffd6     	b	0x3a70 <suspend_store+0x4c>
    3b1c: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb946
    3b20: 91000000     	add	x0, x0, #0x0
		0000000000003b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb946
    3b24: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8
    3b28: 91000021     	add	x1, x1, #0x0
		0000000000003b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8
    3b2c: 94000000     	bl	0x3b2c <suspend_store+0x108>
		0000000000003b2c:  R_AARCH64_CALL26	_printk
    3b30: 17fffff8     	b	0x3b10 <suspend_store+0xec>
    3b34: 94000000     	bl	0x3b34 <suspend_store+0x110>
		0000000000003b34:  R_AARCH64_CALL26	__stack_chk_fail
