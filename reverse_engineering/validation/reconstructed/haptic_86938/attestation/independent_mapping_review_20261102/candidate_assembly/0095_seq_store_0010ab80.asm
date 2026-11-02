
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000058d0 <seq_store>:
    58d0: d503233f     	paciasp
    58d4: d100c3ff     	sub	sp, sp, #0x30
    58d8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    58dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    58e0: 910043fd     	add	x29, sp, #0x10
    58e4: d5384109     	mrs	x9, SP_EL0
    58e8: aa0203e8     	mov	x8, x2
    58ec: aa0303f3     	mov	x19, x3
    58f0: f9438929     	ldr	x9, [x9, #0x710]
    58f4: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000058f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdf2
    58f8: 91000021     	add	x1, x1, #0x0
		00000000000058f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdf2
    58fc: 910003e2     	mov	x2, sp
    5900: f90007e9     	str	x9, [sp, #0x8]
    5904: 910003e9     	mov	x9, sp
    5908: f9404c14     	ldr	x20, [x0, #0x98]
    590c: b27e0123     	orr	x3, x9, #0x4
    5910: aa0803e0     	mov	x0, x8
    5914: f90003ff     	str	xzr, [sp]
    5918: 94000000     	bl	0x5918 <seq_store+0x48>
		0000000000005918:  R_AARCH64_CALL26	sscanf
    591c: 7100081f     	cmp	w0, #0x2
    5920: 54000180     	b.eq	0x5950 <seq_store+0x80>
    5924: d5384108     	mrs	x8, SP_EL0
    5928: f9438908     	ldr	x8, [x8, #0x710]
    592c: f94007e9     	ldr	x9, [sp, #0x8]
    5930: eb09011f     	cmp	x8, x9
    5934: 54000681     	b.ne	0x5a04 <seq_store+0x134>
    5938: aa1303e0     	mov	x0, x19
    593c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5940: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5944: 9100c3ff     	add	sp, sp, #0x30
    5948: d50323bf     	autiasp
    594c: d65f03c0     	ret
    5950: b94003e4     	ldr	w4, [sp]
    5954: 71001c9f     	cmp	w4, #0x7
    5958: 540000a8     	b.hi	0x596c <seq_store+0x9c>
    595c: b94007e5     	ldr	w5, [sp, #0x4]
    5960: 394ed288     	ldrb	w8, [x20, #0x3b4]
    5964: 6b0800bf     	cmp	w5, w8
    5968: 54000149     	b.ls	0x5990 <seq_store+0xc0>
    596c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000596c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf8e
    5970: 91000000     	add	x0, x0, #0x0
		0000000000005970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf8e
    5974: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5978: 91000021     	add	x1, x1, #0x0
		0000000000005978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    597c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		000000000000597c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f9
    5980: 91000063     	add	x3, x3, #0x0
		0000000000005980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f9
    5984: 52813a62     	mov	w2, #0x9d3              // =2515
    5988: 94000000     	bl	0x5988 <seq_store+0xb8>
		0000000000005988:  R_AARCH64_CALL26	_printk
    598c: 17ffffe6     	b	0x5924 <seq_store+0x54>
    5990: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16a0
    5994: 91000000     	add	x0, x0, #0x0
		0000000000005994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16a0
    5998: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x2c>
		0000000000005998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    599c: 91000021     	add	x1, x1, #0x0
		000000000000599c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    59a0: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x2c>
		00000000000059a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f9
    59a4: 91000063     	add	x3, x3, #0x0
		00000000000059a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f9
    59a8: 52813ac2     	mov	w2, #0x9d6              // =2518
    59ac: 94000000     	bl	0x59ac <seq_store+0xdc>
		00000000000059ac:  R_AARCH64_CALL26	_printk
    59b0: 91092280     	add	x0, x20, #0x248
    59b4: 94000000     	bl	0x59b4 <seq_store+0xe4>
		00000000000059b4:  R_AARCH64_CALL26	mutex_lock
    59b8: b94003e1     	ldr	w1, [sp]
    59bc: 71001c3f     	cmp	w1, #0x7
    59c0: 54000248     	b.hi	0x5a08 <seq_store+0x138>
    59c4: b94007e2     	ldr	w2, [sp, #0x4]
    59c8: 8b010288     	add	x8, x20, x1
    59cc: d102a280     	sub	x0, x20, #0xa8
    59d0: 38176102     	sturb	w2, [x8, #-0x8a]
    59d4: f9429288     	ldr	x8, [x20, #0x520]
    59d8: f9406108     	ldr	x8, [x8, #0xc0]
    59dc: b85fc110     	ldur	w16, [x8, #-0x4]
    59e0: 728fccb1     	movk	w17, #0x7e65
    59e4: 72af70f1     	movk	w17, #0x7b87, lsl #16
    59e8: 6b11021f     	cmp	w16, w17
    59ec: 54000040     	b.eq	0x59f4 <seq_store+0x124>
    59f0: d4304500     	brk	#0x8228
    59f4: d63f0100     	blr	x8
    59f8: 91092280     	add	x0, x20, #0x248
    59fc: 94000000     	bl	0x59fc <seq_store+0x12c>
		00000000000059fc:  R_AARCH64_CALL26	mutex_unlock
    5a00: 17ffffc9     	b	0x5924 <seq_store+0x54>
    5a04: 94000000     	bl	0x5a04 <seq_store+0x134>
		0000000000005a04:  R_AARCH64_CALL26	__stack_chk_fail
    5a08: d42aa240     	brk	#0x5512
