
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029ab8 <syna_dev_enable_lowpwr_gesture>:
   29ab8: 39560408     	ldrb	w8, [x0, #0x581]
   29abc: 7100051f     	cmp	w8, #0x1
   29ac0: 54000060     	b.eq	0x29acc <syna_dev_enable_lowpwr_gesture+0x14>
   29ac4: 2a1f03e0     	mov	w0, wzr
   29ac8: d65f03c0     	ret
   29acc: d503233f     	paciasp
   29ad0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   29ad4: a9015ff8     	stp	x24, x23, [sp, #0x10]
   29ad8: a90257f6     	stp	x22, x21, [sp, #0x20]
   29adc: a9034ff4     	stp	x20, x19, [sp, #0x30]
   29ae0: 910003fd     	mov	x29, sp
   29ae4: f9413808     	ldr	x8, [x0, #0x270]
   29ae8: 394bd009     	ldrb	w9, [x0, #0x2f4]
   29aec: aa0003f7     	mov	x23, x0
   29af0: 36000121     	tbz	w1, #0x0, 0x29b14 <syna_dev_enable_lowpwr_gesture+0x5c>
   29af4: 52800034     	mov	w20, #0x1               // =1
   29af8: 2a0103f8     	mov	w24, w1
   29afc: 2a0203f3     	mov	w19, w2
   29b00: 370002e9     	tbnz	w9, #0x0, 0x29b5c <syna_dev_enable_lowpwr_gesture+0xa4>
   29b04: 90000016     	adrp	x22, 0x29000 <syna_dev_probe+0x8>
		0000000000029b04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b77
   29b08: 910002d6     	add	x22, x22, #0x0
		0000000000029b08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b77
   29b0c: 52800035     	mov	w21, #0x1               // =1
   29b10: 14000008     	b	0x29b30 <syna_dev_enable_lowpwr_gesture+0x78>
   29b14: 2a0103f8     	mov	w24, w1
   29b18: 2a0203f3     	mov	w19, w2
   29b1c: 340001e9     	cbz	w9, 0x29b58 <syna_dev_enable_lowpwr_gesture+0xa0>
   29b20: 2a1f03f5     	mov	w21, wzr
   29b24: 2a1f03f4     	mov	w20, wzr
   29b28: 90000016     	adrp	x22, 0x29000 <syna_dev_probe+0x8>
		0000000000029b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x194e0
   29b2c: 910002d6     	add	x22, x22, #0x0
		0000000000029b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x194e0
   29b30: b940b900     	ldr	w0, [x8, #0xb8]
   29b34: 2a1503e1     	mov	w1, w21
   29b38: 94000000     	bl	0x29b38 <syna_dev_enable_lowpwr_gesture+0x80>
		0000000000029b38:  R_AARCH64_CALL26	irq_set_irq_wake
   29b3c: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x8>
		0000000000029b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a65
   29b40: 91000021     	add	x1, x1, #0x0
		0000000000029b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a65
   29b44: aa1603e0     	mov	x0, x22
   29b48: 94000000     	bl	0x29b48 <syna_dev_enable_lowpwr_gesture+0x90>
		0000000000029b48:  R_AARCH64_CALL26	_printk
   29b4c: aa1703e0     	mov	x0, x23
   29b50: 390bd2f5     	strb	w21, [x23, #0x2f4]
   29b54: 14000002     	b	0x29b5c <syna_dev_enable_lowpwr_gesture+0xa4>
   29b58: 2a1f03f4     	mov	w20, wzr
   29b5c: f9400000     	ldr	x0, [x0]
   29b60: 52800121     	mov	w1, #0x9                // =9
   29b64: 2a1403e2     	mov	w2, w20
   29b68: 2a1303e3     	mov	w3, w19
   29b6c: 94000000     	bl	0x29b6c <syna_dev_enable_lowpwr_gesture+0xb4>
		0000000000029b6c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   29b70: 36f801e0     	tbz	w0, #0x1f, 0x29bac <syna_dev_enable_lowpwr_gesture+0xf4>
   29b74: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x8>
		0000000000029b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4c0
   29b78: 91000108     	add	x8, x8, #0x0
		0000000000029b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4c0
   29b7c: 7200031f     	tst	w24, #0x1
   29b80: 90000009     	adrp	x9, 0x29000 <syna_dev_probe+0x8>
		0000000000029b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1a9
   29b84: 91000129     	add	x9, x9, #0x0
		0000000000029b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1a9
   29b88: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x8>
		0000000000029b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a65
   29b8c: 91000021     	add	x1, x1, #0x0
		0000000000029b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a65
   29b90: 9a881122     	csel	x2, x9, x8, ne
   29b94: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x8>
		0000000000029b94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1855c
   29b98: 91000108     	add	x8, x8, #0x0
		0000000000029b98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1855c
   29b9c: 2a0003f3     	mov	w19, w0
   29ba0: aa0803e0     	mov	x0, x8
   29ba4: 94000000     	bl	0x29ba4 <syna_dev_enable_lowpwr_gesture+0xec>
		0000000000029ba4:  R_AARCH64_CALL26	_printk
   29ba8: 1400002e     	b	0x29c60 <syna_dev_enable_lowpwr_gesture+0x1a8>
   29bac: b945c6e9     	ldr	w9, [x23, #0x5c4]
   29bb0: b945b2ea     	ldr	w10, [x23, #0x5b0]
   29bb4: 52801fc1     	mov	w1, #0xfe               // =254
   29bb8: f94002e0     	ldr	x0, [x23]
   29bbc: 2a1303e3     	mov	w3, w19
   29bc0: 2a0a3522     	orr	w2, w9, w10, lsl #13
   29bc4: 94000000     	bl	0x29bc4 <syna_dev_enable_lowpwr_gesture+0x10c>
		0000000000029bc4:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   29bc8: 36f80120     	tbz	w0, #0x1f, 0x29bec <syna_dev_enable_lowpwr_gesture+0x134>
   29bcc: 90000008     	adrp	x8, 0x29000 <syna_dev_probe+0x8>
		0000000000029bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7f1
   29bd0: 91000108     	add	x8, x8, #0x0
		0000000000029bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7f1
   29bd4: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x8>
		0000000000029bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a65
   29bd8: 91000021     	add	x1, x1, #0x0
		0000000000029bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a65
   29bdc: 2a0003f3     	mov	w19, w0
   29be0: aa0803e0     	mov	x0, x8
   29be4: 94000000     	bl	0x29be4 <syna_dev_enable_lowpwr_gesture+0x12c>
		0000000000029be4:  R_AARCH64_CALL26	_printk
   29be8: 1400001e     	b	0x29c60 <syna_dev_enable_lowpwr_gesture+0x1a8>
   29bec: b945b2e2     	ldr	w2, [x23, #0x5b0]
   29bf0: b945c6e3     	ldr	w3, [x23, #0x5c4]
   29bf4: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x8>
		0000000000029bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17e1d
   29bf8: 91000000     	add	x0, x0, #0x0
		0000000000029bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17e1d
   29bfc: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x8>
		0000000000029bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a65
   29c00: 91000021     	add	x1, x1, #0x0
		0000000000029c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a65
   29c04: 94000000     	bl	0x29c04 <syna_dev_enable_lowpwr_gesture+0x14c>
		0000000000029c04:  R_AARCH64_CALL26	_printk
   29c08: b945bae8     	ldr	w8, [x23, #0x5b8]
   29c0c: f94002e0     	ldr	x0, [x23]
   29c10: 52801a81     	mov	w1, #0xd4               // =212
   29c14: 2a1303e3     	mov	w3, w19
   29c18: 7100011f     	cmp	w8, #0x0
   29c1c: 52800068     	mov	w8, #0x3                // =3
   29c20: 1a8803e2     	csel	w2, wzr, w8, eq
   29c24: 94000000     	bl	0x29c24 <syna_dev_enable_lowpwr_gesture+0x16c>
		0000000000029c24:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
   29c28: 2a0003f3     	mov	w19, w0
   29c2c: 36f800e0     	tbz	w0, #0x1f, 0x29c48 <syna_dev_enable_lowpwr_gesture+0x190>
   29c30: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x8>
		0000000000029c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b7f1
   29c34: 91000000     	add	x0, x0, #0x0
		0000000000029c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b7f1
   29c38: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x8>
		0000000000029c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a65
   29c3c: 91000021     	add	x1, x1, #0x0
		0000000000029c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a65
   29c40: 94000000     	bl	0x29c40 <syna_dev_enable_lowpwr_gesture+0x188>
		0000000000029c40:  R_AARCH64_CALL26	_printk
   29c44: 14000007     	b	0x29c60 <syna_dev_enable_lowpwr_gesture+0x1a8>
   29c48: b945b2e2     	ldr	w2, [x23, #0x5b0]
   29c4c: 90000000     	adrp	x0, 0x29000 <syna_dev_probe+0x8>
		0000000000029c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c76c
   29c50: 91000000     	add	x0, x0, #0x0
		0000000000029c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c76c
   29c54: 90000001     	adrp	x1, 0x29000 <syna_dev_probe+0x8>
		0000000000029c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a65
   29c58: 91000021     	add	x1, x1, #0x0
		0000000000029c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a65
   29c5c: 94000000     	bl	0x29c5c <syna_dev_enable_lowpwr_gesture+0x1a4>
		0000000000029c5c:  R_AARCH64_CALL26	_printk
   29c60: 2a1303e0     	mov	w0, w19
   29c64: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   29c68: a94257f6     	ldp	x22, x21, [sp, #0x20]
   29c6c: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   29c70: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   29c74: d50323bf     	autiasp
   29c78: d65f03c0     	ret
