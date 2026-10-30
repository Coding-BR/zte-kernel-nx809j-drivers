
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000038ac <aw8693x_get_irq_state>:
    38ac: d503233f     	paciasp
    38b0: d100c3ff     	sub	sp, sp, #0x30
    38b4: a9017bfd     	stp	x29, x30, [sp, #0x10]
    38b8: f90013f3     	str	x19, [sp, #0x20]
    38bc: 910043fd     	add	x29, sp, #0x10
    38c0: d5384108     	mrs	x8, SP_EL0
    38c4: aa0003f3     	mov	x19, x0
    38c8: f9438908     	ldr	x8, [x8, #0x710]
    38cc: f90007e8     	str	x8, [sp, #0x8]
    38d0: 39404408     	ldrb	w8, [x0, #0x11]
    38d4: 390013ff     	strb	wzr, [sp, #0x4]
    38d8: 7100051f     	cmp	w8, #0x1
    38dc: 54000081     	b.ne	0x38ec <aw8693x_get_irq_state+0x40>
    38e0: f9419668     	ldr	x8, [x19, #0x328]
    38e4: 52800b69     	mov	w9, #0x5b               // =91
    38e8: 79000509     	strh	w9, [x8, #0x2]
    38ec: 910013e2     	add	x2, sp, #0x4
    38f0: aa1303e0     	mov	x0, x19
    38f4: 52800041     	mov	w1, #0x2                // =2
    38f8: 52800023     	mov	w3, #0x1                // =1
    38fc: 94000000     	bl	0x38fc <aw8693x_get_irq_state+0x50>
		00000000000038fc:  R_AARCH64_CALL26	i2c_r_bytes
    3900: 39404668     	ldrb	w8, [x19, #0x11]
    3904: 7100051f     	cmp	w8, #0x1
    3908: 54000061     	b.ne	0x3914 <aw8693x_get_irq_state+0x68>
    390c: f9419668     	ldr	x8, [x19, #0x328]
    3910: 7900051f     	strh	wzr, [x8, #0x2]
    3914: 39c013e8     	ldrsb	w8, [sp, #0x4]
    3918: 37f802a8     	tbnz	w8, #0x1f, 0x396c <aw8693x_get_irq_state+0xc0>
    391c: 12001d08     	and	w8, w8, #0xff
    3920: 12800009     	mov	w9, #-0x1               // =-1
    3924: 373003c8     	tbnz	w8, #0x6, 0x399c <aw8693x_get_irq_state+0xf0>
    3928: 37280528     	tbnz	w8, #0x5, 0x39cc <aw8693x_get_irq_state+0x120>
    392c: 37100688     	tbnz	w8, #0x2, 0x39fc <aw8693x_get_irq_state+0x150>
    3930: 370807e8     	tbnz	w8, #0x1, 0x3a2c <aw8693x_get_irq_state+0x180>
    3934: 37000948     	tbnz	w8, #0x0, 0x3a5c <aw8693x_get_irq_state+0x1b0>
    3938: 37180aa8     	tbnz	w8, #0x3, 0x3a8c <aw8693x_get_irq_state+0x1e0>
    393c: d538410a     	mrs	x10, SP_EL0
    3940: f943894a     	ldr	x10, [x10, #0x710]
    3944: f94007eb     	ldr	x11, [sp, #0x8]
    3948: 721c011f     	tst	w8, #0x10
    394c: 1a9f0120     	csel	w0, w9, wzr, eq
    3950: eb0b015f     	cmp	x10, x11
    3954: 54000b21     	b.ne	0x3ab8 <aw8693x_get_irq_state+0x20c>
    3958: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    395c: f94013f3     	ldr	x19, [sp, #0x20]
    3960: 9100c3ff     	add	sp, sp, #0x30
    3964: d50323bf     	autiasp
    3968: d65f03c0     	ret
    396c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		000000000000396c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x941
    3970: 91000000     	add	x0, x0, #0x0
		0000000000003970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x941
    3974: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3978: 91000021     	add	x1, x1, #0x0
		0000000000003978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    397c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		000000000000397c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    3980: 91000063     	add	x3, x3, #0x0
		0000000000003980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    3984: 52808d62     	mov	w2, #0x46b              // =1131
    3988: 3900767f     	strb	wzr, [x19, #0x1d]
    398c: 94000000     	bl	0x398c <aw8693x_get_irq_state+0xe0>
		000000000000398c:  R_AARCH64_CALL26	_printk
    3990: 394013e8     	ldrb	w8, [sp, #0x4]
    3994: 52800069     	mov	w9, #0x3                // =3
    3998: 3637fc88     	tbz	w8, #0x6, 0x3928 <aw8693x_get_irq_state+0x7c>
    399c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		000000000000399c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x876
    39a0: 91000000     	add	x0, x0, #0x0
		00000000000039a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x876
    39a4: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		00000000000039a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    39a8: 91000021     	add	x1, x1, #0x0
		00000000000039a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    39ac: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		00000000000039ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    39b0: 91000063     	add	x3, x3, #0x0
		00000000000039b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    39b4: 52808e22     	mov	w2, #0x471              // =1137
    39b8: 3900767f     	strb	wzr, [x19, #0x1d]
    39bc: 94000000     	bl	0x39bc <aw8693x_get_irq_state+0x110>
		00000000000039bc:  R_AARCH64_CALL26	_printk
    39c0: 394013e8     	ldrb	w8, [sp, #0x4]
    39c4: 52800089     	mov	w9, #0x4                // =4
    39c8: 362ffb28     	tbz	w8, #0x5, 0x392c <aw8693x_get_irq_state+0x80>
    39cc: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		00000000000039cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    39d0: 91000000     	add	x0, x0, #0x0
		00000000000039d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    39d4: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		00000000000039d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    39d8: 91000021     	add	x1, x1, #0x0
		00000000000039d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    39dc: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		00000000000039dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    39e0: 91000063     	add	x3, x3, #0x0
		00000000000039e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    39e4: 52808ee2     	mov	w2, #0x477              // =1143
    39e8: 3900767f     	strb	wzr, [x19, #0x1d]
    39ec: 94000000     	bl	0x39ec <aw8693x_get_irq_state+0x140>
		00000000000039ec:  R_AARCH64_CALL26	_printk
    39f0: 394013e8     	ldrb	w8, [sp, #0x4]
    39f4: 528000a9     	mov	w9, #0x5                // =5
    39f8: 3617f9c8     	tbz	w8, #0x2, 0x3930 <aw8693x_get_irq_state+0x84>
    39fc: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		00000000000039fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c8
    3a00: 91000000     	add	x0, x0, #0x0
		0000000000003a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c8
    3a04: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003a04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3a08: 91000021     	add	x1, x1, #0x0
		0000000000003a08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3a0c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    3a10: 91000063     	add	x3, x3, #0x0
		0000000000003a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    3a14: 52808fa2     	mov	w2, #0x47d              // =1149
    3a18: 3900767f     	strb	wzr, [x19, #0x1d]
    3a1c: 94000000     	bl	0x3a1c <aw8693x_get_irq_state+0x170>
		0000000000003a1c:  R_AARCH64_CALL26	_printk
    3a20: 394013e8     	ldrb	w8, [sp, #0x4]
    3a24: 528000c9     	mov	w9, #0x6                // =6
    3a28: 360ff868     	tbz	w8, #0x1, 0x3934 <aw8693x_get_irq_state+0x88>
    3a2c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x899
    3a30: 91000000     	add	x0, x0, #0x0
		0000000000003a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x899
    3a34: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3a38: 91000021     	add	x1, x1, #0x0
		0000000000003a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3a3c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    3a40: 91000063     	add	x3, x3, #0x0
		0000000000003a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    3a44: 52809062     	mov	w2, #0x483              // =1155
    3a48: 3900767f     	strb	wzr, [x19, #0x1d]
    3a4c: 94000000     	bl	0x3a4c <aw8693x_get_irq_state+0x1a0>
		0000000000003a4c:  R_AARCH64_CALL26	_printk
    3a50: 394013e8     	ldrb	w8, [sp, #0x4]
    3a54: 528000e9     	mov	w9, #0x7                // =7
    3a58: 3607f708     	tbz	w8, #0x0, 0x3938 <aw8693x_get_irq_state+0x8c>
    3a5c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49e
    3a60: 91000000     	add	x0, x0, #0x0
		0000000000003a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49e
    3a64: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3a68: 91000021     	add	x1, x1, #0x0
		0000000000003a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3a6c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    3a70: 91000063     	add	x3, x3, #0x0
		0000000000003a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    3a74: 52809122     	mov	w2, #0x489              // =1161
    3a78: 3900767f     	strb	wzr, [x19, #0x1d]
    3a7c: 94000000     	bl	0x3a7c <aw8693x_get_irq_state+0x1d0>
		0000000000003a7c:  R_AARCH64_CALL26	_printk
    3a80: 394013e8     	ldrb	w8, [sp, #0x4]
    3a84: 52800149     	mov	w9, #0xa                // =10
    3a88: 361ff5a8     	tbz	w8, #0x3, 0x393c <aw8693x_get_irq_state+0x90>
    3a8c: 90000000     	adrp	x0, 0x3000 <f0_show+0xb4>
		0000000000003a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5df
    3a90: 91000000     	add	x0, x0, #0x0
		0000000000003a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5df
    3a94: 90000001     	adrp	x1, 0x3000 <f0_show+0xb4>
		0000000000003a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    3a98: 91000021     	add	x1, x1, #0x0
		0000000000003a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    3a9c: 90000003     	adrp	x3, 0x3000 <f0_show+0xb4>
		0000000000003a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98
    3aa0: 91000063     	add	x3, x3, #0x0
		0000000000003aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98
    3aa4: 528091c2     	mov	w2, #0x48e              // =1166
    3aa8: 94000000     	bl	0x3aa8 <aw8693x_get_irq_state+0x1fc>
		0000000000003aa8:  R_AARCH64_CALL26	_printk
    3aac: 394013e8     	ldrb	w8, [sp, #0x4]
    3ab0: 52800049     	mov	w9, #0x2                // =2
    3ab4: 17ffffa2     	b	0x393c <aw8693x_get_irq_state+0x90>
    3ab8: 94000000     	bl	0x3ab8 <aw8693x_get_irq_state+0x20c>
		0000000000003ab8:  R_AARCH64_CALL26	__stack_chk_fail
