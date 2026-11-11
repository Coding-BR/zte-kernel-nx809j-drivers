
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c14 <gf_ioctl>:
     c14: d503233f     	paciasp
     c18: d10143ff     	sub	sp, sp, #0x50
     c1c: a9017bfd     	stp	x29, x30, [sp, #0x10]
     c20: f90013f7     	str	x23, [sp, #0x20]
     c24: a90357f6     	stp	x22, x21, [sp, #0x30]
     c28: a9044ff4     	stp	x20, x19, [sp, #0x40]
     c2c: 910043fd     	add	x29, sp, #0x10
     c30: d5384108     	mrs	x8, SP_EL0
     c34: f9438908     	ldr	x8, [x8, #0x710]
     c38: f90007e8     	str	x8, [sp, #0x8]
     c3c: f9401013     	ldr	x19, [x0, #0x20]
     c40: b40002f3     	cbz	x19, 0xc9c <gf_ioctl+0x88>
     c44: 12181c28     	and	w8, w1, #0xff00
     c48: 528ce009     	mov	w9, #0x6700             // =26368
     c4c: 6b09011f     	cmp	w8, w9
     c50: 540002a1     	b.ne	0xca4 <gf_ioctl+0x90>
     c54: 3941c268     	ldrb	w8, [x19, #0x70]
     c58: 34000ec8     	cbz	w8, 0xe30 <gf_ioctl+0x21c>
     c5c: 528ce1a8     	mov	w8, #0x670d             // =26381
     c60: 72a80088     	movk	w8, #0x4004, lsl #16
     c64: 6b08003f     	cmp	w1, w8
     c68: 5400022d     	b.le	0xcac <gf_ioctl+0x98>
     c6c: 528ce1a8     	mov	w8, #0x670d             // =26381
     c70: 72a80108     	movk	w8, #0x4008, lsl #16
     c74: 6b08003f     	cmp	w1, w8
     c78: 54000a01     	b.ne	0xdb8 <gf_ioctl+0x1a4>
     c7c: 910003e0     	mov	x0, sp
     c80: aa0203e1     	mov	x1, x2
     c84: 52800102     	mov	w2, #0x8                // =8
     c88: f90003ff     	str	xzr, [sp]
     c8c: 94000204     	bl	0x149c <_inline_copy_from_user>
     c90: b40018a0     	cbz	x0, 0xfa4 <gf_ioctl+0x390>
     c94: 928001a0     	mov	x0, #-0xe               // =-14
     c98: 140000d6     	b	0xff0 <gf_ioctl+0x3dc>
     c9c: 928002a0     	mov	x0, #-0x16              // =-22
     ca0: 140000d4     	b	0xff0 <gf_ioctl+0x3dc>
     ca4: 92800300     	mov	x0, #-0x19              // =-25
     ca8: 140000d2     	b	0xff0 <gf_ioctl+0x3dc>
     cac: 528ce068     	mov	w8, #0x6703             // =26371
     cb0: 6b08003f     	cmp	w1, w8
     cb4: 540002ad     	b.le	0xd08 <gf_ioctl+0xf4>
     cb8: 528ce0e8     	mov	w8, #0x6707             // =26375
     cbc: 6b08003f     	cmp	w1, w8
     cc0: 5400058d     	b.le	0xd70 <gf_ioctl+0x15c>
     cc4: 528ce108     	mov	w8, #0x6708             // =26376
     cc8: 6b08003f     	cmp	w1, w8
     ccc: 54001100     	b.eq	0xeec <gf_ioctl+0x2d8>
     cd0: 528ce148     	mov	w8, #0x670a             // =26378
     cd4: 6b08003f     	cmp	w1, w8
     cd8: 54000fe0     	b.eq	0xed4 <gf_ioctl+0x2c0>
     cdc: 528ce188     	mov	w8, #0x670c             // =26380
     ce0: 6b08003f     	cmp	w1, w8
     ce4: 540011a1     	b.ne	0xf18 <gf_ioctl+0x304>
     ce8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x132a
     cec: 91000000     	add	x0, x0, #0x0
		0000000000000cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x132a
     cf0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     cf4: 91000021     	add	x1, x1, #0x0
		0000000000000cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     cf8: 94000000     	bl	0xcf8 <gf_ioctl+0xe4>
		0000000000000cf8:  R_AARCH64_CALL26	_printk
     cfc: aa1303e0     	mov	x0, x19
     d00: 94000000     	bl	0xd00 <gf_ioctl+0xec>
		0000000000000d00:  R_AARCH64_CALL26	gf_cleanup
     d04: 140000b9     	b	0xfe8 <gf_ioctl+0x3d4>
     d08: 528ce028     	mov	w8, #0x6701             // =26369
     d0c: 6b08003f     	cmp	w1, w8
     d10: 5400016c     	b.gt	0xd3c <gf_ioctl+0x128>
     d14: 528ce008     	mov	w8, #0x6700             // =26368
     d18: 72b00088     	movk	w8, #0x8004, lsl #16
     d1c: 6b08003f     	cmp	w1, w8
     d20: 540009e0     	b.eq	0xe5c <gf_ioctl+0x248>
     d24: 528ce028     	mov	w8, #0x6701             // =26369
     d28: 6b08003f     	cmp	w1, w8
     d2c: 54000f61     	b.ne	0xf18 <gf_ioctl+0x304>
     d30: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeca
     d34: 91000000     	add	x0, x0, #0x0
		0000000000000d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeca
     d38: 14000069     	b	0xedc <gf_ioctl+0x2c8>
     d3c: 528ce048     	mov	w8, #0x6702             // =26370
     d40: 6b08003f     	cmp	w1, w8
     d44: 54000a60     	b.eq	0xe90 <gf_ioctl+0x27c>
     d48: 528ce068     	mov	w8, #0x6703             // =26371
     d4c: 6b08003f     	cmp	w1, w8
     d50: 54000e41     	b.ne	0xf18 <gf_ioctl+0x304>
     d54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x84a
     d58: 91000000     	add	x0, x0, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x84a
     d5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     d60: 91000021     	add	x1, x1, #0x0
		0000000000000d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     d64: 94000000     	bl	0xd64 <gf_ioctl+0x150>
		0000000000000d64:  R_AARCH64_CALL26	_printk
     d68: 94000109     	bl	0x118c <gf_enable_irq>
     d6c: 1400009f     	b	0xfe8 <gf_ioctl+0x3d4>
     d70: 528ce088     	mov	w8, #0x6704             // =26372
     d74: 6b08003f     	cmp	w1, w8
     d78: 540009e0     	b.eq	0xeb4 <gf_ioctl+0x2a0>
     d7c: 528ce0e8     	mov	w8, #0x6707             // =26375
     d80: 6b08003f     	cmp	w1, w8
     d84: 54000ca1     	b.ne	0xf18 <gf_ioctl+0x304>
     d88: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf15
     d8c: 91000000     	add	x0, x0, #0x0
		0000000000000d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf15
     d90: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     d94: 91000021     	add	x1, x1, #0x0
		0000000000000d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     d98: 94000000     	bl	0xd98 <gf_ioctl+0x184>
		0000000000000d98:  R_AARCH64_CALL26	_printk
     d9c: 3941c268     	ldrb	w8, [x19, #0x70]
     da0: 35001408     	cbnz	w8, 0x1020 <gf_ioctl+0x40c>
     da4: aa1303e0     	mov	x0, x19
     da8: 94000000     	bl	0xda8 <gf_ioctl+0x194>
		0000000000000da8:  R_AARCH64_CALL26	gf_power_on
     dac: 52800028     	mov	w8, #0x1                // =1
     db0: 3901c268     	strb	w8, [x19, #0x70]
     db4: 1400008e     	b	0xfec <gf_ioctl+0x3d8>
     db8: 528ce1c8     	mov	w8, #0x670e             // =26382
     dbc: 72a80088     	movk	w8, #0x4004, lsl #16
     dc0: 6b08003f     	cmp	w1, w8
     dc4: 54000bc0     	b.eq	0xf3c <gf_ioctl+0x328>
     dc8: 528ce128     	mov	w8, #0x6709             // =26377
     dcc: 72a80108     	movk	w8, #0x4008, lsl #16
     dd0: 6b08003f     	cmp	w1, w8
     dd4: 54000a21     	b.ne	0xf18 <gf_ioctl+0x304>
     dd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1254
     ddc: 91000000     	add	x0, x0, #0x0
		0000000000000ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1254
     de0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     de4: 91000021     	add	x1, x1, #0x0
		0000000000000de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     de8: f90003ff     	str	xzr, [sp]
     dec: aa0203f4     	mov	x20, x2
     df0: 94000000     	bl	0xdf0 <gf_ioctl+0x1dc>
		0000000000000df0:  R_AARCH64_CALL26	_printk
     df4: 910003e0     	mov	x0, sp
     df8: aa1403e1     	mov	x1, x20
     dfc: 52800102     	mov	w2, #0x8                // =8
     e00: 940001a7     	bl	0x149c <_inline_copy_from_user>
     e04: b5fff480     	cbnz	x0, 0xc94 <gf_ioctl+0x80>
     e08: f94003f4     	ldr	x20, [sp]
     e0c: 7100169f     	cmp	w20, #0x5
     e10: 540012a0     	b.eq	0x1064 <gf_ioctl+0x450>
     e14: 71000a9f     	cmp	w20, #0x2
     e18: 54001220     	b.eq	0x105c <gf_ioctl+0x448>
     e1c: 7100069f     	cmp	w20, #0x1
     e20: 2a1403f5     	mov	w21, w20
     e24: 54001221     	b.ne	0x1068 <gf_ioctl+0x454>
     e28: 52800cd5     	mov	w21, #0x66              // =102
     e2c: 1400008f     	b	0x1068 <gf_ioctl+0x454>
     e30: 128ce108     	mov	w8, #-0x6709            // =-26377
     e34: 0b080028     	add	w8, w1, w8
     e38: 31000d1f     	cmn	w8, #0x3
     e3c: 540009e8     	b.hi	0xf78 <gf_ioctl+0x364>
     e40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xff6
     e44: 91000000     	add	x0, x0, #0x0
		0000000000000e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xff6
     e48: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     e4c: 91000021     	add	x1, x1, #0x0
		0000000000000e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     e50: 94000000     	bl	0xe50 <gf_ioctl+0x23c>
		0000000000000e50:  R_AARCH64_CALL26	_printk
     e54: 92800240     	mov	x0, #-0x13              // =-19
     e58: 14000066     	b	0xff0 <gf_ioctl+0x3dc>
     e5c: 52800328     	mov	w8, #0x19               // =25
     e60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x170f
     e64: 91000000     	add	x0, x0, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x170f
     e68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     e6c: 91000021     	add	x1, x1, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     e70: 390003e8     	strb	w8, [sp]
     e74: aa0203f3     	mov	x19, x2
     e78: 94000000     	bl	0xe78 <gf_ioctl+0x264>
		0000000000000e78:  R_AARCH64_CALL26	_printk
     e7c: 910003e1     	mov	x1, sp
     e80: aa1303e0     	mov	x0, x19
     e84: 9400015b     	bl	0x13f0 <_inline_copy_to_user>
     e88: b5fff060     	cbnz	x0, 0xc94 <gf_ioctl+0x80>
     e8c: 14000058     	b	0xfec <gf_ioctl+0x3d8>
     e90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x25a
     e94: 91000000     	add	x0, x0, #0x0
		0000000000000e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x25a
     e98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     e9c: 91000021     	add	x1, x1, #0x0
		0000000000000e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     ea0: 94000000     	bl	0xea0 <gf_ioctl+0x28c>
		0000000000000ea0:  R_AARCH64_CALL26	_printk
     ea4: aa1303e0     	mov	x0, x19
     ea8: 528000a1     	mov	w1, #0x5                // =5
     eac: 94000000     	bl	0xeac <gf_ioctl+0x298>
		0000000000000eac:  R_AARCH64_CALL26	gf_hw_reset
     eb0: 1400004e     	b	0xfe8 <gf_ioctl+0x3d4>
     eb4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1234
     eb8: 91000000     	add	x0, x0, #0x0
		0000000000000eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1234
     ebc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     ec0: 91000021     	add	x1, x1, #0x0
		0000000000000ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     ec4: 94000000     	bl	0xec4 <gf_ioctl+0x2b0>
		0000000000000ec4:  R_AARCH64_CALL26	_printk
     ec8: aa1303e0     	mov	x0, x19
     ecc: 940000c5     	bl	0x11e0 <gf_disable_irq>
     ed0: 14000046     	b	0xfe8 <gf_ioctl+0x3d4>
     ed4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x172f
     ed8: 91000000     	add	x0, x0, #0x0
		0000000000000ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x172f
     edc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     ee0: 91000021     	add	x1, x1, #0x0
		0000000000000ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     ee4: 94000000     	bl	0xee4 <gf_ioctl+0x2d0>
		0000000000000ee4:  R_AARCH64_CALL26	_printk
     ee8: 14000040     	b	0xfe8 <gf_ioctl+0x3d4>
     eec: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1187
     ef0: 91000000     	add	x0, x0, #0x0
		0000000000000ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1187
     ef4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     ef8: 91000021     	add	x1, x1, #0x0
		0000000000000ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     efc: 94000000     	bl	0xefc <gf_ioctl+0x2e8>
		0000000000000efc:  R_AARCH64_CALL26	_printk
     f00: 3941c268     	ldrb	w8, [x19, #0x70]
     f04: 340009c8     	cbz	w8, 0x103c <gf_ioctl+0x428>
     f08: aa1303e0     	mov	x0, x19
     f0c: 94000000     	bl	0xf0c <gf_ioctl+0x2f8>
		0000000000000f0c:  R_AARCH64_CALL26	gf_power_off
     f10: 3901c27f     	strb	wzr, [x19, #0x70]
     f14: 14000036     	b	0xfec <gf_ioctl+0x3d8>
     f18: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     f1c: 91000108     	add	x8, x8, #0x0
		0000000000000f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     f20: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1
     f24: 91000000     	add	x0, x0, #0x0
		0000000000000f24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1
     f28: 2a0103e2     	mov	w2, w1
     f2c: aa0803e1     	mov	x1, x8
     f30: 94000000     	bl	0xf30 <gf_ioctl+0x31c>
		0000000000000f30:  R_AARCH64_CALL26	_printk
     f34: 928002a0     	mov	x0, #-0x16              // =-22
     f38: 1400002e     	b	0xff0 <gf_ioctl+0x3dc>
     f3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xada
     f40: 91000000     	add	x0, x0, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xada
     f44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     f48: 91000021     	add	x1, x1, #0x0
		0000000000000f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     f4c: b90003ff     	str	wzr, [sp]
     f50: aa0203f3     	mov	x19, x2
     f54: 94000000     	bl	0xf54 <gf_ioctl+0x340>
		0000000000000f54:  R_AARCH64_CALL26	_printk
     f58: 910003e0     	mov	x0, sp
     f5c: aa1303e1     	mov	x1, x19
     f60: 52800082     	mov	w2, #0x4                // =4
     f64: 9400014e     	bl	0x149c <_inline_copy_from_user>
     f68: b5ffe960     	cbnz	x0, 0xc94 <gf_ioctl+0x80>
     f6c: b94003e0     	ldr	w0, [sp]
     f70: 940000ac     	bl	0x1220 <nav_event_input>
     f74: 1400001d     	b	0xfe8 <gf_ioctl+0x3d4>
     f78: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     f7c: 91000108     	add	x8, x8, #0x0
		0000000000000f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     f80: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb91
     f84: 91000000     	add	x0, x0, #0x0
		0000000000000f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb91
     f88: 2a0103f4     	mov	w20, w1
     f8c: aa0803e1     	mov	x1, x8
     f90: aa0203f5     	mov	x21, x2
     f94: 94000000     	bl	0xf94 <gf_ioctl+0x380>
		0000000000000f94:  R_AARCH64_CALL26	_printk
     f98: 2a1403e1     	mov	w1, w20
     f9c: aa1503e2     	mov	x2, x21
     fa0: 17ffff2f     	b	0xc5c <gf_ioctl+0x48>
     fa4: 394003e2     	ldrb	w2, [sp]
     fa8: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000fa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
     fac: 91000273     	add	x19, x19, #0x0
		0000000000000fac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
     fb0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a5
     fb4: 91000000     	add	x0, x0, #0x0
		0000000000000fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a5
     fb8: aa1303e1     	mov	x1, x19
     fbc: 94000000     	bl	0xfbc <gf_ioctl+0x3a8>
		0000000000000fbc:  R_AARCH64_CALL26	_printk
     fc0: 394007e2     	ldrb	w2, [sp, #0x1]
     fc4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11c9
     fc8: 91000000     	add	x0, x0, #0x0
		0000000000000fc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11c9
     fcc: aa1303e1     	mov	x1, x19
     fd0: 94000000     	bl	0xfd0 <gf_ioctl+0x3bc>
		0000000000000fd0:  R_AARCH64_CALL26	_printk
     fd4: 39400be2     	ldrb	w2, [sp, #0x2]
     fd8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9f2
     fdc: 91000000     	add	x0, x0, #0x0
		0000000000000fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9f2
     fe0: aa1303e1     	mov	x1, x19
     fe4: 94000000     	bl	0xfe4 <gf_ioctl+0x3d0>
		0000000000000fe4:  R_AARCH64_CALL26	_printk
     fe8: 2a1f03e0     	mov	w0, wzr
     fec: 93407c00     	sxtw	x0, w0
     ff0: d5384108     	mrs	x8, SP_EL0
     ff4: f9438908     	ldr	x8, [x8, #0x710]
     ff8: f94007e9     	ldr	x9, [sp, #0x8]
     ffc: eb09011f     	cmp	x8, x9
    1000: 54000961     	b.ne	0x112c <gf_ioctl+0x518>
    1004: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1008: f94013f7     	ldr	x23, [sp, #0x20]
    100c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    1010: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    1014: 910143ff     	add	sp, sp, #0x50
    1018: d50323bf     	autiasp
    101c: d65f03c0     	ret
    1020: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001020:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbbf
    1024: 91000000     	add	x0, x0, #0x0
		0000000000001024:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbbf
    1028: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
    102c: 91000021     	add	x1, x1, #0x0
		000000000000102c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
    1030: 94000000     	bl	0x1030 <gf_ioctl+0x41c>
		0000000000001030:  R_AARCH64_CALL26	_printk
    1034: 2a1f03e0     	mov	w0, wzr
    1038: 17ffff5d     	b	0xdac <gf_ioctl+0x198>
    103c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000103c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc39
    1040: 91000000     	add	x0, x0, #0x0
		0000000000001040:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc39
    1044: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001044:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
    1048: 91000021     	add	x1, x1, #0x0
		0000000000001048:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
    104c: 94000000     	bl	0x104c <gf_ioctl+0x438>
		000000000000104c:  R_AARCH64_CALL26	_printk
    1050: 2a1f03e0     	mov	w0, wzr
    1054: 3901c27f     	strb	wzr, [x19, #0x70]
    1058: 17ffffe5     	b	0xfec <gf_ioctl+0x3d8>
    105c: 52800e95     	mov	w21, #0x74              // =116
    1060: 14000002     	b	0x1068 <gf_ioctl+0x454>
    1064: 52801a95     	mov	w21, #0xd4              // =212
    1068: d360fe97     	lsr	x23, x20, #32
    106c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		000000000000106c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf8
    1070: 91000000     	add	x0, x0, #0x0
		0000000000001070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf8
    1074: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1321
    1078: 91000021     	add	x1, x1, #0x0
		0000000000001078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1321
    107c: f10002ff     	cmp	x23, #0x0
    1080: 2a1403e2     	mov	w2, w20
    1084: 1a9f07f6     	cset	w22, ne
    1088: 2a1503e3     	mov	w3, w21
    108c: 2a1603e4     	mov	w4, w22
    1090: 94000000     	bl	0x1090 <gf_ioctl+0x47c>
		0000000000001090:  R_AARCH64_CALL26	_printk
    1094: 710352bf     	cmp	w21, #0xd4
    1098: 54000060     	b.eq	0x10a4 <gf_ioctl+0x490>
    109c: 7101d2bf     	cmp	w21, #0x74
    10a0: 540002c1     	b.ne	0x10f8 <gf_ioctl+0x4e4>
    10a4: b40002b7     	cbz	x23, 0x10f8 <gf_ioctl+0x4e4>
    10a8: f9401a60     	ldr	x0, [x19, #0x30]
    10ac: 52800021     	mov	w1, #0x1                // =1
    10b0: 2a1503e2     	mov	w2, w21
    10b4: 52800023     	mov	w3, #0x1                // =1
    10b8: 94000000     	bl	0x10b8 <gf_ioctl+0x4a4>
		00000000000010b8:  R_AARCH64_CALL26	input_event
    10bc: f9401a60     	ldr	x0, [x19, #0x30]
    10c0: 2a1f03e1     	mov	w1, wzr
    10c4: 2a1f03e2     	mov	w2, wzr
    10c8: 2a1f03e3     	mov	w3, wzr
    10cc: 94000000     	bl	0x10cc <gf_ioctl+0x4b8>
		00000000000010cc:  R_AARCH64_CALL26	input_event
    10d0: f9401a60     	ldr	x0, [x19, #0x30]
    10d4: 52800021     	mov	w1, #0x1                // =1
    10d8: 2a1503e2     	mov	w2, w21
    10dc: 2a1f03e3     	mov	w3, wzr
    10e0: 94000000     	bl	0x10e0 <gf_ioctl+0x4cc>
		00000000000010e0:  R_AARCH64_CALL26	input_event
    10e4: f9401a60     	ldr	x0, [x19, #0x30]
    10e8: 2a1f03e1     	mov	w1, wzr
    10ec: 2a1f03e2     	mov	w2, wzr
    10f0: 2a1f03e3     	mov	w3, wzr
    10f4: 94000000     	bl	0x10f4 <gf_ioctl+0x4e0>
		00000000000010f4:  R_AARCH64_CALL26	input_event
    10f8: 7100069f     	cmp	w20, #0x1
    10fc: 54fff761     	b.ne	0xfe8 <gf_ioctl+0x3d4>
    1100: 52800021     	mov	w1, #0x1                // =1
    1104: 2a1503e2     	mov	w2, w21
    1108: f9401a60     	ldr	x0, [x19, #0x30]
    110c: 2a1603e3     	mov	w3, w22
    1110: 94000000     	bl	0x1110 <gf_ioctl+0x4fc>
		0000000000001110:  R_AARCH64_CALL26	input_event
    1114: f9401a60     	ldr	x0, [x19, #0x30]
    1118: 2a1f03e1     	mov	w1, wzr
    111c: 2a1f03e2     	mov	w2, wzr
    1120: 2a1f03e3     	mov	w3, wzr
    1124: 94000000     	bl	0x1124 <gf_ioctl+0x510>
		0000000000001124:  R_AARCH64_CALL26	input_event
    1128: 17ffffb0     	b	0xfe8 <gf_ioctl+0x3d4>
    112c: 94000000     	bl	0x112c <gf_ioctl+0x518>
		000000000000112c:  R_AARCH64_CALL26	__stack_chk_fail
