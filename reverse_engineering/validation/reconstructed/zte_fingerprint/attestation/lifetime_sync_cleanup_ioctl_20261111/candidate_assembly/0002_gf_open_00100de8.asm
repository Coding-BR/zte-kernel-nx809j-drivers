
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000008b0 <gf_open>:
     8b0: d503233f     	paciasp
     8b4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     8b8: f9000bf7     	str	x23, [sp, #0x10]
     8bc: a90257f6     	stp	x22, x21, [sp, #0x20]
     8c0: a9034ff4     	stp	x20, x19, [sp, #0x30]
     8c4: 910003fd     	mov	x29, sp
     8c8: aa0103f3     	mov	x19, x1
     8cc: aa0003f4     	mov	x20, x0
     8d0: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x762
     8d4: 91000000     	add	x0, x0, #0x0
		00000000000008d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x762
     8d8: 90000001     	adrp	x1, 0x0 <.text>
		00000000000008d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1043
     8dc: 91000021     	add	x1, x1, #0x0
		00000000000008dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1043
     8e0: 94000000     	bl	0x8e0 <gf_open+0x30>
		00000000000008e0:  R_AARCH64_CALL26	_printk
     8e4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000008e4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     8e8: 91000000     	add	x0, x0, #0x0
		00000000000008e8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     8ec: 94000000     	bl	0x8ec <gf_open+0x3c>
		00000000000008ec:  R_AARCH64_CALL26	mutex_lock
     8f0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000008f0:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x198
     8f4: 91000108     	add	x8, x8, #0x0
		00000000000008f4:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x198
     8f8: aa0803f7     	mov	x23, x8
     8fc: f94002f7     	ldr	x23, [x23]
     900: eb0802ff     	cmp	x23, x8
     904: 54000220     	b.eq	0x948 <gf_open+0x98>
     908: b85f82e9     	ldur	w9, [x23, #-0x8]
     90c: b9404e8a     	ldr	w10, [x20, #0x4c]
     910: 6b0a013f     	cmp	w9, w10
     914: 54ffff41     	b.ne	0x8fc <gf_open+0x4c>
     918: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x780
     91c: 91000000     	add	x0, x0, #0x0
		000000000000091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x780
     920: 94000000     	bl	0x920 <gf_open+0x70>
		0000000000000920:  R_AARCH64_CALL26	_printk
     924: 3941aee8     	ldrb	w8, [x23, #0x6b]
     928: 350000c8     	cbnz	w8, 0x940 <gf_open+0x90>
     92c: d10022f5     	sub	x21, x23, #0x8
     930: b94002a8     	ldr	w8, [x21]
     934: 34000068     	cbz	w8, 0x940 <gf_open+0x90>
     938: f9400ae8     	ldr	x8, [x23, #0x10]
     93c: b5000308     	cbnz	x8, 0x99c <gf_open+0xec>
     940: 12800256     	mov	w22, #-0x13             // =-19
     944: 14000007     	b	0x960 <gf_open+0xb0>
     948: b9404e88     	ldr	w8, [x20, #0x4c]
     94c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000094c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x933
     950: 91000000     	add	x0, x0, #0x0
		0000000000000950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x933
     954: 12004d01     	and	w1, w8, #0xfffff
     958: 94000000     	bl	0x958 <gf_open+0xa8>
		0000000000000958:  R_AARCH64_CALL26	_printk
     95c: 128000b6     	mov	w22, #-0x6              // =-6
     960: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000960:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
     964: 91000000     	add	x0, x0, #0x0
		0000000000000964:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
     968: 94000000     	bl	0x968 <gf_open+0xb8>
		0000000000000968:  R_AARCH64_CALL26	mutex_unlock
     96c: 90000000     	adrp	x0, 0x0 <.text>
		000000000000096c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd03
     970: 91000000     	add	x0, x0, #0x0
		0000000000000970:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd03
     974: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1043
     978: 91000021     	add	x1, x1, #0x0
		0000000000000978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1043
     97c: 94000000     	bl	0x97c <gf_open+0xcc>
		000000000000097c:  R_AARCH64_CALL26	_printk
     980: 2a1603e0     	mov	w0, w22
     984: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     988: f9400bf7     	ldr	x23, [sp, #0x10]
     98c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     990: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     994: d50323bf     	autiasp
     998: d65f03c0     	ret
     99c: b94032e8     	ldr	w8, [x23, #0x30]
     9a0: 350002e8     	cbnz	w8, 0x9fc <gf_open+0x14c>
     9a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000009a4:  R_AARCH64_ADR_PREL_PG_HI21	goodix_zlog_fp_dev
     9a8: 91000000     	add	x0, x0, #0x0
		00000000000009a8:  R_AARCH64_ADD_ABS_LO12_NC	goodix_zlog_fp_dev
     9ac: 94000000     	bl	0x9ac <gf_open+0xfc>
		00000000000009ac:  R_AARCH64_CALL26	zlog_register_client
     9b0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000009b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x889
     9b4: 91000108     	add	x8, x8, #0x0
		00000000000009b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x889
     9b8: f100001f     	cmp	x0, #0x0
     9bc: 90000009     	adrp	x9, 0x0 <.text>
		00000000000009bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf32
     9c0: 91000129     	add	x9, x9, #0x0
		00000000000009c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf32
     9c4: f9003ae0     	str	x0, [x23, #0x70]
     9c8: 9a880120     	csel	x0, x9, x8, eq
     9cc: 90000001     	adrp	x1, 0x0 <.text>
		00000000000009cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1043
     9d0: 91000021     	add	x1, x1, #0x0
		00000000000009d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1043
     9d4: 94000000     	bl	0x9d4 <gf_open+0x124>
		00000000000009d4:  R_AARCH64_CALL26	_printk
     9d8: f9400ae8     	ldr	x8, [x23, #0x10]
     9dc: aa1f03e1     	mov	x1, xzr
     9e0: 52819802     	mov	w2, #0xcc0              // =3264
     9e4: 91004100     	add	x0, x8, #0x10
     9e8: 94000000     	bl	0x9e8 <gf_open+0x138>
		00000000000009e8:  R_AARCH64_CALL26	devres_open_group
     9ec: f9000ee0     	str	x0, [x23, #0x18]
     9f0: b5000300     	cbnz	x0, 0xa50 <gf_open+0x1a0>
     9f4: 12800176     	mov	w22, #-0xc              // =-12
     9f8: 14000042     	b	0xb00 <gf_open+0x250>
     9fc: f9400ee9     	ldr	x9, [x23, #0x18]
     a00: b4fffa09     	cbz	x9, 0x940 <gf_open+0x90>
     a04: 3941aae9     	ldrb	w9, [x23, #0x6a]
     a08: 34fff9c9     	cbz	w9, 0x940 <gf_open+0x90>
     a0c: 11000508     	add	w8, w8, #0x1
     a10: aa1403e0     	mov	x0, x20
     a14: aa1303e1     	mov	x1, x19
     a18: b90032e8     	str	w8, [x23, #0x30]
     a1c: f9001275     	str	x21, [x19, #0x20]
     a20: 94000000     	bl	0xa20 <gf_open+0x170>
		0000000000000a20:  R_AARCH64_CALL26	nonseekable_open
     a24: b94042e1     	ldr	w1, [x23, #0x40]
     a28: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa61
     a2c: 91000000     	add	x0, x0, #0x0
		0000000000000a2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa61
     a30: 94000000     	bl	0xa30 <gf_open+0x180>
		0000000000000a30:  R_AARCH64_CALL26	_printk
     a34: aa1503e0     	mov	x0, x21
     a38: 528000a1     	mov	w1, #0x5                // =5
     a3c: 94000000     	bl	0xa3c <gf_open+0x18c>
		0000000000000a3c:  R_AARCH64_CALL26	gf_hw_reset
     a40: 52800028     	mov	w8, #0x1                // =1
     a44: 2a1f03f6     	mov	w22, wzr
     a48: 3901a2e8     	strb	w8, [x23, #0x68]
     a4c: 17ffffc5     	b	0x960 <gf_open+0xb0>
     a50: aa1503e0     	mov	x0, x21
     a54: 94000000     	bl	0xa54 <gf_open+0x1a4>
		0000000000000a54:  R_AARCH64_CALL26	gf_parse_dts
     a58: 2a0003f6     	mov	w22, w0
     a5c: 35000440     	cbnz	w0, 0xae4 <gf_open+0x234>
     a60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000a60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1273
     a64: 91000000     	add	x0, x0, #0x0
		0000000000000a64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1273
     a68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000a68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8c6
     a6c: 91000021     	add	x1, x1, #0x0
		0000000000000a6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8c6
     a70: 94000000     	bl	0xa70 <gf_open+0x1c0>
		0000000000000a70:  R_AARCH64_CALL26	_printk
     a74: aa1503e0     	mov	x0, x21
     a78: 94000000     	bl	0xa78 <gf_open+0x1c8>
		0000000000000a78:  R_AARCH64_CALL26	gf_irq_num
     a7c: 2a0003f6     	mov	w22, w0
     a80: 37f80320     	tbnz	w0, #0x1f, 0xae4 <gf_open+0x234>
     a84: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000a84:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x158c
     a88: 91000042     	add	x2, x2, #0x0
		0000000000000a88:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x158c
     a8c: 90000004     	adrp	x4, 0x0 <.text>
		0000000000000a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11ed
     a90: 91000084     	add	x4, x4, #0x0
		0000000000000a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11ed
     a94: 2a1603e0     	mov	w0, w22
     a98: aa1f03e1     	mov	x1, xzr
     a9c: 52840023     	mov	w3, #0x2001             // =8193
     aa0: aa1503e5     	mov	x5, x21
     aa4: b90042f6     	str	w22, [x23, #0x40]
     aa8: 94000000     	bl	0xaa8 <gf_open+0x1f8>
		0000000000000aa8:  R_AARCH64_CALL26	request_threaded_irq
     aac: 35000120     	cbnz	w0, 0xad0 <gf_open+0x220>
     ab0: b94042e0     	ldr	w0, [x23, #0x40]
     ab4: 52800036     	mov	w22, #0x1               // =1
     ab8: 52800021     	mov	w1, #0x1                // =1
     abc: 3901aaf6     	strb	w22, [x23, #0x6a]
     ac0: 94000000     	bl	0xac0 <gf_open+0x210>
		0000000000000ac0:  R_AARCH64_CALL26	irq_set_irq_wake
     ac4: b94032e8     	ldr	w8, [x23, #0x30]
     ac8: b90046f6     	str	w22, [x23, #0x44]
     acc: 17ffffd0     	b	0xa0c <gf_open+0x15c>
     ad0: 2a0003f6     	mov	w22, w0
     ad4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x427
     ad8: 91000000     	add	x0, x0, #0x0
		0000000000000ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x427
     adc: 2a1603e1     	mov	w1, w22
     ae0: 94000000     	bl	0xae0 <gf_open+0x230>
		0000000000000ae0:  R_AARCH64_CALL26	_printk
     ae4: 3941aae8     	ldrb	w8, [x23, #0x6a]
     ae8: 34000068     	cbz	w8, 0xaf4 <gf_open+0x244>
     aec: aa1503e0     	mov	x0, x21
     af0: 94000190     	bl	0x1130 <gf_release_irq>
     af4: aa1503e0     	mov	x0, x21
     af8: 94000000     	bl	0xaf8 <gf_open+0x248>
		0000000000000af8:  R_AARCH64_CALL26	gf_cleanup
     afc: 3901a2ff     	strb	wzr, [x23, #0x68]
     b00: f9403ae0     	ldr	x0, [x23, #0x70]
     b04: b4fff2e0     	cbz	x0, 0x960 <gf_open+0xb0>
     b08: 94000000     	bl	0xb08 <gf_open+0x258>
		0000000000000b08:  R_AARCH64_CALL26	zlog_unregister_client
     b0c: f9003aff     	str	xzr, [x23, #0x70]
     b10: 17ffff94     	b	0x960 <gf_open+0xb0>
