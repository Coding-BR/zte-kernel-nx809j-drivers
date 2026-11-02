
/input/zlog_common.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000af0 <zlog_reset_client>:
     af0: d503233f     	paciasp
     af4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     af8: f9000bf3     	str	x19, [sp, #0x10]
     afc: 910003fd     	mov	x29, sp
     b00: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b00:  R_AARCH64_ADR_PREL_PG_HI21	g_zlog_server+0x24c4
     b04: 39400108     	ldrb	w8, [x8]
		0000000000000b04:  R_AARCH64_LDST8_ABS_LO12_NC	g_zlog_server+0x24c4
     b08: 36000288     	tbz	w8, #0x0, 0xb58 <zlog_reset_client+0x68>
     b0c: aa0003f3     	mov	x19, x0
     b10: b4000320     	cbz	x0, 0xb74 <zlog_reset_client+0x84>
     b14: 9102c260     	add	x0, x19, #0xb0
     b18: 94000000     	bl	0xb18 <zlog_reset_client+0x28>
		0000000000000b18:  R_AARCH64_CALL26	mutex_lock
     b1c: a9500262     	ldp	x2, x0, [x19, #0x100]
     b20: 2a1f03e1     	mov	w1, wzr
     b24: b900e67f     	str	wzr, [x19, #0xe4]
     b28: a90f7e7f     	stp	xzr, xzr, [x19, #0xf0]
     b2c: 94000000     	bl	0xb2c <zlog_reset_client+0x3c>
		0000000000000b2c:  R_AARCH64_CALL26	memset
     b30: 14000017     	b	0xb8c <zlog_reset_client+0x9c>
     b34: 9103a268     	add	x8, x19, #0xe8
     b38: 52800049     	mov	w9, #0x2                // =2
     b3c: f829111f     	stclr	x9, [x8]
     b40: 9102c260     	add	x0, x19, #0xb0
     b44: 94000000     	bl	0xb44 <zlog_reset_client+0x54>
		0000000000000b44:  R_AARCH64_CALL26	mutex_unlock
     b48: f9400bf3     	ldr	x19, [sp, #0x10]
     b4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     b50: d50323bf     	autiasp
     b54: d65f03c0     	ret
     b58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x878
     b5c: 91000021     	add	x1, x1, #0x0
		0000000000000b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x878
     b60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x919
     b64: 91000000     	add	x0, x0, #0x0
		0000000000000b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x919
     b68: aa0103e2     	mov	x2, x1
     b6c: 94000000     	bl	0xb6c <zlog_reset_client+0x7c>
		0000000000000b6c:  R_AARCH64_CALL26	_printk
     b70: 17fffff6     	b	0xb48 <zlog_reset_client+0x58>
     b74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x774
     b78: 91000000     	add	x0, x0, #0x0
		0000000000000b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x774
     b7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x878
     b80: 91000021     	add	x1, x1, #0x0
		0000000000000b80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x878
     b84: 94000000     	bl	0xb84 <zlog_reset_client+0x94>
		0000000000000b84:  R_AARCH64_CALL26	_printk
     b88: 17fffff0     	b	0xb48 <zlog_reset_client+0x58>
     b8c: 9103a268     	add	x8, x19, #0xe8
     b90: 52800049     	mov	w9, #0x2                // =2
     b94: f9800111     	prfm	pstl1strm, [x8]
     b98: c85f7d0a     	ldxr	x10, [x8]
     b9c: 8a29014a     	bic	x10, x10, x9
     ba0: c80b7d0a     	stxr	w11, x10, [x8]
     ba4: 35ffffab     	cbnz	w11, 0xb98 <zlog_reset_client+0xa8>
     ba8: 17ffffe6     	b	0xb40 <zlog_reset_client+0x50>
