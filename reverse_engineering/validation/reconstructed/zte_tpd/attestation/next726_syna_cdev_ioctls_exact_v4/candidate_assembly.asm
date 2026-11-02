
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000027af4 <syna_cdev_ioctls>:
   27af4: d503233f     	paciasp
   27af8: d10643ff     	sub	sp, sp, #0x190
   27afc: a9137bfd     	stp	x29, x30, [sp, #0x130]
   27b00: a9146ffc     	stp	x28, x27, [sp, #0x140]
   27b04: a91567fa     	stp	x26, x25, [sp, #0x150]
   27b08: a9165ff8     	stp	x24, x23, [sp, #0x160]
   27b0c: a91757f6     	stp	x22, x21, [sp, #0x170]
   27b10: a9184ff4     	stp	x20, x19, [sp, #0x180]
   27b14: 9104c3fd     	add	x29, sp, #0x130
   27b18: d5384108     	mrs	x8, SP_EL0
   27b1c: 90000000     	adrp	x0, 0x27000 <syna_sysfs_reset_store+0x94>
		0000000000027b1c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data
   27b20: 91000000     	add	x0, x0, #0x0
		0000000000027b20:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data
   27b24: f9438908     	ldr	x8, [x8, #0x710]
   27b28: aa0203f3     	mov	x19, x2
   27b2c: 2a0103f5     	mov	w21, w1
   27b30: f81f03a8     	stur	x8, [x29, #-0x10]
   27b34: f8450408     	ldr	x8, [x0], #0x50
   27b38: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   27b3c: f9405514     	ldr	x20, [x8, #0xa8]
   27b40: 94000000     	bl	0x27b40 <syna_cdev_ioctls+0x4c>
		0000000000027b40:  R_AARCH64_CALL26	mutex_lock
   27b44: 12001eb6     	and	w22, w21, #0xff
   27b48: 71003edf     	cmp	w22, #0xf
   27b4c: 540001e8     	b.hi	0x27b88 <syna_cdev_ioctls+0x94>
   27b50: 710006df     	cmp	w22, #0x1
   27b54: 5400022c     	b.gt	0x27b98 <syna_cdev_ioctls+0xa4>
   27b58: 34000fd6     	cbz	w22, 0x27d50 <syna_cdev_ioctls+0x25c>
   27b5c: 710006df     	cmp	w22, #0x1
   27b60: 54008c81     	b.ne	0x28cf0 <syna_cdev_ioctls+0x11fc>
   27b64: f9413a89     	ldr	x9, [x20, #0x270]
   27b68: f9402128     	ldr	x8, [x9, #0x40]
   27b6c: b4001208     	cbz	x8, 0x27dac <syna_cdev_ioctls+0x2b8>
   27b70: f100067f     	cmp	x19, #0x1
   27b74: 54001200     	b.eq	0x27db4 <syna_cdev_ioctls+0x2c0>
   27b78: b500bb53     	cbnz	x19, 0x292e0 <syna_cdev_ioctls+0x17ec>
   27b7c: 91002120     	add	x0, x9, #0x8
   27b80: 2a1f03e1     	mov	w1, wzr
   27b84: 1400008e     	b	0x27dbc <syna_cdev_ioctls+0x2c8>
   27b88: 710042df     	cmp	w22, #0x10
   27b8c: 54000161     	b.ne	0x27bb8 <syna_cdev_ioctls+0xc4>
   27b90: 52800036     	mov	w22, #0x1               // =1
   27b94: 140005d4     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   27b98: 71000adf     	cmp	w22, #0x2
   27b9c: 5400ba20     	b.eq	0x292e0 <syna_cdev_ioctls+0x17ec>
   27ba0: 71000edf     	cmp	w22, #0x3
   27ba4: 54008a61     	b.ne	0x28cf0 <syna_cdev_ioctls+0x11fc>
   27ba8: 52800028     	mov	w8, #0x1                // =1
   27bac: 2a1f03f6     	mov	w22, wzr
   27bb0: 39161288     	strb	w8, [x20, #0x584]
   27bb4: 140005cc     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   27bb8: d538411a     	mrs	x26, SP_EL0
   27bbc: 39411b48     	ldrb	w8, [x26, #0x46]
   27bc0: d378de7b     	lsl	x27, x19, #8
   27bc4: 37280088     	tbnz	w8, #0x5, 0x27bd4 <syna_cdev_ioctls+0xe0>
   27bc8: f9400349     	ldr	x9, [x26]
   27bcc: aa1303e8     	mov	x8, x19
   27bd0: 36d00049     	tbz	w9, #0x1a, 0x27bd8 <syna_cdev_ioctls+0xe4>
   27bd4: 8a9b2268     	and	x8, x19, x27, asr #8
   27bd8: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
   27bdc: eb09011f     	cmp	x8, x9
   27be0: 54008088     	b.hi	0x28bf0 <syna_cdev_ioctls+0x10fc>
   27be4: d503201f     	nop
   27be8: d53b4228     	mrs	x8, DAIF
   27bec: d50343df     	msr	DAIFSet, #0x3
   27bf0: f9400749     	ldr	x9, [x26, #0x8]
   27bf4: d538202a     	mrs	x10, TTBR1_EL1
   27bf8: aa0903eb     	mov	x11, x9
   27bfc: b340bd4b     	bfxil	x11, x10, #0, #48
   27c00: d518202b     	msr	TTBR1_EL1, x11
   27c04: d5182009     	msr	TTBR0_EL1, x9
   27c08: d5033fdf     	isb
   27c0c: d51b4228     	msr	DAIF, x8
   27c10: 9248fa61     	and	x1, x19, #0xff7fffffffffffff
   27c14: 910023e0     	add	x0, sp, #0x8
   27c18: 52800202     	mov	w2, #0x10               // =16
   27c1c: 94000000     	bl	0x27c1c <syna_cdev_ioctls+0x128>
		0000000000027c1c:  R_AARCH64_CALL26	__arch_copy_from_user
   27c20: d503201f     	nop
   27c24: d53b4228     	mrs	x8, DAIF
   27c28: d50343df     	msr	DAIFSet, #0x3
   27c2c: d5382029     	mrs	x9, TTBR1_EL1
   27c30: 9240bd29     	and	x9, x9, #0xffffffffffff
   27c34: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   27c38: d518200a     	msr	TTBR0_EL1, x10
   27c3c: d5182029     	msr	TTBR1_EL1, x9
   27c40: d5033fdf     	isb
   27c44: d51b4228     	msr	DAIF, x8
   27c48: b5007d60     	cbnz	x0, 0x28bf4 <syna_cdev_ioctls+0x1100>
   27c4c: b9400ff7     	ldr	w23, [sp, #0xc]
   27c50: 714006ff     	cmp	w23, #0x1, lsl #12      // =0x1000
   27c54: 54007ee8     	b.hi	0x28c30 <syna_cdev_ioctls+0x113c>
   27c58: 12001ea8     	and	w8, w21, #0xff
   27c5c: 51004508     	sub	w8, w8, #0x11
   27c60: 7100451f     	cmp	w8, #0x11
   27c64: 5400b9c8     	b.hi	0x2939c <syna_cdev_ioctls+0x18a8>
   27c68: 90000009     	adrp	x9, 0x27000 <syna_sysfs_reset_store+0x94>
		0000000000027c68:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_ioctls_rodata_10c8
   27c6c: 91000129     	add	x9, x9, #0x0
		0000000000027c6c:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_ioctls_rodata_10c8
   27c70: f9400bf5     	ldr	x21, [sp, #0x10]
   27c74: 1000000a     	adr	x10, 0x27c74 <syna_cdev_ioctls+0x180>
   27c78: b8a8792b     	ldrsw	x11, [x9, x8, lsl #2]
   27c7c: 8b0b014a     	add	x10, x10, x11
   27c80: d61f0140     	br	x10
   27c84: 39560a88     	ldrb	w8, [x20, #0x582]
   27c88: b9400be3     	ldr	w3, [sp, #0x8]
   27c8c: b90023ff     	str	wzr, [sp, #0x20]
   27c90: 3600ba48     	tbz	w8, #0x0, 0x293d8 <syna_cdev_ioctls+0x18e4>
   27c94: b9457e88     	ldr	w8, [x20, #0x57c]
   27c98: 71000d1f     	cmp	w8, #0x3
   27c9c: 5400c040     	b.eq	0x294a4 <syna_cdev_ioctls+0x19b0>
   27ca0: 710012ff     	cmp	w23, #0x4
   27ca4: 5400c8a3     	b.lo	0x295b8 <syna_cdev_ioctls+0x1ac4>
   27ca8: 71000c7f     	cmp	w3, #0x3
   27cac: 5400c869     	b.ls	0x295b8 <syna_cdev_ioctls+0x1ac4>
   27cb0: f9413a98     	ldr	x24, [x20, #0x270]
   27cb4: f9402308     	ldr	x8, [x24, #0x40]
   27cb8: b400cf68     	cbz	x8, 0x296a4 <syna_cdev_ioctls+0x1bb0>
   27cbc: 710016ff     	cmp	w23, #0x5
   27cc0: 5400fb22     	b.hs	0x29c24 <syna_cdev_ioctls+0x2130>
   27cc4: 910083e0     	add	x0, sp, #0x20
   27cc8: aa1703e1     	mov	x1, x23
   27ccc: 2a1f03e2     	mov	w2, wzr
   27cd0: 94000000     	bl	0x27cd0 <syna_cdev_ioctls+0x1dc>
		0000000000027cd0:  R_AARCH64_CALL26	__check_object_size
   27cd4: 39411b48     	ldrb	w8, [x26, #0x46]
   27cd8: 37280088     	tbnz	w8, #0x5, 0x27ce8 <syna_cdev_ioctls+0x1f4>
   27cdc: f9400349     	ldr	x9, [x26]
   27ce0: aa1503e8     	mov	x8, x21
   27ce4: 36d00069     	tbz	w9, #0x1a, 0x27cf0 <syna_cdev_ioctls+0x1fc>
   27ce8: d378dea8     	lsl	x8, x21, #8
   27cec: 8a8822a8     	and	x8, x21, x8, asr #8
   27cf0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   27cf4: aa1703f6     	mov	x22, x23
   27cf8: cb170129     	sub	x9, x9, x23
   27cfc: eb08013f     	cmp	x9, x8
   27d00: 54008622     	b.hs	0x28dc4 <syna_cdev_ioctls+0x12d0>
   27d04: cb1602e8     	sub	x8, x23, x22
   27d08: 52800089     	mov	w9, #0x4                // =4
   27d0c: eb080129     	subs	x9, x9, x8
   27d10: 9a8933e1     	csel	x1, xzr, x9, lo
   27d14: eb16003f     	cmp	x1, x22
   27d18: 5400fa63     	b.lo	0x29c64 <syna_cdev_ioctls+0x2170>
   27d1c: 910083e9     	add	x9, sp, #0x20
   27d20: 2a1f03e1     	mov	w1, wzr
   27d24: aa1603e2     	mov	x2, x22
   27d28: 8b080120     	add	x0, x9, x8
   27d2c: 94000000     	bl	0x27d2c <syna_cdev_ioctls+0x238>
		0000000000027d2c:  R_AARCH64_CALL26	memset
   27d30: 2a1603f7     	mov	w23, w22
   27d34: 340087f6     	cbz	w22, 0x28e30 <syna_cdev_ioctls+0x133c>
   27d38: 90000000     	adrp	x0, 0x27000 <syna_sysfs_reset_store+0x94>
		0000000000027d38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   27d3c: 91000000     	add	x0, x0, #0x0
		0000000000027d3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   27d40: 90000001     	adrp	x1, 0x27000 <syna_sysfs_reset_store+0x94>
		0000000000027d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   27d44: 91000021     	add	x1, x1, #0x0
		0000000000027d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   27d48: 2a1703e2     	mov	w2, w23
   27d4c: 1400066c     	b	0x296fc <syna_cdev_ioctls+0x1c08>
   27d50: f9400280     	ldr	x0, [x20]
   27d54: b9420c01     	ldr	w1, [x0, #0x20c]
   27d58: 94000000     	bl	0x27d58 <syna_cdev_ioctls+0x264>
		0000000000027d58:  R_AARCH64_CALL26	syna_tcm_reset
   27d5c: 2a0003f6     	mov	w22, w0
   27d60: 37f87d80     	tbnz	w0, #0x1f, 0x28d10 <syna_cdev_ioctls+0x121c>
   27d64: f9400288     	ldr	x8, [x20]
   27d68: 39402508     	ldrb	w8, [x8, #0x9]
   27d6c: 7100051f     	cmp	w8, #0x1
   27d70: 5400aba1     	b.ne	0x292e4 <syna_cdev_ioctls+0x17f0>
   27d74: f9435e88     	ldr	x8, [x20, #0x6b8]
   27d78: aa1403e0     	mov	x0, x20
   27d7c: b85fc110     	ldur	w16, [x8, #-0x4]
   27d80: 7288e391     	movk	w17, #0x471c
   27d84: 72b5c411     	movk	w17, #0xae20, lsl #16
   27d88: 6b11021f     	cmp	w16, w17
   27d8c: 54000040     	b.eq	0x27d94 <syna_cdev_ioctls+0x2a0>
   27d90: d4304500     	brk	#0x8228
   27d94: d63f0100     	blr	x8
   27d98: 2a0003f6     	mov	w22, w0
   27d9c: 36f8aa40     	tbz	w0, #0x1f, 0x292e4 <syna_cdev_ioctls+0x17f0>
   27da0: 90000000     	adrp	x0, 0x27000 <syna_sysfs_reset_store+0x94>
		0000000000027da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c16
   27da4: 91000000     	add	x0, x0, #0x0
		0000000000027da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c16
   27da8: 140003dc     	b	0x28d18 <syna_cdev_ioctls+0x1224>
   27dac: 128002b6     	mov	w22, #-0x16             // =-22
   27db0: 1400054d     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   27db4: 91002120     	add	x0, x9, #0x8
   27db8: 52800021     	mov	w1, #0x1                // =1
   27dbc: b85fc110     	ldur	w16, [x8, #-0x4]
   27dc0: 728c3631     	movk	w17, #0x61b1
   27dc4: 72a685d1     	movk	w17, #0x342e, lsl #16
   27dc8: 6b11021f     	cmp	w16, w17
   27dcc: 54000040     	b.eq	0x27dd4 <syna_cdev_ioctls+0x2e0>
   27dd0: d4304500     	brk	#0x8228
   27dd4: d63f0100     	blr	x8
   27dd8: 2a0003f6     	mov	w22, w0
   27ddc: 14000542     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   27de0: 39560a88     	ldrb	w8, [x20, #0x582]
   27de4: b9400bf6     	ldr	w22, [sp, #0x8]
   27de8: b9001fff     	str	wzr, [sp, #0x1c]
   27dec: 3600ae28     	tbz	w8, #0x0, 0x293b0 <syna_cdev_ioctls+0x18bc>
   27df0: b9457e88     	ldr	w8, [x20, #0x57c]
   27df4: 71000d1f     	cmp	w8, #0x3
   27df8: 5400b420     	b.eq	0x2947c <syna_cdev_ioctls+0x1988>
   27dfc: 710012ff     	cmp	w23, #0x4
   27e00: 5400bd03     	b.lo	0x295a0 <syna_cdev_ioctls+0x1aac>
   27e04: 71000edf     	cmp	w22, #0x3
   27e08: 5400bcc9     	b.ls	0x295a0 <syna_cdev_ioctls+0x1aac>
   27e0c: 39411b48     	ldrb	w8, [x26, #0x46]
   27e10: 37280088     	tbnz	w8, #0x5, 0x27e20 <syna_cdev_ioctls+0x32c>
   27e14: f9400349     	ldr	x9, [x26]
   27e18: aa1503e8     	mov	x8, x21
   27e1c: 36d00069     	tbz	w9, #0x1a, 0x27e28 <syna_cdev_ioctls+0x334>
   27e20: d378dea8     	lsl	x8, x21, #8
   27e24: 8a8822a8     	and	x8, x21, x8, asr #8
   27e28: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   27e2c: eb09011f     	cmp	x8, x9
   27e30: 5400c1c8     	b.hi	0x29668 <syna_cdev_ioctls+0x1b74>
   27e34: d503201f     	nop
   27e38: d53b4228     	mrs	x8, DAIF
   27e3c: d50343df     	msr	DAIFSet, #0x3
   27e40: f9400749     	ldr	x9, [x26, #0x8]
   27e44: d538202a     	mrs	x10, TTBR1_EL1
   27e48: aa0903eb     	mov	x11, x9
   27e4c: b340bd4b     	bfxil	x11, x10, #0, #48
   27e50: d518202b     	msr	TTBR1_EL1, x11
   27e54: d5182009     	msr	TTBR0_EL1, x9
   27e58: d5033fdf     	isb
   27e5c: d51b4228     	msr	DAIF, x8
   27e60: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   27e64: 910073e0     	add	x0, sp, #0x1c
   27e68: 52800082     	mov	w2, #0x4                // =4
   27e6c: 94000000     	bl	0x27e6c <syna_cdev_ioctls+0x378>
		0000000000027e6c:  R_AARCH64_CALL26	__arch_copy_from_user
   27e70: aa0003e2     	mov	x2, x0
   27e74: d503201f     	nop
   27e78: d53b4228     	mrs	x8, DAIF
   27e7c: d50343df     	msr	DAIFSet, #0x3
   27e80: d5382029     	mrs	x9, TTBR1_EL1
   27e84: 9240bd29     	and	x9, x9, #0xffffffffffff
   27e88: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   27e8c: d518200a     	msr	TTBR0_EL1, x10
   27e90: d5182029     	msr	TTBR1_EL1, x9
   27e94: d5033fdf     	isb
   27e98: d51b4228     	msr	DAIF, x8
   27e9c: b500be82     	cbnz	x2, 0x2966c <syna_cdev_ioctls+0x1b78>
   27ea0: b9401ff7     	ldr	w23, [sp, #0x1c]
   27ea4: f9427e88     	ldr	x8, [x20, #0x4f8]
   27ea8: 9113e289     	add	x9, x20, #0x4f8
   27eac: eb09011f     	cmp	x8, x9
   27eb0: 540005e1     	b.ne	0x27f6c <syna_cdev_ioctls+0x478>
   27eb4: 2a1703e0     	mov	w0, w23
   27eb8: 94000000     	bl	0x27eb8 <syna_cdev_ioctls+0x3c4>
		0000000000027eb8:  R_AARCH64_CALL26	__msecs_to_jiffies
   27ebc: b944f288     	ldr	w8, [x20, #0x4f0]
   27ec0: f100001f     	cmp	x0, #0x0
   27ec4: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   27ec8: 9a9f0400     	csinc	x0, x0, xzr, eq
   27ecc: 350004e8     	cbnz	w8, 0x27f68 <syna_cdev_ioctls+0x474>
   27ed0: b40004c0     	cbz	x0, 0x27f68 <syna_cdev_ioctls+0x474>
   27ed4: 2a1703e0     	mov	w0, w23
   27ed8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   27edc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   27ee0: f90013ff     	str	xzr, [sp, #0x20]
   27ee4: 94000000     	bl	0x27ee4 <syna_cdev_ioctls+0x3f0>
		0000000000027ee4:  R_AARCH64_CALL26	__msecs_to_jiffies
   27ee8: aa0003f7     	mov	x23, x0
   27eec: 910083e0     	add	x0, sp, #0x20
   27ef0: 2a1f03e1     	mov	w1, wzr
   27ef4: 94000000     	bl	0x27ef4 <syna_cdev_ioctls+0x400>
		0000000000027ef4:  R_AARCH64_CALL26	init_wait_entry
   27ef8: 91142280     	add	x0, x20, #0x508
   27efc: 910083e1     	add	x1, sp, #0x20
   27f00: 52800022     	mov	w2, #0x1                // =1
   27f04: 94000000     	bl	0x27f04 <syna_cdev_ioctls+0x410>
		0000000000027f04:  R_AARCH64_CALL26	prepare_to_wait_event
   27f08: b944f288     	ldr	w8, [x20, #0x4f0]
   27f0c: f10002ff     	cmp	x23, #0x0
   27f10: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   27f14: 9a9f06f7     	csinc	x23, x23, xzr, eq
   27f18: 35000208     	cbnz	w8, 0x27f58 <syna_cdev_ioctls+0x464>
   27f1c: b40001f7     	cbz	x23, 0x27f58 <syna_cdev_ioctls+0x464>
   27f20: b5000240     	cbnz	x0, 0x27f68 <syna_cdev_ioctls+0x474>
   27f24: aa1703e0     	mov	x0, x23
   27f28: 94000000     	bl	0x27f28 <syna_cdev_ioctls+0x434>
		0000000000027f28:  R_AARCH64_CALL26	schedule_timeout
   27f2c: aa0003f7     	mov	x23, x0
   27f30: 91142280     	add	x0, x20, #0x508
   27f34: 910083e1     	add	x1, sp, #0x20
   27f38: 52800022     	mov	w2, #0x1                // =1
   27f3c: 94000000     	bl	0x27f3c <syna_cdev_ioctls+0x448>
		0000000000027f3c:  R_AARCH64_CALL26	prepare_to_wait_event
   27f40: b944f288     	ldr	w8, [x20, #0x4f0]
   27f44: f10002ff     	cmp	x23, #0x0
   27f48: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   27f4c: 9a9f06f7     	csinc	x23, x23, xzr, eq
   27f50: 35000048     	cbnz	w8, 0x27f58 <syna_cdev_ioctls+0x464>
   27f54: b5fffe77     	cbnz	x23, 0x27f20 <syna_cdev_ioctls+0x42c>
   27f58: 91142280     	add	x0, x20, #0x508
   27f5c: 910083e1     	add	x1, sp, #0x20
   27f60: 94000000     	bl	0x27f60 <syna_cdev_ioctls+0x46c>
		0000000000027f60:  R_AARCH64_CALL26	finish_wait
   27f64: aa1703e0     	mov	x0, x23
   27f68: 34009f20     	cbz	w0, 0x2934c <syna_cdev_ioctls+0x1858>
   27f6c: 710006df     	cmp	w22, #0x1
   27f70: 540096eb     	b.lt	0x2924c <syna_cdev_ioctls+0x1758>
   27f74: b944f288     	ldr	w8, [x20, #0x4f0]
   27f78: 39411b49     	ldrb	w9, [x26, #0x46]
   27f7c: b9001fe8     	str	w8, [sp, #0x1c]
   27f80: 37280089     	tbnz	w9, #0x5, 0x27f90 <syna_cdev_ioctls+0x49c>
   27f84: f9400349     	ldr	x9, [x26]
   27f88: aa1503e8     	mov	x8, x21
   27f8c: 36d00069     	tbz	w9, #0x1a, 0x27f98 <syna_cdev_ioctls+0x4a4>
   27f90: d378dea8     	lsl	x8, x21, #8
   27f94: 8a8822a8     	and	x8, x21, x8, asr #8
   27f98: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   27f9c: eb09011f     	cmp	x8, x9
   27fa0: 54000368     	b.hi	0x2800c <syna_cdev_ioctls+0x518>
   27fa4: d503201f     	nop
   27fa8: d53b4228     	mrs	x8, DAIF
   27fac: d50343df     	msr	DAIFSet, #0x3
   27fb0: f9400749     	ldr	x9, [x26, #0x8]
   27fb4: d538202a     	mrs	x10, TTBR1_EL1
   27fb8: aa0903eb     	mov	x11, x9
   27fbc: b340bd4b     	bfxil	x11, x10, #0, #48
   27fc0: d518202b     	msr	TTBR1_EL1, x11
   27fc4: d5182009     	msr	TTBR0_EL1, x9
   27fc8: d5033fdf     	isb
   27fcc: d51b4228     	msr	DAIF, x8
   27fd0: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   27fd4: 910073e1     	add	x1, sp, #0x1c
   27fd8: 52800082     	mov	w2, #0x4                // =4
   27fdc: 94000000     	bl	0x27fdc <syna_cdev_ioctls+0x4e8>
		0000000000027fdc:  R_AARCH64_CALL26	__arch_copy_to_user
   27fe0: d503201f     	nop
   27fe4: d53b4228     	mrs	x8, DAIF
   27fe8: d50343df     	msr	DAIFSet, #0x3
   27fec: d5382029     	mrs	x9, TTBR1_EL1
   27ff0: 9240bd29     	and	x9, x9, #0xffffffffffff
   27ff4: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   27ff8: d518200a     	msr	TTBR0_EL1, x10
   27ffc: d5182029     	msr	TTBR1_EL1, x9
   28000: d5033fdf     	isb
   28004: d51b4228     	msr	DAIF, x8
   28008: 34009220     	cbz	w0, 0x2924c <syna_cdev_ioctls+0x1758>
   2800c: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		000000000002800c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b94
   28010: 91000000     	add	x0, x0, #0x0
		0000000000028010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b94
   28014: 1400059f     	b	0x29690 <syna_cdev_ioctls+0x1b9c>
   28018: f9400296     	ldr	x22, [x20]
   2801c: 39560a88     	ldrb	w8, [x20, #0x582]
   28020: 390073ff     	strb	wzr, [sp, #0x1c]
   28024: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   28028: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   2802c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   28030: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   28034: f90013ff     	str	xzr, [sp, #0x20]
   28038: 36009c68     	tbz	w8, #0x0, 0x293c4 <syna_cdev_ioctls+0x18d0>
   2803c: b9457e88     	ldr	w8, [x20, #0x57c]
   28040: 71000d1f     	cmp	w8, #0x3
   28044: 5400a260     	b.eq	0x29490 <syna_cdev_ioctls+0x199c>
   28048: 9000001c     	adrp	x28, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028048:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   2804c: b9400388     	ldr	w8, [x28]
		000000000002804c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   28050: 11000d08     	add	w8, w8, #0x3
   28054: 6b17011f     	cmp	w8, w23
   28058: 5400a828     	b.hi	0x2955c <syna_cdev_ioctls+0x1a68>
   2805c: b9400be2     	ldr	w2, [sp, #0x8]
   28060: 6b17005f     	cmp	w2, w23
   28064: 5400b528     	b.hi	0x29708 <syna_cdev_ioctls+0x1c14>
   28068: 12820008     	mov	w8, #-0x1001            // =-4097
   2806c: 0b080048     	add	w8, w2, w8
   28070: 313ffd1f     	cmn	w8, #0xfff
   28074: 5400b4a9     	b.ls	0x29708 <syna_cdev_ioctls+0x1c14>
   28078: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028078:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   2807c: 39400102     	ldrb	w2, [x8]
		000000000002807c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   28080: 3500b522     	cbnz	w2, 0x29724 <syna_cdev_ioctls+0x1c30>
   28084: 90000019     	adrp	x25, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028084:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   28088: 91000339     	add	x25, x25, #0x0
		0000000000028088:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   2808c: 91004320     	add	x0, x25, #0x10
   28090: 94000000     	bl	0x28090 <syna_cdev_ioctls+0x59c>
		0000000000028090:  R_AARCH64_CALL26	mutex_lock
   28094: b940af28     	ldr	w8, [x25, #0xac]
   28098: 3941032a     	ldrb	w10, [x25, #0x40]
   2809c: f9400320     	ldr	x0, [x25]
   280a0: 0aa87d09     	bic	w9, w8, w8, asr #31
   280a4: b9400b28     	ldr	w8, [x25, #0x8]
   280a8: 0b170134     	add	w20, w9, w23
   280ac: 11000549     	add	w9, w10, #0x1
   280b0: 6b14011f     	cmp	w8, w20
   280b4: 39010329     	strb	w9, [x25, #0x40]
   280b8: 54006382     	b.hs	0x28d28 <syna_cdev_ioctls+0x1234>
   280bc: b40000c0     	cbz	x0, 0x280d4 <syna_cdev_ioctls+0x5e0>
   280c0: aa0003f8     	mov	x24, x0
   280c4: 94000000     	bl	0x280c4 <syna_cdev_ioctls+0x5d0>
		00000000000280c4:  R_AARCH64_CALL26	syna_request_managed_device
   280c8: b400d420     	cbz	x0, 0x29b4c <syna_cdev_ioctls+0x2058>
   280cc: aa1803e1     	mov	x1, x24
   280d0: 94000000     	bl	0x280d0 <syna_cdev_ioctls+0x5dc>
		00000000000280d0:  R_AARCH64_CALL26	devm_kfree
   280d4: 94000000     	bl	0x280d4 <syna_cdev_ioctls+0x5e0>
		00000000000280d4:  R_AARCH64_CALL26	syna_request_managed_device
   280d8: b400d480     	cbz	x0, 0x29b68 <syna_cdev_ioctls+0x2074>
   280dc: 7100029f     	cmp	w20, #0x0
   280e0: 5400c7cd     	b.le	0x299d8 <syna_cdev_ioctls+0x1ee4>
   280e4: aa1403e1     	mov	x1, x20
   280e8: 5281b802     	mov	w2, #0xdc0              // =3520
   280ec: 94000000     	bl	0x280ec <syna_cdev_ioctls+0x5f8>
		00000000000280ec:  R_AARCH64_CALL26	devm_kmalloc
   280f0: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000280f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   280f4: f9000100     	str	x0, [x8]
		00000000000280f4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   280f8: b400d460     	cbz	x0, 0x29b84 <syna_cdev_ioctls+0x2090>
   280fc: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000280fc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   28100: b9000114     	str	w20, [x8]
		0000000000028100:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   28104: 1400030a     	b	0x28d2c <syna_cdev_ioctls+0x1238>
   28108: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028108:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   2810c: 91000000     	add	x0, x0, #0x0
		000000000002810c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   28110: 94000000     	bl	0x28110 <syna_cdev_ioctls+0x61c>
		0000000000028110:  R_AARCH64_CALL26	mutex_lock
   28114: f9427e95     	ldr	x21, [x20, #0x4f8]
   28118: 9113e296     	add	x22, x20, #0x4f8
   2811c: eb1602bf     	cmp	x21, x22
   28120: 540003e0     	b.eq	0x2819c <syna_cdev_ioctls+0x6a8>
   28124: d2802017     	mov	x23, #0x100             // =256
   28128: f2fbd5b7     	movk	x23, #0xdead, lsl #48
   2812c: 14000004     	b	0x2813c <syna_cdev_ioctls+0x648>
   28130: f94002d5     	ldr	x21, [x22]
   28134: eb1602bf     	cmp	x21, x22
   28138: 54000320     	b.eq	0x2819c <syna_cdev_ioctls+0x6a8>
   2813c: f94006a8     	ldr	x8, [x21, #0x8]
   28140: f9400109     	ldr	x9, [x8]
   28144: eb15013f     	cmp	x9, x21
   28148: 54000241     	b.ne	0x28190 <syna_cdev_ioctls+0x69c>
   2814c: f94002a9     	ldr	x9, [x21]
   28150: f940052a     	ldr	x10, [x9, #0x8]
   28154: eb15015f     	cmp	x10, x21
   28158: 540001c1     	b.ne	0x28190 <syna_cdev_ioctls+0x69c>
   2815c: f9000528     	str	x8, [x9, #0x8]
   28160: f9000109     	str	x9, [x8]
   28164: f9400aa0     	ldr	x0, [x21, #0x10]
   28168: 91008ae8     	add	x8, x23, #0x22
   2816c: a90022b7     	stp	x23, x8, [x21]
   28170: 94000000     	bl	0x28170 <syna_cdev_ioctls+0x67c>
		0000000000028170:  R_AARCH64_CALL26	kfree
   28174: aa1503e0     	mov	x0, x21
   28178: 94000000     	bl	0x28178 <syna_cdev_ioctls+0x684>
		0000000000028178:  R_AARCH64_CALL26	kfree
   2817c: b944f288     	ldr	w8, [x20, #0x4f0]
   28180: 34fffd88     	cbz	w8, 0x28130 <syna_cdev_ioctls+0x63c>
   28184: 51000508     	sub	w8, w8, #0x1
   28188: b904f288     	str	w8, [x20, #0x4f0]
   2818c: 17ffffe9     	b	0x28130 <syna_cdev_ioctls+0x63c>
   28190: aa1503e0     	mov	x0, x21
   28194: 94000000     	bl	0x28194 <syna_cdev_ioctls+0x6a0>
		0000000000028194:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   28198: 17fffff3     	b	0x28164 <syna_cdev_ioctls+0x670>
   2819c: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		000000000002819c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   281a0: 91000000     	add	x0, x0, #0x0
		00000000000281a0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   281a4: 94000000     	bl	0x281a4 <syna_cdev_ioctls+0x6b0>
		00000000000281a4:  R_AARCH64_CALL26	mutex_unlock
   281a8: 39411b48     	ldrb	w8, [x26, #0x46]
   281ac: 36288568     	tbz	w8, #0x5, 0x29258 <syna_cdev_ioctls+0x1764>
   281b0: 1400042d     	b	0x29264 <syna_cdev_ioctls+0x1770>
   281b4: 39560a88     	ldrb	w8, [x20, #0x582]
   281b8: f9413a9c     	ldr	x28, [x20, #0x270]
   281bc: b9001fff     	str	wzr, [sp, #0x1c]
   281c0: 36009168     	tbz	w8, #0x0, 0x293ec <syna_cdev_ioctls+0x18f8>
   281c4: b9457e88     	ldr	w8, [x20, #0x57c]
   281c8: 71000d1f     	cmp	w8, #0x3
   281cc: 54009760     	b.eq	0x294b8 <syna_cdev_ioctls+0x19c4>
   281d0: 71000eff     	cmp	w23, #0x3
   281d4: 54009d09     	b.ls	0x29574 <syna_cdev_ioctls+0x1a80>
   281d8: 39411b48     	ldrb	w8, [x26, #0x46]
   281dc: 37280088     	tbnz	w8, #0x5, 0x281ec <syna_cdev_ioctls+0x6f8>
   281e0: f9400349     	ldr	x9, [x26]
   281e4: aa1503e8     	mov	x8, x21
   281e8: 36d00069     	tbz	w9, #0x1a, 0x281f4 <syna_cdev_ioctls+0x700>
   281ec: d378dea8     	lsl	x8, x21, #8
   281f0: 8a8822a8     	and	x8, x21, x8, asr #8
   281f4: b27e93e9     	mov	x9, #0x7ffffffffc       // =549755813884
   281f8: eb09011f     	cmp	x8, x9
   281fc: 5400a628     	b.hi	0x296c0 <syna_cdev_ioctls+0x1bcc>
   28200: d503201f     	nop
   28204: d53b4228     	mrs	x8, DAIF
   28208: d50343df     	msr	DAIFSet, #0x3
   2820c: f9400749     	ldr	x9, [x26, #0x8]
   28210: d538202a     	mrs	x10, TTBR1_EL1
   28214: aa0903eb     	mov	x11, x9
   28218: b340bd4b     	bfxil	x11, x10, #0, #48
   2821c: d518202b     	msr	TTBR1_EL1, x11
   28220: d5182009     	msr	TTBR0_EL1, x9
   28224: d5033fdf     	isb
   28228: d51b4228     	msr	DAIF, x8
   2822c: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28230: 910073e0     	add	x0, sp, #0x1c
   28234: 52800082     	mov	w2, #0x4                // =4
   28238: 94000000     	bl	0x28238 <syna_cdev_ioctls+0x744>
		0000000000028238:  R_AARCH64_CALL26	__arch_copy_from_user
   2823c: d503201f     	nop
   28240: d53b4228     	mrs	x8, DAIF
   28244: d50343df     	msr	DAIFSet, #0x3
   28248: d5382029     	mrs	x9, TTBR1_EL1
   2824c: 9240bd29     	and	x9, x9, #0xffffffffffff
   28250: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28254: d518200a     	msr	TTBR0_EL1, x10
   28258: d5182029     	msr	TTBR1_EL1, x9
   2825c: d5033fdf     	isb
   28260: d51b4228     	msr	DAIF, x8
   28264: b500a300     	cbnz	x0, 0x296c4 <syna_cdev_ioctls+0x1bd0>
   28268: b9401ff6     	ldr	w22, [sp, #0x1c]
   2826c: f9427e88     	ldr	x8, [x20, #0x4f8]
   28270: 9113e298     	add	x24, x20, #0x4f8
   28274: eb18011f     	cmp	x8, x24
   28278: 540005e1     	b.ne	0x28334 <syna_cdev_ioctls+0x840>
   2827c: 2a1603e0     	mov	w0, w22
   28280: 94000000     	bl	0x28280 <syna_cdev_ioctls+0x78c>
		0000000000028280:  R_AARCH64_CALL26	__msecs_to_jiffies
   28284: b944f288     	ldr	w8, [x20, #0x4f0]
   28288: f100001f     	cmp	x0, #0x0
   2828c: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   28290: 9a9f0400     	csinc	x0, x0, xzr, eq
   28294: 350004e8     	cbnz	w8, 0x28330 <syna_cdev_ioctls+0x83c>
   28298: b40004c0     	cbz	x0, 0x28330 <syna_cdev_ioctls+0x83c>
   2829c: 2a1603e0     	mov	w0, w22
   282a0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   282a4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   282a8: f90013ff     	str	xzr, [sp, #0x20]
   282ac: 94000000     	bl	0x282ac <syna_cdev_ioctls+0x7b8>
		00000000000282ac:  R_AARCH64_CALL26	__msecs_to_jiffies
   282b0: aa0003f6     	mov	x22, x0
   282b4: 910083e0     	add	x0, sp, #0x20
   282b8: 2a1f03e1     	mov	w1, wzr
   282bc: 94000000     	bl	0x282bc <syna_cdev_ioctls+0x7c8>
		00000000000282bc:  R_AARCH64_CALL26	init_wait_entry
   282c0: 91142280     	add	x0, x20, #0x508
   282c4: 910083e1     	add	x1, sp, #0x20
   282c8: 52800022     	mov	w2, #0x1                // =1
   282cc: 94000000     	bl	0x282cc <syna_cdev_ioctls+0x7d8>
		00000000000282cc:  R_AARCH64_CALL26	prepare_to_wait_event
   282d0: b944f288     	ldr	w8, [x20, #0x4f0]
   282d4: f10002df     	cmp	x22, #0x0
   282d8: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   282dc: 9a9f06d6     	csinc	x22, x22, xzr, eq
   282e0: 35000208     	cbnz	w8, 0x28320 <syna_cdev_ioctls+0x82c>
   282e4: b40001f6     	cbz	x22, 0x28320 <syna_cdev_ioctls+0x82c>
   282e8: b5000240     	cbnz	x0, 0x28330 <syna_cdev_ioctls+0x83c>
   282ec: aa1603e0     	mov	x0, x22
   282f0: 94000000     	bl	0x282f0 <syna_cdev_ioctls+0x7fc>
		00000000000282f0:  R_AARCH64_CALL26	schedule_timeout
   282f4: aa0003f6     	mov	x22, x0
   282f8: 91142280     	add	x0, x20, #0x508
   282fc: 910083e1     	add	x1, sp, #0x20
   28300: 52800022     	mov	w2, #0x1                // =1
   28304: 94000000     	bl	0x28304 <syna_cdev_ioctls+0x810>
		0000000000028304:  R_AARCH64_CALL26	prepare_to_wait_event
   28308: b944f288     	ldr	w8, [x20, #0x4f0]
   2830c: f10002df     	cmp	x22, #0x0
   28310: 7a400904     	ccmp	w8, #0x0, #0x4, eq
   28314: 9a9f06d6     	csinc	x22, x22, xzr, eq
   28318: 35000048     	cbnz	w8, 0x28320 <syna_cdev_ioctls+0x82c>
   2831c: b5fffe76     	cbnz	x22, 0x282e8 <syna_cdev_ioctls+0x7f4>
   28320: 91142280     	add	x0, x20, #0x508
   28324: 910083e1     	add	x1, sp, #0x20
   28328: 94000000     	bl	0x28328 <syna_cdev_ioctls+0x834>
		0000000000028328:  R_AARCH64_CALL26	finish_wait
   2832c: aa1603e0     	mov	x0, x22
   28330: 34008120     	cbz	w0, 0x29354 <syna_cdev_ioctls+0x1860>
   28334: f9400308     	ldr	x8, [x24]
   28338: eb18011f     	cmp	x8, x24
   2833c: 54007360     	b.eq	0x291a8 <syna_cdev_ioctls+0x16b4>
   28340: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028340:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   28344: 91000000     	add	x0, x0, #0x0
		0000000000028344:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   28348: 94000000     	bl	0x28348 <syna_cdev_ioctls+0x854>
		0000000000028348:  R_AARCH64_CALL26	mutex_lock
   2834c: f9400318     	ldr	x24, [x24]
   28350: b9401b19     	ldr	w25, [x24, #0x18]
   28354: 6b17033f     	cmp	w25, w23
   28358: 5400ad88     	b.hi	0x29908 <syna_cdev_ioctls+0x1e14>
   2835c: f9400b16     	ldr	x22, [x24, #0x10]
   28360: aa1903e1     	mov	x1, x25
   28364: 52800022     	mov	w2, #0x1                // =1
   28368: aa1603e0     	mov	x0, x22
   2836c: 94000000     	bl	0x2836c <syna_cdev_ioctls+0x878>
		000000000002836c:  R_AARCH64_CALL26	__check_object_size
   28370: 39411b48     	ldrb	w8, [x26, #0x46]
   28374: 37280088     	tbnz	w8, #0x5, 0x28384 <syna_cdev_ioctls+0x890>
   28378: f9400349     	ldr	x9, [x26]
   2837c: aa1503e8     	mov	x8, x21
   28380: 36d00069     	tbz	w9, #0x1a, 0x2838c <syna_cdev_ioctls+0x898>
   28384: d378dea8     	lsl	x8, x21, #8
   28388: 8a8822a8     	and	x8, x21, x8, asr #8
   2838c: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   28390: cb190129     	sub	x9, x9, x25
   28394: eb08013f     	cmp	x9, x8
   28398: 54000363     	b.lo	0x28404 <syna_cdev_ioctls+0x910>
   2839c: d503201f     	nop
   283a0: d53b4228     	mrs	x8, DAIF
   283a4: d50343df     	msr	DAIFSet, #0x3
   283a8: f9400749     	ldr	x9, [x26, #0x8]
   283ac: d538202a     	mrs	x10, TTBR1_EL1
   283b0: aa0903eb     	mov	x11, x9
   283b4: b340bd4b     	bfxil	x11, x10, #0, #48
   283b8: d518202b     	msr	TTBR1_EL1, x11
   283bc: d5182009     	msr	TTBR0_EL1, x9
   283c0: d5033fdf     	isb
   283c4: d51b4228     	msr	DAIF, x8
   283c8: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   283cc: aa1603e1     	mov	x1, x22
   283d0: aa1903e2     	mov	x2, x25
   283d4: 94000000     	bl	0x283d4 <syna_cdev_ioctls+0x8e0>
		00000000000283d4:  R_AARCH64_CALL26	__arch_copy_to_user
   283d8: aa0003f9     	mov	x25, x0
   283dc: d503201f     	nop
   283e0: d53b4228     	mrs	x8, DAIF
   283e4: d50343df     	msr	DAIFSet, #0x3
   283e8: d5382029     	mrs	x9, TTBR1_EL1
   283ec: 9240bd29     	and	x9, x9, #0xffffffffffff
   283f0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   283f4: d518200a     	msr	TTBR0_EL1, x10
   283f8: d5182029     	msr	TTBR1_EL1, x9
   283fc: d5033fdf     	isb
   28400: d51b4228     	msr	DAIF, x8
   28404: 3500a9b9     	cbnz	w25, 0x29938 <syna_cdev_ioctls+0x1e44>
   28408: 2a1f03f6     	mov	w22, wzr
   2840c: b9401b09     	ldr	w9, [x24, #0x18]
   28410: f9400708     	ldr	x8, [x24, #0x8]
   28414: b9000be9     	str	w9, [sp, #0x8]
   28418: f9400109     	ldr	x9, [x8]
   2841c: eb18013f     	cmp	x9, x24
   28420: 5400a861     	b.ne	0x2992c <syna_cdev_ioctls+0x1e38>
   28424: f9400309     	ldr	x9, [x24]
   28428: f940052a     	ldr	x10, [x9, #0x8]
   2842c: eb18015f     	cmp	x10, x24
   28430: 5400a7e1     	b.ne	0x2992c <syna_cdev_ioctls+0x1e38>
   28434: f9000528     	str	x8, [x9, #0x8]
   28438: f9000109     	str	x9, [x8]
   2843c: d2802008     	mov	x8, #0x100              // =256
   28440: 52800449     	mov	w9, #0x22               // =34
   28444: f2fbd5a8     	movk	x8, #0xdead, lsl #48
   28448: aa090109     	orr	x9, x8, x9
   2844c: a9002708     	stp	x8, x9, [x24]
   28450: 35000059     	cbnz	w25, 0x28458 <syna_cdev_ioctls+0x964>
   28454: b9401b16     	ldr	w22, [x24, #0x18]
   28458: f9400b00     	ldr	x0, [x24, #0x10]
   2845c: 94000000     	bl	0x2845c <syna_cdev_ioctls+0x968>
		000000000002845c:  R_AARCH64_CALL26	kfree
   28460: aa1803e0     	mov	x0, x24
   28464: 94000000     	bl	0x28464 <syna_cdev_ioctls+0x970>
		0000000000028464:  R_AARCH64_CALL26	kfree
   28468: b944f288     	ldr	w8, [x20, #0x4f0]
   2846c: 34000068     	cbz	w8, 0x28478 <syna_cdev_ioctls+0x984>
   28470: 51000508     	sub	w8, w8, #0x1
   28474: b904f288     	str	w8, [x20, #0x4f0]
   28478: 90000009     	adrp	x9, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028478:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   2847c: b9400129     	ldr	w9, [x9]
		000000000002847c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   28480: 6b09011f     	cmp	w8, w9
   28484: 540001e2     	b.hs	0x284c0 <syna_cdev_ioctls+0x9cc>
   28488: f9413a88     	ldr	x8, [x20, #0x270]
   2848c: 3942f108     	ldrb	w8, [x8, #0xbc]
   28490: 37000188     	tbnz	w8, #0x0, 0x284c0 <syna_cdev_ioctls+0x9cc>
   28494: f9402388     	ldr	x8, [x28, #0x40]
   28498: b4000148     	cbz	x8, 0x284c0 <syna_cdev_ioctls+0x9cc>
   2849c: 91002380     	add	x0, x28, #0x8
   284a0: 52800021     	mov	w1, #0x1                // =1
   284a4: b85fc110     	ldur	w16, [x8, #-0x4]
   284a8: 728c3631     	movk	w17, #0x61b1
   284ac: 72a685d1     	movk	w17, #0x342e, lsl #16
   284b0: 6b11021f     	cmp	w16, w17
   284b4: 54000040     	b.eq	0x284bc <syna_cdev_ioctls+0x9c8>
   284b8: d4304500     	brk	#0x8228
   284bc: d63f0100     	blr	x8
   284c0: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000284c0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x80
   284c4: 91000000     	add	x0, x0, #0x0
		00000000000284c4:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x80
   284c8: 14000360     	b	0x29248 <syna_cdev_ioctls+0x1754>
   284cc: b9400be3     	ldr	w3, [sp, #0x8]
   284d0: aa1403e0     	mov	x0, x20
   284d4: aa1503e1     	mov	x1, x21
   284d8: 2a1703e2     	mov	w2, w23
   284dc: 940006a1     	bl	0x29f60 <syna_cdev_ioctls+0x246c>
		00000000000284dc:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_read
   284e0: 1400007f     	b	0x286dc <syna_cdev_ioctls+0xbe8>
   284e4: b9400be2     	ldr	w2, [sp, #0x8]
   284e8: 71004c5f     	cmp	w2, #0x13
   284ec: 540078a9     	b.ls	0x29400 <syna_cdev_ioctls+0x190c>
   284f0: 90000017     	adrp	x23, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000284f0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   284f4: f9400298     	ldr	x24, [x20]
   284f8: 394002e2     	ldrb	w2, [x23]
		00000000000284f8:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   284fc: 35007ec2     	cbnz	w2, 0x294d4 <syna_cdev_ioctls+0x19e0>
   28500: 90000019     	adrp	x25, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028500:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   28504: 91000339     	add	x25, x25, #0x0
		0000000000028504:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   28508: 91004320     	add	x0, x25, #0x10
   2850c: 94000000     	bl	0x2850c <syna_cdev_ioctls+0xa18>
		000000000002850c:  R_AARCH64_CALL26	mutex_lock
   28510: 39410328     	ldrb	w8, [x25, #0x40]
   28514: b9400b36     	ldr	w22, [x25, #0x8]
   28518: f9400320     	ldr	x0, [x25]
   2851c: 11000508     	add	w8, w8, #0x1
   28520: 71004edf     	cmp	w22, #0x13
   28524: 39010328     	strb	w8, [x25, #0x40]
   28528: 54000248     	b.hi	0x28570 <syna_cdev_ioctls+0xa7c>
   2852c: b40000c0     	cbz	x0, 0x28544 <syna_cdev_ioctls+0xa50>
   28530: aa0003f6     	mov	x22, x0
   28534: 94000000     	bl	0x28534 <syna_cdev_ioctls+0xa40>
		0000000000028534:  R_AARCH64_CALL26	syna_request_managed_device
   28538: b400a920     	cbz	x0, 0x29a5c <syna_cdev_ioctls+0x1f68>
   2853c: aa1603e1     	mov	x1, x22
   28540: 94000000     	bl	0x28540 <syna_cdev_ioctls+0xa4c>
		0000000000028540:  R_AARCH64_CALL26	devm_kfree
   28544: 94000000     	bl	0x28544 <syna_cdev_ioctls+0xa50>
		0000000000028544:  R_AARCH64_CALL26	syna_request_managed_device
   28548: b400a980     	cbz	x0, 0x29a78 <syna_cdev_ioctls+0x1f84>
   2854c: 52800281     	mov	w1, #0x14               // =20
   28550: 5281b802     	mov	w2, #0xdc0              // =3520
   28554: 52800296     	mov	w22, #0x14              // =20
   28558: 94000000     	bl	0x28558 <syna_cdev_ioctls+0xa64>
		0000000000028558:  R_AARCH64_CALL26	devm_kmalloc
   2855c: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		000000000002855c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   28560: f9000100     	str	x0, [x8]
		0000000000028560:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   28564: b400a980     	cbz	x0, 0x29a94 <syna_cdev_ioctls+0x1fa0>
   28568: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028568:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   2856c: b9000116     	str	w22, [x8]
		000000000002856c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   28570: 2a1603e2     	mov	w2, w22
   28574: 2a1f03e1     	mov	w1, wzr
   28578: 94000000     	bl	0x28578 <syna_cdev_ioctls+0xa84>
		0000000000028578:  R_AARCH64_CALL26	memset
   2857c: f9400328     	ldr	x8, [x25]
   28580: b9000f3f     	str	wzr, [x25, #0xc]
   28584: b900111f     	str	wzr, [x8, #0x10]
   28588: a9007d1f     	stp	xzr, xzr, [x8]
   2858c: f9400321     	ldr	x1, [x25]
   28590: b9403b08     	ldr	w8, [x24, #0x38]
   28594: 79000428     	strh	w8, [x1, #0x2]
   28598: b9403f08     	ldr	w8, [x24, #0x3c]
   2859c: 79000828     	strh	w8, [x1, #0x4]
   285a0: 39400028     	ldrb	w8, [x1]
   285a4: 39560a89     	ldrb	w9, [x20, #0x582]
   285a8: 121f7908     	and	w8, w8, #0xfffffffe
   285ac: 2a090108     	orr	w8, w8, w9
   285b0: 39000028     	strb	w8, [x1]
   285b4: 121c7908     	and	w8, w8, #0xfffffff7
   285b8: b9457e89     	ldr	w9, [x20, #0x57c]
   285bc: 71000d3f     	cmp	w9, #0x3
   285c0: 1a9f17e9     	cset	w9, eq
   285c4: 2a090d08     	orr	w8, w8, w9, lsl #3
   285c8: 39000028     	strb	w8, [x1]
   285cc: 39420308     	ldrb	w8, [x24, #0x80]
   285d0: 34000048     	cbz	w8, 0x285d8 <syna_cdev_ioctls+0xae4>
   285d4: 39000428     	strb	w8, [x1, #0x1]
   285d8: 79401028     	ldrh	w8, [x1, #0x8]
   285dc: 394deb09     	ldrb	w9, [x24, #0x37a]
   285e0: 121f7908     	and	w8, w8, #0xfffffffe
   285e4: 2a090108     	orr	w8, w8, w9
   285e8: 90000009     	adrp	x9, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000285e8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   285ec: 91000129     	add	x9, x9, #0x0
		00000000000285ec:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xb4
   285f0: 79001028     	strh	w8, [x1, #0x8]
   285f4: 7940012a     	ldrh	w10, [x9]
   285f8: 33185d48     	bfi	w8, w10, #8, #24
   285fc: 79001028     	strh	w8, [x1, #0x8]
   28600: b9400528     	ldr	w8, [x9, #0x4]
   28604: 53027d08     	lsr	w8, w8, #2
   28608: 39002828     	strb	w8, [x1, #0xa]
   2860c: 39411b48     	ldrb	w8, [x26, #0x46]
   28610: 37280088     	tbnz	w8, #0x5, 0x28620 <syna_cdev_ioctls+0xb2c>
   28614: f9400349     	ldr	x9, [x26]
   28618: aa1503e8     	mov	x8, x21
   2861c: 36d00069     	tbz	w9, #0x1a, 0x28628 <syna_cdev_ioctls+0xb34>
   28620: d378dea8     	lsl	x8, x21, #8
   28624: 8a8822a8     	and	x8, x21, x8, asr #8
   28628: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   2862c: f29ffd89     	movk	x9, #0xffec
   28630: eb09011f     	cmp	x8, x9
   28634: 54006968     	b.hi	0x29360 <syna_cdev_ioctls+0x186c>
   28638: d503201f     	nop
   2863c: d53b4228     	mrs	x8, DAIF
   28640: d50343df     	msr	DAIFSet, #0x3
   28644: f9400749     	ldr	x9, [x26, #0x8]
   28648: d538202a     	mrs	x10, TTBR1_EL1
   2864c: aa0903eb     	mov	x11, x9
   28650: b340bd4b     	bfxil	x11, x10, #0, #48
   28654: d518202b     	msr	TTBR1_EL1, x11
   28658: d5182009     	msr	TTBR0_EL1, x9
   2865c: d5033fdf     	isb
   28660: d51b4228     	msr	DAIF, x8
   28664: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   28668: 52800282     	mov	w2, #0x14               // =20
   2866c: 94000000     	bl	0x2866c <syna_cdev_ioctls+0xb78>
		000000000002866c:  R_AARCH64_CALL26	__arch_copy_to_user
   28670: d503201f     	nop
   28674: d53b4228     	mrs	x8, DAIF
   28678: d50343df     	msr	DAIFSet, #0x3
   2867c: d5382029     	mrs	x9, TTBR1_EL1
   28680: 9240bd29     	and	x9, x9, #0xffffffffffff
   28684: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28688: d518200a     	msr	TTBR0_EL1, x10
   2868c: d5182029     	msr	TTBR1_EL1, x9
   28690: d5033fdf     	isb
   28694: d51b4228     	msr	DAIF, x8
   28698: 35006640     	cbnz	w0, 0x29360 <syna_cdev_ioctls+0x186c>
   2869c: 52800296     	mov	w22, #0x14              // =20
   286a0: 394002e2     	ldrb	w2, [x23]
		00000000000286a0:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   286a4: 7100045f     	cmp	w2, #0x1
   286a8: 54005c80     	b.eq	0x29238 <syna_cdev_ioctls+0x1744>
   286ac: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000286ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   286b0: 91000000     	add	x0, x0, #0x0
		00000000000286b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   286b4: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000286b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce1d
   286b8: 91000021     	add	x1, x1, #0x0
		00000000000286b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce1d
   286bc: 94000000     	bl	0x286bc <syna_cdev_ioctls+0xbc8>
		00000000000286bc:  R_AARCH64_CALL26	_printk
   286c0: 394002e8     	ldrb	w8, [x23]
		00000000000286c0:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   286c4: 14000396     	b	0x2951c <syna_cdev_ioctls+0x1a28>
   286c8: b9400be3     	ldr	w3, [sp, #0x8]
   286cc: aa1403e0     	mov	x0, x20
   286d0: aa1503e1     	mov	x1, x21
   286d4: 2a1703e2     	mov	w2, w23
   286d8: 94000702     	bl	0x2a2e0 <syna_cdev_ioctls+0x27ec>
		00000000000286d8:  R_AARCH64_CALL26	syna_cdev_ioctl_raw_write
   286dc: 2a0003f6     	mov	w22, w0
   286e0: 140002db     	b	0x2924c <syna_cdev_ioctls+0x1758>
   286e4: 39560a89     	ldrb	w9, [x20, #0x582]
   286e8: b9400be8     	ldr	w8, [sp, #0x8]
   286ec: 390093ff     	strb	wzr, [sp, #0x24]
   286f0: b90023ff     	str	wzr, [sp, #0x20]
   286f4: 390073ff     	strb	wzr, [sp, #0x1c]
   286f8: 37000089     	tbnz	w9, #0x0, 0x28708 <syna_cdev_ioctls+0xc14>
   286fc: b9457e89     	ldr	w9, [x20, #0x57c]
   28700: 71000d3f     	cmp	w9, #0x3
   28704: 54008ac1     	b.ne	0x2985c <syna_cdev_ioctls+0x1d68>
   28708: 710016ff     	cmp	w23, #0x5
   2870c: 540069a3     	b.lo	0x29440 <syna_cdev_ioctls+0x194c>
   28710: 7100111f     	cmp	w8, #0x4
   28714: 54006969     	b.ls	0x29440 <syna_cdev_ioctls+0x194c>
   28718: f9413a88     	ldr	x8, [x20, #0x270]
   2871c: f940c509     	ldr	x9, [x8, #0x188]
   28720: b4007109     	cbz	x9, 0x29540 <syna_cdev_ioctls+0x1a4c>
   28724: 295f5d16     	ldp	w22, w23, [x8, #0xf8]
   28728: 39411b49     	ldrb	w9, [x26, #0x46]
   2872c: 37280089     	tbnz	w9, #0x5, 0x2873c <syna_cdev_ioctls+0xc48>
   28730: f9400349     	ldr	x9, [x26]
   28734: aa1503e8     	mov	x8, x21
   28738: 36d00069     	tbz	w9, #0x1a, 0x28744 <syna_cdev_ioctls+0xc50>
   2873c: d378dea8     	lsl	x8, x21, #8
   28740: 8a8822a8     	and	x8, x21, x8, asr #8
   28744: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   28748: f29ffd89     	movk	x9, #0xffec
   2874c: 91003d29     	add	x9, x9, #0xf
   28750: eb09011f     	cmp	x8, x9
   28754: 54007428     	b.hi	0x295d8 <syna_cdev_ioctls+0x1ae4>
   28758: d503201f     	nop
   2875c: d53b4228     	mrs	x8, DAIF
   28760: d50343df     	msr	DAIFSet, #0x3
   28764: f9400749     	ldr	x9, [x26, #0x8]
   28768: d538202a     	mrs	x10, TTBR1_EL1
   2876c: aa0903eb     	mov	x11, x9
   28770: b340bd4b     	bfxil	x11, x10, #0, #48
   28774: d518202b     	msr	TTBR1_EL1, x11
   28778: d5182009     	msr	TTBR0_EL1, x9
   2877c: d5033fdf     	isb
   28780: d51b4228     	msr	DAIF, x8
   28784: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28788: 910083e0     	add	x0, sp, #0x20
   2878c: 528000a2     	mov	w2, #0x5                // =5
   28790: 94000000     	bl	0x28790 <syna_cdev_ioctls+0xc9c>
		0000000000028790:  R_AARCH64_CALL26	__arch_copy_from_user
   28794: d503201f     	nop
   28798: d53b4228     	mrs	x8, DAIF
   2879c: d50343df     	msr	DAIFSet, #0x3
   287a0: d5382029     	mrs	x9, TTBR1_EL1
   287a4: 9240bd29     	and	x9, x9, #0xffffffffffff
   287a8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   287ac: d518200a     	msr	TTBR0_EL1, x10
   287b0: d5182029     	msr	TTBR1_EL1, x9
   287b4: d5033fdf     	isb
   287b8: d51b4228     	msr	DAIF, x8
   287bc: b5007100     	cbnz	x0, 0x295dc <syna_cdev_ioctls+0x1ae8>
   287c0: 784213e9     	ldurh	w9, [sp, #0x21]
   287c4: 784233e8     	ldurh	w8, [sp, #0x23]
   287c8: 34000069     	cbz	w9, 0x287d4 <syna_cdev_ioctls+0xce0>
   287cc: f9413a8a     	ldr	x10, [x20, #0x270]
   287d0: b900fd49     	str	w9, [x10, #0xfc]
   287d4: 34000068     	cbz	w8, 0x287e0 <syna_cdev_ioctls+0xcec>
   287d8: f9413a89     	ldr	x9, [x20, #0x270]
   287dc: b900f928     	str	w8, [x9, #0xf8]
   287e0: f9413a80     	ldr	x0, [x20, #0x270]
   287e4: f940c408     	ldr	x8, [x0, #0x188]
   287e8: b85fc110     	ldur	w16, [x8, #-0x4]
   287ec: 72974371     	movk	w17, #0xba1b
   287f0: 72a56791     	movk	w17, #0x2b3c, lsl #16
   287f4: 6b11021f     	cmp	w16, w17
   287f8: 54000040     	b.eq	0x28800 <syna_cdev_ioctls+0xd0c>
   287fc: d4304500     	brk	#0x8228
   28800: d63f0100     	blr	x8
   28804: f9413a88     	ldr	x8, [x20, #0x270]
   28808: b900fd17     	str	w23, [x8, #0xfc]
   2880c: 394083e8     	ldrb	w8, [sp, #0x20]
   28810: f9413a89     	ldr	x9, [x20, #0x270]
   28814: 7100051f     	cmp	w8, #0x1
   28818: b900f936     	str	w22, [x9, #0xf8]
   2881c: 54003760     	b.eq	0x28f08 <syna_cdev_ioctls+0x1414>
   28820: f9413a88     	ldr	x8, [x20, #0x270]
   28824: 3942f108     	ldrb	w8, [x8, #0xbc]
   28828: 370000a8     	tbnz	w8, #0x0, 0x2883c <syna_cdev_ioctls+0xd48>
   2882c: f9400280     	ldr	x0, [x20]
   28830: 910073e1     	add	x1, sp, #0x1c
   28834: aa1f03e2     	mov	x2, xzr
   28838: 94000000     	bl	0x28838 <syna_cdev_ioctls+0xd44>
		0000000000028838:  R_AARCH64_CALL26	syna_tcm_get_event_data
   2883c: f9400288     	ldr	x8, [x20]
   28840: 39402508     	ldrb	w8, [x8, #0x9]
   28844: 7100051f     	cmp	w8, #0x1
   28848: 54003601     	b.ne	0x28f08 <syna_cdev_ioctls+0x1414>
   2884c: f9435e88     	ldr	x8, [x20, #0x6b8]
   28850: aa1403e0     	mov	x0, x20
   28854: b85fc110     	ldur	w16, [x8, #-0x4]
   28858: 7288e391     	movk	w17, #0x471c
   2885c: 72b5c411     	movk	w17, #0xae20, lsl #16
   28860: 6b11021f     	cmp	w16, w17
   28864: 54000040     	b.eq	0x2886c <syna_cdev_ioctls+0xd78>
   28868: d4304500     	brk	#0x8228
   2886c: d63f0100     	blr	x8
   28870: 2a0003f6     	mov	w22, w0
   28874: 36f84ec0     	tbz	w0, #0x1f, 0x2924c <syna_cdev_ioctls+0x1758>
   28878: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17874
   2887c: 91000000     	add	x0, x0, #0x0
		000000000002887c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17874
   28880: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   28884: 91000021     	add	x1, x1, #0x0
		0000000000028884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   28888: 94000000     	bl	0x28888 <syna_cdev_ioctls+0xd94>
		0000000000028888:  R_AARCH64_CALL26	_printk
   2888c: 14000270     	b	0x2924c <syna_cdev_ioctls+0x1758>
   28890: b9400be2     	ldr	w2, [sp, #0x8]
   28894: 71004c5f     	cmp	w2, #0x13
   28898: 54005be9     	b.ls	0x29414 <syna_cdev_ioctls+0x1920>
   2889c: 90000018     	adrp	x24, 0x28000 <syna_cdev_ioctls+0x50c>
		000000000002889c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   288a0: f9400296     	ldr	x22, [x20]
   288a4: 39400302     	ldrb	w2, [x24]
		00000000000288a4:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   288a8: 35006222     	cbnz	w2, 0x294ec <syna_cdev_ioctls+0x19f8>
   288ac: 90000019     	adrp	x25, 0x28000 <syna_cdev_ioctls+0x50c>
		00000000000288ac:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   288b0: 91000339     	add	x25, x25, #0x0
		00000000000288b0:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x8
   288b4: 91004320     	add	x0, x25, #0x10
   288b8: 94000000     	bl	0x288b8 <syna_cdev_ioctls+0xdc4>
		00000000000288b8:  R_AARCH64_CALL26	mutex_lock
   288bc: 39410328     	ldrb	w8, [x25, #0x40]
   288c0: b9400b37     	ldr	w23, [x25, #0x8]
   288c4: f9400320     	ldr	x0, [x25]
   288c8: 11000508     	add	w8, w8, #0x1
   288cc: 71004eff     	cmp	w23, #0x13
   288d0: 39010328     	strb	w8, [x25, #0x40]
   288d4: 54000248     	b.hi	0x2891c <syna_cdev_ioctls+0xe28>
   288d8: b40000c0     	cbz	x0, 0x288f0 <syna_cdev_ioctls+0xdfc>
   288dc: aa0003f7     	mov	x23, x0
   288e0: 94000000     	bl	0x288e0 <syna_cdev_ioctls+0xdec>
		00000000000288e0:  R_AARCH64_CALL26	syna_request_managed_device
   288e4: b4008f80     	cbz	x0, 0x29ad4 <syna_cdev_ioctls+0x1fe0>
   288e8: aa1703e1     	mov	x1, x23
   288ec: 94000000     	bl	0x288ec <syna_cdev_ioctls+0xdf8>
		00000000000288ec:  R_AARCH64_CALL26	devm_kfree
   288f0: 94000000     	bl	0x288f0 <syna_cdev_ioctls+0xdfc>
		00000000000288f0:  R_AARCH64_CALL26	syna_request_managed_device
   288f4: b4008fe0     	cbz	x0, 0x29af0 <syna_cdev_ioctls+0x1ffc>
   288f8: 52800281     	mov	w1, #0x14               // =20
   288fc: 5281b802     	mov	w2, #0xdc0              // =3520
   28900: 52800297     	mov	w23, #0x14              // =20
   28904: 94000000     	bl	0x28904 <syna_cdev_ioctls+0xe10>
		0000000000028904:  R_AARCH64_CALL26	devm_kmalloc
   28908: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028908:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   2890c: f9000100     	str	x0, [x8]
		000000000002890c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   28910: b4008fe0     	cbz	x0, 0x29b0c <syna_cdev_ioctls+0x2018>
   28914: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028914:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   28918: b9000117     	str	w23, [x8]
		0000000000028918:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   2891c: 2a1703e2     	mov	w2, w23
   28920: 2a1f03e1     	mov	w1, wzr
   28924: 94000000     	bl	0x28924 <syna_cdev_ioctls+0xe30>
		0000000000028924:  R_AARCH64_CALL26	memset
   28928: 39411b48     	ldrb	w8, [x26, #0x46]
   2892c: f9400337     	ldr	x23, [x25]
   28930: b9000f3f     	str	wzr, [x25, #0xc]
   28934: 37280088     	tbnz	w8, #0x5, 0x28944 <syna_cdev_ioctls+0xe50>
   28938: f9400349     	ldr	x9, [x26]
   2893c: aa1503e8     	mov	x8, x21
   28940: 36d00069     	tbz	w9, #0x1a, 0x2894c <syna_cdev_ioctls+0xe58>
   28944: d378dea8     	lsl	x8, x21, #8
   28948: 8a8822a8     	and	x8, x21, x8, asr #8
   2894c: b2705be9     	mov	x9, #0x7fffff0000       // =549755748352
   28950: f29ffd89     	movk	x9, #0xffec
   28954: eb09011f     	cmp	x8, x9
   28958: 540017a9     	b.ls	0x28c4c <syna_cdev_ioctls+0x1158>
   2895c: 52800295     	mov	w21, #0x14              // =20
   28960: cb1502e8     	sub	x8, x23, x21
   28964: 2a1f03e1     	mov	w1, wzr
   28968: aa1503e2     	mov	x2, x21
   2896c: 91005100     	add	x0, x8, #0x14
   28970: 94000000     	bl	0x28970 <syna_cdev_ioctls+0xe7c>
		0000000000028970:  R_AARCH64_CALL26	memset
   28974: 34001a35     	cbz	w21, 0x28cb8 <syna_cdev_ioctls+0x11c4>
   28978: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028978:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   2897c: 91000000     	add	x0, x0, #0x0
		000000000002897c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   28980: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028980:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d6
   28984: 91000021     	add	x1, x1, #0x0
		0000000000028984:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d6
   28988: 2a1503e2     	mov	w2, w21
   2898c: 94000000     	bl	0x2898c <syna_cdev_ioctls+0xe98>
		000000000002898c:  R_AARCH64_CALL26	_printk
   28990: 12800676     	mov	w22, #-0x34             // =-52
   28994: 14000226     	b	0x2922c <syna_cdev_ioctls+0x1738>
   28998: b9457e88     	ldr	w8, [x20, #0x57c]
   2899c: b9400bf6     	ldr	w22, [sp, #0x8]
   289a0: a9117fff     	stp	xzr, xzr, [sp, #0x110]
   289a4: a9107fff     	stp	xzr, xzr, [sp, #0x100]
   289a8: 71000d1f     	cmp	w8, #0x3
   289ac: a90f7fff     	stp	xzr, xzr, [sp, #0xf0]
   289b0: a90e7fff     	stp	xzr, xzr, [sp, #0xe0]
   289b4: a90d7fff     	stp	xzr, xzr, [sp, #0xd0]
   289b8: a90c7fff     	stp	xzr, xzr, [sp, #0xc0]
   289bc: a90b7fff     	stp	xzr, xzr, [sp, #0xb0]
   289c0: a90a7fff     	stp	xzr, xzr, [sp, #0xa0]
   289c4: a9097fff     	stp	xzr, xzr, [sp, #0x90]
   289c8: a9087fff     	stp	xzr, xzr, [sp, #0x80]
   289cc: a9077fff     	stp	xzr, xzr, [sp, #0x70]
   289d0: a9067fff     	stp	xzr, xzr, [sp, #0x60]
   289d4: a9057fff     	stp	xzr, xzr, [sp, #0x50]
   289d8: a9047fff     	stp	xzr, xzr, [sp, #0x40]
   289dc: a9037fff     	stp	xzr, xzr, [sp, #0x30]
   289e0: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   289e4: 54005240     	b.eq	0x2942c <syna_cdev_ioctls+0x1938>
   289e8: 7103feff     	cmp	w23, #0xff
   289ec: 540059c9     	b.ls	0x29524 <syna_cdev_ioctls+0x1a30>
   289f0: 34005cf6     	cbz	w22, 0x2958c <syna_cdev_ioctls+0x1a98>
   289f4: 710406df     	cmp	w22, #0x101
   289f8: 540090e2     	b.hs	0x29c14 <syna_cdev_ioctls+0x2120>
   289fc: 910083e0     	add	x0, sp, #0x20
   28a00: aa1603e1     	mov	x1, x22
   28a04: 2a1f03e2     	mov	w2, wzr
   28a08: 94000000     	bl	0x28a08 <syna_cdev_ioctls+0xf14>
		0000000000028a08:  R_AARCH64_CALL26	__check_object_size
   28a0c: 39411b48     	ldrb	w8, [x26, #0x46]
   28a10: 37280088     	tbnz	w8, #0x5, 0x28a20 <syna_cdev_ioctls+0xf2c>
   28a14: f9400349     	ldr	x9, [x26]
   28a18: aa1503e8     	mov	x8, x21
   28a1c: 36d00069     	tbz	w9, #0x1a, 0x28a28 <syna_cdev_ioctls+0xf34>
   28a20: d378dea8     	lsl	x8, x21, #8
   28a24: 8a8822a8     	and	x8, x21, x8, asr #8
   28a28: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   28a2c: aa1603e0     	mov	x0, x22
   28a30: cb160129     	sub	x9, x9, x22
   28a34: eb08013f     	cmp	x9, x8
   28a38: 54005f43     	b.lo	0x29620 <syna_cdev_ioctls+0x1b2c>
   28a3c: d503201f     	nop
   28a40: d53b4228     	mrs	x8, DAIF
   28a44: d50343df     	msr	DAIFSet, #0x3
   28a48: f9400749     	ldr	x9, [x26, #0x8]
   28a4c: d538202a     	mrs	x10, TTBR1_EL1
   28a50: aa0903eb     	mov	x11, x9
   28a54: b340bd4b     	bfxil	x11, x10, #0, #48
   28a58: d518202b     	msr	TTBR1_EL1, x11
   28a5c: d5182009     	msr	TTBR0_EL1, x9
   28a60: d5033fdf     	isb
   28a64: d51b4228     	msr	DAIF, x8
   28a68: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28a6c: 910083e0     	add	x0, sp, #0x20
   28a70: aa1603e2     	mov	x2, x22
   28a74: 94000000     	bl	0x28a74 <syna_cdev_ioctls+0xf80>
		0000000000028a74:  R_AARCH64_CALL26	__arch_copy_from_user
   28a78: d503201f     	nop
   28a7c: d53b4228     	mrs	x8, DAIF
   28a80: d50343df     	msr	DAIFSet, #0x3
   28a84: d5382029     	mrs	x9, TTBR1_EL1
   28a88: 9240bd29     	and	x9, x9, #0xffffffffffff
   28a8c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28a90: d518200a     	msr	TTBR0_EL1, x10
   28a94: d5182029     	msr	TTBR1_EL1, x9
   28a98: d5033fdf     	isb
   28a9c: d51b4228     	msr	DAIF, x8
   28aa0: b5005c00     	cbnz	x0, 0x29620 <syna_cdev_ioctls+0x1b2c>
   28aa4: aa1f03f5     	mov	x21, xzr
   28aa8: 910083f8     	add	x24, sp, #0x20
   28aac: 90000017     	adrp	x23, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028aac:  R_AARCH64_ADR_PREL_PG_HI21	syna_cdev_process_reports
   28ab0: 910002f7     	add	x23, x23, #0x0
		0000000000028ab0:  R_AARCH64_ADD_ABS_LO12_NC	syna_cdev_process_reports
   28ab4: 14000004     	b	0x28ac4 <syna_cdev_ioctls+0xfd0>
   28ab8: 910006b5     	add	x21, x21, #0x1
   28abc: f10402bf     	cmp	x21, #0x100
   28ac0: 54002240     	b.eq	0x28f08 <syna_cdev_ioctls+0x1414>
   28ac4: 38756b08     	ldrb	w8, [x24, x21]
   28ac8: 7100051f     	cmp	w8, #0x1
   28acc: 54ffff61     	b.ne	0x28ab8 <syna_cdev_ioctls+0xfc4>
   28ad0: f9400280     	ldr	x0, [x20]
   28ad4: 2a1503e1     	mov	w1, w21
   28ad8: aa1703e2     	mov	x2, x23
   28adc: aa1403e3     	mov	x3, x20
   28ae0: 94000000     	bl	0x28ae0 <syna_cdev_ioctls+0xfec>
		0000000000028ae0:  R_AARCH64_CALL26	syna_tcm_set_data_duplicator
   28ae4: 36fffea0     	tbz	w0, #0x1f, 0x28ab8 <syna_cdev_ioctls+0xfc4>
   28ae8: 2a0003f6     	mov	w22, w0
   28aec: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1b1
   28af0: 91000000     	add	x0, x0, #0x0
		0000000000028af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1b1
   28af4: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028af4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17853
   28af8: 91000021     	add	x1, x1, #0x0
		0000000000028af8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17853
   28afc: 2a1503e2     	mov	w2, w21
   28b00: 94000000     	bl	0x28b00 <syna_cdev_ioctls+0x100c>
		0000000000028b00:  R_AARCH64_CALL26	_printk
   28b04: 140001d2     	b	0x2924c <syna_cdev_ioctls+0x1758>
   28b08: 39560a88     	ldrb	w8, [x20, #0x582]
   28b0c: b9400bf6     	ldr	w22, [sp, #0x8]
   28b10: 37000088     	tbnz	w8, #0x0, 0x28b20 <syna_cdev_ioctls+0x102c>
   28b14: b9457e88     	ldr	w8, [x20, #0x57c]
   28b18: 71000d1f     	cmp	w8, #0x3
   28b1c: 54006ae1     	b.ne	0x29878 <syna_cdev_ioctls+0x1d84>
   28b20: 340049d7     	cbz	w23, 0x29458 <syna_cdev_ioctls+0x1964>
   28b24: 6b1702df     	cmp	w22, w23
   28b28: 54004988     	b.hi	0x29458 <syna_cdev_ioctls+0x1964>
   28b2c: f942d697     	ldr	x23, [x20, #0x5a8]
   28b30: b40000b7     	cbz	x23, 0x28b44 <syna_cdev_ioctls+0x1050>
   28b34: 94000000     	bl	0x28b34 <syna_cdev_ioctls+0x1040>
		0000000000028b34:  R_AARCH64_CALL26	syna_request_managed_device
   28b38: b4006680     	cbz	x0, 0x29808 <syna_cdev_ioctls+0x1d14>
   28b3c: aa1703e1     	mov	x1, x23
   28b40: 94000000     	bl	0x28b40 <syna_cdev_ioctls+0x104c>
		0000000000028b40:  R_AARCH64_CALL26	devm_kfree
   28b44: 94000000     	bl	0x28b44 <syna_cdev_ioctls+0x1050>
		0000000000028b44:  R_AARCH64_CALL26	syna_request_managed_device
   28b48: b40066e0     	cbz	x0, 0x29824 <syna_cdev_ioctls+0x1d30>
   28b4c: 34005656     	cbz	w22, 0x29614 <syna_cdev_ioctls+0x1b20>
   28b50: aa1603e1     	mov	x1, x22
   28b54: 5281b802     	mov	w2, #0xdc0              // =3520
   28b58: 94000000     	bl	0x28b58 <syna_cdev_ioctls+0x1064>
		0000000000028b58:  R_AARCH64_CALL26	devm_kmalloc
   28b5c: f902d680     	str	x0, [x20, #0x5a8]
   28b60: b40066e0     	cbz	x0, 0x2983c <syna_cdev_ioctls+0x1d48>
   28b64: 2a1f03e1     	mov	w1, wzr
   28b68: aa1603e2     	mov	x2, x22
   28b6c: aa0003f7     	mov	x23, x0
   28b70: 94000000     	bl	0x28b70 <syna_cdev_ioctls+0x107c>
		0000000000028b70:  R_AARCH64_CALL26	memset
   28b74: aa1703e0     	mov	x0, x23
   28b78: aa1603e1     	mov	x1, x22
   28b7c: 2a1f03e2     	mov	w2, wzr
   28b80: 94000000     	bl	0x28b80 <syna_cdev_ioctls+0x108c>
		0000000000028b80:  R_AARCH64_CALL26	__check_object_size
   28b84: 39411b48     	ldrb	w8, [x26, #0x46]
   28b88: 37280088     	tbnz	w8, #0x5, 0x28b98 <syna_cdev_ioctls+0x10a4>
   28b8c: f9400349     	ldr	x9, [x26]
   28b90: aa1503e8     	mov	x8, x21
   28b94: 36d00069     	tbz	w9, #0x1a, 0x28ba0 <syna_cdev_ioctls+0x10ac>
   28b98: d378dea8     	lsl	x8, x21, #8
   28b9c: 8a8822a8     	and	x8, x21, x8, asr #8
   28ba0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   28ba4: aa1603f4     	mov	x20, x22
   28ba8: cb160129     	sub	x9, x9, x22
   28bac: eb08013f     	cmp	x9, x8
   28bb0: 540016e2     	b.hs	0x28e8c <syna_cdev_ioctls+0x1398>
   28bb4: eb1402c8     	subs	x8, x22, x20
   28bb8: 9a9433e1     	csel	x1, xzr, x20, lo
   28bbc: eb14003f     	cmp	x1, x20
   28bc0: 54008583     	b.lo	0x29c70 <syna_cdev_ioctls+0x217c>
   28bc4: 8b0802e0     	add	x0, x23, x8
   28bc8: 2a1f03e1     	mov	w1, wzr
   28bcc: aa1403e2     	mov	x2, x20
   28bd0: 94000000     	bl	0x28bd0 <syna_cdev_ioctls+0x10dc>
		0000000000028bd0:  R_AARCH64_CALL26	memset
   28bd4: 340033f4     	cbz	w20, 0x29250 <syna_cdev_ioctls+0x175c>
   28bd8: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   28bdc: 91000000     	add	x0, x0, #0x0
		0000000000028bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   28be0: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028be0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba30
   28be4: 91000021     	add	x1, x1, #0x0
		0000000000028be4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba30
   28be8: 2a1403e2     	mov	w2, w20
   28bec: 140001d5     	b	0x29340 <syna_cdev_ioctls+0x184c>
   28bf0: 52800200     	mov	w0, #0x10               // =16
   28bf4: f100441f     	cmp	x0, #0x11
   28bf8: 540082a2     	b.hs	0x29c4c <syna_cdev_ioctls+0x2158>
   28bfc: 910023e8     	add	x8, sp, #0x8
   28c00: aa0003f3     	mov	x19, x0
   28c04: 2a1f03e1     	mov	w1, wzr
   28c08: cb000108     	sub	x8, x8, x0
   28c0c: aa1303e2     	mov	x2, x19
   28c10: 91004100     	add	x0, x8, #0x10
   28c14: 94000000     	bl	0x28c14 <syna_cdev_ioctls+0x1120>
		0000000000028c14:  R_AARCH64_CALL26	memset
   28c18: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18c8a
   28c1c: 91000000     	add	x0, x0, #0x0
		0000000000028c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18c8a
   28c20: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028c20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189d3
   28c24: 91000021     	add	x1, x1, #0x0
		0000000000028c24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189d3
   28c28: 2a1303e2     	mov	w2, w19
   28c2c: 140001c5     	b	0x29340 <syna_cdev_ioctls+0x184c>
   28c30: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7e8
   28c34: 91000000     	add	x0, x0, #0x0
		0000000000028c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7e8
   28c38: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189d3
   28c3c: 91000021     	add	x1, x1, #0x0
		0000000000028c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189d3
   28c40: 94000000     	bl	0x28c40 <syna_cdev_ioctls+0x114c>
		0000000000028c40:  R_AARCH64_CALL26	_printk
   28c44: 12800676     	mov	w22, #-0x34             // =-52
   28c48: 140001a7     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   28c4c: d503201f     	nop
   28c50: d53b4228     	mrs	x8, DAIF
   28c54: d50343df     	msr	DAIFSet, #0x3
   28c58: f9400749     	ldr	x9, [x26, #0x8]
   28c5c: d538202a     	mrs	x10, TTBR1_EL1
   28c60: aa0903eb     	mov	x11, x9
   28c64: b340bd4b     	bfxil	x11, x10, #0, #48
   28c68: d518202b     	msr	TTBR1_EL1, x11
   28c6c: d5182009     	msr	TTBR0_EL1, x9
   28c70: d5033fdf     	isb
   28c74: d51b4228     	msr	DAIF, x8
   28c78: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28c7c: aa1703e0     	mov	x0, x23
   28c80: 52800282     	mov	w2, #0x14               // =20
   28c84: 94000000     	bl	0x28c84 <syna_cdev_ioctls+0x1190>
		0000000000028c84:  R_AARCH64_CALL26	__arch_copy_from_user
   28c88: aa0003f5     	mov	x21, x0
   28c8c: d503201f     	nop
   28c90: d53b4228     	mrs	x8, DAIF
   28c94: d50343df     	msr	DAIFSet, #0x3
   28c98: d5382029     	mrs	x9, TTBR1_EL1
   28c9c: 9240bd29     	and	x9, x9, #0xffffffffffff
   28ca0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28ca4: d518200a     	msr	TTBR0_EL1, x10
   28ca8: d5182029     	msr	TTBR1_EL1, x9
   28cac: d5033fdf     	isb
   28cb0: d51b4228     	msr	DAIF, x8
   28cb4: b5ffe575     	cbnz	x21, 0x28960 <syna_cdev_ioctls+0xe6c>
   28cb8: 39560a88     	ldrb	w8, [x20, #0x582]
   28cbc: 7100051f     	cmp	w8, #0x1
   28cc0: 54002b41     	b.ne	0x29228 <syna_cdev_ioctls+0x1734>
   28cc4: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028cc4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   28cc8: f9400115     	ldr	x21, [x8]
		0000000000028cc8:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   28ccc: 79400aa2     	ldrh	w2, [x21, #0x4]
   28cd0: 794006a1     	ldrh	w1, [x21, #0x2]
   28cd4: 340026e2     	cbz	w2, 0x291b0 <syna_cdev_ioctls+0x16bc>
   28cd8: b9403ec8     	ldr	w8, [x22, #0x3c]
   28cdc: 6b02011f     	cmp	w8, w2
   28ce0: 1a9f07e8     	cset	w8, ne
   28ce4: 350026a1     	cbnz	w1, 0x291b8 <syna_cdev_ioctls+0x16c4>
   28ce8: 54002701     	b.ne	0x291c8 <syna_cdev_ioctls+0x16d4>
   28cec: 14000140     	b	0x291ec <syna_cdev_ioctls+0x16f8>
   28cf0: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028cf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195a8
   28cf4: 91000000     	add	x0, x0, #0x0
		0000000000028cf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195a8
   28cf8: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189e4
   28cfc: 91000021     	add	x1, x1, #0x0
		0000000000028cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189e4
   28d00: 2a1603e2     	mov	w2, w22
   28d04: 94000000     	bl	0x28d04 <syna_cdev_ioctls+0x1210>
		0000000000028d04:  R_AARCH64_CALL26	_printk
   28d08: 128002b6     	mov	w22, #-0x16             // =-22
   28d0c: 14000176     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   28d10: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9c6
   28d14: 91000000     	add	x0, x0, #0x0
		0000000000028d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9c6
   28d18: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028d18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189e4
   28d1c: 91000021     	add	x1, x1, #0x0
		0000000000028d1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189e4
   28d20: 94000000     	bl	0x28d20 <syna_cdev_ioctls+0x122c>
		0000000000028d20:  R_AARCH64_CALL26	_printk
   28d24: 14000170     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   28d28: aa0803f4     	mov	x20, x8
   28d2c: 2a1f03e1     	mov	w1, wzr
   28d30: aa1403e2     	mov	x2, x20
   28d34: 94000000     	bl	0x28d34 <syna_cdev_ioctls+0x1240>
		0000000000028d34:  R_AARCH64_CALL26	memset
   28d38: b9400bf8     	ldr	w24, [sp, #0x8]
   28d3c: f9400334     	ldr	x20, [x25]
   28d40: b9000f3f     	str	wzr, [x25, #0xc]
   28d44: 37f87798     	tbnz	w24, #0x1f, 0x29c34 <syna_cdev_ioctls+0x2140>
   28d48: aa1403e0     	mov	x0, x20
   28d4c: aa1803e1     	mov	x1, x24
   28d50: 2a1f03e2     	mov	w2, wzr
   28d54: 94000000     	bl	0x28d54 <syna_cdev_ioctls+0x1260>
		0000000000028d54:  R_AARCH64_CALL26	__check_object_size
   28d58: 39411b48     	ldrb	w8, [x26, #0x46]
   28d5c: 37280088     	tbnz	w8, #0x5, 0x28d6c <syna_cdev_ioctls+0x1278>
   28d60: f9400349     	ldr	x9, [x26]
   28d64: aa1503e8     	mov	x8, x21
   28d68: 36d00069     	tbz	w9, #0x1a, 0x28d74 <syna_cdev_ioctls+0x1280>
   28d6c: d378dea8     	lsl	x8, x21, #8
   28d70: 8a8822a8     	and	x8, x21, x8, asr #8
   28d74: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   28d78: aa1803f9     	mov	x25, x24
   28d7c: cb180129     	sub	x9, x9, x24
   28d80: eb08013f     	cmp	x9, x8
   28d84: 54000c62     	b.hs	0x28f10 <syna_cdev_ioctls+0x141c>
   28d88: cb190308     	sub	x8, x24, x25
   28d8c: 2a1f03e1     	mov	w1, wzr
   28d90: aa1903e2     	mov	x2, x25
   28d94: 8b080280     	add	x0, x20, x8
   28d98: 94000000     	bl	0x28d98 <syna_cdev_ioctls+0x12a4>
		0000000000028d98:  R_AARCH64_CALL26	memset
   28d9c: aa1903f8     	mov	x24, x25
   28da0: 34000ef8     	cbz	w24, 0x28f7c <syna_cdev_ioctls+0x1488>
   28da4: b9400be2     	ldr	w2, [sp, #0x8]
   28da8: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   28dac: 91000000     	add	x0, x0, #0x0
		0000000000028dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   28db0: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   28db4: 91000021     	add	x1, x1, #0x0
		0000000000028db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   28db8: 94000000     	bl	0x28db8 <syna_cdev_ioctls+0x12c4>
		0000000000028db8:  R_AARCH64_CALL26	_printk
   28dbc: 12800676     	mov	w22, #-0x34             // =-52
   28dc0: 140000e8     	b	0x29160 <syna_cdev_ioctls+0x166c>
   28dc4: d503201f     	nop
   28dc8: d53b4228     	mrs	x8, DAIF
   28dcc: d50343df     	msr	DAIFSet, #0x3
   28dd0: f9400749     	ldr	x9, [x26, #0x8]
   28dd4: d538202a     	mrs	x10, TTBR1_EL1
   28dd8: aa0903eb     	mov	x11, x9
   28ddc: b340bd4b     	bfxil	x11, x10, #0, #48
   28de0: d518202b     	msr	TTBR1_EL1, x11
   28de4: d5182009     	msr	TTBR0_EL1, x9
   28de8: d5033fdf     	isb
   28dec: d51b4228     	msr	DAIF, x8
   28df0: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28df4: 910083e0     	add	x0, sp, #0x20
   28df8: aa1703e2     	mov	x2, x23
   28dfc: 94000000     	bl	0x28dfc <syna_cdev_ioctls+0x1308>
		0000000000028dfc:  R_AARCH64_CALL26	__arch_copy_from_user
   28e00: aa0003f6     	mov	x22, x0
   28e04: d503201f     	nop
   28e08: d53b4228     	mrs	x8, DAIF
   28e0c: d50343df     	msr	DAIFSet, #0x3
   28e10: d5382029     	mrs	x9, TTBR1_EL1
   28e14: 9240bd29     	and	x9, x9, #0xffffffffffff
   28e18: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28e1c: d518200a     	msr	TTBR0_EL1, x10
   28e20: d5182029     	msr	TTBR1_EL1, x9
   28e24: d5033fdf     	isb
   28e28: d51b4228     	msr	DAIF, x8
   28e2c: b5ff76d6     	cbnz	x22, 0x27d04 <syna_cdev_ioctls+0x210>
   28e30: b94023e8     	ldr	w8, [sp, #0x20]
   28e34: 7100051f     	cmp	w8, #0x1
   28e38: 54000620     	b.eq	0x28efc <syna_cdev_ioctls+0x1408>
   28e3c: 350058e8     	cbnz	w8, 0x29958 <syna_cdev_ioctls+0x1e64>
   28e40: f9413a88     	ldr	x8, [x20, #0x270]
   28e44: 3942f108     	ldrb	w8, [x8, #0xbc]
   28e48: 7100051f     	cmp	w8, #0x1
   28e4c: 540005e1     	b.ne	0x28f08 <syna_cdev_ioctls+0x1414>
   28e50: f9402308     	ldr	x8, [x24, #0x40]
   28e54: 91002300     	add	x0, x24, #0x8
   28e58: 2a1f03e1     	mov	w1, wzr
   28e5c: b85fc110     	ldur	w16, [x8, #-0x4]
   28e60: 728c3631     	movk	w17, #0x61b1
   28e64: 72a685d1     	movk	w17, #0x342e, lsl #16
   28e68: 6b11021f     	cmp	w16, w17
   28e6c: 54000040     	b.eq	0x28e74 <syna_cdev_ioctls+0x1380>
   28e70: d4304500     	brk	#0x8228
   28e74: d63f0100     	blr	x8
   28e78: 36f86a60     	tbz	w0, #0x1f, 0x29bc4 <syna_cdev_ioctls+0x20d0>
   28e7c: 2a0003f6     	mov	w22, w0
   28e80: 90000000     	adrp	x0, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1833c
   28e84: 91000000     	add	x0, x0, #0x0
		0000000000028e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1833c
   28e88: 140002e5     	b	0x29a1c <syna_cdev_ioctls+0x1f28>
   28e8c: d503201f     	nop
   28e90: d53b4228     	mrs	x8, DAIF
   28e94: d50343df     	msr	DAIFSet, #0x3
   28e98: f9400749     	ldr	x9, [x26, #0x8]
   28e9c: d538202a     	mrs	x10, TTBR1_EL1
   28ea0: aa0903eb     	mov	x11, x9
   28ea4: b340bd4b     	bfxil	x11, x10, #0, #48
   28ea8: d518202b     	msr	TTBR1_EL1, x11
   28eac: d5182009     	msr	TTBR0_EL1, x9
   28eb0: d5033fdf     	isb
   28eb4: d51b4228     	msr	DAIF, x8
   28eb8: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28ebc: aa1703e0     	mov	x0, x23
   28ec0: aa1603e2     	mov	x2, x22
   28ec4: 94000000     	bl	0x28ec4 <syna_cdev_ioctls+0x13d0>
		0000000000028ec4:  R_AARCH64_CALL26	__arch_copy_from_user
   28ec8: aa0003f4     	mov	x20, x0
   28ecc: d503201f     	nop
   28ed0: d53b4228     	mrs	x8, DAIF
   28ed4: d50343df     	msr	DAIFSet, #0x3
   28ed8: d5382029     	mrs	x9, TTBR1_EL1
   28edc: 9240bd29     	and	x9, x9, #0xffffffffffff
   28ee0: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28ee4: d518200a     	msr	TTBR0_EL1, x10
   28ee8: d5182029     	msr	TTBR1_EL1, x9
   28eec: d5033fdf     	isb
   28ef0: d51b4228     	msr	DAIF, x8
   28ef4: b4001af4     	cbz	x20, 0x29250 <syna_cdev_ioctls+0x175c>
   28ef8: 17ffff2f     	b	0x28bb4 <syna_cdev_ioctls+0x10c0>
   28efc: f9413a88     	ldr	x8, [x20, #0x270]
   28f00: 3942f108     	ldrb	w8, [x8, #0xbc]
   28f04: 36005708     	tbz	w8, #0x0, 0x299e4 <syna_cdev_ioctls+0x1ef0>
   28f08: 2a1f03f6     	mov	w22, wzr
   28f0c: 140000d0     	b	0x2924c <syna_cdev_ioctls+0x1758>
   28f10: d503201f     	nop
   28f14: d53b4228     	mrs	x8, DAIF
   28f18: d50343df     	msr	DAIFSet, #0x3
   28f1c: f9400749     	ldr	x9, [x26, #0x8]
   28f20: d538202a     	mrs	x10, TTBR1_EL1
   28f24: aa0903eb     	mov	x11, x9
   28f28: b340bd4b     	bfxil	x11, x10, #0, #48
   28f2c: d518202b     	msr	TTBR1_EL1, x11
   28f30: d5182009     	msr	TTBR0_EL1, x9
   28f34: d5033fdf     	isb
   28f38: d51b4228     	msr	DAIF, x8
   28f3c: 9248faa1     	and	x1, x21, #0xff7fffffffffffff
   28f40: aa1403e0     	mov	x0, x20
   28f44: aa1803e2     	mov	x2, x24
   28f48: 94000000     	bl	0x28f48 <syna_cdev_ioctls+0x1454>
		0000000000028f48:  R_AARCH64_CALL26	__arch_copy_from_user
   28f4c: aa0003f9     	mov	x25, x0
   28f50: d503201f     	nop
   28f54: d53b4228     	mrs	x8, DAIF
   28f58: d50343df     	msr	DAIFSet, #0x3
   28f5c: d5382029     	mrs	x9, TTBR1_EL1
   28f60: 9240bd29     	and	x9, x9, #0xffffffffffff
   28f64: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   28f68: d518200a     	msr	TTBR0_EL1, x10
   28f6c: d5182029     	msr	TTBR1_EL1, x9
   28f70: d5033fdf     	isb
   28f74: d51b4228     	msr	DAIF, x8
   28f78: b5fff099     	cbnz	x25, 0x28d88 <syna_cdev_ioctls+0x1294>
   28f7c: 78401299     	ldurh	w25, [x20, #0x1]
   28f80: b9400be3     	ldr	w3, [sp, #0x8]
   28f84: 6b03033f     	cmp	w25, w3
   28f88: 54004028     	b.hi	0x2978c <syna_cdev_ioctls+0x1c98>
   28f8c: 910083e8     	add	x8, sp, #0x20
   28f90: 90000001     	adrp	x1, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c888
   28f94: 91000021     	add	x1, x1, #0x0
		0000000000028f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c888
   28f98: 90000002     	adrp	x2, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028f98:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xc9
   28f9c: 91000042     	add	x2, x2, #0x0
		0000000000028f9c:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0xc9
   28fa0: 91004100     	add	x0, x8, #0x10
   28fa4: 390183ff     	strb	wzr, [sp, #0x60]
   28fa8: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   28fac: 94000000     	bl	0x28fac <syna_cdev_ioctls+0x14b8>
		0000000000028fac:  R_AARCH64_CALL26	__mutex_init
   28fb0: 90000008     	adrp	x8, 0x28000 <syna_cdev_ioctls+0x50c>
		0000000000028fb0:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   28fb4: aa1403f8     	mov	x24, x20
   28fb8: 910073e4     	add	x4, sp, #0x1c
   28fbc: b9400106     	ldr	w6, [x8]
		0000000000028fbc:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   28fc0: 38403701     	ldrb	w1, [x24], #0x3
   28fc4: 910083e5     	add	x5, sp, #0x20
   28fc8: aa1603e0     	mov	x0, x22
   28fcc: aa1803e2     	mov	x2, x24
   28fd0: 2a1903e3     	mov	w3, w25
   28fd4: 94000000     	bl	0x28fd4 <syna_cdev_ioctls+0x14e0>
		0000000000028fd4:  R_AARCH64_CALL26	syna_tcm_send_command
   28fd8: 37f83ea0     	tbnz	w0, #0x1f, 0x297ac <syna_cdev_ioctls+0x1cb8>
   28fdc: aa1403e0     	mov	x0, x20
   28fe0: 2a1f03e1     	mov	w1, wzr
   28fe4: aa1703e2     	mov	x2, x23
   28fe8: 94000000     	bl	0x28fe8 <syna_cdev_ioctls+0x14f4>
		0000000000028fe8:  R_AARCH64_CALL26	memset
   28fec: 394073e8     	ldrb	w8, [sp, #0x1c]
   28ff0: 39000288     	strb	w8, [x20]
   28ff4: b9402fe8     	ldr	w8, [sp, #0x2c]
   28ff8: 39000688     	strb	w8, [x20, #0x1]
   28ffc: b9402fe8     	ldr	w8, [sp, #0x2c]
   29000: 53087d08     	lsr	w8, w8, #8
   29004: 39000a88     	strb	w8, [x20, #0x2]
   29008: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029008:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   2900c: b9400102     	ldr	w2, [x8]
		000000000002900c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0x10
   29010: b9402fe4     	ldr	w4, [sp, #0x2c]
   29014: 6b04005f     	cmp	w2, w4
   29018: 54003da3     	b.lo	0x297cc <syna_cdev_ioctls+0x1cd8>
   2901c: 340003e4     	cbz	w4, 0x29098 <syna_cdev_ioctls+0x15a4>
   29020: b4005118     	cbz	x24, 0x29a40 <syna_cdev_ioctls+0x1f4c>
   29024: f94013e1     	ldr	x1, [sp, #0x20]
   29028: b40050c1     	cbz	x1, 0x29a40 <syna_cdev_ioctls+0x1f4c>
   2902c: 51000c43     	sub	w3, w2, #0x3
   29030: b9402be2     	ldr	w2, [sp, #0x28]
   29034: 6b03009f     	cmp	w4, w3
   29038: 54004fa8     	b.hi	0x29a2c <syna_cdev_ioctls+0x1f38>
   2903c: 6b02009f     	cmp	w4, w2
   29040: 54004f68     	b.hi	0x29a2c <syna_cdev_ioctls+0x1f38>
   29044: aa1803e0     	mov	x0, x24
   29048: aa0403e2     	mov	x2, x4
   2904c: 94000000     	bl	0x2904c <syna_cdev_ioctls+0x1558>
		000000000002904c:  R_AARCH64_CALL26	memcpy
   29050: b9400388     	ldr	w8, [x28]
		0000000000029050:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   29054: 7100051f     	cmp	w8, #0x1
   29058: 5400022d     	b.le	0x2909c <syna_cdev_ioctls+0x15a8>
   2905c: b9402fe9     	ldr	w9, [sp, #0x2c]
   29060: 794706c8     	ldrh	w8, [x22, #0x382]
   29064: 11000d2a     	add	w10, w9, #0x3
   29068: 53087d0b     	lsr	w11, w8, #8
   2906c: 1100112c     	add	w12, w9, #0x4
   29070: 382a4a88     	strb	w8, [x20, w10, uxtw]
   29074: 529fffca     	mov	w10, #0xfffe            // =65534
   29078: 382c4a8b     	strb	w11, [x20, w12, uxtw]
   2907c: b9400388     	ldr	w8, [x28]
		000000000002907c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   29080: 0b0a010a     	add	w10, w8, w10
   29084: 72003d5f     	tst	w10, #0xffff
   29088: 540000a0     	b.eq	0x2909c <syna_cdev_ioctls+0x15a8>
   2908c: 394e16c8     	ldrb	w8, [x22, #0x385]
   29090: 11001529     	add	w9, w9, #0x5
   29094: 38294a88     	strb	w8, [x20, w9, uxtw]
   29098: b9400388     	ldr	w8, [x28]
		0000000000029098:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   2909c: b9402fe9     	ldr	w9, [sp, #0x2c]
   290a0: 0aa87d08     	bic	w8, w8, w8, asr #31
   290a4: 0b080128     	add	w8, w9, w8
   290a8: 31000d16     	adds	w22, w8, #0x3
   290ac: b9000bf6     	str	w22, [sp, #0x8]
   290b0: 54005c84     	b.mi	0x29c40 <syna_cdev_ioctls+0x214c>
   290b4: aa1403e0     	mov	x0, x20
   290b8: aa1603e1     	mov	x1, x22
   290bc: 52800022     	mov	w2, #0x1                // =1
   290c0: 94000000     	bl	0x290c0 <syna_cdev_ioctls+0x15cc>
		00000000000290c0:  R_AARCH64_CALL26	__check_object_size
   290c4: 39411b48     	ldrb	w8, [x26, #0x46]
   290c8: 37280088     	tbnz	w8, #0x5, 0x290d8 <syna_cdev_ioctls+0x15e4>
   290cc: f9400349     	ldr	x9, [x26]
   290d0: aa1503e8     	mov	x8, x21
   290d4: 36d00069     	tbz	w9, #0x1a, 0x290e0 <syna_cdev_ioctls+0x15ec>
   290d8: d378dea8     	lsl	x8, x21, #8
   290dc: 8a8822a8     	and	x8, x21, x8, asr #8
   290e0: d2c01009     	mov	x9, #0x8000000000       // =549755813888
   290e4: cb160129     	sub	x9, x9, x22
   290e8: eb08013f     	cmp	x9, x8
   290ec: 54000363     	b.lo	0x29158 <syna_cdev_ioctls+0x1664>
   290f0: d503201f     	nop
   290f4: d53b4228     	mrs	x8, DAIF
   290f8: d50343df     	msr	DAIFSet, #0x3
   290fc: f9400749     	ldr	x9, [x26, #0x8]
   29100: d538202a     	mrs	x10, TTBR1_EL1
   29104: aa0903eb     	mov	x11, x9
   29108: b340bd4b     	bfxil	x11, x10, #0, #48
   2910c: d518202b     	msr	TTBR1_EL1, x11
   29110: d5182009     	msr	TTBR0_EL1, x9
   29114: d5033fdf     	isb
   29118: d51b4228     	msr	DAIF, x8
   2911c: 9248faa0     	and	x0, x21, #0xff7fffffffffffff
   29120: aa1403e1     	mov	x1, x20
   29124: aa1603e2     	mov	x2, x22
   29128: 94000000     	bl	0x29128 <syna_cdev_ioctls+0x1634>
		0000000000029128:  R_AARCH64_CALL26	__arch_copy_to_user
   2912c: aa0003f6     	mov	x22, x0
   29130: d503201f     	nop
   29134: d53b4228     	mrs	x8, DAIF
   29138: d50343df     	msr	DAIFSet, #0x3
   2913c: d5382029     	mrs	x9, TTBR1_EL1
   29140: 9240bd29     	and	x9, x9, #0xffffffffffff
   29144: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   29148: d518200a     	msr	TTBR0_EL1, x10
   2914c: d5182029     	msr	TTBR1_EL1, x9
   29150: d5033fdf     	isb
   29154: d51b4228     	msr	DAIF, x8
   29158: 350034b6     	cbnz	w22, 0x297ec <syna_cdev_ioctls+0x1cf8>
   2915c: b9400bf6     	ldr	w22, [sp, #0x8]
   29160: 90000014     	adrp	x20, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029160:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x48
   29164: 39400282     	ldrb	w2, [x20]
		0000000000029164:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29168: 7100045f     	cmp	w2, #0x1
   2916c: 54002e81     	b.ne	0x2973c <syna_cdev_ioctls+0x1c48>
   29170: 2a1f03e8     	mov	w8, wzr
   29174: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029174:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   29178: 91000000     	add	x0, x0, #0x0
		0000000000029178:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   2917c: 3900c008     	strb	w8, [x0, #0x30]
   29180: 94000000     	bl	0x29180 <syna_cdev_ioctls+0x168c>
		0000000000029180:  R_AARCH64_CALL26	mutex_unlock
   29184: 394183e2     	ldrb	w2, [sp, #0x60]
   29188: 35002ea2     	cbnz	w2, 0x2975c <syna_cdev_ioctls+0x1c68>
   2918c: f94013f4     	ldr	x20, [sp, #0x20]
   29190: 94000000     	bl	0x29190 <syna_cdev_ioctls+0x169c>
		0000000000029190:  R_AARCH64_CALL26	syna_request_managed_device
   29194: b4002f00     	cbz	x0, 0x29774 <syna_cdev_ioctls+0x1c80>
   29198: b40005b4     	cbz	x20, 0x2924c <syna_cdev_ioctls+0x1758>
   2919c: aa1403e1     	mov	x1, x20
   291a0: 94000000     	bl	0x291a0 <syna_cdev_ioctls+0x16ac>
		00000000000291a0:  R_AARCH64_CALL26	devm_kfree
   291a4: 1400002a     	b	0x2924c <syna_cdev_ioctls+0x1758>
   291a8: 12800796     	mov	w22, #-0x3d             // =-61
   291ac: 14000028     	b	0x2924c <syna_cdev_ioctls+0x1758>
   291b0: 340001e1     	cbz	w1, 0x291ec <syna_cdev_ioctls+0x16f8>
   291b4: 2a1f03e8     	mov	w8, wzr
   291b8: b9403ac9     	ldr	w9, [x22, #0x38]
   291bc: 6b01013f     	cmp	w9, w1
   291c0: 54000041     	b.ne	0x291c8 <syna_cdev_ioctls+0x16d4>
   291c4: 36000148     	tbz	w8, #0x0, 0x291ec <syna_cdev_ioctls+0x16f8>
   291c8: f941d6c8     	ldr	x8, [x22, #0x3a8]
   291cc: aa1603e0     	mov	x0, x22
   291d0: b85fc110     	ldur	w16, [x8, #-0x4]
   291d4: 72963bb1     	movk	w17, #0xb1dd
   291d8: 72a09411     	movk	w17, #0x4a0, lsl #16
   291dc: 6b11021f     	cmp	w16, w17
   291e0: 54000040     	b.eq	0x291e8 <syna_cdev_ioctls+0x16f4>
   291e4: d4304500     	brk	#0x8228
   291e8: d63f0100     	blr	x8
   291ec: 794012a8     	ldrh	w8, [x21, #0x8]
   291f0: 394deac9     	ldrb	w9, [x22, #0x37a]
   291f4: 12000114     	and	w20, w8, #0x1
   291f8: 6b09029f     	cmp	w20, w9
   291fc: 540034c1     	b.ne	0x29894 <syna_cdev_ioctls+0x1da0>
   29200: 90000009     	adrp	x9, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029200:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb4
   29204: 53087d02     	lsr	w2, w8, #8
   29208: b9400128     	ldr	w8, [x9]
		0000000000029208:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   2920c: 6b02011f     	cmp	w8, w2
   29210: 54003621     	b.ne	0x298d4 <syna_cdev_ioctls+0x1de0>
   29214: 39402aa8     	ldrb	w8, [x21, #0xa]
   29218: 90000009     	adrp	x9, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029218:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb8
   2921c: 531e7502     	lsl	w2, w8, #2
   29220: b9000122     	str	w2, [x9]
		0000000000029220:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb8
   29224: 35003668     	cbnz	w8, 0x298f0 <syna_cdev_ioctls+0x1dfc>
   29228: 2a1f03f6     	mov	w22, wzr
   2922c: 39400302     	ldrb	w2, [x24]
		000000000002922c:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29230: 7100045f     	cmp	w2, #0x1
   29234: 54001681     	b.ne	0x29504 <syna_cdev_ioctls+0x1a10>
   29238: 2a1f03e8     	mov	w8, wzr
   2923c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002923c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x18
   29240: 91000000     	add	x0, x0, #0x0
		0000000000029240:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x18
   29244: 3900c008     	strb	w8, [x0, #0x30]
   29248: 94000000     	bl	0x29248 <syna_cdev_ioctls+0x1754>
		0000000000029248:  R_AARCH64_CALL26	mutex_unlock
   2924c: 37f804d6     	tbnz	w22, #0x1f, 0x292e4 <syna_cdev_ioctls+0x17f0>
   29250: 39411b48     	ldrb	w8, [x26, #0x46]
   29254: 37280088     	tbnz	w8, #0x5, 0x29264 <syna_cdev_ioctls+0x1770>
   29258: f9400349     	ldr	x9, [x26]
   2925c: aa1303e8     	mov	x8, x19
   29260: 36d00049     	tbz	w9, #0x1a, 0x29268 <syna_cdev_ioctls+0x1774>
   29264: 8a9b2268     	and	x8, x19, x27, asr #8
   29268: b27c8be9     	mov	x9, #0x7ffffffff0       // =549755813872
   2926c: eb09011f     	cmp	x8, x9
   29270: 540005e8     	b.hi	0x2932c <syna_cdev_ioctls+0x1838>
   29274: d503201f     	nop
   29278: d53b4228     	mrs	x8, DAIF
   2927c: d50343df     	msr	DAIFSet, #0x3
   29280: f9400749     	ldr	x9, [x26, #0x8]
   29284: d538202a     	mrs	x10, TTBR1_EL1
   29288: aa0903eb     	mov	x11, x9
   2928c: b340bd4b     	bfxil	x11, x10, #0, #48
   29290: d518202b     	msr	TTBR1_EL1, x11
   29294: d5182009     	msr	TTBR0_EL1, x9
   29298: d5033fdf     	isb
   2929c: d51b4228     	msr	DAIF, x8
   292a0: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
   292a4: 910023e1     	add	x1, sp, #0x8
   292a8: 52800202     	mov	w2, #0x10               // =16
   292ac: 94000000     	bl	0x292ac <syna_cdev_ioctls+0x17b8>
		00000000000292ac:  R_AARCH64_CALL26	__arch_copy_to_user
   292b0: aa0003e2     	mov	x2, x0
   292b4: d503201f     	nop
   292b8: d53b4228     	mrs	x8, DAIF
   292bc: d50343df     	msr	DAIFSet, #0x3
   292c0: d5382029     	mrs	x9, TTBR1_EL1
   292c4: 9240bd29     	and	x9, x9, #0xffffffffffff
   292c8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
   292cc: d518200a     	msr	TTBR0_EL1, x10
   292d0: d5182029     	msr	TTBR1_EL1, x9
   292d4: d5033fdf     	isb
   292d8: d51b4228     	msr	DAIF, x8
   292dc: 350002a2     	cbnz	w2, 0x29330 <syna_cdev_ioctls+0x183c>
   292e0: 2a1f03f6     	mov	w22, wzr
   292e4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000292e4:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x50
   292e8: 91000000     	add	x0, x0, #0x0
		00000000000292e8:  R_AARCH64_ADD_ABS_LO12_NC	g_cdev_data+0x50
   292ec: 94000000     	bl	0x292ec <syna_cdev_ioctls+0x17f8>
		00000000000292ec:  R_AARCH64_CALL26	mutex_unlock
   292f0: d5384108     	mrs	x8, SP_EL0
   292f4: f9438908     	ldr	x8, [x8, #0x710]
   292f8: f85f03a9     	ldur	x9, [x29, #-0x10]
   292fc: eb09011f     	cmp	x8, x9
   29300: 54004a41     	b.ne	0x29c48 <syna_cdev_ioctls+0x2154>
   29304: 93407ec0     	sxtw	x0, w22
   29308: a9584ff4     	ldp	x20, x19, [sp, #0x180]
   2930c: a95757f6     	ldp	x22, x21, [sp, #0x170]
   29310: a9565ff8     	ldp	x24, x23, [sp, #0x160]
   29314: a95567fa     	ldp	x26, x25, [sp, #0x150]
   29318: a9546ffc     	ldp	x28, x27, [sp, #0x140]
   2931c: a9537bfd     	ldp	x29, x30, [sp, #0x130]
   29320: 910643ff     	add	sp, sp, #0x190
   29324: d50323bf     	autiasp
   29328: d65f03c0     	ret
   2932c: 52800202     	mov	w2, #0x10               // =16
   29330: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7ef
   29334: 91000000     	add	x0, x0, #0x0
		0000000000029334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7ef
   29338: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029338:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189d3
   2933c: 91000021     	add	x1, x1, #0x0
		000000000002933c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189d3
   29340: 94000000     	bl	0x29340 <syna_cdev_ioctls+0x184c>
		0000000000029340:  R_AARCH64_CALL26	_printk
   29344: 12800676     	mov	w22, #-0x34             // =-52
   29348: 17ffffe7     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   2934c: 12800db6     	mov	w22, #-0x6e             // =-110
   29350: 17ffffbf     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29354: b9000bff     	str	wzr, [sp, #0x8]
   29358: 12800db6     	mov	w22, #-0x6e             // =-110
   2935c: 17ffffbc     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29360: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029360:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b94
   29364: 91000000     	add	x0, x0, #0x0
		0000000000029364:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b94
   29368: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029368:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a28
   2936c: 91000021     	add	x1, x1, #0x0
		000000000002936c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a28
   29370: 94000000     	bl	0x29370 <syna_cdev_ioctls+0x187c>
		0000000000029370:  R_AARCH64_CALL26	_printk
   29374: 12800676     	mov	w22, #-0x34             // =-52
   29378: 17fffcca     	b	0x286a0 <syna_cdev_ioctls+0xbac>
   2937c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002937c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa94
   29380: 91000000     	add	x0, x0, #0x0
		0000000000029380:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa94
   29384: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029384:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c82f
   29388: 91000021     	add	x1, x1, #0x0
		0000000000029388:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c82f
   2938c: 94000000     	bl	0x2938c <syna_cdev_ioctls+0x1898>
		000000000002938c:  R_AARCH64_CALL26	_printk
   29390: 39411b48     	ldrb	w8, [x26, #0x46]
   29394: 362ff628     	tbz	w8, #0x5, 0x29258 <syna_cdev_ioctls+0x1764>
   29398: 17ffffb3     	b	0x29264 <syna_cdev_ioctls+0x1770>
   2939c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002939c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195a8
   293a0: 91000000     	add	x0, x0, #0x0
		00000000000293a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195a8
   293a4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1935c
   293a8: 91000021     	add	x1, x1, #0x0
		00000000000293a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1935c
   293ac: 17fffe55     	b	0x28d00 <syna_cdev_ioctls+0x120c>
   293b0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3db
   293b4: 91000000     	add	x0, x0, #0x0
		00000000000293b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3db
   293b8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
   293bc: 91000021     	add	x1, x1, #0x0
		00000000000293bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
   293c0: 1400012b     	b	0x2986c <syna_cdev_ioctls+0x1d78>
   293c4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3db
   293c8: 91000000     	add	x0, x0, #0x0
		00000000000293c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3db
   293cc: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   293d0: 91000021     	add	x1, x1, #0x0
		00000000000293d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   293d4: 14000126     	b	0x2986c <syna_cdev_ioctls+0x1d78>
   293d8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3db
   293dc: 91000000     	add	x0, x0, #0x0
		00000000000293dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3db
   293e0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   293e4: 91000021     	add	x1, x1, #0x0
		00000000000293e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   293e8: 14000121     	b	0x2986c <syna_cdev_ioctls+0x1d78>
   293ec: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3db
   293f0: 91000000     	add	x0, x0, #0x0
		00000000000293f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3db
   293f4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000293f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c197
   293f8: 91000021     	add	x1, x1, #0x0
		00000000000293f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c197
   293fc: 1400011c     	b	0x2986c <syna_cdev_ioctls+0x1d78>
   29400: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029400:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b421
   29404: 91000000     	add	x0, x0, #0x0
		0000000000029404:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b421
   29408: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029408:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a28
   2940c: 91000021     	add	x1, x1, #0x0
		000000000002940c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a28
   29410: 14000005     	b	0x29424 <syna_cdev_ioctls+0x1930>
   29414: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029414:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b421
   29418: 91000000     	add	x0, x0, #0x0
		0000000000029418:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b421
   2941c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002941c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d6
   29420: 91000021     	add	x1, x1, #0x0
		0000000000029420:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d6
   29424: 52800283     	mov	w3, #0x14               // =20
   29428: 14000012     	b	0x29470 <syna_cdev_ioctls+0x197c>
   2942c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002942c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1994e
   29430: 91000000     	add	x0, x0, #0x0
		0000000000029430:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1994e
   29434: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029434:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17853
   29438: 91000021     	add	x1, x1, #0x0
		0000000000029438:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17853
   2943c: 14000023     	b	0x294c8 <syna_cdev_ioctls+0x19d4>
   29440: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029440:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19375
   29444: 91000000     	add	x0, x0, #0x0
		0000000000029444:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19375
   29448: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029448:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   2944c: 91000021     	add	x1, x1, #0x0
		000000000002944c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   29450: 2a1703e2     	mov	w2, w23
   29454: 140000b1     	b	0x29718 <syna_cdev_ioctls+0x1c24>
   29458: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029458:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c9b
   2945c: 91000000     	add	x0, x0, #0x0
		000000000002945c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c9b
   29460: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029460:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba30
   29464: 91000021     	add	x1, x1, #0x0
		0000000000029464:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba30
   29468: 2a1703e2     	mov	w2, w23
   2946c: 2a1603e3     	mov	w3, w22
   29470: 94000000     	bl	0x29470 <syna_cdev_ioctls+0x197c>
		0000000000029470:  R_AARCH64_CALL26	_printk
   29474: 128002b6     	mov	w22, #-0x16             // =-22
   29478: 17ffff9b     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   2947c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002947c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad91
   29480: 91000000     	add	x0, x0, #0x0
		0000000000029480:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad91
   29484: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029484:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
   29488: 91000021     	add	x1, x1, #0x0
		0000000000029488:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
   2948c: 1400000f     	b	0x294c8 <syna_cdev_ioctls+0x19d4>
   29490: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029490:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18693
   29494: 91000000     	add	x0, x0, #0x0
		0000000000029494:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18693
   29498: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029498:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   2949c: 91000021     	add	x1, x1, #0x0
		000000000002949c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   294a0: 1400000a     	b	0x294c8 <syna_cdev_ioctls+0x19d4>
   294a4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad42
   294a8: 91000000     	add	x0, x0, #0x0
		00000000000294a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad42
   294ac: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   294b0: 91000021     	add	x1, x1, #0x0
		00000000000294b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   294b4: 14000005     	b	0x294c8 <syna_cdev_ioctls+0x19d4>
   294b8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ad91
   294bc: 91000000     	add	x0, x0, #0x0
		00000000000294bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ad91
   294c0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c197
   294c4: 91000021     	add	x1, x1, #0x0
		00000000000294c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c197
   294c8: 94000000     	bl	0x294c8 <syna_cdev_ioctls+0x19d4>
		00000000000294c8:  R_AARCH64_CALL26	_printk
   294cc: 2a1f03f6     	mov	w22, wzr
   294d0: 17ffff5f     	b	0x2924c <syna_cdev_ioctls+0x1758>
   294d4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   294d8: 91000000     	add	x0, x0, #0x0
		00000000000294d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   294dc: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abe3
   294e0: 91000021     	add	x1, x1, #0x0
		00000000000294e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abe3
   294e4: 94000000     	bl	0x294e4 <syna_cdev_ioctls+0x19f0>
		00000000000294e4:  R_AARCH64_CALL26	_printk
   294e8: 17fffc06     	b	0x28500 <syna_cdev_ioctls+0xa0c>
   294ec: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   294f0: 91000000     	add	x0, x0, #0x0
		00000000000294f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   294f4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000294f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abe3
   294f8: 91000021     	add	x1, x1, #0x0
		00000000000294f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abe3
   294fc: 94000000     	bl	0x294fc <syna_cdev_ioctls+0x1a08>
		00000000000294fc:  R_AARCH64_CALL26	_printk
   29500: 17fffceb     	b	0x288ac <syna_cdev_ioctls+0xdb8>
   29504: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029504:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   29508: 91000000     	add	x0, x0, #0x0
		0000000000029508:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   2950c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002950c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce1d
   29510: 91000021     	add	x1, x1, #0x0
		0000000000029510:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce1d
   29514: 94000000     	bl	0x29514 <syna_cdev_ioctls+0x1a20>
		0000000000029514:  R_AARCH64_CALL26	_printk
   29518: 39400308     	ldrb	w8, [x24]
		0000000000029518:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   2951c: 51000508     	sub	w8, w8, #0x1
   29520: 17ffff47     	b	0x2923c <syna_cdev_ioctls+0x1748>
   29524: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029524:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c41
   29528: 91000000     	add	x0, x0, #0x0
		0000000000029528:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c41
   2952c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002952c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17853
   29530: 91000021     	add	x1, x1, #0x0
		0000000000029530:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17853
   29534: 2a1703e2     	mov	w2, w23
   29538: 52802003     	mov	w3, #0x100              // =256
   2953c: 14000024     	b	0x295cc <syna_cdev_ioctls+0x1ad8>
   29540: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029540:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be5f
   29544: 91000000     	add	x0, x0, #0x0
		0000000000029544:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be5f
   29548: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029548:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   2954c: 91000021     	add	x1, x1, #0x0
		000000000002954c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   29550: 94000000     	bl	0x29550 <syna_cdev_ioctls+0x1a5c>
		0000000000029550:  R_AARCH64_CALL26	_printk
   29554: 12800256     	mov	w22, #-0x13             // =-19
   29558: 17ffff3d     	b	0x2924c <syna_cdev_ioctls+0x1758>
   2955c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002955c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195d0
   29560: 91000000     	add	x0, x0, #0x0
		0000000000029560:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195d0
   29564: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   29568: 91000021     	add	x1, x1, #0x0
		0000000000029568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   2956c: 2a1703e2     	mov	w2, w23
   29570: 1400006a     	b	0x29718 <syna_cdev_ioctls+0x1c24>
   29574: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029574:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x195d0
   29578: 91000000     	add	x0, x0, #0x0
		0000000000029578:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x195d0
   2957c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002957c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c197
   29580: 91000021     	add	x1, x1, #0x0
		0000000000029580:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c197
   29584: 2a1703e2     	mov	w2, w23
   29588: 14000064     	b	0x29718 <syna_cdev_ioctls+0x1c24>
   2958c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002958c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d04b
   29590: 91000000     	add	x0, x0, #0x0
		0000000000029590:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d04b
   29594: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029594:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17853
   29598: 91000021     	add	x1, x1, #0x0
		0000000000029598:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17853
   2959c: 14000046     	b	0x296b4 <syna_cdev_ioctls+0x1bc0>
   295a0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000295a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19375
   295a4: 91000000     	add	x0, x0, #0x0
		00000000000295a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19375
   295a8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000295a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
   295ac: 91000021     	add	x1, x1, #0x0
		00000000000295ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
   295b0: 2a1703e2     	mov	w2, w23
   295b4: 14000059     	b	0x29718 <syna_cdev_ioctls+0x1c24>
   295b8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000295b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b77e
   295bc: 91000000     	add	x0, x0, #0x0
		00000000000295bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b77e
   295c0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000295c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   295c4: 91000021     	add	x1, x1, #0x0
		00000000000295c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   295c8: 2a1703e2     	mov	w2, w23
   295cc: 94000000     	bl	0x295cc <syna_cdev_ioctls+0x1ad8>
		00000000000295cc:  R_AARCH64_CALL26	_printk
   295d0: 128002b6     	mov	w22, #-0x16             // =-22
   295d4: 17ffff1e     	b	0x2924c <syna_cdev_ioctls+0x1758>
   295d8: 528000a0     	mov	w0, #0x5                // =5
   295dc: f100181f     	cmp	x0, #0x6
   295e0: 54003362     	b.hs	0x29c4c <syna_cdev_ioctls+0x2158>
   295e4: 910083e8     	add	x8, sp, #0x20
   295e8: aa0003f4     	mov	x20, x0
   295ec: 2a1f03e1     	mov	w1, wzr
   295f0: cb000108     	sub	x8, x8, x0
   295f4: aa1403e2     	mov	x2, x20
   295f8: 91001500     	add	x0, x8, #0x5
   295fc: 94000000     	bl	0x295fc <syna_cdev_ioctls+0x1b08>
		00000000000295fc:  R_AARCH64_CALL26	memset
   29600: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   29604: 91000000     	add	x0, x0, #0x0
		0000000000029604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   29608: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   2960c: 91000021     	add	x1, x1, #0x0
		000000000002960c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   29610: 1400003a     	b	0x296f8 <syna_cdev_ioctls+0x1c04>
   29614: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029614:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abf5
   29618: 91000000     	add	x0, x0, #0x0
		0000000000029618:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abf5
   2961c: 14000084     	b	0x2982c <syna_cdev_ioctls+0x1d38>
   29620: cb0002c8     	sub	x8, x22, x0
   29624: 52802009     	mov	w9, #0x100              // =256
   29628: aa0003e2     	mov	x2, x0
   2962c: eb080129     	subs	x9, x9, x8
   29630: 9a8933e1     	csel	x1, xzr, x9, lo
   29634: eb00003f     	cmp	x1, x0
   29638: 54003123     	b.lo	0x29c5c <syna_cdev_ioctls+0x2168>
   2963c: 910083e9     	add	x9, sp, #0x20
   29640: 2a1f03e1     	mov	w1, wzr
   29644: aa0203f6     	mov	x22, x2
   29648: 8b080120     	add	x0, x9, x8
   2964c: 94000000     	bl	0x2964c <syna_cdev_ioctls+0x1b58>
		000000000002964c:  R_AARCH64_CALL26	memset
   29650: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029650:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   29654: 91000000     	add	x0, x0, #0x0
		0000000000029654:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   29658: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029658:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17853
   2965c: 91000021     	add	x1, x1, #0x0
		000000000002965c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17853
   29660: 2a1603e2     	mov	w2, w22
   29664: 14000026     	b	0x296fc <syna_cdev_ioctls+0x1c08>
   29668: 52800082     	mov	w2, #0x4                // =4
   2966c: f100145f     	cmp	x2, #0x5
   29670: 54002f02     	b.hs	0x29c50 <syna_cdev_ioctls+0x215c>
   29674: 910073e8     	add	x8, sp, #0x1c
   29678: 2a1f03e1     	mov	w1, wzr
   2967c: cb020108     	sub	x8, x8, x2
   29680: 91001100     	add	x0, x8, #0x4
   29684: 94000000     	bl	0x29684 <syna_cdev_ioctls+0x1b90>
		0000000000029684:  R_AARCH64_CALL26	memset
   29688: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029688:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c1eb
   2968c: 91000000     	add	x0, x0, #0x0
		000000000002968c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c1eb
   29690: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029690:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bbf5
   29694: 91000021     	add	x1, x1, #0x0
		0000000000029694:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bbf5
   29698: 94000000     	bl	0x29698 <syna_cdev_ioctls+0x1ba4>
		0000000000029698:  R_AARCH64_CALL26	_printk
   2969c: 12800676     	mov	w22, #-0x34             // =-52
   296a0: 17fffeeb     	b	0x2924c <syna_cdev_ioctls+0x1758>
   296a4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000296a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a01
   296a8: 91000000     	add	x0, x0, #0x0
		00000000000296a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a01
   296ac: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000296ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   296b0: 91000021     	add	x1, x1, #0x0
		00000000000296b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   296b4: 94000000     	bl	0x296b4 <syna_cdev_ioctls+0x1bc0>
		00000000000296b4:  R_AARCH64_CALL26	_printk
   296b8: 128002b6     	mov	w22, #-0x16             // =-22
   296bc: 17fffee4     	b	0x2924c <syna_cdev_ioctls+0x1758>
   296c0: 52800080     	mov	w0, #0x4                // =4
   296c4: f100141f     	cmp	x0, #0x5
   296c8: 54002c22     	b.hs	0x29c4c <syna_cdev_ioctls+0x2158>
   296cc: 910073e8     	add	x8, sp, #0x1c
   296d0: aa0003f4     	mov	x20, x0
   296d4: 2a1f03e1     	mov	w1, wzr
   296d8: cb000108     	sub	x8, x8, x0
   296dc: aa1403e2     	mov	x2, x20
   296e0: 91001100     	add	x0, x8, #0x4
   296e4: 94000000     	bl	0x296e4 <syna_cdev_ioctls+0x1bf0>
		00000000000296e4:  R_AARCH64_CALL26	memset
   296e8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000296e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19091
   296ec: 91000000     	add	x0, x0, #0x0
		00000000000296ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19091
   296f0: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000296f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c197
   296f4: 91000021     	add	x1, x1, #0x0
		00000000000296f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c197
   296f8: 2a1403e2     	mov	w2, w20
   296fc: 94000000     	bl	0x296fc <syna_cdev_ioctls+0x1c08>
		00000000000296fc:  R_AARCH64_CALL26	_printk
   29700: 12800676     	mov	w22, #-0x34             // =-52
   29704: 17fffed2     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29708: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029708:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19603
   2970c: 91000000     	add	x0, x0, #0x0
		000000000002970c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19603
   29710: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029710:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   29714: 91000021     	add	x1, x1, #0x0
		0000000000029714:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   29718: 94000000     	bl	0x29718 <syna_cdev_ioctls+0x1c24>
		0000000000029718:  R_AARCH64_CALL26	_printk
   2971c: 128002b6     	mov	w22, #-0x16             // =-22
   29720: 17fffecb     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29724: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   29728: 91000000     	add	x0, x0, #0x0
		0000000000029728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   2972c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002972c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abe3
   29730: 91000021     	add	x1, x1, #0x0
		0000000000029730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abe3
   29734: 94000000     	bl	0x29734 <syna_cdev_ioctls+0x1c40>
		0000000000029734:  R_AARCH64_CALL26	_printk
   29738: 17fffa53     	b	0x28084 <syna_cdev_ioctls+0x590>
   2973c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002973c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abb3
   29740: 91000000     	add	x0, x0, #0x0
		0000000000029740:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abb3
   29744: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029744:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ce1d
   29748: 91000021     	add	x1, x1, #0x0
		0000000000029748:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ce1d
   2974c: 94000000     	bl	0x2974c <syna_cdev_ioctls+0x1c58>
		000000000002974c:  R_AARCH64_CALL26	_printk
   29750: 39400288     	ldrb	w8, [x20]
		0000000000029750:  R_AARCH64_LDST8_ABS_LO12_NC	g_cdev_data+0x48
   29754: 51000508     	sub	w8, w8, #0x1
   29758: 17fffe87     	b	0x29174 <syna_cdev_ioctls+0x1680>
   2975c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002975c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d36
   29760: 91000000     	add	x0, x0, #0x0
		0000000000029760:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d36
   29764: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a883
   29768: 91000021     	add	x1, x1, #0x0
		0000000000029768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a883
   2976c: 94000000     	bl	0x2976c <syna_cdev_ioctls+0x1c78>
		000000000002976c:  R_AARCH64_CALL26	_printk
   29770: 17fffe87     	b	0x2918c <syna_cdev_ioctls+0x1698>
   29774: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029774:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29778: 91000000     	add	x0, x0, #0x0
		0000000000029778:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   2977c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002977c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c25a
   29780: 91000021     	add	x1, x1, #0x0
		0000000000029780:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c25a
   29784: 94000000     	bl	0x29784 <syna_cdev_ioctls+0x1c90>
		0000000000029784:  R_AARCH64_CALL26	_printk
   29788: 17fffeb1     	b	0x2924c <syna_cdev_ioctls+0x1758>
   2978c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002978c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a843
   29790: 91000000     	add	x0, x0, #0x0
		0000000000029790:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a843
   29794: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029794:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   29798: 91000021     	add	x1, x1, #0x0
		0000000000029798:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   2979c: 2a1903e2     	mov	w2, w25
   297a0: 94000000     	bl	0x297a0 <syna_cdev_ioctls+0x1cac>
		00000000000297a0:  R_AARCH64_CALL26	_printk
   297a4: 12800676     	mov	w22, #-0x34             // =-52
   297a8: 17fffe6e     	b	0x29160 <syna_cdev_ioctls+0x166c>
   297ac: 39400282     	ldrb	w2, [x20]
   297b0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000297b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a170
   297b4: 91000000     	add	x0, x0, #0x0
		00000000000297b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a170
   297b8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000297b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   297bc: 91000021     	add	x1, x1, #0x0
		00000000000297bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   297c0: 2a1903e3     	mov	w3, w25
   297c4: 94000000     	bl	0x297c4 <syna_cdev_ioctls+0x1cd0>
		00000000000297c4:  R_AARCH64_CALL26	_printk
   297c8: 17fffe05     	b	0x28fdc <syna_cdev_ioctls+0x14e8>
   297cc: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000297cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c59
   297d0: 91000000     	add	x0, x0, #0x0
		00000000000297d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c59
   297d4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000297d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   297d8: 91000021     	add	x1, x1, #0x0
		00000000000297d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   297dc: 2a0403e3     	mov	w3, w4
   297e0: 94000000     	bl	0x297e0 <syna_cdev_ioctls+0x1cec>
		00000000000297e0:  R_AARCH64_CALL26	_printk
   297e4: 12800956     	mov	w22, #-0x4b             // =-75
   297e8: 17fffe5e     	b	0x29160 <syna_cdev_ioctls+0x166c>
   297ec: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000297ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b94
   297f0: 91000000     	add	x0, x0, #0x0
		00000000000297f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b94
   297f4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000297f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   297f8: 91000021     	add	x1, x1, #0x0
		00000000000297f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   297fc: 94000000     	bl	0x297fc <syna_cdev_ioctls+0x1d08>
		00000000000297fc:  R_AARCH64_CALL26	_printk
   29800: 12800676     	mov	w22, #-0x34             // =-52
   29804: 17fffe57     	b	0x29160 <syna_cdev_ioctls+0x166c>
   29808: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029808:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   2980c: 91000000     	add	x0, x0, #0x0
		000000000002980c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29810: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029810:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c25a
   29814: 91000021     	add	x1, x1, #0x0
		0000000000029814:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c25a
   29818: 94000000     	bl	0x29818 <syna_cdev_ioctls+0x1d24>
		0000000000029818:  R_AARCH64_CALL26	_printk
   2981c: 94000000     	bl	0x2981c <syna_cdev_ioctls+0x1d28>
		000000000002981c:  R_AARCH64_CALL26	syna_request_managed_device
   29820: b5ff9960     	cbnz	x0, 0x28b4c <syna_cdev_ioctls+0x1058>
   29824: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29828: 91000000     	add	x0, x0, #0x0
		0000000000029828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   2982c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002982c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a09
   29830: 91000021     	add	x1, x1, #0x0
		0000000000029830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a09
   29834: 94000000     	bl	0x29834 <syna_cdev_ioctls+0x1d40>
		0000000000029834:  R_AARCH64_CALL26	_printk
   29838: f902d69f     	str	xzr, [x20, #0x5a8]
   2983c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002983c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aabb
   29840: 91000000     	add	x0, x0, #0x0
		0000000000029840:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aabb
   29844: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029844:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba30
   29848: 91000021     	add	x1, x1, #0x0
		0000000000029848:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba30
   2984c: 2a1603e2     	mov	w2, w22
   29850: 94000000     	bl	0x29850 <syna_cdev_ioctls+0x1d5c>
		0000000000029850:  R_AARCH64_CALL26	_printk
   29854: 12800176     	mov	w22, #-0xc              // =-12
   29858: 17fffea3     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   2985c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		000000000002985c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3db
   29860: 91000000     	add	x0, x0, #0x0
		0000000000029860:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3db
   29864: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029864:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c21c
   29868: 91000021     	add	x1, x1, #0x0
		0000000000029868:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c21c
   2986c: 94000000     	bl	0x2986c <syna_cdev_ioctls+0x1d78>
		000000000002986c:  R_AARCH64_CALL26	_printk
   29870: 128000b6     	mov	w22, #-0x6              // =-6
   29874: 17fffe76     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29878: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029878:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d3db
   2987c: 91000000     	add	x0, x0, #0x0
		000000000002987c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d3db
   29880: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029880:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba30
   29884: 91000021     	add	x1, x1, #0x0
		0000000000029884:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba30
   29888: 94000000     	bl	0x29888 <syna_cdev_ioctls+0x1d94>
		0000000000029888:  R_AARCH64_CALL26	_printk
   2988c: 128000b6     	mov	w22, #-0x6              // =-6
   29890: 17fffe95     	b	0x292e4 <syna_cdev_ioctls+0x17f0>
   29894: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029894:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d155
   29898: 91000108     	add	x8, x8, #0x0
		0000000000029898:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d155
   2989c: 7100029f     	cmp	w20, #0x0
   298a0: 90000009     	adrp	x9, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cdc5
   298a4: 91000129     	add	x9, x9, #0x0
		00000000000298a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cdc5
   298a8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1caa8
   298ac: 91000000     	add	x0, x0, #0x0
		00000000000298ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1caa8
   298b0: 9a881122     	csel	x2, x9, x8, ne
   298b4: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298b4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d6
   298b8: 91000021     	add	x1, x1, #0x0
		00000000000298b8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d6
   298bc: 94000000     	bl	0x298bc <syna_cdev_ioctls+0x1dc8>
		00000000000298bc:  R_AARCH64_CALL26	_printk
   298c0: aa1603e0     	mov	x0, x22
   298c4: 2a1403e1     	mov	w1, w20
   298c8: 94000000     	bl	0x298c8 <syna_cdev_ioctls+0x1dd4>
		00000000000298c8:  R_AARCH64_CALL26	syna_tcm_enable_predict_reading
   298cc: 794012a8     	ldrh	w8, [x21, #0x8]
   298d0: 17fffe4c     	b	0x29200 <syna_cdev_ioctls+0x170c>
   298d4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c81
   298d8: 91000000     	add	x0, x0, #0x0
		00000000000298d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c81
   298dc: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d6
   298e0: 91000021     	add	x1, x1, #0x0
		00000000000298e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d6
   298e4: b9000122     	str	w2, [x9]
		00000000000298e4:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb4
   298e8: 94000000     	bl	0x298e8 <syna_cdev_ioctls+0x1df4>
		00000000000298e8:  R_AARCH64_CALL26	_printk
   298ec: 17fffe4a     	b	0x29214 <syna_cdev_ioctls+0x1720>
   298f0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19edb
   298f4: 91000000     	add	x0, x0, #0x0
		00000000000298f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19edb
   298f8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000298f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d6
   298fc: 91000021     	add	x1, x1, #0x0
		00000000000298fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d6
   29900: 94000000     	bl	0x29900 <syna_cdev_ioctls+0x1e0c>
		0000000000029900:  R_AARCH64_CALL26	_printk
   29904: 17fffe49     	b	0x29228 <syna_cdev_ioctls+0x1734>
   29908: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029908:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19c59
   2990c: 91000000     	add	x0, x0, #0x0
		000000000002990c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19c59
   29910: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029910:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c197
   29914: 91000021     	add	x1, x1, #0x0
		0000000000029914:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c197
   29918: 2a1703e2     	mov	w2, w23
   2991c: 2a1903e3     	mov	w3, w25
   29920: 94000000     	bl	0x29920 <syna_cdev_ioctls+0x1e2c>
		0000000000029920:  R_AARCH64_CALL26	_printk
   29924: 12800956     	mov	w22, #-0x4b             // =-75
   29928: 17fffe49     	b	0x2924c <syna_cdev_ioctls+0x1758>
   2992c: aa1803e0     	mov	x0, x24
   29930: 94000000     	bl	0x29930 <syna_cdev_ioctls+0x1e3c>
		0000000000029930:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
   29934: 17fffac2     	b	0x2843c <syna_cdev_ioctls+0x948>
   29938: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029938:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a138
   2993c: 91000000     	add	x0, x0, #0x0
		000000000002993c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a138
   29940: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029940:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c197
   29944: 91000021     	add	x1, x1, #0x0
		0000000000029944:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c197
   29948: 2a1903e2     	mov	w2, w25
   2994c: 94000000     	bl	0x2994c <syna_cdev_ioctls+0x1e58>
		000000000002994c:  R_AARCH64_CALL26	_printk
   29950: 12800676     	mov	w22, #-0x34             // =-52
   29954: 17fffaae     	b	0x2840c <syna_cdev_ioctls+0x918>
   29958: f9402308     	ldr	x8, [x24, #0x40]
   2995c: 91002300     	add	x0, x24, #0x8
   29960: 52800021     	mov	w1, #0x1                // =1
   29964: b85fc110     	ldur	w16, [x8, #-0x4]
   29968: 728c3631     	movk	w17, #0x61b1
   2996c: 72a685d1     	movk	w17, #0x342e, lsl #16
   29970: 6b11021f     	cmp	w16, w17
   29974: 54000040     	b.eq	0x2997c <syna_cdev_ioctls+0x1e88>
   29978: d4304500     	brk	#0x8228
   2997c: d63f0100     	blr	x8
   29980: 37f80480     	tbnz	w0, #0x1f, 0x29a10 <syna_cdev_ioctls+0x1f1c>
   29984: f9400289     	ldr	x9, [x20]
   29988: b94023e8     	ldr	w8, [sp, #0x20]
   2998c: b9420d29     	ldr	w9, [x9, #0x20c]
   29990: 6b09011f     	cmp	w8, w9
   29994: 54000062     	b.hs	0x299a0 <syna_cdev_ioctls+0x1eac>
   29998: 2a0903e8     	mov	w8, w9
   2999c: b90023e9     	str	w9, [sp, #0x20]
   299a0: 90000014     	adrp	x20, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000299a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   299a4: 91000294     	add	x20, x20, #0x0
		00000000000299a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   299a8: 90000015     	adrp	x21, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000299a8:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   299ac: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000299ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4ed
   299b0: 91000000     	add	x0, x0, #0x0
		00000000000299b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4ed
   299b4: aa1403e1     	mov	x1, x20
   299b8: b90002a8     	str	w8, [x21]
		00000000000299b8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   299bc: 94000000     	bl	0x299bc <syna_cdev_ioctls+0x1ec8>
		00000000000299bc:  R_AARCH64_CALL26	_printk
   299c0: b94002a2     	ldr	w2, [x21]
		00000000000299c0:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   299c4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000299c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccd2
   299c8: 91000000     	add	x0, x0, #0x0
		00000000000299c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccd2
   299cc: aa1403e1     	mov	x1, x20
   299d0: 94000000     	bl	0x299d0 <syna_cdev_ioctls+0x1edc>
		00000000000299d0:  R_AARCH64_CALL26	_printk
   299d4: 17fffd4d     	b	0x28f08 <syna_cdev_ioctls+0x1414>
   299d8: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		00000000000299d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abf5
   299dc: 91000000     	add	x0, x0, #0x0
		00000000000299dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abf5
   299e0: 14000064     	b	0x29b70 <syna_cdev_ioctls+0x207c>
   299e4: f9402308     	ldr	x8, [x24, #0x40]
   299e8: 91002300     	add	x0, x24, #0x8
   299ec: 52800021     	mov	w1, #0x1                // =1
   299f0: b85fc110     	ldur	w16, [x8, #-0x4]
   299f4: 728c3631     	movk	w17, #0x61b1
   299f8: 72a685d1     	movk	w17, #0x342e, lsl #16
   299fc: 6b11021f     	cmp	w16, w17
   29a00: 54000040     	b.eq	0x29a08 <syna_cdev_ioctls+0x1f14>
   29a04: d4304500     	brk	#0x8228
   29a08: d63f0100     	blr	x8
   29a0c: 36f80f20     	tbz	w0, #0x1f, 0x29bf0 <syna_cdev_ioctls+0x20fc>
   29a10: 2a0003f6     	mov	w22, w0
   29a14: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x189ab
   29a18: 91000000     	add	x0, x0, #0x0
		0000000000029a18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x189ab
   29a1c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   29a20: 91000021     	add	x1, x1, #0x0
		0000000000029a20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   29a24: 94000000     	bl	0x29a24 <syna_cdev_ioctls+0x1f30>
		0000000000029a24:  R_AARCH64_CALL26	_printk
   29a28: 17fffe09     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29a2c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b48e
   29a30: 91000000     	add	x0, x0, #0x0
		0000000000029a30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b48e
   29a34: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1800d
   29a38: 91000021     	add	x1, x1, #0x0
		0000000000029a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1800d
   29a3c: 94000000     	bl	0x29a3c <syna_cdev_ioctls+0x1f48>
		0000000000029a3c:  R_AARCH64_CALL26	_printk
   29a40: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18cca
   29a44: 91000000     	add	x0, x0, #0x0
		0000000000029a44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18cca
   29a48: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   29a4c: 91000021     	add	x1, x1, #0x0
		0000000000029a4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   29a50: 94000000     	bl	0x29a50 <syna_cdev_ioctls+0x1f5c>
		0000000000029a50:  R_AARCH64_CALL26	_printk
   29a54: 128002b6     	mov	w22, #-0x16             // =-22
   29a58: 17fffdc2     	b	0x29160 <syna_cdev_ioctls+0x166c>
   29a5c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29a60: 91000000     	add	x0, x0, #0x0
		0000000000029a60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29a64: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c25a
   29a68: 91000021     	add	x1, x1, #0x0
		0000000000029a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c25a
   29a6c: 94000000     	bl	0x29a6c <syna_cdev_ioctls+0x1f78>
		0000000000029a6c:  R_AARCH64_CALL26	_printk
   29a70: 94000000     	bl	0x29a70 <syna_cdev_ioctls+0x1f7c>
		0000000000029a70:  R_AARCH64_CALL26	syna_request_managed_device
   29a74: b5ff56c0     	cbnz	x0, 0x2854c <syna_cdev_ioctls+0xa58>
   29a78: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29a7c: 91000000     	add	x0, x0, #0x0
		0000000000029a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29a80: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a09
   29a84: 91000021     	add	x1, x1, #0x0
		0000000000029a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a09
   29a88: 94000000     	bl	0x29a88 <syna_cdev_ioctls+0x1f94>
		0000000000029a88:  R_AARCH64_CALL26	_printk
   29a8c: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a8c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29a90: f900011f     	str	xzr, [x8]
		0000000000029a90:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   29a94: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3f1
   29a98: 91000000     	add	x0, x0, #0x0
		0000000000029a98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3f1
   29a9c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029a9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aeed
   29aa0: 91000021     	add	x1, x1, #0x0
		0000000000029aa0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aeed
   29aa4: 52800282     	mov	w2, #0x14               // =20
   29aa8: 94000000     	bl	0x29aa8 <syna_cdev_ioctls+0x1fb4>
		0000000000029aa8:  R_AARCH64_CALL26	_printk
   29aac: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029aac:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   29ab0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029ab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a75a
   29ab4: 91000000     	add	x0, x0, #0x0
		0000000000029ab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a75a
   29ab8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029ab8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18a28
   29abc: 91000021     	add	x1, x1, #0x0
		0000000000029abc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18a28
   29ac0: 52800282     	mov	w2, #0x14               // =20
   29ac4: f900011f     	str	xzr, [x8]
		0000000000029ac4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   29ac8: 94000000     	bl	0x29ac8 <syna_cdev_ioctls+0x1fd4>
		0000000000029ac8:  R_AARCH64_CALL26	_printk
   29acc: 12801e56     	mov	w22, #-0xf3             // =-243
   29ad0: 17fffaf4     	b	0x286a0 <syna_cdev_ioctls+0xbac>
   29ad4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029ad4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29ad8: 91000000     	add	x0, x0, #0x0
		0000000000029ad8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29adc: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029adc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c25a
   29ae0: 91000021     	add	x1, x1, #0x0
		0000000000029ae0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c25a
   29ae4: 94000000     	bl	0x29ae4 <syna_cdev_ioctls+0x1ff0>
		0000000000029ae4:  R_AARCH64_CALL26	_printk
   29ae8: 94000000     	bl	0x29ae8 <syna_cdev_ioctls+0x1ff4>
		0000000000029ae8:  R_AARCH64_CALL26	syna_request_managed_device
   29aec: b5ff7060     	cbnz	x0, 0x288f8 <syna_cdev_ioctls+0xe04>
   29af0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029af0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29af4: 91000000     	add	x0, x0, #0x0
		0000000000029af4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29af8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a09
   29afc: 91000021     	add	x1, x1, #0x0
		0000000000029afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a09
   29b00: 94000000     	bl	0x29b00 <syna_cdev_ioctls+0x200c>
		0000000000029b00:  R_AARCH64_CALL26	_printk
   29b04: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b04:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29b08: f900011f     	str	xzr, [x8]
		0000000000029b08:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   29b0c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3f1
   29b10: 91000000     	add	x0, x0, #0x0
		0000000000029b10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3f1
   29b14: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aeed
   29b18: 91000021     	add	x1, x1, #0x0
		0000000000029b18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aeed
   29b1c: 52800282     	mov	w2, #0x14               // =20
   29b20: 94000000     	bl	0x29b20 <syna_cdev_ioctls+0x202c>
		0000000000029b20:  R_AARCH64_CALL26	_printk
   29b24: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b24:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   29b28: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a75a
   29b2c: 91000000     	add	x0, x0, #0x0
		0000000000029b2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a75a
   29b30: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186d6
   29b34: 91000021     	add	x1, x1, #0x0
		0000000000029b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186d6
   29b38: 52800282     	mov	w2, #0x14               // =20
   29b3c: f900011f     	str	xzr, [x8]
		0000000000029b3c:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   29b40: 94000000     	bl	0x29b40 <syna_cdev_ioctls+0x204c>
		0000000000029b40:  R_AARCH64_CALL26	_printk
   29b44: 12801e56     	mov	w22, #-0xf3             // =-243
   29b48: 17fffdb9     	b	0x2922c <syna_cdev_ioctls+0x1738>
   29b4c: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29b50: 91000000     	add	x0, x0, #0x0
		0000000000029b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29b54: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c25a
   29b58: 91000021     	add	x1, x1, #0x0
		0000000000029b58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c25a
   29b5c: 94000000     	bl	0x29b5c <syna_cdev_ioctls+0x2068>
		0000000000029b5c:  R_AARCH64_CALL26	_printk
   29b60: 94000000     	bl	0x29b60 <syna_cdev_ioctls+0x206c>
		0000000000029b60:  R_AARCH64_CALL26	syna_request_managed_device
   29b64: b5ff2bc0     	cbnz	x0, 0x280dc <syna_cdev_ioctls+0x5e8>
   29b68: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   29b6c: 91000000     	add	x0, x0, #0x0
		0000000000029b6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   29b70: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19a09
   29b74: 91000021     	add	x1, x1, #0x0
		0000000000029b74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19a09
   29b78: 94000000     	bl	0x29b78 <syna_cdev_ioctls+0x2084>
		0000000000029b78:  R_AARCH64_CALL26	_printk
   29b7c: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b7c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x8
   29b80: f900011f     	str	xzr, [x8]
		0000000000029b80:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x8
   29b84: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a3f1
   29b88: 91000000     	add	x0, x0, #0x0
		0000000000029b88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a3f1
   29b8c: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aeed
   29b90: 91000021     	add	x1, x1, #0x0
		0000000000029b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aeed
   29b94: 2a1403e2     	mov	w2, w20
   29b98: 94000000     	bl	0x29b98 <syna_cdev_ioctls+0x20a4>
		0000000000029b98:  R_AARCH64_CALL26	_printk
   29b9c: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029b9c:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0x10
   29ba0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a75a
   29ba4: 91000000     	add	x0, x0, #0x0
		0000000000029ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a75a
   29ba8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029ba8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccff
   29bac: 91000021     	add	x1, x1, #0x0
		0000000000029bac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccff
   29bb0: 2a1703e2     	mov	w2, w23
   29bb4: f900011f     	str	xzr, [x8]
		0000000000029bb4:  R_AARCH64_LDST64_ABS_LO12_NC	g_cdev_data+0x10
   29bb8: 94000000     	bl	0x29bb8 <syna_cdev_ioctls+0x20c4>
		0000000000029bb8:  R_AARCH64_CALL26	_printk
   29bbc: 12801e56     	mov	w22, #-0xf3             // =-243
   29bc0: 17fffd68     	b	0x29160 <syna_cdev_ioctls+0x166c>
   29bc4: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80b
   29bc8: 91000000     	add	x0, x0, #0x0
		0000000000029bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80b
   29bcc: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029bcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   29bd0: 91000021     	add	x1, x1, #0x0
		0000000000029bd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   29bd4: 94000000     	bl	0x29bd4 <syna_cdev_ioctls+0x20e0>
		0000000000029bd4:  R_AARCH64_CALL26	_printk
   29bd8: f9400288     	ldr	x8, [x20]
   29bdc: 90000009     	adrp	x9, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029bdc:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   29be0: 2a1f03f6     	mov	w22, wzr
   29be4: b9420d08     	ldr	w8, [x8, #0x20c]
   29be8: b9000128     	str	w8, [x9]
		0000000000029be8:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   29bec: 17fffd98     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29bf0: 90000000     	adrp	x0, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c4ed
   29bf4: 91000000     	add	x0, x0, #0x0
		0000000000029bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c4ed
   29bf8: 90000001     	adrp	x1, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b763
   29bfc: 91000021     	add	x1, x1, #0x0
		0000000000029bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b763
   29c00: 94000000     	bl	0x29c00 <syna_cdev_ioctls+0x210c>
		0000000000029c00:  R_AARCH64_CALL26	_printk
   29c04: 90000008     	adrp	x8, 0x29000 <syna_cdev_ioctls+0x150c>
		0000000000029c04:  R_AARCH64_ADR_PREL_PG_HI21	g_cdev_data+0xb0
   29c08: 2a1f03f6     	mov	w22, wzr
   29c0c: b900011f     	str	wzr, [x8]
		0000000000029c0c:  R_AARCH64_LDST32_ABS_LO12_NC	g_cdev_data+0xb0
   29c10: 17fffd8f     	b	0x2924c <syna_cdev_ioctls+0x1758>
   29c14: 52802000     	mov	w0, #0x100              // =256
   29c18: aa1603e1     	mov	x1, x22
   29c1c: 94000000     	bl	0x29c1c <syna_cdev_ioctls+0x2128>
		0000000000029c1c:  R_AARCH64_CALL26	__copy_overflow
   29c20: 17fffe8c     	b	0x29650 <syna_cdev_ioctls+0x1b5c>
   29c24: 52800080     	mov	w0, #0x4                // =4
   29c28: aa1703e1     	mov	x1, x23
   29c2c: 94000000     	bl	0x29c2c <syna_cdev_ioctls+0x2138>
		0000000000029c2c:  R_AARCH64_CALL26	__copy_overflow
   29c30: 17fff842     	b	0x27d38 <syna_cdev_ioctls+0x244>
   29c34: d4210000     	brk	#0x800
   29c38: 34ff9a38     	cbz	w24, 0x28f7c <syna_cdev_ioctls+0x1488>
   29c3c: 17fffc5a     	b	0x28da4 <syna_cdev_ioctls+0x12b0>
   29c40: d4210000     	brk	#0x800
   29c44: 17fffd45     	b	0x29158 <syna_cdev_ioctls+0x1664>
   29c48: 94000000     	bl	0x29c48 <syna_cdev_ioctls+0x2154>
		0000000000029c48:  R_AARCH64_CALL26	__stack_chk_fail
   29c4c: aa0003e2     	mov	x2, x0
   29c50: 528001e0     	mov	w0, #0xf                // =15
   29c54: aa1f03e1     	mov	x1, xzr
   29c58: 94000000     	bl	0x29c58 <syna_cdev_ioctls+0x2164>
		0000000000029c58:  R_AARCH64_CALL26	__fortify_panic
   29c5c: 528001e0     	mov	w0, #0xf                // =15
   29c60: 94000000     	bl	0x29c60 <syna_cdev_ioctls+0x216c>
		0000000000029c60:  R_AARCH64_CALL26	__fortify_panic
   29c64: 528001e0     	mov	w0, #0xf                // =15
   29c68: aa1603e2     	mov	x2, x22
   29c6c: 94000000     	bl	0x29c6c <syna_cdev_ioctls+0x2178>
		0000000000029c6c:  R_AARCH64_CALL26	__fortify_panic
   29c70: 528001e0     	mov	w0, #0xf                // =15
   29c74: aa1403e2     	mov	x2, x20
   29c78: 94000000     	bl	0x29c78 <syna_cdev_ioctls+0x2184>
		0000000000029c78:  R_AARCH64_CALL26	__fortify_panic
