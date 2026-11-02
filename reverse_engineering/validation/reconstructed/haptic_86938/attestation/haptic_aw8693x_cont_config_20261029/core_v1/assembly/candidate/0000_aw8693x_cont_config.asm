
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004908 <aw8693x_cont_config>:
    4908: d503233f     	paciasp
    490c: d10103ff     	sub	sp, sp, #0x40
    4910: a9017bfd     	stp	x29, x30, [sp, #0x10]
    4914: f90013f5     	str	x21, [sp, #0x20]
    4918: a9034ff4     	stp	x20, x19, [sp, #0x30]
    491c: 910043fd     	add	x29, sp, #0x10
    4920: d5384108     	mrs	x8, SP_EL0
    4924: 90000014     	adrp	x20, 0x4000 <awrw_store+0x210>
		0000000000004924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    4928: 91000294     	add	x20, x20, #0x0
		0000000000004928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    492c: f9438908     	ldr	x8, [x8, #0x710]
    4930: aa0003f3     	mov	x19, x0
    4934: 52801fe9     	mov	w9, #0xff               // =255
    4938: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6db
    493c: 91000000     	add	x0, x0, #0x0
		000000000000493c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6db
    4940: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x368
    4944: 91000063     	add	x3, x3, #0x0
		0000000000004944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x368
    4948: aa1403e1     	mov	x1, x20
    494c: 52804ea2     	mov	w2, #0x275              // =629
    4950: f90007e8     	str	x8, [sp, #0x8]
    4954: 390003e9     	strb	w9, [sp]
    4958: 94000000     	bl	0x4958 <aw8693x_cont_config+0x50>
		0000000000004958:  R_AARCH64_CALL26	_printk
    495c: 52800088     	mov	w8, #0x4                // =4
    4960: aa1303e0     	mov	x0, x19
    4964: 52800101     	mov	w1, #0x8                // =8
    4968: 12800062     	mov	w2, #-0x4               // =-4
    496c: 52800043     	mov	w3, #0x2                // =2
    4970: 39005e68     	strb	w8, [x19, #0x17]
    4974: 94000000     	bl	0x4974 <aw8693x_cont_config+0x6c>
		0000000000004974:  R_AARCH64_CALL26	i2c_w_bits
    4978: aa1303e0     	mov	x0, x19
    497c: 52800101     	mov	w1, #0x8                // =8
    4980: 12800082     	mov	w2, #-0x5               // =-5
    4984: 52800083     	mov	w3, #0x4                // =4
    4988: 94000000     	bl	0x4988 <aw8693x_cont_config+0x80>
		0000000000004988:  R_AARCH64_CALL26	i2c_w_bits
    498c: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		000000000000498c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x165
    4990: 91000000     	add	x0, x0, #0x0
		0000000000004990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x165
    4994: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc3
    4998: 91000063     	add	x3, x3, #0x0
		0000000000004998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc3
    499c: aa1403e1     	mov	x1, x20
    49a0: 52803fc2     	mov	w2, #0x1fe              // =510
    49a4: 94000000     	bl	0x49a4 <aw8693x_cont_config+0x9c>
		00000000000049a4:  R_AARCH64_CALL26	_printk
    49a8: aa1303e0     	mov	x0, x19
    49ac: 528000c1     	mov	w1, #0x6                // =6
    49b0: 12800402     	mov	w2, #-0x21              // =-33
    49b4: 2a1f03e3     	mov	w3, wzr
    49b8: 94000000     	bl	0x49b8 <aw8693x_cont_config+0xb0>
		00000000000049b8:  R_AARCH64_CALL26	i2c_w_bits
    49bc: aa1303e0     	mov	x0, x19
    49c0: 52800981     	mov	w1, #0x4c               // =76
    49c4: 12800802     	mov	w2, #-0x41              // =-65
    49c8: 52800803     	mov	w3, #0x40               // =64
    49cc: 94000000     	bl	0x49cc <aw8693x_cont_config+0xc4>
		00000000000049cc:  R_AARCH64_CALL26	i2c_w_bits
    49d0: 39530268     	ldrb	w8, [x19, #0x4c0]
    49d4: aa1303e0     	mov	x0, x19
    49d8: 528003a1     	mov	w1, #0x1d               // =29
    49dc: 12801002     	mov	w2, #-0x81              // =-129
    49e0: 53196103     	lsl	w3, w8, #7
    49e4: 94000000     	bl	0x49e4 <aw8693x_cont_config+0xdc>
		00000000000049e4:  R_AARCH64_CALL26	i2c_w_bits
    49e8: 39526a63     	ldrb	w3, [x19, #0x49a]
    49ec: aa1303e0     	mov	x0, x19
    49f0: 528003a1     	mov	w1, #0x1d               // =29
    49f4: 12800fe2     	mov	w2, #-0x80              // =-128
    49f8: 94000000     	bl	0x49f8 <aw8693x_cont_config+0xf0>
		00000000000049f8:  R_AARCH64_CALL26	i2c_w_bits
    49fc: 91126e62     	add	x2, x19, #0x49b
    4a00: aa1303e0     	mov	x0, x19
    4a04: 528003c1     	mov	w1, #0x1e               // =30
    4a08: 52800023     	mov	w3, #0x1                // =1
    4a0c: 52800035     	mov	w21, #0x1               // =1
    4a10: 94000000     	bl	0x4a10 <aw8693x_cont_config+0x108>
		0000000000004a10:  R_AARCH64_CALL26	i2c_w_bytes
    4a14: 910003e2     	mov	x2, sp
    4a18: aa1303e0     	mov	x0, x19
    4a1c: 52800401     	mov	w1, #0x20               // =32
    4a20: 52800023     	mov	w3, #0x1                // =1
    4a24: 94000000     	bl	0x4a24 <aw8693x_cont_config+0x11c>
		0000000000004a24:  R_AARCH64_CALL26	i2c_w_bytes
    4a28: 90000000     	adrp	x0, 0x4000 <awrw_store+0x210>
		0000000000004a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x315
    4a2c: 91000000     	add	x0, x0, #0x0
		0000000000004a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x315
    4a30: 90000003     	adrp	x3, 0x4000 <awrw_store+0x210>
		0000000000004a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x337
    4a34: 91000063     	add	x3, x3, #0x0
		0000000000004a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x337
    4a38: aa1403e1     	mov	x1, x20
    4a3c: 52803ae2     	mov	w2, #0x1d7              // =471
    4a40: 52800024     	mov	w4, #0x1                // =1
    4a44: 94000000     	bl	0x4a44 <aw8693x_cont_config+0x13c>
		0000000000004a44:  R_AARCH64_CALL26	_printk
    4a48: 910013e2     	add	x2, sp, #0x4
    4a4c: aa1303e0     	mov	x0, x19
    4a50: 52800121     	mov	w1, #0x9                // =9
    4a54: 52800023     	mov	w3, #0x1                // =1
    4a58: 390013f5     	strb	w21, [sp, #0x4]
    4a5c: 94000000     	bl	0x4a5c <aw8693x_cont_config+0x154>
		0000000000004a5c:  R_AARCH64_CALL26	i2c_w_bytes
    4a60: d5384108     	mrs	x8, SP_EL0
    4a64: f9438908     	ldr	x8, [x8, #0x710]
    4a68: f94007e9     	ldr	x9, [sp, #0x8]
    4a6c: eb09011f     	cmp	x8, x9
    4a70: 540000e1     	b.ne	0x4a8c <aw8693x_cont_config+0x184>
    4a74: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    4a78: f94013f5     	ldr	x21, [sp, #0x20]
    4a7c: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    4a80: 910103ff     	add	sp, sp, #0x40
    4a84: d50323bf     	autiasp
    4a88: d65f03c0     	ret
    4a8c: 94000000     	bl	0x4a8c <aw8693x_cont_config+0x184>
		0000000000004a8c:  R_AARCH64_CALL26	__stack_chk_fail
