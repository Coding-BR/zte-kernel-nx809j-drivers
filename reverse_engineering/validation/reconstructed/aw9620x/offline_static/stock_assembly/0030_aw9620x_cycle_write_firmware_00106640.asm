
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004dc0 <aw9620x_cycle_write_firmware>:
    4dc0: d503233f     	paciasp
    4dc4: d10243ff     	sub	sp, sp, #0x90
    4dc8: a9037bfd     	stp	x29, x30, [sp, #0x30]
    4dcc: a9046ffc     	stp	x28, x27, [sp, #0x40]
    4dd0: a90567fa     	stp	x26, x25, [sp, #0x50]
    4dd4: a9065ff8     	stp	x24, x23, [sp, #0x60]
    4dd8: a90757f6     	stp	x22, x21, [sp, #0x70]
    4ddc: a9084ff4     	stp	x20, x19, [sp, #0x80]
    4de0: 9100c3fd     	add	x29, sp, #0x30
    4de4: f9401808     	ldr	x8, [x0, #0x30]
    4de8: 2a0203f4     	mov	w20, w2
    4dec: aa0003f3     	mov	x19, x0
    4df0: f81f83a1     	stur	x1, [x29, #-0x8]
    4df4: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    4df8: 91000000     	add	x0, x0, #0x0
		0000000000004df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    4dfc: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebd
    4e00: 91000042     	add	x2, x2, #0x0
		0000000000004e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebd
    4e04: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    4e08: 91000063     	add	x3, x3, #0x0
		0000000000004e08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    4e0c: aa0803e1     	mov	x1, x8
    4e10: 528102a4     	mov	w4, #0x815              // =2069
    4e14: 94000000     	bl	0x4e14 <aw9620x_cycle_write_firmware+0x54>
		0000000000004e14:  R_AARCH64_CALL26	_dev_printk
    4e18: 72000688     	ands	w8, w20, #0x3
    4e1c: 54000061     	b.ne	0x4e28 <aw9620x_cycle_write_firmware+0x68>
    4e20: 2a1f03f5     	mov	w21, wzr
    4e24: 1400000d     	b	0x4e58 <aw9620x_cycle_write_firmware+0x98>
    4e28: 52800089     	mov	w9, #0x4                // =4
    4e2c: f9401a61     	ldr	x1, [x19, #0x30]
    4e30: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    4e34: 91000000     	add	x0, x0, #0x0
		0000000000004e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    4e38: 4b080135     	sub	w21, w9, w8
    4e3c: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x154a
    4e40: 91000042     	add	x2, x2, #0x0
		0000000000004e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x154a
    4e44: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    4e48: 91000063     	add	x3, x3, #0x0
		0000000000004e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    4e4c: 52810324     	mov	w4, #0x819              // =2073
    4e50: 2a1503e5     	mov	w5, w21
    4e54: 94000000     	bl	0x4e54 <aw9620x_cycle_write_firmware+0x94>
		0000000000004e54:  R_AARCH64_CALL26	_dev_printk
    4e58: 0b1402b6     	add	w22, w21, w20
    4e5c: 528820a9     	mov	w9, #0x4105             // =16645
    4e60: f9401a61     	ldr	x1, [x19, #0x30]
    4e64: 53067ec8     	lsr	w8, w22, #6
    4e68: 72a08209     	movk	w9, #0x410, lsl #16
    4e6c: 110022d7     	add	w23, w22, #0x8
    4e70: 90000000     	adrp	x0, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    4e74: 91000000     	add	x0, x0, #0x0
		0000000000004e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    4e78: 90000002     	adrp	x2, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3842
    4e7c: 91000042     	add	x2, x2, #0x0
		0000000000004e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3842
    4e80: 9ba97d08     	umull	x8, w8, w9
    4e84: 90000003     	adrp	x3, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    4e88: 91000063     	add	x3, x3, #0x0
		0000000000004e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    4e8c: 52810444     	mov	w4, #0x822              // =2082
    4e90: 2a1603e5     	mov	w5, w22
    4e94: b90003f7     	str	w23, [sp]
    4e98: d360fd06     	lsr	x6, x8, #32
    4e9c: 5281f808     	mov	w8, #0xfc0              // =4032
    4ea0: 1b08d8d5     	msub	w21, w6, w8, w22
    4ea4: f9000be6     	str	x6, [sp, #0x10]
    4ea8: 2a1503e7     	mov	w7, w21
    4eac: 94000000     	bl	0x4eac <aw9620x_cycle_write_firmware+0xec>
		0000000000004eac:  R_AARCH64_CALL26	_dev_printk
    4eb0: d503201f     	nop
    4eb4: aa1703e0     	mov	x0, x23
    4eb8: 5281b801     	mov	w1, #0xdc0              // =3520
    4ebc: 94000000     	bl	0x4ebc <aw9620x_cycle_write_firmware+0xfc>
		0000000000004ebc:  R_AARCH64_CALL26	__kmalloc_noprof
    4ec0: aa0003f4     	mov	x20, x0
    4ec4: b4002794     	cbz	x20, 0x53b4 <aw9620x_cycle_write_firmware+0x5f4>
    4ec8: eb1702ff     	cmp	x23, x23
    4ecc: 54002503     	b.lo	0x536c <aw9620x_cycle_write_firmware+0x5ac>
    4ed0: 52840018     	mov	w24, #0x2000            // =8192
    4ed4: aa1403e0     	mov	x0, x20
    4ed8: 52800021     	mov	w1, #0x1                // =1
    4edc: aa1703e2     	mov	x2, x23
    4ee0: 72a20018     	movk	w24, #0x1000, lsl #16
    4ee4: 5280003b     	mov	w27, #0x1               // =1
    4ee8: 94000000     	bl	0x4ee8 <aw9620x_cycle_write_firmware+0x128>
		0000000000004ee8:  R_AARCH64_CALL26	memset
    4eec: 713f02df     	cmp	w22, #0xfc0
    4ef0: 54000ee3     	b.lo	0x50cc <aw9620x_cycle_write_firmware+0x30c>
    4ef4: f10022e8     	subs	x8, x23, #0x8
    4ef8: aa1f03fa     	mov	x26, xzr
    4efc: 9000001c     	adrp	x28, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    4f00: 9100039c     	add	x28, x28, #0x0
		0000000000004f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    4f04: 9a8833e8     	csel	x8, xzr, x8, lo
    4f08: 90000016     	adrp	x22, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    4f0c: 910002d6     	add	x22, x22, #0x0
		0000000000004f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    4f10: f81f03a8     	stur	x8, [x29, #-0x10]
    4f14: f9400be8     	ldr	x8, [sp, #0x10]
    4f18: 90000019     	adrp	x25, 0x4000 <aw9620x_load_frimware_work+0x380>
		0000000000004f18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2732
    4f1c: 91000339     	add	x25, x25, #0x0
		0000000000004f1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2732
    4f20: 7100051f     	cmp	w8, #0x1
    4f24: 1a9f8508     	csinc	w8, w8, wzr, hi
    4f28: f9000fe8     	str	x8, [sp, #0x18]
    4f2c: b4002177     	cbz	x23, 0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f30: 53187f66     	lsr	w6, w27, #24
    4f34: f10006ff     	cmp	x23, #0x1
    4f38: 39000286     	strb	w6, [x20]
    4f3c: 540020e0     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f40: 53107f68     	lsr	w8, w27, #16
    4f44: f1000aff     	cmp	x23, #0x2
    4f48: 39000688     	strb	w8, [x20, #0x1]
    4f4c: 54002060     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f50: 53087f68     	lsr	w8, w27, #8
    4f54: f10012ff     	cmp	x23, #0x4
    4f58: 39000a88     	strb	w8, [x20, #0x2]
    4f5c: 54001fe3     	b.lo	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f60: 39000e9b     	strb	w27, [x20, #0x3]
    4f64: 54001fa0     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f68: 53187f08     	lsr	w8, w24, #24
    4f6c: f10016ff     	cmp	x23, #0x5
    4f70: 39001288     	strb	w8, [x20, #0x4]
    4f74: 54001f20     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f78: 53107f08     	lsr	w8, w24, #16
    4f7c: f1001eff     	cmp	x23, #0x7
    4f80: 39001688     	strb	w8, [x20, #0x5]
    4f84: 54001ea3     	b.lo	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f88: 53087f08     	lsr	w8, w24, #8
    4f8c: 39001a88     	strb	w8, [x20, #0x6]
    4f90: 54001e40     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    4f94: f9401a61     	ldr	x1, [x19, #0x30]
    4f98: 53105f67     	ubfx	w7, w27, #16, #8
    4f9c: 53083f68     	ubfx	w8, w27, #8, #8
    4fa0: 12001f69     	and	w9, w27, #0xff
    4fa4: aa1c03e0     	mov	x0, x28
    4fa8: aa1903e2     	mov	x2, x25
    4fac: aa1603e3     	mov	x3, x22
    4fb0: 52810784     	mov	w4, #0x83c              // =2108
    4fb4: 2a1a03e5     	mov	w5, w26
    4fb8: 39001e98     	strb	w24, [x20, #0x7]
    4fbc: b9000be9     	str	w9, [sp, #0x8]
    4fc0: b90003e8     	str	w8, [sp]
    4fc4: 94000000     	bl	0x4fc4 <aw9620x_cycle_write_firmware+0x204>
		0000000000004fc4:  R_AARCH64_CALL26	_dev_printk
    4fc8: f9401a61     	ldr	x1, [x19, #0x30]
    4fcc: 39401286     	ldrb	w6, [x20, #0x4]
    4fd0: aa1c03e0     	mov	x0, x28
    4fd4: 39401687     	ldrb	w7, [x20, #0x5]
    4fd8: 39401a88     	ldrb	w8, [x20, #0x6]
    4fdc: aa1903e2     	mov	x2, x25
    4fe0: 39401e89     	ldrb	w9, [x20, #0x7]
    4fe4: aa1603e3     	mov	x3, x22
    4fe8: 52810784     	mov	w4, #0x83c              // =2108
    4fec: 2a1a03e5     	mov	w5, w26
    4ff0: b90003e8     	str	w8, [sp]
    4ff4: b9000be9     	str	w9, [sp, #0x8]
    4ff8: 94000000     	bl	0x4ff8 <aw9620x_cycle_write_firmware+0x238>
		0000000000004ff8:  R_AARCH64_CALL26	_dev_printk
    4ffc: f9401a61     	ldr	x1, [x19, #0x30]
    5000: aa1c03e0     	mov	x0, x28
    5004: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cd1
    5008: 91000042     	add	x2, x2, #0x0
		0000000000005008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cd1
    500c: aa1603e3     	mov	x3, x22
    5010: 528107e4     	mov	w4, #0x83f              // =2111
    5014: 5281f805     	mov	w5, #0xfc0              // =4032
    5018: 94000000     	bl	0x5018 <aw9620x_cycle_write_firmware+0x258>
		0000000000005018:  R_AARCH64_CALL26	_dev_printk
    501c: f85f03a8     	ldur	x8, [x29, #-0x10]
    5020: f13efd1f     	cmp	x8, #0xfbf
    5024: 540019c9     	b.ls	0x535c <aw9620x_cycle_write_firmware+0x59c>
    5028: 5281f809     	mov	w9, #0xfc0              // =4032
    502c: f85f83a8     	ldur	x8, [x29, #-0x8]
    5030: 91002280     	add	x0, x20, #0x8
    5034: 9b092341     	madd	x1, x26, x9, x8
    5038: 5281f802     	mov	w2, #0xfc0              // =4032
    503c: 94000000     	bl	0x503c <aw9620x_cycle_write_firmware+0x27c>
		000000000000503c:  R_AARCH64_CALL26	memcpy
    5040: 52800168     	mov	w8, #0xb                // =11
    5044: d1000d09     	sub	x9, x8, #0x3
    5048: eb0902ff     	cmp	x23, x9
    504c: 54001869     	b.ls	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5050: eb0802ff     	cmp	x23, x8
    5054: 54001829     	b.ls	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5058: 8b080289     	add	x9, x20, x8
    505c: 8b08028a     	add	x10, x20, x8
    5060: 3940012b     	ldrb	w11, [x9]
    5064: 385fd14c     	ldurb	w12, [x10, #-0x3]
    5068: 385ff12d     	ldurb	w13, [x9, #-0x1]
    506c: 381fd14b     	sturb	w11, [x10, #-0x3]
    5070: d1002d0a     	sub	x10, x8, #0xb
    5074: 385fe12b     	ldurb	w11, [x9, #-0x2]
    5078: 91001108     	add	x8, x8, #0x4
    507c: f13ef15f     	cmp	x10, #0xfbc
    5080: 3900012c     	strb	w12, [x9]
    5084: 381fe12d     	sturb	w13, [x9, #-0x2]
    5088: 381ff12b     	sturb	w11, [x9, #-0x1]
    508c: 54fffdc3     	b.lo	0x5044 <aw9620x_cycle_write_firmware+0x284>
    5090: f1000b5f     	cmp	x26, #0x2
    5094: 540012e0     	b.eq	0x52f0 <aw9620x_cycle_write_firmware+0x530>
    5098: aa1303e0     	mov	x0, x19
    509c: 52800021     	mov	w1, #0x1                // =1
    50a0: 52800042     	mov	w2, #0x2                // =2
    50a4: aa1403e3     	mov	x3, x20
    50a8: 5281f904     	mov	w4, #0xfc8              // =4040
    50ac: 97fffec8     	bl	0x4bcc <aw9620x_send_once_cmd>
    50b0: 350013a0     	cbnz	w0, 0x5324 <aw9620x_cycle_write_firmware+0x564>
    50b4: f9400fe8     	ldr	x8, [sp, #0x18]
    50b8: 9100075a     	add	x26, x26, #0x1
    50bc: 113f0318     	add	w24, w24, #0xfc0
    50c0: 1100077b     	add	w27, w27, #0x1
    50c4: eb08035f     	cmp	x26, x8
    50c8: 54fff321     	b.ne	0x4f2c <aw9620x_cycle_write_firmware+0x16c>
    50cc: 350001b5     	cbnz	w21, 0x5100 <aw9620x_cycle_write_firmware+0x340>
    50d0: aa1403e0     	mov	x0, x20
    50d4: 94000000     	bl	0x50d4 <aw9620x_cycle_write_firmware+0x314>
		00000000000050d4:  R_AARCH64_CALL26	kfree
    50d8: 2a1f03e0     	mov	w0, wzr
    50dc: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    50e0: a94757f6     	ldp	x22, x21, [sp, #0x70]
    50e4: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    50e8: a94567fa     	ldp	x26, x25, [sp, #0x50]
    50ec: a9446ffc     	ldp	x28, x27, [sp, #0x40]
    50f0: a9437bfd     	ldp	x29, x30, [sp, #0x30]
    50f4: 910243ff     	add	sp, sp, #0x90
    50f8: d50323bf     	autiasp
    50fc: d65f03c0     	ret
    5100: b40012d7     	cbz	x23, 0x5358 <aw9620x_cycle_write_firmware+0x598>
    5104: 53187f66     	lsr	w6, w27, #24
    5108: f10006ff     	cmp	x23, #0x1
    510c: 39000286     	strb	w6, [x20]
    5110: 54001240     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5114: 53107f68     	lsr	w8, w27, #16
    5118: f1000aff     	cmp	x23, #0x2
    511c: 39000688     	strb	w8, [x20, #0x1]
    5120: 540011c0     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5124: 53087f68     	lsr	w8, w27, #8
    5128: f10012ff     	cmp	x23, #0x4
    512c: 39000a88     	strb	w8, [x20, #0x2]
    5130: 54001143     	b.lo	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5134: 39000e9b     	strb	w27, [x20, #0x3]
    5138: 54001100     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    513c: 53187f08     	lsr	w8, w24, #24
    5140: f10016ff     	cmp	x23, #0x5
    5144: 39001288     	strb	w8, [x20, #0x4]
    5148: 54001080     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    514c: 53107f08     	lsr	w8, w24, #16
    5150: f1001eff     	cmp	x23, #0x7
    5154: 39001688     	strb	w8, [x20, #0x5]
    5158: 54001003     	b.lo	0x5358 <aw9620x_cycle_write_firmware+0x598>
    515c: 53087f08     	lsr	w8, w24, #8
    5160: 39001a88     	strb	w8, [x20, #0x6]
    5164: 54000fa0     	b.eq	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5168: f9401a61     	ldr	x1, [x19, #0x30]
    516c: 53105f67     	ubfx	w7, w27, #16, #8
    5170: 53083f68     	ubfx	w8, w27, #8, #8
    5174: 12001f69     	and	w9, w27, #0xff
    5178: 90000016     	adrp	x22, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005178:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    517c: 910002d6     	add	x22, x22, #0x0
		000000000000517c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    5180: 9000001a     	adrp	x26, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3ad7
    5184: 9100035a     	add	x26, x26, #0x0
		0000000000005184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3ad7
    5188: 9000001b     	adrp	x27, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    518c: 9100037b     	add	x27, x27, #0x0
		000000000000518c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    5190: aa1603e0     	mov	x0, x22
    5194: aa1a03e2     	mov	x2, x26
    5198: aa1b03e3     	mov	x3, x27
    519c: 52810ca4     	mov	w4, #0x865              // =2149
    51a0: 2a1503e5     	mov	w5, w21
    51a4: 39001e98     	strb	w24, [x20, #0x7]
    51a8: b9000be9     	str	w9, [sp, #0x8]
    51ac: b90003e8     	str	w8, [sp]
    51b0: 94000000     	bl	0x51b0 <aw9620x_cycle_write_firmware+0x3f0>
		00000000000051b0:  R_AARCH64_CALL26	_dev_printk
    51b4: f9401a61     	ldr	x1, [x19, #0x30]
    51b8: 39401286     	ldrb	w6, [x20, #0x4]
    51bc: aa1603e0     	mov	x0, x22
    51c0: 39401687     	ldrb	w7, [x20, #0x5]
    51c4: 39401a88     	ldrb	w8, [x20, #0x6]
    51c8: aa1a03e2     	mov	x2, x26
    51cc: 39401e89     	ldrb	w9, [x20, #0x7]
    51d0: aa1b03e3     	mov	x3, x27
    51d4: 52810ca4     	mov	w4, #0x865              // =2149
    51d8: 2a1503e5     	mov	w5, w21
    51dc: b90003e8     	str	w8, [sp]
    51e0: b9000be9     	str	w9, [sp, #0x8]
    51e4: 94000000     	bl	0x51e4 <aw9620x_cycle_write_firmware+0x424>
		00000000000051e4:  R_AARCH64_CALL26	_dev_printk
    51e8: f10022e8     	subs	x8, x23, #0x8
    51ec: 9a8833e1     	csel	x1, xzr, x8, lo
    51f0: eb15003f     	cmp	x1, x21
    51f4: 54000c43     	b.lo	0x537c <aw9620x_cycle_write_firmware+0x5bc>
    51f8: f9400be9     	ldr	x9, [sp, #0x10]
    51fc: 91002280     	add	x0, x20, #0x8
    5200: aa1503e2     	mov	x2, x21
    5204: 53144d28     	lsl	w8, w9, #12
    5208: 4b091908     	sub	w8, w8, w9, lsl #6
    520c: f85f83a9     	ldur	x9, [x29, #-0x8]
    5210: 8b080121     	add	x1, x9, x8
    5214: 94000000     	bl	0x5214 <aw9620x_cycle_write_firmware+0x454>
		0000000000005214:  R_AARCH64_CALL26	memcpy
    5218: 52800168     	mov	w8, #0xb                // =11
    521c: d1000d09     	sub	x9, x8, #0x3
    5220: eb0902ff     	cmp	x23, x9
    5224: 540009a9     	b.ls	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5228: eb0802ff     	cmp	x23, x8
    522c: 54000969     	b.ls	0x5358 <aw9620x_cycle_write_firmware+0x598>
    5230: 8b080289     	add	x9, x20, x8
    5234: 8b08028a     	add	x10, x20, x8
    5238: 3940012b     	ldrb	w11, [x9]
    523c: 385fd14c     	ldurb	w12, [x10, #-0x3]
    5240: 385ff12d     	ldurb	w13, [x9, #-0x1]
    5244: 381fd14b     	sturb	w11, [x10, #-0x3]
    5248: d1001d0a     	sub	x10, x8, #0x7
    524c: 385fe12b     	ldurb	w11, [x9, #-0x2]
    5250: 91001108     	add	x8, x8, #0x4
    5254: eb15015f     	cmp	x10, x21
    5258: 3900012c     	strb	w12, [x9]
    525c: 381fe12d     	sturb	w13, [x9, #-0x2]
    5260: 381ff12b     	sturb	w11, [x9, #-0x1]
    5264: 54fffdc3     	b.lo	0x521c <aw9620x_cycle_write_firmware+0x45c>
    5268: 5287f008     	mov	w8, #0x3f80             // =16256
    526c: 0b150309     	add	w9, w24, w21
    5270: 72a20008     	movk	w8, #0x1000, lsl #16
    5274: 32001908     	orr	w8, w8, #0x7f
    5278: 6b08013f     	cmp	w9, w8
    527c: 54000228     	b.hi	0x52c0 <aw9620x_cycle_write_firmware+0x500>
    5280: 110022a4     	add	w4, w21, #0x8
    5284: aa1303e0     	mov	x0, x19
    5288: 52800021     	mov	w1, #0x1                // =1
    528c: 52800042     	mov	w2, #0x2                // =2
    5290: aa1403e3     	mov	x3, x20
    5294: 97fffe4e     	bl	0x4bcc <aw9620x_send_once_cmd>
    5298: 34fff1c0     	cbz	w0, 0x50d0 <aw9620x_cycle_write_firmware+0x310>
    529c: f9401a61     	ldr	x1, [x19, #0x30]
    52a0: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2c9b
    52a4: 91000000     	add	x0, x0, #0x0
		00000000000052a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2c9b
    52a8: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39a
    52ac: 91000042     	add	x2, x2, #0x0
		00000000000052ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39a
    52b0: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    52b4: 91000063     	add	x3, x3, #0x0
		00000000000052b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    52b8: 52810ec4     	mov	w4, #0x876              // =2166
    52bc: 14000022     	b	0x5344 <aw9620x_cycle_write_firmware+0x584>
    52c0: f9401a61     	ldr	x1, [x19, #0x30]
    52c4: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    52c8: 91000000     	add	x0, x0, #0x0
		00000000000052c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    52cc: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a8
    52d0: 91000042     	add	x2, x2, #0x0
		00000000000052d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a8
    52d4: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    52d8: 91000063     	add	x3, x3, #0x0
		00000000000052d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    52dc: 52810de4     	mov	w4, #0x86f              // =2159
    52e0: 2a1803e5     	mov	w5, w24
    52e4: 2a1503e6     	mov	w6, w21
    52e8: 94000000     	bl	0x52e8 <aw9620x_cycle_write_firmware+0x528>
		00000000000052e8:  R_AARCH64_CALL26	_dev_printk
    52ec: 14000017     	b	0x5348 <aw9620x_cycle_write_firmware+0x588>
    52f0: f9401a61     	ldr	x1, [x19, #0x30]
    52f4: 5287f005     	mov	w5, #0x3f80             // =16256
    52f8: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000052f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    52fc: 91000000     	add	x0, x0, #0x0
		00000000000052fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5300: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a8
    5304: 91000042     	add	x2, x2, #0x0
		0000000000005304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a8
    5308: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005308:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    530c: 91000063     	add	x3, x3, #0x0
		000000000000530c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    5310: 528108e4     	mov	w4, #0x847              // =2119
    5314: 72a20005     	movk	w5, #0x1000, lsl #16
    5318: 5281f806     	mov	w6, #0xfc0              // =4032
    531c: 94000000     	bl	0x531c <aw9620x_cycle_write_firmware+0x55c>
		000000000000531c:  R_AARCH64_CALL26	_dev_printk
    5320: 1400000a     	b	0x5348 <aw9620x_cycle_write_firmware+0x588>
    5324: f9401a61     	ldr	x1, [x19, #0x30]
    5328: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005328:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    532c: 91000000     	add	x0, x0, #0x0
		000000000000532c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    5330: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39a
    5334: 91000042     	add	x2, x2, #0x0
		0000000000005334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39a
    5338: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    533c: 91000063     	add	x3, x3, #0x0
		000000000000533c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    5340: 528109a4     	mov	w4, #0x84d              // =2125
    5344: 94000000     	bl	0x5344 <aw9620x_cycle_write_firmware+0x584>
		0000000000005344:  R_AARCH64_CALL26	_dev_printk
    5348: aa1403e0     	mov	x0, x20
    534c: 94000000     	bl	0x534c <aw9620x_cycle_write_firmware+0x58c>
		000000000000534c:  R_AARCH64_CALL26	kfree
    5350: 12800000     	mov	w0, #-0x1               // =-1
    5354: 17ffff62     	b	0x50dc <aw9620x_cycle_write_firmware+0x31c>
    5358: d4200020     	brk	#0x1
    535c: f85f03a1     	ldur	x1, [x29, #-0x10]
    5360: 52800220     	mov	w0, #0x11               // =17
    5364: 5281f802     	mov	w2, #0xfc0              // =4032
    5368: 94000000     	bl	0x5368 <aw9620x_cycle_write_firmware+0x5a8>
		0000000000005368:  R_AARCH64_CALL26	__fortify_panic
    536c: 528001e0     	mov	w0, #0xf                // =15
    5370: aa1703e1     	mov	x1, x23
    5374: aa1703e2     	mov	x2, x23
    5378: 94000000     	bl	0x5378 <aw9620x_cycle_write_firmware+0x5b8>
		0000000000005378:  R_AARCH64_CALL26	__fortify_panic
    537c: 52800220     	mov	w0, #0x11               // =17
    5380: aa1503e2     	mov	x2, x21
    5384: 94000000     	bl	0x5384 <aw9620x_cycle_write_firmware+0x5c4>
		0000000000005384:  R_AARCH64_CALL26	__fortify_panic
    5388: d5384118     	mrs	x24, SP_EL0
    538c: f9402b1a     	ldr	x26, [x24, #0x50]
    5390: 90000008     	adrp	x8, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		0000000000005390:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
    5394: 91000108     	add	x8, x8, #0x0
		0000000000005394:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
    5398: aa1703e0     	mov	x0, x23
    539c: 5281b801     	mov	w1, #0xdc0              // =3520
    53a0: f9002b08     	str	x8, [x24, #0x50]
    53a4: 94000000     	bl	0x53a4 <aw9620x_cycle_write_firmware+0x5e4>
		00000000000053a4:  R_AARCH64_CALL26	__kmalloc_noprof
    53a8: aa0003f4     	mov	x20, x0
    53ac: f9002b1a     	str	x26, [x24, #0x50]
    53b0: b5ffd8d4     	cbnz	x20, 0x4ec8 <aw9620x_cycle_write_firmware+0x108>
    53b4: f9401a61     	ldr	x1, [x19, #0x30]
    53b8: 90000000     	adrp	x0, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000053b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ea0
    53bc: 91000000     	add	x0, x0, #0x0
		00000000000053bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ea0
    53c0: 90000002     	adrp	x2, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000053c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1566
    53c4: 91000042     	add	x2, x2, #0x0
		00000000000053c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1566
    53c8: 90000003     	adrp	x3, 0x5000 <aw9620x_cycle_write_firmware+0x240>
		00000000000053c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1143
    53cc: 91000063     	add	x3, x3, #0x0
		00000000000053cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1143
    53d0: 528104c4     	mov	w4, #0x826              // =2086
    53d4: 94000000     	bl	0x53d4 <aw9620x_cycle_write_firmware+0x614>
		00000000000053d4:  R_AARCH64_CALL26	_dev_printk
    53d8: 17ffff40     	b	0x50d8 <aw9620x_cycle_write_firmware+0x318>
