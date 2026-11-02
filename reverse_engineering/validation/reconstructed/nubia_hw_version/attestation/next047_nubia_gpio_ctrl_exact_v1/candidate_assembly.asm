
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b68 <nubia_gpio_ctrl>:
     b68: d503233f     	paciasp
     b6c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     b70: f9000bf5     	str	x21, [sp, #0x10]
     b74: a9024ff4     	stp	x20, x19, [sp, #0x20]
     b78: 910003fd     	mov	x29, sp
     b7c: aa0003f3     	mov	x19, x0
     b80: 91004000     	add	x0, x0, #0x10
     b84: 52800301     	mov	w1, #0x18               // =24
     b88: 5281b802     	mov	w2, #0xdc0              // =3520
     b8c: 94000000     	bl	0xb8c <nubia_gpio_ctrl+0x24>
		0000000000000b8c:  R_AARCH64_CALL26	devm_kmalloc
     b90: b4000460     	cbz	x0, 0xc1c <nubia_gpio_ctrl+0xb4>
     b94: aa0003f4     	mov	x20, x0
     b98: 91004260     	add	x0, x19, #0x10
     b9c: 94000000     	bl	0xb9c <nubia_gpio_ctrl+0x34>
		0000000000000b9c:  R_AARCH64_CALL26	devm_pinctrl_get
     ba0: f9000280     	str	x0, [x20]
     ba4: b40004c0     	cbz	x0, 0xc3c <nubia_gpio_ctrl+0xd4>
     ba8: b13ffc1f     	cmn	x0, #0xfff
     bac: 54000482     	b.hs	0xc3c <nubia_gpio_ctrl+0xd4>
     bb0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x894
     bb4: 91000021     	add	x1, x1, #0x0
		0000000000000bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x894
     bb8: 94000000     	bl	0xbb8 <nubia_gpio_ctrl+0x50>
		0000000000000bb8:  R_AARCH64_CALL26	pinctrl_lookup_state
     bbc: aa1403f5     	mov	x21, x20
     bc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b9
     bc4: 91000021     	add	x1, x1, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b9
     bc8: f8008ea0     	str	x0, [x21, #0x8]!
     bcc: b40002c0     	cbz	x0, 0xc24 <nubia_gpio_ctrl+0xbc>
     bd0: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     bd4: 54000288     	b.hi	0xc24 <nubia_gpio_ctrl+0xbc>
     bd8: f9400280     	ldr	x0, [x20]
     bdc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x64c
     be0: 91000021     	add	x1, x1, #0x0
		0000000000000be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x64c
     be4: 94000000     	bl	0xbe4 <nubia_gpio_ctrl+0x7c>
		0000000000000be4:  R_AARCH64_CALL26	pinctrl_lookup_state
     be8: aa1403f5     	mov	x21, x20
     bec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x65e
     bf0: 91000021     	add	x1, x1, #0x0
		0000000000000bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x65e
     bf4: f8010ea0     	str	x0, [x21, #0x10]!
     bf8: b4000160     	cbz	x0, 0xc24 <nubia_gpio_ctrl+0xbc>
     bfc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     c00: 54000128     	b.hi	0xc24 <nubia_gpio_ctrl+0xbc>
     c04: a9400680     	ldp	x0, x1, [x20]
     c08: 94000000     	bl	0xc08 <nubia_gpio_ctrl+0xa0>
		0000000000000c08:  R_AARCH64_CALL26	pinctrl_select_state
     c0c: 35000340     	cbnz	w0, 0xc74 <nubia_gpio_ctrl+0x10c>
     c10: 2a1f03f5     	mov	w21, wzr
     c14: f9005674     	str	x20, [x19, #0xa8]
     c18: 14000011     	b	0xc5c <nubia_gpio_ctrl+0xf4>
     c1c: 12800175     	mov	w21, #-0xc              // =-12
     c20: 1400000f     	b	0xc5c <nubia_gpio_ctrl+0xf4>
     c24: 91004260     	add	x0, x19, #0x10
     c28: 94000000     	bl	0xc28 <nubia_gpio_ctrl+0xc0>
		0000000000000c28:  R_AARCH64_CALL26	_dev_err
     c2c: f9400280     	ldr	x0, [x20]
     c30: f94002b5     	ldr	x21, [x21]
     c34: 94000000     	bl	0xc34 <nubia_gpio_ctrl+0xcc>
		0000000000000c34:  R_AARCH64_CALL26	devm_pinctrl_put
     c38: 14000006     	b	0xc50 <nubia_gpio_ctrl+0xe8>
     c3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x791
     c40: 91000021     	add	x1, x1, #0x0
		0000000000000c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x791
     c44: 91004260     	add	x0, x19, #0x10
     c48: 94000000     	bl	0xc48 <nubia_gpio_ctrl+0xe0>
		0000000000000c48:  R_AARCH64_CALL26	_dev_err
     c4c: f9400295     	ldr	x21, [x20]
     c50: 91004260     	add	x0, x19, #0x10
     c54: aa1403e1     	mov	x1, x20
     c58: 94000000     	bl	0xc58 <nubia_gpio_ctrl+0xf0>
		0000000000000c58:  R_AARCH64_CALL26	devm_kfree
     c5c: 2a1503e0     	mov	w0, w21
     c60: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c64: f9400bf5     	ldr	x21, [sp, #0x10]
     c68: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     c6c: d50323bf     	autiasp
     c70: d65f03c0     	ret
     c74: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6de
     c78: 91000021     	add	x1, x1, #0x0
		0000000000000c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6de
     c7c: 91004260     	add	x0, x19, #0x10
     c80: 94000000     	bl	0xc80 <nubia_gpio_ctrl+0x118>
		0000000000000c80:  R_AARCH64_CALL26	_dev_err
     c84: 17ffffe3     	b	0xc10 <nubia_gpio_ctrl+0xa8>
