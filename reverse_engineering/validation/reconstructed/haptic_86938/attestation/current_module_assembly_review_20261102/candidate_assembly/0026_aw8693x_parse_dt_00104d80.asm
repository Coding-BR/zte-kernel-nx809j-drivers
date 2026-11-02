
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000007950 <aw8693x_parse_dt>:
    7950: d503233f     	paciasp
    7954: d10183ff     	sub	sp, sp, #0x60
    7958: a9037bfd     	stp	x29, x30, [sp, #0x30]
    795c: a90457f6     	stp	x22, x21, [sp, #0x40]
    7960: a9054ff4     	stp	x20, x19, [sp, #0x50]
    7964: 9100c3fd     	add	x29, sp, #0x30
    7968: d5384108     	mrs	x8, SP_EL0
    796c: aa0203f4     	mov	x20, x2
    7970: aa0103f3     	mov	x19, x1
    7974: f9438908     	ldr	x8, [x8, #0x710]
    7978: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4b2
    797c: 91000021     	add	x1, x1, #0x0
		000000000000797c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4b2
    7980: 91130662     	add	x2, x19, #0x4c1
    7984: aa1403e0     	mov	x0, x20
    7988: 52800023     	mov	w3, #0x1                // =1
    798c: aa1f03e4     	mov	x4, xzr
    7990: f81f83a8     	stur	x8, [x29, #-0x8]
    7994: 39003bff     	strb	wzr, [sp, #0xe]
    7998: 79001bff     	strh	wzr, [sp, #0xc]
    799c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    79a0: f9000bff     	str	xzr, [sp, #0x10]
    79a4: 94000000     	bl	0x79a4 <aw8693x_parse_dt+0x54>
		00000000000079a4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    79a8: 36f80120     	tbz	w0, #0x1f, 0x79cc <aw8693x_parse_dt+0x7c>
    79ac: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000079ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f5
    79b0: 91000000     	add	x0, x0, #0x0
		00000000000079b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f5
    79b4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		00000000000079b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    79b8: 91000021     	add	x1, x1, #0x0
		00000000000079b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    79bc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		00000000000079bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    79c0: 91000063     	add	x3, x3, #0x0
		00000000000079c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    79c4: 5280d5c2     	mov	w2, #0x6ae              // =1710
    79c8: 94000000     	bl	0x79c8 <aw8693x_parse_dt+0x78>
		00000000000079c8:  R_AARCH64_CALL26	_printk
    79cc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		00000000000079cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad7
    79d0: 91000021     	add	x1, x1, #0x0
		00000000000079d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad7
    79d4: 91130a62     	add	x2, x19, #0x4c2
    79d8: aa1403e0     	mov	x0, x20
    79dc: 52800023     	mov	w3, #0x1                // =1
    79e0: aa1f03e4     	mov	x4, xzr
    79e4: 94000000     	bl	0x79e4 <aw8693x_parse_dt+0x94>
		00000000000079e4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    79e8: 36f80120     	tbz	w0, #0x1f, 0x7a0c <aw8693x_parse_dt+0xbc>
    79ec: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		00000000000079ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb4
    79f0: 91000000     	add	x0, x0, #0x0
		00000000000079f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb4
    79f4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		00000000000079f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    79f8: 91000021     	add	x1, x1, #0x0
		00000000000079f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    79fc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		00000000000079fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7a00: 91000063     	add	x3, x3, #0x0
		0000000000007a00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7a04: 5280d642     	mov	w2, #0x6b2              // =1714
    7a08: 94000000     	bl	0x7a08 <aw8693x_parse_dt+0xb8>
		0000000000007a08:  R_AARCH64_CALL26	_printk
    7a0c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9ce
    7a10: 91000021     	add	x1, x1, #0x0
		0000000000007a10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9ce
    7a14: 9111a262     	add	x2, x19, #0x468
    7a18: aa1403e0     	mov	x0, x20
    7a1c: 52800023     	mov	w3, #0x1                // =1
    7a20: aa1f03e4     	mov	x4, xzr
    7a24: 94000000     	bl	0x7a24 <aw8693x_parse_dt+0xd4>
		0000000000007a24:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    7a28: 36f80120     	tbz	w0, #0x1f, 0x7a4c <aw8693x_parse_dt+0xfc>
    7a2c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c4
    7a30: 91000000     	add	x0, x0, #0x0
		0000000000007a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c4
    7a34: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7a38: 91000021     	add	x1, x1, #0x0
		0000000000007a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7a3c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7a40: 91000063     	add	x3, x3, #0x0
		0000000000007a40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7a44: 5280d6c2     	mov	w2, #0x6b6              // =1718
    7a48: 94000000     	bl	0x7a48 <aw8693x_parse_dt+0xf8>
		0000000000007a48:  R_AARCH64_CALL26	_printk
    7a4c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1724
    7a50: 91000021     	add	x1, x1, #0x0
		0000000000007a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1724
    7a54: 91118a62     	add	x2, x19, #0x462
    7a58: aa1403e0     	mov	x0, x20
    7a5c: 52800023     	mov	w3, #0x1                // =1
    7a60: aa1f03e4     	mov	x4, xzr
    7a64: 94000000     	bl	0x7a64 <aw8693x_parse_dt+0x114>
		0000000000007a64:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7a68: 36f80120     	tbz	w0, #0x1f, 0x7a8c <aw8693x_parse_dt+0x13c>
    7a6c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xba7
    7a70: 91000000     	add	x0, x0, #0x0
		0000000000007a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xba7
    7a74: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7a78: 91000021     	add	x1, x1, #0x0
		0000000000007a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7a7c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7a80: 91000063     	add	x3, x3, #0x0
		0000000000007a80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7a84: 5280d742     	mov	w2, #0x6ba              // =1722
    7a88: 94000000     	bl	0x7a88 <aw8693x_parse_dt+0x138>
		0000000000007a88:  R_AARCH64_CALL26	_printk
    7a8c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x945
    7a90: 91000021     	add	x1, x1, #0x0
		0000000000007a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x945
    7a94: 91130e62     	add	x2, x19, #0x4c3
    7a98: aa1403e0     	mov	x0, x20
    7a9c: 52800023     	mov	w3, #0x1                // =1
    7aa0: aa1f03e4     	mov	x4, xzr
    7aa4: 94000000     	bl	0x7aa4 <aw8693x_parse_dt+0x154>
		0000000000007aa4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7aa8: 36f80120     	tbz	w0, #0x1f, 0x7acc <aw8693x_parse_dt+0x17c>
    7aac: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x334
    7ab0: 91000000     	add	x0, x0, #0x0
		0000000000007ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x334
    7ab4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007ab4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7ab8: 91000021     	add	x1, x1, #0x0
		0000000000007ab8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7abc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007abc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7ac0: 91000063     	add	x3, x3, #0x0
		0000000000007ac0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7ac4: 5280d7c2     	mov	w2, #0x6be              // =1726
    7ac8: 94000000     	bl	0x7ac8 <aw8693x_parse_dt+0x178>
		0000000000007ac8:  R_AARCH64_CALL26	_printk
    7acc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007acc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3e
    7ad0: 91000021     	add	x1, x1, #0x0
		0000000000007ad0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3e
    7ad4: 91126a62     	add	x2, x19, #0x49a
    7ad8: aa1403e0     	mov	x0, x20
    7adc: 52800023     	mov	w3, #0x1                // =1
    7ae0: aa1f03e4     	mov	x4, xzr
    7ae4: 94000000     	bl	0x7ae4 <aw8693x_parse_dt+0x194>
		0000000000007ae4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7ae8: 36f80120     	tbz	w0, #0x1f, 0x7b0c <aw8693x_parse_dt+0x1bc>
    7aec: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14b
    7af0: 91000000     	add	x0, x0, #0x0
		0000000000007af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14b
    7af4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7af8: 91000021     	add	x1, x1, #0x0
		0000000000007af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7afc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007afc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7b00: 91000063     	add	x3, x3, #0x0
		0000000000007b00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7b04: 5280d842     	mov	w2, #0x6c2              // =1730
    7b08: 94000000     	bl	0x7b08 <aw8693x_parse_dt+0x1b8>
		0000000000007b08:  R_AARCH64_CALL26	_printk
    7b0c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1065
    7b10: 91000021     	add	x1, x1, #0x0
		0000000000007b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1065
    7b14: 91131262     	add	x2, x19, #0x4c4
    7b18: aa1403e0     	mov	x0, x20
    7b1c: 52800023     	mov	w3, #0x1                // =1
    7b20: aa1f03e4     	mov	x4, xzr
    7b24: 94000000     	bl	0x7b24 <aw8693x_parse_dt+0x1d4>
		0000000000007b24:  R_AARCH64_CALL26	of_property_read_variable_u32_array
    7b28: 36f80120     	tbz	w0, #0x1f, 0x7b4c <aw8693x_parse_dt+0x1fc>
    7b2c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x107b
    7b30: 91000000     	add	x0, x0, #0x0
		0000000000007b30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x107b
    7b34: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7b38: 91000021     	add	x1, x1, #0x0
		0000000000007b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7b3c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7b40: 91000063     	add	x3, x3, #0x0
		0000000000007b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7b44: 5280d8c2     	mov	w2, #0x6c6              // =1734
    7b48: 94000000     	bl	0x7b48 <aw8693x_parse_dt+0x1f8>
		0000000000007b48:  R_AARCH64_CALL26	_printk
    7b4c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x367
    7b50: 91000021     	add	x1, x1, #0x0
		0000000000007b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x367
    7b54: 91128262     	add	x2, x19, #0x4a0
    7b58: aa1403e0     	mov	x0, x20
    7b5c: 52800023     	mov	w3, #0x1                // =1
    7b60: aa1f03e4     	mov	x4, xzr
    7b64: 94000000     	bl	0x7b64 <aw8693x_parse_dt+0x214>
		0000000000007b64:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7b68: 36f80120     	tbz	w0, #0x1f, 0x7b8c <aw8693x_parse_dt+0x23c>
    7b6c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10ac
    7b70: 91000000     	add	x0, x0, #0x0
		0000000000007b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10ac
    7b74: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7b78: 91000021     	add	x1, x1, #0x0
		0000000000007b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7b7c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7b80: 91000063     	add	x3, x3, #0x0
		0000000000007b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7b84: 5280d942     	mov	w2, #0x6ca              // =1738
    7b88: 94000000     	bl	0x7b88 <aw8693x_parse_dt+0x238>
		0000000000007b88:  R_AARCH64_CALL26	_printk
    7b8c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdb4
    7b90: 91000021     	add	x1, x1, #0x0
		0000000000007b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdb4
    7b94: 91128662     	add	x2, x19, #0x4a1
    7b98: aa1403e0     	mov	x0, x20
    7b9c: 52800023     	mov	w3, #0x1                // =1
    7ba0: aa1f03e4     	mov	x4, xzr
    7ba4: 94000000     	bl	0x7ba4 <aw8693x_parse_dt+0x254>
		0000000000007ba4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7ba8: 36f80120     	tbz	w0, #0x1f, 0x7bcc <aw8693x_parse_dt+0x27c>
    7bac: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x140a
    7bb0: 91000000     	add	x0, x0, #0x0
		0000000000007bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x140a
    7bb4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7bb8: 91000021     	add	x1, x1, #0x0
		0000000000007bb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7bbc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7bc0: 91000063     	add	x3, x3, #0x0
		0000000000007bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7bc4: 5280d9c2     	mov	w2, #0x6ce              // =1742
    7bc8: 94000000     	bl	0x7bc8 <aw8693x_parse_dt+0x278>
		0000000000007bc8:  R_AARCH64_CALL26	_printk
    7bcc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xce8
    7bd0: 91000021     	add	x1, x1, #0x0
		0000000000007bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xce8
    7bd4: 91127662     	add	x2, x19, #0x49d
    7bd8: aa1403e0     	mov	x0, x20
    7bdc: 52800023     	mov	w3, #0x1                // =1
    7be0: aa1f03e4     	mov	x4, xzr
    7be4: 94000000     	bl	0x7be4 <aw8693x_parse_dt+0x294>
		0000000000007be4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7be8: 36f80120     	tbz	w0, #0x1f, 0x7c0c <aw8693x_parse_dt+0x2bc>
    7bec: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4c6
    7bf0: 91000000     	add	x0, x0, #0x0
		0000000000007bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4c6
    7bf4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7bf8: 91000021     	add	x1, x1, #0x0
		0000000000007bf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7bfc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7c00: 91000063     	add	x3, x3, #0x0
		0000000000007c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7c04: 5280da42     	mov	w2, #0x6d2              // =1746
    7c08: 94000000     	bl	0x7c08 <aw8693x_parse_dt+0x2b8>
		0000000000007c08:  R_AARCH64_CALL26	_printk
    7c0c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e6
    7c10: 91000021     	add	x1, x1, #0x0
		0000000000007c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e6
    7c14: 91128e62     	add	x2, x19, #0x4a3
    7c18: aa1403e0     	mov	x0, x20
    7c1c: 52800023     	mov	w3, #0x1                // =1
    7c20: aa1f03e4     	mov	x4, xzr
    7c24: 94000000     	bl	0x7c24 <aw8693x_parse_dt+0x2d4>
		0000000000007c24:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7c28: 36f80120     	tbz	w0, #0x1f, 0x7c4c <aw8693x_parse_dt+0x2fc>
    7c2c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x61e
    7c30: 91000000     	add	x0, x0, #0x0
		0000000000007c30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x61e
    7c34: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7c38: 91000021     	add	x1, x1, #0x0
		0000000000007c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7c3c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7c40: 91000063     	add	x3, x3, #0x0
		0000000000007c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7c44: 5280dae2     	mov	w2, #0x6d7              // =1751
    7c48: 94000000     	bl	0x7c48 <aw8693x_parse_dt+0x2f8>
		0000000000007c48:  R_AARCH64_CALL26	_printk
    7c4c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c5
    7c50: 91000021     	add	x1, x1, #0x0
		0000000000007c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c5
    7c54: 91127e62     	add	x2, x19, #0x49f
    7c58: aa1403e0     	mov	x0, x20
    7c5c: 52800023     	mov	w3, #0x1                // =1
    7c60: aa1f03e4     	mov	x4, xzr
    7c64: 94000000     	bl	0x7c64 <aw8693x_parse_dt+0x314>
		0000000000007c64:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7c68: 36f80120     	tbz	w0, #0x1f, 0x7c8c <aw8693x_parse_dt+0x33c>
    7c6c: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1579
    7c70: 91000000     	add	x0, x0, #0x0
		0000000000007c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1579
    7c74: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7c78: 91000021     	add	x1, x1, #0x0
		0000000000007c78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7c7c: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7c80: 91000063     	add	x3, x3, #0x0
		0000000000007c80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7c84: 5280db62     	mov	w2, #0x6db              // =1755
    7c88: 94000000     	bl	0x7c88 <aw8693x_parse_dt+0x338>
		0000000000007c88:  R_AARCH64_CALL26	_printk
    7c8c: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x143c
    7c90: 91000021     	add	x1, x1, #0x0
		0000000000007c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x143c
    7c94: 91125662     	add	x2, x19, #0x495
    7c98: aa1403e0     	mov	x0, x20
    7c9c: 52800023     	mov	w3, #0x1                // =1
    7ca0: aa1f03e4     	mov	x4, xzr
    7ca4: 94000000     	bl	0x7ca4 <aw8693x_parse_dt+0x354>
		0000000000007ca4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7ca8: 36f80120     	tbz	w0, #0x1f, 0x7ccc <aw8693x_parse_dt+0x37c>
    7cac: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007cac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ae8
    7cb0: 91000000     	add	x0, x0, #0x0
		0000000000007cb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ae8
    7cb4: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007cb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7cb8: 91000021     	add	x1, x1, #0x0
		0000000000007cb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7cbc: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7cc0: 91000063     	add	x3, x3, #0x0
		0000000000007cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7cc4: 5280dbe2     	mov	w2, #0x6df              // =1759
    7cc8: 94000000     	bl	0x7cc8 <aw8693x_parse_dt+0x378>
		0000000000007cc8:  R_AARCH64_CALL26	_printk
    7ccc: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf03
    7cd0: 91000021     	add	x1, x1, #0x0
		0000000000007cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf03
    7cd4: 910033e2     	add	x2, sp, #0xc
    7cd8: aa1403e0     	mov	x0, x20
    7cdc: 52800063     	mov	w3, #0x3                // =3
    7ce0: aa1f03e4     	mov	x4, xzr
    7ce4: 94000000     	bl	0x7ce4 <aw8693x_parse_dt+0x394>
		0000000000007ce4:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7ce8: 37f800c0     	tbnz	w0, #0x1f, 0x7d00 <aw8693x_parse_dt+0x3b0>
    7cec: 79401be8     	ldrh	w8, [sp, #0xc]
    7cf0: 39403be9     	ldrb	w9, [sp, #0xe]
    7cf4: 7908ca68     	strh	w8, [x19, #0x464]
    7cf8: 39119a69     	strb	w9, [x19, #0x466]
    7cfc: 14000009     	b	0x7d20 <aw8693x_parse_dt+0x3d0>
    7d00: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf19
    7d04: 91000000     	add	x0, x0, #0x0
		0000000000007d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf19
    7d08: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7d0c: 91000021     	add	x1, x1, #0x0
		0000000000007d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7d10: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7d14: 91000063     	add	x3, x3, #0x0
		0000000000007d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7d18: 5280dc82     	mov	w2, #0x6e4              // =1764
    7d1c: 94000000     	bl	0x7d1c <aw8693x_parse_dt+0x3cc>
		0000000000007d1c:  R_AARCH64_CALL26	_printk
    7d20: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15aa
    7d24: 91000021     	add	x1, x1, #0x0
		0000000000007d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15aa
    7d28: 910043e2     	add	x2, sp, #0x10
    7d2c: aa1403e0     	mov	x0, x20
    7d30: 52800303     	mov	w3, #0x18               // =24
    7d34: aa1f03e4     	mov	x4, xzr
    7d38: 94000000     	bl	0x7d38 <aw8693x_parse_dt+0x3e8>
		0000000000007d38:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7d3c: 37f800e0     	tbnz	w0, #0x1f, 0x7d58 <aw8693x_parse_dt+0x408>
    7d40: a9412be8     	ldp	x8, x10, [sp, #0x10]
    7d44: 91129669     	add	x9, x19, #0x4a5
    7d48: f94013eb     	ldr	x11, [sp, #0x20]
    7d4c: a9002928     	stp	x8, x10, [x9]
    7d50: f900092b     	str	x11, [x9, #0x10]
    7d54: 14000009     	b	0x7d78 <aw8693x_parse_dt+0x428>
    7d58: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x126d
    7d5c: 91000000     	add	x0, x0, #0x0
		0000000000007d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x126d
    7d60: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7d64: 91000021     	add	x1, x1, #0x0
		0000000000007d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7d68: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7d6c: 91000063     	add	x3, x3, #0x0
		0000000000007d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7d70: 5280dd62     	mov	w2, #0x6eb              // =1771
    7d74: 94000000     	bl	0x7d74 <aw8693x_parse_dt+0x424>
		0000000000007d74:  R_AARCH64_CALL26	_printk
    7d78: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcb
    7d7c: 91000021     	add	x1, x1, #0x0
		0000000000007d7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcb
    7d80: 91118e62     	add	x2, x19, #0x463
    7d84: aa1403e0     	mov	x0, x20
    7d88: 52800023     	mov	w3, #0x1                // =1
    7d8c: aa1f03e4     	mov	x4, xzr
    7d90: 94000000     	bl	0x7d90 <aw8693x_parse_dt+0x440>
		0000000000007d90:  R_AARCH64_CALL26	of_property_read_variable_u8_array
    7d94: 36f80120     	tbz	w0, #0x1f, 0x7db8 <aw8693x_parse_dt+0x468>
    7d98: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbda
    7d9c: 91000000     	add	x0, x0, #0x0
		0000000000007d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbda
    7da0: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7da4: 91000021     	add	x1, x1, #0x0
		0000000000007da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7da8: 90000003     	adrp	x3, 0x7000 <richtap_rtp_work+0x68>
		0000000000007da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7dac: 91000063     	add	x3, x3, #0x0
		0000000000007dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7db0: 5280de42     	mov	w2, #0x6f2              // =1778
    7db4: 94000000     	bl	0x7db4 <aw8693x_parse_dt+0x464>
		0000000000007db4:  R_AARCH64_CALL26	_printk
    7db8: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d5
    7dbc: 91000021     	add	x1, x1, #0x0
		0000000000007dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d5
    7dc0: aa1403e0     	mov	x0, x20
    7dc4: aa1f03e2     	mov	x2, xzr
    7dc8: 94000000     	bl	0x7dc8 <aw8693x_parse_dt+0x478>
		0000000000007dc8:  R_AARCH64_CALL26	of_find_property
    7dcc: f100001f     	cmp	x0, #0x0
    7dd0: 90000015     	adrp	x21, 0x7000 <richtap_rtp_work+0x68>
		0000000000007dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18
    7dd4: 910002b5     	add	x21, x21, #0x0
		0000000000007dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18
    7dd8: 90000016     	adrp	x22, 0x7000 <richtap_rtp_work+0x68>
		0000000000007dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a2d
    7ddc: 910002d6     	add	x22, x22, #0x0
		0000000000007ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a2d
    7de0: 1a9f07e4     	cset	w4, ne
    7de4: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x173c
    7de8: 91000000     	add	x0, x0, #0x0
		0000000000007de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x173c
    7dec: aa1503e1     	mov	x1, x21
    7df0: 5280dec2     	mov	w2, #0x6f6              // =1782
    7df4: aa1603e3     	mov	x3, x22
    7df8: 39130264     	strb	w4, [x19, #0x4c0]
    7dfc: 94000000     	bl	0x7dfc <aw8693x_parse_dt+0x4ac>
		0000000000007dfc:  R_AARCH64_CALL26	_printk
    7e00: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191f
    7e04: 91000021     	add	x1, x1, #0x0
		0000000000007e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191f
    7e08: aa1403e0     	mov	x0, x20
    7e0c: aa1f03e2     	mov	x2, xzr
    7e10: 94000000     	bl	0x7e10 <aw8693x_parse_dt+0x4c0>
		0000000000007e10:  R_AARCH64_CALL26	of_find_property
    7e14: f100001f     	cmp	x0, #0x0
    7e18: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x71d
    7e1c: 91000000     	add	x0, x0, #0x0
		0000000000007e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x71d
    7e20: 1a9f07e4     	cset	w4, ne
    7e24: aa1503e1     	mov	x1, x21
    7e28: 5280df42     	mov	w2, #0x6fa              // =1786
    7e2c: aa1603e3     	mov	x3, x22
    7e30: 3912f664     	strb	w4, [x19, #0x4bd]
    7e34: 94000000     	bl	0x7e34 <aw8693x_parse_dt+0x4e4>
		0000000000007e34:  R_AARCH64_CALL26	_printk
    7e38: 90000001     	adrp	x1, 0x7000 <richtap_rtp_work+0x68>
		0000000000007e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x175b
    7e3c: 91000021     	add	x1, x1, #0x0
		0000000000007e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x175b
    7e40: aa1403e0     	mov	x0, x20
    7e44: aa1f03e2     	mov	x2, xzr
    7e48: 94000000     	bl	0x7e48 <aw8693x_parse_dt+0x4f8>
		0000000000007e48:  R_AARCH64_CALL26	of_find_property
    7e4c: f100001f     	cmp	x0, #0x0
    7e50: 90000000     	adrp	x0, 0x7000 <richtap_rtp_work+0x68>
		0000000000007e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c3
    7e54: 91000000     	add	x0, x0, #0x0
		0000000000007e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c3
    7e58: 1a9f07e4     	cset	w4, ne
    7e5c: aa1503e1     	mov	x1, x21
    7e60: 5280dfc2     	mov	w2, #0x6fe              // =1790
    7e64: aa1603e3     	mov	x3, x22
    7e68: 3912fe64     	strb	w4, [x19, #0x4bf]
    7e6c: 94000000     	bl	0x7e6c <aw8693x_parse_dt+0x51c>
		0000000000007e6c:  R_AARCH64_CALL26	_printk
    7e70: d5384108     	mrs	x8, SP_EL0
    7e74: f9438908     	ldr	x8, [x8, #0x710]
    7e78: f85f83a9     	ldur	x9, [x29, #-0x8]
    7e7c: eb09011f     	cmp	x8, x9
    7e80: 540000e1     	b.ne	0x7e9c <aw8693x_parse_dt+0x54c>
    7e84: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    7e88: a94457f6     	ldp	x22, x21, [sp, #0x40]
    7e8c: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    7e90: 910183ff     	add	sp, sp, #0x60
    7e94: d50323bf     	autiasp
    7e98: d65f03c0     	ret
    7e9c: 94000000     	bl	0x7e9c <aw8693x_parse_dt+0x54c>
		0000000000007e9c:  R_AARCH64_CALL26	__stack_chk_fail
