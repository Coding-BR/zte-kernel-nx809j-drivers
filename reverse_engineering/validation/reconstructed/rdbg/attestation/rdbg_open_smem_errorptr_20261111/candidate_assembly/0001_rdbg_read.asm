
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b48 <rdbg_read>:
     b48: d503233f     	paciasp
     b4c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     b50: f9000bf9     	str	x25, [sp, #0x10]
     b54: a9025ff8     	stp	x24, x23, [sp, #0x20]
     b58: a90357f6     	stp	x22, x21, [sp, #0x30]
     b5c: a9044ff4     	stp	x20, x19, [sp, #0x40]
     b60: 910003fd     	mov	x29, sp
     b64: f9401017     	ldr	x23, [x0, #0x20]
     b68: b40018b7     	cbz	x23, 0xe7c <rdbg_read+0x334>
     b6c: f94002f8     	ldr	x24, [x23]
     b70: b4001878     	cbz	x24, 0xe7c <rdbg_read+0x334>
     b74: 91002300     	add	x0, x24, #0x8
     b78: aa0203f4     	mov	x20, x2
     b7c: aa0103f3     	mov	x19, x1
     b80: 94000000     	bl	0xb80 <rdbg_read+0x38>
		0000000000000b80:  R_AARCH64_CALL26	wait_for_completion_interruptible
     b84: 35001860     	cbnz	w0, 0xe90 <rdbg_read+0x348>
     b88: 529fe039     	mov	w25, #0xff01            // =65281
     b8c: 910022e0     	add	x0, x23, #0x8
     b90: 72bfe019     	movk	w25, #0xff00, lsl #16
     b94: 94000000     	bl	0xb94 <rdbg_read+0x4c>
		0000000000000b94:  R_AARCH64_CALL26	mutex_lock
     b98: b9411308     	ldr	w8, [x24, #0x110]
     b9c: 7100091f     	cmp	w8, #0x2
     ba0: 54000861     	b.ne	0xcac <rdbg_read+0x164>
     ba4: f9406b08     	ldr	x8, [x24, #0xd0]
     ba8: b9400109     	ldr	w9, [x8]
     bac: 6b19013f     	cmp	w9, w25
     bb0: 540007e1     	b.ne	0xcac <rdbg_read+0x164>
     bb4: f9406709     	ldr	x9, [x24, #0xc8]
     bb8: 39400129     	ldrb	w9, [x9]
     bbc: 7100053f     	cmp	w9, #0x1
     bc0: 54000761     	b.ne	0xcac <rdbg_read+0x164>
     bc4: f9406f09     	ldr	x9, [x24, #0xd8]
     bc8: b9400515     	ldr	w21, [x8, #0x4]
     bcc: b9400528     	ldr	w8, [x9, #0x4]
     bd0: 6b15011f     	cmp	w8, w21
     bd4: 540006c0     	b.eq	0xcac <rdbg_read+0x164>
     bd8: b9000535     	str	w21, [x9, #0x4]
     bdc: b940eb08     	ldr	w8, [x24, #0xe8]
     be0: 34000168     	cbz	w8, 0xc0c <rdbg_read+0xc4>
     be4: aa1f03e8     	mov	x8, xzr
     be8: 52800209     	mov	w9, #0x10               // =16
     bec: 529fffea     	mov	w10, #0xffff            // =65535
     bf0: f9406f0b     	ldr	x11, [x24, #0xd8]
     bf4: 91000508     	add	x8, x8, #0x1
     bf8: 7829696a     	strh	w10, [x11, x9]
     bfc: 91001129     	add	x9, x9, #0x4
     c00: b940eb0b     	ldr	w11, [x24, #0xe8]
     c04: eb0b011f     	cmp	x8, x11
     c08: 54ffff43     	b.lo	0xbf0 <rdbg_read+0xa8>
     c0c: f9406f08     	ldr	x8, [x24, #0xd8]
     c10: b900091f     	str	wzr, [x8, #0x8]
     c14: f9406f08     	ldr	x8, [x24, #0xd8]
     c18: b9000d1f     	str	wzr, [x8, #0xc]
     c1c: b940c308     	ldr	w8, [x24, #0xc0]
     c20: 7100051f     	cmp	w8, #0x1
     c24: 54000441     	b.ne	0xcac <rdbg_read+0x164>
     c28: f9405300     	ldr	x0, [x24, #0xa0]
     c2c: 94000000     	bl	0xc2c <rdbg_read+0xe4>
		0000000000000c2c:  R_AARCH64_CALL26	mutex_lock
     c30: f9404308     	ldr	x8, [x24, #0x80]
     c34: b9400509     	ldr	w9, [x8, #0x4]
     c38: 6b15013f     	cmp	w9, w21
     c3c: 54000340     	b.eq	0xca4 <rdbg_read+0x15c>
     c40: b9000515     	str	w21, [x8, #0x4]
     c44: b9409b08     	ldr	w8, [x24, #0x98]
     c48: 34000168     	cbz	w8, 0xc74 <rdbg_read+0x12c>
     c4c: aa1f03e8     	mov	x8, xzr
     c50: 52800209     	mov	w9, #0x10               // =16
     c54: 529fffea     	mov	w10, #0xffff            // =65535
     c58: f940430b     	ldr	x11, [x24, #0x80]
     c5c: 91000508     	add	x8, x8, #0x1
     c60: 7829696a     	strh	w10, [x11, x9]
     c64: 91001129     	add	x9, x9, #0x4
     c68: b9409b0b     	ldr	w11, [x24, #0x98]
     c6c: eb0b011f     	cmp	x8, x11
     c70: 54ffff43     	b.lo	0xc58 <rdbg_read+0x110>
     c74: f9405f08     	ldr	x8, [x24, #0xb8]
     c78: b40000e8     	cbz	x8, 0xc94 <rdbg_read+0x14c>
     c7c: b940b708     	ldr	w8, [x24, #0xb4]
     c80: f9405f00     	ldr	x0, [x24, #0xb8]
     c84: 2a1f03e1     	mov	w1, wzr
     c88: 11000502     	add	w2, w8, #0x1
     c8c: 94000000     	bl	0xc8c <rdbg_read+0x144>
		0000000000000c8c:  R_AARCH64_CALL26	memset
     c90: b900b31f     	str	wzr, [x24, #0xb0]
     c94: f9404308     	ldr	x8, [x24, #0x80]
     c98: b900091f     	str	wzr, [x8, #0x8]
     c9c: f9404308     	ldr	x8, [x24, #0x80]
     ca0: b9000d1f     	str	wzr, [x8, #0xc]
     ca4: f9405300     	ldr	x0, [x24, #0xa0]
     ca8: 94000000     	bl	0xca8 <rdbg_read+0x160>
		0000000000000ca8:  R_AARCH64_CALL26	mutex_unlock
     cac: a94ca708     	ldp	x8, x9, [x24, #0xc8]
     cb0: 39400108     	ldrb	w8, [x8]
     cb4: 7100051f     	cmp	w8, #0x1
     cb8: 54000080     	b.eq	0xcc8 <rdbg_read+0x180>
     cbc: b9400128     	ldr	w8, [x9]
     cc0: 6b19011f     	cmp	w8, w25
     cc4: 54000ce1     	b.ne	0xe60 <rdbg_read+0x318>
     cc8: f9406f08     	ldr	x8, [x24, #0xd8]
     ccc: b940092b     	ldr	w11, [x9, #0x8]
     cd0: b940090a     	ldr	w10, [x8, #0x8]
     cd4: 6b0b015f     	cmp	w10, w11
     cd8: 54000c40     	b.eq	0xe60 <rdbg_read+0x318>
     cdc: 8b0a0929     	add	x9, x9, x10, lsl #2
     ce0: b940eb0b     	ldr	w11, [x24, #0xe8]
     ce4: 78410d2c     	ldrh	w12, [x9, #0x10]!
     ce8: 6b0c017f     	cmp	w11, w12
     cec: 54000ba9     	b.ls	0xe60 <rdbg_read+0x318>
     cf0: 1100054a     	add	w10, w10, #0x1
     cf4: 52800022     	mov	w2, #0x1                // =1
     cf8: 1acb094c     	udiv	w12, w10, w11
     cfc: 1b0ba98a     	msub	w10, w12, w11, w10
     d00: b900090a     	str	w10, [x8, #0x8]
     d04: 79400528     	ldrh	w8, [x9, #0x2]
     d08: f940730a     	ldr	x10, [x24, #0xe0]
     d0c: 79400129     	ldrh	w9, [x9]
     d10: d5033d9f     	dsb	ld
     d14: d379e108     	lsl	x8, x8, #7
     d18: 8b091d56     	add	x22, x10, x9, lsl #7
     d1c: eb14011f     	cmp	x8, x20
     d20: aa1603e0     	mov	x0, x22
     d24: 9a943115     	csel	x21, x8, x20, lo
     d28: aa1503e1     	mov	x1, x21
     d2c: 94000000     	bl	0xd2c <rdbg_read+0x1e4>
		0000000000000d2c:  R_AARCH64_CALL26	__check_object_size
     d30: d5384108     	mrs	x8, SP_EL0
     d34: 39411909     	ldrb	w9, [x8, #0x46]
     d38: 37280089     	tbnz	w9, #0x5, 0xd48 <rdbg_read+0x200>
     d3c: f940010a     	ldr	x10, [x8]
     d40: aa1303e9     	mov	x9, x19
     d44: 36d0006a     	tbz	w10, #0x1a, 0xd50 <rdbg_read+0x208>
     d48: d378de69     	lsl	x9, x19, #8
     d4c: 8a892269     	and	x9, x19, x9, asr #8
     d50: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
     d54: aa1503e3     	mov	x3, x21
     d58: cb15014a     	sub	x10, x10, x21
     d5c: eb09015f     	cmp	x10, x9
     d60: 54000363     	b.lo	0xdcc <rdbg_read+0x284>
     d64: d503201f     	nop
     d68: d53b4229     	mrs	x9, DAIF
     d6c: d50343df     	msr	DAIFSet, #0x3
     d70: f9400508     	ldr	x8, [x8, #0x8]
     d74: d538202a     	mrs	x10, TTBR1_EL1
     d78: aa0803eb     	mov	x11, x8
     d7c: b340bd4b     	bfxil	x11, x10, #0, #48
     d80: d518202b     	msr	TTBR1_EL1, x11
     d84: d5182008     	msr	TTBR0_EL1, x8
     d88: d5033fdf     	isb
     d8c: d51b4229     	msr	DAIF, x9
     d90: 9248fa60     	and	x0, x19, #0xff7fffffffffffff
     d94: aa1603e1     	mov	x1, x22
     d98: aa1503e2     	mov	x2, x21
     d9c: 94000000     	bl	0xd9c <rdbg_read+0x254>
		0000000000000d9c:  R_AARCH64_CALL26	__arch_copy_to_user
     da0: aa0003e3     	mov	x3, x0
     da4: d503201f     	nop
     da8: d53b4228     	mrs	x8, DAIF
     dac: d50343df     	msr	DAIFSet, #0x3
     db0: d5382029     	mrs	x9, TTBR1_EL1
     db4: 9240bd29     	and	x9, x9, #0xffffffffffff
     db8: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
     dbc: d518200a     	msr	TTBR0_EL1, x10
     dc0: d5182029     	msr	TTBR1_EL1, x9
     dc4: d5033fdf     	isb
     dc8: d51b4228     	msr	DAIF, x8
     dcc: 35000723     	cbnz	w3, 0xeb0 <rdbg_read+0x368>
     dd0: f9407b00     	ldr	x0, [x24, #0xf0]
     dd4: b4000040     	cbz	x0, 0xddc <rdbg_read+0x294>
     dd8: 94000000     	bl	0xdd8 <rdbg_read+0x290>
		0000000000000dd8:  R_AARCH64_CALL26	mutex_lock
     ddc: f9406708     	ldr	x8, [x24, #0xc8]
     de0: 39400108     	ldrb	w8, [x8]
     de4: 7100051f     	cmp	w8, #0x1
     de8: 540000a0     	b.eq	0xdfc <rdbg_read+0x2b4>
     dec: f9406b08     	ldr	x8, [x24, #0xd0]
     df0: b9400108     	ldr	w8, [x8]
     df4: 6b19011f     	cmp	w8, w25
     df8: 540002c1     	b.ne	0xe50 <rdbg_read+0x308>
     dfc: f9407308     	ldr	x8, [x24, #0xe0]
     e00: cb0802c8     	sub	x8, x22, x8
     e04: 9101fd09     	add	x9, x8, #0x7f
     e08: f100011f     	cmp	x8, #0x0
     e0c: 9a88b128     	csel	x8, x9, x8, lt
     e10: b940eb09     	ldr	w9, [x24, #0xe8]
     e14: 9347fd08     	asr	x8, x8, #7
     e18: 6b08013f     	cmp	w9, w8
     e1c: 540001a9     	b.ls	0xe50 <rdbg_read+0x308>
     e20: f9406f09     	ldr	x9, [x24, #0xd8]
     e24: b9400d2a     	ldr	w10, [x9, #0xc]
     e28: 8b0a0929     	add	x9, x9, x10, lsl #2
     e2c: 79002128     	strh	w8, [x9, #0x10]
     e30: 7900253f     	strh	wzr, [x9, #0x12]
     e34: f9406f08     	ldr	x8, [x24, #0xd8]
     e38: b940eb0a     	ldr	w10, [x24, #0xe8]
     e3c: b9400d09     	ldr	w9, [x8, #0xc]
     e40: 11000529     	add	w9, w9, #0x1
     e44: 1aca092b     	udiv	w11, w9, w10
     e48: 1b0aa569     	msub	w9, w11, w10, w9
     e4c: b9000d09     	str	w9, [x8, #0xc]
     e50: f9407b00     	ldr	x0, [x24, #0xf0]
     e54: b40003c0     	cbz	x0, 0xecc <rdbg_read+0x384>
     e58: 94000000     	bl	0xe58 <rdbg_read+0x310>
		0000000000000e58:  R_AARCH64_CALL26	mutex_unlock
     e5c: 1400001c     	b	0xecc <rdbg_read+0x384>
     e60: f9400300     	ldr	x0, [x24]
     e64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3f2
     e68: 91000021     	add	x1, x1, #0x0
		0000000000000e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3f2
     e6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     e70: 91000042     	add	x2, x2, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     e74: 2a1f03e3     	mov	w3, wzr
     e78: 14000013     	b	0xec4 <rdbg_read+0x37c>
     e7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x249
     e80: 91000000     	add	x0, x0, #0x0
		0000000000000e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x249
     e84: 94000000     	bl	0xe84 <rdbg_read+0x33c>
		0000000000000e84:  R_AARCH64_CALL26	_printk
     e88: 128002b5     	mov	w21, #-0x16             // =-22
     e8c: 14000012     	b	0xed4 <rdbg_read+0x38c>
     e90: 2a0003f5     	mov	w21, w0
     e94: f9400300     	ldr	x0, [x24]
     e98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5
     e9c: 91000021     	add	x1, x1, #0x0
		0000000000000e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5
     ea0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     ea4: 91000042     	add	x2, x2, #0x0
		0000000000000ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     ea8: 94000000     	bl	0xea8 <rdbg_read+0x360>
		0000000000000ea8:  R_AARCH64_CALL26	_dev_err
     eac: 1400000a     	b	0xed4 <rdbg_read+0x38c>
     eb0: f9400300     	ldr	x0, [x24]
     eb4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000eb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44c
     eb8: 91000021     	add	x1, x1, #0x0
		0000000000000eb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44c
     ebc: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x284
     ec0: 91000042     	add	x2, x2, #0x0
		0000000000000ec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x284
     ec4: 94000000     	bl	0xec4 <rdbg_read+0x37c>
		0000000000000ec4:  R_AARCH64_CALL26	_dev_err
     ec8: 12800795     	mov	w21, #-0x3d             // =-61
     ecc: 910022e0     	add	x0, x23, #0x8
     ed0: 94000000     	bl	0xed0 <rdbg_read+0x388>
		0000000000000ed0:  R_AARCH64_CALL26	mutex_unlock
     ed4: 93407ea0     	sxtw	x0, w21
     ed8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
     edc: f9400bf9     	ldr	x25, [sp, #0x10]
     ee0: a94357f6     	ldp	x22, x21, [sp, #0x30]
     ee4: a9425ff8     	ldp	x24, x23, [sp, #0x20]
     ee8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
     eec: d50323bf     	autiasp
     ef0: d65f03c0     	ret
