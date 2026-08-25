
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000239dc <syna_tcm_set_touch_report_config>:
   239dc: d503233f     	paciasp
   239e0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
   239e4: a9015ff8     	stp	x24, x23, [sp, #0x10]
   239e8: a90257f6     	stp	x22, x21, [sp, #0x20]
   239ec: a9034ff4     	stp	x20, x19, [sp, #0x30]
   239f0: 910003fd     	mov	x29, sp
   239f4: b5000080     	cbnz	x0, 0x23a04 <syna_tcm_set_touch_report_config+0x28>
   239f8: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		00000000000239f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   239fc: 91000000     	add	x0, x0, #0x0
		00000000000239fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   23a00: 14000012     	b	0x23a48 <syna_tcm_set_touch_report_config+0x6c>
   23a04: b40001e1     	cbz	x1, 0x23a40 <syna_tcm_set_touch_report_config+0x64>
   23a08: 340001c2     	cbz	w2, 0x23a40 <syna_tcm_set_touch_report_config+0x64>
   23a0c: 39402408     	ldrb	w8, [x0, #0x9]
   23a10: 7100051f     	cmp	w8, #0x1
   23a14: 540002e1     	b.ne	0x23a70 <syna_tcm_set_touch_report_config+0x94>
   23a18: 350000a3     	cbnz	w3, 0x23a2c <syna_tcm_set_touch_report_config+0x50>
   23a1c: f9402408     	ldr	x8, [x0, #0x48]
   23a20: 39405108     	ldrb	w8, [x8, #0x14]
   23a24: 36000348     	tbz	w8, #0x0, 0x23a8c <syna_tcm_set_touch_report_config+0xb0>
   23a28: 2a1f03e3     	mov	w3, wzr
   23a2c: 79416008     	ldrh	w8, [x0, #0xb0]
   23a30: 35000508     	cbnz	w8, 0x23ad0 <syna_tcm_set_touch_report_config+0xf4>
   23a34: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb16d
   23a38: 91000000     	add	x0, x0, #0x0
		0000000000023a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb16d
   23a3c: 14000003     	b	0x23a48 <syna_tcm_set_touch_report_config+0x6c>
   23a40: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x35f9
   23a44: 91000000     	add	x0, x0, #0x0
		0000000000023a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x35f9
   23a48: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
   23a4c: 91000021     	add	x1, x1, #0x0
		0000000000023a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
   23a50: 94000000     	bl	0x23a50 <syna_tcm_set_touch_report_config+0x74>
		0000000000023a50:  R_AARCH64_CALL26	_printk
   23a54: 12801e00     	mov	w0, #-0xf1              // =-241
   23a58: a9434ff4     	ldp	x20, x19, [sp, #0x30]
   23a5c: a94257f6     	ldp	x22, x21, [sp, #0x20]
   23a60: a9415ff8     	ldp	x24, x23, [sp, #0x10]
   23a64: a8c47bfd     	ldp	x29, x30, [sp], #0x40
   23a68: d50323bf     	autiasp
   23a6c: d65f03c0     	ret
   23a70: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5991
   23a74: 91000000     	add	x0, x0, #0x0
		0000000000023a74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5991
   23a78: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
   23a7c: 91000021     	add	x1, x1, #0x0
		0000000000023a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
   23a80: 2a0803e2     	mov	w2, w8
   23a84: 94000000     	bl	0x23a84 <syna_tcm_set_touch_report_config+0xa8>
		0000000000023a84:  R_AARCH64_CALL26	_printk
   23a88: 17fffff3     	b	0x23a54 <syna_tcm_set_touch_report_config+0x78>
   23a8c: 90000008     	adrp	x8, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa8d0
   23a90: 91000108     	add	x8, x8, #0x0
		0000000000023a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa8d0
   23a94: 90000009     	adrp	x9, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
   23a98: 91000129     	add	x9, x9, #0x0
		0000000000023a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
   23a9c: b9420c16     	ldr	w22, [x0, #0x20c]
   23aa0: aa0003f3     	mov	x19, x0
   23aa4: aa0803e0     	mov	x0, x8
   23aa8: aa0103f4     	mov	x20, x1
   23aac: aa0903e1     	mov	x1, x9
   23ab0: 2a0203f5     	mov	w21, w2
   23ab4: 94000000     	bl	0x23ab4 <syna_tcm_set_touch_report_config+0xd8>
		0000000000023ab4:  R_AARCH64_CALL26	_printk
   23ab8: aa1403e1     	mov	x1, x20
   23abc: 2a1503e2     	mov	w2, w21
   23ac0: 2a1603e3     	mov	w3, w22
   23ac4: aa1303e0     	mov	x0, x19
   23ac8: 79416008     	ldrh	w8, [x0, #0xb0]
   23acc: 34fffb48     	cbz	w8, 0x23a34 <syna_tcm_set_touch_report_config+0x58>
   23ad0: 79417814     	ldrh	w20, [x0, #0xbc]
   23ad4: 6b02029f     	cmp	w20, w2
   23ad8: 54000102     	b.hs	0x23af8 <syna_tcm_set_touch_report_config+0x11c>
   23adc: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cdf
   23ae0: 91000000     	add	x0, x0, #0x0
		0000000000023ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cdf
   23ae4: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023ae4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
   23ae8: 91000021     	add	x1, x1, #0x0
		0000000000023ae8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
   23aec: 2a1403e3     	mov	w3, w20
   23af0: 94000000     	bl	0x23af0 <syna_tcm_set_touch_report_config+0x114>
		0000000000023af0:  R_AARCH64_CALL26	_printk
   23af4: 17ffffd8     	b	0x23a54 <syna_tcm_set_touch_report_config+0x78>
   23af8: aa0103f6     	mov	x22, x1
   23afc: 2a0203f8     	mov	w24, w2
   23b00: 2a0303f5     	mov	w21, w3
   23b04: aa0003f7     	mov	x23, x0
   23b08: 94000000     	bl	0x23b08 <syna_tcm_set_touch_report_config+0x12c>
		0000000000023b08:  R_AARCH64_CALL26	syna_request_managed_device
   23b0c: b50000e0     	cbnz	x0, 0x23b28 <syna_tcm_set_touch_report_config+0x14c>
   23b10: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023b10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   23b14: 91000000     	add	x0, x0, #0x0
		0000000000023b14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   23b18: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ae7
   23b1c: 91000021     	add	x1, x1, #0x0
		0000000000023b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ae7
   23b20: 94000000     	bl	0x23b20 <syna_tcm_set_touch_report_config+0x144>
		0000000000023b20:  R_AARCH64_CALL26	_printk
   23b24: 14000005     	b	0x23b38 <syna_tcm_set_touch_report_config+0x15c>
   23b28: aa1403e1     	mov	x1, x20
   23b2c: 5281b802     	mov	w2, #0xdc0              // =3520
   23b30: 94000000     	bl	0x23b30 <syna_tcm_set_touch_report_config+0x154>
		0000000000023b30:  R_AARCH64_CALL26	devm_kmalloc
   23b34: b5000100     	cbnz	x0, 0x23b54 <syna_tcm_set_touch_report_config+0x178>
   23b38: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023b38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3cee
   23b3c: 91000000     	add	x0, x0, #0x0
		0000000000023b3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3cee
   23b40: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
   23b44: 91000021     	add	x1, x1, #0x0
		0000000000023b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
   23b48: 94000000     	bl	0x23b48 <syna_tcm_set_touch_report_config+0x16c>
		0000000000023b48:  R_AARCH64_CALL26	_printk
   23b4c: 12801e40     	mov	w0, #-0xf3              // =-243
   23b50: 17ffffc2     	b	0x23a58 <syna_tcm_set_touch_report_config+0x7c>
   23b54: 2a1403e1     	mov	w1, w20
   23b58: aa1603e2     	mov	x2, x22
   23b5c: 2a1803e3     	mov	w3, w24
   23b60: 2a1803e4     	mov	w4, w24
   23b64: aa0003f3     	mov	x19, x0
   23b68: 94000022     	bl	0x23bf0 <syna_pal_mem_cpy>
   23b6c: 36f800a0     	tbz	w0, #0x1f, 0x23b80 <syna_tcm_set_touch_report_config+0x1a4>
   23b70: 2a0003f4     	mov	w20, w0
   23b74: 90000000     	adrp	x0, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6c66
   23b78: 91000000     	add	x0, x0, #0x0
		0000000000023b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6c66
   23b7c: 14000016     	b	0x23bd4 <syna_tcm_set_touch_report_config+0x1f8>
   23b80: f941cee8     	ldr	x8, [x23, #0x398]
   23b84: aa1703e0     	mov	x0, x23
   23b88: 528004c1     	mov	w1, #0x26               // =38
   23b8c: aa1303e2     	mov	x2, x19
   23b90: 2a1403e3     	mov	w3, w20
   23b94: aa1f03e4     	mov	x4, xzr
   23b98: 2a1503e5     	mov	w5, w21
   23b9c: b85fc110     	ldur	w16, [x8, #-0x4]
   23ba0: 728751d1     	movk	w17, #0x3a8e
   23ba4: 72a48411     	movk	w17, #0x2420, lsl #16
   23ba8: 6b11021f     	cmp	w16, w17
   23bac: 54000040     	b.eq	0x23bb4 <syna_tcm_set_touch_report_config+0x1d8>
   23bb0: d4304500     	brk	#0x8228
   23bb4: d63f0100     	blr	x8
   23bb8: 90000008     	adrp	x8, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9413
   23bbc: 91000108     	add	x8, x8, #0x0
		0000000000023bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9413
   23bc0: 7100001f     	cmp	w0, #0x0
   23bc4: 90000009     	adrp	x9, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5fa2
   23bc8: 91000129     	add	x9, x9, #0x0
		0000000000023bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5fa2
   23bcc: 2a0003f4     	mov	w20, w0
   23bd0: 9a88b120     	csel	x0, x9, x8, lt
   23bd4: 90000001     	adrp	x1, 0x23000 <syna_tcm_parse_touch_report+0x127c>
		0000000000023bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x540
   23bd8: 91000021     	add	x1, x1, #0x0
		0000000000023bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x540
   23bdc: 94000000     	bl	0x23bdc <syna_tcm_set_touch_report_config+0x200>
		0000000000023bdc:  R_AARCH64_CALL26	_printk
   23be0: aa1303e0     	mov	x0, x19
   23be4: 94000020     	bl	0x23c64 <syna_pal_mem_free>
   23be8: 2a1403e0     	mov	w0, w20
   23bec: 17ffff9b     	b	0x23a58 <syna_tcm_set_touch_report_config+0x7c>
