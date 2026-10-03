
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ae0 <headset_state_store>:
    1ae0: d503233f     	paciasp
    1ae4: d10143ff     	sub	sp, sp, #0x50
    1ae8: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1aec: f9001bf5     	str	x21, [sp, #0x30]
    1af0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1af4: 910083fd     	add	x29, sp, #0x20
    1af8: d5384108     	mrs	x8, SP_EL0
    1afc: aa0103f5     	mov	x21, x1
    1b00: 910023e0     	add	x0, sp, #0x8
    1b04: f9438908     	ldr	x8, [x8, #0x710]
    1b08: f100245f     	cmp	x2, #0x9
    1b0c: f81f83a8     	stur	x8, [x29, #-0x8]
    1b10: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001b10:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1b14: f9400114     	ldr	x20, [x8]
		0000000000001b14:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1b18: 52800128     	mov	w8, #0x9                // =9
    1b1c: 790023ff     	strh	wzr, [sp, #0x10]
    1b20: 9a88b053     	csel	x19, x2, x8, lt
    1b24: 2a1f03e2     	mov	w2, wzr
    1b28: f90007ff     	str	xzr, [sp, #0x8]
    1b2c: aa1303e1     	mov	x1, x19
    1b30: b81f43bf     	stur	wzr, [x29, #-0xc]
    1b34: 94000000     	bl	0x1b34 <headset_state_store+0x54>
		0000000000001b34:  R_AARCH64_CALL26	__check_object_size
    1b38: 910023e0     	add	x0, sp, #0x8
    1b3c: aa1503e1     	mov	x1, x21
    1b40: aa1303e2     	mov	x2, x19
    1b44: 94000000     	bl	0x1b44 <headset_state_store+0x64>
		0000000000001b44:  R_AARCH64_CALL26	_inline_copy_from_user
    1b48: b50000c0     	cbnz	x0, 0x1b60 <headset_state_store+0x80>
    1b4c: 910023e0     	add	x0, sp, #0x8
    1b50: d10033a2     	sub	x2, x29, #0xc
    1b54: 2a1f03e1     	mov	w1, wzr
    1b58: 94000000     	bl	0x1b58 <headset_state_store+0x78>
		0000000000001b58:  R_AARCH64_CALL26	kstrtouint
    1b5c: 340001c0     	cbz	w0, 0x1b94 <headset_state_store+0xb4>
    1b60: 928002b3     	mov	x19, #-0x16             // =-22
    1b64: d5384108     	mrs	x8, SP_EL0
    1b68: f9438908     	ldr	x8, [x8, #0x710]
    1b6c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1b70: eb09011f     	cmp	x8, x9
    1b74: 540003a1     	b.ne	0x1be8 <headset_state_store+0x108>
    1b78: aa1303e0     	mov	x0, x19
    1b7c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1b80: f9401bf5     	ldr	x21, [sp, #0x30]
    1b84: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1b88: 910143ff     	add	sp, sp, #0x50
    1b8c: d50323bf     	autiasp
    1b90: d65f03c0     	ret
    1b94: b85f43a8     	ldur	w8, [x29, #-0xc]
    1b98: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001b98:  R_AARCH64_ADR_PREL_PG_HI21	unk_31DA7
    1b9c: 91000000     	add	x0, x0, #0x0
		0000000000001b9c:  R_AARCH64_ADD_ABS_LO12_NC	unk_31DA7
    1ba0: 90000001     	adrp	x1, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4260
    1ba4: 91000021     	add	x1, x1, #0x0
		0000000000001ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4260
    1ba8: 7100011f     	cmp	w8, #0x0
    1bac: 1a9f07e2     	cset	w2, ne
    1bb0: b81f43a2     	stur	w2, [x29, #-0xc]
    1bb4: 94000000     	bl	0x1bb4 <headset_state_store+0xd4>
		0000000000001bb4:  R_AARCH64_CALL26	_printk
    1bb8: f9473a88     	ldr	x8, [x20, #0xe70]
    1bbc: b4fffd48     	cbz	x8, 0x1b64 <headset_state_store+0x84>
    1bc0: b85f43a1     	ldur	w1, [x29, #-0xc]
    1bc4: aa1403e0     	mov	x0, x20
    1bc8: b85fc110     	ldur	w16, [x8, #-0x4]
    1bcc: 72969331     	movk	w17, #0xb499
    1bd0: 72ad5f11     	movk	w17, #0x6af8, lsl #16
    1bd4: 6b11021f     	cmp	w16, w17
    1bd8: 54000040     	b.eq	0x1be0 <headset_state_store+0x100>
    1bdc: d4304500     	brk	#0x8228
    1be0: d63f0100     	blr	x8
    1be4: 17ffffe0     	b	0x1b64 <headset_state_store+0x84>
    1be8: 94000000     	bl	0x1be8 <headset_state_store+0x108>
		0000000000001be8:  R_AARCH64_CALL26	__stack_chk_fail
