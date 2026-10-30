
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001a14 <syna_tcm_do_fw_update_ex>:
    1a14: d503233f     	paciasp
    1a18: d103c3ff     	sub	sp, sp, #0xf0
    1a1c: a90a7bfd     	stp	x29, x30, [sp, #0xa0]
    1a20: f9005bf9     	str	x25, [sp, #0xb0]
    1a24: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
    1a28: a90d57f6     	stp	x22, x21, [sp, #0xd0]
    1a2c: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
    1a30: 910283fd     	add	x29, sp, #0xa0
    1a34: d5384108     	mrs	x8, SP_EL0
    1a38: f9438908     	ldr	x8, [x8, #0x710]
    1a3c: f81f83a8     	stur	x8, [x29, #-0x8]
    1a40: b5000080     	cbnz	x0, 0x1a50 <syna_tcm_do_fw_update_ex+0x3c>
    1a44: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001a44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x20c8
    1a48: 91000000     	add	x0, x0, #0x0
		0000000000001a48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x20c8
    1a4c: 14000006     	b	0x1a64 <syna_tcm_do_fw_update_ex+0x50>
    1a50: b4000061     	cbz	x1, 0x1a5c <syna_tcm_do_fw_update_ex+0x48>
    1a54: b9400028     	ldr	w8, [x1]
    1a58: 35000288     	cbnz	w8, 0x1aa8 <syna_tcm_do_fw_update_ex+0x94>
    1a5c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d9e
    1a60: 91000000     	add	x0, x0, #0x0
		0000000000001a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d9e
    1a64: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f4
    1a68: 91000021     	add	x1, x1, #0x0
		0000000000001a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f4
    1a6c: 94000000     	bl	0x1a6c <syna_tcm_do_fw_update_ex+0x58>
		0000000000001a6c:  R_AARCH64_CALL26	_printk
    1a70: 12801e00     	mov	w0, #-0xf1              // =-241
    1a74: d5384108     	mrs	x8, SP_EL0
    1a78: f9438908     	ldr	x8, [x8, #0x710]
    1a7c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1a80: eb09011f     	cmp	x8, x9
    1a84: 54001561     	b.ne	0x1d30 <syna_tcm_do_fw_update_ex+0x31c>
    1a88: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
    1a8c: f9405bf9     	ldr	x25, [sp, #0xb0]
    1a90: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
    1a94: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
    1a98: a94a7bfd     	ldp	x29, x30, [sp, #0xa0]
    1a9c: 9103c3ff     	add	sp, sp, #0xf0
    1aa0: d50323bf     	autiasp
    1aa4: d65f03c0     	ret
    1aa8: aa0003f3     	mov	x19, x0
    1aac: 2a0503f4     	mov	w20, w5
    1ab0: aa0103f9     	mov	x25, x1
    1ab4: 2a0603f8     	mov	w24, w6
    1ab8: 2a0303f6     	mov	w22, w3
    1abc: 2a0403f5     	mov	w21, w4
    1ac0: a908ffff     	stp	xzr, xzr, [sp, #0x88]
    1ac4: a907ffff     	stp	xzr, xzr, [sp, #0x78]
    1ac8: a906ffff     	stp	xzr, xzr, [sp, #0x68]
    1acc: a905ffff     	stp	xzr, xzr, [sp, #0x58]
    1ad0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1ad4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1ad8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1adc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1ae0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1ae4: f90003ff     	str	xzr, [sp]
    1ae8: b90003e2     	str	w2, [sp]
    1aec: 35000065     	cbnz	w5, 0x1af8 <syna_tcm_do_fw_update_ex+0xe4>
    1af0: 2a1f03f7     	mov	w23, wzr
    1af4: 14000002     	b	0x1afc <syna_tcm_do_fw_update_ex+0xe8>
    1af8: b9420e77     	ldr	w23, [x19, #0x20c]
    1afc: 910003e8     	mov	x8, sp
    1b00: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    1b04: 91000021     	add	x1, x1, #0x0
		0000000000001b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    1b08: 90000002     	adrp	x2, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001b08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
    1b0c: 91000042     	add	x2, x2, #0x0
		0000000000001b0c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
    1b10: 91014100     	add	x0, x8, #0x50
    1b14: a9047fff     	stp	xzr, xzr, [sp, #0x40]
    1b18: 94000000     	bl	0x1b18 <syna_tcm_do_fw_update_ex+0x104>
		0000000000001b18:  R_AARCH64_CALL26	__mutex_init
    1b1c: b9400328     	ldr	w8, [x25]
    1b20: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2960
    1b24: 91000000     	add	x0, x0, #0x0
		0000000000001b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2960
    1b28: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f4
    1b2c: 91000021     	add	x1, x1, #0x0
		0000000000001b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f4
    1b30: f9000ff9     	str	x25, [sp, #0x18]
    1b34: b90013e8     	str	w8, [sp, #0x10]
    1b38: 94000000     	bl	0x1b38 <syna_tcm_do_fw_update_ex+0x124>
		0000000000001b38:  R_AARCH64_CALL26	_printk
    1b3c: 52800028     	mov	w8, #0x1                // =1
    1b40: b9038a68     	str	w8, [x19, #0x388]
    1b44: 39402669     	ldrb	w9, [x19, #0x9]
    1b48: 71002d3f     	cmp	w9, #0xb
    1b4c: 54000101     	b.ne	0x1b6c <syna_tcm_do_fw_update_ex+0x158>
    1b50: b94003e8     	ldr	w8, [sp]
    1b54: 52800129     	mov	w9, #0x9                // =9
    1b58: 2a1403e3     	mov	w3, w20
    1b5c: 2a090108     	orr	w8, w8, w9
    1b60: b90003e8     	str	w8, [sp]
    1b64: 37180188     	tbnz	w8, #0x3, 0x1b94 <syna_tcm_do_fw_update_ex+0x180>
    1b68: 14000010     	b	0x1ba8 <syna_tcm_do_fw_update_ex+0x194>
    1b6c: b94003e8     	ldr	w8, [sp]
    1b70: 7100053f     	cmp	w9, #0x1
    1b74: 54000721     	b.ne	0x1c58 <syna_tcm_do_fw_update_ex+0x244>
    1b78: 79416669     	ldrh	w9, [x19, #0xb2]
    1b7c: 2a1403e3     	mov	w3, w20
    1b80: 34000089     	cbz	w9, 0x1b90 <syna_tcm_do_fw_update_ex+0x17c>
    1b84: 52800129     	mov	w9, #0x9                // =9
    1b88: 2a090108     	orr	w8, w8, w9
    1b8c: b90003e8     	str	w8, [sp]
    1b90: 361800c8     	tbz	w8, #0x3, 0x1ba8 <syna_tcm_do_fw_update_ex+0x194>
    1b94: f9400fe9     	ldr	x9, [sp, #0x18]
    1b98: b9408fea     	ldr	w10, [sp, #0x8c]
    1b9c: b9404129     	ldr	w9, [x9, #0x40]
    1ba0: 0b090149     	add	w9, w10, w9
    1ba4: b9008fe9     	str	w9, [sp, #0x8c]
    1ba8: 360000c8     	tbz	w8, #0x0, 0x1bc0 <syna_tcm_do_fw_update_ex+0x1ac>
    1bac: f9400fe8     	ldr	x8, [sp, #0x18]
    1bb0: b9408fe9     	ldr	w9, [sp, #0x8c]
    1bb4: b9408108     	ldr	w8, [x8, #0x80]
    1bb8: 0b080128     	add	w8, w9, w8
    1bbc: b9008fe8     	str	w8, [sp, #0x8c]
    1bc0: 910003e1     	mov	x1, sp
    1bc4: aa1303e0     	mov	x0, x19
    1bc8: 2a1703e2     	mov	w2, w23
    1bcc: 94000000     	bl	0x1bcc <syna_tcm_do_fw_update_ex+0x1b8>
		0000000000001bcc:  R_AARCH64_CALL26	syna_tcm_set_up_flash_access
    1bd0: 36f80100     	tbz	w0, #0x1f, 0x1bf0 <syna_tcm_do_fw_update_ex+0x1dc>
    1bd4: 2a0003f4     	mov	w20, w0
    1bd8: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1552
    1bdc: 91000000     	add	x0, x0, #0x0
		0000000000001bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1552
    1be0: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f4
    1be4: 91000021     	add	x1, x1, #0x0
		0000000000001be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f4
    1be8: 94000000     	bl	0x1be8 <syna_tcm_do_fw_update_ex+0x1d4>
		0000000000001be8:  R_AARCH64_CALL26	_printk
    1bec: 14000037     	b	0x1cc8 <syna_tcm_do_fw_update_ex+0x2b4>
    1bf0: 39402662     	ldrb	w2, [x19, #0x9]
    1bf4: 71002c5f     	cmp	w2, #0xb
    1bf8: 54000241     	b.ne	0x1c40 <syna_tcm_do_fw_update_ex+0x22c>
    1bfc: b94003e8     	ldr	w8, [sp]
    1c00: 36180348     	tbz	w8, #0x3, 0x1c68 <syna_tcm_do_fw_update_ex+0x254>
    1c04: 394223e8     	ldrb	w8, [sp, #0x88]
    1c08: f9400fe9     	ldr	x9, [sp, #0x18]
    1c0c: 910003e1     	mov	x1, sp
    1c10: aa1303e0     	mov	x0, x19
    1c14: 2a1603e3     	mov	w3, w22
    1c18: 2a1503e4     	mov	w4, w21
    1c1c: 0a180108     	and	w8, w8, w24
    1c20: 9100c122     	add	x2, x9, #0x30
    1c24: 12000105     	and	w5, w8, #0x1
    1c28: 94000000     	bl	0x1c28 <syna_tcm_do_fw_update_ex+0x214>
		0000000000001c28:  R_AARCH64_CALL26	syna_tcm_update_flash_block
    1c2c: 36f801c0     	tbz	w0, #0x1f, 0x1c64 <syna_tcm_do_fw_update_ex+0x250>
    1c30: 2a0003f4     	mov	w20, w0
    1c34: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x157e
    1c38: 91000000     	add	x0, x0, #0x0
		0000000000001c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x157e
    1c3c: 17ffffe9     	b	0x1be0 <syna_tcm_do_fw_update_ex+0x1cc>
    1c40: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa38
    1c44: 91000000     	add	x0, x0, #0x0
		0000000000001c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa38
    1c48: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f4
    1c4c: 91000021     	add	x1, x1, #0x0
		0000000000001c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f4
    1c50: 94000000     	bl	0x1c50 <syna_tcm_do_fw_update_ex+0x23c>
		0000000000001c50:  R_AARCH64_CALL26	_printk
    1c54: 14000018     	b	0x1cb4 <syna_tcm_do_fw_update_ex+0x2a0>
    1c58: 2a1403e3     	mov	w3, w20
    1c5c: 371ff9c8     	tbnz	w8, #0x3, 0x1b94 <syna_tcm_do_fw_update_ex+0x180>
    1c60: 17ffffd2     	b	0x1ba8 <syna_tcm_do_fw_update_ex+0x194>
    1c64: b94003e8     	ldr	w8, [sp]
    1c68: 360001c8     	tbz	w8, #0x0, 0x1ca0 <syna_tcm_do_fw_update_ex+0x28c>
    1c6c: f9400fe8     	ldr	x8, [sp, #0x18]
    1c70: 910003e1     	mov	x1, sp
    1c74: aa1303e0     	mov	x0, x19
    1c78: 2a1603e3     	mov	w3, w22
    1c7c: 2a1503e4     	mov	w4, w21
    1c80: 2a1f03e5     	mov	w5, wzr
    1c84: 9101c102     	add	x2, x8, #0x70
    1c88: 94000000     	bl	0x1c88 <syna_tcm_do_fw_update_ex+0x274>
		0000000000001c88:  R_AARCH64_CALL26	syna_tcm_update_flash_block
    1c8c: 36f800a0     	tbz	w0, #0x1f, 0x1ca0 <syna_tcm_do_fw_update_ex+0x28c>
    1c90: 2a0003f4     	mov	w20, w0
    1c94: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x798e
    1c98: 91000000     	add	x0, x0, #0x0
		0000000000001c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x798e
    1c9c: 17ffffd1     	b	0x1be0 <syna_tcm_do_fw_update_ex+0x1cc>
    1ca0: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x501e
    1ca4: 91000000     	add	x0, x0, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x501e
    1ca8: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f4
    1cac: 91000021     	add	x1, x1, #0x0
		0000000000001cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f4
    1cb0: 94000000     	bl	0x1cb0 <syna_tcm_do_fw_update_ex+0x29c>
		0000000000001cb0:  R_AARCH64_CALL26	_printk
    1cb4: aa1303e0     	mov	x0, x19
    1cb8: 2a1403e1     	mov	w1, w20
    1cbc: 94000000     	bl	0x1cbc <syna_tcm_do_fw_update_ex+0x2a8>
		0000000000001cbc:  R_AARCH64_CALL26	syna_tcm_reset
    1cc0: 2a0003f4     	mov	w20, w0
    1cc4: 37f80300     	tbnz	w0, #0x1f, 0x1d24 <syna_tcm_do_fw_update_ex+0x310>
    1cc8: b9038a7f     	str	wzr, [x19, #0x388]
    1ccc: 394203e2     	ldrb	w2, [sp, #0x80]
    1cd0: 35000122     	cbnz	w2, 0x1cf4 <syna_tcm_do_fw_update_ex+0x2e0>
    1cd4: f94023f3     	ldr	x19, [sp, #0x40]
    1cd8: 94000000     	bl	0x1cd8 <syna_tcm_do_fw_update_ex+0x2c4>
		0000000000001cd8:  R_AARCH64_CALL26	syna_request_managed_device
    1cdc: b4000180     	cbz	x0, 0x1d0c <syna_tcm_do_fw_update_ex+0x2f8>
    1ce0: b4000073     	cbz	x19, 0x1cec <syna_tcm_do_fw_update_ex+0x2d8>
    1ce4: aa1303e1     	mov	x1, x19
    1ce8: 94000000     	bl	0x1ce8 <syna_tcm_do_fw_update_ex+0x2d4>
		0000000000001ce8:  R_AARCH64_CALL26	devm_kfree
    1cec: 2a1403e0     	mov	w0, w20
    1cf0: 17ffff61     	b	0x1a74 <syna_tcm_do_fw_update_ex+0x60>
    1cf4: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    1cf8: 91000000     	add	x0, x0, #0x0
		0000000000001cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    1cfc: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    1d00: 91000021     	add	x1, x1, #0x0
		0000000000001d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    1d04: 94000000     	bl	0x1d04 <syna_tcm_do_fw_update_ex+0x2f0>
		0000000000001d04:  R_AARCH64_CALL26	_printk
    1d08: 17fffff3     	b	0x1cd4 <syna_tcm_do_fw_update_ex+0x2c0>
    1d0c: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    1d10: 91000000     	add	x0, x0, #0x0
		0000000000001d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    1d14: 90000001     	adrp	x1, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    1d18: 91000021     	add	x1, x1, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    1d1c: 94000000     	bl	0x1d1c <syna_tcm_do_fw_update_ex+0x308>
		0000000000001d1c:  R_AARCH64_CALL26	_printk
    1d20: 17fffff3     	b	0x1cec <syna_tcm_do_fw_update_ex+0x2d8>
    1d24: 90000000     	adrp	x0, 0x1000 <syna_tcm_read_flash_area+0x750>
		0000000000001d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8910
    1d28: 91000000     	add	x0, x0, #0x0
		0000000000001d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8910
    1d2c: 17ffffad     	b	0x1be0 <syna_tcm_do_fw_update_ex+0x1cc>
    1d30: 94000000     	bl	0x1d30 <syna_tcm_do_fw_update_ex+0x31c>
		0000000000001d30:  R_AARCH64_CALL26	__stack_chk_fail
