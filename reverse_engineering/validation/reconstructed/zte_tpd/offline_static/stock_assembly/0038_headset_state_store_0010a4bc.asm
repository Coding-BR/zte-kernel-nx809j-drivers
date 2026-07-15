
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003c34 <headset_state_store>:
    3c34: d503233f     	paciasp
    3c38: d10143ff     	sub	sp, sp, #0x50
    3c3c: a9027bfd     	stp	x29, x30, [sp, #0x20]
    3c40: f9001bf5     	str	x21, [sp, #0x30]
    3c44: a9044ff4     	stp	x20, x19, [sp, #0x40]
    3c48: 910083fd     	add	x29, sp, #0x20
    3c4c: d5384108     	mrs	x8, SP_EL0
    3c50: aa0103f5     	mov	x21, x1
    3c54: 910023e0     	add	x0, sp, #0x8
    3c58: f9438908     	ldr	x8, [x8, #0x710]
    3c5c: f100245f     	cmp	x2, #0x9
    3c60: f81f83a8     	stur	x8, [x29, #-0x8]
    3c64: 90000008     	adrp	x8, 0x3000 <tp_module_info_read+0x104>
		0000000000003c64:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    3c68: f9400114     	ldr	x20, [x8]
		0000000000003c68:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    3c6c: 52800128     	mov	w8, #0x9                // =9
    3c70: b90007ff     	str	wzr, [sp, #0x4]
    3c74: 9a883053     	csel	x19, x2, x8, lo
    3c78: 2a1f03e2     	mov	w2, wzr
    3c7c: 790023ff     	strh	wzr, [sp, #0x10]
    3c80: aa1303e1     	mov	x1, x19
    3c84: f90007ff     	str	xzr, [sp, #0x8]
    3c88: 94000000     	bl	0x3c88 <headset_state_store+0x54>
		0000000000003c88:  R_AARCH64_CALL26	__check_object_size
    3c8c: 910023e0     	add	x0, sp, #0x8
    3c90: aa1503e1     	mov	x1, x21
    3c94: aa1303e2     	mov	x2, x19
    3c98: 9400002a     	bl	0x3d40 <_inline_copy_from_user>
    3c9c: 350000c0     	cbnz	w0, 0x3cb4 <headset_state_store+0x80>
    3ca0: 910023e0     	add	x0, sp, #0x8
    3ca4: 910013e2     	add	x2, sp, #0x4
    3ca8: 2a1f03e1     	mov	w1, wzr
    3cac: 94000000     	bl	0x3cac <headset_state_store+0x78>
		0000000000003cac:  R_AARCH64_CALL26	kstrtouint
    3cb0: 340001c0     	cbz	w0, 0x3ce8 <headset_state_store+0xb4>
    3cb4: 928002b3     	mov	x19, #-0x16             // =-22
    3cb8: d5384108     	mrs	x8, SP_EL0
    3cbc: f9438908     	ldr	x8, [x8, #0x710]
    3cc0: f85f83a9     	ldur	x9, [x29, #-0x8]
    3cc4: eb09011f     	cmp	x8, x9
    3cc8: 540003a1     	b.ne	0x3d3c <headset_state_store+0x108>
    3ccc: aa1303e0     	mov	x0, x19
    3cd0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    3cd4: f9401bf5     	ldr	x21, [sp, #0x30]
    3cd8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    3cdc: 910143ff     	add	sp, sp, #0x50
    3ce0: d50323bf     	autiasp
    3ce4: d65f03c0     	ret
    3ce8: b94007e8     	ldr	w8, [sp, #0x4]
    3cec: 90000000     	adrp	x0, 0x3000 <tp_module_info_read+0x104>
		0000000000003cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x645
    3cf0: 91000000     	add	x0, x0, #0x0
		0000000000003cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x645
    3cf4: 90000001     	adrp	x1, 0x3000 <tp_module_info_read+0x104>
		0000000000003cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7425
    3cf8: 91000021     	add	x1, x1, #0x0
		0000000000003cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7425
    3cfc: 7100011f     	cmp	w8, #0x0
    3d00: 1a9f07e2     	cset	w2, ne
    3d04: b90007e2     	str	w2, [sp, #0x4]
    3d08: 94000000     	bl	0x3d08 <headset_state_store+0xd4>
		0000000000003d08:  R_AARCH64_CALL26	_printk
    3d0c: f9473a88     	ldr	x8, [x20, #0xe70]
    3d10: b4fffd48     	cbz	x8, 0x3cb8 <headset_state_store+0x84>
    3d14: b94007e1     	ldr	w1, [sp, #0x4]
    3d18: aa1403e0     	mov	x0, x20
    3d1c: b85fc110     	ldur	w16, [x8, #-0x4]
    3d20: 72969331     	movk	w17, #0xb499
    3d24: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    3d28: 6b11021f     	cmp	w16, w17
    3d2c: 54000040     	b.eq	0x3d34 <headset_state_store+0x100>
    3d30: d4304500     	brk	#0x8228
    3d34: d63f0100     	blr	x8
    3d38: 17ffffe0     	b	0x3cb8 <headset_state_store+0x84>
    3d3c: 94000000     	bl	0x3d3c <headset_state_store+0x108>
		0000000000003d3c:  R_AARCH64_CALL26	__stack_chk_fail
