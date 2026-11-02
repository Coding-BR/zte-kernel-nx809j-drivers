
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000088ac <syna_tcm_set_touch_report_config>:
    88ac: d503233f     	paciasp
    88b0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    88b4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    88b8: a90257f6     	stp	x22, x21, [sp, #0x20]
    88bc: a9034ff4     	stp	x20, x19, [sp, #0x30]
    88c0: 910003fd     	mov	x29, sp
    88c4: b5000080     	cbnz	x0, 0x88d4 <syna_tcm_set_touch_report_config+0x28>
    88c8: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000088c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    88cc: 91000000     	add	x0, x0, #0x0
		00000000000088cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    88d0: 14000012     	b	0x8918 <syna_tcm_set_touch_report_config+0x6c>
    88d4: b40001e1     	cbz	x1, 0x8910 <syna_tcm_set_touch_report_config+0x64>
    88d8: 340001c2     	cbz	w2, 0x8910 <syna_tcm_set_touch_report_config+0x64>
    88dc: 39402408     	ldrb	w8, [x0, #0x9]
    88e0: 7100051f     	cmp	w8, #0x1
    88e4: 540002e1     	b.ne	0x8940 <syna_tcm_set_touch_report_config+0x94>
    88e8: 350000a3     	cbnz	w3, 0x88fc <syna_tcm_set_touch_report_config+0x50>
    88ec: f9402408     	ldr	x8, [x0, #0x48]
    88f0: 39405108     	ldrb	w8, [x8, #0x14]
    88f4: 36000348     	tbz	w8, #0x0, 0x895c <syna_tcm_set_touch_report_config+0xb0>
    88f8: 2a1f03e3     	mov	w3, wzr
    88fc: 79416008     	ldrh	w8, [x0, #0xb0]
    8900: 35000508     	cbnz	w8, 0x89a0 <syna_tcm_set_touch_report_config+0xf4>
    8904: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb3fa
    8908: 91000000     	add	x0, x0, #0x0
		0000000000008908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb3fa
    890c: 14000003     	b	0x8918 <syna_tcm_set_touch_report_config+0x6c>
    8910: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36bc
    8914: 91000000     	add	x0, x0, #0x0
		0000000000008914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36bc
    8918: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    891c: 91000021     	add	x1, x1, #0x0
		000000000000891c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    8920: 94000000     	bl	0x8920 <syna_tcm_set_touch_report_config+0x74>
		0000000000008920:  R_AARCH64_CALL26	_printk
    8924: 12801e00     	mov	w0, #-0xf1              // =-241
    8928: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    892c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    8930: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    8934: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    8938: d50323bf     	autiasp
    893c: d65f03c0     	ret
    8940: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ad0
    8944: 91000000     	add	x0, x0, #0x0
		0000000000008944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ad0
    8948: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008948:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    894c: 91000021     	add	x1, x1, #0x0
		000000000000894c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    8950: 2a0803e2     	mov	w2, w8
    8954: 94000000     	bl	0x8954 <syna_tcm_set_touch_report_config+0xa8>
		0000000000008954:  R_AARCH64_CALL26	_printk
    8958: 17fffff3     	b	0x8924 <syna_tcm_set_touch_report_config+0x78>
    895c: 90000008     	adrp	x8, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		000000000000895c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xab40
    8960: 91000108     	add	x8, x8, #0x0
		0000000000008960:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xab40
    8964: 90000009     	adrp	x9, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    8968: 91000129     	add	x9, x9, #0x0
		0000000000008968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    896c: b9420c16     	ldr	w22, [x0, #0x20c]
    8970: aa0003f3     	mov	x19, x0
    8974: aa0803e0     	mov	x0, x8
    8978: aa0103f4     	mov	x20, x1
    897c: aa0903e1     	mov	x1, x9
    8980: 2a0203f5     	mov	w21, w2
    8984: 94000000     	bl	0x8984 <syna_tcm_set_touch_report_config+0xd8>
		0000000000008984:  R_AARCH64_CALL26	_printk
    8988: aa1403e1     	mov	x1, x20
    898c: 2a1503e2     	mov	w2, w21
    8990: 2a1603e3     	mov	w3, w22
    8994: aa1303e0     	mov	x0, x19
    8998: 79416008     	ldrh	w8, [x0, #0xb0]
    899c: 34fffb48     	cbz	w8, 0x8904 <syna_tcm_set_touch_report_config+0x58>
    89a0: 79417814     	ldrh	w20, [x0, #0xbc]
    89a4: 6b02029f     	cmp	w20, w2
    89a8: 54000102     	b.hs	0x89c8 <syna_tcm_set_touch_report_config+0x11c>
    89ac: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000089ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d46
    89b0: 91000000     	add	x0, x0, #0x0
		00000000000089b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d46
    89b4: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000089b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    89b8: 91000021     	add	x1, x1, #0x0
		00000000000089b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    89bc: 2a1403e3     	mov	w3, w20
    89c0: 94000000     	bl	0x89c0 <syna_tcm_set_touch_report_config+0x114>
		00000000000089c0:  R_AARCH64_CALL26	_printk
    89c4: 17ffffd8     	b	0x8924 <syna_tcm_set_touch_report_config+0x78>
    89c8: aa0103f6     	mov	x22, x1
    89cc: 2a0203f8     	mov	w24, w2
    89d0: 2a0303f5     	mov	w21, w3
    89d4: aa0003f7     	mov	x23, x0
    89d8: 94000000     	bl	0x89d8 <syna_tcm_set_touch_report_config+0x12c>
		00000000000089d8:  R_AARCH64_CALL26	syna_request_managed_device
    89dc: b50000e0     	cbnz	x0, 0x89f8 <syna_tcm_set_touch_report_config+0x14c>
    89e0: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000089e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafb2
    89e4: 91000000     	add	x0, x0, #0x0
		00000000000089e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafb2
    89e8: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		00000000000089e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4bf8
    89ec: 91000021     	add	x1, x1, #0x0
		00000000000089ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4bf8
    89f0: 94000000     	bl	0x89f0 <syna_tcm_set_touch_report_config+0x144>
		00000000000089f0:  R_AARCH64_CALL26	_printk
    89f4: 14000005     	b	0x8a08 <syna_tcm_set_touch_report_config+0x15c>
    89f8: aa1403e1     	mov	x1, x20
    89fc: 5281b802     	mov	w2, #0xdc0              // =3520
    8a00: 94000000     	bl	0x8a00 <syna_tcm_set_touch_report_config+0x154>
		0000000000008a00:  R_AARCH64_CALL26	devm_kmalloc
    8a04: b5000100     	cbnz	x0, 0x8a24 <syna_tcm_set_touch_report_config+0x178>
    8a08: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3dca
    8a0c: 91000000     	add	x0, x0, #0x0
		0000000000008a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3dca
    8a10: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    8a14: 91000021     	add	x1, x1, #0x0
		0000000000008a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    8a18: 94000000     	bl	0x8a18 <syna_tcm_set_touch_report_config+0x16c>
		0000000000008a18:  R_AARCH64_CALL26	_printk
    8a1c: 12801e40     	mov	w0, #-0xf3              // =-243
    8a20: 17ffffc2     	b	0x8928 <syna_tcm_set_touch_report_config+0x7c>
    8a24: 2a1403e1     	mov	w1, w20
    8a28: aa1603e2     	mov	x2, x22
    8a2c: 2a1803e3     	mov	w3, w24
    8a30: 2a1803e4     	mov	w4, w24
    8a34: aa0003f3     	mov	x19, x0
    8a38: 94000022     	bl	0x8ac0 <syna_tcm_set_touch_report_config+0x214>
		0000000000008a38:  R_AARCH64_CALL26	syna_pal_mem_cpy
    8a3c: 36f800a0     	tbz	w0, #0x1f, 0x8a50 <syna_tcm_set_touch_report_config+0x1a4>
    8a40: 2a0003f4     	mov	w20, w0
    8a44: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6df0
    8a48: 91000000     	add	x0, x0, #0x0
		0000000000008a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6df0
    8a4c: 14000016     	b	0x8aa4 <syna_tcm_set_touch_report_config+0x1f8>
    8a50: f941cee8     	ldr	x8, [x23, #0x398]
    8a54: aa1703e0     	mov	x0, x23
    8a58: 528004c1     	mov	w1, #0x26               // =38
    8a5c: aa1303e2     	mov	x2, x19
    8a60: 2a1403e3     	mov	w3, w20
    8a64: aa1f03e4     	mov	x4, xzr
    8a68: 2a1503e5     	mov	w5, w21
    8a6c: b85fc110     	ldur	w16, [x8, #-0x4]
    8a70: 728751d1     	movk	w17, #0x3a8e
    8a74: 72a48411     	movk	w17, #0x2420, lsl #16
    8a78: 6b11021f     	cmp	w16, w17
    8a7c: 54000040     	b.eq	0x8a84 <syna_tcm_set_touch_report_config+0x1d8>
    8a80: d4304500     	brk	#0x8228
    8a84: d63f0100     	blr	x8
    8a88: 90000008     	adrp	x8, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9646
    8a8c: 91000108     	add	x8, x8, #0x0
		0000000000008a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9646
    8a90: 7100001f     	cmp	w0, #0x0
    8a94: 90000009     	adrp	x9, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60fe
    8a98: 91000129     	add	x9, x9, #0x0
		0000000000008a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60fe
    8a9c: 2a0003f4     	mov	w20, w0
    8aa0: 9a88b120     	csel	x0, x9, x8, lt
    8aa4: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008aa4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x554
    8aa8: 91000021     	add	x1, x1, #0x0
		0000000000008aa8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x554
    8aac: 94000000     	bl	0x8aac <syna_tcm_set_touch_report_config+0x200>
		0000000000008aac:  R_AARCH64_CALL26	_printk
    8ab0: aa1303e0     	mov	x0, x19
    8ab4: 94000020     	bl	0x8b34 <syna_dev_set_sensibility_level+0x70>
		0000000000008ab4:  R_AARCH64_CALL26	syna_pal_mem_free
    8ab8: 2a1403e0     	mov	w0, w20
    8abc: 17ffff9b     	b	0x8928 <syna_tcm_set_touch_report_config+0x7c>
