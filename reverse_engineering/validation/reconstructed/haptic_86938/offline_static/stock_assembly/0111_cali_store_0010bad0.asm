
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008cb0 <cali_store>:
    8cb0: d503233f     	paciasp
    8cb4: d10143ff     	sub	sp, sp, #0x50
    8cb8: a9017bfd     	stp	x29, x30, [sp, #0x10]
    8cbc: a9025ff8     	stp	x24, x23, [sp, #0x20]
    8cc0: a90357f6     	stp	x22, x21, [sp, #0x30]
    8cc4: a9044ff4     	stp	x20, x19, [sp, #0x40]
    8cc8: 910043fd     	add	x29, sp, #0x10
    8ccc: d5384109     	mrs	x9, SP_EL0
    8cd0: aa0203e8     	mov	x8, x2
    8cd4: 910013e2     	add	x2, sp, #0x4
    8cd8: f9438929     	ldr	x9, [x9, #0x710]
    8cdc: 2a1f03e1     	mov	w1, wzr
    8ce0: aa0303f3     	mov	x19, x3
    8ce4: f90007e9     	str	x9, [sp, #0x8]
    8ce8: f9404c18     	ldr	x24, [x0, #0x98]
    8cec: aa0803e0     	mov	x0, x8
    8cf0: b90007ff     	str	wzr, [sp, #0x4]
    8cf4: 94000000     	bl	0x8cf4 <cali_store+0x44>
		0000000000008cf4:  R_AARCH64_CALL26	kstrtouint
    8cf8: 37f80c20     	tbnz	w0, #0x1f, 0x8e7c <cali_store+0x1cc>
    8cfc: b94007e8     	ldr	w8, [sp, #0x4]
    8d00: 34000c08     	cbz	w8, 0x8e80 <cali_store+0x1d0>
    8d04: 91092300     	add	x0, x24, #0x248
    8d08: d102a314     	sub	x20, x24, #0xa8
    8d0c: 94000000     	bl	0x8d0c <cali_store+0x5c>
		0000000000008d0c:  R_AARCH64_CALL26	mutex_lock
    8d10: f9429308     	ldr	x8, [x24, #0x520]
    8d14: b943c315     	ldr	w21, [x24, #0x3c0]
    8d18: aa1403e0     	mov	x0, x20
    8d1c: 394eeb16     	ldrb	w22, [x24, #0x3ba]
    8d20: 2a1f03e1     	mov	w1, wzr
    8d24: f9408d08     	ldr	x8, [x8, #0x118]
    8d28: b85fc110     	ldur	w16, [x8, #-0x4]
    8d2c: 728dd2b1     	movk	w17, #0x6e95
    8d30: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    8d34: 6b11021f     	cmp	w16, w17
    8d38: 54000040     	b.eq	0x8d40 <cali_store+0x90>
    8d3c: d4304500     	brk	#0x8228
    8d40: d63f0100     	blr	x8
    8d44: f9429308     	ldr	x8, [x24, #0x520]
    8d48: aa1403e0     	mov	x0, x20
    8d4c: f9400108     	ldr	x8, [x8]
    8d50: b85fc110     	ldur	w16, [x8, #-0x4]
    8d54: 729e3e11     	movk	w17, #0xf1f0
    8d58: 72aa2591     	movk	w17, #0x512c, lsl #16
    8d5c: 6b11021f     	cmp	w16, w17
    8d60: 54000040     	b.eq	0x8d68 <cali_store+0xb8>
    8d64: d4304500     	brk	#0x8228
    8d68: d63f0100     	blr	x8
    8d6c: 35000a40     	cbnz	w0, 0x8eb4 <cali_store+0x204>
    8d70: 52800c89     	mov	w9, #0x64               // =100
    8d74: 110192c8     	add	w8, w22, #0x64
    8d78: 5290a3ea     	mov	w10, #0x851f            // =34079
    8d7c: 4b160129     	sub	w9, w9, w22
    8d80: 1b157d08     	mul	w8, w8, w21
    8d84: 72aa3d6a     	movk	w10, #0x51eb, lsl #16
    8d88: 1b157d29     	mul	w9, w9, w21
    8d8c: b85b8315     	ldur	w21, [x24, #-0x48]
    8d90: b943c304     	ldr	w4, [x24, #0x3c0]
    8d94: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf0c
    8d98: 91000000     	add	x0, x0, #0x0
		0000000000008d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf0c
    8d9c: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8da0: 91000021     	add	x1, x1, #0x0
		0000000000008da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8da4: 9baa7d08     	umull	x8, w8, w10
    8da8: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4a
    8dac: 91000063     	add	x3, x3, #0x0
		0000000000008dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4a
    8db0: 9baa7d29     	umull	x9, w9, w10
    8db4: 52805602     	mov	w2, #0x2b0              // =688
    8db8: 2a1503e7     	mov	w7, w21
    8dbc: d365fd16     	lsr	x22, x8, #37
    8dc0: d365fd37     	lsr	x23, x9, #37
    8dc4: 2a1603e6     	mov	w6, w22
    8dc8: 2a1703e5     	mov	w5, w23
    8dcc: 94000000     	bl	0x8dcc <cali_store+0x11c>
		0000000000008dcc:  R_AARCH64_CALL26	_printk
    8dd0: b85b8304     	ldur	w4, [x24, #-0x48]
    8dd4: 6b17009f     	cmp	w4, w23
    8dd8: 54000803     	b.lo	0x8ed8 <cali_store+0x228>
    8ddc: 6b16009f     	cmp	w4, w22
    8de0: 540007c8     	b.hi	0x8ed8 <cali_store+0x228>
    8de4: 90000016     	adrp	x22, 0x8000 <reg_show+0x10>
		0000000000008de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8de8: 910002d6     	add	x22, x22, #0x0
		0000000000008de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8dec: 90000017     	adrp	x23, 0x8000 <reg_show+0x10>
		0000000000008dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4a
    8df0: 910002f7     	add	x23, x23, #0x0
		0000000000008df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4a
    8df4: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2bbc
    8df8: 91000000     	add	x0, x0, #0x0
		0000000000008df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2bbc
    8dfc: aa1603e1     	mov	x1, x22
    8e00: 52805722     	mov	w2, #0x2b9              // =697
    8e04: aa1703e3     	mov	x3, x23
    8e08: 2a1503e4     	mov	w4, w21
    8e0c: 94000000     	bl	0x8e0c <cali_store+0x15c>
		0000000000008e0c:  R_AARCH64_CALL26	_printk
    8e10: b943c308     	ldr	w8, [x24, #0x3c0]
    8e14: 5290d409     	mov	w9, #0x86a0             // =34464
    8e18: 0b1506aa     	add	w10, w21, w21, lsl #1
    8e1c: 72a00029     	movk	w9, #0x1, lsl #16
    8e20: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008e20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x405
    8e24: 91000000     	add	x0, x0, #0x0
		0000000000008e24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x405
    8e28: 4b0802a8     	sub	w8, w21, w8
    8e2c: aa1603e1     	mov	x1, x22
    8e30: 528057c2     	mov	w2, #0x2be              // =702
    8e34: 1b097d08     	mul	w8, w8, w9
    8e38: 531d7149     	lsl	w9, w10, #3
    8e3c: aa1703e3     	mov	x3, x23
    8e40: 1ac90d15     	sdiv	w21, w8, w9
    8e44: 2a1503e4     	mov	w4, w21
    8e48: 94000000     	bl	0x8e48 <cali_store+0x198>
		0000000000008e48:  R_AARCH64_CALL26	_printk
    8e4c: 37f80595     	tbnz	w21, #0x1f, 0x8efc <cali_store+0x24c>
    8e50: 529999a8     	mov	w8, #0xcccd             // =52429
    8e54: 72b99988     	movk	w8, #0xcccc, lsl #16
    8e58: 9ba87ea8     	umull	x8, w21, w8
    8e5c: d363fd09     	lsr	x9, x8, #35
    8e60: 52800148     	mov	w8, #0xa                // =10
    8e64: 1b08d52a     	msub	w10, w9, w8, w21
    8e68: 39592f08     	ldrb	w8, [x24, #0x64b]
    8e6c: 0b080129     	add	w9, w9, w8
    8e70: 7100115f     	cmp	w10, #0x4
    8e74: 1a899529     	cinc	w9, w9, hi
    8e78: 1400002e     	b	0x8f30 <cali_store+0x280>
    8e7c: 93407c13     	sxtw	x19, w0
    8e80: d5384108     	mrs	x8, SP_EL0
    8e84: f9438908     	ldr	x8, [x8, #0x710]
    8e88: f94007e9     	ldr	x9, [sp, #0x8]
    8e8c: eb09011f     	cmp	x8, x9
    8e90: 540009a1     	b.ne	0x8fc4 <cali_store+0x314>
    8e94: aa1303e0     	mov	x0, x19
    8e98: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    8e9c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    8ea0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    8ea4: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    8ea8: 910143ff     	add	sp, sp, #0x50
    8eac: d50323bf     	autiasp
    8eb0: d65f03c0     	ret
    8eb4: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd81
    8eb8: 91000000     	add	x0, x0, #0x0
		0000000000008eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd81
    8ebc: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8ec0: 91000021     	add	x1, x1, #0x0
		0000000000008ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8ec4: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4a
    8ec8: 91000063     	add	x3, x3, #0x0
		0000000000008ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4a
    8ecc: 52805542     	mov	w2, #0x2aa              // =682
    8ed0: 94000000     	bl	0x8ed0 <cali_store+0x220>
		0000000000008ed0:  R_AARCH64_CALL26	_printk
    8ed4: 14000024     	b	0x8f64 <cali_store+0x2b4>
    8ed8: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22e6
    8edc: 91000000     	add	x0, x0, #0x0
		0000000000008edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22e6
    8ee0: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8ee4: 91000021     	add	x1, x1, #0x0
		0000000000008ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8ee8: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4a
    8eec: 91000063     	add	x3, x3, #0x0
		0000000000008eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4a
    8ef0: 528056a2     	mov	w2, #0x2b5              // =693
    8ef4: 94000000     	bl	0x8ef4 <cali_store+0x244>
		0000000000008ef4:  R_AARCH64_CALL26	_printk
    8ef8: 14000030     	b	0x8fb8 <cali_store+0x308>
    8efc: 529999a9     	mov	w9, #0xcccd             // =52429
    8f00: 4b1503e8     	neg	w8, w21
    8f04: 5280014a     	mov	w10, #0xa               // =10
    8f08: 72b99989     	movk	w9, #0xcccc, lsl #16
    8f0c: 9ba97d09     	umull	x9, w8, w9
    8f10: d363fd29     	lsr	x9, x9, #35
    8f14: 1b0aa12a     	msub	w10, w9, w10, w8
    8f18: 39592f08     	ldrb	w8, [x24, #0x64b]
    8f1c: 2a2903eb     	mvn	w11, w9
    8f20: 4b090109     	sub	w9, w8, w9
    8f24: 0b0b010b     	add	w11, w8, w11
    8f28: 7100155f     	cmp	w10, #0x5
    8f2c: 1a8b3129     	csel	w9, w9, w11, lo
    8f30: 6b08013f     	cmp	w9, w8
    8f34: 90000000     	adrp	x0, 0x8000 <reg_show+0x10>
		0000000000008f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dd
    8f38: 91000000     	add	x0, x0, #0x0
		0000000000008f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dd
    8f3c: 5a88b508     	cneg	w8, w8, ge
    8f40: 90000001     	adrp	x1, 0x8000 <reg_show+0x10>
		0000000000008f40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    8f44: 91000021     	add	x1, x1, #0x0
		0000000000008f44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    8f48: 0b090108     	add	w8, w8, w9
    8f4c: 90000003     	adrp	x3, 0x8000 <reg_show+0x10>
		0000000000008f4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d4a
    8f50: 91000063     	add	x3, x3, #0x0
		0000000000008f50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d4a
    8f54: 12001d04     	and	w4, w8, #0xff
    8f58: 52805a22     	mov	w2, #0x2d1              // =721
    8f5c: b81e0304     	stur	w4, [x24, #-0x20]
    8f60: 94000000     	bl	0x8f60 <cali_store+0x2b0>
		0000000000008f60:  R_AARCH64_CALL26	_printk
    8f64: f9429308     	ldr	x8, [x24, #0x520]
    8f68: aa1403e0     	mov	x0, x20
    8f6c: 52800021     	mov	w1, #0x1                // =1
    8f70: f9408d08     	ldr	x8, [x8, #0x118]
    8f74: b85fc110     	ldur	w16, [x8, #-0x4]
    8f78: 728dd2b1     	movk	w17, #0x6e95
    8f7c: 72ba6f71     	movk	w17, #0xd37b, lsl #16
    8f80: 6b11021f     	cmp	w16, w17
    8f84: 54000040     	b.eq	0x8f8c <cali_store+0x2dc>
    8f88: d4304500     	brk	#0x8228
    8f8c: d63f0100     	blr	x8
    8f90: f9429308     	ldr	x8, [x24, #0x520]
    8f94: aa1403e0     	mov	x0, x20
    8f98: f9401d08     	ldr	x8, [x8, #0x38]
    8f9c: b85fc110     	ldur	w16, [x8, #-0x4]
    8fa0: 72810611     	movk	w17, #0x830
    8fa4: 72b08f51     	movk	w17, #0x847a, lsl #16
    8fa8: 6b11021f     	cmp	w16, w17
    8fac: 54000040     	b.eq	0x8fb4 <cali_store+0x304>
    8fb0: d4304500     	brk	#0x8228
    8fb4: d63f0100     	blr	x8
    8fb8: 91092300     	add	x0, x24, #0x248
    8fbc: 94000000     	bl	0x8fbc <cali_store+0x30c>
		0000000000008fbc:  R_AARCH64_CALL26	mutex_unlock
    8fc0: 17ffffb0     	b	0x8e80 <cali_store+0x1d0>
    8fc4: 94000000     	bl	0x8fc4 <cali_store+0x314>
		0000000000008fc4:  R_AARCH64_CALL26	__stack_chk_fail
