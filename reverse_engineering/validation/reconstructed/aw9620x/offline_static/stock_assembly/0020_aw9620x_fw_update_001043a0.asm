
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002b20 <aw9620x_fw_update>:
    2b20: d503233f     	paciasp
    2b24: d10243ff     	sub	sp, sp, #0x90
    2b28: a9037bfd     	stp	x29, x30, [sp, #0x30]
    2b2c: a9046ffc     	stp	x28, x27, [sp, #0x40]
    2b30: a90567fa     	stp	x26, x25, [sp, #0x50]
    2b34: a9065ff8     	stp	x24, x23, [sp, #0x60]
    2b38: a90757f6     	stp	x22, x21, [sp, #0x70]
    2b3c: a9084ff4     	stp	x20, x19, [sp, #0x80]
    2b40: 9100c3fd     	add	x29, sp, #0x30
    2b44: d5384108     	mrs	x8, SP_EL0
    2b48: 2a0403f7     	mov	w23, w4
    2b4c: 2a0303f5     	mov	w21, w3
    2b50: f9438908     	ldr	x8, [x8, #0x710]
    2b54: 2a0103f4     	mov	w20, w1
    2b58: aa0203f6     	mov	x22, x2
    2b5c: aa0003f3     	mov	x19, x0
    2b60: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002b60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149e
    2b64: 91000042     	add	x2, x2, #0x0
		0000000000002b64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149e
    2b68: f81f83a8     	stur	x8, [x29, #-0x8]
    2b6c: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe2
    2b70: 91000063     	add	x3, x3, #0x0
		0000000000002b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe2
    2b74: f9401801     	ldr	x1, [x0, #0x30]
    2b78: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002b78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2b7c: 91000000     	add	x0, x0, #0x0
		0000000000002b7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2b80: 528140e4     	mov	w4, #0xa07              // =2567
    2b84: 2a1503e5     	mov	w5, w21
    2b88: 2a1703e6     	mov	w6, w23
    2b8c: 12001e98     	and	w24, w20, #0xff
    2b90: 94000000     	bl	0x2b90 <aw9620x_fw_update+0x70>
		0000000000002b90:  R_AARCH64_CALL26	_dev_printk
    2b94: 35000658     	cbnz	w24, 0x2c5c <aw9620x_fw_update+0x13c>
    2b98: f9401a61     	ldr	x1, [x19, #0x30]
    2b9c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2ba0: 91000000     	add	x0, x0, #0x0
		0000000000002ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2ba4: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002ba4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    2ba8: 91000042     	add	x2, x2, #0x0
		0000000000002ba8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    2bac: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002bac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
    2bb0: 91000063     	add	x3, x3, #0x0
		0000000000002bb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
    2bb4: 5280e444     	mov	w4, #0x722              // =1826
    2bb8: b9001bff     	str	wzr, [sp, #0x18]
    2bbc: 94000000     	bl	0x2bbc <aw9620x_fw_update+0x9c>
		0000000000002bbc:  R_AARCH64_CALL26	_dev_printk
    2bc0: 910063e2     	add	x2, sp, #0x18
    2bc4: aa1303e0     	mov	x0, x19
    2bc8: 52834201     	mov	w1, #0x1a10             // =6672
    2bcc: 940003cd     	bl	0x3b00 <aw9620x_i2c_read>
    2bd0: f9401a61     	ldr	x1, [x19, #0x30]
    2bd4: 36f80140     	tbz	w0, #0x1f, 0x2bfc <aw9620x_fw_update+0xdc>
    2bd8: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2bdc: 91000000     	add	x0, x0, #0x0
		0000000000002bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2be0: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b40
    2be4: 91000042     	add	x2, x2, #0x0
		0000000000002be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b40
    2be8: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
    2bec: 91000063     	add	x3, x3, #0x0
		0000000000002bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
    2bf0: 5280e4c4     	mov	w4, #0x726              // =1830
    2bf4: 94000000     	bl	0x2bf4 <aw9620x_fw_update+0xd4>
		0000000000002bf4:  R_AARCH64_CALL26	_dev_printk
    2bf8: 14000019     	b	0x2c5c <aw9620x_fw_update+0x13c>
    2bfc: b9401bf8     	ldr	w24, [sp, #0x18]
    2c00: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2c04: 91000000     	add	x0, x0, #0x0
		0000000000002c04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2c08: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a64
    2c0c: 91000042     	add	x2, x2, #0x0
		0000000000002c0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a64
    2c10: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32e
    2c14: 91000063     	add	x3, x3, #0x0
		0000000000002c14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32e
    2c18: 5280e544     	mov	w4, #0x72a              // =1834
    2c1c: 2a1803e5     	mov	w5, w24
    2c20: 2a1703e6     	mov	w6, w23
    2c24: 94000000     	bl	0x2c24 <aw9620x_fw_update+0x104>
		0000000000002c24:  R_AARCH64_CALL26	_dev_printk
    2c28: 6b17031f     	cmp	w24, w23
    2c2c: 54000181     	b.ne	0x2c5c <aw9620x_fw_update+0x13c>
    2c30: f9401a61     	ldr	x1, [x19, #0x30]
    2c34: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2c38: 91000000     	add	x0, x0, #0x0
		0000000000002c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2c3c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa1
    2c40: 91000042     	add	x2, x2, #0x0
		0000000000002c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa1
    2c44: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2fe2
    2c48: 91000063     	add	x3, x3, #0x0
		0000000000002c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2fe2
    2c4c: 52814184     	mov	w4, #0xa0c              // =2572
    2c50: 94000000     	bl	0x2c50 <aw9620x_fw_update+0x130>
		0000000000002c50:  R_AARCH64_CALL26	_dev_printk
    2c54: 2a1f03e0     	mov	w0, wzr
    2c58: 14000144     	b	0x3168 <aw9620x_fw_update+0x648>
    2c5c: f9401a61     	ldr	x1, [x19, #0x30]
    2c60: 90000017     	adrp	x23, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2c64: 910002f7     	add	x23, x23, #0x0
		0000000000002c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2c68: 90000018     	adrp	x24, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    2c6c: 91000318     	add	x24, x24, #0x0
		0000000000002c6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    2c70: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    2c74: 91000042     	add	x2, x2, #0x0
		0000000000002c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    2c78: aa1703e0     	mov	x0, x23
    2c7c: aa1803e3     	mov	x3, x24
    2c80: 52812e84     	mov	w4, #0x974              // =2420
    2c84: f90007ff     	str	xzr, [sp, #0x8]
    2c88: 94000000     	bl	0x2c88 <aw9620x_fw_update+0x168>
		0000000000002c88:  R_AARCH64_CALL26	_dev_printk
    2c8c: f9401a61     	ldr	x1, [x19, #0x30]
    2c90: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345
    2c94: 91000042     	add	x2, x2, #0x0
		0000000000002c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345
    2c98: aa1703e0     	mov	x0, x23
    2c9c: aa1803e3     	mov	x3, x24
    2ca0: 52812f04     	mov	w4, #0x978              // =2424
    2ca4: 94000000     	bl	0x2ca4 <aw9620x_fw_update+0x184>
		0000000000002ca4:  R_AARCH64_CALL26	_dev_printk
    2ca8: aa1303e0     	mov	x0, x19
    2cac: 52888101     	mov	w1, #0x4408             // =17416
    2cb0: 52800042     	mov	w2, #0x2                // =2
    2cb4: b9001bff     	str	wzr, [sp, #0x18]
    2cb8: 97fffad6     	bl	0x1810 <aw9620x_i2c_write>
    2cbc: 35000480     	cbnz	w0, 0x2d4c <aw9620x_fw_update+0x22c>
    2cc0: 2a1f03f7     	mov	w23, wzr
    2cc4: 52a06018     	mov	w24, #0x3000000         // =50331648
    2cc8: 910063e2     	add	x2, sp, #0x18
    2ccc: aa1303e0     	mov	x0, x19
    2cd0: 52834281     	mov	w1, #0x1a14             // =6676
    2cd4: 9400038b     	bl	0x3b00 <aw9620x_i2c_read>
    2cd8: 350004c0     	cbnz	w0, 0x2d70 <aw9620x_fw_update+0x250>
    2cdc: b9401be8     	ldr	w8, [sp, #0x18]
    2ce0: 6b18011f     	cmp	w8, w24
    2ce4: 54000580     	b.eq	0x2d94 <aw9620x_fw_update+0x274>
    2ce8: 52807d00     	mov	w0, #0x3e8              // =1000
    2cec: 52807e41     	mov	w1, #0x3f2              // =1010
    2cf0: 52800042     	mov	w2, #0x2                // =2
    2cf4: 94000000     	bl	0x2cf4 <aw9620x_fw_update+0x1d4>
		0000000000002cf4:  R_AARCH64_CALL26	usleep_range_state
    2cf8: 71018eff     	cmp	w23, #0x63
    2cfc: 110006f7     	add	w23, w23, #0x1
    2d00: 54fffe43     	b.lo	0x2cc8 <aw9620x_fw_update+0x1a8>
    2d04: 910063e2     	add	x2, sp, #0x18
    2d08: aa1303e0     	mov	x0, x19
    2d0c: 52834201     	mov	w1, #0x1a10             // =6672
    2d10: 9400037c     	bl	0x3b00 <aw9620x_i2c_read>
    2d14: 35000ea0     	cbnz	w0, 0x2ee8 <aw9620x_fw_update+0x3c8>
    2d18: b9401be8     	ldr	w8, [sp, #0x18]
    2d1c: 52a06009     	mov	w9, #0x3000000          // =50331648
    2d20: f9401a61     	ldr	x1, [x19, #0x30]
    2d24: 6b09011f     	cmp	w8, w9
    2d28: 54001041     	b.ne	0x2f30 <aw9620x_fw_update+0x410>
    2d2c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2d30: 91000000     	add	x0, x0, #0x0
		0000000000002d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2d34: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x111a
    2d38: 91000042     	add	x2, x2, #0x0
		0000000000002d38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x111a
    2d3c: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2d40: 91000063     	add	x3, x3, #0x0
		0000000000002d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2d44: 528123c4     	mov	w4, #0x91e              // =2334
    2d48: 1400001b     	b	0x2db4 <aw9620x_fw_update+0x294>
    2d4c: f9401a61     	ldr	x1, [x19, #0x30]
    2d50: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2d54: 91000000     	add	x0, x0, #0x0
		0000000000002d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2d58: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee7
    2d5c: 91000042     	add	x2, x2, #0x0
		0000000000002d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee7
    2d60: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2d64: 91000063     	add	x3, x3, #0x0
		0000000000002d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2d68: 528120c4     	mov	w4, #0x906              // =2310
    2d6c: 14000078     	b	0x2f4c <aw9620x_fw_update+0x42c>
    2d70: f9401a61     	ldr	x1, [x19, #0x30]
    2d74: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2d78: 91000000     	add	x0, x0, #0x0
		0000000000002d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2d7c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee7
    2d80: 91000042     	add	x2, x2, #0x0
		0000000000002d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee7
    2d84: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2d88: 91000063     	add	x3, x3, #0x0
		0000000000002d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2d8c: 528121a4     	mov	w4, #0x90d              // =2317
    2d90: 1400006f     	b	0x2f4c <aw9620x_fw_update+0x42c>
    2d94: f9401a61     	ldr	x1, [x19, #0x30]
    2d98: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2d9c: 91000000     	add	x0, x0, #0x0
		0000000000002d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2da0: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x156
    2da4: 91000042     	add	x2, x2, #0x0
		0000000000002da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x156
    2da8: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2dac: 91000063     	add	x3, x3, #0x0
		0000000000002dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2db0: 52812224     	mov	w4, #0x911              // =2321
    2db4: 94000000     	bl	0x2db4 <aw9620x_fw_update+0x294>
		0000000000002db4:  R_AARCH64_CALL26	_dev_printk
    2db8: aa1303e0     	mov	x0, x19
    2dbc: 52888101     	mov	w1, #0x4408             // =17416
    2dc0: 52800282     	mov	w2, #0x14               // =20
    2dc4: 97fffa93     	bl	0x1810 <aw9620x_i2c_write>
    2dc8: 350007e0     	cbnz	w0, 0x2ec4 <aw9620x_fw_update+0x3a4>
    2dcc: 52800020     	mov	w0, #0x1                // =1
    2dd0: 52800037     	mov	w23, #0x1               // =1
    2dd4: 94000000     	bl	0x2dd4 <aw9620x_fw_update+0x2b4>
		0000000000002dd4:  R_AARCH64_CALL26	msleep
    2dd8: aa1303e0     	mov	x0, x19
    2ddc: 94000a15     	bl	0x5630 <aw9620x_read_ack_irq>
    2de0: 35000960     	cbnz	w0, 0x2f0c <aw9620x_fw_update+0x3ec>
    2de4: 390a0277     	strb	w23, [x19, #0x280]
    2de8: 910a4277     	add	x23, x19, #0x290
    2dec: aa1303e0     	mov	x0, x19
    2df0: 52838601     	mov	w1, #0x1c30             // =7216
    2df4: aa1703e2     	mov	x2, x23
    2df8: 94000342     	bl	0x3b00 <aw9620x_i2c_read>
    2dfc: 35001900     	cbnz	w0, 0x311c <aw9620x_fw_update+0x5fc>
    2e00: 910a5278     	add	x24, x19, #0x294
    2e04: aa1303e0     	mov	x0, x19
    2e08: 52838681     	mov	w1, #0x1c34             // =7220
    2e0c: aa1803e2     	mov	x2, x24
    2e10: 9400033c     	bl	0x3b00 <aw9620x_i2c_read>
    2e14: 35001c60     	cbnz	w0, 0x31a0 <aw9620x_fw_update+0x680>
    2e18: 910a6279     	add	x25, x19, #0x298
    2e1c: aa1303e0     	mov	x0, x19
    2e20: 5280ff82     	mov	w2, #0x7fc              // =2044
    2e24: aa1903e1     	mov	x1, x25
    2e28: 94000a69     	bl	0x57cc <aw9620x_reg_read_all_val>
    2e2c: f9401a61     	ldr	x1, [x19, #0x30]
    2e30: 35001ca0     	cbnz	w0, 0x31c4 <aw9620x_fw_update+0x6a4>
    2e34: b94002e5     	ldr	w5, [x23]
    2e38: b9400306     	ldr	w6, [x24]
    2e3c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    2e40: 91000000     	add	x0, x0, #0x0
		0000000000002e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    2e44: b9400327     	ldr	w7, [x25]
    2e48: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d0
    2e4c: 91000042     	add	x2, x2, #0x0
		0000000000002e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d0
    2e50: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1713
    2e54: 91000063     	add	x3, x3, #0x0
		0000000000002e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1713
    2e58: 52811de4     	mov	w4, #0x8ef              // =2287
    2e5c: 94000000     	bl	0x2e5c <aw9620x_fw_update+0x33c>
		0000000000002e5c:  R_AARCH64_CALL26	_dev_printk
    2e60: 2a1f03e9     	mov	w9, wzr
    2e64: 2a1f03e8     	mov	w8, wzr
    2e68: 1280006a     	mov	w10, #-0x4              // =-4
    2e6c: 14000011     	b	0x2eb0 <aw9620x_fw_update+0x390>
    2e70: 11000d2b     	add	w11, w9, #0x3
    2e74: 1100092c     	add	w12, w9, #0x2
    2e78: 1100052d     	add	w13, w9, #0x1
    2e7c: 386b4acb     	ldrb	w11, [x22, w11, uxtw]
    2e80: 386c4acc     	ldrb	w12, [x22, w12, uxtw]
    2e84: 53081d6b     	lsl	w11, w11, #24
    2e88: 2a0c416b     	orr	w11, w11, w12, lsl #16
    2e8c: 386d4acc     	ldrb	w12, [x22, w13, uxtw]
    2e90: 2a0c216b     	orr	w11, w11, w12, lsl #8
    2e94: 38694acc     	ldrb	w12, [x22, w9, uxtw]
    2e98: 11001129     	add	w9, w9, #0x4
    2e9c: 2a0c016b     	orr	w11, w11, w12
    2ea0: 53027d4c     	lsr	w12, w10, #2
    2ea4: 0b080168     	add	w8, w11, w8
    2ea8: 7137f59f     	cmp	w12, #0xdfd
    2eac: 54001ae2     	b.hs	0x3208 <aw9620x_fw_update+0x6e8>
    2eb0: 1100114a     	add	w10, w10, #0x4
    2eb4: 6b15015f     	cmp	w10, w21
    2eb8: 54fffdc3     	b.lo	0x2e70 <aw9620x_fw_update+0x350>
    2ebc: 1280000b     	mov	w11, #-0x1              // =-1
    2ec0: 17fffff8     	b	0x2ea0 <aw9620x_fw_update+0x380>
    2ec4: f9401a61     	ldr	x1, [x19, #0x30]
    2ec8: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2ecc: 91000000     	add	x0, x0, #0x0
		0000000000002ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2ed0: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee7
    2ed4: 91000042     	add	x2, x2, #0x0
		0000000000002ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee7
    2ed8: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2edc: 91000063     	add	x3, x3, #0x0
		0000000000002edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2ee0: 528124e4     	mov	w4, #0x927              // =2343
    2ee4: 1400001a     	b	0x2f4c <aw9620x_fw_update+0x42c>
    2ee8: f9401a61     	ldr	x1, [x19, #0x30]
    2eec: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2ef0: 91000000     	add	x0, x0, #0x0
		0000000000002ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2ef4: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee7
    2ef8: 91000042     	add	x2, x2, #0x0
		0000000000002ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee7
    2efc: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2f00: 91000063     	add	x3, x3, #0x0
		0000000000002f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2f04: 52812344     	mov	w4, #0x91a              // =2330
    2f08: 14000011     	b	0x2f4c <aw9620x_fw_update+0x42c>
    2f0c: f9401a61     	ldr	x1, [x19, #0x30]
    2f10: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2f14: 91000000     	add	x0, x0, #0x0
		0000000000002f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2f18: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x297a
    2f1c: 91000042     	add	x2, x2, #0x0
		0000000000002f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x297a
    2f20: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2f24: 91000063     	add	x3, x3, #0x0
		0000000000002f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2f28: 528125e4     	mov	w4, #0x92f              // =2351
    2f2c: 14000008     	b	0x2f4c <aw9620x_fw_update+0x42c>
    2f30: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    2f34: 91000000     	add	x0, x0, #0x0
		0000000000002f34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    2f38: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd6f
    2f3c: 91000042     	add	x2, x2, #0x0
		0000000000002f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd6f
    2f40: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa16
    2f44: 91000063     	add	x3, x3, #0x0
		0000000000002f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa16
    2f48: 52812404     	mov	w4, #0x920              // =2336
    2f4c: 94000000     	bl	0x2f4c <aw9620x_fw_update+0x42c>
		0000000000002f4c:  R_AARCH64_CALL26	_dev_printk
    2f50: f9401a61     	ldr	x1, [x19, #0x30]
    2f54: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2f58: 91000000     	add	x0, x0, #0x0
		0000000000002f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2f5c: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12b
    2f60: 91000042     	add	x2, x2, #0x0
		0000000000002f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12b
    2f64: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    2f68: 91000063     	add	x3, x3, #0x0
		0000000000002f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    2f6c: 52812f64     	mov	w4, #0x97b              // =2427
    2f70: 94000000     	bl	0x2f70 <aw9620x_fw_update+0x450>
		0000000000002f70:  R_AARCH64_CALL26	_dev_printk
    2f74: f9401a61     	ldr	x1, [x19, #0x30]
    2f78: 529e0235     	mov	w21, #0xf011            // =61457
    2f7c: 90000000     	adrp	x0, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    2f80: 91000000     	add	x0, x0, #0x0
		0000000000002f80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    2f84: 90000002     	adrp	x2, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9c
    2f88: 91000042     	add	x2, x2, #0x0
		0000000000002f88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9c
    2f8c: 90000003     	adrp	x3, 0x2000 <get_pack_checksum+0xa0>
		0000000000002f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    2f90: 91000063     	add	x3, x3, #0x0
		0000000000002f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    2f94: 52813884     	mov	w4, #0x9c4              // =2500
    2f98: 72a78015     	movk	w21, #0x3c00, lsl #16
    2f9c: 94000000     	bl	0x2f9c <aw9620x_fw_update+0x47c>
		0000000000002f9c:  R_AARCH64_CALL26	_dev_printk
    2fa0: 321906a2     	orr	w2, w21, #0x180
    2fa4: aa1303e0     	mov	x0, x19
    2fa8: 529fe401     	mov	w1, #0xff20             // =65312
    2fac: 97fffa19     	bl	0x1810 <aw9620x_i2c_write>
    2fb0: 350004a0     	cbnz	w0, 0x3044 <aw9620x_fw_update+0x524>
    2fb4: 910023e2     	add	x2, sp, #0x8
    2fb8: aa1303e0     	mov	x0, x19
    2fbc: 5288e901     	mov	w1, #0x4748             // =18248
    2fc0: 940002d0     	bl	0x3b00 <aw9620x_i2c_read>
    2fc4: 35000520     	cbnz	w0, 0x3068 <aw9620x_fw_update+0x548>
    2fc8: b9400be8     	ldr	w8, [sp, #0x8]
    2fcc: 340000c8     	cbz	w8, 0x2fe4 <aw9620x_fw_update+0x4c4>
    2fd0: aa1303e0     	mov	x0, x19
    2fd4: 5288e901     	mov	w1, #0x4748             // =18248
    2fd8: 2a1f03e2     	mov	w2, wzr
    2fdc: 97fffa0d     	bl	0x1810 <aw9620x_i2c_write>
    2fe0: 350008c0     	cbnz	w0, 0x30f8 <aw9620x_fw_update+0x5d8>
    2fe4: 910033e2     	add	x2, sp, #0xc
    2fe8: aa1303e0     	mov	x0, x19
    2fec: 5288e881     	mov	w1, #0x4744             // =18244
    2ff0: 940002c4     	bl	0x3b00 <aw9620x_i2c_read>
    2ff4: 350004c0     	cbnz	w0, 0x308c <aw9620x_fw_update+0x56c>
    2ff8: b9400fe8     	ldr	w8, [sp, #0xc]
    2ffc: 53187d09     	lsr	w9, w8, #24
    3000: 340000c9     	cbz	w9, 0x3018 <aw9620x_fw_update+0x4f8>
    3004: 12005d02     	and	w2, w8, #0xffffff
    3008: aa1303e0     	mov	x0, x19
    300c: 5288e881     	mov	w1, #0x4744             // =18244
    3010: 97fffa00     	bl	0x1810 <aw9620x_i2c_write>
    3014: 35000960     	cbnz	w0, 0x3140 <aw9620x_fw_update+0x620>
    3018: 529e0222     	mov	w2, #0xf011             // =61457
    301c: aa1303e0     	mov	x0, x19
    3020: 529fe401     	mov	w1, #0xff20             // =65312
    3024: 72a78002     	movk	w2, #0x3c00, lsl #16
    3028: 97fff9fa     	bl	0x1810 <aw9620x_i2c_write>
    302c: 35000420     	cbnz	w0, 0x30b0 <aw9620x_fw_update+0x590>
    3030: 12001e88     	and	w8, w20, #0xff
    3034: 7100051f     	cmp	w8, #0x1
    3038: 540004e0     	b.eq	0x30d4 <aw9620x_fw_update+0x5b4>
    303c: 12800060     	mov	w0, #-0x4               // =-4
    3040: 1400004a     	b	0x3168 <aw9620x_fw_update+0x648>
    3044: f9401a61     	ldr	x1, [x19, #0x30]
    3048: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    304c: 91000000     	add	x0, x0, #0x0
		000000000000304c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3050: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x255c
    3054: 91000042     	add	x2, x2, #0x0
		0000000000003054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x255c
    3058: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003058:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    305c: 91000063     	add	x3, x3, #0x0
		000000000000305c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3060: 52813904     	mov	w4, #0x9c8              // =2504
    3064: 1400003f     	b	0x3160 <aw9620x_fw_update+0x640>
    3068: f9401a61     	ldr	x1, [x19, #0x30]
    306c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000306c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3070: 91000000     	add	x0, x0, #0x0
		0000000000003070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3074: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a7
    3078: 91000042     	add	x2, x2, #0x0
		0000000000003078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a7
    307c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000307c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3080: 91000063     	add	x3, x3, #0x0
		0000000000003080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3084: 528139c4     	mov	w4, #0x9ce              // =2510
    3088: 14000036     	b	0x3160 <aw9620x_fw_update+0x640>
    308c: f9401a61     	ldr	x1, [x19, #0x30]
    3090: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3094: 91000000     	add	x0, x0, #0x0
		0000000000003094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3098: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2e0b
    309c: 91000042     	add	x2, x2, #0x0
		000000000000309c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2e0b
    30a0: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    30a4: 91000063     	add	x3, x3, #0x0
		00000000000030a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    30a8: 52813b64     	mov	w4, #0x9db              // =2523
    30ac: 1400002d     	b	0x3160 <aw9620x_fw_update+0x640>
    30b0: f9401a61     	ldr	x1, [x19, #0x30]
    30b4: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    30b8: 91000000     	add	x0, x0, #0x0
		00000000000030b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    30bc: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a92
    30c0: 91000042     	add	x2, x2, #0x0
		00000000000030c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a92
    30c4: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    30c8: 91000063     	add	x3, x3, #0x0
		00000000000030c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    30cc: 52813d24     	mov	w4, #0x9e9              // =2537
    30d0: 14000024     	b	0x3160 <aw9620x_fw_update+0x640>
    30d4: f9401a61     	ldr	x1, [x19, #0x30]
    30d8: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    30dc: 91000000     	add	x0, x0, #0x0
		00000000000030dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    30e0: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf09
    30e4: 91000042     	add	x2, x2, #0x0
		00000000000030e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf09
    30e8: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    30ec: 91000063     	add	x3, x3, #0x0
		00000000000030ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    30f0: 52813dc4     	mov	w4, #0x9ee              // =2542
    30f4: 1400001b     	b	0x3160 <aw9620x_fw_update+0x640>
    30f8: f9401a61     	ldr	x1, [x19, #0x30]
    30fc: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000030fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3100: 91000000     	add	x0, x0, #0x0
		0000000000003100:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3104: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003104:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c64
    3108: 91000042     	add	x2, x2, #0x0
		0000000000003108:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c64
    310c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000310c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3110: 91000063     	add	x3, x3, #0x0
		0000000000003110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3114: 52813a84     	mov	w4, #0x9d4              // =2516
    3118: 14000012     	b	0x3160 <aw9620x_fw_update+0x640>
    311c: f9401a61     	ldr	x1, [x19, #0x30]
    3120: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003120:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3124: 91000000     	add	x0, x0, #0x0
		0000000000003124:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3128: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003128:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd98
    312c: 91000042     	add	x2, x2, #0x0
		000000000000312c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd98
    3130: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003130:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1713
    3134: 91000063     	add	x3, x3, #0x0
		0000000000003134:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1713
    3138: 52811bc4     	mov	w4, #0x8de              // =2270
    313c: 14000029     	b	0x31e0 <aw9620x_fw_update+0x6c0>
    3140: f9401a61     	ldr	x1, [x19, #0x30]
    3144: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003144:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3148: 91000000     	add	x0, x0, #0x0
		0000000000003148:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    314c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000314c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2cef
    3150: 91000042     	add	x2, x2, #0x0
		0000000000003150:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2cef
    3154: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3158: 91000063     	add	x3, x3, #0x0
		0000000000003158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    315c: 52813c44     	mov	w4, #0x9e2              // =2530
    3160: 94000000     	bl	0x3160 <aw9620x_fw_update+0x640>
		0000000000003160:  R_AARCH64_CALL26	_dev_printk
    3164: 12800000     	mov	w0, #-0x1               // =-1
    3168: d5384108     	mrs	x8, SP_EL0
    316c: f9438908     	ldr	x8, [x8, #0x710]
    3170: f85f83a9     	ldur	x9, [x29, #-0x8]
    3174: eb09011f     	cmp	x8, x9
    3178: 54003321     	b.ne	0x37dc <aw9620x_fw_update+0xcbc>
    317c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    3180: a94757f6     	ldp	x22, x21, [sp, #0x70]
    3184: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    3188: a94567fa     	ldp	x26, x25, [sp, #0x50]
    318c: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    3190: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    3194: 910243ff     	add	sp, sp, #0x90
    3198: d50323bf     	autiasp
    319c: d65f03c0     	ret
    31a0: f9401a61     	ldr	x1, [x19, #0x30]
    31a4: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    31a8: 91000000     	add	x0, x0, #0x0
		00000000000031a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    31ac: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8e
    31b0: 91000042     	add	x2, x2, #0x0
		00000000000031b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8e
    31b4: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1713
    31b8: 91000063     	add	x3, x3, #0x0
		00000000000031b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1713
    31bc: 52811c84     	mov	w4, #0x8e4              // =2276
    31c0: 14000008     	b	0x31e0 <aw9620x_fw_update+0x6c0>
    31c4: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    31c8: 91000000     	add	x0, x0, #0x0
		00000000000031c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    31cc: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cb3
    31d0: 91000042     	add	x2, x2, #0x0
		00000000000031d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cb3
    31d4: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1713
    31d8: 91000063     	add	x3, x3, #0x0
		00000000000031d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1713
    31dc: 52811d64     	mov	w4, #0x8eb              // =2283
    31e0: 94000000     	bl	0x31e0 <aw9620x_fw_update+0x6c0>
		00000000000031e0:  R_AARCH64_CALL26	_dev_printk
    31e4: f9401a61     	ldr	x1, [x19, #0x30]
    31e8: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    31ec: 91000000     	add	x0, x0, #0x0
		00000000000031ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    31f0: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de6
    31f4: 91000042     	add	x2, x2, #0x0
		00000000000031f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de6
    31f8: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000031f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    31fc: 91000063     	add	x3, x3, #0x0
		00000000000031fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3200: 52813044     	mov	w4, #0x982              // =2434
    3204: 17ffff5b     	b	0x2f70 <aw9620x_fw_update+0x450>
    3208: 4b0803f7     	neg	w23, w8
    320c: f9401a61     	ldr	x1, [x19, #0x30]
    3210: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272f
    3214: 91000000     	add	x0, x0, #0x0
		0000000000003214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272f
    3218: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x352b
    321c: 91000042     	add	x2, x2, #0x0
		000000000000321c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x352b
    3220: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1713
    3224: 91000063     	add	x3, x3, #0x0
		0000000000003224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1713
    3228: 52811f24     	mov	w4, #0x8f9              // =2297
    322c: 2a1703e5     	mov	w5, w23
    3230: b9028e77     	str	w23, [x19, #0x28c]
    3234: 94000000     	bl	0x3234 <aw9620x_fw_update+0x714>
		0000000000003234:  R_AARCH64_CALL26	_dev_printk
    3238: f9401a61     	ldr	x1, [x19, #0x30]
    323c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000323c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3240: 91000000     	add	x0, x0, #0x0
		0000000000003240:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3244: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16f9
    3248: 91000042     	add	x2, x2, #0x0
		0000000000003248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16f9
    324c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000324c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3250: 91000063     	add	x3, x3, #0x0
		0000000000003250:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3254: 52813104     	mov	w4, #0x988              // =2440
    3258: 94000000     	bl	0x3258 <aw9620x_fw_update+0x738>
		0000000000003258:  R_AARCH64_CALL26	_dev_printk
    325c: 52800028     	mov	w8, #0x1                // =1
    3260: aa1303e0     	mov	x0, x19
    3264: 52800021     	mov	w1, #0x1                // =1
    3268: 52800022     	mov	w2, #0x1                // =1
    326c: aa1f03e3     	mov	x3, xzr
    3270: 2a1f03e4     	mov	w4, wzr
    3274: b9002668     	str	w8, [x19, #0x24]
    3278: 94000655     	bl	0x4bcc <aw9620x_send_once_cmd>
    327c: f9401a61     	ldr	x1, [x19, #0x30]
    3280: 35001de0     	cbnz	w0, 0x363c <aw9620x_fw_update+0xb1c>
    3284: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003284:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3288: 91000000     	add	x0, x0, #0x0
		0000000000003288:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    328c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000328c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x236b
    3290: 91000042     	add	x2, x2, #0x0
		0000000000003290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x236b
    3294: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003294:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3298: 91000063     	add	x3, x3, #0x0
		0000000000003298:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    329c: 52813264     	mov	w4, #0x993              // =2451
    32a0: 94000000     	bl	0x32a0 <aw9620x_fw_update+0x780>
		00000000000032a0:  R_AARCH64_CALL26	_dev_printk
    32a4: 52800208     	mov	w8, #0x10               // =16
    32a8: 52800049     	mov	w9, #0x2                // =2
    32ac: 910063e3     	add	x3, sp, #0x18
    32b0: 72b007e8     	movk	w8, #0x803f, lsl #16
    32b4: aa1303e0     	mov	x0, x19
    32b8: 52800041     	mov	w1, #0x2                // =2
    32bc: 52800042     	mov	w2, #0x2                // =2
    32c0: 52800084     	mov	w4, #0x4                // =4
    32c4: b9001be8     	str	w8, [sp, #0x18]
    32c8: b9002669     	str	w9, [x19, #0x24]
    32cc: 52800099     	mov	w25, #0x4               // =4
    32d0: 9400063f     	bl	0x4bcc <aw9620x_send_once_cmd>
    32d4: f9401a61     	ldr	x1, [x19, #0x30]
    32d8: 35001c20     	cbnz	w0, 0x365c <aw9620x_fw_update+0xb3c>
    32dc: 90000018     	adrp	x24, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000032dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    32e0: 91000318     	add	x24, x24, #0x0
		00000000000032e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    32e4: 5287f006     	mov	w6, #0x3f80             // =16256
    32e8: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000032e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a5
    32ec: 91000042     	add	x2, x2, #0x0
		00000000000032ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a5
    32f0: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000032f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3030
    32f4: 91000063     	add	x3, x3, #0x0
		00000000000032f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3030
    32f8: aa1803e0     	mov	x0, x24
    32fc: 52812c84     	mov	w4, #0x964              // =2404
    3300: 52800805     	mov	w5, #0x40               // =64
    3304: 72a20006     	movk	w6, #0x1000, lsl #16
    3308: 94000000     	bl	0x3308 <aw9620x_fw_update+0x7e8>
		0000000000003308:  R_AARCH64_CALL26	_dev_printk
    330c: f9401a61     	ldr	x1, [x19, #0x30]
    3310: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003310:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3156
    3314: 91000042     	add	x2, x2, #0x0
		0000000000003314:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3156
    3318: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    331c: 91000063     	add	x3, x3, #0x0
		000000000000331c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3320: aa1803e0     	mov	x0, x24
    3324: 52813364     	mov	w4, #0x99b              // =2459
    3328: 94000000     	bl	0x3328 <aw9620x_fw_update+0x808>
		0000000000003328:  R_AARCH64_CALL26	_dev_printk
    332c: b9002679     	str	w25, [x19, #0x24]
    3330: f9401a61     	ldr	x1, [x19, #0x30]
    3334: 90000019     	adrp	x25, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003334:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    3338: 91000339     	add	x25, x25, #0x0
		0000000000003338:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    333c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000333c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    3340: 91000042     	add	x2, x2, #0x0
		0000000000003340:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    3344: aa1803e0     	mov	x0, x24
    3348: aa1903e3     	mov	x3, x25
    334c: 52811244     	mov	w4, #0x892              // =2194
    3350: f9000bff     	str	xzr, [sp, #0x10]
    3354: 94000000     	bl	0x3354 <aw9620x_fw_update+0x834>
		0000000000003354:  R_AARCH64_CALL26	_dev_printk
    3358: d2800208     	mov	x8, #0x10               // =16
    335c: f9401a61     	ldr	x1, [x19, #0x30]
    3360: 9000001a     	adrp	x26, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x29d8
    3364: 9100035a     	add	x26, x26, #0x0
		0000000000003364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x29d8
    3368: f2bf07e8     	movk	x8, #0xf83f, lsl #16
    336c: 5ac00ae9     	rev	w9, w23
    3370: f2c44408     	movk	x8, #0x2220, lsl #32
    3374: aa1803e0     	mov	x0, x24
    3378: aa1a03e2     	mov	x2, x26
    337c: f2e44408     	movk	x8, #0x2220, lsl #48
    3380: aa1903e3     	mov	x3, x25
    3384: 52811564     	mov	w4, #0x8ab              // =2219
    3388: 2a1f03e5     	mov	w5, wzr
    338c: 2a1f03e6     	mov	w6, wzr
    3390: 2a1f03e7     	mov	w7, wzr
    3394: b9001bff     	str	wzr, [sp, #0x18]
    3398: f801c3e8     	stur	x8, [sp, #0x1c]
    339c: b90027e9     	str	w9, [sp, #0x24]
    33a0: b90003ff     	str	wzr, [sp]
    33a4: 94000000     	bl	0x33a4 <aw9620x_fw_update+0x884>
		00000000000033a4:  R_AARCH64_CALL26	_dev_printk
    33a8: f9401a61     	ldr	x1, [x19, #0x30]
    33ac: 52801f08     	mov	w8, #0xf8               // =248
    33b0: aa1803e0     	mov	x0, x24
    33b4: aa1a03e2     	mov	x2, x26
    33b8: aa1903e3     	mov	x3, x25
    33bc: 52811564     	mov	w4, #0x8ab              // =2219
    33c0: 52800205     	mov	w5, #0x10               // =16
    33c4: 2a1f03e6     	mov	w6, wzr
    33c8: 528007e7     	mov	w7, #0x3f               // =63
    33cc: b90003e8     	str	w8, [sp]
    33d0: 94000000     	bl	0x33d0 <aw9620x_fw_update+0x8b0>
		00000000000033d0:  R_AARCH64_CALL26	_dev_printk
    33d4: f9401a61     	ldr	x1, [x19, #0x30]
    33d8: 52800448     	mov	w8, #0x22               // =34
    33dc: aa1803e0     	mov	x0, x24
    33e0: aa1a03e2     	mov	x2, x26
    33e4: aa1903e3     	mov	x3, x25
    33e8: 52811564     	mov	w4, #0x8ab              // =2219
    33ec: 52800405     	mov	w5, #0x20               // =32
    33f0: 52800446     	mov	w6, #0x22               // =34
    33f4: 52800407     	mov	w7, #0x20               // =32
    33f8: b90003e8     	str	w8, [sp]
    33fc: 94000000     	bl	0x33fc <aw9620x_fw_update+0x8dc>
		00000000000033fc:  R_AARCH64_CALL26	_dev_printk
    3400: f9401a61     	ldr	x1, [x19, #0x30]
    3404: 394093e5     	ldrb	w5, [sp, #0x24]
    3408: aa1803e0     	mov	x0, x24
    340c: 394097e6     	ldrb	w6, [sp, #0x25]
    3410: 39409be7     	ldrb	w7, [sp, #0x26]
    3414: aa1a03e2     	mov	x2, x26
    3418: 39409fe8     	ldrb	w8, [sp, #0x27]
    341c: aa1903e3     	mov	x3, x25
    3420: 52811564     	mov	w4, #0x8ab              // =2219
    3424: b90003e8     	str	w8, [sp]
    3428: 94000000     	bl	0x3428 <aw9620x_fw_update+0x908>
		0000000000003428:  R_AARCH64_CALL26	_dev_printk
    342c: 910063e3     	add	x3, sp, #0x18
    3430: aa1303e0     	mov	x0, x19
    3434: 52800021     	mov	w1, #0x1                // =1
    3438: 52800042     	mov	w2, #0x2                // =2
    343c: 52800204     	mov	w4, #0x10               // =16
    3440: 940005e3     	bl	0x4bcc <aw9620x_send_once_cmd>
    3444: 350012e0     	cbnz	w0, 0x36a0 <aw9620x_fw_update+0xb80>
    3448: 910053e1     	add	x1, sp, #0x14
    344c: aa1303e0     	mov	x0, x19
    3450: 5287ff02     	mov	w2, #0x3ff8             // =16376
    3454: 940008de     	bl	0x57cc <aw9620x_reg_read_all_val>
    3458: 350013a0     	cbnz	w0, 0x36cc <aw9620x_fw_update+0xbac>
    345c: 910043e1     	add	x1, sp, #0x10
    3460: aa1303e0     	mov	x0, x19
    3464: 5287ff82     	mov	w2, #0x3ffc             // =16380
    3468: 940008d9     	bl	0x57cc <aw9620x_reg_read_all_val>
    346c: f9401a61     	ldr	x1, [x19, #0x30]
    3470: 35001400     	cbnz	w0, 0x36f0 <aw9620x_fw_update+0xbd0>
    3474: 294267f8     	ldp	w24, w25, [sp, #0x10]
    3478: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    347c: 91000000     	add	x0, x0, #0x0
		000000000000347c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3480: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003480:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2090
    3484: 91000042     	add	x2, x2, #0x0
		0000000000003484:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2090
    3488: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003488:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    348c: 91000063     	add	x3, x3, #0x0
		000000000000348c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    3490: 528118e4     	mov	w4, #0x8c7              // =2247
    3494: 2a1903e5     	mov	w5, w25
    3498: 2a1803e6     	mov	w6, w24
    349c: 94000000     	bl	0x349c <aw9620x_fw_update+0x97c>
		000000000000349c:  R_AARCH64_CALL26	_dev_printk
    34a0: 52840448     	mov	w8, #0x2022             // =8226
    34a4: f9401a61     	ldr	x1, [x19, #0x30]
    34a8: 72a40448     	movk	w8, #0x2022, lsl #16
    34ac: 6b08033f     	cmp	w25, w8
    34b0: 54001301     	b.ne	0x3710 <aw9620x_fw_update+0xbf0>
    34b4: 6b17031f     	cmp	w24, w23
    34b8: 540012c1     	b.ne	0x3710 <aw9620x_fw_update+0xbf0>
    34bc: 90000017     	adrp	x23, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000034bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    34c0: 910002f7     	add	x23, x23, #0x0
		00000000000034c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    34c4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000034c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x174
    34c8: 91000042     	add	x2, x2, #0x0
		00000000000034c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x174
    34cc: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000034cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    34d0: 91000063     	add	x3, x3, #0x0
		00000000000034d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    34d4: aa1703e0     	mov	x0, x23
    34d8: 52811944     	mov	w4, #0x8ca              // =2250
    34dc: 94000000     	bl	0x34dc <aw9620x_fw_update+0x9bc>
		00000000000034dc:  R_AARCH64_CALL26	_dev_printk
    34e0: f9401a61     	ldr	x1, [x19, #0x30]
    34e4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000034e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x676
    34e8: 91000042     	add	x2, x2, #0x0
		00000000000034e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x676
    34ec: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000034ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    34f0: 91000063     	add	x3, x3, #0x0
		00000000000034f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    34f4: aa1703e0     	mov	x0, x23
    34f8: 528134a4     	mov	w4, #0x9a5              // =2469
    34fc: 94000000     	bl	0x34fc <aw9620x_fw_update+0x9dc>
		00000000000034fc:  R_AARCH64_CALL26	_dev_printk
    3500: 52840019     	mov	w25, #0x2000            // =8192
    3504: 2a1f03f8     	mov	w24, wzr
    3508: 9000001a     	adrp	x26, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003508:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a5
    350c: 9100035a     	add	x26, x26, #0x0
		000000000000350c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a5
    3510: 72a20019     	movk	w25, #0x1000, lsl #16
    3514: 5280005c     	mov	w28, #0x2               // =2
    3518: 9000001b     	adrp	x27, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355d
    351c: 9100037b     	add	x27, x27, #0x0
		000000000000351c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355d
    3520: 5ac00b28     	rev	w8, w25
    3524: 910063e3     	add	x3, sp, #0x18
    3528: aa1303e0     	mov	x0, x19
    352c: 52800041     	mov	w1, #0x2                // =2
    3530: 52800042     	mov	w2, #0x2                // =2
    3534: 52800084     	mov	w4, #0x4                // =4
    3538: b9001be8     	str	w8, [sp, #0x18]
    353c: b900267c     	str	w28, [x19, #0x24]
    3540: 940005a3     	bl	0x4bcc <aw9620x_send_once_cmd>
    3544: f9401a61     	ldr	x1, [x19, #0x30]
    3548: 35001060     	cbnz	w0, 0x3754 <aw9620x_fw_update+0xc34>
    354c: aa1703e0     	mov	x0, x23
    3550: aa1a03e2     	mov	x2, x26
    3554: aa1b03e3     	mov	x3, x27
    3558: 52812964     	mov	w4, #0x94b              // =2379
    355c: 2a1803e5     	mov	w5, w24
    3560: 2a1903e6     	mov	w6, w25
    3564: 94000000     	bl	0x3564 <aw9620x_fw_update+0xa44>
		0000000000003564:  R_AARCH64_CALL26	_dev_printk
    3568: 11000718     	add	w24, w24, #0x1
    356c: 11020339     	add	w25, w25, #0x80
    3570: 7100ff1f     	cmp	w24, #0x3f
    3574: 54fffd61     	b.ne	0x3520 <aw9620x_fw_update+0xa00>
    3578: f9401a61     	ldr	x1, [x19, #0x30]
    357c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000357c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3580: 91000000     	add	x0, x0, #0x0
		0000000000003580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3584: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003584:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3822
    3588: 91000042     	add	x2, x2, #0x0
		0000000000003588:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3822
    358c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000358c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3590: 91000063     	add	x3, x3, #0x0
		0000000000003590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3594: 528135c4     	mov	w4, #0x9ae              // =2478
    3598: 94000000     	bl	0x3598 <aw9620x_fw_update+0xa78>
		0000000000003598:  R_AARCH64_CALL26	_dev_printk
    359c: 52800068     	mov	w8, #0x3                // =3
    35a0: aa1303e0     	mov	x0, x19
    35a4: aa1603e1     	mov	x1, x22
    35a8: 2a1503e2     	mov	w2, w21
    35ac: b9002668     	str	w8, [x19, #0x24]
    35b0: 94000604     	bl	0x4dc0 <aw9620x_cycle_write_firmware>
    35b4: f9401a61     	ldr	x1, [x19, #0x30]
    35b8: 35000f20     	cbnz	w0, 0x379c <aw9620x_fw_update+0xc7c>
    35bc: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000035bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    35c0: 91000000     	add	x0, x0, #0x0
		00000000000035c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    35c4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000035c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b8b
    35c8: 91000042     	add	x2, x2, #0x0
		00000000000035c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b8b
    35cc: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000035cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    35d0: 91000063     	add	x3, x3, #0x0
		00000000000035d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    35d4: 52813704     	mov	w4, #0x9b8              // =2488
    35d8: 94000000     	bl	0x35d8 <aw9620x_fw_update+0xab8>
		00000000000035d8:  R_AARCH64_CALL26	_dev_printk
    35dc: 528000c8     	mov	w8, #0x6                // =6
    35e0: aa1303e0     	mov	x0, x19
    35e4: b9002668     	str	w8, [x19, #0x24]
    35e8: 9400077d     	bl	0x53dc <aw9620x_send_stop_cmd>
    35ec: f9401a61     	ldr	x1, [x19, #0x30]
    35f0: 35000e60     	cbnz	w0, 0x37bc <aw9620x_fw_update+0xc9c>
    35f4: 90000014     	adrp	x20, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000035f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    35f8: 91000294     	add	x20, x20, #0x0
		00000000000035f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    35fc: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000035fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3600: 91000000     	add	x0, x0, #0x0
		0000000000003600:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3604: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb78
    3608: 91000042     	add	x2, x2, #0x0
		0000000000003608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb78
    360c: aa1403e3     	mov	x3, x20
    3610: 52813804     	mov	w4, #0x9c0              // =2496
    3614: aa1403e5     	mov	x5, x20
    3618: 94000000     	bl	0x3618 <aw9620x_fw_update+0xaf8>
		0000000000003618:  R_AARCH64_CALL26	_dev_printk
    361c: f9401a61     	ldr	x1, [x19, #0x30]
    3620: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3624: 91000000     	add	x0, x0, #0x0
		0000000000003624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3628: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003628:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2ff4
    362c: 91000042     	add	x2, x2, #0x0
		000000000000362c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2ff4
    3630: aa1403e3     	mov	x3, x20
    3634: 52813ea4     	mov	w4, #0x9f5              // =2549
    3638: 17fffd86     	b	0x2c50 <aw9620x_fw_update+0x130>
    363c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000363c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3640: 91000000     	add	x0, x0, #0x0
		0000000000003640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3644: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33a0
    3648: 91000042     	add	x2, x2, #0x0
		0000000000003648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33a0
    364c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000364c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3650: 91000063     	add	x3, x3, #0x0
		0000000000003650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3654: 528131c4     	mov	w4, #0x98e              // =2446
    3658: 17fffe46     	b	0x2f70 <aw9620x_fw_update+0x450>
    365c: 90000015     	adrp	x21, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000365c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3660: 910002b5     	add	x21, x21, #0x0
		0000000000003660:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    3664: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003664:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x70b
    3668: 91000042     	add	x2, x2, #0x0
		0000000000003668:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x70b
    366c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000366c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3030
    3670: 91000063     	add	x3, x3, #0x0
		0000000000003670:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3030
    3674: aa1503e0     	mov	x0, x21
    3678: 52812c24     	mov	w4, #0x961              // =2401
    367c: 94000000     	bl	0x367c <aw9620x_fw_update+0xb5c>
		000000000000367c:  R_AARCH64_CALL26	_dev_printk
    3680: f9401a61     	ldr	x1, [x19, #0x30]
    3684: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b63
    3688: 91000042     	add	x2, x2, #0x0
		0000000000003688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b63
    368c: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000368c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3690: 91000063     	add	x3, x3, #0x0
		0000000000003690:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3694: aa1503e0     	mov	x0, x21
    3698: 528132c4     	mov	w4, #0x996              // =2454
    369c: 17fffe35     	b	0x2f70 <aw9620x_fw_update+0x450>
    36a0: f9401a61     	ldr	x1, [x19, #0x30]
    36a4: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    36a8: 91000063     	add	x3, x3, #0x0
		00000000000036a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    36ac: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    36b0: 91000000     	add	x0, x0, #0x0
		00000000000036b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    36b4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x354d
    36b8: 91000042     	add	x2, x2, #0x0
		00000000000036b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x354d
    36bc: 52811664     	mov	w4, #0x8b3              // =2227
    36c0: aa0303e5     	mov	x5, x3
    36c4: 94000000     	bl	0x36c4 <aw9620x_fw_update+0xba4>
		00000000000036c4:  R_AARCH64_CALL26	_dev_printk
    36c8: 1400001a     	b	0x3730 <aw9620x_fw_update+0xc10>
    36cc: f9401a61     	ldr	x1, [x19, #0x30]
    36d0: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    36d4: 91000000     	add	x0, x0, #0x0
		00000000000036d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    36d8: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ab4
    36dc: 91000042     	add	x2, x2, #0x0
		00000000000036dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ab4
    36e0: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    36e4: 91000063     	add	x3, x3, #0x0
		00000000000036e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    36e8: 52811744     	mov	w4, #0x8ba              // =2234
    36ec: 14000010     	b	0x372c <aw9620x_fw_update+0xc0c>
    36f0: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    36f4: 91000000     	add	x0, x0, #0x0
		00000000000036f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    36f8: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000036f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ab4
    36fc: 91000042     	add	x2, x2, #0x0
		00000000000036fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ab4
    3700: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003700:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    3704: 91000063     	add	x3, x3, #0x0
		0000000000003704:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    3708: 52811824     	mov	w4, #0x8c1              // =2241
    370c: 14000008     	b	0x372c <aw9620x_fw_update+0xc0c>
    3710: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    3714: 91000000     	add	x0, x0, #0x0
		0000000000003714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    3718: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21e2
    371c: 91000042     	add	x2, x2, #0x0
		000000000000371c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21e2
    3720: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003720:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3199
    3724: 91000063     	add	x3, x3, #0x0
		0000000000003724:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3199
    3728: 528119c4     	mov	w4, #0x8ce              // =2254
    372c: 94000000     	bl	0x372c <aw9620x_fw_update+0xc0c>
		000000000000372c:  R_AARCH64_CALL26	_dev_printk
    3730: f9401a61     	ldr	x1, [x19, #0x30]
    3734: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003734:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3738: 91000000     	add	x0, x0, #0x0
		0000000000003738:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    373c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000373c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33c7
    3740: 91000042     	add	x2, x2, #0x0
		0000000000003740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33c7
    3744: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    3748: 91000063     	add	x3, x3, #0x0
		0000000000003748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    374c: 528133e4     	mov	w4, #0x99f              // =2463
    3750: 17fffe08     	b	0x2f70 <aw9620x_fw_update+0x450>
    3754: 90000015     	adrp	x21, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    3758: 910002b5     	add	x21, x21, #0x0
		0000000000003758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    375c: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000375c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x36c
    3760: 91000042     	add	x2, x2, #0x0
		0000000000003760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x36c
    3764: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x355d
    3768: 91000063     	add	x3, x3, #0x0
		0000000000003768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x355d
    376c: aa1503e0     	mov	x0, x21
    3770: 52812904     	mov	w4, #0x948              // =2376
    3774: 2a1803e5     	mov	w5, w24
    3778: 94000000     	bl	0x3778 <aw9620x_fw_update+0xc58>
		0000000000003778:  R_AARCH64_CALL26	_dev_printk
    377c: f9401a61     	ldr	x1, [x19, #0x30]
    3780: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003780:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b63
    3784: 91000042     	add	x2, x2, #0x0
		0000000000003784:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b63
    3788: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		0000000000003788:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    378c: 91000063     	add	x3, x3, #0x0
		000000000000378c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    3790: aa1503e0     	mov	x0, x21
    3794: 52813504     	mov	w4, #0x9a8              // =2472
    3798: 17fffdf6     	b	0x2f70 <aw9620x_fw_update+0x450>
    379c: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		000000000000379c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    37a0: 91000000     	add	x0, x0, #0x0
		00000000000037a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    37a4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000037a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10f8
    37a8: 91000042     	add	x2, x2, #0x0
		00000000000037a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10f8
    37ac: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000037ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    37b0: 91000063     	add	x3, x3, #0x0
		00000000000037b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    37b4: 52813644     	mov	w4, #0x9b2              // =2482
    37b8: 17fffdee     	b	0x2f70 <aw9620x_fw_update+0x450>
    37bc: 90000000     	adrp	x0, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000037bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    37c0: 91000000     	add	x0, x0, #0x0
		00000000000037c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    37c4: 90000002     	adrp	x2, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000037c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x695
    37c8: 91000042     	add	x2, x2, #0x0
		00000000000037c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x695
    37cc: 90000003     	adrp	x3, 0x3000 <aw9620x_fw_update+0x4e0>
		00000000000037cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2540
    37d0: 91000063     	add	x3, x3, #0x0
		00000000000037d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2540
    37d4: 52813784     	mov	w4, #0x9bc              // =2492
    37d8: 17fffde6     	b	0x2f70 <aw9620x_fw_update+0x450>
    37dc: 94000000     	bl	0x37dc <aw9620x_fw_update+0xcbc>
		00000000000037dc:  R_AARCH64_CALL26	__stack_chk_fail
