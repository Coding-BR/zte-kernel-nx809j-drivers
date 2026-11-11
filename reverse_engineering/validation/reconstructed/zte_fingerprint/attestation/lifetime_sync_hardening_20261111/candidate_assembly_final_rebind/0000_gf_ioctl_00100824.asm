
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c34 <gf_ioctl>:
     c34: d503233f     	paciasp
     c38: d10143ff     	sub	sp, sp, #0x50
     c3c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c40: f90013f7     	str	x23, [sp, #0x20]
     c44: a90357f6     	stp	x22, x21, [sp, #0x30]
     c48: a9044ff4     	stp	x20, x19, [sp, #0x40]
     c4c: 910043fd     	add	x29, sp, #0x10
     c50: d5384108     	mrs	x8, SP_EL0
     c54: f9438908     	ldr	x8, [x8, #0x710]
     c58: f90007e8     	str	x8, [sp, #0x8]
     c5c: f9401013     	ldr	x19, [x0, #0x20]
     c60: b40002f3     	cbz	x19, 0xcbc <gf_ioctl+0x88>
     c64: 12181c28     	and	w8, w1, #0xff00
     c68: 528ce009     	mov	w9, #0x6700             // =26368
     c6c: 6b09011f     	cmp	w8, w9
     c70: 540002a1     	b.ne	0xcc4 <gf_ioctl+0x90>
     c74: 3941c268     	ldrb	w8, [x19, #0x70]
     c78: 34000ec8     	cbz	w8, 0xe50 <gf_ioctl+0x21c>
     c7c: 528ce1a8     	mov	w8, #0x670d             // =26381
     c80: 72a80088     	movk	w8, #0x4004, lsl #16
     c84: 6b08003f     	cmp	w1, w8
     c88: 5400022d     	b.le	0xccc <gf_ioctl+0x98>
     c8c: 528ce1a8     	mov	w8, #0x670d             // =26381
     c90: 72a80108     	movk	w8, #0x4008, lsl #16
     c94: 6b08003f     	cmp	w1, w8
     c98: 54000a01     	b.ne	0xdd8 <gf_ioctl+0x1a4>
     c9c: 910003e0     	mov	x0, sp
     ca0: aa0203e1     	mov	x1, x2
     ca4: 52800102     	mov	w2, #0x8                // =8
     ca8: f90003ff     	str	xzr, [sp]
     cac: 94000204     	bl	0x14bc <_inline_copy_from_user>
     cb0: b40018a0     	cbz	x0, 0xfc4 <gf_ioctl+0x390>
     cb4: 928001a0     	mov	x0, #-0xe               // =-14
     cb8: 140000d6     	b	0x1010 <gf_ioctl+0x3dc>
     cbc: 928002a0     	mov	x0, #-0x16              // =-22
     cc0: 140000d4     	b	0x1010 <gf_ioctl+0x3dc>
     cc4: 92800300     	mov	x0, #-0x19              // =-25
     cc8: 140000d2     	b	0x1010 <gf_ioctl+0x3dc>
     ccc: 528ce068     	mov	w8, #0x6703             // =26371
     cd0: 6b08003f     	cmp	w1, w8
     cd4: 540002ad     	b.le	0xd28 <gf_ioctl+0xf4>
     cd8: 528ce0e8     	mov	w8, #0x6707             // =26375
     cdc: 6b08003f     	cmp	w1, w8
     ce0: 5400058d     	b.le	0xd90 <gf_ioctl+0x15c>
     ce4: 528ce108     	mov	w8, #0x6708             // =26376
     ce8: 6b08003f     	cmp	w1, w8
     cec: 54001100     	b.eq	0xf0c <gf_ioctl+0x2d8>
     cf0: 528ce148     	mov	w8, #0x670a             // =26378
     cf4: 6b08003f     	cmp	w1, w8
     cf8: 54000fe0     	b.eq	0xef4 <gf_ioctl+0x2c0>
     cfc: 528ce188     	mov	w8, #0x670c             // =26380
     d00: 6b08003f     	cmp	w1, w8
     d04: 540011a1     	b.ne	0xf38 <gf_ioctl+0x304>
     d08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12f8
     d0c: 91000000     	add	x0, x0, #0x0
		0000000000000d0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12f8
     d10: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     d14: 91000021     	add	x1, x1, #0x0
		0000000000000d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     d18: 94000000     	bl	0xd18 <gf_ioctl+0xe4>
		0000000000000d18:  R_AARCH64_CALL26	_printk
     d1c: aa1303e0     	mov	x0, x19
     d20: 94000000     	bl	0xd20 <gf_ioctl+0xec>
		0000000000000d20:  R_AARCH64_CALL26	gf_cleanup
     d24: 140000b9     	b	0x1008 <gf_ioctl+0x3d4>
     d28: 528ce028     	mov	w8, #0x6701             // =26369
     d2c: 6b08003f     	cmp	w1, w8
     d30: 5400016c     	b.gt	0xd5c <gf_ioctl+0x128>
     d34: 528ce008     	mov	w8, #0x6700             // =26368
     d38: 72b00088     	movk	w8, #0x8004, lsl #16
     d3c: 6b08003f     	cmp	w1, w8
     d40: 540009e0     	b.eq	0xe7c <gf_ioctl+0x248>
     d44: 528ce028     	mov	w8, #0x6701             // =26369
     d48: 6b08003f     	cmp	w1, w8
     d4c: 54000f61     	b.ne	0xf38 <gf_ioctl+0x304>
     d50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe98
     d54: 91000000     	add	x0, x0, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe98
     d58: 14000069     	b	0xefc <gf_ioctl+0x2c8>
     d5c: 528ce048     	mov	w8, #0x6702             // =26370
     d60: 6b08003f     	cmp	w1, w8
     d64: 54000a60     	b.eq	0xeb0 <gf_ioctl+0x27c>
     d68: 528ce068     	mov	w8, #0x6703             // =26371
     d6c: 6b08003f     	cmp	w1, w8
     d70: 54000e41     	b.ne	0xf38 <gf_ioctl+0x304>
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x818
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x818
     d7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     d80: 91000021     	add	x1, x1, #0x0
		0000000000000d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     d84: 94000000     	bl	0xd84 <gf_ioctl+0x150>
		0000000000000d84:  R_AARCH64_CALL26	_printk
     d88: 94000109     	bl	0x11ac <gf_enable_irq>
     d8c: 1400009f     	b	0x1008 <gf_ioctl+0x3d4>
     d90: 528ce088     	mov	w8, #0x6704             // =26372
     d94: 6b08003f     	cmp	w1, w8
     d98: 540009e0     	b.eq	0xed4 <gf_ioctl+0x2a0>
     d9c: 528ce0e8     	mov	w8, #0x6707             // =26375
     da0: 6b08003f     	cmp	w1, w8
     da4: 54000ca1     	b.ne	0xf38 <gf_ioctl+0x304>
     da8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee3
     dac: 91000000     	add	x0, x0, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee3
     db0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     db4: 91000021     	add	x1, x1, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     db8: 94000000     	bl	0xdb8 <gf_ioctl+0x184>
		0000000000000db8:  R_AARCH64_CALL26	_printk
     dbc: 3941c268     	ldrb	w8, [x19, #0x70]
     dc0: 35001408     	cbnz	w8, 0x1040 <gf_ioctl+0x40c>
     dc4: aa1303e0     	mov	x0, x19
     dc8: 94000000     	bl	0xdc8 <gf_ioctl+0x194>
		0000000000000dc8:  R_AARCH64_CALL26	gf_power_on
     dcc: 52800028     	mov	w8, #0x1                // =1
     dd0: 3901c268     	strb	w8, [x19, #0x70]
     dd4: 1400008e     	b	0x100c <gf_ioctl+0x3d8>
     dd8: 528ce1c8     	mov	w8, #0x670e             // =26382
     ddc: 72a80088     	movk	w8, #0x4004, lsl #16
     de0: 6b08003f     	cmp	w1, w8
     de4: 54000bc0     	b.eq	0xf5c <gf_ioctl+0x328>
     de8: 528ce128     	mov	w8, #0x6709             // =26377
     dec: 72a80108     	movk	w8, #0x4008, lsl #16
     df0: 6b08003f     	cmp	w1, w8
     df4: 54000a21     	b.ne	0xf38 <gf_ioctl+0x304>
     df8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1222
     dfc: 91000000     	add	x0, x0, #0x0
		0000000000000dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1222
     e00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     e04: 91000021     	add	x1, x1, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     e08: f90003ff     	str	xzr, [sp]
     e0c: aa0203f4     	mov	x20, x2
     e10: 94000000     	bl	0xe10 <gf_ioctl+0x1dc>
		0000000000000e10:  R_AARCH64_CALL26	_printk
     e14: 910003e0     	mov	x0, sp
     e18: aa1403e1     	mov	x1, x20
     e1c: 52800102     	mov	w2, #0x8                // =8
     e20: 940001a7     	bl	0x14bc <_inline_copy_from_user>
     e24: b5fff480     	cbnz	x0, 0xcb4 <gf_ioctl+0x80>
     e28: f94003f4     	ldr	x20, [sp]
     e2c: 7100169f     	cmp	w20, #0x5
     e30: 540012a0     	b.eq	0x1084 <gf_ioctl+0x450>
     e34: 71000a9f     	cmp	w20, #0x2
     e38: 54001220     	b.eq	0x107c <gf_ioctl+0x448>
     e3c: 7100069f     	cmp	w20, #0x1
     e40: 2a1403f5     	mov	w21, w20
     e44: 54001221     	b.ne	0x1088 <gf_ioctl+0x454>
     e48: 52800cd5     	mov	w21, #0x66              // =102
     e4c: 1400008f     	b	0x1088 <gf_ioctl+0x454>
     e50: 128ce108     	mov	w8, #-0x6709            // =-26377
     e54: 0b080028     	add	w8, w1, w8
     e58: 31000d1f     	cmn	w8, #0x3
     e5c: 540009e8     	b.hi	0xf98 <gf_ioctl+0x364>
     e60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc4
     e64: 91000000     	add	x0, x0, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc4
     e68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     e6c: 91000021     	add	x1, x1, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     e70: 94000000     	bl	0xe70 <gf_ioctl+0x23c>
		0000000000000e70:  R_AARCH64_CALL26	_printk
     e74: 92800240     	mov	x0, #-0x13              // =-19
     e78: 14000066     	b	0x1010 <gf_ioctl+0x3dc>
     e7c: 52800328     	mov	w8, #0x19               // =25
     e80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16dd
     e84: 91000000     	add	x0, x0, #0x0
		0000000000000e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16dd
     e88: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     e8c: 91000021     	add	x1, x1, #0x0
		0000000000000e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     e90: 390003e8     	strb	w8, [sp]
     e94: aa0203f3     	mov	x19, x2
     e98: 94000000     	bl	0xe98 <gf_ioctl+0x264>
		0000000000000e98:  R_AARCH64_CALL26	_printk
     e9c: 910003e1     	mov	x1, sp
     ea0: aa1303e0     	mov	x0, x19
     ea4: 9400015b     	bl	0x1410 <_inline_copy_to_user>
     ea8: b5fff060     	cbnz	x0, 0xcb4 <gf_ioctl+0x80>
     eac: 14000058     	b	0x100c <gf_ioctl+0x3d8>
     eb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x228
     eb4: 91000000     	add	x0, x0, #0x0
		0000000000000eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x228
     eb8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     ebc: 91000021     	add	x1, x1, #0x0
		0000000000000ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     ec0: 94000000     	bl	0xec0 <gf_ioctl+0x28c>
		0000000000000ec0:  R_AARCH64_CALL26	_printk
     ec4: aa1303e0     	mov	x0, x19
     ec8: 528000a1     	mov	w1, #0x5                // =5
     ecc: 94000000     	bl	0xecc <gf_ioctl+0x298>
		0000000000000ecc:  R_AARCH64_CALL26	gf_hw_reset
     ed0: 1400004e     	b	0x1008 <gf_ioctl+0x3d4>
     ed4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1202
     ed8: 91000000     	add	x0, x0, #0x0
		0000000000000ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1202
     edc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     ee0: 91000021     	add	x1, x1, #0x0
		0000000000000ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     ee4: 94000000     	bl	0xee4 <gf_ioctl+0x2b0>
		0000000000000ee4:  R_AARCH64_CALL26	_printk
     ee8: aa1303e0     	mov	x0, x19
     eec: 940000c5     	bl	0x1200 <gf_disable_irq>
     ef0: 14000046     	b	0x1008 <gf_ioctl+0x3d4>
     ef4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16fd
     ef8: 91000000     	add	x0, x0, #0x0
		0000000000000ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16fd
     efc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f00: 91000021     	add	x1, x1, #0x0
		0000000000000f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f04: 94000000     	bl	0xf04 <gf_ioctl+0x2d0>
		0000000000000f04:  R_AARCH64_CALL26	_printk
     f08: 14000040     	b	0x1008 <gf_ioctl+0x3d4>
     f0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1155
     f10: 91000000     	add	x0, x0, #0x0
		0000000000000f10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1155
     f14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f18: 91000021     	add	x1, x1, #0x0
		0000000000000f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f1c: 94000000     	bl	0xf1c <gf_ioctl+0x2e8>
		0000000000000f1c:  R_AARCH64_CALL26	_printk
     f20: 3941c268     	ldrb	w8, [x19, #0x70]
     f24: 340009c8     	cbz	w8, 0x105c <gf_ioctl+0x428>
     f28: aa1303e0     	mov	x0, x19
     f2c: 94000000     	bl	0xf2c <gf_ioctl+0x2f8>
		0000000000000f2c:  R_AARCH64_CALL26	gf_power_off
     f30: 3901c27f     	strb	wzr, [x19, #0x70]
     f34: 14000036     	b	0x100c <gf_ioctl+0x3d8>
     f38: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f3c: 91000108     	add	x8, x8, #0x0
		0000000000000f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f
     f44: 91000000     	add	x0, x0, #0x0
		0000000000000f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f
     f48: 2a0103e2     	mov	w2, w1
     f4c: aa0803e1     	mov	x1, x8
     f50: 94000000     	bl	0xf50 <gf_ioctl+0x31c>
		0000000000000f50:  R_AARCH64_CALL26	_printk
     f54: 928002a0     	mov	x0, #-0x16              // =-22
     f58: 1400002e     	b	0x1010 <gf_ioctl+0x3dc>
     f5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa8
     f60: 91000000     	add	x0, x0, #0x0
		0000000000000f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa8
     f64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f68: 91000021     	add	x1, x1, #0x0
		0000000000000f68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f6c: b90003ff     	str	wzr, [sp]
     f70: aa0203f3     	mov	x19, x2
     f74: 94000000     	bl	0xf74 <gf_ioctl+0x340>
		0000000000000f74:  R_AARCH64_CALL26	_printk
     f78: 910003e0     	mov	x0, sp
     f7c: aa1303e1     	mov	x1, x19
     f80: 52800082     	mov	w2, #0x4                // =4
     f84: 9400014e     	bl	0x14bc <_inline_copy_from_user>
     f88: b5ffe960     	cbnz	x0, 0xcb4 <gf_ioctl+0x80>
     f8c: b94003e0     	ldr	w0, [sp]
     f90: 940000ac     	bl	0x1240 <nav_event_input>
     f94: 1400001d     	b	0x1008 <gf_ioctl+0x3d4>
     f98: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f9c: 91000108     	add	x8, x8, #0x0
		0000000000000f9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     fa0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5f
     fa4: 91000000     	add	x0, x0, #0x0
		0000000000000fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5f
     fa8: 2a0103f4     	mov	w20, w1
     fac: aa0803e1     	mov	x1, x8
     fb0: aa0203f5     	mov	x21, x2
     fb4: 94000000     	bl	0xfb4 <gf_ioctl+0x380>
		0000000000000fb4:  R_AARCH64_CALL26	_printk
     fb8: 2a1403e1     	mov	w1, w20
     fbc: aa1503e2     	mov	x2, x21
     fc0: 17ffff2f     	b	0xc7c <gf_ioctl+0x48>
     fc4: 394003e2     	ldrb	w2, [sp]
     fc8: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     fcc: 91000273     	add	x19, x19, #0x0
		0000000000000fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     fd0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1173
     fd4: 91000000     	add	x0, x0, #0x0
		0000000000000fd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1173
     fd8: aa1303e1     	mov	x1, x19
     fdc: 94000000     	bl	0xfdc <gf_ioctl+0x3a8>
		0000000000000fdc:  R_AARCH64_CALL26	_printk
     fe0: 394007e2     	ldrb	w2, [sp, #0x1]
     fe4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1197
     fe8: 91000000     	add	x0, x0, #0x0
		0000000000000fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1197
     fec: aa1303e1     	mov	x1, x19
     ff0: 94000000     	bl	0xff0 <gf_ioctl+0x3bc>
		0000000000000ff0:  R_AARCH64_CALL26	_printk
     ff4: 39400be2     	ldrb	w2, [sp, #0x2]
     ff8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c0
     ffc: 91000000     	add	x0, x0, #0x0
		0000000000000ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c0
    1000: aa1303e1     	mov	x1, x19
    1004: 94000000     	bl	0x1004 <gf_ioctl+0x3d0>
		0000000000001004:  R_AARCH64_CALL26	_printk
    1008: 2a1f03e0     	mov	w0, wzr
    100c: 93407c00     	sxtw	x0, w0
    1010: d5384108     	mrs	x8, SP_EL0
    1014: f9438908     	ldr	x8, [x8, #0x710]
    1018: f94007e9     	ldr	x9, [sp, #0x8]
    101c: eb09011f     	cmp	x8, x9
    1020: 54000961     	b.ne	0x114c <gf_ioctl+0x518>
    1024: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1028: f94013f7     	ldr	x23, [sp, #0x20]
    102c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1030: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1034: 910143ff     	add	sp, sp, #0x50
    1038: d50323bf     	autiasp
    103c: d65f03c0     	ret
    1040: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001040:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8d
    1044: 91000000     	add	x0, x0, #0x0
		0000000000001044:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8d
    1048: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
    104c: 91000021     	add	x1, x1, #0x0
		000000000000104c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
    1050: 94000000     	bl	0x1050 <gf_ioctl+0x41c>
		0000000000001050:  R_AARCH64_CALL26	_printk
    1054: 2a1f03e0     	mov	w0, wzr
    1058: 17ffff5d     	b	0xdcc <gf_ioctl+0x198>
    105c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		000000000000105c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc07
    1060: 91000000     	add	x0, x0, #0x0
		0000000000001060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc07
    1064: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001064:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
    1068: 91000021     	add	x1, x1, #0x0
		0000000000001068:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
    106c: 94000000     	bl	0x106c <gf_ioctl+0x438>
		000000000000106c:  R_AARCH64_CALL26	_printk
    1070: 2a1f03e0     	mov	w0, wzr
    1074: 3901c27f     	strb	wzr, [x19, #0x70]
    1078: 17ffffe5     	b	0x100c <gf_ioctl+0x3d8>
    107c: 52800e95     	mov	w21, #0x74              // =116
    1080: 14000002     	b	0x1088 <gf_ioctl+0x454>
    1084: 52801a95     	mov	w21, #0xd4              // =212
    1088: d360fe97     	lsr	x23, x20, #32
    108c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		000000000000108c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac6
    1090: 91000000     	add	x0, x0, #0x0
		0000000000001090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac6
    1094: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
    1098: 91000021     	add	x1, x1, #0x0
		0000000000001098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
    109c: f10002ff     	cmp	x23, #0x0
    10a0: 2a1403e2     	mov	w2, w20
    10a4: 1a9f07f6     	cset	w22, ne
    10a8: 2a1503e3     	mov	w3, w21
    10ac: 2a1603e4     	mov	w4, w22
    10b0: 94000000     	bl	0x10b0 <gf_ioctl+0x47c>
		00000000000010b0:  R_AARCH64_CALL26	_printk
    10b4: 710352bf     	cmp	w21, #0xd4
    10b8: 54000060     	b.eq	0x10c4 <gf_ioctl+0x490>
    10bc: 7101d2bf     	cmp	w21, #0x74
    10c0: 540002c1     	b.ne	0x1118 <gf_ioctl+0x4e4>
    10c4: b40002b7     	cbz	x23, 0x1118 <gf_ioctl+0x4e4>
    10c8: f9401a60     	ldr	x0, [x19, #0x30]
    10cc: 52800021     	mov	w1, #0x1                // =1
    10d0: 2a1503e2     	mov	w2, w21
    10d4: 52800023     	mov	w3, #0x1                // =1
    10d8: 94000000     	bl	0x10d8 <gf_ioctl+0x4a4>
		00000000000010d8:  R_AARCH64_CALL26	input_event
    10dc: f9401a60     	ldr	x0, [x19, #0x30]
    10e0: 2a1f03e1     	mov	w1, wzr
    10e4: 2a1f03e2     	mov	w2, wzr
    10e8: 2a1f03e3     	mov	w3, wzr
    10ec: 94000000     	bl	0x10ec <gf_ioctl+0x4b8>
		00000000000010ec:  R_AARCH64_CALL26	input_event
    10f0: f9401a60     	ldr	x0, [x19, #0x30]
    10f4: 52800021     	mov	w1, #0x1                // =1
    10f8: 2a1503e2     	mov	w2, w21
    10fc: 2a1f03e3     	mov	w3, wzr
    1100: 94000000     	bl	0x1100 <gf_ioctl+0x4cc>
		0000000000001100:  R_AARCH64_CALL26	input_event
    1104: f9401a60     	ldr	x0, [x19, #0x30]
    1108: 2a1f03e1     	mov	w1, wzr
    110c: 2a1f03e2     	mov	w2, wzr
    1110: 2a1f03e3     	mov	w3, wzr
    1114: 94000000     	bl	0x1114 <gf_ioctl+0x4e0>
		0000000000001114:  R_AARCH64_CALL26	input_event
    1118: 7100069f     	cmp	w20, #0x1
    111c: 54fff761     	b.ne	0x1008 <gf_ioctl+0x3d4>
    1120: 52800021     	mov	w1, #0x1                // =1
    1124: 2a1503e2     	mov	w2, w21
    1128: f9401a60     	ldr	x0, [x19, #0x30]
    112c: 2a1603e3     	mov	w3, w22
    1130: 94000000     	bl	0x1130 <gf_ioctl+0x4fc>
		0000000000001130:  R_AARCH64_CALL26	input_event
    1134: f9401a60     	ldr	x0, [x19, #0x30]
    1138: 2a1f03e1     	mov	w1, wzr
    113c: 2a1f03e2     	mov	w2, wzr
    1140: 2a1f03e3     	mov	w3, wzr
    1144: 94000000     	bl	0x1144 <gf_ioctl+0x510>
		0000000000001144:  R_AARCH64_CALL26	input_event
    1148: 17ffffb0     	b	0x1008 <gf_ioctl+0x3d4>
    114c: 94000000     	bl	0x114c <gf_ioctl+0x518>
		000000000000114c:  R_AARCH64_CALL26	__stack_chk_fail
