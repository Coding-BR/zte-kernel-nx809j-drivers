
/input/soc_fan.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a00 <nb_fan_parse_dt>:
     a00: d503233f     	paciasp
     a04: d101c3ff     	sub	sp, sp, #0x70
     a08: a9027bfd     	stp	x29, x30, [sp, #0x20]
     a0c: a90367fa     	stp	x26, x25, [sp, #0x30]
     a10: a9045ff8     	stp	x24, x23, [sp, #0x40]
     a14: a90557f6     	stp	x22, x21, [sp, #0x50]
     a18: a9064ff4     	stp	x20, x19, [sp, #0x60]
     a1c: 910083fd     	add	x29, sp, #0x20
     a20: d5384108     	mrs	x8, SP_EL0
     a24: aa0003f3     	mov	x19, x0
     a28: aa1f03e1     	mov	x1, xzr
     a2c: f9438908     	ldr	x8, [x8, #0x710]
     a30: f81f83a8     	stur	x8, [x29, #-0x8]
     a34: f9400008     	ldr	x8, [x0]
     a38: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     a3c: f90003ff     	str	xzr, [sp]
     a40: f9417514     	ldr	x20, [x8, #0x2e8]
     a44: aa1403e0     	mov	x0, x20
     a48: 94000000     	bl	0xa48 <nb_fan_parse_dt+0x48>
		0000000000000a48:  R_AARCH64_CALL26	of_get_next_available_child
     a4c: b4000ca0     	cbz	x0, 0xbe0 <nb_fan_parse_dt+0x1e0>
     a50: aa0003e1     	mov	x1, x0
     a54: 12800015     	mov	w21, #-0x1              // =-1
     a58: aa1403e0     	mov	x0, x20
     a5c: 94000000     	bl	0xa5c <nb_fan_parse_dt+0x5c>
		0000000000000a5c:  R_AARCH64_CALL26	of_get_next_available_child
     a60: aa0003e1     	mov	x1, x0
     a64: 110006b5     	add	w21, w21, #0x1
     a68: b5ffff80     	cbnz	x0, 0xa58 <nb_fan_parse_dt+0x58>
     a6c: 12b00008     	mov	w8, #0x7fffffff         // =2147483647
     a70: 6b0802bf     	cmp	w21, w8
     a74: 54000b62     	b.hs	0xbe0 <nb_fan_parse_dt+0x1e0>
     a78: 35000c95     	cbnz	w21, 0xc08 <nb_fan_parse_dt+0x208>
     a7c: f9400260     	ldr	x0, [x19]
     a80: 52801501     	mov	w1, #0xa8               // =168
     a84: 5281b802     	mov	w2, #0xdc0              // =3520
     a88: 94000000     	bl	0xa88 <nb_fan_parse_dt+0x88>
		0000000000000a88:  R_AARCH64_CALL26	devm_kmalloc
     a8c: f9000660     	str	x0, [x19, #0x8]
     a90: b4000d40     	cbz	x0, 0xc38 <nb_fan_parse_dt+0x238>
     a94: aa1403e0     	mov	x0, x20
     a98: aa1f03e1     	mov	x1, xzr
     a9c: 94000000     	bl	0xa9c <nb_fan_parse_dt+0x9c>
		0000000000000a9c:  R_AARCH64_CALL26	of_get_next_available_child
     aa0: b4000940     	cbz	x0, 0xbc8 <nb_fan_parse_dt+0x1c8>
     aa4: aa0003f5     	mov	x21, x0
     aa8: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x962
     aac: 910002d6     	add	x22, x22, #0x0
		0000000000000aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x962
     ab0: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c
     ab4: 910002f7     	add	x23, x23, #0x0
		0000000000000ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c
     ab8: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     abc: 91000318     	add	x24, x24, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     ac0: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     ac4: 91000339     	add	x25, x25, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     ac8: 14000006     	b	0xae0 <nb_fan_parse_dt+0xe0>
     acc: aa1403e0     	mov	x0, x20
     ad0: aa1503e1     	mov	x1, x21
     ad4: 94000000     	bl	0xad4 <nb_fan_parse_dt+0xd4>
		0000000000000ad4:  R_AARCH64_CALL26	of_get_next_available_child
     ad8: aa0003f5     	mov	x21, x0
     adc: b4000760     	cbz	x0, 0xbc8 <nb_fan_parse_dt+0x1c8>
     ae0: aa1503e0     	mov	x0, x21
     ae4: aa1603e1     	mov	x1, x22
     ae8: aa1f03e2     	mov	x2, xzr
     aec: 94000000     	bl	0xaec <nb_fan_parse_dt+0xec>
		0000000000000aec:  R_AARCH64_CALL26	of_get_property
     af0: b5000060     	cbnz	x0, 0xafc <nb_fan_parse_dt+0xfc>
     af4: f94002a0     	ldr	x0, [x21]
     af8: b4001000     	cbz	x0, 0xcf8 <nb_fan_parse_dt+0x2f8>
     afc: 39400008     	ldrb	w8, [x0]
     b00: 71019908     	subs	w8, w8, #0x66
     b04: 54000081     	b.ne	0xb14 <nb_fan_parse_dt+0x114>
     b08: 39400408     	ldrb	w8, [x0, #0x1]
     b0c: 71018508     	subs	w8, w8, #0x61
     b10: 54000540     	b.eq	0xbb8 <nb_fan_parse_dt+0x1b8>
     b14: 35fffdc8     	cbnz	w8, 0xacc <nb_fan_parse_dt+0xcc>
     b18: f9400668     	ldr	x8, [x19, #0x8]
     b1c: b4fffd88     	cbz	x8, 0xacc <nb_fan_parse_dt+0xcc>
     b20: aa0003fa     	mov	x26, x0
     b24: f9400260     	ldr	x0, [x19]
     b28: 910062a1     	add	x1, x21, #0x18
     b2c: aa1f03e2     	mov	x2, xzr
     b30: 94000000     	bl	0xb30 <nb_fan_parse_dt+0x130>
		0000000000000b30:  R_AARCH64_CALL26	devm_fwnode_pwm_get
     b34: b13ffc1f     	cmn	x0, #0xfff
     b38: 540004c2     	b.hs	0xbd0 <nb_fan_parse_dt+0x1d0>
     b3c: f9400668     	ldr	x8, [x19, #0x8]
     b40: 910003e2     	mov	x2, sp
     b44: f900111a     	str	x26, [x8, #0x20]
     b48: f9400668     	ldr	x8, [x19, #0x8]
     b4c: f9003500     	str	x0, [x8, #0x68]
     b50: f9400668     	ldr	x8, [x19, #0x8]
     b54: f9403501     	ldr	x1, [x8, #0x68]
     b58: a941a820     	ldp	x0, x10, [x1, #0x18]
     b5c: f9402028     	ldr	x8, [x1, #0x40]
     b60: b9402829     	ldr	w9, [x1, #0x28]
     b64: a900a3ff     	stp	xzr, x8, [sp, #0x8]
     b68: f941c808     	ldr	x8, [x0, #0x390]
     b6c: b90013e9     	str	w9, [sp, #0x10]
     b70: f90003ea     	str	x10, [sp]
     b74: f9400d08     	ldr	x8, [x8, #0x18]
     b78: 79002bff     	strh	wzr, [sp, #0x14]
     b7c: b85fc110     	ldur	w16, [x8, #-0x4]
     b80: 7292fa11     	movk	w17, #0x97d0
     b84: 72bbba11     	movk	w17, #0xddd0, lsl #16
     b88: 6b11021f     	cmp	w16, w17
     b8c: 54000040     	b.eq	0xb94 <nb_fan_parse_dt+0x194>
     b90: d4304500     	brk	#0x8228
     b94: d63f0100     	blr	x8
     b98: 35000640     	cbnz	w0, 0xc60 <nb_fan_parse_dt+0x260>
     b9c: aa1703e0     	mov	x0, x23
     ba0: aa1803e1     	mov	x1, x24
     ba4: aa1903e2     	mov	x2, x25
     ba8: 52805c83     	mov	w3, #0x2e4              // =740
     bac: aa1a03e4     	mov	x4, x26
     bb0: 94000000     	bl	0xbb0 <nb_fan_parse_dt+0x1b0>
		0000000000000bb0:  R_AARCH64_CALL26	_printk
     bb4: 17ffffc6     	b	0xacc <nb_fan_parse_dt+0xcc>
     bb8: 39400808     	ldrb	w8, [x0, #0x2]
     bbc: 5101b908     	sub	w8, w8, #0x6e
     bc0: 35fff868     	cbnz	w8, 0xacc <nb_fan_parse_dt+0xcc>
     bc4: 17ffffd5     	b	0xb18 <nb_fan_parse_dt+0x118>
     bc8: 2a1f03f3     	mov	w19, wzr
     bcc: 1400003d     	b	0xcc0 <nb_fan_parse_dt+0x2c0>
     bd0: 3108141f     	cmn	w0, #0x205
     bd4: 540005e1     	b.ne	0xc90 <nb_fan_parse_dt+0x290>
     bd8: 12804093     	mov	w19, #-0x205            // =-517
     bdc: 14000039     	b	0xcc0 <nb_fan_parse_dt+0x2c0>
     be0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x768
     be4: 91000000     	add	x0, x0, #0x0
		0000000000000be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x768
     be8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     bec: 91000021     	add	x1, x1, #0x0
		0000000000000bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     bf0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     bf4: 91000042     	add	x2, x2, #0x0
		0000000000000bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     bf8: 52805443     	mov	w3, #0x2a2              // =674
     bfc: 94000000     	bl	0xbfc <nb_fan_parse_dt+0x1fc>
		0000000000000bfc:  R_AARCH64_CALL26	_printk
     c00: 12800253     	mov	w19, #-0x13             // =-19
     c04: 1400002f     	b	0xcc0 <nb_fan_parse_dt+0x2c0>
     c08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
     c0c: 91000000     	add	x0, x0, #0x0
		0000000000000c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
     c10: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     c14: 91000021     	add	x1, x1, #0x0
		0000000000000c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     c18: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     c1c: 91000042     	add	x2, x2, #0x0
		0000000000000c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     c20: 110006a4     	add	w4, w21, #0x1
     c24: 528054e3     	mov	w3, #0x2a7              // =679
     c28: 52800025     	mov	w5, #0x1                // =1
     c2c: 94000000     	bl	0xc2c <nb_fan_parse_dt+0x22c>
		0000000000000c2c:  R_AARCH64_CALL26	_printk
     c30: 128002b3     	mov	w19, #-0x16             // =-22
     c34: 14000023     	b	0xcc0 <nb_fan_parse_dt+0x2c0>
     c38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x421
     c3c: 91000000     	add	x0, x0, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x421
     c40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     c44: 91000021     	add	x1, x1, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     c48: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     c4c: 91000042     	add	x2, x2, #0x0
		0000000000000c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     c50: 528057a3     	mov	w3, #0x2bd              // =701
     c54: 94000000     	bl	0xc54 <nb_fan_parse_dt+0x254>
		0000000000000c54:  R_AARCH64_CALL26	_printk
     c58: 12800173     	mov	w19, #-0xc              // =-12
     c5c: 14000019     	b	0xcc0 <nb_fan_parse_dt+0x2c0>
     c60: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62a
     c64: 91000108     	add	x8, x8, #0x0
		0000000000000c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62a
     c68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     c6c: 91000021     	add	x1, x1, #0x0
		0000000000000c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     c70: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     c74: 91000042     	add	x2, x2, #0x0
		0000000000000c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     c78: aa0003f3     	mov	x19, x0
     c7c: aa0803e0     	mov	x0, x8
     c80: 52805c23     	mov	w3, #0x2e1              // =737
     c84: aa1a03e4     	mov	x4, x26
     c88: 94000000     	bl	0xc88 <nb_fan_parse_dt+0x288>
		0000000000000c88:  R_AARCH64_CALL26	_printk
     c8c: 1400000d     	b	0xcc0 <nb_fan_parse_dt+0x2c0>
     c90: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79a
     c94: 91000108     	add	x8, x8, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79a
     c98: aa0003f3     	mov	x19, x0
     c9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     ca0: 91000021     	add	x1, x1, #0x0
		0000000000000ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     ca4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     ca8: 91000042     	add	x2, x2, #0x0
		0000000000000ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     cac: aa0803e0     	mov	x0, x8
     cb0: 52805aa3     	mov	w3, #0x2d5              // =725
     cb4: aa1a03e4     	mov	x4, x26
     cb8: 2a1303e5     	mov	w5, w19
     cbc: 94000000     	bl	0xcbc <nb_fan_parse_dt+0x2bc>
		0000000000000cbc:  R_AARCH64_CALL26	_printk
     cc0: d5384108     	mrs	x8, SP_EL0
     cc4: f9438908     	ldr	x8, [x8, #0x710]
     cc8: f85f83a9     	ldur	x9, [x29, #-0x8]
     ccc: eb09011f     	cmp	x8, x9
     cd0: 54000241     	b.ne	0xd18 <nb_fan_parse_dt+0x318>
     cd4: 2a1303e0     	mov	w0, w19
     cd8: a9464ff4     	ldp	x20, x19, [sp, #0x60]
     cdc: a94557f6     	ldp	x22, x21, [sp, #0x50]
     ce0: a9445ff8     	ldp	x24, x23, [sp, #0x40]
     ce4: a94367fa     	ldp	x26, x25, [sp, #0x30]
     ce8: a9427bfd     	ldp	x29, x30, [sp, #0x20]
     cec: 9101c3ff     	add	sp, sp, #0x70
     cf0: d50323bf     	autiasp
     cf4: d65f03c0     	ret
     cf8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6b4
     cfc: 91000000     	add	x0, x0, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6b4
     d00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x704
     d04: 91000021     	add	x1, x1, #0x0
		0000000000000d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x704
     d08: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6e
     d0c: 91000042     	add	x2, x2, #0x0
		0000000000000d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6e
     d10: 52805883     	mov	w3, #0x2c4              // =708
     d14: 17ffffba     	b	0xbfc <nb_fan_parse_dt+0x1fc>
     d18: 94000000     	bl	0xd18 <nb_fan_parse_dt+0x318>
		0000000000000d18:  R_AARCH64_CALL26	__stack_chk_fail
