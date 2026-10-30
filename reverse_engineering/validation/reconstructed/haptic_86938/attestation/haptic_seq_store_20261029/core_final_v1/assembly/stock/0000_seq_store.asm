
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007d60 <seq_store>:
    7d60: d503233f     	paciasp
    7d64: d100c3ff     	sub	sp, sp, #0x30
    7d68: a9017bfd     	stp	x29, x30, [sp, #0x10]
    7d6c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    7d70: 910043fd     	add	x29, sp, #0x10
    7d74: d5384109     	mrs	x9, SP_EL0
    7d78: aa0203e8     	mov	x8, x2
    7d7c: aa0303f3     	mov	x19, x3
    7d80: f9438929     	ldr	x9, [x9, #0x710]
    7d84: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d6
    7d88: 91000021     	add	x1, x1, #0x0
		0000000000007d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d6
    7d8c: 910003e2     	mov	x2, sp
    7d90: f90007e9     	str	x9, [sp, #0x8]
    7d94: 910003e9     	mov	x9, sp
    7d98: f9404c14     	ldr	x20, [x0, #0x98]
    7d9c: b27e0123     	orr	x3, x9, #0x4
    7da0: aa0803e0     	mov	x0, x8
    7da4: f90003ff     	str	xzr, [sp]
    7da8: 94000000     	bl	0x7da8 <seq_store+0x48>
		0000000000007da8:  R_AARCH64_CALL26	sscanf
    7dac: 7100081f     	cmp	w0, #0x2
    7db0: 54000180     	b.eq	0x7de0 <seq_store+0x80>
    7db4: d5384108     	mrs	x8, SP_EL0
    7db8: f9438908     	ldr	x8, [x8, #0x710]
    7dbc: f94007e9     	ldr	x9, [sp, #0x8]
    7dc0: eb09011f     	cmp	x8, x9
    7dc4: 54000681     	b.ne	0x7e94 <seq_store+0x134>
    7dc8: aa1303e0     	mov	x0, x19
    7dcc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    7dd0: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    7dd4: 9100c3ff     	add	sp, sp, #0x30
    7dd8: d50323bf     	autiasp
    7ddc: d65f03c0     	ret
    7de0: b94003e4     	ldr	w4, [sp]
    7de4: 71001c9f     	cmp	w4, #0x7
    7de8: 540000a8     	b.hi	0x7dfc <seq_store+0x9c>
    7dec: b94007e5     	ldr	w5, [sp, #0x4]
    7df0: 394ed288     	ldrb	w8, [x20, #0x3b4]
    7df4: 6b0800bf     	cmp	w5, w8
    7df8: 54000149     	b.ls	0x7e20 <seq_store+0xc0>
    7dfc: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d1f
    7e00: 91000000     	add	x0, x0, #0x0
		0000000000007e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d1f
    7e04: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7e08: 91000021     	add	x1, x1, #0x0
		0000000000007e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7e0c: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a6c
    7e10: 91000063     	add	x3, x3, #0x0
		0000000000007e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a6c
    7e14: 52813a62     	mov	w2, #0x9d3              // =2515
    7e18: 94000000     	bl	0x7e18 <seq_store+0xb8>
		0000000000007e18:  R_AARCH64_CALL26	_printk
    7e1c: 17ffffe6     	b	0x7db4 <seq_store+0x54>
    7e20: 90000000     	adrp	x0, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x274c
    7e24: 91000000     	add	x0, x0, #0x0
		0000000000007e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x274c
    7e28: 90000001     	adrp	x1, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    7e2c: 91000021     	add	x1, x1, #0x0
		0000000000007e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    7e30: 90000003     	adrp	x3, 0x7000 <rtp_work_routine+0x1d8>
		0000000000007e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a6c
    7e34: 91000063     	add	x3, x3, #0x0
		0000000000007e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a6c
    7e38: 52813ac2     	mov	w2, #0x9d6              // =2518
    7e3c: 94000000     	bl	0x7e3c <seq_store+0xdc>
		0000000000007e3c:  R_AARCH64_CALL26	_printk
    7e40: 91092280     	add	x0, x20, #0x248
    7e44: 94000000     	bl	0x7e44 <seq_store+0xe4>
		0000000000007e44:  R_AARCH64_CALL26	mutex_lock
    7e48: b94003e1     	ldr	w1, [sp]
    7e4c: 71001c3f     	cmp	w1, #0x7
    7e50: 54000248     	b.hi	0x7e98 <seq_store+0x138>
    7e54: b94007e2     	ldr	w2, [sp, #0x4]
    7e58: 8b010288     	add	x8, x20, x1
    7e5c: d102a280     	sub	x0, x20, #0xa8
    7e60: 38176102     	sturb	w2, [x8, #-0x8a]
    7e64: f9429288     	ldr	x8, [x20, #0x520]
    7e68: f9406108     	ldr	x8, [x8, #0xc0]
    7e6c: b85fc110     	ldur	w16, [x8, #-0x4]
    7e70: 728fccb1     	movk	w17, #0x7e65
    7e74: 72af70f1     	movk	w17, #0x7b87, lsl #16
    7e78: 6b11021f     	cmp	w16, w17
    7e7c: 54000040     	b.eq	0x7e84 <seq_store+0x124>
    7e80: d4304500     	brk	#0x8228
    7e84: d63f0100     	blr	x8
    7e88: 91092280     	add	x0, x20, #0x248
    7e8c: 94000000     	bl	0x7e8c <seq_store+0x12c>
		0000000000007e8c:  R_AARCH64_CALL26	mutex_unlock
    7e90: 17ffffc9     	b	0x7db4 <seq_store+0x54>
    7e94: 94000000     	bl	0x7e94 <seq_store+0x134>
		0000000000007e94:  R_AARCH64_CALL26	__stack_chk_fail
    7e98: d42aa240     	brk	#0x5512
