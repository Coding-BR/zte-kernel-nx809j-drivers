
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000aac <aw_parsing_bin_file>:
     aac: d503233f     	paciasp
     ab0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     ab4: f9000bf7     	str	x23, [sp, #0x10]
     ab8: a90257f6     	stp	x22, x21, [sp, #0x20]
     abc: a9034ff4     	stp	x20, x19, [sp, #0x30]
     ac0: 910003fd     	mov	x29, sp
     ac4: aa0003f3     	mov	x19, x0
     ac8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39b6
     acc: 91000000     	add	x0, x0, #0x0
		0000000000000acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39b6
     ad0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     ad4: 91000021     	add	x1, x1, #0x0
		0000000000000ad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     ad8: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafe
     adc: 91000063     	add	x3, x3, #0x0
		0000000000000adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafe
     ae0: 528038c2     	mov	w2, #0x1c6              // =454
     ae4: 94000000     	bl	0xae4 <aw_parsing_bin_file+0x38>
		0000000000000ae4:  R_AARCH64_CALL26	_printk
     ae8: b5000133     	cbnz	x19, 0xb0c <aw_parsing_bin_file+0x60>
     aec: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x215e
     af0: 91000000     	add	x0, x0, #0x0
		0000000000000af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x215e
     af4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     af8: 91000021     	add	x1, x1, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     afc: 52803902     	mov	w2, #0x1c8              // =456
     b00: 94000000     	bl	0xb00 <aw_parsing_bin_file+0x54>
		0000000000000b00:  R_AARCH64_CALL26	_printk
     b04: 128000e0     	mov	w0, #-0x8               // =-8
     b08: 1400002f     	b	0xbc4 <aw_parsing_bin_file+0x118>
     b0c: 91400a69     	add	x9, x19, #0x2, lsl #12  // =0x2000
     b10: 52841d08     	mov	w8, #0x20e8             // =8424
     b14: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dab
     b18: 91000000     	add	x0, x0, #0x0
		0000000000000b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dab
     b1c: b940ed34     	ldr	w20, [x9, #0xec]
     b20: 8b080268     	add	x8, x19, x8
     b24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     b28: 91000021     	add	x1, x1, #0x0
		0000000000000b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     b2c: 52803662     	mov	w2, #0x1b3              // =435
     b30: 2a1403e3     	mov	w3, w20
     b34: a9007e68     	stp	x8, xzr, [x19]
     b38: b900127f     	str	wzr, [x19, #0x10]
     b3c: 94000000     	bl	0xb3c <aw_parsing_bin_file+0x90>
		0000000000000b3c:  R_AARCH64_CALL26	_printk
     b40: 52a02008     	mov	w8, #0x1000000          // =16777216
     b44: 6b08029f     	cmp	w20, w8
     b48: 540001e1     	b.ne	0xb84 <aw_parsing_bin_file+0xd8>
     b4c: aa1303e0     	mov	x0, x19
     b50: 94000000     	bl	0xb50 <aw_parsing_bin_file+0xa4>
		0000000000000b50:  R_AARCH64_CALL26	aw_parse_bin_header_1_0_0
     b54: 37f80260     	tbnz	w0, #0x1f, 0xba0 <aw_parsing_bin_file+0xf4>
     b58: b9400a68     	ldr	w8, [x19, #0x8]
     b5c: f900027f     	str	xzr, [x19]
     b60: 350003e8     	cbnz	w8, 0xbdc <aw_parsing_bin_file+0x130>
     b64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fab
     b68: 91000000     	add	x0, x0, #0x0
		0000000000000b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fab
     b6c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     b70: 91000021     	add	x1, x1, #0x0
		0000000000000b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     b74: 52804122     	mov	w2, #0x209              // =521
     b78: 94000000     	bl	0xb78 <aw_parsing_bin_file+0xcc>
		0000000000000b78:  R_AARCH64_CALL26	_printk
     b7c: 2a1f03e0     	mov	w0, wzr
     b80: 14000011     	b	0xbc4 <aw_parsing_bin_file+0x118>
     b84: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x135c
     b88: 91000000     	add	x0, x0, #0x0
		0000000000000b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x135c
     b8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12
     b90: 91000021     	add	x1, x1, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12
     b94: 52803782     	mov	w2, #0x1bc              // =444
     b98: 94000000     	bl	0xb98 <aw_parsing_bin_file+0xec>
		0000000000000b98:  R_AARCH64_CALL26	_printk
     b9c: 12800000     	mov	w0, #-0x1               // =-1
     ba0: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x288e
     ba4: 91000108     	add	x8, x8, #0x0
		0000000000000ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x288e
     ba8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     bac: 91000021     	add	x1, x1, #0x0
		0000000000000bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     bb0: 2a0003f3     	mov	w19, w0
     bb4: aa0803e0     	mov	x0, x8
     bb8: 52803a62     	mov	w2, #0x1d3              // =467
     bbc: 94000000     	bl	0xbbc <aw_parsing_bin_file+0x110>
		0000000000000bbc:  R_AARCH64_CALL26	_printk
     bc0: 2a1303e0     	mov	w0, w19
     bc4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     bc8: f9400bf7     	ldr	x23, [sp, #0x10]
     bcc: a94257f6     	ldp	x22, x21, [sp, #0x20]
     bd0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     bd4: d50323bf     	autiasp
     bd8: d65f03c0     	ret
     bdc: aa1f03f4     	mov	x20, xzr
     be0: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199c
     be4: 910002b5     	add	x21, x21, #0x0
		0000000000000be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199c
     be8: 9100a277     	add	x23, x19, #0x28
     bec: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd00
     bf0: 910002d6     	add	x22, x22, #0x0
		0000000000000bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd00
     bf4: 14000008     	b	0xc14 <aw_parsing_bin_file+0x168>
     bf8: b94002e8     	ldr	w8, [x23]
     bfc: b9002ae8     	str	w8, [x23, #0x28]
     c00: b9400a68     	ldr	w8, [x19, #0x8]
     c04: 91000694     	add	x20, x20, #0x1
     c08: 910152f7     	add	x23, x23, #0x54
     c0c: eb08029f     	cmp	x20, x8
     c10: 54fffaa2     	b.hs	0xb64 <aw_parsing_bin_file+0xb8>
     c14: aa1303e0     	mov	x0, x19
     c18: 2a1403e1     	mov	w1, w20
     c1c: 94000000     	bl	0xc1c <aw_parsing_bin_file+0x170>
		0000000000000c1c:  R_AARCH64_CALL26	aw_check_sum
     c20: 37f804c0     	tbnz	w0, #0x1f, 0xcb8 <aw_parsing_bin_file+0x20c>
     c24: aa1503e0     	mov	x0, x21
     c28: aa1603e1     	mov	x1, x22
     c2c: 528010c2     	mov	w2, #0x86               // =134
     c30: 94000000     	bl	0xc30 <aw_parsing_bin_file+0x184>
		0000000000000c30:  R_AARCH64_CALL26	_printk
     c34: f101929f     	cmp	x20, #0x64
     c38: 540008c0     	b.eq	0xd50 <aw_parsing_bin_file+0x2a4>
     c3c: b85fc2e8     	ldur	w8, [x23, #-0x4]
     c40: 7100051f     	cmp	w8, #0x1
     c44: 540004a1     	b.ne	0xcd8 <aw_parsing_bin_file+0x22c>
     c48: b85f82e8     	ldur	w8, [x23, #-0x8]
     c4c: 7100851f     	cmp	w8, #0x21
     c50: 540001c0     	b.eq	0xc88 <aw_parsing_bin_file+0x1dc>
     c54: 7100411f     	cmp	w8, #0x10
     c58: 540000e0     	b.eq	0xc74 <aw_parsing_bin_file+0x1c8>
     c5c: 35fffce8     	cbnz	w8, 0xbf8 <aw_parsing_bin_file+0x14c>
     c60: aa1303e0     	mov	x0, x19
     c64: 2a1403e1     	mov	w1, w20
     c68: 94000000     	bl	0xc68 <aw_parsing_bin_file+0x1bc>
		0000000000000c68:  R_AARCH64_CALL26	aw_check_register_num_v1
     c6c: 36fffca0     	tbz	w0, #0x1f, 0xc00 <aw_parsing_bin_file+0x154>
     c70: 14000028     	b	0xd10 <aw_parsing_bin_file+0x264>
     c74: aa1303e0     	mov	x0, x19
     c78: 2a1403e1     	mov	w1, w20
     c7c: 94000000     	bl	0xc7c <aw_parsing_bin_file+0x1d0>
		0000000000000c7c:  R_AARCH64_CALL26	aw_check_dsp_reg_num_v1
     c80: 36fffc00     	tbz	w0, #0x1f, 0xc00 <aw_parsing_bin_file+0x154>
     c84: 1400002b     	b	0xd30 <aw_parsing_bin_file+0x284>
     c88: aa1303e0     	mov	x0, x19
     c8c: 2a1403e1     	mov	w1, w20
     c90: 94000000     	bl	0xc90 <aw_parsing_bin_file+0x1e4>
		0000000000000c90:  R_AARCH64_CALL26	aw_check_soc_app_num_v1
     c94: 36fffb60     	tbz	w0, #0x1f, 0xc00 <aw_parsing_bin_file+0x154>
     c98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0c
     c9c: 91000108     	add	x8, x8, #0x0
		0000000000000c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0c
     ca0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     ca4: 91000021     	add	x1, x1, #0x0
		0000000000000ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     ca8: 2a0003f3     	mov	w19, w0
     cac: aa0803e0     	mov	x0, x8
     cb0: 52804002     	mov	w2, #0x200              // =512
     cb4: 17ffffc2     	b	0xbbc <aw_parsing_bin_file+0x110>
     cb8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf8
     cbc: 91000108     	add	x8, x8, #0x0
		0000000000000cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf8
     cc0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     cc4: 91000021     	add	x1, x1, #0x0
		0000000000000cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     cc8: 2a0003f3     	mov	w19, w0
     ccc: aa0803e0     	mov	x0, x8
     cd0: 52803ba2     	mov	w2, #0x1dd              // =477
     cd4: 17ffffba     	b	0xbbc <aw_parsing_bin_file+0x110>
     cd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f80
     cdc: 91000000     	add	x0, x0, #0x0
		0000000000000cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f80
     ce0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ce0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd00
     ce4: 91000021     	add	x1, x1, #0x0
		0000000000000ce4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd00
     ce8: 52801182     	mov	w2, #0x8c               // =140
     cec: 94000000     	bl	0xcec <aw_parsing_bin_file+0x240>
		0000000000000cec:  R_AARCH64_CALL26	_printk
     cf0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x597
     cf4: 91000000     	add	x0, x0, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x597
     cf8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     cfc: 91000021     	add	x1, x1, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     d00: 52803c62     	mov	w2, #0x1e3              // =483
     d04: 94000000     	bl	0xd04 <aw_parsing_bin_file+0x258>
		0000000000000d04:  R_AARCH64_CALL26	_printk
     d08: 12800060     	mov	w0, #-0x4               // =-4
     d0c: 17ffffae     	b	0xbc4 <aw_parsing_bin_file+0x118>
     d10: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24de
     d14: 91000108     	add	x8, x8, #0x0
		0000000000000d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24de
     d18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     d1c: 91000021     	add	x1, x1, #0x0
		0000000000000d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     d20: 2a0003f3     	mov	w19, w0
     d24: aa0803e0     	mov	x0, x8
     d28: 52803dc2     	mov	w2, #0x1ee              // =494
     d2c: 17ffffa4     	b	0xbbc <aw_parsing_bin_file+0x110>
     d30: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39ed
     d34: 91000108     	add	x8, x8, #0x0
		0000000000000d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39ed
     d38: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24ca
     d3c: 91000021     	add	x1, x1, #0x0
		0000000000000d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24ca
     d40: 2a0003f3     	mov	w19, w0
     d44: aa0803e0     	mov	x0, x8
     d48: 52803ee2     	mov	w2, #0x1f7              // =503
     d4c: 17ffff9c     	b	0xbbc <aw_parsing_bin_file+0x110>
     d50: d42aa240     	brk	#0x5512
