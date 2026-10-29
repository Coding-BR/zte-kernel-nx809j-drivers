
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000868 <aw8693x_get_irq_state>:
     868: d503233f     	paciasp
     86c: d100c3ff     	sub	sp, sp, #0x30
     870: a9017bfd     	stp	x29, x30, [sp, #0x10]
     874: f90013f3     	str	x19, [sp, #0x20]
     878: 910043fd     	add	x29, sp, #0x10
     87c: d5384108     	mrs	x8, SP_EL0
     880: aa0003f3     	mov	x19, x0
     884: f9438908     	ldr	x8, [x8, #0x710]
     888: f90007e8     	str	x8, [sp, #0x8]
     88c: 39404408     	ldrb	w8, [x0, #0x11]
     890: 390013ff     	strb	wzr, [sp, #0x4]
     894: 7100051f     	cmp	w8, #0x1
     898: 54000081     	b.ne	0x8a8 <aw8693x_get_irq_state+0x40>
     89c: f9419668     	ldr	x8, [x19, #0x328]
     8a0: 52800b69     	mov	w9, #0x5b               // =91
     8a4: 79000509     	strh	w9, [x8, #0x2]
     8a8: 910013e2     	add	x2, sp, #0x4
     8ac: aa1303e0     	mov	x0, x19
     8b0: 52800041     	mov	w1, #0x2                // =2
     8b4: 52800023     	mov	w3, #0x1                // =1
     8b8: 94000000     	bl	0x8b8 <aw8693x_get_irq_state+0x50>
		00000000000008b8:  R_AARCH64_CALL26	i2c_r_bytes
     8bc: 39404668     	ldrb	w8, [x19, #0x11]
     8c0: 7100051f     	cmp	w8, #0x1
     8c4: 54000061     	b.ne	0x8d0 <aw8693x_get_irq_state+0x68>
     8c8: f9419668     	ldr	x8, [x19, #0x328]
     8cc: 7900051f     	strh	wzr, [x8, #0x2]
     8d0: 39c013e8     	ldrsb	w8, [sp, #0x4]
     8d4: 37f802a8     	tbnz	w8, #0x1f, 0x928 <aw8693x_get_irq_state+0xc0>
     8d8: 12001d08     	and	w8, w8, #0xff
     8dc: 12800009     	mov	w9, #-0x1               // =-1
     8e0: 373003c8     	tbnz	w8, #0x6, 0x958 <aw8693x_get_irq_state+0xf0>
     8e4: 37280528     	tbnz	w8, #0x5, 0x988 <aw8693x_get_irq_state+0x120>
     8e8: 37100688     	tbnz	w8, #0x2, 0x9b8 <aw8693x_get_irq_state+0x150>
     8ec: 370807e8     	tbnz	w8, #0x1, 0x9e8 <aw8693x_get_irq_state+0x180>
     8f0: 37000948     	tbnz	w8, #0x0, 0xa18 <aw8693x_get_irq_state+0x1b0>
     8f4: 37180aa8     	tbnz	w8, #0x3, 0xa48 <aw8693x_get_irq_state+0x1e0>
     8f8: d538410a     	mrs	x10, SP_EL0
     8fc: f943894a     	ldr	x10, [x10, #0x710]
     900: f94007eb     	ldr	x11, [sp, #0x8]
     904: 721c011f     	tst	w8, #0x10
     908: 1a9f0120     	csel	w0, w9, wzr, eq
     90c: eb0b015f     	cmp	x10, x11
     910: 54000b21     	b.ne	0xa74 <aw8693x_get_irq_state+0x20c>
     914: a9417bfd     	ldp	x29, x30, [sp, #0x10]
     918: f94013f3     	ldr	x19, [sp, #0x20]
     91c: 9100c3ff     	add	sp, sp, #0x30
     920: d50323bf     	autiasp
     924: d65f03c0     	ret
     928: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25b3
     92c: 91000000     	add	x0, x0, #0x0
		000000000000092c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25b3
     930: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     934: 91000021     	add	x1, x1, #0x0
		0000000000000934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     938: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     93c: 91000063     	add	x3, x3, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     940: 52808d62     	mov	w2, #0x46b              // =1131
     944: 3900767f     	strb	wzr, [x19, #0x1d]
     948: 94000000     	bl	0x948 <aw8693x_get_irq_state+0xe0>
		0000000000000948:  R_AARCH64_CALL26	_printk
     94c: 394013e8     	ldrb	w8, [sp, #0x4]
     950: 52800069     	mov	w9, #0x3                // =3
     954: 3637fc88     	tbz	w8, #0x6, 0x8e4 <aw8693x_get_irq_state+0x7c>
     958: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2438
     95c: 91000000     	add	x0, x0, #0x0
		000000000000095c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2438
     960: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     964: 91000021     	add	x1, x1, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     968: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     96c: 91000063     	add	x3, x3, #0x0
		000000000000096c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     970: 52808e22     	mov	w2, #0x471              // =1137
     974: 3900767f     	strb	wzr, [x19, #0x1d]
     978: 94000000     	bl	0x978 <aw8693x_get_irq_state+0x110>
		0000000000000978:  R_AARCH64_CALL26	_printk
     97c: 394013e8     	ldrb	w8, [sp, #0x4]
     980: 52800089     	mov	w9, #0x4                // =4
     984: 362ffb28     	tbz	w8, #0x5, 0x8e8 <aw8693x_get_irq_state+0x80>
     988: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000988:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ae8
     98c: 91000000     	add	x0, x0, #0x0
		000000000000098c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ae8
     990: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000990:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     994: 91000021     	add	x1, x1, #0x0
		0000000000000994:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     998: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     99c: 91000063     	add	x3, x3, #0x0
		000000000000099c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     9a0: 52808ee2     	mov	w2, #0x477              // =1143
     9a4: 3900767f     	strb	wzr, [x19, #0x1d]
     9a8: 94000000     	bl	0x9a8 <aw8693x_get_irq_state+0x140>
		00000000000009a8:  R_AARCH64_CALL26	_printk
     9ac: 394013e8     	ldrb	w8, [sp, #0x4]
     9b0: 528000a9     	mov	w9, #0x5                // =5
     9b4: 3617f9c8     	tbz	w8, #0x2, 0x8ec <aw8693x_get_irq_state+0x84>
     9b8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x288f
     9bc: 91000000     	add	x0, x0, #0x0
		00000000000009bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x288f
     9c0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     9c4: 91000021     	add	x1, x1, #0x0
		00000000000009c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     9c8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000009c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     9cc: 91000063     	add	x3, x3, #0x0
		00000000000009cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     9d0: 52808fa2     	mov	w2, #0x47d              // =1149
     9d4: 3900767f     	strb	wzr, [x19, #0x1d]
     9d8: 94000000     	bl	0x9d8 <aw8693x_get_irq_state+0x170>
		00000000000009d8:  R_AARCH64_CALL26	_printk
     9dc: 394013e8     	ldrb	w8, [sp, #0x4]
     9e0: 528000c9     	mov	w9, #0x6                // =6
     9e4: 360ff868     	tbz	w8, #0x1, 0x8f0 <aw8693x_get_irq_state+0x88>
     9e8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x245b
     9ec: 91000000     	add	x0, x0, #0x0
		00000000000009ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x245b
     9f0: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     9f4: 91000021     	add	x1, x1, #0x0
		00000000000009f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     9f8: 90000003     	adrp	x3, 0x0 <.text>
		00000000000009f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     9fc: 91000063     	add	x3, x3, #0x0
		00000000000009fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     a00: 52809062     	mov	w2, #0x483              // =1155
     a04: 3900767f     	strb	wzr, [x19, #0x1d]
     a08: 94000000     	bl	0xa08 <aw8693x_get_irq_state+0x1a0>
		0000000000000a08:  R_AARCH64_CALL26	_printk
     a0c: 394013e8     	ldrb	w8, [sp, #0x4]
     a10: 528000e9     	mov	w9, #0x7                // =7
     a14: 3607f708     	tbz	w8, #0x0, 0x8f4 <aw8693x_get_irq_state+0x8c>
     a18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15a0
     a1c: 91000000     	add	x0, x0, #0x0
		0000000000000a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15a0
     a20: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     a24: 91000021     	add	x1, x1, #0x0
		0000000000000a24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     a28: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     a2c: 91000063     	add	x3, x3, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     a30: 52809122     	mov	w2, #0x489              // =1161
     a34: 3900767f     	strb	wzr, [x19, #0x1d]
     a38: 94000000     	bl	0xa38 <aw8693x_get_irq_state+0x1d0>
		0000000000000a38:  R_AARCH64_CALL26	_printk
     a3c: 394013e8     	ldrb	w8, [sp, #0x4]
     a40: 52800149     	mov	w9, #0xa                // =10
     a44: 361ff5a8     	tbz	w8, #0x3, 0x8f8 <aw8693x_get_irq_state+0x90>
     a48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a03
     a4c: 91000000     	add	x0, x0, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a03
     a50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
     a54: 91000021     	add	x1, x1, #0x0
		0000000000000a54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
     a58: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248
     a5c: 91000063     	add	x3, x3, #0x0
		0000000000000a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248
     a60: 528091c2     	mov	w2, #0x48e              // =1166
     a64: 94000000     	bl	0xa64 <aw8693x_get_irq_state+0x1fc>
		0000000000000a64:  R_AARCH64_CALL26	_printk
     a68: 394013e8     	ldrb	w8, [sp, #0x4]
     a6c: 52800049     	mov	w9, #0x2                // =2
     a70: 17ffffa2     	b	0x8f8 <aw8693x_get_irq_state+0x90>
     a74: 94000000     	bl	0xa74 <aw8693x_get_irq_state+0x20c>
		0000000000000a74:  R_AARCH64_CALL26	__stack_chk_fail
