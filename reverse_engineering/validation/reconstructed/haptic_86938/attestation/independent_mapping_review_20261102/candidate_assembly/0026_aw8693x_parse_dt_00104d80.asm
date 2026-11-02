
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007980 <aw8693x_parse_dt>:
    7980: d503233f     	paciasp
    7984: d10183ff     	sub	sp, sp, #0x60
    7988: a9037bfd     	stp	x29, x30, [sp, #0x30]
    798c: a90457f6     	stp	x22, x21, [sp, #0x40]
    7990: a9054ff4     	stp	x20, x19, [sp, #0x50]
    7994: 9100c3fd     	add	x29, sp, #0x30
    7998: d5384108     	mrs	x8, SP_EL0
    799c: aa0203f4     	mov	x20, x2
    79a0: aa0103f3     	mov	x19, x1
    79a4: f9438908     	ldr	x8, [x8, #0x710]
    79a8: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		00000000000079a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2
    79ac: 91000021     	add	x1, x1, #0x0
		00000000000079ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2
    79b0: 91130662     	add	x2, x19, #0x4c1
    79b4: aa1403e0     	mov	x0, x20
    79b8: 52800023     	mov	w3, #0x1                // =1
    79bc: aa1f03e4     	mov	x4, xzr
    79c0: f81f83a8     	stur	x8, [x29, #-0x8]
    79c4: 39003bff     	strb	wzr, [sp, #0xe]
    79c8: 79001bff     	strh	wzr, [sp, #0xc]
    79cc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    79d0: f9000bff     	str	xzr, [sp, #0x10]
    79d4: 94000000     	bl	0x79d4 <aw8693x_parse_dt+0x54>
		00000000000079d4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    79d8: 36f80120     	tbz	w0, #0x1f, 0x79fc <aw8693x_parse_dt+0x7c>
    79dc: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		00000000000079dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f5
    79e0: 91000000     	add	x0, x0, #0x0
		00000000000079e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f5
    79e4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		00000000000079e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    79e8: 91000021     	add	x1, x1, #0x0
		00000000000079e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    79ec: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		00000000000079ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    79f0: 91000063     	add	x3, x3, #0x0
		00000000000079f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    79f4: 5280d5c2     	mov	w2, #0x6ae              // =1710
    79f8: 94000000     	bl	0x79f8 <aw8693x_parse_dt+0x78>
		00000000000079f8:  R_AARCH64_CALL26	_printk
    79fc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		00000000000079fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad7
    7a00: 91000021     	add	x1, x1, #0x0
		0000000000007a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad7
    7a04: 91130a62     	add	x2, x19, #0x4c2
    7a08: aa1403e0     	mov	x0, x20
    7a0c: 52800023     	mov	w3, #0x1                // =1
    7a10: aa1f03e4     	mov	x4, xzr
    7a14: 94000000     	bl	0x7a14 <aw8693x_parse_dt+0x94>
		0000000000007a14:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7a18: 36f80120     	tbz	w0, #0x1f, 0x7a3c <aw8693x_parse_dt+0xbc>
    7a1c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb4
    7a20: 91000000     	add	x0, x0, #0x0
		0000000000007a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb4
    7a24: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7a28: 91000021     	add	x1, x1, #0x0
		0000000000007a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7a2c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7a30: 91000063     	add	x3, x3, #0x0
		0000000000007a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7a34: 5280d642     	mov	w2, #0x6b2              // =1714
    7a38: 94000000     	bl	0x7a38 <aw8693x_parse_dt+0xb8>
		0000000000007a38:  R_AARCH64_CALL26	_printk
    7a3c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ce
    7a40: 91000021     	add	x1, x1, #0x0
		0000000000007a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ce
    7a44: 9111a262     	add	x2, x19, #0x468
    7a48: aa1403e0     	mov	x0, x20
    7a4c: 52800023     	mov	w3, #0x1                // =1
    7a50: aa1f03e4     	mov	x4, xzr
    7a54: 94000000     	bl	0x7a54 <aw8693x_parse_dt+0xd4>
		0000000000007a54:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    7a58: 36f80120     	tbz	w0, #0x1f, 0x7a7c <aw8693x_parse_dt+0xfc>
    7a5c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c4
    7a60: 91000000     	add	x0, x0, #0x0
		0000000000007a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c4
    7a64: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7a68: 91000021     	add	x1, x1, #0x0
		0000000000007a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7a6c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7a70: 91000063     	add	x3, x3, #0x0
		0000000000007a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7a74: 5280d6c2     	mov	w2, #0x6b6              // =1718
    7a78: 94000000     	bl	0x7a78 <aw8693x_parse_dt+0xf8>
		0000000000007a78:  R_AARCH64_CALL26	_printk
    7a7c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1724
    7a80: 91000021     	add	x1, x1, #0x0
		0000000000007a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1724
    7a84: 91118a62     	add	x2, x19, #0x462
    7a88: aa1403e0     	mov	x0, x20
    7a8c: 52800023     	mov	w3, #0x1                // =1
    7a90: aa1f03e4     	mov	x4, xzr
    7a94: 94000000     	bl	0x7a94 <aw8693x_parse_dt+0x114>
		0000000000007a94:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7a98: 36f80120     	tbz	w0, #0x1f, 0x7abc <aw8693x_parse_dt+0x13c>
    7a9c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba7
    7aa0: 91000000     	add	x0, x0, #0x0
		0000000000007aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba7
    7aa4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7aa8: 91000021     	add	x1, x1, #0x0
		0000000000007aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7aac: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7ab0: 91000063     	add	x3, x3, #0x0
		0000000000007ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7ab4: 5280d742     	mov	w2, #0x6ba              // =1722
    7ab8: 94000000     	bl	0x7ab8 <aw8693x_parse_dt+0x138>
		0000000000007ab8:  R_AARCH64_CALL26	_printk
    7abc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x945
    7ac0: 91000021     	add	x1, x1, #0x0
		0000000000007ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x945
    7ac4: 91130e62     	add	x2, x19, #0x4c3
    7ac8: aa1403e0     	mov	x0, x20
    7acc: 52800023     	mov	w3, #0x1                // =1
    7ad0: aa1f03e4     	mov	x4, xzr
    7ad4: 94000000     	bl	0x7ad4 <aw8693x_parse_dt+0x154>
		0000000000007ad4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7ad8: 36f80120     	tbz	w0, #0x1f, 0x7afc <aw8693x_parse_dt+0x17c>
    7adc: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x334
    7ae0: 91000000     	add	x0, x0, #0x0
		0000000000007ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x334
    7ae4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7ae8: 91000021     	add	x1, x1, #0x0
		0000000000007ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7aec: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7af0: 91000063     	add	x3, x3, #0x0
		0000000000007af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7af4: 5280d7c2     	mov	w2, #0x6be              // =1726
    7af8: 94000000     	bl	0x7af8 <aw8693x_parse_dt+0x178>
		0000000000007af8:  R_AARCH64_CALL26	_printk
    7afc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3e
    7b00: 91000021     	add	x1, x1, #0x0
		0000000000007b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3e
    7b04: 91126a62     	add	x2, x19, #0x49a
    7b08: aa1403e0     	mov	x0, x20
    7b0c: 52800023     	mov	w3, #0x1                // =1
    7b10: aa1f03e4     	mov	x4, xzr
    7b14: 94000000     	bl	0x7b14 <aw8693x_parse_dt+0x194>
		0000000000007b14:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7b18: 36f80120     	tbz	w0, #0x1f, 0x7b3c <aw8693x_parse_dt+0x1bc>
    7b1c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14b
    7b20: 91000000     	add	x0, x0, #0x0
		0000000000007b20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14b
    7b24: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7b28: 91000021     	add	x1, x1, #0x0
		0000000000007b28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7b2c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7b30: 91000063     	add	x3, x3, #0x0
		0000000000007b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7b34: 5280d842     	mov	w2, #0x6c2              // =1730
    7b38: 94000000     	bl	0x7b38 <aw8693x_parse_dt+0x1b8>
		0000000000007b38:  R_AARCH64_CALL26	_printk
    7b3c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1065
    7b40: 91000021     	add	x1, x1, #0x0
		0000000000007b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1065
    7b44: 91131262     	add	x2, x19, #0x4c4
    7b48: aa1403e0     	mov	x0, x20
    7b4c: 52800023     	mov	w3, #0x1                // =1
    7b50: aa1f03e4     	mov	x4, xzr
    7b54: 94000000     	bl	0x7b54 <aw8693x_parse_dt+0x1d4>
		0000000000007b54:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    7b58: 36f80120     	tbz	w0, #0x1f, 0x7b7c <aw8693x_parse_dt+0x1fc>
    7b5c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x107b
    7b60: 91000000     	add	x0, x0, #0x0
		0000000000007b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x107b
    7b64: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7b68: 91000021     	add	x1, x1, #0x0
		0000000000007b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7b6c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7b70: 91000063     	add	x3, x3, #0x0
		0000000000007b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7b74: 5280d8c2     	mov	w2, #0x6c6              // =1734
    7b78: 94000000     	bl	0x7b78 <aw8693x_parse_dt+0x1f8>
		0000000000007b78:  R_AARCH64_CALL26	_printk
    7b7c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x367
    7b80: 91000021     	add	x1, x1, #0x0
		0000000000007b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x367
    7b84: 91128262     	add	x2, x19, #0x4a0
    7b88: aa1403e0     	mov	x0, x20
    7b8c: 52800023     	mov	w3, #0x1                // =1
    7b90: aa1f03e4     	mov	x4, xzr
    7b94: 94000000     	bl	0x7b94 <aw8693x_parse_dt+0x214>
		0000000000007b94:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7b98: 36f80120     	tbz	w0, #0x1f, 0x7bbc <aw8693x_parse_dt+0x23c>
    7b9c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ac
    7ba0: 91000000     	add	x0, x0, #0x0
		0000000000007ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ac
    7ba4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7ba8: 91000021     	add	x1, x1, #0x0
		0000000000007ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7bac: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7bb0: 91000063     	add	x3, x3, #0x0
		0000000000007bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7bb4: 5280d942     	mov	w2, #0x6ca              // =1738
    7bb8: 94000000     	bl	0x7bb8 <aw8693x_parse_dt+0x238>
		0000000000007bb8:  R_AARCH64_CALL26	_printk
    7bbc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb4
    7bc0: 91000021     	add	x1, x1, #0x0
		0000000000007bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb4
    7bc4: 91128662     	add	x2, x19, #0x4a1
    7bc8: aa1403e0     	mov	x0, x20
    7bcc: 52800023     	mov	w3, #0x1                // =1
    7bd0: aa1f03e4     	mov	x4, xzr
    7bd4: 94000000     	bl	0x7bd4 <aw8693x_parse_dt+0x254>
		0000000000007bd4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7bd8: 36f80120     	tbz	w0, #0x1f, 0x7bfc <aw8693x_parse_dt+0x27c>
    7bdc: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007bdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
    7be0: 91000000     	add	x0, x0, #0x0
		0000000000007be0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
    7be4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007be4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7be8: 91000021     	add	x1, x1, #0x0
		0000000000007be8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7bec: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7bf0: 91000063     	add	x3, x3, #0x0
		0000000000007bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7bf4: 5280d9c2     	mov	w2, #0x6ce              // =1742
    7bf8: 94000000     	bl	0x7bf8 <aw8693x_parse_dt+0x278>
		0000000000007bf8:  R_AARCH64_CALL26	_printk
    7bfc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce8
    7c00: 91000021     	add	x1, x1, #0x0
		0000000000007c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce8
    7c04: 91127662     	add	x2, x19, #0x49d
    7c08: aa1403e0     	mov	x0, x20
    7c0c: 52800023     	mov	w3, #0x1                // =1
    7c10: aa1f03e4     	mov	x4, xzr
    7c14: 94000000     	bl	0x7c14 <aw8693x_parse_dt+0x294>
		0000000000007c14:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7c18: 36f80120     	tbz	w0, #0x1f, 0x7c3c <aw8693x_parse_dt+0x2bc>
    7c1c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6
    7c20: 91000000     	add	x0, x0, #0x0
		0000000000007c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6
    7c24: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7c28: 91000021     	add	x1, x1, #0x0
		0000000000007c28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7c2c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7c30: 91000063     	add	x3, x3, #0x0
		0000000000007c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7c34: 5280da42     	mov	w2, #0x6d2              // =1746
    7c38: 94000000     	bl	0x7c38 <aw8693x_parse_dt+0x2b8>
		0000000000007c38:  R_AARCH64_CALL26	_printk
    7c3c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6
    7c40: 91000021     	add	x1, x1, #0x0
		0000000000007c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6
    7c44: 91128e62     	add	x2, x19, #0x4a3
    7c48: aa1403e0     	mov	x0, x20
    7c4c: 52800023     	mov	w3, #0x1                // =1
    7c50: aa1f03e4     	mov	x4, xzr
    7c54: 94000000     	bl	0x7c54 <aw8693x_parse_dt+0x2d4>
		0000000000007c54:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7c58: 36f80120     	tbz	w0, #0x1f, 0x7c7c <aw8693x_parse_dt+0x2fc>
    7c5c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e
    7c60: 91000000     	add	x0, x0, #0x0
		0000000000007c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e
    7c64: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7c68: 91000021     	add	x1, x1, #0x0
		0000000000007c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7c6c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7c70: 91000063     	add	x3, x3, #0x0
		0000000000007c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7c74: 5280dae2     	mov	w2, #0x6d7              // =1751
    7c78: 94000000     	bl	0x7c78 <aw8693x_parse_dt+0x2f8>
		0000000000007c78:  R_AARCH64_CALL26	_printk
    7c7c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c5
    7c80: 91000021     	add	x1, x1, #0x0
		0000000000007c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c5
    7c84: 91127e62     	add	x2, x19, #0x49f
    7c88: aa1403e0     	mov	x0, x20
    7c8c: 52800023     	mov	w3, #0x1                // =1
    7c90: aa1f03e4     	mov	x4, xzr
    7c94: 94000000     	bl	0x7c94 <aw8693x_parse_dt+0x314>
		0000000000007c94:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7c98: 36f80120     	tbz	w0, #0x1f, 0x7cbc <aw8693x_parse_dt+0x33c>
    7c9c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1579
    7ca0: 91000000     	add	x0, x0, #0x0
		0000000000007ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1579
    7ca4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7ca8: 91000021     	add	x1, x1, #0x0
		0000000000007ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7cac: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7cb0: 91000063     	add	x3, x3, #0x0
		0000000000007cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7cb4: 5280db62     	mov	w2, #0x6db              // =1755
    7cb8: 94000000     	bl	0x7cb8 <aw8693x_parse_dt+0x338>
		0000000000007cb8:  R_AARCH64_CALL26	_printk
    7cbc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143c
    7cc0: 91000021     	add	x1, x1, #0x0
		0000000000007cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143c
    7cc4: 91125662     	add	x2, x19, #0x495
    7cc8: aa1403e0     	mov	x0, x20
    7ccc: 52800023     	mov	w3, #0x1                // =1
    7cd0: aa1f03e4     	mov	x4, xzr
    7cd4: 94000000     	bl	0x7cd4 <aw8693x_parse_dt+0x354>
		0000000000007cd4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7cd8: 36f80120     	tbz	w0, #0x1f, 0x7cfc <aw8693x_parse_dt+0x37c>
    7cdc: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae8
    7ce0: 91000000     	add	x0, x0, #0x0
		0000000000007ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae8
    7ce4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7ce8: 91000021     	add	x1, x1, #0x0
		0000000000007ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7cec: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7cf0: 91000063     	add	x3, x3, #0x0
		0000000000007cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7cf4: 5280dbe2     	mov	w2, #0x6df              // =1759
    7cf8: 94000000     	bl	0x7cf8 <aw8693x_parse_dt+0x378>
		0000000000007cf8:  R_AARCH64_CALL26	_printk
    7cfc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf03
    7d00: 91000021     	add	x1, x1, #0x0
		0000000000007d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf03
    7d04: 910033e2     	add	x2, sp, #0xc
    7d08: aa1403e0     	mov	x0, x20
    7d0c: 52800063     	mov	w3, #0x3                // =3
    7d10: aa1f03e4     	mov	x4, xzr
    7d14: 94000000     	bl	0x7d14 <aw8693x_parse_dt+0x394>
		0000000000007d14:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7d18: 37f800c0     	tbnz	w0, #0x1f, 0x7d30 <aw8693x_parse_dt+0x3b0>
    7d1c: 79401be8     	ldrh	w8, [sp, #0xc]
    7d20: 39403be9     	ldrb	w9, [sp, #0xe]
    7d24: 7908ca68     	strh	w8, [x19, #0x464]
    7d28: 39119a69     	strb	w9, [x19, #0x466]
    7d2c: 14000009     	b	0x7d50 <aw8693x_parse_dt+0x3d0>
    7d30: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf19
    7d34: 91000000     	add	x0, x0, #0x0
		0000000000007d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf19
    7d38: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7d3c: 91000021     	add	x1, x1, #0x0
		0000000000007d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7d40: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7d44: 91000063     	add	x3, x3, #0x0
		0000000000007d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7d48: 5280dc82     	mov	w2, #0x6e4              // =1764
    7d4c: 94000000     	bl	0x7d4c <aw8693x_parse_dt+0x3cc>
		0000000000007d4c:  R_AARCH64_CALL26	_printk
    7d50: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15aa
    7d54: 91000021     	add	x1, x1, #0x0
		0000000000007d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15aa
    7d58: 910043e2     	add	x2, sp, #0x10
    7d5c: aa1403e0     	mov	x0, x20
    7d60: 52800303     	mov	w3, #0x18               // =24
    7d64: aa1f03e4     	mov	x4, xzr
    7d68: 94000000     	bl	0x7d68 <aw8693x_parse_dt+0x3e8>
		0000000000007d68:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7d6c: 37f800e0     	tbnz	w0, #0x1f, 0x7d88 <aw8693x_parse_dt+0x408>
    7d70: a9412be8     	ldp	x8, x10, [sp, #0x10]
    7d74: 91129669     	add	x9, x19, #0x4a5
    7d78: f94013eb     	ldr	x11, [sp, #0x20]
    7d7c: a9002928     	stp	x8, x10, [x9]
    7d80: f900092b     	str	x11, [x9, #0x10]
    7d84: 14000009     	b	0x7da8 <aw8693x_parse_dt+0x428>
    7d88: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x126d
    7d8c: 91000000     	add	x0, x0, #0x0
		0000000000007d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x126d
    7d90: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7d94: 91000021     	add	x1, x1, #0x0
		0000000000007d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7d98: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7d9c: 91000063     	add	x3, x3, #0x0
		0000000000007d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7da0: 5280dd62     	mov	w2, #0x6eb              // =1771
    7da4: 94000000     	bl	0x7da4 <aw8693x_parse_dt+0x424>
		0000000000007da4:  R_AARCH64_CALL26	_printk
    7da8: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcb
    7dac: 91000021     	add	x1, x1, #0x0
		0000000000007dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcb
    7db0: 91118e62     	add	x2, x19, #0x463
    7db4: aa1403e0     	mov	x0, x20
    7db8: 52800023     	mov	w3, #0x1                // =1
    7dbc: aa1f03e4     	mov	x4, xzr
    7dc0: 94000000     	bl	0x7dc0 <aw8693x_parse_dt+0x440>
		0000000000007dc0:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7dc4: 36f80120     	tbz	w0, #0x1f, 0x7de8 <aw8693x_parse_dt+0x468>
    7dc8: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbda
    7dcc: 91000000     	add	x0, x0, #0x0
		0000000000007dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbda
    7dd0: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7dd4: 91000021     	add	x1, x1, #0x0
		0000000000007dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7dd8: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x38>
		0000000000007dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7ddc: 91000063     	add	x3, x3, #0x0
		0000000000007ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7de0: 5280de42     	mov	w2, #0x6f2              // =1778
    7de4: 94000000     	bl	0x7de4 <aw8693x_parse_dt+0x464>
		0000000000007de4:  R_AARCH64_CALL26	_printk
    7de8: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d5
    7dec: 91000021     	add	x1, x1, #0x0
		0000000000007dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d5
    7df0: aa1403e0     	mov	x0, x20
    7df4: aa1f03e2     	mov	x2, xzr
    7df8: 94000000     	bl	0x7df8 <aw8693x_parse_dt+0x478>
		0000000000007df8:  R_AARCH64_CALL26	of_find_property
    7dfc: f100001f     	cmp	x0, #0x0
    7e00: 90000015     	adrp	x21, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7e04: 910002b5     	add	x21, x21, #0x0
		0000000000007e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7e08: 90000016     	adrp	x22, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7e0c: 910002d6     	add	x22, x22, #0x0
		0000000000007e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7e10: 1a9f07e4     	cset	w4, ne
    7e14: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x173c
    7e18: 91000000     	add	x0, x0, #0x0
		0000000000007e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x173c
    7e1c: aa1503e1     	mov	x1, x21
    7e20: 5280dec2     	mov	w2, #0x6f6              // =1782
    7e24: aa1603e3     	mov	x3, x22
    7e28: 39130264     	strb	w4, [x19, #0x4c0]
    7e2c: 94000000     	bl	0x7e2c <aw8693x_parse_dt+0x4ac>
		0000000000007e2c:  R_AARCH64_CALL26	_printk
    7e30: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191f
    7e34: 91000021     	add	x1, x1, #0x0
		0000000000007e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191f
    7e38: aa1403e0     	mov	x0, x20
    7e3c: aa1f03e2     	mov	x2, xzr
    7e40: 94000000     	bl	0x7e40 <aw8693x_parse_dt+0x4c0>
		0000000000007e40:  R_AARCH64_CALL26	of_find_property
    7e44: f100001f     	cmp	x0, #0x0
    7e48: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71d
    7e4c: 91000000     	add	x0, x0, #0x0
		0000000000007e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71d
    7e50: 1a9f07e4     	cset	w4, ne
    7e54: aa1503e1     	mov	x1, x21
    7e58: 5280df42     	mov	w2, #0x6fa              // =1786
    7e5c: aa1603e3     	mov	x3, x22
    7e60: 3912f664     	strb	w4, [x19, #0x4bd]
    7e64: 94000000     	bl	0x7e64 <aw8693x_parse_dt+0x4e4>
		0000000000007e64:  R_AARCH64_CALL26	_printk
    7e68: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175b
    7e6c: 91000021     	add	x1, x1, #0x0
		0000000000007e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175b
    7e70: aa1403e0     	mov	x0, x20
    7e74: aa1f03e2     	mov	x2, xzr
    7e78: 94000000     	bl	0x7e78 <aw8693x_parse_dt+0x4f8>
		0000000000007e78:  R_AARCH64_CALL26	of_find_property
    7e7c: f100001f     	cmp	x0, #0x0
    7e80: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x38>
		0000000000007e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    7e84: 91000000     	add	x0, x0, #0x0
		0000000000007e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    7e88: 1a9f07e4     	cset	w4, ne
    7e8c: aa1503e1     	mov	x1, x21
    7e90: 5280dfc2     	mov	w2, #0x6fe              // =1790
    7e94: aa1603e3     	mov	x3, x22
    7e98: 3912fe64     	strb	w4, [x19, #0x4bf]
    7e9c: 94000000     	bl	0x7e9c <aw8693x_parse_dt+0x51c>
		0000000000007e9c:  R_AARCH64_CALL26	_printk
    7ea0: d5384108     	mrs	x8, SP_EL0
    7ea4: f9438908     	ldr	x8, [x8, #0x710]
    7ea8: f85f83a9     	ldur	x9, [x29, #-0x8]
    7eac: eb09011f     	cmp	x8, x9
    7eb0: 540000e1     	b.ne	0x7ecc <aw8693x_parse_dt+0x54c>
    7eb4: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    7eb8: a94457f6     	ldp	x22, x21, [sp, #0x40]
    7ebc: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    7ec0: 910183ff     	add	sp, sp, #0x60
    7ec4: d50323bf     	autiasp
    7ec8: d65f03c0     	ret
    7ecc: 94000000     	bl	0x7ecc <aw8693x_parse_dt+0x54c>
		0000000000007ecc:  R_AARCH64_CALL26	__stack_chk_fail
