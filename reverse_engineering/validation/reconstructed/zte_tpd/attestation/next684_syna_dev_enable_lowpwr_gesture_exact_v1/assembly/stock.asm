
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000dac0 <syna_dev_enable_lowpwr_gesture>:
    dac0: 39560408     	ldrb	w8, [x0, #0x581]
    dac4: 7100051f     	cmp	w8, #0x1
    dac8: 54000060     	b.eq	0xdad4 <syna_dev_enable_lowpwr_gesture+0x14>
    dacc: 2a1f03e0     	mov	w0, wzr
    dad0: d65f03c0     	ret
    dad4: d503233f     	paciasp
    dad8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    dadc: a9015ff8     	stp	x24, x23, [sp, #0x10]
    dae0: a90257f6     	stp	x22, x21, [sp, #0x20]
    dae4: a9034ff4     	stp	x20, x19, [sp, #0x30]
    dae8: 910003fd     	mov	x29, sp
    daec: f9413808     	ldr	x8, [x0, #0x270]
    daf0: 394bd009     	ldrb	w9, [x0, #0x2f4]
    daf4: aa0003f7     	mov	x23, x0
    daf8: 36000121     	tbz	w1, #0x0, 0xdb1c <syna_dev_enable_lowpwr_gesture+0x5c>
    dafc: 52800034     	mov	w20, #0x1               // =1
    db00: 2a0103f8     	mov	w24, w1
    db04: 2a0203f3     	mov	w19, w2
    db08: 370002e9     	tbnz	w9, #0x0, 0xdb64 <syna_dev_enable_lowpwr_gesture+0xa4>
    db0c: 90000016     	adrp	x22, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5672
    db10: 910002d6     	add	x22, x22, #0x0
		000000000000db10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5672
    db14: 52800035     	mov	w21, #0x1               // =1
    db18: 14000008     	b	0xdb38 <syna_dev_enable_lowpwr_gesture+0x78>
    db1c: 2a0103f8     	mov	w24, w1
    db20: 2a0203f3     	mov	w19, w2
    db24: 340001e9     	cbz	w9, 0xdb60 <syna_dev_enable_lowpwr_gesture+0xa0>
    db28: 2a1f03f5     	mov	w21, wzr
    db2c: 2a1f03f4     	mov	w20, wzr
    db30: 90000016     	adrp	x22, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4591
    db34: 910002d6     	add	x22, x22, #0x0
		000000000000db34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4591
    db38: b940b900     	ldr	w0, [x8, #0xb8]
    db3c: 2a1503e1     	mov	w1, w21
    db40: 94000000     	bl	0xdb40 <syna_dev_enable_lowpwr_gesture+0x80>
		000000000000db40:  R_AARCH64_CALL26	irq_set_irq_wake
    db44: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b76
    db48: 91000021     	add	x1, x1, #0x0
		000000000000db48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b76
    db4c: aa1603e0     	mov	x0, x22
    db50: 94000000     	bl	0xdb50 <syna_dev_enable_lowpwr_gesture+0x90>
		000000000000db50:  R_AARCH64_CALL26	_printk
    db54: aa1703e0     	mov	x0, x23
    db58: 390bd2f5     	strb	w21, [x23, #0x2f4]
    db5c: 14000002     	b	0xdb64 <syna_dev_enable_lowpwr_gesture+0xa4>
    db60: 2a1f03f4     	mov	w20, wzr
    db64: f9400000     	ldr	x0, [x0]
    db68: 52800121     	mov	w1, #0x9                // =9
    db6c: 2a1403e2     	mov	w2, w20
    db70: 2a1303e3     	mov	w3, w19
    db74: 94000000     	bl	0xdb74 <syna_dev_enable_lowpwr_gesture+0xb4>
		000000000000db74:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    db78: 36f801e0     	tbz	w0, #0x1f, 0xdbb4 <syna_dev_enable_lowpwr_gesture+0xf4>
    db7c: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0ad
    db80: 91000108     	add	x8, x8, #0x0
		000000000000db80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0ad
    db84: 7200031f     	tst	w24, #0x1
    db88: 90000009     	adrp	x9, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbad6
    db8c: 91000129     	add	x9, x9, #0x0
		000000000000db8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbad6
    db90: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b76
    db94: 91000021     	add	x1, x1, #0x0
		000000000000db94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b76
    db98: 9a881122     	csel	x2, x9, x8, ne
    db9c: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000db9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1fd5
    dba0: 91000108     	add	x8, x8, #0x0
		000000000000dba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1fd5
    dba4: 2a0003f3     	mov	w19, w0
    dba8: aa0803e0     	mov	x0, x8
    dbac: 94000000     	bl	0xdbac <syna_dev_enable_lowpwr_gesture+0xec>
		000000000000dbac:  R_AARCH64_CALL26	_printk
    dbb0: 1400002e     	b	0xdc68 <syna_dev_enable_lowpwr_gesture+0x1a8>
    dbb4: b945c6e9     	ldr	w9, [x23, #0x5c4]
    dbb8: b945b2ea     	ldr	w10, [x23, #0x5b0]
    dbbc: 52801fc1     	mov	w1, #0xfe               // =254
    dbc0: f94002e0     	ldr	x0, [x23]
    dbc4: 2a1303e3     	mov	w3, w19
    dbc8: 2a0a3522     	orr	w2, w9, w10, lsl #13
    dbcc: 94000000     	bl	0xdbcc <syna_dev_enable_lowpwr_gesture+0x10c>
		000000000000dbcc:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    dbd0: 36f80120     	tbz	w0, #0x1f, 0xdbf4 <syna_dev_enable_lowpwr_gesture+0x134>
    dbd4: 90000008     	adrp	x8, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dbd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e91
    dbd8: 91000108     	add	x8, x8, #0x0
		000000000000dbd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e91
    dbdc: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dbdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b76
    dbe0: 91000021     	add	x1, x1, #0x0
		000000000000dbe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b76
    dbe4: 2a0003f3     	mov	w19, w0
    dbe8: aa0803e0     	mov	x0, x8
    dbec: 94000000     	bl	0xdbec <syna_dev_enable_lowpwr_gesture+0x12c>
		000000000000dbec:  R_AARCH64_CALL26	_printk
    dbf0: 1400001e     	b	0xdc68 <syna_dev_enable_lowpwr_gesture+0x1a8>
    dbf4: b945b2e2     	ldr	w2, [x23, #0x5b0]
    dbf8: b945c6e3     	ldr	w3, [x23, #0x5c4]
    dbfc: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dbfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x131e
    dc00: 91000000     	add	x0, x0, #0x0
		000000000000dc00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x131e
    dc04: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dc04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b76
    dc08: 91000021     	add	x1, x1, #0x0
		000000000000dc08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b76
    dc0c: 94000000     	bl	0xdc0c <syna_dev_enable_lowpwr_gesture+0x14c>
		000000000000dc0c:  R_AARCH64_CALL26	_printk
    dc10: b945bae8     	ldr	w8, [x23, #0x5b8]
    dc14: f94002e0     	ldr	x0, [x23]
    dc18: 52801a81     	mov	w1, #0xd4               // =212
    dc1c: 2a1303e3     	mov	w3, w19
    dc20: 7100011f     	cmp	w8, #0x0
    dc24: 52800068     	mov	w8, #0x3                // =3
    dc28: 1a8803e2     	csel	w2, wzr, w8, eq
    dc2c: 94000000     	bl	0xdc2c <syna_dev_enable_lowpwr_gesture+0x16c>
		000000000000dc2c:  R_AARCH64_CALL26	syna_tcm_set_dynamic_config
    dc30: 2a0003f3     	mov	w19, w0
    dc34: 36f800e0     	tbz	w0, #0x1f, 0xdc50 <syna_dev_enable_lowpwr_gesture+0x190>
    dc38: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dc38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9e91
    dc3c: 91000000     	add	x0, x0, #0x0
		000000000000dc3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9e91
    dc40: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dc40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b76
    dc44: 91000021     	add	x1, x1, #0x0
		000000000000dc44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b76
    dc48: 94000000     	bl	0xdc48 <syna_dev_enable_lowpwr_gesture+0x188>
		000000000000dc48:  R_AARCH64_CALL26	_printk
    dc4c: 14000007     	b	0xdc68 <syna_dev_enable_lowpwr_gesture+0x1a8>
    dc50: b945b2e2     	ldr	w2, [x23, #0x5b0]
    dc54: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dc54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc0b5
    dc58: 91000000     	add	x0, x0, #0x0
		000000000000dc58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc0b5
    dc5c: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dc5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b76
    dc60: 91000021     	add	x1, x1, #0x0
		000000000000dc60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b76
    dc64: 94000000     	bl	0xdc64 <syna_dev_enable_lowpwr_gesture+0x1a4>
		000000000000dc64:  R_AARCH64_CALL26	_printk
    dc68: 2a1303e0     	mov	w0, w19
    dc6c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    dc70: a94257f6     	ldp	x22, x21, [sp, #0x20]
    dc74: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    dc78: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    dc7c: d50323bf     	autiasp
    dc80: d65f03c0     	ret
