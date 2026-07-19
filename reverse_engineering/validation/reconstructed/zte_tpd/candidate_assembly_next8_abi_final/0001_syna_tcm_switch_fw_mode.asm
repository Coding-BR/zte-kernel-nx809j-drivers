
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016d98 <syna_tcm_switch_fw_mode>:
   16d98: d503233f     	paciasp
   16d9c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   16da0: f9000bf5     	str	x21, [sp, #0x10]
   16da4: a9024ff4     	stp	x20, x19, [sp, #0x20]
   16da8: 910003fd     	mov	x29, sp
   16dac: b4000540     	cbz	x0, 0x16e54 <syna_tcm_switch_fw_mode+0xbc>
   16db0: 340000a2     	cbz	w2, 0x16dc4 <syna_tcm_switch_fw_mode+0x2c>
   16db4: b941e808     	ldr	w8, [x0, #0x1e8]
   16db8: 6b02011f     	cmp	w8, w2
   16dbc: 1a828113     	csel	w19, w8, w2, hi
   16dc0: 14000005     	b	0x16dd4 <syna_tcm_switch_fw_mode+0x3c>
   16dc4: f9402408     	ldr	x8, [x0, #0x48]
   16dc8: 39405108     	ldrb	w8, [x8, #0x14]
   16dcc: 36000648     	tbz	w8, #0x0, 0x16e94 <syna_tcm_switch_fw_mode+0xfc>
   16dd0: 2a1f03f3     	mov	w19, wzr
   16dd4: 12001c28     	and	w8, w1, #0xff
   16dd8: 71002d1f     	cmp	w8, #0xb
   16ddc: 54000180     	b.eq	0x16e0c <syna_tcm_switch_fw_mode+0x74>
   16de0: 7100051f     	cmp	w8, #0x1
   16de4: 540003e1     	b.ne	0x16e60 <syna_tcm_switch_fw_mode+0xc8>
   16de8: 39402408     	ldrb	w8, [x0, #0x9]
   16dec: 7100051f     	cmp	w8, #0x1
   16df0: 54000140     	b.eq	0x16e18 <syna_tcm_switch_fw_mode+0x80>
   16df4: 350007d3     	cbnz	w19, 0x16eec <syna_tcm_switch_fw_mode+0x154>
   16df8: f9402408     	ldr	x8, [x0, #0x48]
   16dfc: 39405108     	ldrb	w8, [x8, #0x14]
   16e00: 36000648     	tbz	w8, #0x0, 0x16ec8 <syna_tcm_switch_fw_mode+0x130>
   16e04: 2a1f03f3     	mov	w19, wzr
   16e08: 14000039     	b	0x16eec <syna_tcm_switch_fw_mode+0x154>
   16e0c: 39402408     	ldrb	w8, [x0, #0x9]
   16e10: 71002d1f     	cmp	w8, #0xb
   16e14: 54000341     	b.ne	0x16e7c <syna_tcm_switch_fw_mode+0xe4>
   16e18: f941d808     	ldr	x8, [x0, #0x3b0]
   16e1c: b4000108     	cbz	x8, 0x16e3c <syna_tcm_switch_fw_mode+0xa4>
   16e20: b85fc110     	ldur	w16, [x8, #-0x4]
   16e24: 728ca131     	movk	w17, #0x6509
   16e28: 72baaf51     	movk	w17, #0xd57a, lsl #16
   16e2c: 6b11021f     	cmp	w16, w17
   16e30: 54000040     	b.eq	0x16e38 <syna_tcm_switch_fw_mode+0xa0>
   16e34: d4304500     	brk	#0x8228
   16e38: d63f0100     	blr	x8
   16e3c: 2a1f03e0     	mov	w0, wzr
   16e40: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   16e44: f9400bf5     	ldr	x21, [sp, #0x10]
   16e48: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   16e4c: d50323bf     	autiasp
   16e50: d65f03c0     	ret
   16e54: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd85
   16e58: 91000000     	add	x0, x0, #0x0
		0000000000016e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd85
   16e5c: 14000003     	b	0x16e68 <syna_tcm_switch_fw_mode+0xd0>
   16e60: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2403
   16e64: 91000000     	add	x0, x0, #0x0
		0000000000016e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2403
   16e68: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x465d
   16e6c: 91000021     	add	x1, x1, #0x0
		0000000000016e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x465d
   16e70: 94000000     	bl	0x16e70 <syna_tcm_switch_fw_mode+0xd8>
		0000000000016e70:  R_AARCH64_CALL26	_printk
   16e74: 12801e00     	mov	w0, #-0xf1              // =-241
   16e78: 17fffff2     	b	0x16e40 <syna_tcm_switch_fw_mode+0xa8>
   16e7c: 350009b3     	cbnz	w19, 0x16fb0 <syna_tcm_switch_fw_mode+0x218>
   16e80: f9402408     	ldr	x8, [x0, #0x48]
   16e84: 39405108     	ldrb	w8, [x8, #0x14]
   16e88: 36000828     	tbz	w8, #0x0, 0x16f8c <syna_tcm_switch_fw_mode+0x1f4>
   16e8c: 2a1f03f3     	mov	w19, wzr
   16e90: 14000048     	b	0x16fb0 <syna_tcm_switch_fw_mode+0x218>
   16e94: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ea8
   16e98: 91000108     	add	x8, x8, #0x0
		0000000000016e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ea8
   16e9c: 90000009     	adrp	x9, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x465d
   16ea0: 91000129     	add	x9, x9, #0x0
		0000000000016ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x465d
   16ea4: b941e813     	ldr	w19, [x0, #0x1e8]
   16ea8: aa0003f4     	mov	x20, x0
   16eac: aa0803e0     	mov	x0, x8
   16eb0: 2a0103f5     	mov	w21, w1
   16eb4: aa0903e1     	mov	x1, x9
   16eb8: 94000000     	bl	0x16eb8 <syna_tcm_switch_fw_mode+0x120>
		0000000000016eb8:  R_AARCH64_CALL26	_printk
   16ebc: 2a1503e1     	mov	w1, w21
   16ec0: aa1403e0     	mov	x0, x20
   16ec4: 17ffffc4     	b	0x16dd4 <syna_tcm_switch_fw_mode+0x3c>
   16ec8: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ec
   16ecc: 91000108     	add	x8, x8, #0x0
		0000000000016ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ec
   16ed0: b941e813     	ldr	w19, [x0, #0x1e8]
   16ed4: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1447
   16ed8: 91000021     	add	x1, x1, #0x0
		0000000000016ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1447
   16edc: aa0003f4     	mov	x20, x0
   16ee0: aa0803e0     	mov	x0, x8
   16ee4: 94000000     	bl	0x16ee4 <syna_tcm_switch_fw_mode+0x14c>
		0000000000016ee4:  R_AARCH64_CALL26	_printk
   16ee8: aa1403e0     	mov	x0, x20
   16eec: f941cc08     	ldr	x8, [x0, #0x398]
   16ef0: 52800281     	mov	w1, #0x14               // =20
   16ef4: aa1f03e2     	mov	x2, xzr
   16ef8: 2a1f03e3     	mov	w3, wzr
   16efc: aa1f03e4     	mov	x4, xzr
   16f00: 2a1303e5     	mov	w5, w19
   16f04: aa0003f4     	mov	x20, x0
   16f08: b85fc110     	ldur	w16, [x8, #-0x4]
   16f0c: 728751d1     	movk	w17, #0x3a8e
   16f10: 72a48411     	movk	w17, #0x2420, lsl #16
   16f14: 6b11021f     	cmp	w16, w17
   16f18: 54000040     	b.eq	0x16f20 <syna_tcm_switch_fw_mode+0x188>
   16f1c: d4304500     	brk	#0x8228
   16f20: d63f0100     	blr	x8
   16f24: 36f80120     	tbz	w0, #0x1f, 0x16f48 <syna_tcm_switch_fw_mode+0x1b0>
   16f28: 2a0003f3     	mov	w19, w0
   16f2c: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x378f
   16f30: 91000000     	add	x0, x0, #0x0
		0000000000016f30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x378f
   16f34: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1447
   16f38: 91000021     	add	x1, x1, #0x0
		0000000000016f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1447
   16f3c: 52800282     	mov	w2, #0x14               // =20
   16f40: 94000000     	bl	0x16f40 <syna_tcm_switch_fw_mode+0x1a8>
		0000000000016f40:  R_AARCH64_CALL26	_printk
   16f44: 1400000f     	b	0x16f80 <syna_tcm_switch_fw_mode+0x1e8>
   16f48: 39402682     	ldrb	w2, [x20, #0x9]
   16f4c: 7100045f     	cmp	w2, #0x1
   16f50: 540000c1     	b.ne	0x16f68 <syna_tcm_switch_fw_mode+0x1d0>
   16f54: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ee4
   16f58: 91000000     	add	x0, x0, #0x0
		0000000000016f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ee4
   16f5c: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1447
   16f60: 91000021     	add	x1, x1, #0x0
		0000000000016f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1447
   16f64: 14000031     	b	0x17028 <syna_tcm_switch_fw_mode+0x290>
   16f68: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x191b
   16f6c: 91000000     	add	x0, x0, #0x0
		0000000000016f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x191b
   16f70: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1447
   16f74: 91000021     	add	x1, x1, #0x0
		0000000000016f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1447
   16f78: 94000000     	bl	0x16f78 <syna_tcm_switch_fw_mode+0x1e0>
		0000000000016f78:  R_AARCH64_CALL26	_printk
   16f7c: 12801e33     	mov	w19, #-0xf2             // =-242
   16f80: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4137
   16f84: 91000000     	add	x0, x0, #0x0
		0000000000016f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4137
   16f88: 14000035     	b	0x1705c <syna_tcm_switch_fw_mode+0x2c4>
   16f8c: 90000008     	adrp	x8, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42ec
   16f90: 91000108     	add	x8, x8, #0x0
		0000000000016f90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42ec
   16f94: b941e813     	ldr	w19, [x0, #0x1e8]
   16f98: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c
   16f9c: 91000021     	add	x1, x1, #0x0
		0000000000016f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c
   16fa0: aa0003f4     	mov	x20, x0
   16fa4: aa0803e0     	mov	x0, x8
   16fa8: 94000000     	bl	0x16fa8 <syna_tcm_switch_fw_mode+0x210>
		0000000000016fa8:  R_AARCH64_CALL26	_printk
   16fac: aa1403e0     	mov	x0, x20
   16fb0: f941cc08     	ldr	x8, [x0, #0x398]
   16fb4: 528003e1     	mov	w1, #0x1f               // =31
   16fb8: aa1f03e2     	mov	x2, xzr
   16fbc: 2a1f03e3     	mov	w3, wzr
   16fc0: aa1f03e4     	mov	x4, xzr
   16fc4: 2a1303e5     	mov	w5, w19
   16fc8: aa0003f4     	mov	x20, x0
   16fcc: b85fc110     	ldur	w16, [x8, #-0x4]
   16fd0: 728751d1     	movk	w17, #0x3a8e
   16fd4: 72a48411     	movk	w17, #0x2420, lsl #16
   16fd8: 6b11021f     	cmp	w16, w17
   16fdc: 54000040     	b.eq	0x16fe4 <syna_tcm_switch_fw_mode+0x24c>
   16fe0: d4304500     	brk	#0x8228
   16fe4: d63f0100     	blr	x8
   16fe8: 36f80120     	tbz	w0, #0x1f, 0x1700c <syna_tcm_switch_fw_mode+0x274>
   16fec: 2a0003f3     	mov	w19, w0
   16ff0: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x378f
   16ff4: 91000000     	add	x0, x0, #0x0
		0000000000016ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x378f
   16ff8: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x190>
		0000000000016ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c
   16ffc: 91000021     	add	x1, x1, #0x0
		0000000000016ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c
   17000: 528003e2     	mov	w2, #0x1f               // =31
   17004: 94000000     	bl	0x17004 <syna_tcm_switch_fw_mode+0x26c>
		0000000000017004:  R_AARCH64_CALL26	_printk
   17008: 14000013     	b	0x17054 <syna_tcm_switch_fw_mode+0x2bc>
   1700c: 39402682     	ldrb	w2, [x20, #0x9]
   17010: 71002c5f     	cmp	w2, #0xb
   17014: 54000141     	b.ne	0x1703c <syna_tcm_switch_fw_mode+0x2a4>
   17018: 90000000     	adrp	x0, 0x17000 <syna_tcm_switch_fw_mode+0x268>
		0000000000017018:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4888
   1701c: 91000000     	add	x0, x0, #0x0
		000000000001701c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4888
   17020: 90000001     	adrp	x1, 0x17000 <syna_tcm_switch_fw_mode+0x268>
		0000000000017020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c
   17024: 91000021     	add	x1, x1, #0x0
		0000000000017024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c
   17028: 94000000     	bl	0x17028 <syna_tcm_switch_fw_mode+0x290>
		0000000000017028:  R_AARCH64_CALL26	_printk
   1702c: aa1403e0     	mov	x0, x20
   17030: f941d808     	ldr	x8, [x0, #0x3b0]
   17034: b5ffef68     	cbnz	x8, 0x16e20 <syna_tcm_switch_fw_mode+0x88>
   17038: 17ffff81     	b	0x16e3c <syna_tcm_switch_fw_mode+0xa4>
   1703c: 90000000     	adrp	x0, 0x17000 <syna_tcm_switch_fw_mode+0x268>
		000000000001703c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d99
   17040: 91000000     	add	x0, x0, #0x0
		0000000000017040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d99
   17044: 90000001     	adrp	x1, 0x17000 <syna_tcm_switch_fw_mode+0x268>
		0000000000017044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98c
   17048: 91000021     	add	x1, x1, #0x0
		0000000000017048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98c
   1704c: 94000000     	bl	0x1704c <syna_tcm_switch_fw_mode+0x2b4>
		000000000001704c:  R_AARCH64_CALL26	_printk
   17050: 12801e33     	mov	w19, #-0xf2             // =-242
   17054: 90000000     	adrp	x0, 0x17000 <syna_tcm_switch_fw_mode+0x268>
		0000000000017054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x206d
   17058: 91000000     	add	x0, x0, #0x0
		0000000000017058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x206d
   1705c: 90000001     	adrp	x1, 0x17000 <syna_tcm_switch_fw_mode+0x268>
		000000000001705c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x465d
   17060: 91000021     	add	x1, x1, #0x0
		0000000000017060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x465d
   17064: 94000000     	bl	0x17064 <syna_tcm_switch_fw_mode+0x2cc>
		0000000000017064:  R_AARCH64_CALL26	_printk
   17068: 2a1303e0     	mov	w0, w19
   1706c: 17ffff75     	b	0x16e40 <syna_tcm_switch_fw_mode+0xa8>
