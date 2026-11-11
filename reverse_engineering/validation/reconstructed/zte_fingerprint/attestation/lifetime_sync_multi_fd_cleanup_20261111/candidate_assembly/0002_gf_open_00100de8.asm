
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008e4 <gf_open>:
     8e4: d503233f     	paciasp
     8e8: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     8ec: f9000bf7     	str	x23, [sp, #0x10]
     8f0: a90257f6     	stp	x22, x21, [sp, #0x20]
     8f4: a9034ff4     	stp	x20, x19, [sp, #0x30]
     8f8: 910003fd     	mov	x29, sp
     8fc: aa0103f3     	mov	x19, x1
     900: aa0003f4     	mov	x20, x0
     904: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000904:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x730
     908: 91000000     	add	x0, x0, #0x0
		0000000000000908:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x730
     90c: 90000001     	adrp	x1, 0x0 <.text>
		000000000000090c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1011
     910: 91000021     	add	x1, x1, #0x0
		0000000000000910:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1011
     914: 94000000     	bl	0x914 <gf_open+0x30>
		0000000000000914:  R_AARCH64_CALL26	_printk
     918: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     91c: 91000000     	add	x0, x0, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     920: 94000000     	bl	0x920 <gf_open+0x3c>
		0000000000000920:  R_AARCH64_CALL26	mutex_lock
     924: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000924:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
     928: 91000108     	add	x8, x8, #0x0
		0000000000000928:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
     92c: aa0803f7     	mov	x23, x8
     930: f94002f7     	ldr	x23, [x23]
     934: eb0802ff     	cmp	x23, x8
     938: 54000220     	b.eq	0x97c <gf_open+0x98>
     93c: b85f82e9     	ldur	w9, [x23, #-0x8]
     940: b9404e8a     	ldr	w10, [x20, #0x4c]
     944: 6b0a013f     	cmp	w9, w10
     948: 54ffff41     	b.ne	0x930 <gf_open+0x4c>
     94c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x74e
     950: 91000000     	add	x0, x0, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x74e
     954: 94000000     	bl	0x954 <gf_open+0x70>
		0000000000000954:  R_AARCH64_CALL26	_printk
     958: 3941aee8     	ldrb	w8, [x23, #0x6b]
     95c: 350000c8     	cbnz	w8, 0x974 <gf_open+0x90>
     960: d10022f5     	sub	x21, x23, #0x8
     964: b94002a8     	ldr	w8, [x21]
     968: 34000068     	cbz	w8, 0x974 <gf_open+0x90>
     96c: f9400ae8     	ldr	x8, [x23, #0x10]
     970: b5000308     	cbnz	x8, 0x9d0 <gf_open+0xec>
     974: 12800256     	mov	w22, #-0x13             // =-19
     978: 14000007     	b	0x994 <gf_open+0xb0>
     97c: b9404e88     	ldr	w8, [x20, #0x4c]
     980: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x901
     984: 91000000     	add	x0, x0, #0x0
		0000000000000984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x901
     988: 12004d01     	and	w1, w8, #0xfffff
     98c: 94000000     	bl	0x98c <gf_open+0xa8>
		000000000000098c:  R_AARCH64_CALL26	_printk
     990: 128000b6     	mov	w22, #-0x6              // =-6
     994: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000994:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     998: 91000000     	add	x0, x0, #0x0
		0000000000000998:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     99c: 94000000     	bl	0x99c <gf_open+0xb8>
		000000000000099c:  R_AARCH64_CALL26	mutex_unlock
     9a0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd1
     9a4: 91000000     	add	x0, x0, #0x0
		00000000000009a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd1
     9a8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1011
     9ac: 91000021     	add	x1, x1, #0x0
		00000000000009ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1011
     9b0: 94000000     	bl	0x9b0 <gf_open+0xcc>
		00000000000009b0:  R_AARCH64_CALL26	_printk
     9b4: 2a1603e0     	mov	w0, w22
     9b8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     9bc: f9400bf7     	ldr	x23, [sp, #0x10]
     9c0: a94257f6     	ldp	x22, x21, [sp, #0x20]
     9c4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     9c8: d50323bf     	autiasp
     9cc: d65f03c0     	ret
     9d0: b94032e8     	ldr	w8, [x23, #0x30]
     9d4: 350002e8     	cbnz	w8, 0xa30 <gf_open+0x14c>
     9d8: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009d8:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     9dc: 91000000     	add	x0, x0, #0x0
		00000000000009dc:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     9e0: 94000000     	bl	0x9e0 <gf_open+0xfc>
		00000000000009e0:  R_AARCH64_CALL26	zlog_register_client
     9e4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x857
     9e8: 91000108     	add	x8, x8, #0x0
		00000000000009e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x857
     9ec: f100001f     	cmp	x0, #0x0
     9f0: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf00
     9f4: 91000129     	add	x9, x9, #0x0
		00000000000009f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf00
     9f8: f9003ae0     	str	x0, [x23, #0x70]
     9fc: 9a880120     	csel	x0, x9, x8, eq
     a00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1011
     a04: 91000021     	add	x1, x1, #0x0
		0000000000000a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1011
     a08: 94000000     	bl	0xa08 <gf_open+0x124>
		0000000000000a08:  R_AARCH64_CALL26	_printk
     a0c: f9400ae8     	ldr	x8, [x23, #0x10]
     a10: aa1f03e1     	mov	x1, xzr
     a14: 52819802     	mov	w2, #0xcc0              // =3264
     a18: 91004100     	add	x0, x8, #0x10
     a1c: 94000000     	bl	0xa1c <gf_open+0x138>
		0000000000000a1c:  R_AARCH64_CALL26	devres_open_group
     a20: f9000ee0     	str	x0, [x23, #0x18]
     a24: b5000300     	cbnz	x0, 0xa84 <gf_open+0x1a0>
     a28: 12800176     	mov	w22, #-0xc              // =-12
     a2c: 14000042     	b	0xb34 <gf_open+0x250>
     a30: f9400ee9     	ldr	x9, [x23, #0x18]
     a34: b4fffa09     	cbz	x9, 0x974 <gf_open+0x90>
     a38: 3941aae9     	ldrb	w9, [x23, #0x6a]
     a3c: 34fff9c9     	cbz	w9, 0x974 <gf_open+0x90>
     a40: 11000508     	add	w8, w8, #0x1
     a44: aa1403e0     	mov	x0, x20
     a48: aa1303e1     	mov	x1, x19
     a4c: b90032e8     	str	w8, [x23, #0x30]
     a50: f9001275     	str	x21, [x19, #0x20]
     a54: 94000000     	bl	0xa54 <gf_open+0x170>
		0000000000000a54:  R_AARCH64_CALL26	nonseekable_open
     a58: b94042e1     	ldr	w1, [x23, #0x40]
     a5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2f
     a60: 91000000     	add	x0, x0, #0x0
		0000000000000a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2f
     a64: 94000000     	bl	0xa64 <gf_open+0x180>
		0000000000000a64:  R_AARCH64_CALL26	_printk
     a68: aa1503e0     	mov	x0, x21
     a6c: 528000a1     	mov	w1, #0x5                // =5
     a70: 94000000     	bl	0xa70 <gf_open+0x18c>
		0000000000000a70:  R_AARCH64_CALL26	gf_hw_reset
     a74: 52800028     	mov	w8, #0x1                // =1
     a78: 2a1f03f6     	mov	w22, wzr
     a7c: 3901a2e8     	strb	w8, [x23, #0x68]
     a80: 17ffffc5     	b	0x994 <gf_open+0xb0>
     a84: aa1503e0     	mov	x0, x21
     a88: 94000000     	bl	0xa88 <gf_open+0x1a4>
		0000000000000a88:  R_AARCH64_CALL26	gf_parse_dts
     a8c: 2a0003f6     	mov	w22, w0
     a90: 35000440     	cbnz	w0, 0xb18 <gf_open+0x234>
     a94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1241
     a98: 91000000     	add	x0, x0, #0x0
		0000000000000a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1241
     a9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x894
     aa0: 91000021     	add	x1, x1, #0x0
		0000000000000aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x894
     aa4: 94000000     	bl	0xaa4 <gf_open+0x1c0>
		0000000000000aa4:  R_AARCH64_CALL26	_printk
     aa8: aa1503e0     	mov	x0, x21
     aac: 94000000     	bl	0xaac <gf_open+0x1c8>
		0000000000000aac:  R_AARCH64_CALL26	gf_irq_num
     ab0: 2a0003f6     	mov	w22, w0
     ab4: 37f80320     	tbnz	w0, #0x1f, 0xb18 <gf_open+0x234>
     ab8: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ab8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x15c0
     abc: 91000042     	add	x2, x2, #0x0
		0000000000000abc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x15c0
     ac0: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000ac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11bb
     ac4: 91000084     	add	x4, x4, #0x0
		0000000000000ac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11bb
     ac8: 2a1603e0     	mov	w0, w22
     acc: aa1f03e1     	mov	x1, xzr
     ad0: 52840023     	mov	w3, #0x2001             // =8193
     ad4: aa1503e5     	mov	x5, x21
     ad8: b90042f6     	str	w22, [x23, #0x40]
     adc: 94000000     	bl	0xadc <gf_open+0x1f8>
		0000000000000adc:  R_AARCH64_CALL26	request_threaded_irq
     ae0: 35000120     	cbnz	w0, 0xb04 <gf_open+0x220>
     ae4: b94042e0     	ldr	w0, [x23, #0x40]
     ae8: 52800036     	mov	w22, #0x1               // =1
     aec: 52800021     	mov	w1, #0x1                // =1
     af0: 3901aaf6     	strb	w22, [x23, #0x6a]
     af4: 94000000     	bl	0xaf4 <gf_open+0x210>
		0000000000000af4:  R_AARCH64_CALL26	irq_set_irq_wake
     af8: b94032e8     	ldr	w8, [x23, #0x30]
     afc: b90046f6     	str	w22, [x23, #0x44]
     b00: 17ffffd0     	b	0xa40 <gf_open+0x15c>
     b04: 2a0003f6     	mov	w22, w0
     b08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f5
     b0c: 91000000     	add	x0, x0, #0x0
		0000000000000b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f5
     b10: 2a1603e1     	mov	w1, w22
     b14: 94000000     	bl	0xb14 <gf_open+0x230>
		0000000000000b14:  R_AARCH64_CALL26	_printk
     b18: 3941aae8     	ldrb	w8, [x23, #0x6a]
     b1c: 34000068     	cbz	w8, 0xb28 <gf_open+0x244>
     b20: aa1503e0     	mov	x0, x21
     b24: 94000190     	bl	0x1164 <gf_release_irq>
     b28: aa1503e0     	mov	x0, x21
     b2c: 94000000     	bl	0xb2c <gf_open+0x248>
		0000000000000b2c:  R_AARCH64_CALL26	gf_cleanup
     b30: 3901a2ff     	strb	wzr, [x23, #0x68]
     b34: f9403ae0     	ldr	x0, [x23, #0x70]
     b38: b4fff2e0     	cbz	x0, 0x994 <gf_open+0xb0>
     b3c: 94000000     	bl	0xb3c <gf_open+0x258>
		0000000000000b3c:  R_AARCH64_CALL26	zlog_unregister_client
     b40: f9003aff     	str	xzr, [x23, #0x70]
     b44: 17ffff94     	b	0x994 <gf_open+0xb0>
