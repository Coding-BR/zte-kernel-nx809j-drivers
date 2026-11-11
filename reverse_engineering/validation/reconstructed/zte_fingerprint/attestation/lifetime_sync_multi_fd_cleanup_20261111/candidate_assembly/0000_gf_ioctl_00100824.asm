
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c48 <gf_ioctl>:
     c48: d503233f     	paciasp
     c4c: d10143ff     	sub	sp, sp, #0x50
     c50: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c54: f90013f7     	str	x23, [sp, #0x20]
     c58: a90357f6     	stp	x22, x21, [sp, #0x30]
     c5c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     c60: 910043fd     	add	x29, sp, #0x10
     c64: d5384108     	mrs	x8, SP_EL0
     c68: f9438908     	ldr	x8, [x8, #0x710]
     c6c: f90007e8     	str	x8, [sp, #0x8]
     c70: f9401013     	ldr	x19, [x0, #0x20]
     c74: b40002f3     	cbz	x19, 0xcd0 <gf_ioctl+0x88>
     c78: 12181c28     	and	w8, w1, #0xff00
     c7c: 528ce009     	mov	w9, #0x6700             // =26368
     c80: 6b09011f     	cmp	w8, w9
     c84: 540002a1     	b.ne	0xcd8 <gf_ioctl+0x90>
     c88: 3941c268     	ldrb	w8, [x19, #0x70]
     c8c: 34000ec8     	cbz	w8, 0xe64 <gf_ioctl+0x21c>
     c90: 528ce1a8     	mov	w8, #0x670d             // =26381
     c94: 72a80088     	movk	w8, #0x4004, lsl #16
     c98: 6b08003f     	cmp	w1, w8
     c9c: 5400022d     	b.le	0xce0 <gf_ioctl+0x98>
     ca0: 528ce1a8     	mov	w8, #0x670d             // =26381
     ca4: 72a80108     	movk	w8, #0x4008, lsl #16
     ca8: 6b08003f     	cmp	w1, w8
     cac: 54000a01     	b.ne	0xdec <gf_ioctl+0x1a4>
     cb0: 910003e0     	mov	x0, sp
     cb4: aa0203e1     	mov	x1, x2
     cb8: 52800102     	mov	w2, #0x8                // =8
     cbc: f90003ff     	str	xzr, [sp]
     cc0: 94000204     	bl	0x14d0 <_inline_copy_from_user>
     cc4: b40018a0     	cbz	x0, 0xfd8 <gf_ioctl+0x390>
     cc8: 928001a0     	mov	x0, #-0xe               // =-14
     ccc: 140000d6     	b	0x1024 <gf_ioctl+0x3dc>
     cd0: 928002a0     	mov	x0, #-0x16              // =-22
     cd4: 140000d4     	b	0x1024 <gf_ioctl+0x3dc>
     cd8: 92800300     	mov	x0, #-0x19              // =-25
     cdc: 140000d2     	b	0x1024 <gf_ioctl+0x3dc>
     ce0: 528ce068     	mov	w8, #0x6703             // =26371
     ce4: 6b08003f     	cmp	w1, w8
     ce8: 540002ad     	b.le	0xd3c <gf_ioctl+0xf4>
     cec: 528ce0e8     	mov	w8, #0x6707             // =26375
     cf0: 6b08003f     	cmp	w1, w8
     cf4: 5400058d     	b.le	0xda4 <gf_ioctl+0x15c>
     cf8: 528ce108     	mov	w8, #0x6708             // =26376
     cfc: 6b08003f     	cmp	w1, w8
     d00: 54001100     	b.eq	0xf20 <gf_ioctl+0x2d8>
     d04: 528ce148     	mov	w8, #0x670a             // =26378
     d08: 6b08003f     	cmp	w1, w8
     d0c: 54000fe0     	b.eq	0xf08 <gf_ioctl+0x2c0>
     d10: 528ce188     	mov	w8, #0x670c             // =26380
     d14: 6b08003f     	cmp	w1, w8
     d18: 540011a1     	b.ne	0xf4c <gf_ioctl+0x304>
     d1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12f8
     d20: 91000000     	add	x0, x0, #0x0
		0000000000000d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12f8
     d24: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     d28: 91000021     	add	x1, x1, #0x0
		0000000000000d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     d2c: 94000000     	bl	0xd2c <gf_ioctl+0xe4>
		0000000000000d2c:  R_AARCH64_CALL26	_printk
     d30: aa1303e0     	mov	x0, x19
     d34: 94000000     	bl	0xd34 <gf_ioctl+0xec>
		0000000000000d34:  R_AARCH64_CALL26	gf_cleanup
     d38: 140000b9     	b	0x101c <gf_ioctl+0x3d4>
     d3c: 528ce028     	mov	w8, #0x6701             // =26369
     d40: 6b08003f     	cmp	w1, w8
     d44: 5400016c     	b.gt	0xd70 <gf_ioctl+0x128>
     d48: 528ce008     	mov	w8, #0x6700             // =26368
     d4c: 72b00088     	movk	w8, #0x8004, lsl #16
     d50: 6b08003f     	cmp	w1, w8
     d54: 540009e0     	b.eq	0xe90 <gf_ioctl+0x248>
     d58: 528ce028     	mov	w8, #0x6701             // =26369
     d5c: 6b08003f     	cmp	w1, w8
     d60: 54000f61     	b.ne	0xf4c <gf_ioctl+0x304>
     d64: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe98
     d68: 91000000     	add	x0, x0, #0x0
		0000000000000d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe98
     d6c: 14000069     	b	0xf10 <gf_ioctl+0x2c8>
     d70: 528ce048     	mov	w8, #0x6702             // =26370
     d74: 6b08003f     	cmp	w1, w8
     d78: 54000a60     	b.eq	0xec4 <gf_ioctl+0x27c>
     d7c: 528ce068     	mov	w8, #0x6703             // =26371
     d80: 6b08003f     	cmp	w1, w8
     d84: 54000e41     	b.ne	0xf4c <gf_ioctl+0x304>
     d88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x818
     d8c: 91000000     	add	x0, x0, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x818
     d90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     d94: 91000021     	add	x1, x1, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     d98: 94000000     	bl	0xd98 <gf_ioctl+0x150>
		0000000000000d98:  R_AARCH64_CALL26	_printk
     d9c: 94000109     	bl	0x11c0 <gf_enable_irq>
     da0: 1400009f     	b	0x101c <gf_ioctl+0x3d4>
     da4: 528ce088     	mov	w8, #0x6704             // =26372
     da8: 6b08003f     	cmp	w1, w8
     dac: 540009e0     	b.eq	0xee8 <gf_ioctl+0x2a0>
     db0: 528ce0e8     	mov	w8, #0x6707             // =26375
     db4: 6b08003f     	cmp	w1, w8
     db8: 54000ca1     	b.ne	0xf4c <gf_ioctl+0x304>
     dbc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee3
     dc0: 91000000     	add	x0, x0, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee3
     dc4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     dc8: 91000021     	add	x1, x1, #0x0
		0000000000000dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     dcc: 94000000     	bl	0xdcc <gf_ioctl+0x184>
		0000000000000dcc:  R_AARCH64_CALL26	_printk
     dd0: 3941c268     	ldrb	w8, [x19, #0x70]
     dd4: 35001408     	cbnz	w8, 0x1054 <gf_ioctl+0x40c>
     dd8: aa1303e0     	mov	x0, x19
     ddc: 94000000     	bl	0xddc <gf_ioctl+0x194>
		0000000000000ddc:  R_AARCH64_CALL26	gf_power_on
     de0: 52800028     	mov	w8, #0x1                // =1
     de4: 3901c268     	strb	w8, [x19, #0x70]
     de8: 1400008e     	b	0x1020 <gf_ioctl+0x3d8>
     dec: 528ce1c8     	mov	w8, #0x670e             // =26382
     df0: 72a80088     	movk	w8, #0x4004, lsl #16
     df4: 6b08003f     	cmp	w1, w8
     df8: 54000bc0     	b.eq	0xf70 <gf_ioctl+0x328>
     dfc: 528ce128     	mov	w8, #0x6709             // =26377
     e00: 72a80108     	movk	w8, #0x4008, lsl #16
     e04: 6b08003f     	cmp	w1, w8
     e08: 54000a21     	b.ne	0xf4c <gf_ioctl+0x304>
     e0c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1222
     e10: 91000000     	add	x0, x0, #0x0
		0000000000000e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1222
     e14: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     e18: 91000021     	add	x1, x1, #0x0
		0000000000000e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     e1c: f90003ff     	str	xzr, [sp]
     e20: aa0203f4     	mov	x20, x2
     e24: 94000000     	bl	0xe24 <gf_ioctl+0x1dc>
		0000000000000e24:  R_AARCH64_CALL26	_printk
     e28: 910003e0     	mov	x0, sp
     e2c: aa1403e1     	mov	x1, x20
     e30: 52800102     	mov	w2, #0x8                // =8
     e34: 940001a7     	bl	0x14d0 <_inline_copy_from_user>
     e38: b5fff480     	cbnz	x0, 0xcc8 <gf_ioctl+0x80>
     e3c: f94003f4     	ldr	x20, [sp]
     e40: 7100169f     	cmp	w20, #0x5
     e44: 540012a0     	b.eq	0x1098 <gf_ioctl+0x450>
     e48: 71000a9f     	cmp	w20, #0x2
     e4c: 54001220     	b.eq	0x1090 <gf_ioctl+0x448>
     e50: 7100069f     	cmp	w20, #0x1
     e54: 2a1403f5     	mov	w21, w20
     e58: 54001221     	b.ne	0x109c <gf_ioctl+0x454>
     e5c: 52800cd5     	mov	w21, #0x66              // =102
     e60: 1400008f     	b	0x109c <gf_ioctl+0x454>
     e64: 128ce108     	mov	w8, #-0x6709            // =-26377
     e68: 0b080028     	add	w8, w1, w8
     e6c: 31000d1f     	cmn	w8, #0x3
     e70: 540009e8     	b.hi	0xfac <gf_ioctl+0x364>
     e74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc4
     e78: 91000000     	add	x0, x0, #0x0
		0000000000000e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc4
     e7c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     e80: 91000021     	add	x1, x1, #0x0
		0000000000000e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     e84: 94000000     	bl	0xe84 <gf_ioctl+0x23c>
		0000000000000e84:  R_AARCH64_CALL26	_printk
     e88: 92800240     	mov	x0, #-0x13              // =-19
     e8c: 14000066     	b	0x1024 <gf_ioctl+0x3dc>
     e90: 52800328     	mov	w8, #0x19               // =25
     e94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16dd
     e98: 91000000     	add	x0, x0, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16dd
     e9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     ea0: 91000021     	add	x1, x1, #0x0
		0000000000000ea0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     ea4: 390003e8     	strb	w8, [sp]
     ea8: aa0203f3     	mov	x19, x2
     eac: 94000000     	bl	0xeac <gf_ioctl+0x264>
		0000000000000eac:  R_AARCH64_CALL26	_printk
     eb0: 910003e1     	mov	x1, sp
     eb4: aa1303e0     	mov	x0, x19
     eb8: 9400015b     	bl	0x1424 <_inline_copy_to_user>
     ebc: b5fff060     	cbnz	x0, 0xcc8 <gf_ioctl+0x80>
     ec0: 14000058     	b	0x1020 <gf_ioctl+0x3d8>
     ec4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x228
     ec8: 91000000     	add	x0, x0, #0x0
		0000000000000ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x228
     ecc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     ed0: 91000021     	add	x1, x1, #0x0
		0000000000000ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     ed4: 94000000     	bl	0xed4 <gf_ioctl+0x28c>
		0000000000000ed4:  R_AARCH64_CALL26	_printk
     ed8: aa1303e0     	mov	x0, x19
     edc: 528000a1     	mov	w1, #0x5                // =5
     ee0: 94000000     	bl	0xee0 <gf_ioctl+0x298>
		0000000000000ee0:  R_AARCH64_CALL26	gf_hw_reset
     ee4: 1400004e     	b	0x101c <gf_ioctl+0x3d4>
     ee8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1202
     eec: 91000000     	add	x0, x0, #0x0
		0000000000000eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1202
     ef0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     ef4: 91000021     	add	x1, x1, #0x0
		0000000000000ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     ef8: 94000000     	bl	0xef8 <gf_ioctl+0x2b0>
		0000000000000ef8:  R_AARCH64_CALL26	_printk
     efc: aa1303e0     	mov	x0, x19
     f00: 940000c5     	bl	0x1214 <gf_disable_irq>
     f04: 14000046     	b	0x101c <gf_ioctl+0x3d4>
     f08: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16fd
     f0c: 91000000     	add	x0, x0, #0x0
		0000000000000f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16fd
     f10: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f14: 91000021     	add	x1, x1, #0x0
		0000000000000f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f18: 94000000     	bl	0xf18 <gf_ioctl+0x2d0>
		0000000000000f18:  R_AARCH64_CALL26	_printk
     f1c: 14000040     	b	0x101c <gf_ioctl+0x3d4>
     f20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1155
     f24: 91000000     	add	x0, x0, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1155
     f28: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f2c: 91000021     	add	x1, x1, #0x0
		0000000000000f2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f30: 94000000     	bl	0xf30 <gf_ioctl+0x2e8>
		0000000000000f30:  R_AARCH64_CALL26	_printk
     f34: 3941c268     	ldrb	w8, [x19, #0x70]
     f38: 340009c8     	cbz	w8, 0x1070 <gf_ioctl+0x428>
     f3c: aa1303e0     	mov	x0, x19
     f40: 94000000     	bl	0xf40 <gf_ioctl+0x2f8>
		0000000000000f40:  R_AARCH64_CALL26	gf_power_off
     f44: 3901c27f     	strb	wzr, [x19, #0x70]
     f48: 14000036     	b	0x1020 <gf_ioctl+0x3d8>
     f4c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f50: 91000108     	add	x8, x8, #0x0
		0000000000000f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f
     f58: 91000000     	add	x0, x0, #0x0
		0000000000000f58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f
     f5c: 2a0103e2     	mov	w2, w1
     f60: aa0803e1     	mov	x1, x8
     f64: 94000000     	bl	0xf64 <gf_ioctl+0x31c>
		0000000000000f64:  R_AARCH64_CALL26	_printk
     f68: 928002a0     	mov	x0, #-0x16              // =-22
     f6c: 1400002e     	b	0x1024 <gf_ioctl+0x3dc>
     f70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa8
     f74: 91000000     	add	x0, x0, #0x0
		0000000000000f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa8
     f78: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     f7c: 91000021     	add	x1, x1, #0x0
		0000000000000f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     f80: b90003ff     	str	wzr, [sp]
     f84: aa0203f3     	mov	x19, x2
     f88: 94000000     	bl	0xf88 <gf_ioctl+0x340>
		0000000000000f88:  R_AARCH64_CALL26	_printk
     f8c: 910003e0     	mov	x0, sp
     f90: aa1303e1     	mov	x1, x19
     f94: 52800082     	mov	w2, #0x4                // =4
     f98: 9400014e     	bl	0x14d0 <_inline_copy_from_user>
     f9c: b5ffe960     	cbnz	x0, 0xcc8 <gf_ioctl+0x80>
     fa0: b94003e0     	ldr	w0, [sp]
     fa4: 940000ac     	bl	0x1254 <nav_event_input>
     fa8: 1400001d     	b	0x101c <gf_ioctl+0x3d4>
     fac: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     fb0: 91000108     	add	x8, x8, #0x0
		0000000000000fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     fb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb5f
     fb8: 91000000     	add	x0, x0, #0x0
		0000000000000fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb5f
     fbc: 2a0103f4     	mov	w20, w1
     fc0: aa0803e1     	mov	x1, x8
     fc4: aa0203f5     	mov	x21, x2
     fc8: 94000000     	bl	0xfc8 <gf_ioctl+0x380>
		0000000000000fc8:  R_AARCH64_CALL26	_printk
     fcc: 2a1403e1     	mov	w1, w20
     fd0: aa1503e2     	mov	x2, x21
     fd4: 17ffff2f     	b	0xc90 <gf_ioctl+0x48>
     fd8: 394003e2     	ldrb	w2, [sp]
     fdc: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000fdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
     fe0: 91000273     	add	x19, x19, #0x0
		0000000000000fe0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
     fe4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1173
     fe8: 91000000     	add	x0, x0, #0x0
		0000000000000fe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1173
     fec: aa1303e1     	mov	x1, x19
     ff0: 94000000     	bl	0xff0 <gf_ioctl+0x3a8>
		0000000000000ff0:  R_AARCH64_CALL26	_printk
     ff4: 394007e2     	ldrb	w2, [sp, #0x1]
     ff8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1197
     ffc: 91000000     	add	x0, x0, #0x0
		0000000000000ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1197
    1000: aa1303e1     	mov	x1, x19
    1004: 94000000     	bl	0x1004 <gf_ioctl+0x3bc>
		0000000000001004:  R_AARCH64_CALL26	_printk
    1008: 39400be2     	ldrb	w2, [sp, #0x2]
    100c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		000000000000100c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c0
    1010: 91000000     	add	x0, x0, #0x0
		0000000000001010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c0
    1014: aa1303e1     	mov	x1, x19
    1018: 94000000     	bl	0x1018 <gf_ioctl+0x3d0>
		0000000000001018:  R_AARCH64_CALL26	_printk
    101c: 2a1f03e0     	mov	w0, wzr
    1020: 93407c00     	sxtw	x0, w0
    1024: d5384108     	mrs	x8, SP_EL0
    1028: f9438908     	ldr	x8, [x8, #0x710]
    102c: f94007e9     	ldr	x9, [sp, #0x8]
    1030: eb09011f     	cmp	x8, x9
    1034: 54000961     	b.ne	0x1160 <gf_ioctl+0x518>
    1038: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    103c: f94013f7     	ldr	x23, [sp, #0x20]
    1040: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1044: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1048: 910143ff     	add	sp, sp, #0x50
    104c: d50323bf     	autiasp
    1050: d65f03c0     	ret
    1054: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001054:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb8d
    1058: 91000000     	add	x0, x0, #0x0
		0000000000001058:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb8d
    105c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		000000000000105c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
    1060: 91000021     	add	x1, x1, #0x0
		0000000000001060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
    1064: 94000000     	bl	0x1064 <gf_ioctl+0x41c>
		0000000000001064:  R_AARCH64_CALL26	_printk
    1068: 2a1f03e0     	mov	w0, wzr
    106c: 17ffff5d     	b	0xde0 <gf_ioctl+0x198>
    1070: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc07
    1074: 91000000     	add	x0, x0, #0x0
		0000000000001074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc07
    1078: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001078:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
    107c: 91000021     	add	x1, x1, #0x0
		000000000000107c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
    1080: 94000000     	bl	0x1080 <gf_ioctl+0x438>
		0000000000001080:  R_AARCH64_CALL26	_printk
    1084: 2a1f03e0     	mov	w0, wzr
    1088: 3901c27f     	strb	wzr, [x19, #0x70]
    108c: 17ffffe5     	b	0x1020 <gf_ioctl+0x3d8>
    1090: 52800e95     	mov	w21, #0x74              // =116
    1094: 14000002     	b	0x109c <gf_ioctl+0x454>
    1098: 52801a95     	mov	w21, #0xd4              // =212
    109c: d360fe97     	lsr	x23, x20, #32
    10a0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		00000000000010a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xac6
    10a4: 91000000     	add	x0, x0, #0x0
		00000000000010a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xac6
    10a8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		00000000000010a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ef
    10ac: 91000021     	add	x1, x1, #0x0
		00000000000010ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ef
    10b0: f10002ff     	cmp	x23, #0x0
    10b4: 2a1403e2     	mov	w2, w20
    10b8: 1a9f07f6     	cset	w22, ne
    10bc: 2a1503e3     	mov	w3, w21
    10c0: 2a1603e4     	mov	w4, w22
    10c4: 94000000     	bl	0x10c4 <gf_ioctl+0x47c>
		00000000000010c4:  R_AARCH64_CALL26	_printk
    10c8: 710352bf     	cmp	w21, #0xd4
    10cc: 54000060     	b.eq	0x10d8 <gf_ioctl+0x490>
    10d0: 7101d2bf     	cmp	w21, #0x74
    10d4: 540002c1     	b.ne	0x112c <gf_ioctl+0x4e4>
    10d8: b40002b7     	cbz	x23, 0x112c <gf_ioctl+0x4e4>
    10dc: f9401a60     	ldr	x0, [x19, #0x30]
    10e0: 52800021     	mov	w1, #0x1                // =1
    10e4: 2a1503e2     	mov	w2, w21
    10e8: 52800023     	mov	w3, #0x1                // =1
    10ec: 94000000     	bl	0x10ec <gf_ioctl+0x4a4>
		00000000000010ec:  R_AARCH64_CALL26	input_event
    10f0: f9401a60     	ldr	x0, [x19, #0x30]
    10f4: 2a1f03e1     	mov	w1, wzr
    10f8: 2a1f03e2     	mov	w2, wzr
    10fc: 2a1f03e3     	mov	w3, wzr
    1100: 94000000     	bl	0x1100 <gf_ioctl+0x4b8>
		0000000000001100:  R_AARCH64_CALL26	input_event
    1104: f9401a60     	ldr	x0, [x19, #0x30]
    1108: 52800021     	mov	w1, #0x1                // =1
    110c: 2a1503e2     	mov	w2, w21
    1110: 2a1f03e3     	mov	w3, wzr
    1114: 94000000     	bl	0x1114 <gf_ioctl+0x4cc>
		0000000000001114:  R_AARCH64_CALL26	input_event
    1118: f9401a60     	ldr	x0, [x19, #0x30]
    111c: 2a1f03e1     	mov	w1, wzr
    1120: 2a1f03e2     	mov	w2, wzr
    1124: 2a1f03e3     	mov	w3, wzr
    1128: 94000000     	bl	0x1128 <gf_ioctl+0x4e0>
		0000000000001128:  R_AARCH64_CALL26	input_event
    112c: 7100069f     	cmp	w20, #0x1
    1130: 54fff761     	b.ne	0x101c <gf_ioctl+0x3d4>
    1134: 52800021     	mov	w1, #0x1                // =1
    1138: 2a1503e2     	mov	w2, w21
    113c: f9401a60     	ldr	x0, [x19, #0x30]
    1140: 2a1603e3     	mov	w3, w22
    1144: 94000000     	bl	0x1144 <gf_ioctl+0x4fc>
		0000000000001144:  R_AARCH64_CALL26	input_event
    1148: f9401a60     	ldr	x0, [x19, #0x30]
    114c: 2a1f03e1     	mov	w1, wzr
    1150: 2a1f03e2     	mov	w2, wzr
    1154: 2a1f03e3     	mov	w3, wzr
    1158: 94000000     	bl	0x1158 <gf_ioctl+0x510>
		0000000000001158:  R_AARCH64_CALL26	input_event
    115c: 17ffffb0     	b	0x101c <gf_ioctl+0x3d4>
    1160: 94000000     	bl	0x1160 <gf_ioctl+0x518>
		0000000000001160:  R_AARCH64_CALL26	__stack_chk_fail
