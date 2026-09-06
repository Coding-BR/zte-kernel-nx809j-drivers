
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003c44 <aw22xxx_fw_loaded>:
    3c44: d503233f     	paciasp
    3c48: d10283ff     	sub	sp, sp, #0xa0
    3c4c: a9047bfd     	stp	x29, x30, [sp, #0x40]
    3c50: a9056ffc     	stp	x28, x27, [sp, #0x50]
    3c54: a90667fa     	stp	x26, x25, [sp, #0x60]
    3c58: a9075ff8     	stp	x24, x23, [sp, #0x70]
    3c5c: a90857f6     	stp	x22, x21, [sp, #0x80]
    3c60: a9094ff4     	stp	x20, x19, [sp, #0x90]
    3c64: 910103fd     	add	x29, sp, #0x40
    3c68: d5384108     	mrs	x8, SP_EL0
    3c6c: aa0103f3     	mov	x19, x1
    3c70: aa0003f8     	mov	x24, x0
    3c74: f9438908     	ldr	x8, [x8, #0x710]
    3c78: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    3c7c: 91000000     	add	x0, x0, #0x0
		0000000000003c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    3c80: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		0000000000003c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x146d
    3c84: 91000021     	add	x1, x1, #0x0
		0000000000003c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x146d
    3c88: f81f83a8     	stur	x8, [x29, #-0x8]
    3c8c: 381f43bf     	sturb	wzr, [x29, #-0xc]
    3c90: 94000000     	bl	0x3c90 <aw22xxx_fw_loaded+0x4c>
		0000000000003c90:  R_AARCH64_CALL26	_printk
    3c94: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a4
    3c98: 91000000     	add	x0, x0, #0x0
		0000000000003c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a4
    3c9c: 94000000     	bl	0x3c9c <aw22xxx_fw_loaded+0x58>
		0000000000003c9c:  R_AARCH64_CALL26	_printk
    3ca0: b50000f8     	cbnz	x24, 0x3cbc <aw22xxx_fw_loaded+0x78>
    3ca4: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17a
    3ca8: 91000000     	add	x0, x0, #0x0
		0000000000003ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17a
    3cac: 94000000     	bl	0x3cac <aw22xxx_fw_loaded+0x68>
		0000000000003cac:  R_AARCH64_CALL26	_printk
    3cb0: aa1f03e0     	mov	x0, xzr
    3cb4: 94000000     	bl	0x3cb4 <aw22xxx_fw_loaded+0x70>
		0000000000003cb4:  R_AARCH64_CALL26	release_firmware
    3cb8: 14000279     	b	0x469c <aw22xxx_fw_loaded+0xa58>
    3cbc: f940031a     	ldr	x26, [x24]
    3cc0: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x147f
    3cc4: 91000000     	add	x0, x0, #0x0
		0000000000003cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x147f
    3cc8: aa1a03e1     	mov	x1, x26
    3ccc: 94000000     	bl	0x3ccc <aw22xxx_fw_loaded+0x88>
		0000000000003ccc:  R_AARCH64_CALL26	_printk
    3cd0: f9400715     	ldr	x21, [x24, #0x8]
    3cd4: f100135f     	cmp	x26, #0x4
    3cd8: 54000062     	b.hs	0x3ce4 <aw22xxx_fw_loaded+0xa0>
    3cdc: 2a1f03f6     	mov	w22, wzr
    3ce0: 14000020     	b	0x3d60 <aw22xxx_fw_loaded+0x11c>
    3ce4: d341ff48     	lsr	x8, x26, #1
    3ce8: d100050a     	sub	x10, x8, #0x1
    3cec: f100095f     	cmp	x10, #0x2
    3cf0: 54000082     	b.hs	0x3d00 <aw22xxx_fw_loaded+0xbc>
    3cf4: 2a1f03f6     	mov	w22, wzr
    3cf8: 52800029     	mov	w9, #0x1                // =1
    3cfc: 14000012     	b	0x3d44 <aw22xxx_fw_loaded+0x100>
    3d00: 927ff94d     	and	x13, x10, #0xfffffffffffffffe
    3d04: 2a1f03eb     	mov	w11, wzr
    3d08: 2a1f03ec     	mov	w12, wzr
    3d0c: b2400149     	orr	x9, x10, #0x1
    3d10: 910012ae     	add	x14, x21, #0x4
    3d14: aa0d03ef     	mov	x15, x13
    3d18: 785fe1d0     	ldurh	w16, [x14, #-0x2]
    3d1c: 784045d1     	ldrh	w17, [x14], #0x4
    3d20: f10009ef     	subs	x15, x15, #0x2
    3d24: 5ac00a10     	rev	w16, w16
    3d28: 5ac00a31     	rev	w17, w17
    3d2c: 0b50416b     	add	w11, w11, w16, lsr #16
    3d30: 0b51418c     	add	w12, w12, w17, lsr #16
    3d34: 54ffff21     	b.ne	0x3d18 <aw22xxx_fw_loaded+0xd4>
    3d38: eb0d015f     	cmp	x10, x13
    3d3c: 0b0b0196     	add	w22, w12, w11
    3d40: 54000100     	b.eq	0x3d60 <aw22xxx_fw_loaded+0x11c>
    3d44: 8b0906aa     	add	x10, x21, x9, lsl #1
    3d48: cb090108     	sub	x8, x8, x9
    3d4c: 78402549     	ldrh	w9, [x10], #0x2
    3d50: f1000508     	subs	x8, x8, #0x1
    3d54: 5ac00929     	rev	w9, w9
    3d58: 0b4942d6     	add	w22, w22, w9, lsr #16
    3d5c: 54ffff81     	b.ne	0x3d4c <aw22xxx_fw_loaded+0x108>
    3d60: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003d60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a37
    3d64: 91000000     	add	x0, x0, #0x0
		0000000000003d64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a37
    3d68: 94000000     	bl	0x3d68 <aw22xxx_fw_loaded+0x124>
		0000000000003d68:  R_AARCH64_CALL26	_printk
    3d6c: 794002a8     	ldrh	w8, [x21]
    3d70: 12003ec9     	and	w9, w22, #0xffff
    3d74: 5ac00908     	rev	w8, w8
    3d78: 6b48413f     	cmp	w9, w8, lsr #16
    3d7c: 54000261     	b.ne	0x3dc8 <aw22xxx_fw_loaded+0x184>
    3d80: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf37
    3d84: 91000000     	add	x0, x0, #0x0
		0000000000003d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf37
    3d88: 94000000     	bl	0x3d88 <aw22xxx_fw_loaded+0x144>
		0000000000003d88:  R_AARCH64_CALL26	_printk
    3d8c: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x531
    3d90: 91000000     	add	x0, x0, #0x0
		0000000000003d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x531
    3d94: 91004354     	add	x20, x26, #0x10
    3d98: 94000000     	bl	0x3d98 <aw22xxx_fw_loaded+0x154>
		0000000000003d98:  R_AARCH64_CALL26	_printk
    3d9c: d503201f     	nop
    3da0: aa1403e0     	mov	x0, x20
    3da4: 5281b801     	mov	w1, #0xdc0              // =3520
    3da8: 94000000     	bl	0x3da8 <aw22xxx_fw_loaded+0x164>
		0000000000003da8:  R_AARCH64_CALL26	__kmalloc_noprof
    3dac: aa0003f5     	mov	x21, x0
    3db0: b5000335     	cbnz	x21, 0x3e14 <aw22xxx_fw_loaded+0x1d0>
    3db4: aa1803e0     	mov	x0, x24
    3db8: 94000000     	bl	0x3db8 <aw22xxx_fw_loaded+0x174>
		0000000000003db8:  R_AARCH64_CALL26	release_firmware
    3dbc: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b42
    3dc0: 91000000     	add	x0, x0, #0x0
		0000000000003dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b42
    3dc4: 14000235     	b	0x4698 <aw22xxx_fw_loaded+0xa54>
    3dc8: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1692
    3dcc: 91000000     	add	x0, x0, #0x0
		0000000000003dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1692
    3dd0: 94000000     	bl	0x3dd0 <aw22xxx_fw_loaded+0x18c>
		0000000000003dd0:  R_AARCH64_CALL26	_printk
    3dd4: aa1803e0     	mov	x0, x24
    3dd8: 94000000     	bl	0x3dd8 <aw22xxx_fw_loaded+0x194>
		0000000000003dd8:  R_AARCH64_CALL26	release_firmware
    3ddc: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x513
    3de0: 91000000     	add	x0, x0, #0x0
		0000000000003de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x513
    3de4: 1400022d     	b	0x4698 <aw22xxx_fw_loaded+0xa54>
    3de8: d5384117     	mrs	x23, SP_EL0
    3dec: f9402af9     	ldr	x25, [x23, #0x50]
    3df0: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		0000000000003df0:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x78
    3df4: 91000108     	add	x8, x8, #0x0
		0000000000003df4:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x78
    3df8: aa1403e0     	mov	x0, x20
    3dfc: 5281b801     	mov	w1, #0xdc0              // =3520
    3e00: f9002ae8     	str	x8, [x23, #0x50]
    3e04: 94000000     	bl	0x3e04 <aw22xxx_fw_loaded+0x1c0>
		0000000000003e04:  R_AARCH64_CALL26	__kmalloc_noprof
    3e08: aa0003f5     	mov	x21, x0
    3e0c: f9002af9     	str	x25, [x23, #0x50]
    3e10: b4fffd35     	cbz	x21, 0x3db4 <aw22xxx_fw_loaded+0x170>
    3e14: f100129f     	cmp	x20, #0x4
    3e18: 540045e3     	b.lo	0x46d4 <aw22xxx_fw_loaded+0xa90>
    3e1c: 927ef748     	and	x8, x26, #0xfffffffffffffffc
    3e20: b100311f     	cmn	x8, #0xc
    3e24: 54004580     	b.eq	0x46d4 <aw22xxx_fw_loaded+0xa90>
    3e28: f9400708     	ldr	x8, [x24, #0x8]
    3e2c: f100229f     	cmp	x20, #0x8
    3e30: b841b108     	ldur	w8, [x8, #0x1b]
    3e34: 5ac00908     	rev	w8, w8
    3e38: b90006a8     	str	w8, [x21, #0x4]
    3e3c: 540044c3     	b.lo	0x46d4 <aw22xxx_fw_loaded+0xa90>
    3e40: 927ef748     	and	x8, x26, #0xfffffffffffffffc
    3e44: b100211f     	cmn	x8, #0x8
    3e48: 54004460     	b.eq	0x46d4 <aw22xxx_fw_loaded+0xa90>
    3e4c: f9400708     	ldr	x8, [x24, #0x8]
    3e50: b100475f     	cmn	x26, #0x11
    3e54: 79404508     	ldrh	w8, [x8, #0x22]
    3e58: 5ac00908     	rev	w8, w8
    3e5c: 53107d08     	lsr	w8, w8, #16
    3e60: b9000aa8     	str	w8, [x21, #0x8]
    3e64: 54004388     	b.hi	0x46d4 <aw22xxx_fw_loaded+0xa90>
    3e68: f9400708     	ldr	x8, [x24, #0x8]
    3e6c: f100129f     	cmp	x20, #0x4
    3e70: 39409109     	ldrb	w9, [x8, #0x24]
    3e74: b9000ea9     	str	w9, [x21, #0xc]
    3e78: 540042e3     	b.lo	0x46d4 <aw22xxx_fw_loaded+0xa90>
    3e7c: 79404d08     	ldrh	w8, [x8, #0x26]
    3e80: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1004
    3e84: 91000000     	add	x0, x0, #0x0
		0000000000003e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1004
    3e88: 5ac00908     	rev	w8, w8
    3e8c: 53107d08     	lsr	w8, w8, #16
    3e90: b90002a8     	str	w8, [x21]
    3e94: 94000000     	bl	0x3e94 <aw22xxx_fw_loaded+0x250>
		0000000000003e94:  R_AARCH64_CALL26	_printk
    3e98: aa1503f7     	mov	x23, x21
    3e9c: b84106e2     	ldr	w2, [x23], #0x10
    3ea0: eb02035f     	cmp	x26, x2
    3ea4: 540041a3     	b.lo	0x46d8 <aw22xxx_fw_loaded+0xa94>
    3ea8: f9400708     	ldr	x8, [x24, #0x8]
    3eac: aa1703e0     	mov	x0, x23
    3eb0: 9100a101     	add	x1, x8, #0x28
    3eb4: 94000000     	bl	0x3eb4 <aw22xxx_fw_loaded+0x270>
		0000000000003eb4:  R_AARCH64_CALL26	memcpy
    3eb8: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x634
    3ebc: 91000000     	add	x0, x0, #0x0
		0000000000003ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x634
    3ec0: 94000000     	bl	0x3ec0 <aw22xxx_fw_loaded+0x27c>
		0000000000003ec0:  R_AARCH64_CALL26	_printk
    3ec4: aa1803e0     	mov	x0, x24
    3ec8: 94000000     	bl	0x3ec8 <aw22xxx_fw_loaded+0x284>
		0000000000003ec8:  R_AARCH64_CALL26	release_firmware
    3ecc: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbce
    3ed0: 91000000     	add	x0, x0, #0x0
		0000000000003ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbce
    3ed4: 94000000     	bl	0x3ed4 <aw22xxx_fw_loaded+0x290>
		0000000000003ed4:  R_AARCH64_CALL26	_printk
    3ed8: aa1303e0     	mov	x0, x19
    3edc: 52800021     	mov	w1, #0x1                // =1
    3ee0: 52800aa2     	mov	w2, #0x55               // =85
    3ee4: 97fff05f     	bl	0x60 <aw22xxx_i2c_write>
    3ee8: 5280fa00     	mov	w0, #0x7d0              // =2000
    3eec: 52817701     	mov	w1, #0xbb8              // =3000
    3ef0: 52800042     	mov	w2, #0x2                // =2
    3ef4: 94000000     	bl	0x3ef4 <aw22xxx_fw_loaded+0x2b0>
		0000000000003ef4:  R_AARCH64_CALL26	usleep_range_state
    3ef8: d10033a2     	sub	x2, x29, #0xc
    3efc: aa1303e0     	mov	x0, x19
    3f00: 52800041     	mov	w1, #0x2                // =2
    3f04: 97fff547     	bl	0x1420 <aw22xxx_i2c_read>
    3f08: 385f43a8     	ldurb	w8, [x29, #-0xc]
    3f0c: aa1303e0     	mov	x0, x19
    3f10: 52800041     	mov	w1, #0x2                // =2
    3f14: 32000102     	orr	w2, w8, #0x1
    3f18: 381f43a2     	sturb	w2, [x29, #-0xc]
    3f1c: 97fff051     	bl	0x60 <aw22xxx_i2c_write>
    3f20: 5280fa00     	mov	w0, #0x7d0              // =2000
    3f24: 52817701     	mov	w1, #0xbb8              // =3000
    3f28: 52800042     	mov	w2, #0x2                // =2
    3f2c: 94000000     	bl	0x3f2c <aw22xxx_fw_loaded+0x2e8>
		0000000000003f2c:  R_AARCH64_CALL26	usleep_range_state
    3f30: d10033a2     	sub	x2, x29, #0xc
    3f34: aa1303e0     	mov	x0, x19
    3f38: 52800081     	mov	w1, #0x4                // =4
    3f3c: 97fff539     	bl	0x1420 <aw22xxx_i2c_read>
    3f40: 385f43a8     	ldurb	w8, [x29, #-0xc]
    3f44: aa1303e0     	mov	x0, x19
    3f48: 52800081     	mov	w1, #0x4                // =4
    3f4c: 32000102     	orr	w2, w8, #0x1
    3f50: 381f43a2     	sturb	w2, [x29, #-0xc]
    3f54: 97fff043     	bl	0x60 <aw22xxx_i2c_write>
    3f58: b94002a8     	ldr	w8, [x21]
    3f5c: 529fffe9     	mov	w9, #0xffff             // =65535
    3f60: aa1303e0     	mov	x0, x19
    3f64: 52800441     	mov	w1, #0x22               // =34
    3f68: 0b090108     	add	w8, w8, w9
    3f6c: 53087d02     	lsr	w2, w8, #8
    3f70: 97fff03c     	bl	0x60 <aw22xxx_i2c_write>
    3f74: 394002a8     	ldrb	w8, [x21]
    3f78: aa1303e0     	mov	x0, x19
    3f7c: 52800421     	mov	w1, #0x21               // =33
    3f80: 51000502     	sub	w2, w8, #0x1
    3f84: 97fff037     	bl	0x60 <aw22xxx_i2c_write>
    3f88: aa1303e0     	mov	x0, x19
    3f8c: 52800481     	mov	w1, #0x24               // =36
    3f90: 528000e2     	mov	w2, #0x7                // =7
    3f94: 97fff033     	bl	0x60 <aw22xxx_i2c_write>
    3f98: 52827100     	mov	w0, #0x1388             // =5000
    3f9c: 52832c81     	mov	w1, #0x1964             // =6500
    3fa0: 52800042     	mov	w2, #0x2                // =2
    3fa4: 94000000     	bl	0x3fa4 <aw22xxx_fw_loaded+0x360>
		0000000000003fa4:  R_AARCH64_CALL26	usleep_range_state
    3fa8: d10033a2     	sub	x2, x29, #0xc
    3fac: aa1303e0     	mov	x0, x19
    3fb0: 52800481     	mov	w1, #0x24               // =36
    3fb4: 97fff51b     	bl	0x1420 <aw22xxx_i2c_read>
    3fb8: 385f43a1     	ldurb	w1, [x29, #-0xc]
    3fbc: 7100143f     	cmp	w1, #0x5
    3fc0: 54000581     	b.ne	0x4070 <aw22xxx_fw_loaded+0x42c>
    3fc4: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		0000000000003fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x155d
    3fc8: 91000000     	add	x0, x0, #0x0
		0000000000003fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x155d
    3fcc: 94000000     	bl	0x3fcc <aw22xxx_fw_loaded+0x388>
		0000000000003fcc:  R_AARCH64_CALL26	_printk
    3fd0: d10043a2     	sub	x2, x29, #0x10
    3fd4: aa1303e0     	mov	x0, x19
    3fd8: 528004a1     	mov	w1, #0x25               // =37
    3fdc: 381f03bf     	sturb	wzr, [x29, #-0x10]
    3fe0: 381ec3bf     	sturb	wzr, [x29, #-0x14]
    3fe4: 97fff50f     	bl	0x1420 <aw22xxx_i2c_read>
    3fe8: d10053a2     	sub	x2, x29, #0x14
    3fec: aa1303e0     	mov	x0, x19
    3ff0: 528004c1     	mov	w1, #0x26               // =38
    3ff4: 97fff50b     	bl	0x1420 <aw22xxx_i2c_read>
    3ff8: f100229f     	cmp	x20, #0x8
    3ffc: 540036c3     	b.lo	0x46d4 <aw22xxx_fw_loaded+0xa90>
    4000: 927ef748     	and	x8, x26, #0xfffffffffffffffc
    4004: b100211f     	cmn	x8, #0x8
    4008: 54003660     	b.eq	0x46d4 <aw22xxx_fw_loaded+0xa90>
    400c: 385ec3a8     	ldurb	w8, [x29, #-0x14]
    4010: 385f03a9     	ldurb	w9, [x29, #-0x10]
    4014: 2a082128     	orr	w8, w9, w8, lsl #8
    4018: b9400aa9     	ldr	w9, [x21, #0x8]
    401c: 6b09011f     	cmp	w8, w9
    4020: 54000301     	b.ne	0x4080 <aw22xxx_fw_loaded+0x43c>
    4024: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f5
    4028: 91000000     	add	x0, x0, #0x0
		0000000000004028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f5
    402c: 94000000     	bl	0x402c <aw22xxx_fw_loaded+0x3e8>
		000000000000402c:  R_AARCH64_CALL26	_printk
    4030: 394bba68     	ldrb	w8, [x19, #0x2ee]
    4034: 350002c8     	cbnz	w8, 0x408c <aw22xxx_fw_loaded+0x448>
    4038: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x871
    403c: 91000000     	add	x0, x0, #0x0
		000000000000403c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x871
    4040: 94000000     	bl	0x4040 <aw22xxx_fw_loaded+0x3fc>
		0000000000004040:  R_AARCH64_CALL26	_printk
    4044: aa1503e0     	mov	x0, x21
    4048: 94000000     	bl	0x4048 <aw22xxx_fw_loaded+0x404>
		0000000000004048:  R_AARCH64_CALL26	kfree
    404c: aa1303e0     	mov	x0, x19
    4050: 52800481     	mov	w1, #0x24               // =36
    4054: 2a1f03e2     	mov	w2, wzr
    4058: 97fff002     	bl	0x60 <aw22xxx_i2c_write>
    405c: aa1303e0     	mov	x0, x19
    4060: 940001a8     	bl	0x4700 <aw22xxx_led_init>
    4064: 52800048     	mov	w8, #0x2                // =2
    4068: 390bbe68     	strb	w8, [x19, #0x2ef]
    406c: 1400018c     	b	0x469c <aw22xxx_fw_loaded+0xa58>
    4070: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xadb
    4074: 91000000     	add	x0, x0, #0x0
		0000000000004074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xadb
    4078: 94000000     	bl	0x4078 <aw22xxx_fw_loaded+0x434>
		0000000000004078:  R_AARCH64_CALL26	_printk
    407c: 14000004     	b	0x408c <aw22xxx_fw_loaded+0x448>
    4080: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8
    4084: 91000000     	add	x0, x0, #0x0
		0000000000004084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8
    4088: 94000000     	bl	0x4088 <aw22xxx_fw_loaded+0x444>
		0000000000004088:  R_AARCH64_CALL26	_printk
    408c: aa1303e0     	mov	x0, x19
    4090: 52800481     	mov	w1, #0x24               // =36
    4094: 2a1f03e2     	mov	w2, wzr
    4098: 97ffeff2     	bl	0x60 <aw22xxx_i2c_write>
    409c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000409c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97e
    40a0: 91000000     	add	x0, x0, #0x0
		00000000000040a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97e
    40a4: 94000000     	bl	0x40a4 <aw22xxx_fw_loaded+0x460>
		00000000000040a4:  R_AARCH64_CALL26	_printk
    40a8: aa1303e0     	mov	x0, x19
    40ac: 52801fe1     	mov	w1, #0xff               // =255
    40b0: 2a1f03e2     	mov	w2, wzr
    40b4: 97ffefeb     	bl	0x60 <aw22xxx_i2c_write>
    40b8: aa1303e0     	mov	x0, x19
    40bc: 52800021     	mov	w1, #0x1                // =1
    40c0: 52800aa2     	mov	w2, #0x55               // =85
    40c4: 97ffefe7     	bl	0x60 <aw22xxx_i2c_write>
    40c8: 5280fa00     	mov	w0, #0x7d0              // =2000
    40cc: 52817701     	mov	w1, #0xbb8              // =3000
    40d0: 52800042     	mov	w2, #0x2                // =2
    40d4: 94000000     	bl	0x40d4 <aw22xxx_fw_loaded+0x490>
		00000000000040d4:  R_AARCH64_CALL26	usleep_range_state
    40d8: d10033a2     	sub	x2, x29, #0xc
    40dc: aa1303e0     	mov	x0, x19
    40e0: 52800041     	mov	w1, #0x2                // =2
    40e4: 97fff4cf     	bl	0x1420 <aw22xxx_i2c_read>
    40e8: 385f43a8     	ldurb	w8, [x29, #-0xc]
    40ec: aa1303e0     	mov	x0, x19
    40f0: 52800041     	mov	w1, #0x2                // =2
    40f4: 32000102     	orr	w2, w8, #0x1
    40f8: 381f43a2     	sturb	w2, [x29, #-0xc]
    40fc: 97ffefd9     	bl	0x60 <aw22xxx_i2c_write>
    4100: 5280fa00     	mov	w0, #0x7d0              // =2000
    4104: 52817701     	mov	w1, #0xbb8              // =3000
    4108: 52800042     	mov	w2, #0x2                // =2
    410c: 94000000     	bl	0x410c <aw22xxx_fw_loaded+0x4c8>
		000000000000410c:  R_AARCH64_CALL26	usleep_range_state
    4110: d10033a2     	sub	x2, x29, #0xc
    4114: aa1303e0     	mov	x0, x19
    4118: 52800081     	mov	w1, #0x4                // =4
    411c: 97fff4c1     	bl	0x1420 <aw22xxx_i2c_read>
    4120: 385f43a8     	ldurb	w8, [x29, #-0xc]
    4124: aa1303e0     	mov	x0, x19
    4128: 52800081     	mov	w1, #0x4                // =4
    412c: 32000102     	orr	w2, w8, #0x1
    4130: 381f43a2     	sturb	w2, [x29, #-0xc]
    4134: 97ffefcb     	bl	0x60 <aw22xxx_i2c_write>
    4138: aa1303e0     	mov	x0, x19
    413c: 52801001     	mov	w1, #0x80               // =128
    4140: 52801d82     	mov	w2, #0xec               // =236
    4144: 97ffefc7     	bl	0x60 <aw22xxx_i2c_write>
    4148: aa1303e0     	mov	x0, x19
    414c: 528006a1     	mov	w1, #0x35               // =53
    4150: 52800522     	mov	w2, #0x29               // =41
    4154: 97ffefc3     	bl	0x60 <aw22xxx_i2c_write>
    4158: f100329f     	cmp	x20, #0xc
    415c: 54002bc3     	b.lo	0x46d4 <aw22xxx_fw_loaded+0xa90>
    4160: b9400ea2     	ldr	w2, [x21, #0xc]
    4164: aa1303e0     	mov	x0, x19
    4168: 52800701     	mov	w1, #0x38               // =56
    416c: 97ffefbd     	bl	0x60 <aw22xxx_i2c_write>
    4170: aa1303e0     	mov	x0, x19
    4174: 52800441     	mov	w1, #0x22               // =34
    4178: 2a1f03e2     	mov	w2, wzr
    417c: 97ffefb9     	bl	0x60 <aw22xxx_i2c_write>
    4180: aa1303e0     	mov	x0, x19
    4184: 52800421     	mov	w1, #0x21               // =33
    4188: 2a1f03e2     	mov	w2, wzr
    418c: 97ffefb5     	bl	0x60 <aw22xxx_i2c_write>
    4190: aa1303e0     	mov	x0, x19
    4194: 52800401     	mov	w1, #0x20               // =32
    4198: 52800062     	mov	w2, #0x3                // =3
    419c: 97ffefb1     	bl	0x60 <aw22xxx_i2c_write>
    41a0: aa1303e0     	mov	x0, x19
    41a4: 52800601     	mov	w1, #0x30               // =48
    41a8: 52800062     	mov	w2, #0x3                // =3
    41ac: 97ffefad     	bl	0x60 <aw22xxx_i2c_write>
    41b0: aa1303e0     	mov	x0, x19
    41b4: 52800461     	mov	w1, #0x23               // =35
    41b8: 2a1f03e2     	mov	w2, wzr
    41bc: 97ffefa9     	bl	0x60 <aw22xxx_i2c_write>
    41c0: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000041c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x149d
    41c4: 91000000     	add	x0, x0, #0x0
		00000000000041c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x149d
    41c8: 94000000     	bl	0x41c8 <aw22xxx_fw_loaded+0x584>
		00000000000041c8:  R_AARCH64_CALL26	_printk
    41cc: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000041cc:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x110
    41d0: aa1703f6     	mov	x22, x23
    41d4: f9000ffa     	str	x26, [sp, #0x18]
    41d8: b9400108     	ldr	w8, [x8]
		00000000000041d8:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x110
    41dc: 71002d1f     	cmp	w8, #0xb
    41e0: 54000088     	b.hi	0x41f0 <aw22xxx_fw_loaded+0x5ac>
    41e4: 52800500     	mov	w0, #0x28               // =40
    41e8: 94000000     	bl	0x41e8 <aw22xxx_fw_loaded+0x5a4>
		00000000000041e8:  R_AARCH64_CALL26	msleep
    41ec: 14000005     	b	0x4200 <aw22xxx_fw_loaded+0x5bc>
    41f0: 5281f400     	mov	w0, #0xfa0              // =4000
    41f4: 52823281     	mov	w1, #0x1194             // =4500
    41f8: 52800042     	mov	w2, #0x2                // =2
    41fc: 94000000     	bl	0x41fc <aw22xxx_fw_loaded+0x5b8>
		00000000000041fc:  R_AARCH64_CALL26	usleep_range_state
    4200: aa1303e0     	mov	x0, x19
    4204: 52800601     	mov	w1, #0x30               // =48
    4208: 2a1f03e2     	mov	w2, wzr
    420c: 97ffef95     	bl	0x60 <aw22xxx_i2c_write>
    4210: aa1303e0     	mov	x0, x19
    4214: 52800441     	mov	w1, #0x22               // =34
    4218: 52800802     	mov	w2, #0x40               // =64
    421c: 97ffef91     	bl	0x60 <aw22xxx_i2c_write>
    4220: aa1303e0     	mov	x0, x19
    4224: 52800421     	mov	w1, #0x21               // =33
    4228: 2a1f03e2     	mov	w2, wzr
    422c: 97ffef8d     	bl	0x60 <aw22xxx_i2c_write>
    4230: aa1303e0     	mov	x0, x19
    4234: 52800601     	mov	w1, #0x30               // =48
    4238: 52800042     	mov	w2, #0x2                // =2
    423c: 97ffef89     	bl	0x60 <aw22xxx_i2c_write>
    4240: aa1303e0     	mov	x0, x19
    4244: 52800461     	mov	w1, #0x23               // =35
    4248: 2a1f03e2     	mov	w2, wzr
    424c: 97ffef85     	bl	0x60 <aw22xxx_i2c_write>
    4250: 5282ee00     	mov	w0, #0x1770             // =6000
    4254: 52832c81     	mov	w1, #0x1964             // =6500
    4258: 52800042     	mov	w2, #0x2                // =2
    425c: 94000000     	bl	0x425c <aw22xxx_fw_loaded+0x618>
		000000000000425c:  R_AARCH64_CALL26	usleep_range_state
    4260: aa1303e0     	mov	x0, x19
    4264: 52800601     	mov	w1, #0x30               // =48
    4268: 2a1f03e2     	mov	w2, wzr
    426c: 97ffef7d     	bl	0x60 <aw22xxx_i2c_write>
    4270: aa1303e0     	mov	x0, x19
    4274: 52800441     	mov	w1, #0x22               // =34
    4278: 52800842     	mov	w2, #0x42               // =66
    427c: 97ffef79     	bl	0x60 <aw22xxx_i2c_write>
    4280: aa1303e0     	mov	x0, x19
    4284: 52800421     	mov	w1, #0x21               // =33
    4288: 2a1f03e2     	mov	w2, wzr
    428c: 97ffef75     	bl	0x60 <aw22xxx_i2c_write>
    4290: aa1303e0     	mov	x0, x19
    4294: 52800601     	mov	w1, #0x30               // =48
    4298: 52800042     	mov	w2, #0x2                // =2
    429c: 97ffef71     	bl	0x60 <aw22xxx_i2c_write>
    42a0: aa1303e0     	mov	x0, x19
    42a4: 52800461     	mov	w1, #0x23               // =35
    42a8: 2a1f03e2     	mov	w2, wzr
    42ac: 97ffef6d     	bl	0x60 <aw22xxx_i2c_write>
    42b0: 5282ee00     	mov	w0, #0x1770             // =6000
    42b4: 52832c81     	mov	w1, #0x1964             // =6500
    42b8: 52800042     	mov	w2, #0x2                // =2
    42bc: 94000000     	bl	0x42bc <aw22xxx_fw_loaded+0x678>
		00000000000042bc:  R_AARCH64_CALL26	usleep_range_state
    42c0: aa1303e0     	mov	x0, x19
    42c4: 52800601     	mov	w1, #0x30               // =48
    42c8: 2a1f03e2     	mov	w2, wzr
    42cc: 97ffef65     	bl	0x60 <aw22xxx_i2c_write>
    42d0: aa1303e0     	mov	x0, x19
    42d4: 52800441     	mov	w1, #0x22               // =34
    42d8: 52800882     	mov	w2, #0x44               // =68
    42dc: 97ffef61     	bl	0x60 <aw22xxx_i2c_write>
    42e0: aa1303e0     	mov	x0, x19
    42e4: 52800421     	mov	w1, #0x21               // =33
    42e8: 2a1f03e2     	mov	w2, wzr
    42ec: 97ffef5d     	bl	0x60 <aw22xxx_i2c_write>
    42f0: aa1303e0     	mov	x0, x19
    42f4: 52800601     	mov	w1, #0x30               // =48
    42f8: 52800042     	mov	w2, #0x2                // =2
    42fc: 97ffef59     	bl	0x60 <aw22xxx_i2c_write>
    4300: aa1303e0     	mov	x0, x19
    4304: 52800461     	mov	w1, #0x23               // =35
    4308: 2a1f03e2     	mov	w2, wzr
    430c: 97ffef55     	bl	0x60 <aw22xxx_i2c_write>
    4310: 5282ee00     	mov	w0, #0x1770             // =6000
    4314: 52832c81     	mov	w1, #0x1964             // =6500
    4318: 52800042     	mov	w2, #0x2                // =2
    431c: 94000000     	bl	0x431c <aw22xxx_fw_loaded+0x6d8>
		000000000000431c:  R_AARCH64_CALL26	usleep_range_state
    4320: aa1303e0     	mov	x0, x19
    4324: 52800601     	mov	w1, #0x30               // =48
    4328: 2a1f03e2     	mov	w2, wzr
    432c: 97ffef4d     	bl	0x60 <aw22xxx_i2c_write>
    4330: aa1303e0     	mov	x0, x19
    4334: 52800401     	mov	w1, #0x20               // =32
    4338: 2a1f03e2     	mov	w2, wzr
    433c: 97ffef49     	bl	0x60 <aw22xxx_i2c_write>
    4340: aa1303e0     	mov	x0, x19
    4344: 52800401     	mov	w1, #0x20               // =32
    4348: 52800062     	mov	w2, #0x3                // =3
    434c: 97ffef45     	bl	0x60 <aw22xxx_i2c_write>
    4350: b94002a8     	ldr	w8, [x21]
    4354: 35000c08     	cbnz	w8, 0x44d4 <aw22xxx_fw_loaded+0x890>
    4358: aa1303e0     	mov	x0, x19
    435c: 52800401     	mov	w1, #0x20               // =32
    4360: 2a1f03e2     	mov	w2, wzr
    4364: 97ffef3f     	bl	0x60 <aw22xxx_i2c_write>
    4368: aa1303e0     	mov	x0, x19
    436c: 52800021     	mov	w1, #0x1                // =1
    4370: 52800aa2     	mov	w2, #0x55               // =85
    4374: 97ffef3b     	bl	0x60 <aw22xxx_i2c_write>
    4378: 5280fa00     	mov	w0, #0x7d0              // =2000
    437c: 52817701     	mov	w1, #0xbb8              // =3000
    4380: 52800042     	mov	w2, #0x2                // =2
    4384: 94000000     	bl	0x4384 <aw22xxx_fw_loaded+0x740>
		0000000000004384:  R_AARCH64_CALL26	usleep_range_state
    4388: d10033a2     	sub	x2, x29, #0xc
    438c: aa1303e0     	mov	x0, x19
    4390: 52800041     	mov	w1, #0x2                // =2
    4394: 97fff423     	bl	0x1420 <aw22xxx_i2c_read>
    4398: 385f43a8     	ldurb	w8, [x29, #-0xc]
    439c: aa1303e0     	mov	x0, x19
    43a0: 52800041     	mov	w1, #0x2                // =2
    43a4: 32000102     	orr	w2, w8, #0x1
    43a8: 381f43a2     	sturb	w2, [x29, #-0xc]
    43ac: 97ffef2d     	bl	0x60 <aw22xxx_i2c_write>
    43b0: 5280fa00     	mov	w0, #0x7d0              // =2000
    43b4: 52817701     	mov	w1, #0xbb8              // =3000
    43b8: 52800042     	mov	w2, #0x2                // =2
    43bc: 94000000     	bl	0x43bc <aw22xxx_fw_loaded+0x778>
		00000000000043bc:  R_AARCH64_CALL26	usleep_range_state
    43c0: d10033a2     	sub	x2, x29, #0xc
    43c4: aa1303e0     	mov	x0, x19
    43c8: 52800081     	mov	w1, #0x4                // =4
    43cc: 97fff415     	bl	0x1420 <aw22xxx_i2c_read>
    43d0: 385f43a8     	ldurb	w8, [x29, #-0xc]
    43d4: aa1303e0     	mov	x0, x19
    43d8: 52800081     	mov	w1, #0x4                // =4
    43dc: 32000102     	orr	w2, w8, #0x1
    43e0: 381f43a2     	sturb	w2, [x29, #-0xc]
    43e4: 97ffef1f     	bl	0x60 <aw22xxx_i2c_write>
    43e8: b94002a8     	ldr	w8, [x21]
    43ec: 529fffe9     	mov	w9, #0xffff             // =65535
    43f0: aa1303e0     	mov	x0, x19
    43f4: 52800441     	mov	w1, #0x22               // =34
    43f8: 0b090108     	add	w8, w8, w9
    43fc: 53087d02     	lsr	w2, w8, #8
    4400: 97ffef18     	bl	0x60 <aw22xxx_i2c_write>
    4404: 394002a8     	ldrb	w8, [x21]
    4408: aa1303e0     	mov	x0, x19
    440c: 52800421     	mov	w1, #0x21               // =33
    4410: 51000502     	sub	w2, w8, #0x1
    4414: 97ffef13     	bl	0x60 <aw22xxx_i2c_write>
    4418: aa1303e0     	mov	x0, x19
    441c: 52800481     	mov	w1, #0x24               // =36
    4420: 528000e2     	mov	w2, #0x7                // =7
    4424: 97ffef0f     	bl	0x60 <aw22xxx_i2c_write>
    4428: 52827100     	mov	w0, #0x1388             // =5000
    442c: 52832c81     	mov	w1, #0x1964             // =6500
    4430: 52800042     	mov	w2, #0x2                // =2
    4434: 94000000     	bl	0x4434 <aw22xxx_fw_loaded+0x7f0>
		0000000000004434:  R_AARCH64_CALL26	usleep_range_state
    4438: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004438:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd3
    443c: 91000000     	add	x0, x0, #0x0
		000000000000443c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd3
    4440: 94000000     	bl	0x4440 <aw22xxx_fw_loaded+0x7fc>
		0000000000004440:  R_AARCH64_CALL26	_printk
    4444: d10033a2     	sub	x2, x29, #0xc
    4448: aa1303e0     	mov	x0, x19
    444c: 52800481     	mov	w1, #0x24               // =36
    4450: 97fff3f4     	bl	0x1420 <aw22xxx_i2c_read>
    4454: 385f43a1     	ldurb	w1, [x29, #-0xc]
    4458: 7100143f     	cmp	w1, #0x5
    445c: 54000f81     	b.ne	0x464c <aw22xxx_fw_loaded+0xa08>
    4460: d10063a2     	sub	x2, x29, #0x18
    4464: aa1303e0     	mov	x0, x19
    4468: 528004a1     	mov	w1, #0x25               // =37
    446c: 381e83bf     	sturb	wzr, [x29, #-0x18]
    4470: 381e43bf     	sturb	wzr, [x29, #-0x1c]
    4474: 97fff3eb     	bl	0x1420 <aw22xxx_i2c_read>
    4478: d10073a2     	sub	x2, x29, #0x1c
    447c: aa1303e0     	mov	x0, x19
    4480: 528004c1     	mov	w1, #0x26               // =38
    4484: 97fff3e7     	bl	0x1420 <aw22xxx_i2c_read>
    4488: f9400fe8     	ldr	x8, [sp, #0x18]
    448c: 927ef508     	and	x8, x8, #0xfffffffffffffffc
    4490: b100211f     	cmn	x8, #0x8
    4494: 54001200     	b.eq	0x46d4 <aw22xxx_fw_loaded+0xa90>
    4498: 385e43a8     	ldurb	w8, [x29, #-0x1c]
    449c: 385e83a9     	ldurb	w9, [x29, #-0x18]
    44a0: 9000000a     	adrp	x10, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000044a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcd7
    44a4: 9100014a     	add	x10, x10, #0x0
		00000000000044a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcd7
    44a8: 9000000b     	adrp	x11, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000044a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdfd
    44ac: 9100016b     	add	x11, x11, #0x0
		00000000000044ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdfd
    44b0: 2a082128     	orr	w8, w9, w8, lsl #8
    44b4: b9400aa9     	ldr	w9, [x21, #0x8]
    44b8: 6b09011f     	cmp	w8, w9
    44bc: 52800048     	mov	w8, #0x2                // =2
    44c0: 9a8a0160     	csel	x0, x11, x10, eq
    44c4: 1a880514     	cinc	w20, w8, ne
    44c8: 94000000     	bl	0x44c8 <aw22xxx_fw_loaded+0x884>
		00000000000044c8:  R_AARCH64_CALL26	_printk
    44cc: 390bbe74     	strb	w20, [x19, #0x2ef]
    44d0: 14000064     	b	0x4660 <aw22xxx_fw_loaded+0xa1c>
    44d4: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000044d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d1
    44d8: 91000000     	add	x0, x0, #0x0
		00000000000044d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d1
    44dc: 94000000     	bl	0x44dc <aw22xxx_fw_loaded+0x898>
		00000000000044dc:  R_AARCH64_CALL26	_printk
    44e0: 2a1f03f8     	mov	w24, wzr
    44e4: 90000019     	adrp	x25, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		00000000000044e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9a8
    44e8: 91000339     	add	x25, x25, #0x0
		00000000000044e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9a8
    44ec: 52801017     	mov	w23, #0x80              // =128
    44f0: d5384108     	mrs	x8, SP_EL0
    44f4: f9000be8     	str	x8, [sp, #0x10]
    44f8: 1400000f     	b	0x4534 <aw22xxx_fw_loaded+0x8f0>
    44fc: aa1c03e0     	mov	x0, x28
    4500: 94000000     	bl	0x4500 <aw22xxx_fw_loaded+0x8bc>
		0000000000004500:  R_AARCH64_CALL26	kfree
    4504: aa1303e0     	mov	x0, x19
    4508: 52800221     	mov	w1, #0x11               // =17
    450c: 2a1f03e2     	mov	w2, wzr
    4510: 97ffeed4     	bl	0x60 <aw22xxx_i2c_write>
    4514: aa1303e0     	mov	x0, x19
    4518: 52800601     	mov	w1, #0x30               // =48
    451c: 2a1f03e2     	mov	w2, wzr
    4520: 97ffeed0     	bl	0x60 <aw22xxx_i2c_write>
    4524: b94002a8     	ldr	w8, [x21]
    4528: 0b180378     	add	w24, w27, w24
    452c: 6b08031f     	cmp	w24, w8
    4530: 54fff142     	b.hs	0x4358 <aw22xxx_fw_loaded+0x714>
    4534: 53087f02     	lsr	w2, w24, #8
    4538: aa1303e0     	mov	x0, x19
    453c: 52800441     	mov	w1, #0x22               // =34
    4540: 97ffeec8     	bl	0x60 <aw22xxx_i2c_write>
    4544: aa1303e0     	mov	x0, x19
    4548: 52800421     	mov	w1, #0x21               // =33
    454c: 2a1803e2     	mov	w2, w24
    4550: 97ffeec4     	bl	0x60 <aw22xxx_i2c_write>
    4554: aa1303e0     	mov	x0, x19
    4558: 52800221     	mov	w1, #0x11               // =17
    455c: 52800022     	mov	w2, #0x1                // =1
    4560: 97ffeec0     	bl	0x60 <aw22xxx_i2c_write>
    4564: aa1303e0     	mov	x0, x19
    4568: 52800601     	mov	w1, #0x30               // =48
    456c: 52800082     	mov	w2, #0x4                // =4
    4570: 97ffeebc     	bl	0x60 <aw22xxx_i2c_write>
    4574: b94002a8     	ldr	w8, [x21]
    4578: 4b180108     	sub	w8, w8, w24
    457c: 7102011f     	cmp	w8, #0x80
    4580: 1a97311b     	csel	w27, w8, w23, lo
    4584: d503201f     	nop
    4588: 1100077a     	add	w26, w27, #0x1
    458c: 52819801     	mov	w1, #0xcc0              // =3264
    4590: aa1a03e0     	mov	x0, x26
    4594: 94000000     	bl	0x4594 <aw22xxx_fw_loaded+0x950>
		0000000000004594:  R_AARCH64_CALL26	__kmalloc_noprof
    4598: b4fffb60     	cbz	x0, 0x4504 <aw22xxx_fw_loaded+0x8c0>
    459c: aa0003fc     	mov	x28, x0
    45a0: aa1903e0     	mov	x0, x25
    45a4: 94000000     	bl	0x45a4 <aw22xxx_fw_loaded+0x960>
		00000000000045a4:  R_AARCH64_CALL26	_printk
    45a8: 2a1803e8     	mov	w8, w24
    45ac: f9400fea     	ldr	x10, [sp, #0x18]
    45b0: d1000741     	sub	x1, x26, #0x1
    45b4: 91004109     	add	x9, x8, #0x10
    45b8: aa1c03e0     	mov	x0, x28
    45bc: cb08014a     	sub	x10, x10, x8
    45c0: eb09029f     	cmp	x20, x9
    45c4: 9a8a33e9     	csel	x9, xzr, x10, lo
    45c8: eb1b003f     	cmp	x1, x27
    45cc: 5280046a     	mov	w10, #0x23              // =35
    45d0: 3800140a     	strb	w10, [x0], #0x1
    45d4: 54000883     	b.lo	0x46e4 <aw22xxx_fw_loaded+0xaa0>
    45d8: eb1b013f     	cmp	x9, x27
    45dc: 540008a3     	b.lo	0x46f0 <aw22xxx_fw_loaded+0xaac>
    45e0: 8b0802c1     	add	x1, x22, x8
    45e4: aa1b03e2     	mov	x2, x27
    45e8: 94000000     	bl	0x45e8 <aw22xxx_fw_loaded+0x9a4>
		00000000000045e8:  R_AARCH64_CALL26	memcpy
    45ec: f9400260     	ldr	x0, [x19]
    45f0: 11000762     	add	w2, w27, #0x1
    45f4: aa1c03e1     	mov	x1, x28
    45f8: 2a1f03e3     	mov	w3, wzr
    45fc: 94000000     	bl	0x45fc <aw22xxx_fw_loaded+0x9b8>
		00000000000045fc:  R_AARCH64_CALL26	i2c_transfer_buffer_flags
    4600: 36fff7e0     	tbz	w0, #0x1f, 0x44fc <aw22xxx_fw_loaded+0x8b8>
    4604: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004604:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1581
    4608: 91000000     	add	x0, x0, #0x0
		0000000000004608:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1581
    460c: 94000000     	bl	0x460c <aw22xxx_fw_loaded+0x9c8>
		000000000000460c:  R_AARCH64_CALL26	_printk
    4610: 17ffffbb     	b	0x44fc <aw22xxx_fw_loaded+0x8b8>
    4614: f9400bfc     	ldr	x28, [sp, #0x10]
    4618: 1100077a     	add	w26, w27, #0x1
    461c: 52819801     	mov	w1, #0xcc0              // =3264
    4620: aa1a03e0     	mov	x0, x26
    4624: f9402b88     	ldr	x8, [x28, #0x50]
    4628: f90007e8     	str	x8, [sp, #0x8]
    462c: 90000008     	adrp	x8, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000462c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xa0
    4630: 91000108     	add	x8, x8, #0x0
		0000000000004630:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xa0
    4634: f9002b88     	str	x8, [x28, #0x50]
    4638: 94000000     	bl	0x4638 <aw22xxx_fw_loaded+0x9f4>
		0000000000004638:  R_AARCH64_CALL26	__kmalloc_noprof
    463c: f94007e8     	ldr	x8, [sp, #0x8]
    4640: f9002b88     	str	x8, [x28, #0x50]
    4644: b4fff600     	cbz	x0, 0x4504 <aw22xxx_fw_loaded+0x8c0>
    4648: 17ffffd5     	b	0x459c <aw22xxx_fw_loaded+0x958>
    464c: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		000000000000464c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdd
    4650: 91000000     	add	x0, x0, #0x0
		0000000000004650:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdd
    4654: 94000000     	bl	0x4654 <aw22xxx_fw_loaded+0xa10>
		0000000000004654:  R_AARCH64_CALL26	_printk
    4658: 52800068     	mov	w8, #0x3                // =3
    465c: 390bbe68     	strb	w8, [x19, #0x2ef]
    4660: aa1303e0     	mov	x0, x19
    4664: 52800481     	mov	w1, #0x24               // =36
    4668: 2a1f03e2     	mov	w2, wzr
    466c: 97ffee7d     	bl	0x60 <aw22xxx_i2c_write>
    4670: aa1503e0     	mov	x0, x21
    4674: 94000000     	bl	0x4674 <aw22xxx_fw_loaded+0xa30>
		0000000000004674:  R_AARCH64_CALL26	kfree
    4678: aa1303e0     	mov	x0, x19
    467c: 390bba7f     	strb	wzr, [x19, #0x2ee]
    4680: 94000020     	bl	0x4700 <aw22xxx_led_init>
    4684: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004684:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24d
    4688: 91000000     	add	x0, x0, #0x0
		0000000000004688:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24d
    468c: 94000000     	bl	0x468c <aw22xxx_fw_loaded+0xa48>
		000000000000468c:  R_AARCH64_CALL26	_printk
    4690: 90000000     	adrp	x0, 0x4000 <aw22xxx_fw_loaded+0x3bc>
		0000000000004690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x272
    4694: 91000000     	add	x0, x0, #0x0
		0000000000004694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x272
    4698: 94000000     	bl	0x4698 <aw22xxx_fw_loaded+0xa54>
		0000000000004698:  R_AARCH64_CALL26	_printk
    469c: d5384108     	mrs	x8, SP_EL0
    46a0: f9438908     	ldr	x8, [x8, #0x710]
    46a4: f85f83a9     	ldur	x9, [x29, #-0x8]
    46a8: eb09011f     	cmp	x8, x9
    46ac: 54000281     	b.ne	0x46fc <aw22xxx_fw_loaded+0xab8>
    46b0: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    46b4: a94857f6     	ldp	x22, x21, [sp, #0x80]
    46b8: a9475ff8     	ldp	x24, x23, [sp, #0x70]
    46bc: a94667fa     	ldp	x26, x25, [sp, #0x60]
    46c0: a9456ffc     	ldp	x28, x27, [sp, #0x50]
    46c4: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    46c8: 910283ff     	add	sp, sp, #0xa0
    46cc: d50323bf     	autiasp
    46d0: d65f03c0     	ret
    46d4: d4200020     	brk	#0x1
    46d8: 52800220     	mov	w0, #0x11               // =17
    46dc: aa1a03e1     	mov	x1, x26
    46e0: 94000000     	bl	0x46e0 <aw22xxx_fw_loaded+0xa9c>
		00000000000046e0:  R_AARCH64_CALL26	__fortify_panic
    46e4: 52800220     	mov	w0, #0x11               // =17
    46e8: aa1b03e2     	mov	x2, x27
    46ec: 94000000     	bl	0x46ec <aw22xxx_fw_loaded+0xaa8>
		00000000000046ec:  R_AARCH64_CALL26	__fortify_panic
    46f0: 52800200     	mov	w0, #0x10               // =16
    46f4: aa1b03e2     	mov	x2, x27
    46f8: 94000000     	bl	0x46f8 <aw22xxx_fw_loaded+0xab4>
		00000000000046f8:  R_AARCH64_CALL26	__fortify_panic
    46fc: 94000000     	bl	0x46fc <aw22xxx_fw_loaded+0xab8>
		00000000000046fc:  R_AARCH64_CALL26	__stack_chk_fail
