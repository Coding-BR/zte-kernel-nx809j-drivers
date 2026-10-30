
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000019e8 <headset_state_show>:
    19e8: d503233f     	paciasp
    19ec: d10183ff     	sub	sp, sp, #0x60
    19f0: a9037bfd     	stp	x29, x30, [sp, #0x30]
    19f4: a90457f6     	stp	x22, x21, [sp, #0x40]
    19f8: a9054ff4     	stp	x20, x19, [sp, #0x50]
    19fc: 9100c3fd     	add	x29, sp, #0x30
    1a00: d5384108     	mrs	x8, SP_EL0
    1a04: aa1f03e0     	mov	x0, xzr
    1a08: f9438908     	ldr	x8, [x8, #0x710]
    1a0c: f81f83a8     	stur	x8, [x29, #-0x8]
    1a10: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1a14: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1a18: d5384108     	mrs	x8, SP_EL0
    1a1c: f9400068     	ldr	x8, [x3]
    1a20: b4000188     	cbz	x8, 0x1a50 <headset_state_show+0x68>
    1a24: d5384108     	mrs	x8, SP_EL0
    1a28: f9438908     	ldr	x8, [x8, #0x710]
    1a2c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1a30: eb09011f     	cmp	x8, x9
    1a34: 54000521     	b.ne	0x1ad8 <headset_state_show+0xf0>
    1a38: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    1a3c: a94457f6     	ldp	x22, x21, [sp, #0x40]
    1a40: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    1a44: 910183ff     	add	sp, sp, #0x60
    1a48: d50323bf     	autiasp
    1a4c: d65f03c0     	ret
    1a50: 90000008     	adrp	x8, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001a50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    1a54: aa0103f5     	mov	x21, x1
    1a58: aa0203f4     	mov	x20, x2
    1a5c: f9400116     	ldr	x22, [x8]
		0000000000001a5c:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    1a60: aa0303f3     	mov	x19, x3
    1a64: f9473ec8     	ldr	x8, [x22, #0xe78]
    1a68: b4000128     	cbz	x8, 0x1a8c <headset_state_show+0xa4>
    1a6c: aa1603e0     	mov	x0, x22
    1a70: b85fc110     	ldur	w16, [x8, #-0x4]
    1a74: 7281af31     	movk	w17, #0xd79
    1a78: 72ae7f91     	movk	w17, #0x73fc, lsl #16
    1a7c: 6b11021f     	cmp	w16, w17
    1a80: 54000040     	b.eq	0x1a88 <headset_state_show+0xa0>
    1a84: d4304500     	brk	#0x8228
    1a88: d63f0100     	blr	x8
    1a8c: 39405ec2     	ldrb	w2, [x22, #0x17]
    1a90: 90000000     	adrp	x0, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001a90:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A127
    1a94: 91000000     	add	x0, x0, #0x0
		0000000000001a94:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A127
    1a98: 90000001     	adrp	x1, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001a98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f61
    1a9c: 91000021     	add	x1, x1, #0x0
		0000000000001a9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f61
    1aa0: 94000000     	bl	0x1aa0 <headset_state_show+0xb8>
		0000000000001aa0:  R_AARCH64_CALL26	_printk
    1aa4: 39405ec3     	ldrb	w3, [x22, #0x17]
    1aa8: 90000002     	adrp	x2, 0x1000 <get_tp_chip_id+0xdc>
		0000000000001aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6391
    1aac: 91000042     	add	x2, x2, #0x0
		0000000000001aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6391
    1ab0: 910023e0     	add	x0, sp, #0x8
    1ab4: 528003c1     	mov	w1, #0x1e               // =30
    1ab8: 94000000     	bl	0x1ab8 <headset_state_show+0xd0>
		0000000000001ab8:  R_AARCH64_CALL26	snprintf
    1abc: 93407c04     	sxtw	x4, w0
    1ac0: 910023e3     	add	x3, sp, #0x8
    1ac4: aa1403e1     	mov	x1, x20
    1ac8: aa1503e0     	mov	x0, x21
    1acc: aa1303e2     	mov	x2, x19
    1ad0: 94000000     	bl	0x1ad0 <headset_state_show+0xe8>
		0000000000001ad0:  R_AARCH64_CALL26	simple_read_from_buffer
    1ad4: 17ffffd4     	b	0x1a24 <headset_state_show+0x3c>
    1ad8: 94000000     	bl	0x1ad8 <headset_state_show+0xf0>
		0000000000001ad8:  R_AARCH64_CALL26	__stack_chk_fail
