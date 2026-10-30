
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000004d40 <syna_cdev_ioctls>:
    4d40: d503233f     	paciasp
    4d44: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    4d48: a9016ffc     	stp	x28, x27, [sp, #0x10]
    4d4c: a90267fa     	stp	x26, x25, [sp, #0x20]
    4d50: a9035ff8     	stp	x24, x23, [sp, #0x30]
    4d54: a90457f6     	stp	x22, x21, [sp, #0x40]
    4d58: a9054ff4     	stp	x20, x19, [sp, #0x50]
    4d5c: 910003fd     	mov	x29, sp
    4d60: d14007ff     	sub	sp, sp, #0x1, lsl #12   // =0x1000
    4d64: d10103ff     	sub	sp, sp, #0x40
    4d68: d5384108     	mrs	x8, SP_EL0
    4d6c: aa0203f3     	mov	x19, x2
    4d70: 2a0103f7     	mov	w23, w1
    4d74: f9438908     	ldr	x8, [x8, #0x710]
    4d78: 12001c35     	and	w21, w1, #0xff
    4d7c: 9100c3e0     	add	x0, sp, #0x30
    4d80: 2a1f03e1     	mov	w1, wzr
    4d84: 52820002     	mov	w2, #0x1000             // =4096
    4d88: f81f03a8     	stur	x8, [x29, #-0x10]
    4d8c: b9001fff     	str	wzr, [sp, #0x1c]
    4d90: 94000000     	bl	0x4d90 <syna_cdev_ioctls+0x50>
		0000000000004d90:  R_AARCH64_CALL26	memset
    4d94: f9000bff     	str	xzr, [sp, #0x10]
    4d98: d5384108     	mrs	x8, SP_EL0
    4d9c: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004d9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
    4da0: 91000000     	add	x0, x0, #0x0
		0000000000004da0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
    4da4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
    4da8: f8450408     	ldr	x8, [x0], #0x50
    4dac: f9405514     	ldr	x20, [x8, #0xa8]
    4db0: 94000000     	bl	0x4db0 <syna_cdev_ioctls+0x70>
		0000000000004db0:  R_AARCH64_CALL26	mutex_lock
    4db4: 71003ebf     	cmp	w21, #0xf
    4db8: 540002a8     	b.hi	0x4e0c <syna_cdev_ioctls+0xcc>
    4dbc: 710006bf     	cmp	w21, #0x1
    4dc0: 540002e8     	b.hi	0x4e1c <syna_cdev_ioctls+0xdc>
    4dc4: 72001eff     	tst	w23, #0xff
    4dc8: 54000fe0     	b.eq	0x4fc4 <syna_cdev_ioctls+0x284>
    4dcc: f9413a89     	ldr	x9, [x20, #0x270]
    4dd0: f9402128     	ldr	x8, [x9, #0x40]
    4dd4: b4001308     	cbz	x8, 0x5034 <syna_cdev_ioctls+0x2f4>
    4dd8: f100067f     	cmp	x19, #0x1
    4ddc: 540099a8     	b.hi	0x6110 <syna_cdev_ioctls+0x13d0>
    4de0: 91002120     	add	x0, x9, #0x8
    4de4: aa1303e1     	mov	x1, x19
    4de8: b85fc110     	ldur	w16, [x8, #-0x4]
    4dec: 72894471     	movk	w17, #0x4a23
    4df0: 72ae9ab1     	movk	w17, #0x74d5, lsl #16
    4df4: 6b11021f     	cmp	w16, w17
    4df8: 54000040     	b.eq	0x4e00 <syna_cdev_ioctls+0xc0>
    4dfc: d4304500     	brk	#0x8228
    4e00: d63f0100     	blr	x8
    4e04: 2a0003f6     	mov	w22, w0
    4e08: 140004c3     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    4e0c: 710042bf     	cmp	w21, #0x10
    4e10: 54000181     	b.ne	0x4e40 <syna_cdev_ioctls+0x100>
    4e14: 52800036     	mov	w22, #0x1               // =1
    4e18: 140004bf     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    4e1c: 12001ee8     	and	w8, w23, #0xff
    4e20: 7100091f     	cmp	w8, #0x2
    4e24: 54009760     	b.eq	0x6110 <syna_cdev_ioctls+0x13d0>
    4e28: 71000d1f     	cmp	w8, #0x3
    4e2c: 54007041     	b.ne	0x5c34 <syna_cdev_ioctls+0xef4>
    4e30: 52800028     	mov	w8, #0x1                // =1
    4e34: 2a1f03f6     	mov	w22, wzr
    4e38: 39161288     	strb	w8, [x20, #0x584]
    4e3c: 140004b6     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    4e40: d378de68     	lsl	x8, x19, #8
    4e44: d538411b     	mrs	x27, SP_EL0
    4e48: 39411b69     	ldrb	w9, [x27, #0x46]
    4e4c: 8a88227a     	and	x26, x19, x8, asr #8
    4e50: 37280089     	tbnz	w9, #0x5, 0x4e60 <syna_cdev_ioctls+0x120>
    4e54: 39400f69     	ldrb	w9, [x27, #0x3]
    4e58: aa1303e8     	mov	x8, x19
    4e5c: 36100049     	tbz	w9, #0x2, 0x4e64 <syna_cdev_ioctls+0x124>
    4e60: aa1a03e8     	mov	x8, x26
    4e64: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
    4e68: eb09011f     	cmp	x8, x9
    4e6c: 54005728     	b.hi	0x5950 <syna_cdev_ioctls+0xc10>
    4e70: d5384108     	mrs	x8, SP_EL0
    4e74: d503201f     	nop
    4e78: d53b4228     	mrs	x8, DAIF
    4e7c: d50343df     	msr	DAIFSet, #0x3
    4e80: d5384109     	mrs	x9, SP_EL0
    4e84: f9400529     	ldr	x9, [x9, #0x8]
    4e88: d538202a     	mrs	x10, TTBR1_EL1
    4e8c: aa0903eb     	mov	x11, x9
    4e90: b340bd4b     	bfxil	x11, x10, #0, #48
    4e94: d518202b     	msr	TTBR1_EL1, x11
    4e98: d5182009     	msr	TTBR0_EL1, x9
    4e9c: d5033fdf     	isb
    4ea0: d51b4228     	msr	DAIF, x8
    4ea4: 9248fa7c     	and	x28, x19, #0xff7fffffffffffff
    4ea8: 9248fb81     	and	x1, x28, #0xff7fffffffffffff
    4eac: 910083e0     	add	x0, sp, #0x20
    4eb0: 52800202     	mov	w2, #0x10               // =16
    4eb4: 94000000     	bl	0x4eb4 <syna_cdev_ioctls+0x174>
		0000000000004eb4:  R_AARCH64_CALL26	__arch_copy_from_user
    4eb8: d503201f     	nop
    4ebc: d53b4228     	mrs	x8, DAIF
    4ec0: d50343df     	msr	DAIFSet, #0x3
    4ec4: d5382029     	mrs	x9, TTBR1_EL1
    4ec8: 9240bd29     	and	x9, x9, #0xffffffffffff
    4ecc: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    4ed0: d518200a     	msr	TTBR0_EL1, x10
    4ed4: d5182029     	msr	TTBR1_EL1, x9
    4ed8: d5033fdf     	isb
    4edc: d51b4228     	msr	DAIF, x8
    4ee0: d5384108     	mrs	x8, SP_EL0
    4ee4: d5384108     	mrs	x8, SP_EL0
    4ee8: b5005380     	cbnz	x0, 0x5958 <syna_cdev_ioctls+0xc18>
    4eec: b94027f6     	ldr	w22, [sp, #0x24]
    4ef0: 714006df     	cmp	w22, #0x1, lsl #12      // =0x1000
    4ef4: 540054e8     	b.hi	0x5990 <syna_cdev_ioctls+0xc50>
    4ef8: 12001ee8     	and	w8, w23, #0xff
    4efc: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2112
    4f00: 91000021     	add	x1, x1, #0x0
		0000000000004f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2112
    4f04: 51004508     	sub	w8, w8, #0x11
    4f08: 7100451f     	cmp	w8, #0x11
    4f0c: 54006988     	b.hi	0x5c3c <syna_cdev_ioctls+0xefc>
    4f10: 90000009     	adrp	x9, 0x4000 <suspend_show+0x30>
		0000000000004f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x45d8
    4f14: 91000129     	add	x9, x9, #0x0
		0000000000004f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x45d8
    4f18: f94017f5     	ldr	x21, [sp, #0x28]
    4f1c: 1000000a     	adr	x10, 0x4f1c <syna_cdev_ioctls+0x1dc>
    4f20: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
    4f24: 8b0b014a     	add	x10, x10, x11
    4f28: d61f0140     	br	x10
    4f2c: 39560a88     	ldrb	w8, [x20, #0x582]
    4f30: b90033ff     	str	wzr, [sp, #0x30]
    4f34: 360098e8     	tbz	w8, #0x0, 0x6250 <syna_cdev_ioctls+0x1510>
    4f38: b9457e88     	ldr	w8, [x20, #0x57c]
    4f3c: 90000001     	adrp	x1, 0x4000 <suspend_show+0x30>
		0000000000004f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    4f40: 91000021     	add	x1, x1, #0x0
		0000000000004f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    4f44: 71000d1f     	cmp	w8, #0x3
    4f48: 54009b60     	b.eq	0x62b4 <syna_cdev_ioctls+0x1574>
    4f4c: 710012df     	cmp	w22, #0x4
    4f50: 90000000     	adrp	x0, 0x4000 <suspend_show+0x30>
		0000000000004f50:  R_AARCH64_ADR_PREL_PG_HI21	unk_3940D
    4f54: 91000000     	add	x0, x0, #0x0
		0000000000004f54:  R_AARCH64_ADD_ABS_LO12_NC	unk_3940D
    4f58: 54009fe3     	b.lo	0x6354 <syna_cdev_ioctls+0x1614>
    4f5c: f94013e8     	ldr	x8, [sp, #0x20]
    4f60: 927e7508     	and	x8, x8, #0xfffffffc
    4f64: b4009f88     	cbz	x8, 0x6354 <syna_cdev_ioctls+0x1614>
    4f68: f9413a97     	ldr	x23, [x20, #0x270]
    4f6c: f94022e8     	ldr	x8, [x23, #0x40]
    4f70: b400a328     	cbz	x8, 0x63d4 <syna_cdev_ioctls+0x1694>
    4f74: 710016df     	cmp	w22, #0x5
    4f78: 5400aa62     	b.hs	0x64c4 <syna_cdev_ioctls+0x1784>
    4f7c: 9100c3e0     	add	x0, sp, #0x30
    4f80: 52800081     	mov	w1, #0x4                // =4
    4f84: 2a1f03e2     	mov	w2, wzr
    4f88: 94000000     	bl	0x4f88 <syna_cdev_ioctls+0x248>
		0000000000004f88:  R_AARCH64_CALL26	__check_object_size
    4f8c: 39411b68     	ldrb	w8, [x27, #0x46]
    4f90: 37280088     	tbnz	w8, #0x5, 0x4fa0 <syna_cdev_ioctls+0x260>
    4f94: 39400f69     	ldrb	w9, [x27, #0x3]
    4f98: aa1503e8     	mov	x8, x21
    4f9c: 36100069     	tbz	w9, #0x2, 0x4fa8 <syna_cdev_ioctls+0x268>
    4fa0: d378dea8     	lsl	x8, x21, #8
    4fa4: 8a8822a8     	and	x8, x21, x8, asr #8
    4fa8: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    4fac: cb160129     	sub	x9, x9, x22
    4fb0: eb08013f     	cmp	x9, x8
    4fb4: 54006842     	b.hs	0x5cbc <syna_cdev_ioctls+0xf7c>
    4fb8: aa1f03e8     	mov	x8, xzr
    4fbc: 52800095     	mov	w21, #0x4               // =4
    4fc0: 1400034c     	b	0x5cf0 <syna_cdev_ioctls+0xfb0>
    4fc4: f9400280     	ldr	x0, [x20]
    4fc8: b9420c01     	ldr	w1, [x0, #0x20c]
    4fcc: 94000000     	bl	0x4fcc <syna_cdev_ioctls+0x28c>
		0000000000004fcc:  R_AARCH64_CALL26	syna_tcm_reset
    4fd0: 2a0003f6     	mov	w22, w0
    4fd4: 37f87ee0     	tbnz	w0, #0x1f, 0x5fb0 <syna_cdev_ioctls+0x1270>
    4fd8: f9400288     	ldr	x8, [x20]
    4fdc: 39402508     	ldrb	w8, [x8, #0x9]
    4fe0: 7100051f     	cmp	w8, #0x1
    4fe4: 54008981     	b.ne	0x6114 <syna_cdev_ioctls+0x13d4>
    4fe8: f9435e93     	ldr	x19, [x20, #0x6b8]
    4fec: 5288e389     	mov	w9, #0x471c             // =18204
    4ff0: 72b5c409     	movk	w9, #0xae20, lsl #16
    4ff4: b85fc268     	ldur	w8, [x19, #-0x4]
    4ff8: 6b09011f     	cmp	w8, w9
    4ffc: 54008cc1     	b.ne	0x6194 <syna_cdev_ioctls+0x1454>
    5000: aa1403e0     	mov	x0, x20
    5004: b85fc270     	ldur	w16, [x19, #-0x4]
    5008: 728105b1     	movk	w17, #0x82d
    500c: 72b456d1     	movk	w17, #0xa2b6, lsl #16
    5010: 6b11021f     	cmp	w16, w17
    5014: 54000040     	b.eq	0x501c <syna_cdev_ioctls+0x2dc>
    5018: d4304660     	brk	#0x8233
    501c: d63f0260     	blr	x19
    5020: aa0003f6     	mov	x22, x0
    5024: 36f88796     	tbz	w22, #0x1f, 0x6114 <syna_cdev_ioctls+0x13d4>
    5028: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005028:  R_AARCH64_ADR_PREL_PG_HI21	unk_324EB
    502c: 91000000     	add	x0, x0, #0x0
		000000000000502c:  R_AARCH64_ADD_ABS_LO12_NC	unk_324EB
    5030: 140003e2     	b	0x5fb8 <syna_cdev_ioctls+0x1278>
    5034: 128002b6     	mov	w22, #-0x16             // =-22
    5038: 14000437     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    503c: 39560a88     	ldrb	w8, [x20, #0x582]
    5040: f94013f7     	ldr	x23, [sp, #0x20]
    5044: b9001fff     	str	wzr, [sp, #0x1c]
    5048: 36008f88     	tbz	w8, #0x0, 0x6238 <syna_cdev_ioctls+0x14f8>
    504c: b9457e88     	ldr	w8, [x20, #0x57c]
    5050: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5066
    5054: 91000021     	add	x1, x1, #0x0
		0000000000005054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5066
    5058: 71000d1f     	cmp	w8, #0x3
    505c: 54009360     	b.eq	0x62c8 <syna_cdev_ioctls+0x1588>
    5060: 710012df     	cmp	w22, #0x4
    5064: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005064:  R_AARCH64_ADR_PREL_PG_HI21	unk_34E03
    5068: 91000000     	add	x0, x0, #0x0
		0000000000005068:  R_AARCH64_ADD_ABS_LO12_NC	unk_34E03
    506c: 54009743     	b.lo	0x6354 <syna_cdev_ioctls+0x1614>
    5070: 927e76e8     	and	x8, x23, #0xfffffffc
    5074: aa1603e2     	mov	x2, x22
    5078: b4009708     	cbz	x8, 0x6358 <syna_cdev_ioctls+0x1618>
    507c: 39411b68     	ldrb	w8, [x27, #0x46]
    5080: 37280088     	tbnz	w8, #0x5, 0x5090 <syna_cdev_ioctls+0x350>
    5084: 39400f69     	ldrb	w9, [x27, #0x3]
    5088: aa1503e8     	mov	x8, x21
    508c: 36100069     	tbz	w9, #0x2, 0x5098 <syna_cdev_ioctls+0x358>
    5090: d378dea8     	lsl	x8, x21, #8
    5094: 8a8822a8     	and	x8, x21, x8, asr #8
    5098: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
    509c: eb09011f     	cmp	x8, x9
    50a0: 54009968     	b.hi	0x63cc <syna_cdev_ioctls+0x168c>
    50a4: d5384108     	mrs	x8, SP_EL0
    50a8: 940006d6     	bl	0x6c00 <uaccess_ttbr0_enable>
    50ac: 9248fab8     	and	x24, x21, #0xff7fffffffffffff
    50b0: 9248fb01     	and	x1, x24, #0xff7fffffffffffff
    50b4: 910073e0     	add	x0, sp, #0x1c
    50b8: 52800082     	mov	w2, #0x4                // =4
    50bc: 94000000     	bl	0x50bc <syna_cdev_ioctls+0x37c>
		00000000000050bc:  R_AARCH64_CALL26	__arch_copy_from_user
    50c0: aa0003f6     	mov	x22, x0
    50c4: 940006dc     	bl	0x6c34 <uaccess_ttbr0_disable>
    50c8: d5384108     	mrs	x8, SP_EL0
    50cc: d5384108     	mrs	x8, SP_EL0
    50d0: b5009b76     	cbnz	x22, 0x643c <syna_cdev_ioctls+0x16fc>
    50d4: f9427e88     	ldr	x8, [x20, #0x4f8]
    50d8: 9113e289     	add	x9, x20, #0x4f8
    50dc: eb08013f     	cmp	x9, x8
    50e0: 5400a901     	b.ne	0x6600 <syna_cdev_ioctls+0x18c0>
    50e4: b9401ff6     	ldr	w22, [sp, #0x1c]
    50e8: 2a1603e0     	mov	w0, w22
    50ec: 94000000     	bl	0x50ec <syna_cdev_ioctls+0x3ac>
		00000000000050ec:  R_AARCH64_CALL26	__msecs_to_jiffies
    50f0: b944f289     	ldr	w9, [x20, #0x4f0]
    50f4: f100001f     	cmp	x0, #0x0
    50f8: 9000000a     	adrp	x10, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000050f8:  R_AARCH64_ADR_PREL_PG_HI21	_ZF
    50fc: 7a400924     	ccmp	w9, #0x0, #0x4, eq
    5100: 1a9f17e8     	cset	w8, eq
    5104: b9000148     	str	w8, [x10]
		0000000000005104:  R_AARCH64_LDST32_ABS_LO12_NC	_ZF
    5108: 1a9f0408     	csinc	w8, w0, wzr, eq
    510c: 3500a789     	cbnz	w9, 0x65fc <syna_cdev_ioctls+0x18bc>
    5110: 92607c09     	and	x9, x0, #0xffffffff00000000
    5114: aa080129     	orr	x9, x9, x8
    5118: b400a729     	cbz	x9, 0x65fc <syna_cdev_ioctls+0x18bc>
    511c: 2a1603e0     	mov	w0, w22
    5120: f9000bff     	str	xzr, [sp, #0x10]
    5124: f9001bff     	str	xzr, [sp, #0x30]
    5128: 94000000     	bl	0x5128 <syna_cdev_ioctls+0x3e8>
		0000000000005128:  R_AARCH64_CALL26	__msecs_to_jiffies
    512c: aa0003f6     	mov	x22, x0
    5130: 9100c3e0     	add	x0, sp, #0x30
    5134: 2a1f03e1     	mov	w1, wzr
    5138: 94000000     	bl	0x5138 <syna_cdev_ioctls+0x3f8>
		0000000000005138:  R_AARCH64_CALL26	init_wait_entry
    513c: 91142280     	add	x0, x20, #0x508
    5140: 9100c3e1     	add	x1, sp, #0x30
    5144: 52800022     	mov	w2, #0x1                // =1
    5148: 94000000     	bl	0x5148 <syna_cdev_ioctls+0x408>
		0000000000005148:  R_AARCH64_CALL26	prepare_to_wait_event
    514c: b944f289     	ldr	w9, [x20, #0x4f0]
    5150: aa0003e8     	mov	x8, x0
    5154: 7100013f     	cmp	w9, #0x0
    5158: fa401ac0     	ccmp	x22, #0x0, #0x0, ne
    515c: 9a9f16c0     	csinc	x0, x22, xzr, ne
    5160: 35000209     	cbnz	w9, 0x51a0 <syna_cdev_ioctls+0x460>
    5164: b40001e0     	cbz	x0, 0x51a0 <syna_cdev_ioctls+0x460>
    5168: b500a4a8     	cbnz	x8, 0x65fc <syna_cdev_ioctls+0x18bc>
    516c: 94000000     	bl	0x516c <syna_cdev_ioctls+0x42c>
		000000000000516c:  R_AARCH64_CALL26	schedule_timeout
    5170: aa0003f6     	mov	x22, x0
    5174: 91142280     	add	x0, x20, #0x508
    5178: 9100c3e1     	add	x1, sp, #0x30
    517c: 52800022     	mov	w2, #0x1                // =1
    5180: 94000000     	bl	0x5180 <syna_cdev_ioctls+0x440>
		0000000000005180:  R_AARCH64_CALL26	prepare_to_wait_event
    5184: b944f289     	ldr	w9, [x20, #0x4f0]
    5188: aa0003e8     	mov	x8, x0
    518c: 7100013f     	cmp	w9, #0x0
    5190: fa401ac0     	ccmp	x22, #0x0, #0x0, ne
    5194: 9a9f16c0     	csinc	x0, x22, xzr, ne
    5198: 35000049     	cbnz	w9, 0x51a0 <syna_cdev_ioctls+0x460>
    519c: b5fffe60     	cbnz	x0, 0x5168 <syna_cdev_ioctls+0x428>
    51a0: aa0003f6     	mov	x22, x0
    51a4: 91142280     	add	x0, x20, #0x508
    51a8: 9100c3e1     	add	x1, sp, #0x30
    51ac: 94000000     	bl	0x51ac <syna_cdev_ioctls+0x46c>
		00000000000051ac:  R_AARCH64_CALL26	finish_wait
    51b0: 2a1603e8     	mov	w8, w22
    51b4: 14000512     	b	0x65fc <syna_cdev_ioctls+0x18bc>
    51b8: 39560a88     	ldrb	w8, [x20, #0x582]
    51bc: f9400297     	ldr	x23, [x20]
    51c0: 390073ff     	strb	wzr, [sp, #0x1c]
    51c4: f9000bff     	str	xzr, [sp, #0x10]
    51c8: f9001bff     	str	xzr, [sp, #0x30]
    51cc: 360083c8     	tbz	w8, #0x0, 0x6244 <syna_cdev_ioctls+0x1504>
    51d0: b9457e88     	ldr	w8, [x20, #0x57c]
    51d4: 71000d1f     	cmp	w8, #0x3
    51d8: 54008640     	b.eq	0x62a0 <syna_cdev_ioctls+0x1560>
    51dc: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000051dc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
    51e0: b9400108     	ldr	w8, [x8]
		00000000000051e0:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
    51e4: 11000d08     	add	w8, w8, #0x3
    51e8: 6b16011f     	cmp	w8, w22
    51ec: 54008a68     	b.hi	0x6338 <syna_cdev_ioctls+0x15f8>
    51f0: f94013e8     	ldr	x8, [sp, #0x20]
    51f4: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000051f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    51f8: 91000021     	add	x1, x1, #0x0
		00000000000051f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    51fc: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000051fc:  R_AARCH64_ADR_PREL_PG_HI21	unk_35568
    5200: 91000000     	add	x0, x0, #0x0
		0000000000005200:  R_AARCH64_ADD_ABS_LO12_NC	unk_35568
    5204: 6b0802df     	cmp	w22, w8
    5208: 92407d02     	and	x2, x8, #0xffffffff
    520c: 54008a63     	b.lo	0x6358 <syna_cdev_ioctls+0x1618>
    5210: 12820009     	mov	w9, #-0x1001            // =-4097
    5214: 0b090108     	add	w8, w8, w9
    5218: 313ff91f     	cmn	w8, #0xffe
    521c: 540089e3     	b.lo	0x6358 <syna_cdev_ioctls+0x1618>
    5220: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005220:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    5224: 39400102     	ldrb	w2, [x8]
		0000000000005224:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    5228: 35009242     	cbnz	w2, 0x6470 <syna_cdev_ioctls+0x1730>
    522c: 90000019     	adrp	x25, 0x5000 <syna_cdev_ioctls+0x2c0>
		000000000000522c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    5230: 91000339     	add	x25, x25, #0x0
		0000000000005230:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
    5234: 91004320     	add	x0, x25, #0x10
    5238: 94000000     	bl	0x5238 <syna_cdev_ioctls+0x4f8>
		0000000000005238:  R_AARCH64_CALL26	mutex_lock
    523c: b940af28     	ldr	w8, [x25, #0xac]
    5240: 3941032a     	ldrb	w10, [x25, #0x40]
    5244: 0aa87d09     	bic	w9, w8, w8, asr #31
    5248: a9402320     	ldp	x0, x8, [x25]
    524c: 0b160134     	add	w20, w9, w22
    5250: 11000549     	add	w9, w10, #0x1
    5254: 6b08029f     	cmp	w20, w8
    5258: 39010329     	strb	w9, [x25, #0x40]
    525c: 54004fc9     	b.ls	0x5c54 <syna_cdev_ioctls+0xf14>
    5260: b40000c0     	cbz	x0, 0x5278 <syna_cdev_ioctls+0x538>
    5264: aa0003f8     	mov	x24, x0
    5268: 94000000     	bl	0x5268 <syna_cdev_ioctls+0x528>
		0000000000005268:  R_AARCH64_CALL26	syna_request_managed_device
    526c: b400c720     	cbz	x0, 0x6b50 <syna_cdev_ioctls+0x1e10>
    5270: aa1803e1     	mov	x1, x24
    5274: 94000000     	bl	0x5274 <syna_cdev_ioctls+0x534>
		0000000000005274:  R_AARCH64_CALL26	devm_kfree
    5278: 94000000     	bl	0x5278 <syna_cdev_ioctls+0x538>
		0000000000005278:  R_AARCH64_CALL26	syna_request_managed_device
    527c: b400b4a0     	cbz	x0, 0x6910 <syna_cdev_ioctls+0x1bd0>
    5280: 7100069f     	cmp	w20, #0x1
    5284: 5400b5cb     	b.lt	0x693c <syna_cdev_ioctls+0x1bfc>
    5288: aa1403e1     	mov	x1, x20
    528c: 5281b802     	mov	w2, #0xdc0              // =3520
    5290: 94000000     	bl	0x5290 <syna_cdev_ioctls+0x550>
		0000000000005290:  R_AARCH64_CALL26	devm_kmalloc
    5294: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005294:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    5298: f9000100     	str	x0, [x8]
		0000000000005298:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    529c: b400b600     	cbz	x0, 0x695c <syna_cdev_ioctls+0x1c1c>
    52a0: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000052a0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    52a4: b9000114     	str	w20, [x8]
		00000000000052a4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
    52a8: 1400026c     	b	0x5c58 <syna_cdev_ioctls+0xf18>
    52ac: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000052ac:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    52b0: 91000000     	add	x0, x0, #0x0
		00000000000052b0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    52b4: 94000000     	bl	0x52b4 <syna_cdev_ioctls+0x574>
		00000000000052b4:  R_AARCH64_CALL26	mutex_lock
    52b8: f9427e95     	ldr	x21, [x20, #0x4f8]
    52bc: 9113e296     	add	x22, x20, #0x4f8
    52c0: eb1502df     	cmp	x22, x21
    52c4: 54000460     	b.eq	0x5350 <syna_cdev_ioctls+0x610>
    52c8: d2802017     	mov	x23, #0x100             // =256
    52cc: f2fbd5b7     	movk	x23, #0xdead, lsl #48
    52d0: 14000004     	b	0x52e0 <syna_cdev_ioctls+0x5a0>
    52d4: f94002d5     	ldr	x21, [x22]
    52d8: eb1602bf     	cmp	x21, x22
    52dc: 540003a0     	b.eq	0x5350 <syna_cdev_ioctls+0x610>
    52e0: f94006a8     	ldr	x8, [x21, #0x8]
    52e4: f9400109     	ldr	x9, [x8]
    52e8: eb0902bf     	cmp	x21, x9
    52ec: 540002c1     	b.ne	0x5344 <syna_cdev_ioctls+0x604>
    52f0: f94002a9     	ldr	x9, [x21]
    52f4: f940052a     	ldr	x10, [x9, #0x8]
    52f8: eb15015f     	cmp	x10, x21
    52fc: 540000a0     	b.eq	0x5310 <syna_cdev_ioctls+0x5d0>
    5300: f94002a9     	ldr	x9, [x21]
    5304: f940052a     	ldr	x10, [x9, #0x8]
    5308: eb15015f     	cmp	x10, x21
    530c: 540001c1     	b.ne	0x5344 <syna_cdev_ioctls+0x604>
    5310: f9000528     	str	x8, [x9, #0x8]
    5314: f9000109     	str	x9, [x8]
    5318: f9400aa0     	ldr	x0, [x21, #0x10]
    531c: 91008ae8     	add	x8, x23, #0x22
    5320: a90022b7     	stp	x23, x8, [x21]
    5324: 94000000     	bl	0x5324 <syna_cdev_ioctls+0x5e4>
		0000000000005324:  R_AARCH64_CALL26	kfree
    5328: aa1503e0     	mov	x0, x21
    532c: 94000000     	bl	0x532c <syna_cdev_ioctls+0x5ec>
		000000000000532c:  R_AARCH64_CALL26	kfree
    5330: b944f288     	ldr	w8, [x20, #0x4f0]
    5334: 34fffd08     	cbz	w8, 0x52d4 <syna_cdev_ioctls+0x594>
    5338: 51000508     	sub	w8, w8, #0x1
    533c: b904f288     	str	w8, [x20, #0x4f0]
    5340: 17ffffe5     	b	0x52d4 <syna_cdev_ioctls+0x594>
    5344: aa1503e0     	mov	x0, x21
    5348: 94000000     	bl	0x5348 <syna_cdev_ioctls+0x608>
		0000000000005348:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
    534c: 17fffff3     	b	0x5318 <syna_cdev_ioctls+0x5d8>
    5350: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005350:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    5354: 91000000     	add	x0, x0, #0x0
		0000000000005354:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    5358: 94000000     	bl	0x5358 <syna_cdev_ioctls+0x618>
		0000000000005358:  R_AARCH64_CALL26	mutex_unlock
    535c: 14000347     	b	0x6078 <syna_cdev_ioctls+0x1338>
    5360: 39560a88     	ldrb	w8, [x20, #0x582]
    5364: f9413a8a     	ldr	x10, [x20, #0x270]
    5368: b9001fff     	str	wzr, [sp, #0x1c]
    536c: 36007788     	tbz	w8, #0x0, 0x625c <syna_cdev_ioctls+0x151c>
    5370: b9457e88     	ldr	w8, [x20, #0x57c]
    5374: 71000d1f     	cmp	w8, #0x3
    5378: 54007a40     	b.eq	0x62c0 <syna_cdev_ioctls+0x1580>
    537c: 710012df     	cmp	w22, #0x4
    5380: 54007e23     	b.lo	0x6344 <syna_cdev_ioctls+0x1604>
    5384: 39411b68     	ldrb	w8, [x27, #0x46]
    5388: 37280088     	tbnz	w8, #0x5, 0x5398 <syna_cdev_ioctls+0x658>
    538c: 39400f69     	ldrb	w9, [x27, #0x3]
    5390: aa1503e8     	mov	x8, x21
    5394: 36100069     	tbz	w9, #0x2, 0x53a0 <syna_cdev_ioctls+0x660>
    5398: d378dea8     	lsl	x8, x21, #8
    539c: 8a8822a8     	and	x8, x21, x8, asr #8
    53a0: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
    53a4: eb09011f     	cmp	x8, x9
    53a8: 540081e8     	b.hi	0x63e4 <syna_cdev_ioctls+0x16a4>
    53ac: f90007ea     	str	x10, [sp, #0x8]
    53b0: d5384108     	mrs	x8, SP_EL0
    53b4: 94000613     	bl	0x6c00 <uaccess_ttbr0_enable>
    53b8: 9248fab9     	and	x25, x21, #0xff7fffffffffffff
    53bc: 9248fb21     	and	x1, x25, #0xff7fffffffffffff
    53c0: 910073e0     	add	x0, sp, #0x1c
    53c4: 52800082     	mov	w2, #0x4                // =4
    53c8: 94000000     	bl	0x53c8 <syna_cdev_ioctls+0x688>
		00000000000053c8:  R_AARCH64_CALL26	__arch_copy_from_user
    53cc: aa0003f7     	mov	x23, x0
    53d0: 94000619     	bl	0x6c34 <uaccess_ttbr0_disable>
    53d4: d5384108     	mrs	x8, SP_EL0
    53d8: d5384108     	mrs	x8, SP_EL0
    53dc: b5008817     	cbnz	x23, 0x64dc <syna_cdev_ioctls+0x179c>
    53e0: f9427e88     	ldr	x8, [x20, #0x4f8]
    53e4: 9113e298     	add	x24, x20, #0x4f8
    53e8: eb08031f     	cmp	x24, x8
    53ec: 540095c1     	b.ne	0x66a4 <syna_cdev_ioctls+0x1964>
    53f0: b9401ff7     	ldr	w23, [sp, #0x1c]
    53f4: 2a1703e0     	mov	w0, w23
    53f8: 94000000     	bl	0x53f8 <syna_cdev_ioctls+0x6b8>
		00000000000053f8:  R_AARCH64_CALL26	__msecs_to_jiffies
    53fc: b944f289     	ldr	w9, [x20, #0x4f0]
    5400: 7100013f     	cmp	w9, #0x0
    5404: 1a9f0408     	csinc	w8, w0, wzr, eq
    5408: f100001f     	cmp	x0, #0x0
    540c: 1a800108     	csel	w8, w8, w0, eq
    5410: 35009469     	cbnz	w9, 0x669c <syna_cdev_ioctls+0x195c>
    5414: 92607c09     	and	x9, x0, #0xffffffff00000000
    5418: aa080129     	orr	x9, x9, x8
    541c: b4009409     	cbz	x9, 0x669c <syna_cdev_ioctls+0x195c>
    5420: 2a1703e0     	mov	w0, w23
    5424: f9000bff     	str	xzr, [sp, #0x10]
    5428: f9001bff     	str	xzr, [sp, #0x30]
    542c: 94000000     	bl	0x542c <syna_cdev_ioctls+0x6ec>
		000000000000542c:  R_AARCH64_CALL26	__msecs_to_jiffies
    5430: aa0003f7     	mov	x23, x0
    5434: 9100c3e0     	add	x0, sp, #0x30
    5438: 2a1f03e1     	mov	w1, wzr
    543c: 94000000     	bl	0x543c <syna_cdev_ioctls+0x6fc>
		000000000000543c:  R_AARCH64_CALL26	init_wait_entry
    5440: 91142280     	add	x0, x20, #0x508
    5444: 9100c3e1     	add	x1, sp, #0x30
    5448: 52800022     	mov	w2, #0x1                // =1
    544c: 94000000     	bl	0x544c <syna_cdev_ioctls+0x70c>
		000000000000544c:  R_AARCH64_CALL26	prepare_to_wait_event
    5450: b944f289     	ldr	w9, [x20, #0x4f0]
    5454: aa0003e8     	mov	x8, x0
    5458: 7100013f     	cmp	w9, #0x0
    545c: fa401ae0     	ccmp	x23, #0x0, #0x0, ne
    5460: 9a9f16e0     	csinc	x0, x23, xzr, ne
    5464: 35000209     	cbnz	w9, 0x54a4 <syna_cdev_ioctls+0x764>
    5468: b40001e0     	cbz	x0, 0x54a4 <syna_cdev_ioctls+0x764>
    546c: b5009188     	cbnz	x8, 0x669c <syna_cdev_ioctls+0x195c>
    5470: 94000000     	bl	0x5470 <syna_cdev_ioctls+0x730>
		0000000000005470:  R_AARCH64_CALL26	schedule_timeout
    5474: aa0003f7     	mov	x23, x0
    5478: 91142280     	add	x0, x20, #0x508
    547c: 9100c3e1     	add	x1, sp, #0x30
    5480: 52800022     	mov	w2, #0x1                // =1
    5484: 94000000     	bl	0x5484 <syna_cdev_ioctls+0x744>
		0000000000005484:  R_AARCH64_CALL26	prepare_to_wait_event
    5488: b944f289     	ldr	w9, [x20, #0x4f0]
    548c: aa0003e8     	mov	x8, x0
    5490: 7100013f     	cmp	w9, #0x0
    5494: fa401ae0     	ccmp	x23, #0x0, #0x0, ne
    5498: 9a9f16e0     	csinc	x0, x23, xzr, ne
    549c: 35000049     	cbnz	w9, 0x54a4 <syna_cdev_ioctls+0x764>
    54a0: b5fffe60     	cbnz	x0, 0x546c <syna_cdev_ioctls+0x72c>
    54a4: aa0003f7     	mov	x23, x0
    54a8: 91142280     	add	x0, x20, #0x508
    54ac: 9100c3e1     	add	x1, sp, #0x30
    54b0: 94000000     	bl	0x54b0 <syna_cdev_ioctls+0x770>
		00000000000054b0:  R_AARCH64_CALL26	finish_wait
    54b4: 2a1703e8     	mov	w8, w23
    54b8: 14000479     	b	0x669c <syna_cdev_ioctls+0x195c>
    54bc: b94023e3     	ldr	w3, [sp, #0x20]
    54c0: aa1403e0     	mov	x0, x20
    54c4: aa1503e1     	mov	x1, x21
    54c8: aa1603e2     	mov	x2, x22
    54cc: 94000000     	bl	0x54cc <syna_cdev_ioctls+0x78c>
		00000000000054cc:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_read
    54d0: 14000019     	b	0x5534 <syna_cdev_ioctls+0x7f4>
    54d4: f94013e8     	ldr	x8, [sp, #0x20]
    54d8: 71004d1f     	cmp	w8, #0x13
    54dc: 54006c69     	b.ls	0x6268 <syna_cdev_ioctls+0x1528>
    54e0: 90000017     	adrp	x23, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000054e0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    54e4: f9400298     	ldr	x24, [x20]
    54e8: 394002e2     	ldrb	w2, [x23]
		00000000000054e8:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    54ec: 35006f82     	cbnz	w2, 0x62dc <syna_cdev_ioctls+0x159c>
    54f0: 90000019     	adrp	x25, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000054f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    54f4: 91000339     	add	x25, x25, #0x0
		00000000000054f4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
    54f8: 91004320     	add	x0, x25, #0x10
    54fc: 94000000     	bl	0x54fc <syna_cdev_ioctls+0x7bc>
		00000000000054fc:  R_AARCH64_CALL26	mutex_lock
    5500: a9402320     	ldp	x0, x8, [x25]
    5504: 39410329     	ldrb	w9, [x25, #0x40]
    5508: 11000529     	add	w9, w9, #0x1
    550c: 71004d1f     	cmp	w8, #0x13
    5510: 39010329     	strb	w9, [x25, #0x40]
    5514: 540024a9     	b.ls	0x59a8 <syna_cdev_ioctls+0xc68>
    5518: 92407d16     	and	x22, x8, #0xffffffff
    551c: 14000134     	b	0x59ec <syna_cdev_ioctls+0xcac>
    5520: b94023e3     	ldr	w3, [sp, #0x20]
    5524: aa1403e0     	mov	x0, x20
    5528: aa1503e1     	mov	x1, x21
    552c: aa1603e2     	mov	x2, x22
    5530: 94000000     	bl	0x5530 <syna_cdev_ioctls+0x7f0>
		0000000000005530:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_write
    5534: 2a0003f6     	mov	w22, w0
    5538: 140002cf     	b	0x6074 <syna_cdev_ioctls+0x1334>
    553c: 39560a88     	ldrb	w8, [x20, #0x582]
    5540: 3900d3ff     	strb	wzr, [sp, #0x34]
    5544: b90033ff     	str	wzr, [sp, #0x30]
    5548: 390073ff     	strb	wzr, [sp, #0x1c]
    554c: 37000088     	tbnz	w8, #0x0, 0x555c <syna_cdev_ioctls+0x81c>
    5550: b9457e88     	ldr	w8, [x20, #0x57c]
    5554: 71000d1f     	cmp	w8, #0x3
    5558: 54009781     	b.ne	0x6848 <syna_cdev_ioctls+0x1b08>
    555c: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		000000000000555c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5663
    5560: 91000021     	add	x1, x1, #0x0
		0000000000005560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5663
    5564: 710016df     	cmp	w22, #0x5
    5568: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005568:  R_AARCH64_ADR_PREL_PG_HI21	unk_34E03
    556c: 91000000     	add	x0, x0, #0x0
		000000000000556c:  R_AARCH64_ADD_ABS_LO12_NC	unk_34E03
    5570: 54006f23     	b.lo	0x6354 <syna_cdev_ioctls+0x1614>
    5574: b94023e8     	ldr	w8, [sp, #0x20]
    5578: aa1603e2     	mov	x2, x22
    557c: 7100151f     	cmp	w8, #0x5
    5580: 54006ec3     	b.lo	0x6358 <syna_cdev_ioctls+0x1618>
    5584: f9413a88     	ldr	x8, [x20, #0x270]
    5588: f940c509     	ldr	x9, [x8, #0x188]
    558c: b4006ca9     	cbz	x9, 0x6320 <syna_cdev_ioctls+0x15e0>
    5590: 39411b69     	ldrb	w9, [x27, #0x46]
    5594: 37280089     	tbnz	w9, #0x5, 0x55a4 <syna_cdev_ioctls+0x864>
    5598: 39400f6a     	ldrb	w10, [x27, #0x3]
    559c: aa1503e9     	mov	x9, x21
    55a0: 3610006a     	tbz	w10, #0x2, 0x55ac <syna_cdev_ioctls+0x86c>
    55a4: d378dea9     	lsl	x9, x21, #8
    55a8: 8a8922a9     	and	x9, x21, x9, asr #8
    55ac: b2705bea     	mov	x10, #0x7fffff0000      // =549755748352
    55b0: f29ffd8a     	movk	x10, #0xffec
    55b4: 91003d4a     	add	x10, x10, #0xf
    55b8: eb0a013f     	cmp	x9, x10
    55bc: 54006e68     	b.hi	0x6388 <syna_cdev_ioctls+0x1648>
    55c0: 295f5d16     	ldp	w22, w23, [x8, #0xf8]
    55c4: d5384108     	mrs	x8, SP_EL0
    55c8: 9400058e     	bl	0x6c00 <uaccess_ttbr0_enable>
    55cc: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    55d0: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    55d4: 9100c3e0     	add	x0, sp, #0x30
    55d8: 528000a2     	mov	w2, #0x5                // =5
    55dc: 94000000     	bl	0x55dc <syna_cdev_ioctls+0x89c>
		00000000000055dc:  R_AARCH64_CALL26	__arch_copy_from_user
    55e0: aa0003f5     	mov	x21, x0
    55e4: 94000594     	bl	0x6c34 <uaccess_ttbr0_disable>
    55e8: d5384108     	mrs	x8, SP_EL0
    55ec: d5384108     	mrs	x8, SP_EL0
    55f0: b50070d5     	cbnz	x21, 0x6408 <syna_cdev_ioctls+0x16c8>
    55f4: 784313e9     	ldurh	w9, [sp, #0x31]
    55f8: 784333e8     	ldurh	w8, [sp, #0x33]
    55fc: 34000069     	cbz	w9, 0x5608 <syna_cdev_ioctls+0x8c8>
    5600: f9413a8a     	ldr	x10, [x20, #0x270]
    5604: b900fd49     	str	w9, [x10, #0xfc]
    5608: 34000068     	cbz	w8, 0x5614 <syna_cdev_ioctls+0x8d4>
    560c: f9413a89     	ldr	x9, [x20, #0x270]
    5610: b900f928     	str	w8, [x9, #0xf8]
    5614: f9413a88     	ldr	x8, [x20, #0x270]
    5618: f940c508     	ldr	x8, [x8, #0x188]
    561c: b85fc110     	ldur	w16, [x8, #-0x4]
    5620: 728fac11     	movk	w17, #0x7d60
    5624: 72bcb891     	movk	w17, #0xe5c4, lsl #16
    5628: 6b11021f     	cmp	w16, w17
    562c: 54000040     	b.eq	0x5634 <syna_cdev_ioctls+0x8f4>
    5630: d4304500     	brk	#0x8228
    5634: d63f0100     	blr	x8
    5638: f9413a88     	ldr	x8, [x20, #0x270]
    563c: 90000009     	adrp	x9, 0x5000 <syna_cdev_ioctls+0x2c0>
		000000000000563c:  R_AARCH64_ADR_PREL_PG_HI21	_ZF
    5640: b900fd17     	str	w23, [x8, #0xfc]
    5644: 3940c3e8     	ldrb	w8, [sp, #0x30]
    5648: f100051f     	cmp	x8, #0x1
    564c: 1a9f17e8     	cset	w8, eq
    5650: b9000128     	str	w8, [x9]
		0000000000005650:  R_AARCH64_LDST32_ABS_LO12_NC	_ZF
    5654: f9413a88     	ldr	x8, [x20, #0x270]
    5658: b900f916     	str	w22, [x8, #0xf8]
    565c: b9400128     	ldr	w8, [x9]
		000000000000565c:  R_AARCH64_LDST32_ABS_LO12_NC	_ZF
    5660: 350050c8     	cbnz	w8, 0x6078 <syna_cdev_ioctls+0x1338>
    5664: f9413a88     	ldr	x8, [x20, #0x270]
    5668: 3942f108     	ldrb	w8, [x8, #0xbc]
    566c: 370000a8     	tbnz	w8, #0x0, 0x5680 <syna_cdev_ioctls+0x940>
    5670: f9400280     	ldr	x0, [x20]
    5674: 910073e1     	add	x1, sp, #0x1c
    5678: aa1f03e2     	mov	x2, xzr
    567c: 94000000     	bl	0x567c <syna_cdev_ioctls+0x93c>
		000000000000567c:  R_AARCH64_CALL26	syna_tcm_get_event_data
    5680: f9400288     	ldr	x8, [x20]
    5684: 39402508     	ldrb	w8, [x8, #0x9]
    5688: 7100051f     	cmp	w8, #0x1
    568c: 54004f61     	b.ne	0x6078 <syna_cdev_ioctls+0x1338>
    5690: f9435e95     	ldr	x21, [x20, #0x6b8]
    5694: 5288e389     	mov	w9, #0x471c             // =18204
    5698: 72b5c409     	movk	w9, #0xae20, lsl #16
    569c: b85fc2a8     	ldur	w8, [x21, #-0x4]
    56a0: 6b09011f     	cmp	w8, w9
    56a4: 5400a821     	b.ne	0x6ba8 <syna_cdev_ioctls+0x1e68>
    56a8: aa1403e0     	mov	x0, x20
    56ac: b85fc2b0     	ldur	w16, [x21, #-0x4]
    56b0: 728105b1     	movk	w17, #0x82d
    56b4: 72b456d1     	movk	w17, #0xa2b6, lsl #16
    56b8: 6b11021f     	cmp	w16, w17
    56bc: 54000040     	b.eq	0x56c4 <syna_cdev_ioctls+0x984>
    56c0: d43046a0     	brk	#0x8235
    56c4: d63f02a0     	blr	x21
    56c8: 2a0003f6     	mov	w22, w0
    56cc: 36f84d40     	tbz	w0, #0x1f, 0x6074 <syna_cdev_ioctls+0x1334>
    56d0: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000056d0:  R_AARCH64_ADR_PREL_PG_HI21	unk_31FD1
    56d4: 91000000     	add	x0, x0, #0x0
		00000000000056d4:  R_AARCH64_ADD_ABS_LO12_NC	unk_31FD1
    56d8: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000056d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5663
    56dc: 91000021     	add	x1, x1, #0x0
		00000000000056dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5663
    56e0: 14000376     	b	0x64b8 <syna_cdev_ioctls+0x1778>
    56e4: f94013e8     	ldr	x8, [sp, #0x20]
    56e8: 71004d1f     	cmp	w8, #0x13
    56ec: 54005c49     	b.ls	0x6274 <syna_cdev_ioctls+0x1534>
    56f0: 90000018     	adrp	x24, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000056f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    56f4: f9400296     	ldr	x22, [x20]
    56f8: 39400302     	ldrb	w2, [x24]
		00000000000056f8:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    56fc: 35005fc2     	cbnz	w2, 0x62f4 <syna_cdev_ioctls+0x15b4>
    5700: 90000019     	adrp	x25, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005700:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    5704: 91000339     	add	x25, x25, #0x0
		0000000000005704:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
    5708: 91004320     	add	x0, x25, #0x10
    570c: 94000000     	bl	0x570c <syna_cdev_ioctls+0x9cc>
		000000000000570c:  R_AARCH64_CALL26	mutex_lock
    5710: a9402320     	ldp	x0, x8, [x25]
    5714: 39410329     	ldrb	w9, [x25, #0x40]
    5718: 11000529     	add	w9, w9, #0x1
    571c: 71004d1f     	cmp	w8, #0x13
    5720: 39010329     	strb	w9, [x25, #0x40]
    5724: 54001fc9     	b.ls	0x5b1c <syna_cdev_ioctls+0xddc>
    5728: 92407d17     	and	x23, x8, #0xffffffff
    572c: 1400010d     	b	0x5b60 <syna_cdev_ioctls+0xe20>
    5730: b9457e88     	ldr	w8, [x20, #0x57c]
    5734: b94023f7     	ldr	w23, [sp, #0x20]
    5738: f9000bff     	str	xzr, [sp, #0x10]
    573c: f9001bff     	str	xzr, [sp, #0x30]
    5740: 71000d1f     	cmp	w8, #0x3
    5744: 54005a40     	b.eq	0x628c <syna_cdev_ioctls+0x154c>
    5748: 710402df     	cmp	w22, #0x100
    574c: 54005e03     	b.lo	0x630c <syna_cdev_ioctls+0x15cc>
    5750: 340060b7     	cbz	w23, 0x6364 <syna_cdev_ioctls+0x1624>
    5754: 710406ff     	cmp	w23, #0x101
    5758: 540064a2     	b.hs	0x63ec <syna_cdev_ioctls+0x16ac>
    575c: 9100c3e0     	add	x0, sp, #0x30
    5760: 924022e1     	and	x1, x23, #0x1ff
    5764: 2a1f03e2     	mov	w2, wzr
    5768: 94000000     	bl	0x5768 <syna_cdev_ioctls+0xa28>
		0000000000005768:  R_AARCH64_CALL26	__check_object_size
    576c: 39411b68     	ldrb	w8, [x27, #0x46]
    5770: 37280088     	tbnz	w8, #0x5, 0x5780 <syna_cdev_ioctls+0xa40>
    5774: 39400f69     	ldrb	w9, [x27, #0x3]
    5778: aa1503e8     	mov	x8, x21
    577c: 36100069     	tbz	w9, #0x2, 0x5788 <syna_cdev_ioctls+0xa48>
    5780: d378dea8     	lsl	x8, x21, #8
    5784: 8a8822a8     	and	x8, x21, x8, asr #8
    5788: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    578c: aa1703f6     	mov	x22, x23
    5790: cb170129     	sub	x9, x9, x23
    5794: eb08013f     	cmp	x9, x8
    5798: 540051e3     	b.lo	0x61d4 <syna_cdev_ioctls+0x1494>
    579c: d5384108     	mrs	x8, SP_EL0
    57a0: 94000518     	bl	0x6c00 <uaccess_ttbr0_enable>
    57a4: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    57a8: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    57ac: 9100c3e0     	add	x0, sp, #0x30
    57b0: aa1703e2     	mov	x2, x23
    57b4: 9100c3f8     	add	x24, sp, #0x30
    57b8: 94000000     	bl	0x57b8 <syna_cdev_ioctls+0xa78>
		00000000000057b8:  R_AARCH64_CALL26	__arch_copy_from_user
    57bc: aa0003f6     	mov	x22, x0
    57c0: 9400051d     	bl	0x6c34 <uaccess_ttbr0_disable>
    57c4: d5384108     	mrs	x8, SP_EL0
    57c8: d5384108     	mrs	x8, SP_EL0
    57cc: b5005056     	cbnz	x22, 0x61d4 <syna_cdev_ioctls+0x1494>
    57d0: aa1f03f5     	mov	x21, xzr
    57d4: 90000017     	adrp	x23, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000057d4:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_process_reports
    57d8: 910002f7     	add	x23, x23, #0x0
		00000000000057d8:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_process_reports
    57dc: 14000004     	b	0x57ec <syna_cdev_ioctls+0xaac>
    57e0: 910006b5     	add	x21, x21, #0x1
    57e4: f10402bf     	cmp	x21, #0x100
    57e8: 54004480     	b.eq	0x6078 <syna_cdev_ioctls+0x1338>
    57ec: 38756b08     	ldrb	w8, [x24, x21]
    57f0: 7100051f     	cmp	w8, #0x1
    57f4: 54ffff61     	b.ne	0x57e0 <syna_cdev_ioctls+0xaa0>
    57f8: f9400280     	ldr	x0, [x20]
    57fc: 2a1503e1     	mov	w1, w21
    5800: aa1703e2     	mov	x2, x23
    5804: aa1403e3     	mov	x3, x20
    5808: 94000000     	bl	0x5808 <syna_cdev_ioctls+0xac8>
		0000000000005808:  R_AARCH64_CALL26	syna_tcm_set_data_duplicator
    580c: 36fffea0     	tbz	w0, #0x1f, 0x57e0 <syna_cdev_ioctls+0xaa0>
    5810: 2a0003f6     	mov	w22, w0
    5814: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005814:  R_AARCH64_ADR_PREL_PG_HI21	unk_3AA0E
    5818: 91000000     	add	x0, x0, #0x0
		0000000000005818:  R_AARCH64_ADD_ABS_LO12_NC	unk_3AA0E
    581c: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		000000000000581c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x443
    5820: 91000021     	add	x1, x1, #0x0
		0000000000005820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x443
    5824: 2a1503e2     	mov	w2, w21
    5828: 94000000     	bl	0x5828 <syna_cdev_ioctls+0xae8>
		0000000000005828:  R_AARCH64_CALL26	_printk
    582c: 1400023a     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    5830: 39560a88     	ldrb	w8, [x20, #0x582]
    5834: b94023f7     	ldr	w23, [sp, #0x20]
    5838: 37000088     	tbnz	w8, #0x0, 0x5848 <syna_cdev_ioctls+0xb08>
    583c: b9457e88     	ldr	w8, [x20, #0x57c]
    5840: 71000d1f     	cmp	w8, #0x3
    5844: 54008121     	b.ne	0x6868 <syna_cdev_ioctls+0x1b28>
    5848: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca4
    584c: 91000021     	add	x1, x1, #0x0
		000000000000584c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca4
    5850: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005850:  R_AARCH64_ADR_PREL_PG_HI21	unk_3621C
    5854: 91000000     	add	x0, x0, #0x0
		0000000000005854:  R_AARCH64_ADD_ABS_LO12_NC	unk_3621C
    5858: 340057f6     	cbz	w22, 0x6354 <syna_cdev_ioctls+0x1614>
    585c: 6b1702df     	cmp	w22, w23
    5860: 540057a3     	b.lo	0x6354 <syna_cdev_ioctls+0x1614>
    5864: f942d696     	ldr	x22, [x20, #0x5a8]
    5868: b40000b6     	cbz	x22, 0x587c <syna_cdev_ioctls+0xb3c>
    586c: 94000000     	bl	0x586c <syna_cdev_ioctls+0xb2c>
		000000000000586c:  R_AARCH64_CALL26	syna_request_managed_device
    5870: b4007d60     	cbz	x0, 0x681c <syna_cdev_ioctls+0x1adc>
    5874: aa1603e1     	mov	x1, x22
    5878: 94000000     	bl	0x5878 <syna_cdev_ioctls+0xb38>
		0000000000005878:  R_AARCH64_CALL26	devm_kfree
    587c: 94000000     	bl	0x587c <syna_cdev_ioctls+0xb3c>
		000000000000587c:  R_AARCH64_CALL26	syna_request_managed_device
    5880: b40057e0     	cbz	x0, 0x637c <syna_cdev_ioctls+0x163c>
    5884: b4005877     	cbz	x23, 0x6390 <syna_cdev_ioctls+0x1650>
    5888: aa1703e1     	mov	x1, x23
    588c: 5281b802     	mov	w2, #0xdc0              // =3520
    5890: 94000000     	bl	0x5890 <syna_cdev_ioctls+0xb50>
		0000000000005890:  R_AARCH64_CALL26	devm_kmalloc
    5894: f902d680     	str	x0, [x20, #0x5a8]
    5898: b40058a0     	cbz	x0, 0x63ac <syna_cdev_ioctls+0x166c>
    589c: 2a1f03e1     	mov	w1, wzr
    58a0: aa1703e2     	mov	x2, x23
    58a4: aa0003f6     	mov	x22, x0
    58a8: 94000000     	bl	0x58a8 <syna_cdev_ioctls+0xb68>
		00000000000058a8:  R_AARCH64_CALL26	memset
    58ac: aa1603e0     	mov	x0, x22
    58b0: aa1703e1     	mov	x1, x23
    58b4: 2a1f03e2     	mov	w2, wzr
    58b8: 94000000     	bl	0x58b8 <syna_cdev_ioctls+0xb78>
		00000000000058b8:  R_AARCH64_CALL26	__check_object_size
    58bc: 39411b68     	ldrb	w8, [x27, #0x46]
    58c0: 37280088     	tbnz	w8, #0x5, 0x58d0 <syna_cdev_ioctls+0xb90>
    58c4: 39400f69     	ldrb	w9, [x27, #0x3]
    58c8: aa1503e8     	mov	x8, x21
    58cc: 36100069     	tbz	w9, #0x2, 0x58d8 <syna_cdev_ioctls+0xb98>
    58d0: d378dea8     	lsl	x8, x21, #8
    58d4: 8a8822a8     	and	x8, x21, x8, asr #8
    58d8: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    58dc: aa1703f4     	mov	x20, x23
    58e0: cb170129     	sub	x9, x9, x23
    58e4: eb08013f     	cmp	x9, x8
    58e8: 540001e3     	b.lo	0x5924 <syna_cdev_ioctls+0xbe4>
    58ec: d5384108     	mrs	x8, SP_EL0
    58f0: 940004c4     	bl	0x6c00 <uaccess_ttbr0_enable>
    58f4: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    58f8: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    58fc: aa1603e0     	mov	x0, x22
    5900: aa1703e2     	mov	x2, x23
    5904: 94000000     	bl	0x5904 <syna_cdev_ioctls+0xbc4>
		0000000000005904:  R_AARCH64_CALL26	__arch_copy_from_user
    5908: aa0003f4     	mov	x20, x0
    590c: 940004ca     	bl	0x6c34 <uaccess_ttbr0_disable>
    5910: d5384108     	mrs	x8, SP_EL0
    5914: d5384108     	mrs	x8, SP_EL0
    5918: b4003b14     	cbz	x20, 0x6078 <syna_cdev_ioctls+0x1338>
    591c: eb1402ff     	cmp	x23, x20
    5920: 54009683     	b.lo	0x6bf0 <syna_cdev_ioctls+0x1eb0>
    5924: cb1402e8     	sub	x8, x23, x20
    5928: 2a1f03e1     	mov	w1, wzr
    592c: aa1403e2     	mov	x2, x20
    5930: 8b0802c0     	add	x0, x22, x8
    5934: aa1403f3     	mov	x19, x20
    5938: 94000000     	bl	0x5938 <syna_cdev_ioctls+0xbf8>
		0000000000005938:  R_AARCH64_CALL26	memset
    593c: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		000000000000593c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca4
    5940: 91000021     	add	x1, x1, #0x0
		0000000000005940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca4
    5944: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005944:  R_AARCH64_ADR_PREL_PG_HI21	unk_3489E
    5948: 91000000     	add	x0, x0, #0x0
		0000000000005948:  R_AARCH64_ADD_ABS_LO12_NC	unk_3489E
    594c: 1400034e     	b	0x6684 <syna_cdev_ioctls+0x1944>
    5950: 52800200     	mov	w0, #0x10               // =16
    5954: 14000003     	b	0x5960 <syna_cdev_ioctls+0xc20>
    5958: f100401f     	cmp	x0, #0x10
    595c: 54009388     	b.hi	0x6bcc <syna_cdev_ioctls+0x1e8c>
    5960: 910083e8     	add	x8, sp, #0x20
    5964: aa0003e2     	mov	x2, x0
    5968: 2a1f03e1     	mov	w1, wzr
    596c: cb000108     	sub	x8, x8, x0
    5970: aa0203f3     	mov	x19, x2
    5974: 91004100     	add	x0, x8, #0x10
    5978: 94000000     	bl	0x5978 <syna_cdev_ioctls+0xc38>
		0000000000005978:  R_AARCH64_CALL26	memset
    597c: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		000000000000597c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1510
    5980: 91000021     	add	x1, x1, #0x0
		0000000000005980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1510
    5984: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005984:  R_AARCH64_ADR_PREL_PG_HI21	unk_34178
    5988: 91000000     	add	x0, x0, #0x0
		0000000000005988:  R_AARCH64_ADD_ABS_LO12_NC	unk_34178
    598c: 1400033e     	b	0x6684 <syna_cdev_ioctls+0x1944>
    5990: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005990:  R_AARCH64_ADR_PREL_PG_HI21	unk_3770F
    5994: 91000000     	add	x0, x0, #0x0
		0000000000005994:  R_AARCH64_ADD_ABS_LO12_NC	unk_3770F
    5998: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005998:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1510
    599c: 91000021     	add	x1, x1, #0x0
		000000000000599c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1510
    59a0: aa1f03e2     	mov	x2, xzr
    59a4: 14000339     	b	0x6688 <syna_cdev_ioctls+0x1948>
    59a8: b40000c0     	cbz	x0, 0x59c0 <syna_cdev_ioctls+0xc80>
    59ac: aa0003f6     	mov	x22, x0
    59b0: 94000000     	bl	0x59b0 <syna_cdev_ioctls+0xc70>
		00000000000059b0:  R_AARCH64_CALL26	syna_request_managed_device
    59b4: b4008480     	cbz	x0, 0x6a44 <syna_cdev_ioctls+0x1d04>
    59b8: aa1603e1     	mov	x1, x22
    59bc: 94000000     	bl	0x59bc <syna_cdev_ioctls+0xc7c>
		00000000000059bc:  R_AARCH64_CALL26	devm_kfree
    59c0: 94000000     	bl	0x59c0 <syna_cdev_ioctls+0xc80>
		00000000000059c0:  R_AARCH64_CALL26	syna_request_managed_device
    59c4: b4008500     	cbz	x0, 0x6a64 <syna_cdev_ioctls+0x1d24>
    59c8: 52800281     	mov	w1, #0x14               // =20
    59cc: 5281b802     	mov	w2, #0xdc0              // =3520
    59d0: 52800296     	mov	w22, #0x14              // =20
    59d4: 94000000     	bl	0x59d4 <syna_cdev_ioctls+0xc94>
		00000000000059d4:  R_AARCH64_CALL26	devm_kmalloc
    59d8: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000059d8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    59dc: f9000100     	str	x0, [x8]
		00000000000059dc:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    59e0: b4008520     	cbz	x0, 0x6a84 <syna_cdev_ioctls+0x1d44>
    59e4: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		00000000000059e4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    59e8: b9000116     	str	w22, [x8]
		00000000000059e8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
    59ec: 2a1f03e1     	mov	w1, wzr
    59f0: aa1603e2     	mov	x2, x22
    59f4: 94000000     	bl	0x59f4 <syna_cdev_ioctls+0xcb4>
		00000000000059f4:  R_AARCH64_CALL26	memset
    59f8: f9400328     	ldr	x8, [x25]
    59fc: b9000f3f     	str	wzr, [x25, #0xc]
    5a00: b900111f     	str	wzr, [x8, #0x10]
    5a04: a9007d1f     	stp	xzr, xzr, [x8]
    5a08: f9400336     	ldr	x22, [x25]
    5a0c: b9403b08     	ldr	w8, [x24, #0x38]
    5a10: 790006c8     	strh	w8, [x22, #0x2]
    5a14: b9403f08     	ldr	w8, [x24, #0x3c]
    5a18: 79000ac8     	strh	w8, [x22, #0x4]
    5a1c: 394002c8     	ldrb	w8, [x22]
    5a20: 39560a89     	ldrb	w9, [x20, #0x582]
    5a24: 121f7908     	and	w8, w8, #0xfffffffe
    5a28: 2a090108     	orr	w8, w8, w9
    5a2c: 390002c8     	strb	w8, [x22]
    5a30: 121c7908     	and	w8, w8, #0xfffffff7
    5a34: b9457e89     	ldr	w9, [x20, #0x57c]
    5a38: 71000d3f     	cmp	w9, #0x3
    5a3c: 1a9f17e9     	cset	w9, eq
    5a40: 2a090d08     	orr	w8, w8, w9, lsl #3
    5a44: 390002c8     	strb	w8, [x22]
    5a48: 39420308     	ldrb	w8, [x24, #0x80]
    5a4c: 34000048     	cbz	w8, 0x5a54 <syna_cdev_ioctls+0xd14>
    5a50: 390006c8     	strb	w8, [x22, #0x1]
    5a54: 794012c8     	ldrh	w8, [x22, #0x8]
    5a58: 394deb09     	ldrb	w9, [x24, #0x37a]
    5a5c: 121f7908     	and	w8, w8, #0xfffffffe
    5a60: 2a090108     	orr	w8, w8, w9
    5a64: 90000009     	adrp	x9, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005a64:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
    5a68: 91000129     	add	x9, x9, #0x0
		0000000000005a68:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xb4
    5a6c: 790012c8     	strh	w8, [x22, #0x8]
    5a70: 7940012a     	ldrh	w10, [x9]
    5a74: 33185d48     	bfi	w8, w10, #8, #24
    5a78: 790012c8     	strh	w8, [x22, #0x8]
    5a7c: f8404128     	ldur	x8, [x9, #0x4]
    5a80: d342fd08     	lsr	x8, x8, #2
    5a84: 39002ac8     	strb	w8, [x22, #0xa]
    5a88: 39411b68     	ldrb	w8, [x27, #0x46]
    5a8c: 37280088     	tbnz	w8, #0x5, 0x5a9c <syna_cdev_ioctls+0xd5c>
    5a90: 39400f69     	ldrb	w9, [x27, #0x3]
    5a94: aa1503e8     	mov	x8, x21
    5a98: 36100069     	tbz	w9, #0x2, 0x5aa4 <syna_cdev_ioctls+0xd64>
    5a9c: d378dea8     	lsl	x8, x21, #8
    5aa0: 8a8822a8     	and	x8, x21, x8, asr #8
    5aa4: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
    5aa8: f29ffd89     	movk	x9, #0xffec
    5aac: eb09011f     	cmp	x8, x9
    5ab0: 54003828     	b.hi	0x61b4 <syna_cdev_ioctls+0x1474>
    5ab4: d5384108     	mrs	x8, SP_EL0
    5ab8: 94000452     	bl	0x6c00 <uaccess_ttbr0_enable>
    5abc: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    5ac0: 9248f900     	and	x0, x8, #0xff7fffffffffffff
    5ac4: aa1603e1     	mov	x1, x22
    5ac8: 52800282     	mov	w2, #0x14               // =20
    5acc: 52800296     	mov	w22, #0x14              // =20
    5ad0: 94000000     	bl	0x5ad0 <syna_cdev_ioctls+0xd90>
		0000000000005ad0:  R_AARCH64_CALL26	__arch_copy_to_user
    5ad4: aa0003f4     	mov	x20, x0
    5ad8: 94000457     	bl	0x6c34 <uaccess_ttbr0_disable>
    5adc: d5384108     	mrs	x8, SP_EL0
    5ae0: d5384108     	mrs	x8, SP_EL0
    5ae4: 35003694     	cbnz	w20, 0x61b4 <syna_cdev_ioctls+0x1474>
    5ae8: 394002e8     	ldrb	w8, [x23]
		0000000000005ae8:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    5aec: 7100051f     	cmp	w8, #0x1
    5af0: 54002b80     	b.eq	0x6060 <syna_cdev_ioctls+0x1320>
    5af4: 2a0803e2     	mov	w2, w8
    5af8: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005af8:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
    5afc: 91000000     	add	x0, x0, #0x0
		0000000000005afc:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
    5b00: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005b00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a65
    5b04: 91000021     	add	x1, x1, #0x0
		0000000000005b04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a65
    5b08: 94000000     	bl	0x5b08 <syna_cdev_ioctls+0xdc8>
		0000000000005b08:  R_AARCH64_CALL26	_printk
    5b0c: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005b0c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    5b10: 39400108     	ldrb	w8, [x8]
		0000000000005b10:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    5b14: 51000508     	sub	w8, w8, #0x1
    5b18: 14000153     	b	0x6064 <syna_cdev_ioctls+0x1324>
    5b1c: b40000c0     	cbz	x0, 0x5b34 <syna_cdev_ioctls+0xdf4>
    5b20: aa0003f7     	mov	x23, x0
    5b24: 94000000     	bl	0x5b24 <syna_cdev_ioctls+0xde4>
		0000000000005b24:  R_AARCH64_CALL26	syna_request_managed_device
    5b28: b4007d40     	cbz	x0, 0x6ad0 <syna_cdev_ioctls+0x1d90>
    5b2c: aa1703e1     	mov	x1, x23
    5b30: 94000000     	bl	0x5b30 <syna_cdev_ioctls+0xdf0>
		0000000000005b30:  R_AARCH64_CALL26	devm_kfree
    5b34: 94000000     	bl	0x5b34 <syna_cdev_ioctls+0xdf4>
		0000000000005b34:  R_AARCH64_CALL26	syna_request_managed_device
    5b38: b4007dc0     	cbz	x0, 0x6af0 <syna_cdev_ioctls+0x1db0>
    5b3c: 52800281     	mov	w1, #0x14               // =20
    5b40: 5281b802     	mov	w2, #0xdc0              // =3520
    5b44: 52800297     	mov	w23, #0x14              // =20
    5b48: 94000000     	bl	0x5b48 <syna_cdev_ioctls+0xe08>
		0000000000005b48:  R_AARCH64_CALL26	devm_kmalloc
    5b4c: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005b4c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    5b50: f9000100     	str	x0, [x8]
		0000000000005b50:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    5b54: b4007de0     	cbz	x0, 0x6b10 <syna_cdev_ioctls+0x1dd0>
    5b58: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005b58:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    5b5c: b9000117     	str	w23, [x8]
		0000000000005b5c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
    5b60: 2a1f03e1     	mov	w1, wzr
    5b64: aa1703e2     	mov	x2, x23
    5b68: 94000000     	bl	0x5b68 <syna_cdev_ioctls+0xe28>
		0000000000005b68:  R_AARCH64_CALL26	memset
    5b6c: 39411b68     	ldrb	w8, [x27, #0x46]
    5b70: f9400337     	ldr	x23, [x25]
    5b74: b9000f3f     	str	wzr, [x25, #0xc]
    5b78: 37280088     	tbnz	w8, #0x5, 0x5b88 <syna_cdev_ioctls+0xe48>
    5b7c: 39400f69     	ldrb	w9, [x27, #0x3]
    5b80: aa1503e8     	mov	x8, x21
    5b84: 36100069     	tbz	w9, #0x2, 0x5b90 <syna_cdev_ioctls+0xe50>
    5b88: d378dea8     	lsl	x8, x21, #8
    5b8c: 8a8822a8     	and	x8, x21, x8, asr #8
    5b90: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
    5b94: f29ffd89     	movk	x9, #0xffec
    5b98: b2400129     	orr	x9, x9, #0x1
    5b9c: eb09011f     	cmp	x8, x9
    5ba0: 540001c2     	b.hs	0x5bd8 <syna_cdev_ioctls+0xe98>
    5ba4: d5384108     	mrs	x8, SP_EL0
    5ba8: 94000416     	bl	0x6c00 <uaccess_ttbr0_enable>
    5bac: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    5bb0: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    5bb4: aa1703e0     	mov	x0, x23
    5bb8: 52800282     	mov	w2, #0x14               // =20
    5bbc: 94000000     	bl	0x5bbc <syna_cdev_ioctls+0xe7c>
		0000000000005bbc:  R_AARCH64_CALL26	__arch_copy_from_user
    5bc0: aa0003f5     	mov	x21, x0
    5bc4: 9400041c     	bl	0x6c34 <uaccess_ttbr0_disable>
    5bc8: d5384108     	mrs	x8, SP_EL0
    5bcc: d5384108     	mrs	x8, SP_EL0
    5bd0: b5000075     	cbnz	x21, 0x5bdc <syna_cdev_ioctls+0xe9c>
    5bd4: 14000008     	b	0x5bf4 <syna_cdev_ioctls+0xeb4>
    5bd8: 52800295     	mov	w21, #0x14              // =20
    5bdc: cb1502e8     	sub	x8, x23, x21
    5be0: 2a1f03e1     	mov	w1, wzr
    5be4: aa1503e2     	mov	x2, x21
    5be8: 91005100     	add	x0, x8, #0x14
    5bec: 94000000     	bl	0x5bec <syna_cdev_ioctls+0xeac>
		0000000000005bec:  R_AARCH64_CALL26	memset
    5bf0: 35004915     	cbnz	w21, 0x6510 <syna_cdev_ioctls+0x17d0>
    5bf4: 39560a88     	ldrb	w8, [x20, #0x582]
    5bf8: 7100051f     	cmp	w8, #0x1
    5bfc: 540022a1     	b.ne	0x6050 <syna_cdev_ioctls+0x1310>
    5c00: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005c00:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    5c04: f9400115     	ldr	x21, [x8]
		0000000000005c04:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    5c08: 79400aaa     	ldrh	w10, [x21, #0x4]
    5c0c: 34001e0a     	cbz	w10, 0x5fcc <syna_cdev_ioctls+0x128c>
    5c10: b9403ecb     	ldr	w11, [x22, #0x3c]
    5c14: aa1503e8     	mov	x8, x21
    5c18: 78402d0c     	ldrh	w12, [x8, #0x2]!
    5c1c: 6b0a017f     	cmp	w11, w10
    5c20: 1a9f07e9     	cset	w9, ne
    5c24: 35001dcc     	cbnz	w12, 0x5fdc <syna_cdev_ioctls+0x129c>
    5c28: 6b0a017f     	cmp	w11, w10
    5c2c: 54001e21     	b.ne	0x5ff0 <syna_cdev_ioctls+0x12b0>
    5c30: 140000f9     	b	0x6014 <syna_cdev_ioctls+0x12d4>
    5c34: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14f3
    5c38: 91000021     	add	x1, x1, #0x0
		0000000000005c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14f3
    5c3c: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005c3c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3550D
    5c40: 91000000     	add	x0, x0, #0x0
		0000000000005c40:  R_AARCH64_ADD_ABS_LO12_NC	unk_3550D
    5c44: 12001ee2     	and	w2, w23, #0xff
    5c48: 94000000     	bl	0x5c48 <syna_cdev_ioctls+0xf08>
		0000000000005c48:  R_AARCH64_CALL26	_printk
    5c4c: 128002b6     	mov	w22, #-0x16             // =-22
    5c50: 14000131     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    5c54: 92407d14     	and	x20, x8, #0xffffffff
    5c58: 2a1f03e1     	mov	w1, wzr
    5c5c: aa1403e2     	mov	x2, x20
    5c60: 94000000     	bl	0x5c60 <syna_cdev_ioctls+0xf20>
		0000000000005c60:  R_AARCH64_CALL26	memset
    5c64: f94013e8     	ldr	x8, [sp, #0x20]
    5c68: f9400334     	ldr	x20, [x25]
    5c6c: b9000f3f     	str	wzr, [x25, #0xc]
    5c70: 37f84608     	tbnz	w8, #0x1f, 0x6530 <syna_cdev_ioctls+0x17f0>
    5c74: 92407d18     	and	x24, x8, #0xffffffff
    5c78: aa1403e0     	mov	x0, x20
    5c7c: 2a1f03e2     	mov	w2, wzr
    5c80: 92407b01     	and	x1, x24, #0x7fffffff
    5c84: 94000000     	bl	0x5c84 <syna_cdev_ioctls+0xf44>
		0000000000005c84:  R_AARCH64_CALL26	__check_object_size
    5c88: 39411b68     	ldrb	w8, [x27, #0x46]
    5c8c: 37280088     	tbnz	w8, #0x5, 0x5c9c <syna_cdev_ioctls+0xf5c>
    5c90: 39400f69     	ldrb	w9, [x27, #0x3]
    5c94: aa1503e8     	mov	x8, x21
    5c98: 36100069     	tbz	w9, #0x2, 0x5ca4 <syna_cdev_ioctls+0xf64>
    5c9c: d378dea8     	lsl	x8, x21, #8
    5ca0: 8a8822a8     	and	x8, x21, x8, asr #8
    5ca4: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    5ca8: cb180129     	sub	x9, x9, x24
    5cac: eb08013f     	cmp	x9, x8
    5cb0: 54000bc2     	b.hs	0x5e28 <syna_cdev_ioctls+0x10e8>
    5cb4: aa1803f9     	mov	x25, x24
    5cb8: 14000068     	b	0x5e58 <syna_cdev_ioctls+0x1118>
    5cbc: d5384108     	mrs	x8, SP_EL0
    5cc0: 940003d0     	bl	0x6c00 <uaccess_ttbr0_enable>
    5cc4: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    5cc8: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    5ccc: 9100c3e0     	add	x0, sp, #0x30
    5cd0: aa1603e2     	mov	x2, x22
    5cd4: 94000000     	bl	0x5cd4 <syna_cdev_ioctls+0xf94>
		0000000000005cd4:  R_AARCH64_CALL26	__arch_copy_from_user
    5cd8: aa0003f5     	mov	x21, x0
    5cdc: 940003d6     	bl	0x6c34 <uaccess_ttbr0_disable>
    5ce0: d5384108     	mrs	x8, SP_EL0
    5ce4: d5384108     	mrs	x8, SP_EL0
    5ce8: b40002d5     	cbz	x21, 0x5d40 <syna_cdev_ioctls+0x1000>
    5cec: 92607ea8     	and	x8, x21, #0xffffffff00000000
    5cf0: 2a1503f5     	mov	w21, w21
    5cf4: 52800089     	mov	w9, #0x4                // =4
    5cf8: aa150102     	orr	x2, x8, x21
    5cfc: cb0202c8     	sub	x8, x22, x2
    5d00: cb080129     	sub	x9, x9, x8
    5d04: f100151f     	cmp	x8, #0x5
    5d08: 9a9f3121     	csel	x1, x9, xzr, lo
    5d0c: eb02003f     	cmp	x1, x2
    5d10: 540076c3     	b.lo	0x6be8 <syna_cdev_ioctls+0x1ea8>
    5d14: 52820009     	mov	w9, #0x1000             // =4096
    5d18: eb080128     	subs	x8, x9, x8
    5d1c: 9a8833e1     	csel	x1, xzr, x8, lo
    5d20: eb02003f     	cmp	x1, x2
    5d24: 54007623     	b.lo	0x6be8 <syna_cdev_ioctls+0x1ea8>
    5d28: 9100c3e8     	add	x8, sp, #0x30
    5d2c: 2a1f03e1     	mov	w1, wzr
    5d30: 8b160108     	add	x8, x8, x22
    5d34: cb020100     	sub	x0, x8, x2
    5d38: 94000000     	bl	0x5d38 <syna_cdev_ioctls+0xff8>
		0000000000005d38:  R_AARCH64_CALL26	memset
    5d3c: 35004535     	cbnz	w21, 0x65e0 <syna_cdev_ioctls+0x18a0>
    5d40: b94033e8     	ldr	w8, [sp, #0x30]
    5d44: 34000348     	cbz	w8, 0x5dac <syna_cdev_ioctls+0x106c>
    5d48: 7100051f     	cmp	w8, #0x1
    5d4c: 540062a1     	b.ne	0x69a0 <syna_cdev_ioctls+0x1c60>
    5d50: f9413a88     	ldr	x8, [x20, #0x270]
    5d54: 3942f108     	ldrb	w8, [x8, #0xbc]
    5d58: 37001908     	tbnz	w8, #0x0, 0x6078 <syna_cdev_ioctls+0x1338>
    5d5c: f94022e8     	ldr	x8, [x23, #0x40]
    5d60: 910022e0     	add	x0, x23, #0x8
    5d64: 52800021     	mov	w1, #0x1                // =1
    5d68: b85fc110     	ldur	w16, [x8, #-0x4]
    5d6c: 72894471     	movk	w17, #0x4a23
    5d70: 72ae9ab1     	movk	w17, #0x74d5, lsl #16
    5d74: 6b11021f     	cmp	w16, w17
    5d78: 54000040     	b.eq	0x5d80 <syna_cdev_ioctls+0x1040>
    5d7c: d4304500     	brk	#0x8228
    5d80: d63f0100     	blr	x8
    5d84: 37f86500     	tbnz	w0, #0x1f, 0x6a24 <syna_cdev_ioctls+0x1ce4>
    5d88: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005d88:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B187
    5d8c: 91000000     	add	x0, x0, #0x0
		0000000000005d8c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B187
    5d90: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    5d94: 91000021     	add	x1, x1, #0x0
		0000000000005d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    5d98: aa1f03e2     	mov	x2, xzr
    5d9c: 94000000     	bl	0x5d9c <syna_cdev_ioctls+0x105c>
		0000000000005d9c:  R_AARCH64_CALL26	_printk
    5da0: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005da0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
    5da4: b900011f     	str	wzr, [x8]
		0000000000005da4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
    5da8: 140000b4     	b	0x6078 <syna_cdev_ioctls+0x1338>
    5dac: f9413a88     	ldr	x8, [x20, #0x270]
    5db0: 3942f108     	ldrb	w8, [x8, #0xbc]
    5db4: 7100051f     	cmp	w8, #0x1
    5db8: 54001601     	b.ne	0x6078 <syna_cdev_ioctls+0x1338>
    5dbc: f94022f5     	ldr	x21, [x23, #0x40]
    5dc0: 528c3629     	mov	w9, #0x61b1             // =25009
    5dc4: 72a685c9     	movk	w9, #0x342e, lsl #16
    5dc8: b85fc2a8     	ldur	w8, [x21, #-0x4]
    5dcc: 6b09011f     	cmp	w8, w9
    5dd0: 54000100     	b.eq	0x5df0 <syna_cdev_ioctls+0x10b0>
    5dd4: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    5dd8: 91000000     	add	x0, x0, #0x0
		0000000000005dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    5ddc: 90000002     	adrp	x2, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4543
    5de0: 91000042     	add	x2, x2, #0x0
		0000000000005de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4543
    5de4: 52904501     	mov	w1, #0x8228             // =33320
    5de8: 52804243     	mov	w3, #0x212              // =530
    5dec: 94000000     	bl	0x5dec <syna_cdev_ioctls+0x10ac>
		0000000000005dec:  R_AARCH64_CALL26	_printk
    5df0: 910022e0     	add	x0, x23, #0x8
    5df4: aa1f03e1     	mov	x1, xzr
    5df8: b85fc2b0     	ldur	w16, [x21, #-0x4]
    5dfc: 72910bf1     	movk	w17, #0x885f
    5e00: 72b2b8f1     	movk	w17, #0x95c7, lsl #16
    5e04: 6b11021f     	cmp	w16, w17
    5e08: 54000040     	b.eq	0x5e10 <syna_cdev_ioctls+0x10d0>
    5e0c: d43046a0     	brk	#0x8235
    5e10: d63f02a0     	blr	x21
    5e14: aa0003f6     	mov	x22, x0
    5e18: 36f86b36     	tbz	w22, #0x1f, 0x6b7c <syna_cdev_ioctls+0x1e3c>
    5e1c: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005e1c:  R_AARCH64_ADR_PREL_PG_HI21	unk_33001
    5e20: 91000000     	add	x0, x0, #0x0
		0000000000005e20:  R_AARCH64_ADD_ABS_LO12_NC	unk_33001
    5e24: 14000303     	b	0x6a30 <syna_cdev_ioctls+0x1cf0>
    5e28: d5384108     	mrs	x8, SP_EL0
    5e2c: 94000375     	bl	0x6c00 <uaccess_ttbr0_enable>
    5e30: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    5e34: 9248f901     	and	x1, x8, #0xff7fffffffffffff
    5e38: aa1403e0     	mov	x0, x20
    5e3c: aa1803e2     	mov	x2, x24
    5e40: 94000000     	bl	0x5e40 <syna_cdev_ioctls+0x1100>
		0000000000005e40:  R_AARCH64_CALL26	__arch_copy_from_user
    5e44: aa0003f9     	mov	x25, x0
    5e48: 9400037b     	bl	0x6c34 <uaccess_ttbr0_disable>
    5e4c: d5384108     	mrs	x8, SP_EL0
    5e50: d5384108     	mrs	x8, SP_EL0
    5e54: b40000f9     	cbz	x25, 0x5e70 <syna_cdev_ioctls+0x1130>
    5e58: cb190308     	sub	x8, x24, x25
    5e5c: 2a1f03e1     	mov	w1, wzr
    5e60: aa1903e2     	mov	x2, x25
    5e64: 8b080280     	add	x0, x20, x8
    5e68: 94000000     	bl	0x5e68 <syna_cdev_ioctls+0x1128>
		0000000000005e68:  R_AARCH64_CALL26	memset
    5e6c: 35003719     	cbnz	w25, 0x654c <syna_cdev_ioctls+0x180c>
    5e70: 78401298     	ldurh	w24, [x20, #0x1]
    5e74: b94023e8     	ldr	w8, [sp, #0x20]
    5e78: 6b08031f     	cmp	w24, w8
    5e7c: 54003748     	b.hi	0x6564 <syna_cdev_ioctls+0x1824>
    5e80: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x62b3
    5e84: 91000021     	add	x1, x1, #0x0
		0000000000005e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x62b3
    5e88: 90000002     	adrp	x2, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005e88:  R_AARCH64_ADR_PREL_PG_HI21	dummy_lock_key
    5e8c: 91000042     	add	x2, x2, #0x0
		0000000000005e8c:  R_AARCH64_ADD_ABS_LO12_NC	dummy_lock_key
    5e90: 910043e0     	add	x0, sp, #0x10
    5e94: f9001bff     	str	xzr, [sp, #0x30]
    5e98: 94000000     	bl	0x5e98 <syna_cdev_ioctls+0x1158>
		0000000000005e98:  R_AARCH64_CALL26	__mutex_init
    5e9c: aa1403e2     	mov	x2, x20
    5ea0: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005ea0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
    5ea4: 910073e4     	add	x4, sp, #0x1c
    5ea8: 38403441     	ldrb	w1, [x2], #0x3
    5eac: b9400106     	ldr	w6, [x8]
		0000000000005eac:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
    5eb0: 9100c3e5     	add	x5, sp, #0x30
    5eb4: aa1703e0     	mov	x0, x23
    5eb8: 2a1803e3     	mov	w3, w24
    5ebc: 94000000     	bl	0x5ebc <syna_cdev_ioctls+0x117c>
		0000000000005ebc:  R_AARCH64_CALL26	syna_tcm_send_command
    5ec0: 90000018     	adrp	x24, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005ec0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    5ec4: 37f83620     	tbnz	w0, #0x1f, 0x6588 <syna_cdev_ioctls+0x1848>
    5ec8: aa1403e0     	mov	x0, x20
    5ecc: 2a1f03e1     	mov	w1, wzr
    5ed0: aa1603e2     	mov	x2, x22
    5ed4: 94000000     	bl	0x5ed4 <syna_cdev_ioctls+0x1194>
		0000000000005ed4:  R_AARCH64_CALL26	memset
    5ed8: b9401fe8     	ldr	w8, [sp, #0x1c]
    5edc: 7800129f     	sturh	wzr, [x20, #0x1]
    5ee0: 39000288     	strb	w8, [x20]
    5ee4: 90000008     	adrp	x8, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005ee4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    5ee8: 91000108     	add	x8, x8, #0x0
		0000000000005ee8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x10
    5eec: b940a509     	ldr	w9, [x8, #0xa4]
    5ef0: b9400116     	ldr	w22, [x8]
    5ef4: 0aa97d29     	bic	w9, w9, w9, asr #31
    5ef8: 31000d37     	adds	w23, w9, #0x3
    5efc: b90023f7     	str	w23, [sp, #0x20]
    5f00: 54003524     	b.mi	0x65a4 <syna_cdev_ioctls+0x1864>
    5f04: aa1403e0     	mov	x0, x20
    5f08: aa1703e1     	mov	x1, x23
    5f0c: 52800022     	mov	w2, #0x1                // =1
    5f10: 94000000     	bl	0x5f10 <syna_cdev_ioctls+0x11d0>
		0000000000005f10:  R_AARCH64_CALL26	__check_object_size
    5f14: 39411b68     	ldrb	w8, [x27, #0x46]
    5f18: 37280088     	tbnz	w8, #0x5, 0x5f28 <syna_cdev_ioctls+0x11e8>
    5f1c: 39400f69     	ldrb	w9, [x27, #0x3]
    5f20: aa1503e8     	mov	x8, x21
    5f24: 36100069     	tbz	w9, #0x2, 0x5f30 <syna_cdev_ioctls+0x11f0>
    5f28: d378dea8     	lsl	x8, x21, #8
    5f2c: 8a8822a8     	and	x8, x21, x8, asr #8
    5f30: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    5f34: cb170129     	sub	x9, x9, x23
    5f38: eb08013f     	cmp	x9, x8
    5f3c: 54003423     	b.lo	0x65c0 <syna_cdev_ioctls+0x1880>
    5f40: d5384108     	mrs	x8, SP_EL0
    5f44: 9400032f     	bl	0x6c00 <uaccess_ttbr0_enable>
    5f48: 9248faa8     	and	x8, x21, #0xff7fffffffffffff
    5f4c: 9248f900     	and	x0, x8, #0xff7fffffffffffff
    5f50: aa1403e1     	mov	x1, x20
    5f54: aa1703e2     	mov	x2, x23
    5f58: 94000000     	bl	0x5f58 <syna_cdev_ioctls+0x1218>
		0000000000005f58:  R_AARCH64_CALL26	__arch_copy_to_user
    5f5c: aa0003f4     	mov	x20, x0
    5f60: 94000335     	bl	0x6c34 <uaccess_ttbr0_disable>
    5f64: d5384108     	mrs	x8, SP_EL0
    5f68: d5384108     	mrs	x8, SP_EL0
    5f6c: 350032b4     	cbnz	w20, 0x65c0 <syna_cdev_ioctls+0x1880>
    5f70: b94023f6     	ldr	w22, [sp, #0x20]
    5f74: 39400302     	ldrb	w2, [x24]
		0000000000005f74:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    5f78: 7100045f     	cmp	w2, #0x1
    5f7c: 54002861     	b.ne	0x6488 <syna_cdev_ioctls+0x1748>
    5f80: 2a1f03e8     	mov	w8, wzr
    5f84: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005f84:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
    5f88: 91000000     	add	x0, x0, #0x0
		0000000000005f88:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
    5f8c: 3900c008     	strb	w8, [x0, #0x30]
    5f90: 94000000     	bl	0x5f90 <syna_cdev_ioctls+0x1250>
		0000000000005f90:  R_AARCH64_CALL26	mutex_unlock
    5f94: f9401bf4     	ldr	x20, [sp, #0x30]
    5f98: 94000000     	bl	0x5f98 <syna_cdev_ioctls+0x1258>
		0000000000005f98:  R_AARCH64_CALL26	syna_request_managed_device
    5f9c: b4002860     	cbz	x0, 0x64a8 <syna_cdev_ioctls+0x1768>
    5fa0: b40006b4     	cbz	x20, 0x6074 <syna_cdev_ioctls+0x1334>
    5fa4: aa1403e1     	mov	x1, x20
    5fa8: 94000000     	bl	0x5fa8 <syna_cdev_ioctls+0x1268>
		0000000000005fa8:  R_AARCH64_CALL26	devm_kfree
    5fac: 14000032     	b	0x6074 <syna_cdev_ioctls+0x1334>
    5fb0: 90000000     	adrp	x0, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005fb0:  R_AARCH64_ADR_PREL_PG_HI21	unk_39948
    5fb4: 91000000     	add	x0, x0, #0x0
		0000000000005fb4:  R_AARCH64_ADD_ABS_LO12_NC	unk_39948
    5fb8: 90000001     	adrp	x1, 0x5000 <syna_cdev_ioctls+0x2c0>
		0000000000005fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14f3
    5fbc: 91000021     	add	x1, x1, #0x0
		0000000000005fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14f3
    5fc0: aa1f03e2     	mov	x2, xzr
    5fc4: 94000000     	bl	0x5fc4 <syna_cdev_ioctls+0x1284>
		0000000000005fc4:  R_AARCH64_CALL26	_printk
    5fc8: 14000053     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    5fcc: aa1503e8     	mov	x8, x21
    5fd0: 78402d09     	ldrh	w9, [x8, #0x2]!
    5fd4: 34000209     	cbz	w9, 0x6014 <syna_cdev_ioctls+0x12d4>
    5fd8: 2a1f03e9     	mov	w9, wzr
    5fdc: b9403aca     	ldr	w10, [x22, #0x38]
    5fe0: 79400108     	ldrh	w8, [x8]
    5fe4: 6b08015f     	cmp	w10, w8
    5fe8: 54000041     	b.ne	0x5ff0 <syna_cdev_ioctls+0x12b0>
    5fec: 36000149     	tbz	w9, #0x0, 0x6014 <syna_cdev_ioctls+0x12d4>
    5ff0: f941d6c8     	ldr	x8, [x22, #0x3a8]
    5ff4: aa1603e0     	mov	x0, x22
    5ff8: b85fc110     	ldur	w16, [x8, #-0x4]
    5ffc: 728631d1     	movk	w17, #0x318e
    6000: 72b73211     	movk	w17, #0xb990, lsl #16
    6004: 6b11021f     	cmp	w16, w17
    6008: 54000040     	b.eq	0x6010 <syna_cdev_ioctls+0x12d0>
    600c: d4304500     	brk	#0x8228
    6010: d63f0100     	blr	x8
    6014: 794012a8     	ldrh	w8, [x21, #0x8]
    6018: 394deac9     	ldrb	w9, [x22, #0x37a]
    601c: 12000114     	and	w20, w8, #0x1
    6020: 6b09029f     	cmp	w20, w9
    6024: 540042c1     	b.ne	0x687c <syna_cdev_ioctls+0x1b3c>
    6028: 90000009     	adrp	x9, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006028:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
    602c: 53087d02     	lsr	w2, w8, #8
    6030: b9400128     	ldr	w8, [x9]
		0000000000006030:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
    6034: 6b02011f     	cmp	w8, w2
    6038: 54004421     	b.ne	0x68bc <syna_cdev_ioctls+0x1b7c>
    603c: 39402aa8     	ldrb	w8, [x21, #0xa]
    6040: 90000009     	adrp	x9, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006040:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
    6044: 531e7502     	lsl	w2, w8, #2
    6048: b9000122     	str	w2, [x9]
		0000000000006048:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
    604c: 35004468     	cbnz	w8, 0x68d8 <syna_cdev_ioctls+0x1b98>
    6050: 2a1f03f6     	mov	w22, wzr
    6054: 39400308     	ldrb	w8, [x24]
		0000000000006054:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    6058: 7100051f     	cmp	w8, #0x1
    605c: 54ffd4c1     	b.ne	0x5af4 <syna_cdev_ioctls+0xdb4>
    6060: 2a1f03e8     	mov	w8, wzr
    6064: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006064:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
    6068: 91000000     	add	x0, x0, #0x0
		0000000000006068:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
    606c: 3900c008     	strb	w8, [x0, #0x30]
    6070: 94000000     	bl	0x6070 <syna_cdev_ioctls+0x1330>
		0000000000006070:  R_AARCH64_CALL26	mutex_unlock
    6074: 37f80516     	tbnz	w22, #0x1f, 0x6114 <syna_cdev_ioctls+0x13d4>
    6078: 39411b68     	ldrb	w8, [x27, #0x46]
    607c: 37280068     	tbnz	w8, #0x5, 0x6088 <syna_cdev_ioctls+0x1348>
    6080: 39400f68     	ldrb	w8, [x27, #0x3]
    6084: 36100048     	tbz	w8, #0x2, 0x608c <syna_cdev_ioctls+0x134c>
    6088: aa1a03f3     	mov	x19, x26
    608c: b27c8be8     	mov	x8, #0x7ffffffff0       // =549755813872
    6090: eb08027f     	cmp	x19, x8
    6094: 54000688     	b.hi	0x6164 <syna_cdev_ioctls+0x1424>
    6098: d5384108     	mrs	x8, SP_EL0
    609c: d503201f     	nop
    60a0: d53b4228     	mrs	x8, DAIF
    60a4: d50343df     	msr	DAIFSet, #0x3
    60a8: d5384109     	mrs	x9, SP_EL0
    60ac: f9400529     	ldr	x9, [x9, #0x8]
    60b0: d538202a     	mrs	x10, TTBR1_EL1
    60b4: aa0903eb     	mov	x11, x9
    60b8: b340bd4b     	bfxil	x11, x10, #0, #48
    60bc: d518202b     	msr	TTBR1_EL1, x11
    60c0: d5182009     	msr	TTBR0_EL1, x9
    60c4: d5033fdf     	isb
    60c8: d51b4228     	msr	DAIF, x8
    60cc: 9248fb80     	and	x0, x28, #0xff7fffffffffffff
    60d0: 910083e1     	add	x1, sp, #0x20
    60d4: 52800202     	mov	w2, #0x10               // =16
    60d8: 94000000     	bl	0x60d8 <syna_cdev_ioctls+0x1398>
		00000000000060d8:  R_AARCH64_CALL26	__arch_copy_to_user
    60dc: d503201f     	nop
    60e0: d53b4228     	mrs	x8, DAIF
    60e4: d50343df     	msr	DAIFSet, #0x3
    60e8: d5382029     	mrs	x9, TTBR1_EL1
    60ec: 9240bd29     	and	x9, x9, #0xffffffffffff
    60f0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    60f4: d518200a     	msr	TTBR0_EL1, x10
    60f8: d5182029     	msr	TTBR1_EL1, x9
    60fc: d5033fdf     	isb
    6100: d51b4228     	msr	DAIF, x8
    6104: d5384108     	mrs	x8, SP_EL0
    6108: d5384108     	mrs	x8, SP_EL0
    610c: 35000380     	cbnz	w0, 0x617c <syna_cdev_ioctls+0x143c>
    6110: 2a1f03f6     	mov	w22, wzr
    6114: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006114:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
    6118: 91000000     	add	x0, x0, #0x0
		0000000000006118:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
    611c: 94000000     	bl	0x611c <syna_cdev_ioctls+0x13dc>
		000000000000611c:  R_AARCH64_CALL26	mutex_unlock
    6120: d5384108     	mrs	x8, SP_EL0
    6124: f9438908     	ldr	x8, [x8, #0x710]
    6128: d5384109     	mrs	x9, SP_EL0
    612c: f85f03a9     	ldur	x9, [x29, #-0x10]
    6130: eb09011f     	cmp	x8, x9
    6134: 540054a1     	b.ne	0x6bc8 <syna_cdev_ioctls+0x1e88>
    6138: 93407ec0     	sxtw	x0, w22
    613c: 914007ff     	add	sp, sp, #0x1, lsl #12   // =0x1000
    6140: 910103ff     	add	sp, sp, #0x40
    6144: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    6148: a94457f6     	ldp	x22, x21, [sp, #0x40]
    614c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    6150: a94267fa     	ldp	x26, x25, [sp, #0x20]
    6154: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    6158: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    615c: d50323bf     	autiasp
    6160: d65f03c0     	ret
    6164: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006164:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1510
    6168: 91000021     	add	x1, x1, #0x0
		0000000000006168:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1510
    616c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000616c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B874
    6170: 91000000     	add	x0, x0, #0x0
		0000000000006170:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B874
    6174: 52800213     	mov	w19, #0x10              // =16
    6178: 14000143     	b	0x6684 <syna_cdev_ioctls+0x1944>
    617c: aa0003f3     	mov	x19, x0
    6180: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1510
    6184: 91000021     	add	x1, x1, #0x0
		0000000000006184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1510
    6188: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006188:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B874
    618c: 91000000     	add	x0, x0, #0x0
		000000000000618c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B874
    6190: 1400013d     	b	0x6684 <syna_cdev_ioctls+0x1944>
    6194: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006194:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    6198: 91000000     	add	x0, x0, #0x0
		0000000000006198:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    619c: 90000002     	adrp	x2, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000619c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4543
    61a0: 91000042     	add	x2, x2, #0x0
		00000000000061a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4543
    61a4: 52904501     	mov	w1, #0x8228             // =33320
    61a8: 52802b63     	mov	w3, #0x15b              // =347
    61ac: 94000000     	bl	0x61ac <syna_cdev_ioctls+0x146c>
		00000000000061ac:  R_AARCH64_CALL26	_printk
    61b0: 17fffb94     	b	0x5000 <syna_cdev_ioctls+0x2c0>
    61b4: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000061b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_36141
    61b8: 91000000     	add	x0, x0, #0x0
		00000000000061b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_36141
    61bc: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000061bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1521
    61c0: 91000021     	add	x1, x1, #0x0
		00000000000061c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1521
    61c4: aa1f03e2     	mov	x2, xzr
    61c8: 94000000     	bl	0x61c8 <syna_cdev_ioctls+0x1488>
		00000000000061c8:  R_AARCH64_CALL26	_printk
    61cc: 12800676     	mov	w22, #-0x34             // =-52
    61d0: 17fffe46     	b	0x5ae8 <syna_cdev_ioctls+0xda8>
    61d4: cb1602e8     	sub	x8, x23, x22
    61d8: 52802009     	mov	w9, #0x100              // =256
    61dc: cb080129     	sub	x9, x9, x8
    61e0: f104051f     	cmp	x8, #0x101
    61e4: 9a9f3121     	csel	x1, x9, xzr, lo
    61e8: eb16003f     	cmp	x1, x22
    61ec: 54004f83     	b.lo	0x6bdc <syna_cdev_ioctls+0x1e9c>
    61f0: 52820009     	mov	w9, #0x1000             // =4096
    61f4: eb080129     	subs	x9, x9, x8
    61f8: 9a8933e1     	csel	x1, xzr, x9, lo
    61fc: eb16003f     	cmp	x1, x22
    6200: 54004ee3     	b.lo	0x6bdc <syna_cdev_ioctls+0x1e9c>
    6204: 9100c3e9     	add	x9, sp, #0x30
    6208: 2a1f03e1     	mov	w1, wzr
    620c: aa1603e2     	mov	x2, x22
    6210: 8b080120     	add	x0, x9, x8
    6214: 94000000     	bl	0x6214 <syna_cdev_ioctls+0x14d4>
		0000000000006214:  R_AARCH64_CALL26	memset
    6218: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x443
    621c: 91000021     	add	x1, x1, #0x0
		000000000000621c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x443
    6220: 140000f3     	b	0x65ec <syna_cdev_ioctls+0x18ac>
    6224: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006224:  R_AARCH64_ADR_PREL_PG_HI21	unk_37E75
    6228: 91000000     	add	x0, x0, #0x0
		0000000000006228:  R_AARCH64_ADD_ABS_LO12_NC	unk_37E75
    622c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000622c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ed6
    6230: 91000021     	add	x1, x1, #0x0
		0000000000006230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ed6
    6234: 14000027     	b	0x62d0 <syna_cdev_ioctls+0x1590>
    6238: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006238:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5066
    623c: 91000021     	add	x1, x1, #0x0
		000000000000623c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5066
    6240: 14000184     	b	0x6850 <syna_cdev_ioctls+0x1b10>
    6244: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006244:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    6248: 91000021     	add	x1, x1, #0x0
		0000000000006248:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    624c: 14000181     	b	0x6850 <syna_cdev_ioctls+0x1b10>
    6250: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006250:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    6254: 91000021     	add	x1, x1, #0x0
		0000000000006254:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    6258: 1400017e     	b	0x6850 <syna_cdev_ioctls+0x1b10>
    625c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000625c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5649
    6260: 91000021     	add	x1, x1, #0x0
		0000000000006260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5649
    6264: 1400017b     	b	0x6850 <syna_cdev_ioctls+0x1b10>
    6268: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006268:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1521
    626c: 91000021     	add	x1, x1, #0x0
		000000000000626c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1521
    6270: 14000003     	b	0x627c <syna_cdev_ioctls+0x153c>
    6274: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006274:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cb
    6278: 91000021     	add	x1, x1, #0x0
		0000000000006278:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cb
    627c: 92401116     	and	x22, x8, #0x1f
    6280: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006280:  R_AARCH64_ADR_PREL_PG_HI21	unk_38DB4
    6284: 91000000     	add	x0, x0, #0x0
		0000000000006284:  R_AARCH64_ADD_ABS_LO12_NC	unk_38DB4
    6288: 14000033     	b	0x6354 <syna_cdev_ioctls+0x1614>
    628c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000628c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x443
    6290: 91000021     	add	x1, x1, #0x0
		0000000000006290:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x443
    6294: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006294:  R_AARCH64_ADR_PREL_PG_HI21	unk_35AF4
    6298: 91000000     	add	x0, x0, #0x0
		0000000000006298:  R_AARCH64_ADD_ABS_LO12_NC	unk_35AF4
    629c: 1400000d     	b	0x62d0 <syna_cdev_ioctls+0x1590>
    62a0: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    62a4: 91000021     	add	x1, x1, #0x0
		00000000000062a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    62a8: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33683
    62ac: 91000000     	add	x0, x0, #0x0
		00000000000062ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_33683
    62b0: 14000008     	b	0x62d0 <syna_cdev_ioctls+0x1590>
    62b4: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062b4:  R_AARCH64_ADR_PREL_PG_HI21	unk_382A7
    62b8: 91000000     	add	x0, x0, #0x0
		00000000000062b8:  R_AARCH64_ADD_ABS_LO12_NC	unk_382A7
    62bc: 14000005     	b	0x62d0 <syna_cdev_ioctls+0x1590>
    62c0: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5649
    62c4: 91000021     	add	x1, x1, #0x0
		00000000000062c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5649
    62c8: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062c8:  R_AARCH64_ADR_PREL_PG_HI21	unk_382DE
    62cc: 91000000     	add	x0, x0, #0x0
		00000000000062cc:  R_AARCH64_ADD_ABS_LO12_NC	unk_382DE
    62d0: aa1f03e2     	mov	x2, xzr
    62d4: 94000000     	bl	0x62d4 <syna_cdev_ioctls+0x1594>
		00000000000062d4:  R_AARCH64_CALL26	_printk
    62d8: 17ffff68     	b	0x6078 <syna_cdev_ioctls+0x1338>
    62dc: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062dc:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
    62e0: 91000000     	add	x0, x0, #0x0
		00000000000062e0:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
    62e4: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e5b
    62e8: 91000021     	add	x1, x1, #0x0
		00000000000062e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e5b
    62ec: 94000000     	bl	0x62ec <syna_cdev_ioctls+0x15ac>
		00000000000062ec:  R_AARCH64_CALL26	_printk
    62f0: 17fffc80     	b	0x54f0 <syna_cdev_ioctls+0x7b0>
    62f4: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
    62f8: 91000000     	add	x0, x0, #0x0
		00000000000062f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
    62fc: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000062fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e5b
    6300: 91000021     	add	x1, x1, #0x0
		0000000000006300:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e5b
    6304: 94000000     	bl	0x6304 <syna_cdev_ioctls+0x15c4>
		0000000000006304:  R_AARCH64_CALL26	_printk
    6308: 17fffcfe     	b	0x5700 <syna_cdev_ioctls+0x9c0>
    630c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000630c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x443
    6310: 91000021     	add	x1, x1, #0x0
		0000000000006310:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x443
    6314: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006314:  R_AARCH64_ADR_PREL_PG_HI21	unk_32516
    6318: 91000000     	add	x0, x0, #0x0
		0000000000006318:  R_AARCH64_ADD_ABS_LO12_NC	unk_32516
    631c: 1400000e     	b	0x6354 <syna_cdev_ioctls+0x1614>
    6320: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006320:  R_AARCH64_ADR_PREL_PG_HI21	unk_3A417
    6324: 91000000     	add	x0, x0, #0x0
		0000000000006324:  R_AARCH64_ADD_ABS_LO12_NC	unk_3A417
    6328: aa1f03e2     	mov	x2, xzr
    632c: 94000000     	bl	0x632c <syna_cdev_ioctls+0x15ec>
		000000000000632c:  R_AARCH64_CALL26	_printk
    6330: 12800256     	mov	w22, #-0x13             // =-19
    6334: 17ffff78     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6338: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    633c: 91000021     	add	x1, x1, #0x0
		000000000000633c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    6340: 14000003     	b	0x634c <syna_cdev_ioctls+0x160c>
    6344: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5649
    6348: 91000021     	add	x1, x1, #0x0
		0000000000006348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5649
    634c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000634c:  R_AARCH64_ADR_PREL_PG_HI21	unk_35535
    6350: 91000000     	add	x0, x0, #0x0
		0000000000006350:  R_AARCH64_ADD_ABS_LO12_NC	unk_35535
    6354: aa1603e2     	mov	x2, x22
    6358: 94000000     	bl	0x6358 <syna_cdev_ioctls+0x1618>
		0000000000006358:  R_AARCH64_CALL26	_printk
    635c: 128002b6     	mov	w22, #-0x16             // =-22
    6360: 17ffff6d     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6364: aa1f03e2     	mov	x2, xzr
    6368: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x443
    636c: 91000021     	add	x1, x1, #0x0
		000000000000636c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x443
    6370: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006370:  R_AARCH64_ADR_PREL_PG_HI21	unk_3CBAE
    6374: 91000000     	add	x0, x0, #0x0
		0000000000006374:  R_AARCH64_ADD_ABS_LO12_NC	unk_3CBAE
    6378: 17fffff8     	b	0x6358 <syna_cdev_ioctls+0x1618>
    637c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000637c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6380: 91000000     	add	x0, x0, #0x0
		0000000000006380:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6384: 14000005     	b	0x6398 <syna_cdev_ioctls+0x1658>
    6388: 528000a0     	mov	w0, #0x5                // =5
    638c: 14000022     	b	0x6414 <syna_cdev_ioctls+0x16d4>
    6390: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006390:  R_AARCH64_ADR_PREL_PG_HI21	unk_38286
    6394: 91000000     	add	x0, x0, #0x0
		0000000000006394:  R_AARCH64_ADD_ABS_LO12_NC	unk_38286
    6398: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006398:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b47
    639c: 91000021     	add	x1, x1, #0x0
		000000000000639c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b47
    63a0: aa1f03e2     	mov	x2, xzr
    63a4: 94000000     	bl	0x63a4 <syna_cdev_ioctls+0x1664>
		00000000000063a4:  R_AARCH64_CALL26	_printk
    63a8: f902d69f     	str	xzr, [x20, #0x5a8]
    63ac: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000063ac:  R_AARCH64_ADR_PREL_PG_HI21	unk_37EBE
    63b0: 91000000     	add	x0, x0, #0x0
		00000000000063b0:  R_AARCH64_ADD_ABS_LO12_NC	unk_37EBE
    63b4: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000063b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca4
    63b8: 91000021     	add	x1, x1, #0x0
		00000000000063b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca4
    63bc: 2a1703e2     	mov	w2, w23
    63c0: 94000000     	bl	0x63c0 <syna_cdev_ioctls+0x1680>
		00000000000063c0:  R_AARCH64_CALL26	_printk
    63c4: 12800176     	mov	w22, #-0xc              // =-12
    63c8: 17ffff53     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    63cc: 52800080     	mov	w0, #0x4                // =4
    63d0: 1400001e     	b	0x6448 <syna_cdev_ioctls+0x1708>
    63d4: aa1f03e2     	mov	x2, xzr
    63d8: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000063d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_33CAB
    63dc: 91000000     	add	x0, x0, #0x0
		00000000000063dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_33CAB
    63e0: 17ffffde     	b	0x6358 <syna_cdev_ioctls+0x1618>
    63e4: 52800080     	mov	w0, #0x4                // =4
    63e8: 14000040     	b	0x64e8 <syna_cdev_ioctls+0x17a8>
    63ec: 52802000     	mov	w0, #0x100              // =256
    63f0: aa1703e1     	mov	x1, x23
    63f4: 94000000     	bl	0x63f4 <syna_cdev_ioctls+0x16b4>
		00000000000063f4:  R_AARCH64_CALL26	__copy_overflow
    63f8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000063f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x443
    63fc: 91000021     	add	x1, x1, #0x0
		00000000000063fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x443
    6400: aa1703f6     	mov	x22, x23
    6404: 1400007a     	b	0x65ec <syna_cdev_ioctls+0x18ac>
    6408: aa1503e0     	mov	x0, x21
    640c: f10016bf     	cmp	x21, #0x5
    6410: 54003de8     	b.hi	0x6bcc <syna_cdev_ioctls+0x1e8c>
    6414: 9100c3e8     	add	x8, sp, #0x30
    6418: aa0003f6     	mov	x22, x0
    641c: 2a1f03e1     	mov	w1, wzr
    6420: cb000108     	sub	x8, x8, x0
    6424: aa1603e2     	mov	x2, x22
    6428: 91001500     	add	x0, x8, #0x5
    642c: 94000000     	bl	0x642c <syna_cdev_ioctls+0x16ec>
		000000000000642c:  R_AARCH64_CALL26	memset
    6430: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006430:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5663
    6434: 91000021     	add	x1, x1, #0x0
		0000000000006434:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5663
    6438: 1400006d     	b	0x65ec <syna_cdev_ioctls+0x18ac>
    643c: aa1603e0     	mov	x0, x22
    6440: f10012df     	cmp	x22, #0x4
    6444: 54003c48     	b.hi	0x6bcc <syna_cdev_ioctls+0x1e8c>
    6448: 910073e8     	add	x8, sp, #0x1c
    644c: aa0003e2     	mov	x2, x0
    6450: 2a1f03e1     	mov	w1, wzr
    6454: cb000108     	sub	x8, x8, x0
    6458: aa0203f3     	mov	x19, x2
    645c: 91001100     	add	x0, x8, #0x4
    6460: 94000000     	bl	0x6460 <syna_cdev_ioctls+0x1720>
		0000000000006460:  R_AARCH64_CALL26	memset
    6464: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006464:  R_AARCH64_ADR_PREL_PG_HI21	unk_3AA48
    6468: 91000000     	add	x0, x0, #0x0
		0000000000006468:  R_AARCH64_ADD_ABS_LO12_NC	unk_3AA48
    646c: 14000084     	b	0x667c <syna_cdev_ioctls+0x193c>
    6470: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006470:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
    6474: 91000000     	add	x0, x0, #0x0
		0000000000006474:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
    6478: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006478:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e5b
    647c: 91000021     	add	x1, x1, #0x0
		000000000000647c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e5b
    6480: 94000000     	bl	0x6480 <syna_cdev_ioctls+0x1740>
		0000000000006480:  R_AARCH64_CALL26	_printk
    6484: 17fffb6a     	b	0x522c <syna_cdev_ioctls+0x4ec>
    6488: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006488:  R_AARCH64_ADR_PREL_PG_HI21	unk_38244
    648c: 91000000     	add	x0, x0, #0x0
		000000000000648c:  R_AARCH64_ADD_ABS_LO12_NC	unk_38244
    6490: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a65
    6494: 91000021     	add	x1, x1, #0x0
		0000000000006494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a65
    6498: 94000000     	bl	0x6498 <syna_cdev_ioctls+0x1758>
		0000000000006498:  R_AARCH64_CALL26	_printk
    649c: 39400308     	ldrb	w8, [x24]
		000000000000649c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    64a0: 51000508     	sub	w8, w8, #0x1
    64a4: 17fffeb8     	b	0x5f84 <syna_cdev_ioctls+0x1244>
    64a8: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000064a8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    64ac: 91000000     	add	x0, x0, #0x0
		00000000000064ac:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    64b0: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000064b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3f
    64b4: 91000021     	add	x1, x1, #0x0
		00000000000064b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3f
    64b8: aa1f03e2     	mov	x2, xzr
    64bc: 94000000     	bl	0x64bc <syna_cdev_ioctls+0x177c>
		00000000000064bc:  R_AARCH64_CALL26	_printk
    64c0: 17fffeed     	b	0x6074 <syna_cdev_ioctls+0x1334>
    64c4: 52800080     	mov	w0, #0x4                // =4
    64c8: aa1603e1     	mov	x1, x22
    64cc: 94000000     	bl	0x64cc <syna_cdev_ioctls+0x178c>
		00000000000064cc:  R_AARCH64_CALL26	__copy_overflow
    64d0: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000064d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    64d4: 91000021     	add	x1, x1, #0x0
		00000000000064d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    64d8: 14000045     	b	0x65ec <syna_cdev_ioctls+0x18ac>
    64dc: aa1703e0     	mov	x0, x23
    64e0: f10012ff     	cmp	x23, #0x4
    64e4: 54003748     	b.hi	0x6bcc <syna_cdev_ioctls+0x1e8c>
    64e8: 910073e8     	add	x8, sp, #0x1c
    64ec: aa0003f6     	mov	x22, x0
    64f0: 2a1f03e1     	mov	w1, wzr
    64f4: cb000108     	sub	x8, x8, x0
    64f8: aa1603e2     	mov	x2, x22
    64fc: 91001100     	add	x0, x8, #0x4
    6500: 94000000     	bl	0x6500 <syna_cdev_ioctls+0x17c0>
		0000000000006500:  R_AARCH64_CALL26	memset
    6504: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5649
    6508: 91000021     	add	x1, x1, #0x0
		0000000000006508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5649
    650c: 14000038     	b	0x65ec <syna_cdev_ioctls+0x18ac>
    6510: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006510:  R_AARCH64_ADR_PREL_PG_HI21	unk_3489E
    6514: 91000000     	add	x0, x0, #0x0
		0000000000006514:  R_AARCH64_ADD_ABS_LO12_NC	unk_3489E
    6518: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006518:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cb
    651c: 91000021     	add	x1, x1, #0x0
		000000000000651c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cb
    6520: 2a1503e2     	mov	w2, w21
    6524: 94000000     	bl	0x6524 <syna_cdev_ioctls+0x17e4>
		0000000000006524:  R_AARCH64_CALL26	_printk
    6528: 12800676     	mov	w22, #-0x34             // =-52
    652c: 17fffeca     	b	0x6054 <syna_cdev_ioctls+0x1314>
    6530: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    6534: 91000000     	add	x0, x0, #0x0
		0000000000006534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    6538: 90000002     	adrp	x2, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4543
    653c: 91000042     	add	x2, x2, #0x0
		000000000000653c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4543
    6540: 52810001     	mov	w1, #0x800              // =2048
    6544: 52806fe3     	mov	w3, #0x37f              // =895
    6548: 94000000     	bl	0x6548 <syna_cdev_ioctls+0x1808>
		0000000000006548:  R_AARCH64_CALL26	_printk
    654c: b94023e2     	ldr	w2, [sp, #0x20]
    6550: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006550:  R_AARCH64_ADR_PREL_PG_HI21	unk_3489E
    6554: 91000000     	add	x0, x0, #0x0
		0000000000006554:  R_AARCH64_ADD_ABS_LO12_NC	unk_3489E
    6558: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006558:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    655c: 91000021     	add	x1, x1, #0x0
		000000000000655c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    6560: 14000006     	b	0x6578 <syna_cdev_ioctls+0x1838>
    6564: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006564:  R_AARCH64_ADR_PREL_PG_HI21	unk_3776A
    6568: 91000000     	add	x0, x0, #0x0
		0000000000006568:  R_AARCH64_ADD_ABS_LO12_NC	unk_3776A
    656c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000656c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    6570: 91000021     	add	x1, x1, #0x0
		0000000000006570:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    6574: 2a1803e2     	mov	w2, w24
    6578: 94000000     	bl	0x6578 <syna_cdev_ioctls+0x1838>
		0000000000006578:  R_AARCH64_CALL26	_printk
    657c: 12800676     	mov	w22, #-0x34             // =-52
    6580: 90000018     	adrp	x24, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006580:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    6584: 17fffe7c     	b	0x5f74 <syna_cdev_ioctls+0x1234>
    6588: 39400282     	ldrb	w2, [x20]
    658c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000658c:  R_AARCH64_ADR_PREL_PG_HI21	unk_36B40
    6590: 91000000     	add	x0, x0, #0x0
		0000000000006590:  R_AARCH64_ADD_ABS_LO12_NC	unk_36B40
    6594: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    6598: 91000021     	add	x1, x1, #0x0
		0000000000006598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    659c: 94000000     	bl	0x659c <syna_cdev_ioctls+0x185c>
		000000000000659c:  R_AARCH64_CALL26	_printk
    65a0: 17fffe4a     	b	0x5ec8 <syna_cdev_ioctls+0x1188>
    65a4: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000065a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    65a8: 91000000     	add	x0, x0, #0x0
		00000000000065a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    65ac: 90000002     	adrp	x2, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000065ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4543
    65b0: 91000042     	add	x2, x2, #0x0
		00000000000065b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4543
    65b4: 52810001     	mov	w1, #0x800              // =2048
    65b8: 52807c63     	mov	w3, #0x3e3              // =995
    65bc: 94000000     	bl	0x65bc <syna_cdev_ioctls+0x187c>
		00000000000065bc:  R_AARCH64_CALL26	_printk
    65c0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000065c0:  R_AARCH64_ADR_PREL_PG_HI21	unk_36141
    65c4: 91000000     	add	x0, x0, #0x0
		00000000000065c4:  R_AARCH64_ADD_ABS_LO12_NC	unk_36141
    65c8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000065c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    65cc: 91000021     	add	x1, x1, #0x0
		00000000000065cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    65d0: aa1603e2     	mov	x2, x22
    65d4: 94000000     	bl	0x65d4 <syna_cdev_ioctls+0x1894>
		00000000000065d4:  R_AARCH64_CALL26	_printk
    65d8: 12800676     	mov	w22, #-0x34             // =-52
    65dc: 17fffe66     	b	0x5f74 <syna_cdev_ioctls+0x1234>
    65e0: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000065e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    65e4: 91000021     	add	x1, x1, #0x0
		00000000000065e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    65e8: aa1503f6     	mov	x22, x21
    65ec: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000065ec:  R_AARCH64_ADR_PREL_PG_HI21	unk_3489E
    65f0: 91000000     	add	x0, x0, #0x0
		00000000000065f0:  R_AARCH64_ADD_ABS_LO12_NC	unk_3489E
    65f4: aa1603e2     	mov	x2, x22
    65f8: 14000024     	b	0x6688 <syna_cdev_ioctls+0x1948>
    65fc: 340004c8     	cbz	w8, 0x6694 <syna_cdev_ioctls+0x1954>
    6600: 710006ff     	cmp	w23, #0x1
    6604: 2a1703f6     	mov	w22, w23
    6608: 54ffd36b     	b.lt	0x6074 <syna_cdev_ioctls+0x1334>
    660c: 39411b68     	ldrb	w8, [x27, #0x46]
    6610: b944f289     	ldr	w9, [x20, #0x4f0]
    6614: b9001fe9     	str	w9, [sp, #0x1c]
    6618: 37280068     	tbnz	w8, #0x5, 0x6624 <syna_cdev_ioctls+0x18e4>
    661c: 39400f68     	ldrb	w8, [x27, #0x3]
    6620: 36100068     	tbz	w8, #0x2, 0x662c <syna_cdev_ioctls+0x18ec>
    6624: d378dea8     	lsl	x8, x21, #8
    6628: 8a8822b5     	and	x21, x21, x8, asr #8
    662c: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
    6630: 52800228     	mov	w8, #0x11               // =17
    6634: f29ffd89     	movk	x9, #0xffec
    6638: aa080128     	orr	x8, x9, x8
    663c: eb0802bf     	cmp	x21, x8
    6640: 54000182     	b.hs	0x6670 <syna_cdev_ioctls+0x1930>
    6644: d5384108     	mrs	x8, SP_EL0
    6648: 9400016e     	bl	0x6c00 <uaccess_ttbr0_enable>
    664c: 9248fb00     	and	x0, x24, #0xff7fffffffffffff
    6650: 910073e1     	add	x1, sp, #0x1c
    6654: 52800082     	mov	w2, #0x4                // =4
    6658: 94000000     	bl	0x6658 <syna_cdev_ioctls+0x1918>
		0000000000006658:  R_AARCH64_CALL26	__arch_copy_to_user
    665c: aa0003f4     	mov	x20, x0
    6660: 94000175     	bl	0x6c34 <uaccess_ttbr0_disable>
    6664: d5384108     	mrs	x8, SP_EL0
    6668: d5384108     	mrs	x8, SP_EL0
    666c: 34ffd074     	cbz	w20, 0x6078 <syna_cdev_ioctls+0x1338>
    6670: aa1f03f3     	mov	x19, xzr
    6674: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006674:  R_AARCH64_ADR_PREL_PG_HI21	unk_36141
    6678: 91000000     	add	x0, x0, #0x0
		0000000000006678:  R_AARCH64_ADD_ABS_LO12_NC	unk_36141
    667c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000667c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5066
    6680: 91000021     	add	x1, x1, #0x0
		0000000000006680:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5066
    6684: aa1303e2     	mov	x2, x19
    6688: 94000000     	bl	0x6688 <syna_cdev_ioctls+0x1948>
		0000000000006688:  R_AARCH64_CALL26	_printk
    668c: 12800676     	mov	w22, #-0x34             // =-52
    6690: 17fffea1     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6694: 12800db6     	mov	w22, #-0x6e             // =-110
    6698: 17fffe9f     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    669c: 34000b48     	cbz	w8, 0x6804 <syna_cdev_ioctls+0x1ac4>
    66a0: f9400308     	ldr	x8, [x24]
    66a4: eb08031f     	cmp	x24, x8
    66a8: 54000aa0     	b.eq	0x67fc <syna_cdev_ioctls+0x1abc>
    66ac: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000066ac:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    66b0: 91000000     	add	x0, x0, #0x0
		00000000000066b0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    66b4: 94000000     	bl	0x66b4 <syna_cdev_ioctls+0x1974>
		00000000000066b4:  R_AARCH64_CALL26	mutex_lock
    66b8: f9400317     	ldr	x23, [x24]
    66bc: b9401af8     	ldr	w24, [x23, #0x18]
    66c0: 6b16031f     	cmp	w24, w22
    66c4: 54001168     	b.hi	0x68f0 <syna_cdev_ioctls+0x1bb0>
    66c8: f9400af6     	ldr	x22, [x23, #0x10]
    66cc: aa1803e1     	mov	x1, x24
    66d0: 52800022     	mov	w2, #0x1                // =1
    66d4: aa1603e0     	mov	x0, x22
    66d8: 94000000     	bl	0x66d8 <syna_cdev_ioctls+0x1998>
		00000000000066d8:  R_AARCH64_CALL26	__check_object_size
    66dc: 39411b68     	ldrb	w8, [x27, #0x46]
    66e0: 37280068     	tbnz	w8, #0x5, 0x66ec <syna_cdev_ioctls+0x19ac>
    66e4: 39400f68     	ldrb	w8, [x27, #0x3]
    66e8: 36100068     	tbz	w8, #0x2, 0x66f4 <syna_cdev_ioctls+0x19b4>
    66ec: d378dea8     	lsl	x8, x21, #8
    66f0: 8a8822b5     	and	x21, x21, x8, asr #8
    66f4: d2c01008     	mov	x8, #0x8000000000       // =549755813888
    66f8: cb180108     	sub	x8, x8, x24
    66fc: eb15011f     	cmp	x8, x21
    6700: 54000163     	b.lo	0x672c <syna_cdev_ioctls+0x19ec>
    6704: d5384108     	mrs	x8, SP_EL0
    6708: 9400013e     	bl	0x6c00 <uaccess_ttbr0_enable>
    670c: 9248fb20     	and	x0, x25, #0xff7fffffffffffff
    6710: aa1603e1     	mov	x1, x22
    6714: aa1803e2     	mov	x2, x24
    6718: 94000000     	bl	0x6718 <syna_cdev_ioctls+0x19d8>
		0000000000006718:  R_AARCH64_CALL26	__arch_copy_to_user
    671c: aa0003f8     	mov	x24, x0
    6720: 94000145     	bl	0x6c34 <uaccess_ttbr0_disable>
    6724: d5384108     	mrs	x8, SP_EL0
    6728: d5384108     	mrs	x8, SP_EL0
    672c: 35000f98     	cbnz	w24, 0x691c <syna_cdev_ioctls+0x1bdc>
    6730: 2a1f03f6     	mov	w22, wzr
    6734: b9401ae9     	ldr	w9, [x23, #0x18]
    6738: f94006e8     	ldr	x8, [x23, #0x8]
    673c: b90023e9     	str	w9, [sp, #0x20]
    6740: f9400109     	ldr	x9, [x8]
    6744: eb17013f     	cmp	x9, x23
    6748: 540000a1     	b.ne	0x675c <syna_cdev_ioctls+0x1a1c>
    674c: f94002e9     	ldr	x9, [x23]
    6750: f940052a     	ldr	x10, [x9, #0x8]
    6754: eb17015f     	cmp	x10, x23
    6758: 540005c0     	b.eq	0x6810 <syna_cdev_ioctls+0x1ad0>
    675c: aa1703e0     	mov	x0, x23
    6760: 94000140     	bl	0x6c60 <list_del>
    6764: d2802008     	mov	x8, #0x100              // =256
    6768: 52800449     	mov	w9, #0x22               // =34
    676c: f2fbd5a8     	movk	x8, #0xdead, lsl #48
    6770: aa090109     	orr	x9, x8, x9
    6774: a90026e8     	stp	x8, x9, [x23]
    6778: 35000058     	cbnz	w24, 0x6780 <syna_cdev_ioctls+0x1a40>
    677c: b9401af6     	ldr	w22, [x23, #0x18]
    6780: f9400ae0     	ldr	x0, [x23, #0x10]
    6784: 94000000     	bl	0x6784 <syna_cdev_ioctls+0x1a44>
		0000000000006784:  R_AARCH64_CALL26	kfree
    6788: aa1703e0     	mov	x0, x23
    678c: 94000000     	bl	0x678c <syna_cdev_ioctls+0x1a4c>
		000000000000678c:  R_AARCH64_CALL26	kfree
    6790: b944f288     	ldr	w8, [x20, #0x4f0]
    6794: 34000068     	cbz	w8, 0x67a0 <syna_cdev_ioctls+0x1a60>
    6798: 51000508     	sub	w8, w8, #0x1
    679c: b904f288     	str	w8, [x20, #0x4f0]
    67a0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000067a0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    67a4: 91000000     	add	x0, x0, #0x0
		00000000000067a4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    67a8: b9403809     	ldr	w9, [x0, #0x38]
    67ac: 6b09011f     	cmp	w8, w9
    67b0: 54ffc602     	b.hs	0x6070 <syna_cdev_ioctls+0x1330>
    67b4: f9413a88     	ldr	x8, [x20, #0x270]
    67b8: 3942f108     	ldrb	w8, [x8, #0xbc]
    67bc: 3707c5a8     	tbnz	w8, #0x0, 0x6070 <syna_cdev_ioctls+0x1330>
    67c0: f94007e9     	ldr	x9, [sp, #0x8]
    67c4: f9402128     	ldr	x8, [x9, #0x40]
    67c8: b4ffc548     	cbz	x8, 0x6070 <syna_cdev_ioctls+0x1330>
    67cc: 91002120     	add	x0, x9, #0x8
    67d0: 52800021     	mov	w1, #0x1                // =1
    67d4: b85fc110     	ldur	w16, [x8, #-0x4]
    67d8: 728f8a71     	movk	w17, #0x7c53
    67dc: 72bea491     	movk	w17, #0xf524, lsl #16
    67e0: 6b11021f     	cmp	w16, w17
    67e4: 54000040     	b.eq	0x67ec <syna_cdev_ioctls+0x1aac>
    67e8: d4304500     	brk	#0x8228
    67ec: d63f0100     	blr	x8
    67f0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000067f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
    67f4: 91000000     	add	x0, x0, #0x0
		00000000000067f4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
    67f8: 17fffe1e     	b	0x6070 <syna_cdev_ioctls+0x1330>
    67fc: 12800796     	mov	w22, #-0x3d             // =-61
    6800: 17fffe45     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6804: b90023ff     	str	wzr, [sp, #0x20]
    6808: 12800db6     	mov	w22, #-0x6e             // =-110
    680c: 17fffe42     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6810: f9000528     	str	x8, [x9, #0x8]
    6814: f9000109     	str	x9, [x8]
    6818: 17ffffd3     	b	0x6764 <syna_cdev_ioctls+0x1a24>
    681c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000681c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6820: 91000000     	add	x0, x0, #0x0
		0000000000006820:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6824: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3f
    6828: 91000021     	add	x1, x1, #0x0
		0000000000006828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3f
    682c: aa1f03e2     	mov	x2, xzr
    6830: aa0003f6     	mov	x22, x0
    6834: 94000000     	bl	0x6834 <syna_cdev_ioctls+0x1af4>
		0000000000006834:  R_AARCH64_CALL26	_printk
    6838: 94000000     	bl	0x6838 <syna_cdev_ioctls+0x1af8>
		0000000000006838:  R_AARCH64_CALL26	syna_request_managed_device
    683c: b5ff8240     	cbnz	x0, 0x5884 <syna_cdev_ioctls+0xb44>
    6840: aa1603e0     	mov	x0, x22
    6844: 17fffed5     	b	0x6398 <syna_cdev_ioctls+0x1658>
    6848: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006848:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5663
    684c: 91000021     	add	x1, x1, #0x0
		000000000000684c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5663
    6850: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006850:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D1E9
    6854: 91000000     	add	x0, x0, #0x0
		0000000000006854:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D1E9
    6858: aa1f03e2     	mov	x2, xzr
    685c: 94000000     	bl	0x685c <syna_cdev_ioctls+0x1b1c>
		000000000000685c:  R_AARCH64_CALL26	_printk
    6860: 128000b6     	mov	w22, #-0x6              // =-6
    6864: 17fffe2c     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6868: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006868:  R_AARCH64_ADR_PREL_PG_HI21	unk_3D1E9
    686c: 91000000     	add	x0, x0, #0x0
		000000000000686c:  R_AARCH64_ADD_ABS_LO12_NC	unk_3D1E9
    6870: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006870:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ca4
    6874: 91000021     	add	x1, x1, #0x0
		0000000000006874:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ca4
    6878: 17fffff8     	b	0x6858 <syna_cdev_ioctls+0x1b18>
    687c: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000687c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6e92
    6880: 91000108     	add	x8, x8, #0x0
		0000000000006880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6e92
    6884: 7100029f     	cmp	w20, #0x0
    6888: 90000009     	adrp	x9, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006888:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a79
    688c: 91000129     	add	x9, x9, #0x0
		000000000000688c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a79
    6890: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006890:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BF86
    6894: 91000000     	add	x0, x0, #0x0
		0000000000006894:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BF86
    6898: 9a881122     	csel	x2, x9, x8, ne
    689c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000689c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cb
    68a0: 91000021     	add	x1, x1, #0x0
		00000000000068a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cb
    68a4: 94000000     	bl	0x68a4 <syna_cdev_ioctls+0x1b64>
		00000000000068a4:  R_AARCH64_CALL26	_printk
    68a8: aa1603e0     	mov	x0, x22
    68ac: 2a1403e1     	mov	w1, w20
    68b0: 94000000     	bl	0x68b0 <syna_cdev_ioctls+0x1b70>
		00000000000068b0:  R_AARCH64_CALL26	syna_tcm_enable_predict_reading
    68b4: 794012a8     	ldrh	w8, [x21, #0x8]
    68b8: 17fffddc     	b	0x6028 <syna_cdev_ioctls+0x12e8>
    68bc: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000068bc:  R_AARCH64_ADR_PREL_PG_HI21	unk_32556
    68c0: 91000000     	add	x0, x0, #0x0
		00000000000068c0:  R_AARCH64_ADD_ABS_LO12_NC	unk_32556
    68c4: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000068c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cb
    68c8: 91000021     	add	x1, x1, #0x0
		00000000000068c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cb
    68cc: b9000122     	str	w2, [x9]
		00000000000068cc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
    68d0: 94000000     	bl	0x68d0 <syna_cdev_ioctls+0x1b90>
		00000000000068d0:  R_AARCH64_CALL26	_printk
    68d4: 17fffdda     	b	0x603c <syna_cdev_ioctls+0x12fc>
    68d8: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000068d8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3668A
    68dc: 91000000     	add	x0, x0, #0x0
		00000000000068dc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3668A
    68e0: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000068e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cb
    68e4: 91000021     	add	x1, x1, #0x0
		00000000000068e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cb
    68e8: 94000000     	bl	0x68e8 <syna_cdev_ioctls+0x1ba8>
		00000000000068e8:  R_AARCH64_CALL26	_printk
    68ec: 17fffdd9     	b	0x6050 <syna_cdev_ioctls+0x1310>
    68f0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000068f0:  R_AARCH64_ADR_PREL_PG_HI21	unk_361C4
    68f4: 91000000     	add	x0, x0, #0x0
		00000000000068f4:  R_AARCH64_ADD_ABS_LO12_NC	unk_361C4
    68f8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000068f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5649
    68fc: 91000021     	add	x1, x1, #0x0
		00000000000068fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5649
    6900: 2a1603e2     	mov	w2, w22
    6904: 94000000     	bl	0x6904 <syna_cdev_ioctls+0x1bc4>
		0000000000006904:  R_AARCH64_CALL26	_printk
    6908: 12800956     	mov	w22, #-0x4b             // =-75
    690c: 17fffe02     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6910: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006910:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6914: 91000000     	add	x0, x0, #0x0
		0000000000006914:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6918: 1400000b     	b	0x6944 <syna_cdev_ioctls+0x1c04>
    691c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000691c:  R_AARCH64_ADR_PREL_PG_HI21	unk_36B08
    6920: 91000000     	add	x0, x0, #0x0
		0000000000006920:  R_AARCH64_ADD_ABS_LO12_NC	unk_36B08
    6924: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006924:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5649
    6928: 91000021     	add	x1, x1, #0x0
		0000000000006928:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5649
    692c: 2a1803e2     	mov	w2, w24
    6930: 94000000     	bl	0x6930 <syna_cdev_ioctls+0x1bf0>
		0000000000006930:  R_AARCH64_CALL26	_printk
    6934: 12800676     	mov	w22, #-0x34             // =-52
    6938: 17ffff7f     	b	0x6734 <syna_cdev_ioctls+0x19f4>
    693c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000693c:  R_AARCH64_ADR_PREL_PG_HI21	unk_38286
    6940: 91000000     	add	x0, x0, #0x0
		0000000000006940:  R_AARCH64_ADD_ABS_LO12_NC	unk_38286
    6944: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b47
    6948: 91000021     	add	x1, x1, #0x0
		0000000000006948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b47
    694c: aa1f03e2     	mov	x2, xzr
    6950: 94000000     	bl	0x6950 <syna_cdev_ioctls+0x1c10>
		0000000000006950:  R_AARCH64_CALL26	_printk
    6954: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006954:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    6958: f900011f     	str	xzr, [x8]
		0000000000006958:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    695c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		000000000000695c:  R_AARCH64_ADR_PREL_PG_HI21	unk_3703C
    6960: 91000000     	add	x0, x0, #0x0
		0000000000006960:  R_AARCH64_ADD_ABS_LO12_NC	unk_3703C
    6964: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006964:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4135
    6968: 91000021     	add	x1, x1, #0x0
		0000000000006968:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4135
    696c: 2a1403e2     	mov	w2, w20
    6970: 94000000     	bl	0x6970 <syna_cdev_ioctls+0x1c30>
		0000000000006970:  R_AARCH64_CALL26	_printk
    6974: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006974:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    6978: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006978:  R_AARCH64_ADR_PREL_PG_HI21	unk_376CF
    697c: 91000000     	add	x0, x0, #0x0
		000000000000697c:  R_AARCH64_ADD_ABS_LO12_NC	unk_376CF
    6980: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6643
    6984: 91000021     	add	x1, x1, #0x0
		0000000000006984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6643
    6988: 2a1603e2     	mov	w2, w22
    698c: f900011f     	str	xzr, [x8]
		000000000000698c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
    6990: 94000000     	bl	0x6990 <syna_cdev_ioctls+0x1c50>
		0000000000006990:  R_AARCH64_CALL26	_printk
    6994: 12801e56     	mov	w22, #-0xf3             // =-243
    6998: 90000018     	adrp	x24, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006998:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
    699c: 17fffd76     	b	0x5f74 <syna_cdev_ioctls+0x1234>
    69a0: f94022e8     	ldr	x8, [x23, #0x40]
    69a4: 910022e0     	add	x0, x23, #0x8
    69a8: 52800021     	mov	w1, #0x1                // =1
    69ac: b85fc110     	ldur	w16, [x8, #-0x4]
    69b0: 72894471     	movk	w17, #0x4a23
    69b4: 72ae9ab1     	movk	w17, #0x74d5, lsl #16
    69b8: 6b11021f     	cmp	w16, w17
    69bc: 54000040     	b.eq	0x69c4 <syna_cdev_ioctls+0x1c84>
    69c0: d4304500     	brk	#0x8228
    69c4: d63f0100     	blr	x8
    69c8: 37f802e0     	tbnz	w0, #0x1f, 0x6a24 <syna_cdev_ioctls+0x1ce4>
    69cc: f9400289     	ldr	x9, [x20]
    69d0: b94033e8     	ldr	w8, [sp, #0x30]
    69d4: b9420d29     	ldr	w9, [x9, #0x20c]
    69d8: 6b08013f     	cmp	w9, w8
    69dc: 54000069     	b.ls	0x69e8 <syna_cdev_ioctls+0x1ca8>
    69e0: 2a0903e8     	mov	w8, w9
    69e4: b90033e9     	str	w9, [sp, #0x30]
    69e8: 90000014     	adrp	x20, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000069e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    69ec: 91000294     	add	x20, x20, #0x0
		00000000000069ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    69f0: 90000015     	adrp	x21, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000069f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
    69f4: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		00000000000069f4:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B187
    69f8: 91000000     	add	x0, x0, #0x0
		00000000000069f8:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B187
    69fc: aa1403e1     	mov	x1, x20
    6a00: aa1f03e2     	mov	x2, xzr
    6a04: b90002a8     	str	w8, [x21]
		0000000000006a04:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
    6a08: 94000000     	bl	0x6a08 <syna_cdev_ioctls+0x1cc8>
		0000000000006a08:  R_AARCH64_CALL26	_printk
    6a0c: b94002a2     	ldr	w2, [x21]
		0000000000006a0c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
    6a10: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a10:  R_AARCH64_ADR_PREL_PG_HI21	unk_3C517
    6a14: 91000000     	add	x0, x0, #0x0
		0000000000006a14:  R_AARCH64_ADD_ABS_LO12_NC	unk_3C517
    6a18: aa1403e1     	mov	x1, x20
    6a1c: 94000000     	bl	0x6a1c <syna_cdev_ioctls+0x1cdc>
		0000000000006a1c:  R_AARCH64_CALL26	_printk
    6a20: 17fffd96     	b	0x6078 <syna_cdev_ioctls+0x1338>
    6a24: 2a0003f6     	mov	w22, w0
    6a28: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a28:  R_AARCH64_ADR_PREL_PG_HI21	unk_33CD2
    6a2c: 91000000     	add	x0, x0, #0x0
		0000000000006a2c:  R_AARCH64_ADD_ABS_LO12_NC	unk_33CD2
    6a30: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    6a34: 91000021     	add	x1, x1, #0x0
		0000000000006a34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    6a38: aa1f03e2     	mov	x2, xzr
    6a3c: 94000000     	bl	0x6a3c <syna_cdev_ioctls+0x1cfc>
		0000000000006a3c:  R_AARCH64_CALL26	_printk
    6a40: 17fffdb5     	b	0x6114 <syna_cdev_ioctls+0x13d4>
    6a44: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a44:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6a48: 91000000     	add	x0, x0, #0x0
		0000000000006a48:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6a4c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3f
    6a50: 91000021     	add	x1, x1, #0x0
		0000000000006a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3f
    6a54: aa1f03e2     	mov	x2, xzr
    6a58: 94000000     	bl	0x6a58 <syna_cdev_ioctls+0x1d18>
		0000000000006a58:  R_AARCH64_CALL26	_printk
    6a5c: 94000000     	bl	0x6a5c <syna_cdev_ioctls+0x1d1c>
		0000000000006a5c:  R_AARCH64_CALL26	syna_request_managed_device
    6a60: b5ff7b40     	cbnz	x0, 0x59c8 <syna_cdev_ioctls+0xc88>
    6a64: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a64:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6a68: 91000000     	add	x0, x0, #0x0
		0000000000006a68:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6a6c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b47
    6a70: 91000021     	add	x1, x1, #0x0
		0000000000006a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b47
    6a74: aa1f03e2     	mov	x2, xzr
    6a78: 94000000     	bl	0x6a78 <syna_cdev_ioctls+0x1d38>
		0000000000006a78:  R_AARCH64_CALL26	_printk
    6a7c: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a7c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    6a80: f900011f     	str	xzr, [x8]
		0000000000006a80:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    6a84: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a84:  R_AARCH64_ADR_PREL_PG_HI21	unk_3703C
    6a88: 91000000     	add	x0, x0, #0x0
		0000000000006a88:  R_AARCH64_ADD_ABS_LO12_NC	unk_3703C
    6a8c: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4135
    6a90: 91000021     	add	x1, x1, #0x0
		0000000000006a90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4135
    6a94: 52800282     	mov	w2, #0x14               // =20
    6a98: 94000000     	bl	0x6a98 <syna_cdev_ioctls+0x1d58>
		0000000000006a98:  R_AARCH64_CALL26	_printk
    6a9c: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006a9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    6aa0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006aa0:  R_AARCH64_ADR_PREL_PG_HI21	unk_376CF
    6aa4: 91000000     	add	x0, x0, #0x0
		0000000000006aa4:  R_AARCH64_ADD_ABS_LO12_NC	unk_376CF
    6aa8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1521
    6aac: 91000021     	add	x1, x1, #0x0
		0000000000006aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1521
    6ab0: 52800282     	mov	w2, #0x14               // =20
    6ab4: f900011f     	str	xzr, [x8]
		0000000000006ab4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
    6ab8: 94000000     	bl	0x6ab8 <syna_cdev_ioctls+0x1d78>
		0000000000006ab8:  R_AARCH64_CALL26	_printk
    6abc: 394002e8     	ldrb	w8, [x23]
		0000000000006abc:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
    6ac0: 12801e56     	mov	w22, #-0xf3             // =-243
    6ac4: 7100051f     	cmp	w8, #0x1
    6ac8: 54ffacc0     	b.eq	0x6060 <syna_cdev_ioctls+0x1320>
    6acc: 17fffc0a     	b	0x5af4 <syna_cdev_ioctls+0xdb4>
    6ad0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006ad0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6ad4: 91000000     	add	x0, x0, #0x0
		0000000000006ad4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6ad8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006ad8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3f
    6adc: 91000021     	add	x1, x1, #0x0
		0000000000006adc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3f
    6ae0: aa1f03e2     	mov	x2, xzr
    6ae4: 94000000     	bl	0x6ae4 <syna_cdev_ioctls+0x1da4>
		0000000000006ae4:  R_AARCH64_CALL26	_printk
    6ae8: 94000000     	bl	0x6ae8 <syna_cdev_ioctls+0x1da8>
		0000000000006ae8:  R_AARCH64_CALL26	syna_request_managed_device
    6aec: b5ff8280     	cbnz	x0, 0x5b3c <syna_cdev_ioctls+0xdfc>
    6af0: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006af0:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6af4: 91000000     	add	x0, x0, #0x0
		0000000000006af4:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6af8: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b47
    6afc: 91000021     	add	x1, x1, #0x0
		0000000000006afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b47
    6b00: aa1f03e2     	mov	x2, xzr
    6b04: 94000000     	bl	0x6b04 <syna_cdev_ioctls+0x1dc4>
		0000000000006b04:  R_AARCH64_CALL26	_printk
    6b08: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b08:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
    6b0c: f900011f     	str	xzr, [x8]
		0000000000006b0c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
    6b10: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b10:  R_AARCH64_ADR_PREL_PG_HI21	unk_3703C
    6b14: 91000000     	add	x0, x0, #0x0
		0000000000006b14:  R_AARCH64_ADD_ABS_LO12_NC	unk_3703C
    6b18: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4135
    6b1c: 91000021     	add	x1, x1, #0x0
		0000000000006b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4135
    6b20: 52800282     	mov	w2, #0x14               // =20
    6b24: 94000000     	bl	0x6b24 <syna_cdev_ioctls+0x1de4>
		0000000000006b24:  R_AARCH64_CALL26	_printk
    6b28: 90000008     	adrp	x8, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b28:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
    6b2c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b2c:  R_AARCH64_ADR_PREL_PG_HI21	unk_376CF
    6b30: 91000000     	add	x0, x0, #0x0
		0000000000006b30:  R_AARCH64_ADD_ABS_LO12_NC	unk_376CF
    6b34: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11cb
    6b38: 91000021     	add	x1, x1, #0x0
		0000000000006b38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11cb
    6b3c: 52800282     	mov	w2, #0x14               // =20
    6b40: f900011f     	str	xzr, [x8]
		0000000000006b40:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
    6b44: 94000000     	bl	0x6b44 <syna_cdev_ioctls+0x1e04>
		0000000000006b44:  R_AARCH64_CALL26	_printk
    6b48: 12801e56     	mov	w22, #-0xf3             // =-243
    6b4c: 17fffd42     	b	0x6054 <syna_cdev_ioctls+0x1314>
    6b50: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b50:  R_AARCH64_ADR_PREL_PG_HI21	unk_3BE43
    6b54: 91000000     	add	x0, x0, #0x0
		0000000000006b54:  R_AARCH64_ADD_ABS_LO12_NC	unk_3BE43
    6b58: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5a3f
    6b5c: 91000021     	add	x1, x1, #0x0
		0000000000006b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5a3f
    6b60: aa1f03e2     	mov	x2, xzr
    6b64: aa0003f8     	mov	x24, x0
    6b68: 94000000     	bl	0x6b68 <syna_cdev_ioctls+0x1e28>
		0000000000006b68:  R_AARCH64_CALL26	_printk
    6b6c: 94000000     	bl	0x6b6c <syna_cdev_ioctls+0x1e2c>
		0000000000006b6c:  R_AARCH64_CALL26	syna_request_managed_device
    6b70: b5ff3880     	cbnz	x0, 0x5280 <syna_cdev_ioctls+0x540>
    6b74: aa1803e0     	mov	x0, x24
    6b78: 17ffff73     	b	0x6944 <syna_cdev_ioctls+0x1c04>
    6b7c: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b7c:  R_AARCH64_ADR_PREL_PG_HI21	unk_37732
    6b80: 91000000     	add	x0, x0, #0x0
		0000000000006b80:  R_AARCH64_ADD_ABS_LO12_NC	unk_37732
    6b84: 90000001     	adrp	x1, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48eb
    6b88: 91000021     	add	x1, x1, #0x0
		0000000000006b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48eb
    6b8c: aa1f03e2     	mov	x2, xzr
    6b90: 94000000     	bl	0x6b90 <syna_cdev_ioctls+0x1e50>
		0000000000006b90:  R_AARCH64_CALL26	_printk
    6b94: f9400288     	ldr	x8, [x20]
    6b98: 90000009     	adrp	x9, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006b98:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
    6b9c: b9420d08     	ldr	w8, [x8, #0x20c]
    6ba0: b9000128     	str	w8, [x9]
		0000000000006ba0:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
    6ba4: 17fffd35     	b	0x6078 <syna_cdev_ioctls+0x1338>
    6ba8: 90000000     	adrp	x0, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24
    6bac: 91000000     	add	x0, x0, #0x0
		0000000000006bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24
    6bb0: 90000002     	adrp	x2, 0x6000 <syna_cdev_ioctls+0x12c0>
		0000000000006bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4543
    6bb4: 91000042     	add	x2, x2, #0x0
		0000000000006bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4543
    6bb8: 52904501     	mov	w1, #0x8228             // =33320
    6bbc: 5280c3e3     	mov	w3, #0x61f              // =1567
    6bc0: 94000000     	bl	0x6bc0 <syna_cdev_ioctls+0x1e80>
		0000000000006bc0:  R_AARCH64_CALL26	_printk
    6bc4: 17fffab9     	b	0x56a8 <syna_cdev_ioctls+0x968>
    6bc8: 94000000     	bl	0x6bc8 <syna_cdev_ioctls+0x1e88>
		0000000000006bc8:  R_AARCH64_CALL26	__stack_chk_fail
    6bcc: aa0003e2     	mov	x2, x0
    6bd0: 528001e0     	mov	w0, #0xf                // =15
    6bd4: aa1f03e1     	mov	x1, xzr
    6bd8: 94000000     	bl	0x6bd8 <syna_cdev_ioctls+0x1e98>
		0000000000006bd8:  R_AARCH64_CALL26	__fortify_panic
    6bdc: 528001e0     	mov	w0, #0xf                // =15
    6be0: aa1603e2     	mov	x2, x22
    6be4: 94000000     	bl	0x6be4 <syna_cdev_ioctls+0x1ea4>
		0000000000006be4:  R_AARCH64_CALL26	__fortify_panic
    6be8: 528001e0     	mov	w0, #0xf                // =15
    6bec: 94000000     	bl	0x6bec <syna_cdev_ioctls+0x1eac>
		0000000000006bec:  R_AARCH64_CALL26	__fortify_panic
    6bf0: 528001e0     	mov	w0, #0xf                // =15
    6bf4: aa1f03e1     	mov	x1, xzr
    6bf8: aa1403e2     	mov	x2, x20
    6bfc: 94000000     	bl	0x6bfc <syna_cdev_ioctls+0x1ebc>
		0000000000006bfc:  R_AARCH64_CALL26	__fortify_panic
