
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020b8c <syna_tcm_update_cs_config>:
   20b8c: d503233f     	paciasp
   20b90: d10543ff     	sub	sp, sp, #0x150
   20b94: a90f7bfd     	stp	x29, x30, [sp, #0xf0]
   20b98: a9106ffc     	stp	x28, x27, [sp, #0x100]
   20b9c: a91167fa     	stp	x26, x25, [sp, #0x110]
   20ba0: a9125ff8     	stp	x24, x23, [sp, #0x120]
   20ba4: a91357f6     	stp	x22, x21, [sp, #0x130]
   20ba8: a9144ff4     	stp	x20, x19, [sp, #0x140]
   20bac: 9103c3fd     	add	x29, sp, #0xf0
   20bb0: d5384108     	mrs	x8, SP_EL0
   20bb4: f9438908     	ldr	x8, [x8, #0x710]
   20bb8: f81f83a8     	stur	x8, [x29, #-0x8]
   20bbc: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   20bc0: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   20bc4: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   20bc8: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   20bcc: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   20bd0: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   20bd4: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   20bd8: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   20bdc: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   20be0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   20be4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   20be8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   20bec: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   20bf0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   20bf4: b4000fa0     	cbz	x0, 0x20de8 <syna_tcm_update_cs_config+0x25c>
   20bf8: aa0103f6     	mov	x22, x1
   20bfc: b4000fc1     	cbz	x1, 0x20df4 <syna_tcm_update_cs_config+0x268>
   20c00: 2a0203f7     	mov	w23, w2
   20c04: 34000f82     	cbz	w2, 0x20df4 <syna_tcm_update_cs_config+0x268>
   20c08: 2a0403f4     	mov	w20, w4
   20c0c: 2a0303f8     	mov	w24, w3
   20c10: aa0003f3     	mov	x19, x0
   20c14: a90dffff     	stp	xzr, xzr, [sp, #0xd8]
   20c18: a90cffff     	stp	xzr, xzr, [sp, #0xc8]
   20c1c: a90bffff     	stp	xzr, xzr, [sp, #0xb8]
   20c20: a90affff     	stp	xzr, xzr, [sp, #0xa8]
   20c24: a909ffff     	stp	xzr, xzr, [sp, #0x98]
   20c28: a908ffff     	stp	xzr, xzr, [sp, #0x88]
   20c2c: a907ffff     	stp	xzr, xzr, [sp, #0x78]
   20c30: a906ffff     	stp	xzr, xzr, [sp, #0x68]
   20c34: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   20c38: f9002bff     	str	xzr, [sp, #0x50]
   20c3c: 34000084     	cbz	w4, 0x20c4c <syna_tcm_update_cs_config+0xc0>
   20c40: b9420e79     	ldr	w25, [x19, #0x20c]
   20c44: b941ea75     	ldr	w21, [x19, #0x1e8]
   20c48: 14000003     	b	0x20c54 <syna_tcm_update_cs_config+0xc8>
   20c4c: 2a1f03f5     	mov	w21, wzr
   20c50: 2a1f03f9     	mov	w25, wzr
   20c54: 910143e8     	add	x8, sp, #0x50
   20c58: 9000001a     	adrp	x26, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   20c5c: 9100035a     	add	x26, x26, #0x0
		0000000000020c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   20c60: 9000001b     	adrp	x27, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020c60:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x964
   20c64: 9100037b     	add	x27, x27, #0x0
		0000000000020c64:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x964
   20c68: 91014100     	add	x0, x8, #0x50
   20c6c: aa1a03e1     	mov	x1, x26
   20c70: aa1b03e2     	mov	x2, x27
   20c74: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   20c78: 94000000     	bl	0x20c78 <syna_tcm_update_cs_config+0xec>
		0000000000020c78:  R_AARCH64_CALL26	__mutex_init
   20c7c: 910023e8     	add	x8, sp, #0x8
   20c80: aa1a03e1     	mov	x1, x26
   20c84: aa1b03e2     	mov	x2, x27
   20c88: 91004100     	add	x0, x8, #0x10
   20c8c: 390123ff     	strb	wzr, [sp, #0x48]
   20c90: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   20c94: 94000000     	bl	0x20c94 <syna_tcm_update_cs_config+0x108>
		0000000000020c94:  R_AARCH64_CALL26	__mutex_init
   20c98: 52800028     	mov	w8, #0x1                // =1
   20c9c: 910143e1     	add	x1, sp, #0x50
   20ca0: aa1303e0     	mov	x0, x19
   20ca4: 2a1903e2     	mov	w2, w25
   20ca8: 2a1503e3     	mov	w3, w21
   20cac: b9038a68     	str	w8, [x19, #0x388]
   20cb0: 97fff3eb     	bl	0x1dc5c <syna_tcm_set_up_flash_access>
   20cb4: 37f80ae0     	tbnz	w0, #0x1f, 0x20e10 <syna_tcm_update_cs_config+0x284>
   20cb8: 910143e1     	add	x1, sp, #0x50
   20cbc: 910023e2     	add	x2, sp, #0x8
   20cc0: aa1303e0     	mov	x0, x19
   20cc4: 2a1903e3     	mov	w3, w25
   20cc8: 97fff750     	bl	0x1ea08 <syna_tcm_read_flash_boot_config>
   20ccc: 37f80aa0     	tbnz	w0, #0x1f, 0x20e20 <syna_tcm_update_cs_config+0x294>
   20cd0: b94017e9     	ldr	w9, [sp, #0x14]
   20cd4: f94007ea     	ldr	x10, [sp, #0x8]
   20cd8: 5280100b     	mov	w11, #0x80              // =128
   20cdc: 51022128     	sub	w8, w9, #0x88
   20ce0: 14000003     	b	0x20cec <syna_tcm_update_cs_config+0x160>
   20ce4: 7100216b     	subs	w11, w11, #0x8
   20ce8: 54000140     	b.eq	0x20d10 <syna_tcm_update_cs_config+0x184>
   20cec: 0b0b012c     	add	w12, w9, w11
   20cf0: 51021d8d     	sub	w13, w12, #0x87
   20cf4: 38ed494d     	ldrsb	w13, [x10, w13, uxtw]
   20cf8: 36ffff6d     	tbz	w13, #0x1f, 0x20ce4 <syna_tcm_update_cs_config+0x158>
   20cfc: 51023d8c     	sub	w12, w12, #0x8f
   20d00: 38ec494c     	ldrsb	w12, [x10, w12, uxtw]
   20d04: 37ffff0c     	tbnz	w12, #0x1f, 0x20ce4 <syna_tcm_update_cs_config+0x158>
   20d08: 0b0b0128     	add	w8, w9, w11
   20d0c: 51022108     	sub	w8, w8, #0x88
   20d10: 6b17011f     	cmp	w8, w23
   20d14: 540008e3     	b.lo	0x20e30 <syna_tcm_update_cs_config+0x2a4>
   20d18: b9407feb     	ldr	w11, [sp, #0x7c]
   20d1c: 3400092b     	cbz	w11, 0x20e40 <syna_tcm_update_cs_config+0x2b4>
   20d20: 340000d8     	cbz	w24, 0x20d38 <syna_tcm_update_cs_config+0x1ac>
   20d24: 0b0b0309     	add	w9, w24, w11
   20d28: 51000529     	sub	w9, w9, #0x1
   20d2c: 1acb0929     	udiv	w9, w9, w11
   20d30: 1b0b7d29     	mul	w9, w9, w11
   20d34: 14000008     	b	0x20d54 <syna_tcm_update_cs_config+0x1c8>
   20d38: 2a1f03e9     	mov	w9, wzr
   20d3c: 14000006     	b	0x20d54 <syna_tcm_update_cs_config+0x1c8>
   20d40: 6b0c017f     	cmp	w11, w12
   20d44: 540001a9     	b.ls	0x20d78 <syna_tcm_update_cs_config+0x1ec>
   20d48: 0b0b0129     	add	w9, w9, w11
   20d4c: 6b08013f     	cmp	w9, w8
   20d50: 54000142     	b.hs	0x20d78 <syna_tcm_update_cs_config+0x1ec>
   20d54: 3869494c     	ldrb	w12, [x10, w9, uxtw]
   20d58: 35ffff8c     	cbnz	w12, 0x20d48 <syna_tcm_update_cs_config+0x1bc>
   20d5c: aa0b03ed     	mov	x13, x11
   20d60: 0b0c012e     	add	w14, w9, w12
   20d64: 386e494e     	ldrb	w14, [x10, w14, uxtw]
   20d68: 35fffece     	cbnz	w14, 0x20d40 <syna_tcm_update_cs_config+0x1b4>
   20d6c: f10005ad     	subs	x13, x13, #0x1
   20d70: 1100058c     	add	w12, w12, #0x1
   20d74: 54ffff61     	b.ne	0x20d60 <syna_tcm_update_cs_config+0x1d4>
   20d78: 6b08013f     	cmp	w9, w8
   20d7c: 540006a8     	b.hi	0x20e50 <syna_tcm_update_cs_config+0x2c4>
   20d80: 0b0b02e8     	add	w8, w23, w11
   20d84: 2a0903ea     	mov	w10, w9
   20d88: 51000508     	sub	w8, w8, #0x1
   20d8c: 1acb0908     	udiv	w8, w8, w11
   20d90: 1b0b7d08     	mul	w8, w8, w11
   20d94: b900dfe8     	str	w8, [sp, #0xdc]
   20d98: 2a1703e8     	mov	w8, w23
   20d9c: f94007eb     	ldr	x11, [sp, #0x8]
   20da0: 384016cc     	ldrb	w12, [x22], #0x1
   20da4: f1000508     	subs	x8, x8, #0x1
   20da8: 382a496c     	strb	w12, [x11, w10, uxtw]
   20dac: 1100054a     	add	w10, w10, #0x1
   20db0: 54ffff61     	b.ne	0x20d9c <syna_tcm_update_cs_config+0x210>
   20db4: f94007e8     	ldr	x8, [sp, #0x8]
   20db8: b9408bea     	ldr	w10, [sp, #0x88]
   20dbc: 910143e1     	add	x1, sp, #0x50
   20dc0: b940dfe4     	ldr	w4, [sp, #0xdc]
   20dc4: aa1303e0     	mov	x0, x19
   20dc8: 2a1403e5     	mov	w5, w20
   20dcc: 8b294103     	add	x3, x8, w9, uxtw
   20dd0: 0b090142     	add	w2, w10, w9
   20dd4: 97fffe7c     	bl	0x207c4 <syna_tcm_write_flash>
   20dd8: b940dfe8     	ldr	w8, [sp, #0xdc]
   20ddc: 7100001f     	cmp	w0, #0x0
   20de0: 1a88b014     	csel	w20, w0, w8, lt
   20de4: 14000021     	b	0x20e68 <syna_tcm_update_cs_config+0x2dc>
   20de8: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   20dec: 91000000     	add	x0, x0, #0x0
		0000000000020dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   20df0: 14000003     	b	0x20dfc <syna_tcm_update_cs_config+0x270>
   20df4: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3561
   20df8: 91000000     	add	x0, x0, #0x0
		0000000000020df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3561
   20dfc: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1b
   20e00: 91000021     	add	x1, x1, #0x0
		0000000000020e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1b
   20e04: 94000000     	bl	0x20e04 <syna_tcm_update_cs_config+0x278>
		0000000000020e04:  R_AARCH64_CALL26	_printk
   20e08: 12801e00     	mov	w0, #-0xf1              // =-241
   20e0c: 14000032     	b	0x20ed4 <syna_tcm_update_cs_config+0x348>
   20e10: 2a0003f4     	mov	w20, w0
   20e14: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1506
   20e18: 91000000     	add	x0, x0, #0x0
		0000000000020e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1506
   20e1c: 14000010     	b	0x20e5c <syna_tcm_update_cs_config+0x2d0>
   20e20: 2a0003f4     	mov	w20, w0
   20e24: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e73
   20e28: 91000000     	add	x0, x0, #0x0
		0000000000020e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e73
   20e2c: 1400000c     	b	0x20e5c <syna_tcm_update_cs_config+0x2d0>
   20e30: 2a0003f4     	mov	w20, w0
   20e34: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa951
   20e38: 91000000     	add	x0, x0, #0x0
		0000000000020e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa951
   20e3c: 14000008     	b	0x20e5c <syna_tcm_update_cs_config+0x2d0>
   20e40: 2a0003f4     	mov	w20, w0
   20e44: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3580
   20e48: 91000000     	add	x0, x0, #0x0
		0000000000020e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3580
   20e4c: 14000004     	b	0x20e5c <syna_tcm_update_cs_config+0x2d0>
   20e50: 2a0003f4     	mov	w20, w0
   20e54: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x58cf
   20e58: 91000000     	add	x0, x0, #0x0
		0000000000020e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x58cf
   20e5c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4f1b
   20e60: 91000021     	add	x1, x1, #0x0
		0000000000020e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4f1b
   20e64: 94000000     	bl	0x20e64 <syna_tcm_update_cs_config+0x2d8>
		0000000000020e64:  R_AARCH64_CALL26	_printk
   20e68: 39402668     	ldrb	w8, [x19, #0x9]
   20e6c: 71002d1f     	cmp	w8, #0xb
   20e70: 540000a1     	b.ne	0x20e84 <syna_tcm_update_cs_config+0x2f8>
   20e74: aa1303e0     	mov	x0, x19
   20e78: 52800021     	mov	w1, #0x1                // =1
   20e7c: 2a1503e2     	mov	w2, w21
   20e80: 94000000     	bl	0x20e80 <syna_tcm_update_cs_config+0x2f4>
		0000000000020e80:  R_AARCH64_CALL26	syna_tcm_switch_fw_mode
   20e84: b9038a7f     	str	wzr, [x19, #0x388]
   20e88: 394123e2     	ldrb	w2, [sp, #0x48]
   20e8c: 35000402     	cbnz	w2, 0x20f0c <syna_tcm_update_cs_config+0x380>
   20e90: f94007f3     	ldr	x19, [sp, #0x8]
   20e94: 94000000     	bl	0x20e94 <syna_tcm_update_cs_config+0x308>
		0000000000020e94:  R_AARCH64_CALL26	syna_request_managed_device
   20e98: b4000460     	cbz	x0, 0x20f24 <syna_tcm_update_cs_config+0x398>
   20e9c: b4000073     	cbz	x19, 0x20ea8 <syna_tcm_update_cs_config+0x31c>
   20ea0: aa1303e1     	mov	x1, x19
   20ea4: 94000000     	bl	0x20ea4 <syna_tcm_update_cs_config+0x318>
		0000000000020ea4:  R_AARCH64_CALL26	devm_kfree
   20ea8: 394343e2     	ldrb	w2, [sp, #0xd0]
   20eac: f9000bff     	str	xzr, [sp, #0x10]
   20eb0: 390123ff     	strb	wzr, [sp, #0x48]
   20eb4: 35000442     	cbnz	w2, 0x20f3c <syna_tcm_update_cs_config+0x3b0>
   20eb8: f9404bf3     	ldr	x19, [sp, #0x90]
   20ebc: 94000000     	bl	0x20ebc <syna_tcm_update_cs_config+0x330>
		0000000000020ebc:  R_AARCH64_CALL26	syna_request_managed_device
   20ec0: b40004a0     	cbz	x0, 0x20f54 <syna_tcm_update_cs_config+0x3c8>
   20ec4: b4000073     	cbz	x19, 0x20ed0 <syna_tcm_update_cs_config+0x344>
   20ec8: aa1303e1     	mov	x1, x19
   20ecc: 94000000     	bl	0x20ecc <syna_tcm_update_cs_config+0x340>
		0000000000020ecc:  R_AARCH64_CALL26	devm_kfree
   20ed0: 2a1403e0     	mov	w0, w20
   20ed4: d5384108     	mrs	x8, SP_EL0
   20ed8: f9438908     	ldr	x8, [x8, #0x710]
   20edc: f85f83a9     	ldur	x9, [x29, #-0x8]
   20ee0: eb09011f     	cmp	x8, x9
   20ee4: 54000441     	b.ne	0x20f6c <syna_tcm_update_cs_config+0x3e0>
   20ee8: a9544ff4     	ldp	x20, x19, [sp, #0x140]
   20eec: a95357f6     	ldp	x22, x21, [sp, #0x130]
   20ef0: a9525ff8     	ldp	x24, x23, [sp, #0x120]
   20ef4: a95167fa     	ldp	x26, x25, [sp, #0x110]
   20ef8: a9506ffc     	ldp	x28, x27, [sp, #0x100]
   20efc: a94f7bfd     	ldp	x29, x30, [sp, #0xf0]
   20f00: 910543ff     	add	sp, sp, #0x150
   20f04: d50323bf     	autiasp
   20f08: d65f03c0     	ret
   20f0c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   20f10: 91000000     	add	x0, x0, #0x0
		0000000000020f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   20f14: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   20f18: 91000021     	add	x1, x1, #0x0
		0000000000020f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   20f1c: 94000000     	bl	0x20f1c <syna_tcm_update_cs_config+0x390>
		0000000000020f1c:  R_AARCH64_CALL26	_printk
   20f20: 17ffffdc     	b	0x20e90 <syna_tcm_update_cs_config+0x304>
   20f24: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   20f28: 91000000     	add	x0, x0, #0x0
		0000000000020f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   20f2c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   20f30: 91000021     	add	x1, x1, #0x0
		0000000000020f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   20f34: 94000000     	bl	0x20f34 <syna_tcm_update_cs_config+0x3a8>
		0000000000020f34:  R_AARCH64_CALL26	_printk
   20f38: 17ffffdc     	b	0x20ea8 <syna_tcm_update_cs_config+0x31c>
   20f3c: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   20f40: 91000000     	add	x0, x0, #0x0
		0000000000020f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   20f44: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   20f48: 91000021     	add	x1, x1, #0x0
		0000000000020f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   20f4c: 94000000     	bl	0x20f4c <syna_tcm_update_cs_config+0x3c0>
		0000000000020f4c:  R_AARCH64_CALL26	_printk
   20f50: 17ffffda     	b	0x20eb8 <syna_tcm_update_cs_config+0x32c>
   20f54: 90000000     	adrp	x0, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   20f58: 91000000     	add	x0, x0, #0x0
		0000000000020f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   20f5c: 90000001     	adrp	x1, 0x20000 <syna_tcm_do_fw_update+0xd8>
		0000000000020f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   20f60: 91000021     	add	x1, x1, #0x0
		0000000000020f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   20f64: 94000000     	bl	0x20f64 <syna_tcm_update_cs_config+0x3d8>
		0000000000020f64:  R_AARCH64_CALL26	_printk
   20f68: 17ffffda     	b	0x20ed0 <syna_tcm_update_cs_config+0x344>
   20f6c: 94000000     	bl	0x20f6c <syna_tcm_update_cs_config+0x3e0>
		0000000000020f6c:  R_AARCH64_CALL26	__stack_chk_fail
