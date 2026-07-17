
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e9c <headset_state_store>:
    1e9c: d503233f     	paciasp
    1ea0: d10143ff     	sub	sp, sp, #0x50
    1ea4: a9027bfd     	stp	x29, x30, [sp, #0x20]
    1ea8: f9001bf5     	str	x21, [sp, #0x30]
    1eac: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1eb0: 910083fd     	add	x29, sp, #0x20
    1eb4: d5384108     	mrs	x8, SP_EL0
    1eb8: aa0103f5     	mov	x21, x1
    1ebc: 910023e0     	add	x0, sp, #0x8
    1ec0: f9438908     	ldr	x8, [x8, #0x710]
    1ec4: f100245f     	cmp	x2, #0x9
    1ec8: f81f83a8     	stur	x8, [x29, #-0x8]
    1ecc: 90000008     	adrp	x8, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001ecc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1ed0: 790023ff     	strh	wzr, [sp, #0x10]
    1ed4: f90007ff     	str	xzr, [sp, #0x8]
    1ed8: d5384109     	mrs	x9, SP_EL0
    1edc: f9400114     	ldr	x20, [x8]
		0000000000001edc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1ee0: 52800128     	mov	w8, #0x9                // =9
    1ee4: b81f43bf     	stur	wzr, [x29, #-0xc]
    1ee8: 9a88b053     	csel	x19, x2, x8, lt
    1eec: 2a1f03e2     	mov	w2, wzr
    1ef0: aa1303e1     	mov	x1, x19
    1ef4: 94000000     	bl	0x1ef4 <headset_state_store+0x58>
		0000000000001ef4:  R_AARCH64_CALL26	__check_object_size
    1ef8: 910023e0     	add	x0, sp, #0x8
    1efc: aa1503e1     	mov	x1, x21
    1f00: aa1303e2     	mov	x2, x19
    1f04: 94000000     	bl	0x1f04 <headset_state_store+0x68>
		0000000000001f04:  R_AARCH64_CALL26	_inline_copy_from_user
    1f08: b50000c0     	cbnz	x0, 0x1f20 <headset_state_store+0x84>
    1f0c: 910023e0     	add	x0, sp, #0x8
    1f10: d10033a2     	sub	x2, x29, #0xc
    1f14: 2a1f03e1     	mov	w1, wzr
    1f18: 94000000     	bl	0x1f18 <headset_state_store+0x7c>
		0000000000001f18:  R_AARCH64_CALL26	kstrtouint
    1f1c: 340001e0     	cbz	w0, 0x1f58 <headset_state_store+0xbc>
    1f20: 928002b3     	mov	x19, #-0x16             // =-22
    1f24: d5384108     	mrs	x8, SP_EL0
    1f28: f9438908     	ldr	x8, [x8, #0x710]
    1f2c: d5384109     	mrs	x9, SP_EL0
    1f30: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f34: eb09011f     	cmp	x8, x9
    1f38: 54000341     	b.ne	0x1fa0 <headset_state_store+0x104>
    1f3c: aa1303e0     	mov	x0, x19
    1f40: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1f44: f9401bf5     	ldr	x21, [sp, #0x30]
    1f48: a9427bfd     	ldp	x29, x30, [sp, #0x20]
    1f4c: 910143ff     	add	sp, sp, #0x50
    1f50: d50323bf     	autiasp
    1f54: d65f03c0     	ret
    1f58: 385f43a2     	ldurb	w2, [x29, #-0xc]
    1f5c: 90000000     	adrp	x0, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001f5c:  R_AARCH64_ADR_PREL_PG_HI21	unk_31DA7
    1f60: 91000000     	add	x0, x0, #0x0
		0000000000001f60:  R_AARCH64_ADD_ABS_LO12_NC	unk_31DA7
    1f64: 90000001     	adrp	x1, 0x1000 <get_screen_off_awake+0xb4>
		0000000000001f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c99
    1f68: 91000021     	add	x1, x1, #0x0
		0000000000001f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c99
    1f6c: 94000000     	bl	0x1f6c <headset_state_store+0xd0>
		0000000000001f6c:  R_AARCH64_CALL26	_printk
    1f70: f9465e88     	ldr	x8, [x20, #0xcb8]
    1f74: b4fffd88     	cbz	x8, 0x1f24 <headset_state_store+0x88>
    1f78: b85f43a1     	ldur	w1, [x29, #-0xc]
    1f7c: aa1403e0     	mov	x0, x20
    1f80: b85fc110     	ldur	w16, [x8, #-0x4]
    1f84: 728e29b1     	movk	w17, #0x714d
    1f88: 72b34051     	movk	w17, #0x9a02, lsl #16
    1f8c: 6b11021f     	cmp	w16, w17
    1f90: 54000040     	b.eq	0x1f98 <headset_state_store+0xfc>
    1f94: d4304500     	brk	#0x8228
    1f98: d63f0100     	blr	x8
    1f9c: 17ffffe2     	b	0x1f24 <headset_state_store+0x88>
    1fa0: 94000000     	bl	0x1fa0 <headset_state_store+0x104>
		0000000000001fa0:  R_AARCH64_CALL26	__stack_chk_fail
