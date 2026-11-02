
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004938 <aw8693x_cont_config>:
    4938: d503233f     	paciasp
    493c: d10103ff     	sub	sp, sp, #0x40
    4940: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4944: f90013f5     	str	x21, [sp, #0x20]
    4948: a9034ff4     	stp	x20, x19, [sp, #0x30]
    494c: 910043fd     	add	x29, sp, #0x10
    4950: d5384108     	mrs	x8, SP_EL0
    4954: 90000014     	adrp	x20, 0x4000 <awrw_store+0x1fc>
		0000000000004954:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4958: 91000294     	add	x20, x20, #0x0
		0000000000004958:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    495c: f9438908     	ldr	x8, [x8, #0x710]
    4960: aa0003f3     	mov	x19, x0
    4964: 52801fe9     	mov	w9, #0xff               // =255
    4968: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004968:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd5c
    496c: 91000000     	add	x0, x0, #0x0
		000000000000496c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd5c
    4970: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004970:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e4
    4974: 91000063     	add	x3, x3, #0x0
		0000000000004974:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e4
    4978: aa1403e1     	mov	x1, x20
    497c: 52804ea2     	mov	w2, #0x275              // =629
    4980: f90007e8     	str	x8, [sp, #0x8]
    4984: 390003e9     	strb	w9, [sp]
    4988: 94000000     	bl	0x4988 <aw8693x_cont_config+0x50>
		0000000000004988:  R_AARCH64_CALL26	_printk
    498c: 52800088     	mov	w8, #0x4                // =4
    4990: aa1303e0     	mov	x0, x19
    4994: 52800101     	mov	w1, #0x8                // =8
    4998: 12800062     	mov	w2, #-0x4               // =-4
    499c: 52800043     	mov	w3, #0x2                // =2
    49a0: 39005e68     	strb	w8, [x19, #0x17]
    49a4: 94000000     	bl	0x49a4 <aw8693x_cont_config+0x6c>
		00000000000049a4:  R_AARCH64_CALL26	i2c_w_bits
    49a8: aa1303e0     	mov	x0, x19
    49ac: 52800101     	mov	w1, #0x8                // =8
    49b0: 12800082     	mov	w2, #-0x5               // =-5
    49b4: 52800083     	mov	w3, #0x4                // =4
    49b8: 94000000     	bl	0x49b8 <aw8693x_cont_config+0x80>
		00000000000049b8:  R_AARCH64_CALL26	i2c_w_bits
    49bc: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		00000000000049bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x300
    49c0: 91000000     	add	x0, x0, #0x0
		00000000000049c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x300
    49c4: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		00000000000049c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8
    49c8: 91000063     	add	x3, x3, #0x0
		00000000000049c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8
    49cc: aa1403e1     	mov	x1, x20
    49d0: 52803fc2     	mov	w2, #0x1fe              // =510
    49d4: 94000000     	bl	0x49d4 <aw8693x_cont_config+0x9c>
		00000000000049d4:  R_AARCH64_CALL26	_printk
    49d8: aa1303e0     	mov	x0, x19
    49dc: 528000c1     	mov	w1, #0x6                // =6
    49e0: 12800402     	mov	w2, #-0x21              // =-33
    49e4: 2a1f03e3     	mov	w3, wzr
    49e8: 94000000     	bl	0x49e8 <aw8693x_cont_config+0xb0>
		00000000000049e8:  R_AARCH64_CALL26	i2c_w_bits
    49ec: aa1303e0     	mov	x0, x19
    49f0: 52800981     	mov	w1, #0x4c               // =76
    49f4: 12800802     	mov	w2, #-0x41              // =-65
    49f8: 52800803     	mov	w3, #0x40               // =64
    49fc: 94000000     	bl	0x49fc <aw8693x_cont_config+0xc4>
		00000000000049fc:  R_AARCH64_CALL26	i2c_w_bits
    4a00: 39530268     	ldrb	w8, [x19, #0x4c0]
    4a04: aa1303e0     	mov	x0, x19
    4a08: 528003a1     	mov	w1, #0x1d               // =29
    4a0c: 12801002     	mov	w2, #-0x81              // =-129
    4a10: 53196103     	lsl	w3, w8, #7
    4a14: 94000000     	bl	0x4a14 <aw8693x_cont_config+0xdc>
		0000000000004a14:  R_AARCH64_CALL26	i2c_w_bits
    4a18: 39526a63     	ldrb	w3, [x19, #0x49a]
    4a1c: aa1303e0     	mov	x0, x19
    4a20: 528003a1     	mov	w1, #0x1d               // =29
    4a24: 12800fe2     	mov	w2, #-0x80              // =-128
    4a28: 94000000     	bl	0x4a28 <aw8693x_cont_config+0xf0>
		0000000000004a28:  R_AARCH64_CALL26	i2c_w_bits
    4a2c: 91126e62     	add	x2, x19, #0x49b
    4a30: aa1303e0     	mov	x0, x19
    4a34: 528003c1     	mov	w1, #0x1e               // =30
    4a38: 52800023     	mov	w3, #0x1                // =1
    4a3c: 52800035     	mov	w21, #0x1               // =1
    4a40: 94000000     	bl	0x4a40 <aw8693x_cont_config+0x108>
		0000000000004a40:  R_AARCH64_CALL26	i2c_w_bytes
    4a44: 910003e2     	mov	x2, sp
    4a48: aa1303e0     	mov	x0, x19
    4a4c: 52800401     	mov	w1, #0x20               // =32
    4a50: 52800023     	mov	w3, #0x1                // =1
    4a54: 94000000     	bl	0x4a54 <aw8693x_cont_config+0x11c>
		0000000000004a54:  R_AARCH64_CALL26	i2c_w_bytes
    4a58: 90000000     	adrp	x0, 0x4000 <awrw_store+0x1fc>
		0000000000004a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x591
    4a5c: 91000000     	add	x0, x0, #0x0
		0000000000004a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x591
    4a60: 90000003     	adrp	x3, 0x4000 <awrw_store+0x1fc>
		0000000000004a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5b3
    4a64: 91000063     	add	x3, x3, #0x0
		0000000000004a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5b3
    4a68: aa1403e1     	mov	x1, x20
    4a6c: 52803ae2     	mov	w2, #0x1d7              // =471
    4a70: 52800024     	mov	w4, #0x1                // =1
    4a74: 94000000     	bl	0x4a74 <aw8693x_cont_config+0x13c>
		0000000000004a74:  R_AARCH64_CALL26	_printk
    4a78: 910013e2     	add	x2, sp, #0x4
    4a7c: aa1303e0     	mov	x0, x19
    4a80: 52800121     	mov	w1, #0x9                // =9
    4a84: 52800023     	mov	w3, #0x1                // =1
    4a88: 390013f5     	strb	w21, [sp, #0x4]
    4a8c: 94000000     	bl	0x4a8c <aw8693x_cont_config+0x154>
		0000000000004a8c:  R_AARCH64_CALL26	i2c_w_bytes
    4a90: d5384108     	mrs	x8, SP_EL0
    4a94: f9438908     	ldr	x8, [x8, #0x710]
    4a98: f94007e9     	ldr	x9, [sp, #0x8]
    4a9c: eb09011f     	cmp	x8, x9
    4aa0: 540000e1     	b.ne	0x4abc <aw8693x_cont_config+0x184>
    4aa4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4aa8: f94013f5     	ldr	x21, [sp, #0x20]
    4aac: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4ab0: 910103ff     	add	sp, sp, #0x40
    4ab4: d50323bf     	autiasp
    4ab8: d65f03c0     	ret
    4abc: 94000000     	bl	0x4abc <aw8693x_cont_config+0x184>
		0000000000004abc:  R_AARCH64_CALL26	__stack_chk_fail
