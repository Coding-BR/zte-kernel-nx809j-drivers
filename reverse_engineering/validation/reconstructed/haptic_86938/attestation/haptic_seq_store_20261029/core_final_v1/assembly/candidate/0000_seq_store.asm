
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000058a0 <seq_store>:
    58a0: d503233f     	paciasp
    58a4: d100c3ff     	sub	sp, sp, #0x30
    58a8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    58ac: a9024ff4     	stp	x20, x19, [sp, #0x20]
    58b0: 910043fd     	add	x29, sp, #0x10
    58b4: d5384109     	mrs	x9, SP_EL0
    58b8: aa0203e8     	mov	x8, x2
    58bc: aa0303f3     	mov	x19, x3
    58c0: f9438929     	ldr	x9, [x9, #0x710]
    58c4: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		00000000000058c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x901
    58c8: 91000021     	add	x1, x1, #0x0
		00000000000058c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x901
    58cc: 910003e2     	mov	x2, sp
    58d0: f90007e9     	str	x9, [sp, #0x8]
    58d4: 910003e9     	mov	x9, sp
    58d8: f9404c14     	ldr	x20, [x0, #0x98]
    58dc: b27e0123     	orr	x3, x9, #0x4
    58e0: aa0803e0     	mov	x0, x8
    58e4: f90003ff     	str	xzr, [sp]
    58e8: 94000000     	bl	0x58e8 <seq_store+0x48>
		00000000000058e8:  R_AARCH64_CALL26	sscanf
    58ec: 7100081f     	cmp	w0, #0x2
    58f0: 54000180     	b.eq	0x5920 <seq_store+0x80>
    58f4: d5384108     	mrs	x8, SP_EL0
    58f8: f9438908     	ldr	x8, [x8, #0x710]
    58fc: f94007e9     	ldr	x9, [sp, #0x8]
    5900: eb09011f     	cmp	x8, x9
    5904: 54000681     	b.ne	0x59d4 <seq_store+0x134>
    5908: aa1303e0     	mov	x0, x19
    590c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    5910: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    5914: 9100c3ff     	add	sp, sp, #0x30
    5918: d50323bf     	autiasp
    591c: d65f03c0     	ret
    5920: b94003e4     	ldr	w4, [sp]
    5924: 71001c9f     	cmp	w4, #0x7
    5928: 540000a8     	b.hi	0x593c <seq_store+0x9c>
    592c: b94007e5     	ldr	w5, [sp, #0x4]
    5930: 394ed288     	ldrb	w8, [x20, #0x3b4]
    5934: 6b0800bf     	cmp	w5, w8
    5938: 54000149     	b.ls	0x5960 <seq_store+0xc0>
    593c: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000593c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa43
    5940: 91000000     	add	x0, x0, #0x0
		0000000000005940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa43
    5944: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    5948: 91000021     	add	x1, x1, #0x0
		0000000000005948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    594c: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		000000000000594c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfb0
    5950: 91000063     	add	x3, x3, #0x0
		0000000000005950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfb0
    5954: 52813a62     	mov	w2, #0x9d3              // =2515
    5958: 94000000     	bl	0x5958 <seq_store+0xb8>
		0000000000005958:  R_AARCH64_CALL26	_printk
    595c: 17ffffe6     	b	0x58f4 <seq_store+0x54>
    5960: 90000000     	adrp	x0, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe88
    5964: 91000000     	add	x0, x0, #0x0
		0000000000005964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe88
    5968: 90000001     	adrp	x1, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    596c: 91000021     	add	x1, x1, #0x0
		000000000000596c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    5970: 90000003     	adrp	x3, 0x5000 <aw8693x_get_f0+0x5c>
		0000000000005970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfb0
    5974: 91000063     	add	x3, x3, #0x0
		0000000000005974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfb0
    5978: 52813ac2     	mov	w2, #0x9d6              // =2518
    597c: 94000000     	bl	0x597c <seq_store+0xdc>
		000000000000597c:  R_AARCH64_CALL26	_printk
    5980: 91092280     	add	x0, x20, #0x248
    5984: 94000000     	bl	0x5984 <seq_store+0xe4>
		0000000000005984:  R_AARCH64_CALL26	mutex_lock
    5988: b94003e1     	ldr	w1, [sp]
    598c: 71001c3f     	cmp	w1, #0x7
    5990: 54000248     	b.hi	0x59d8 <seq_store+0x138>
    5994: b94007e2     	ldr	w2, [sp, #0x4]
    5998: 8b010288     	add	x8, x20, x1
    599c: d102a280     	sub	x0, x20, #0xa8
    59a0: 38176102     	sturb	w2, [x8, #-0x8a]
    59a4: f9429288     	ldr	x8, [x20, #0x520]
    59a8: f9406108     	ldr	x8, [x8, #0xc0]
    59ac: b85fc110     	ldur	w16, [x8, #-0x4]
    59b0: 728fccb1     	movk	w17, #0x7e65
    59b4: 72af70f1     	movk	w17, #0x7b87, lsl #16
    59b8: 6b11021f     	cmp	w16, w17
    59bc: 54000040     	b.eq	0x59c4 <seq_store+0x124>
    59c0: d4304500     	brk	#0x8228
    59c4: d63f0100     	blr	x8
    59c8: 91092280     	add	x0, x20, #0x248
    59cc: 94000000     	bl	0x59cc <seq_store+0x12c>
		00000000000059cc:  R_AARCH64_CALL26	mutex_unlock
    59d0: 17ffffc9     	b	0x58f4 <seq_store+0x54>
    59d4: 94000000     	bl	0x59d4 <seq_store+0x134>
		00000000000059d4:  R_AARCH64_CALL26	__stack_chk_fail
    59d8: d42aa240     	brk	#0x5512
