
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008d0 <gf_open>:
     8d0: d503233f     	paciasp
     8d4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     8d8: f9000bf7     	str	x23, [sp, #0x10]
     8dc: a90257f6     	stp	x22, x21, [sp, #0x20]
     8e0: a9034ff4     	stp	x20, x19, [sp, #0x30]
     8e4: 910003fd     	mov	x29, sp
     8e8: aa0103f3     	mov	x19, x1
     8ec: aa0003f4     	mov	x20, x0
     8f0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x730
     8f4: 91000000     	add	x0, x0, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x730
     8f8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1011
     8fc: 91000021     	add	x1, x1, #0x0
		00000000000008fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1011
     900: 94000000     	bl	0x900 <gf_open+0x30>
		0000000000000900:  R_AARCH64_CALL26	_printk
     904: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000904:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     908: 91000000     	add	x0, x0, #0x0
		0000000000000908:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     90c: 94000000     	bl	0x90c <gf_open+0x3c>
		000000000000090c:  R_AARCH64_CALL26	mutex_lock
     910: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000910:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
     914: 91000108     	add	x8, x8, #0x0
		0000000000000914:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
     918: aa0803f7     	mov	x23, x8
     91c: f94002f7     	ldr	x23, [x23]
     920: eb0802ff     	cmp	x23, x8
     924: 54000220     	b.eq	0x968 <gf_open+0x98>
     928: b85f82e9     	ldur	w9, [x23, #-0x8]
     92c: b9404e8a     	ldr	w10, [x20, #0x4c]
     930: 6b0a013f     	cmp	w9, w10
     934: 54ffff41     	b.ne	0x91c <gf_open+0x4c>
     938: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74e
     93c: 91000000     	add	x0, x0, #0x0
		000000000000093c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74e
     940: 94000000     	bl	0x940 <gf_open+0x70>
		0000000000000940:  R_AARCH64_CALL26	_printk
     944: 3941aee8     	ldrb	w8, [x23, #0x6b]
     948: 350000c8     	cbnz	w8, 0x960 <gf_open+0x90>
     94c: d10022f5     	sub	x21, x23, #0x8
     950: b94002a8     	ldr	w8, [x21]
     954: 34000068     	cbz	w8, 0x960 <gf_open+0x90>
     958: f9400ae8     	ldr	x8, [x23, #0x10]
     95c: b5000308     	cbnz	x8, 0x9bc <gf_open+0xec>
     960: 12800256     	mov	w22, #-0x13             // =-19
     964: 14000007     	b	0x980 <gf_open+0xb0>
     968: b9404e88     	ldr	w8, [x20, #0x4c]
     96c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x901
     970: 91000000     	add	x0, x0, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x901
     974: 12004d01     	and	w1, w8, #0xfffff
     978: 94000000     	bl	0x978 <gf_open+0xa8>
		0000000000000978:  R_AARCH64_CALL26	_printk
     97c: 128000b6     	mov	w22, #-0x6              // =-6
     980: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     984: 91000000     	add	x0, x0, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     988: 94000000     	bl	0x988 <gf_open+0xb8>
		0000000000000988:  R_AARCH64_CALL26	mutex_unlock
     98c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000098c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd1
     990: 91000000     	add	x0, x0, #0x0
		0000000000000990:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd1
     994: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000994:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1011
     998: 91000021     	add	x1, x1, #0x0
		0000000000000998:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1011
     99c: 94000000     	bl	0x99c <gf_open+0xcc>
		000000000000099c:  R_AARCH64_CALL26	_printk
     9a0: 2a1603e0     	mov	w0, w22
     9a4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     9a8: f9400bf7     	ldr	x23, [sp, #0x10]
     9ac: a94257f6     	ldp	x22, x21, [sp, #0x20]
     9b0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     9b4: d50323bf     	autiasp
     9b8: d65f03c0     	ret
     9bc: b94032e8     	ldr	w8, [x23, #0x30]
     9c0: 350002e8     	cbnz	w8, 0xa1c <gf_open+0x14c>
     9c4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009c4:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     9c8: 91000000     	add	x0, x0, #0x0
		00000000000009c8:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     9cc: 94000000     	bl	0x9cc <gf_open+0xfc>
		00000000000009cc:  R_AARCH64_CALL26	zlog_register_client
     9d0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x857
     9d4: 91000108     	add	x8, x8, #0x0
		00000000000009d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x857
     9d8: f100001f     	cmp	x0, #0x0
     9dc: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf00
     9e0: 91000129     	add	x9, x9, #0x0
		00000000000009e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf00
     9e4: f9003ae0     	str	x0, [x23, #0x70]
     9e8: 9a880120     	csel	x0, x9, x8, eq
     9ec: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1011
     9f0: 91000021     	add	x1, x1, #0x0
		00000000000009f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1011
     9f4: 94000000     	bl	0x9f4 <gf_open+0x124>
		00000000000009f4:  R_AARCH64_CALL26	_printk
     9f8: f9400ae8     	ldr	x8, [x23, #0x10]
     9fc: aa1f03e1     	mov	x1, xzr
     a00: 52819802     	mov	w2, #0xcc0              // =3264
     a04: 91004100     	add	x0, x8, #0x10
     a08: 94000000     	bl	0xa08 <gf_open+0x138>
		0000000000000a08:  R_AARCH64_CALL26	devres_open_group
     a0c: f9000ee0     	str	x0, [x23, #0x18]
     a10: b5000300     	cbnz	x0, 0xa70 <gf_open+0x1a0>
     a14: 12800176     	mov	w22, #-0xc              // =-12
     a18: 14000042     	b	0xb20 <gf_open+0x250>
     a1c: f9400ee9     	ldr	x9, [x23, #0x18]
     a20: b4fffa09     	cbz	x9, 0x960 <gf_open+0x90>
     a24: 3941aae9     	ldrb	w9, [x23, #0x6a]
     a28: 34fff9c9     	cbz	w9, 0x960 <gf_open+0x90>
     a2c: 11000508     	add	w8, w8, #0x1
     a30: aa1403e0     	mov	x0, x20
     a34: aa1303e1     	mov	x1, x19
     a38: b90032e8     	str	w8, [x23, #0x30]
     a3c: f9001275     	str	x21, [x19, #0x20]
     a40: 94000000     	bl	0xa40 <gf_open+0x170>
		0000000000000a40:  R_AARCH64_CALL26	nonseekable_open
     a44: b94042e1     	ldr	w1, [x23, #0x40]
     a48: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2f
     a4c: 91000000     	add	x0, x0, #0x0
		0000000000000a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2f
     a50: 94000000     	bl	0xa50 <gf_open+0x180>
		0000000000000a50:  R_AARCH64_CALL26	_printk
     a54: aa1503e0     	mov	x0, x21
     a58: 528000a1     	mov	w1, #0x5                // =5
     a5c: 94000000     	bl	0xa5c <gf_open+0x18c>
		0000000000000a5c:  R_AARCH64_CALL26	gf_hw_reset
     a60: 52800028     	mov	w8, #0x1                // =1
     a64: 2a1f03f6     	mov	w22, wzr
     a68: 3901a2e8     	strb	w8, [x23, #0x68]
     a6c: 17ffffc5     	b	0x980 <gf_open+0xb0>
     a70: aa1503e0     	mov	x0, x21
     a74: 94000000     	bl	0xa74 <gf_open+0x1a4>
		0000000000000a74:  R_AARCH64_CALL26	gf_parse_dts
     a78: 2a0003f6     	mov	w22, w0
     a7c: 35000440     	cbnz	w0, 0xb04 <gf_open+0x234>
     a80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1241
     a84: 91000000     	add	x0, x0, #0x0
		0000000000000a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1241
     a88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x894
     a8c: 91000021     	add	x1, x1, #0x0
		0000000000000a8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x894
     a90: 94000000     	bl	0xa90 <gf_open+0x1c0>
		0000000000000a90:  R_AARCH64_CALL26	_printk
     a94: aa1503e0     	mov	x0, x21
     a98: 94000000     	bl	0xa98 <gf_open+0x1c8>
		0000000000000a98:  R_AARCH64_CALL26	gf_irq_num
     a9c: 2a0003f6     	mov	w22, w0
     aa0: 37f80320     	tbnz	w0, #0x1f, 0xb04 <gf_open+0x234>
     aa4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000aa4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x15ac
     aa8: 91000042     	add	x2, x2, #0x0
		0000000000000aa8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x15ac
     aac: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11bb
     ab0: 91000084     	add	x4, x4, #0x0
		0000000000000ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11bb
     ab4: 2a1603e0     	mov	w0, w22
     ab8: aa1f03e1     	mov	x1, xzr
     abc: 52840023     	mov	w3, #0x2001             // =8193
     ac0: aa1503e5     	mov	x5, x21
     ac4: b90042f6     	str	w22, [x23, #0x40]
     ac8: 94000000     	bl	0xac8 <gf_open+0x1f8>
		0000000000000ac8:  R_AARCH64_CALL26	request_threaded_irq
     acc: 35000120     	cbnz	w0, 0xaf0 <gf_open+0x220>
     ad0: b94042e0     	ldr	w0, [x23, #0x40]
     ad4: 52800036     	mov	w22, #0x1               // =1
     ad8: 52800021     	mov	w1, #0x1                // =1
     adc: 3901aaf6     	strb	w22, [x23, #0x6a]
     ae0: 94000000     	bl	0xae0 <gf_open+0x210>
		0000000000000ae0:  R_AARCH64_CALL26	irq_set_irq_wake
     ae4: b94032e8     	ldr	w8, [x23, #0x30]
     ae8: b90046f6     	str	w22, [x23, #0x44]
     aec: 17ffffd0     	b	0xa2c <gf_open+0x15c>
     af0: 2a0003f6     	mov	w22, w0
     af4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5
     af8: 91000000     	add	x0, x0, #0x0
		0000000000000af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5
     afc: 2a1603e1     	mov	w1, w22
     b00: 94000000     	bl	0xb00 <gf_open+0x230>
		0000000000000b00:  R_AARCH64_CALL26	_printk
     b04: 3941aae8     	ldrb	w8, [x23, #0x6a]
     b08: 34000068     	cbz	w8, 0xb14 <gf_open+0x244>
     b0c: aa1503e0     	mov	x0, x21
     b10: 94000190     	bl	0x1150 <gf_release_irq>
     b14: aa1503e0     	mov	x0, x21
     b18: 94000000     	bl	0xb18 <gf_open+0x248>
		0000000000000b18:  R_AARCH64_CALL26	gf_cleanup
     b1c: 3901a2ff     	strb	wzr, [x23, #0x68]
     b20: f9403ae0     	ldr	x0, [x23, #0x70]
     b24: b4fff2e0     	cbz	x0, 0x980 <gf_open+0xb0>
     b28: 94000000     	bl	0xb28 <gf_open+0x258>
		0000000000000b28:  R_AARCH64_CALL26	zlog_unregister_client
     b2c: f9003aff     	str	xzr, [x23, #0x70]
     b30: 17ffff94     	b	0x980 <gf_open+0xb0>
