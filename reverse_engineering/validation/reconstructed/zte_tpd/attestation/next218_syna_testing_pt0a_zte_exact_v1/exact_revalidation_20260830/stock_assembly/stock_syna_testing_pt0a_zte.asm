
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014c38 <syna_testing_pt0a_zte>:
   14c38: d503233f     	paciasp
   14c3c: d10343ff     	sub	sp, sp, #0xd0
   14c40: a9077bfd     	stp	x29, x30, [sp, #0x70]
   14c44: a9086ffc     	stp	x28, x27, [sp, #0x80]
   14c48: a90967fa     	stp	x26, x25, [sp, #0x90]
   14c4c: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   14c50: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   14c54: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   14c58: 9101c3fd     	add	x29, sp, #0x70
   14c5c: d5384108     	mrs	x8, SP_EL0
   14c60: aa0003f4     	mov	x20, x0
   14c64: f9438908     	ldr	x8, [x8, #0x710]
   14c68: f81f83a8     	stur	x8, [x29, #-0x8]
   14c6c: f9000fff     	str	xzr, [sp, #0x18]
   14c70: f90007ff     	str	xzr, [sp, #0x8]
   14c74: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   14c78: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   14c7c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   14c80: f9001bff     	str	xzr, [sp, #0x30]
   14c84: d503201f     	nop
   14c88: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014c88:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   14c8c: 5281b801     	mov	w1, #0xdc0              // =3520
   14c90: 52820002     	mov	w2, #0x1000             // =4096
   14c94: f9400100     	ldr	x0, [x8]
		0000000000014c94:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   14c98: 94000000     	bl	0x14c98 <syna_testing_pt0a_zte+0x60>
		0000000000014c98:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   14c9c: aa0003f3     	mov	x19, x0
   14ca0: b40014b3     	cbz	x19, 0x14f34 <syna_testing_pt0a_zte+0x2fc>
   14ca4: 39560a88     	ldrb	w8, [x20, #0x582]
   14ca8: 36000c68     	tbz	w8, #0x0, 0x14e34 <syna_testing_pt0a_zte+0x1fc>
   14cac: 94000000     	bl	0x14cac <syna_testing_pt0a_zte+0x74>
		0000000000014cac:  R_AARCH64_CALL26	syna_tcm_get_testing_0A00
   14cb0: b4000ee0     	cbz	x0, 0x14e8c <syna_testing_pt0a_zte+0x254>
   14cb4: f9400288     	ldr	x8, [x20]
   14cb8: 910083f6     	add	x22, sp, #0x20
   14cbc: aa0003f5     	mov	x21, x0
   14cc0: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   14cc4: 91000021     	add	x1, x1, #0x0
		0000000000014cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   14cc8: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014cc8:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   14ccc: 91000042     	add	x2, x2, #0x0
		0000000000014ccc:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   14cd0: b9402108     	ldr	w8, [x8, #0x20]
   14cd4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   14cd8: b9002408     	str	w8, [x0, #0x24]
   14cdc: f9400288     	ldr	x8, [x20]
   14ce0: b9401d08     	ldr	w8, [x8, #0x1c]
   14ce4: b9002008     	str	w8, [x0, #0x20]
   14ce8: 910042c0     	add	x0, x22, #0x10
   14cec: 390183ff     	strb	wzr, [sp, #0x60]
   14cf0: 94000000     	bl	0x14cf0 <syna_testing_pt0a_zte+0xb8>
		0000000000014cf0:  R_AARCH64_CALL26	__mutex_init
   14cf4: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x13f8
   14cf8: 91000108     	add	x8, x8, #0x0
		0000000000014cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x13f8
   14cfc: 90000009     	adrp	x9, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2078
   14d00: 91000129     	add	x9, x9, #0x0
		0000000000014d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2078
   14d04: f9000be8     	str	x8, [sp, #0x10]
   14d08: 52819008     	mov	w8, #0xc80              // =3200
   14d0c: b9001be8     	str	w8, [sp, #0x18]
   14d10: aa1503e1     	mov	x1, x21
   14d14: 2a1f03e2     	mov	w2, wzr
   14d18: f90003e9     	str	x9, [sp]
   14d1c: 910043e9     	add	x9, sp, #0x10
   14d20: b9000be8     	str	w8, [sp, #0x8]
   14d24: 910003e8     	mov	x8, sp
   14d28: f9006eb6     	str	x22, [x21, #0xd8]
   14d2c: a903a2a9     	stp	x9, x8, [x21, #0x38]
   14d30: f9400ea8     	ldr	x8, [x21, #0x18]
   14d34: f9400280     	ldr	x0, [x20]
   14d38: b85fc110     	ldur	w16, [x8, #-0x4]
   14d3c: 72895251     	movk	w17, #0x4a92
   14d40: 72b03811     	movk	w17, #0x81c0, lsl #16
   14d44: 6b11021f     	cmp	w16, w17
   14d48: 54000040     	b.eq	0x14d50 <syna_testing_pt0a_zte+0x118>
   14d4c: d4304500     	brk	#0x8228
   14d50: d63f0100     	blr	x8
   14d54: 37f80ac0     	tbnz	w0, #0x1f, 0x14eac <syna_testing_pt0a_zte+0x274>
   14d58: 394042a8     	ldrb	w8, [x21, #0x10]
   14d5c: 90000009     	adrp	x9, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   14d60: 91000129     	add	x9, x9, #0x0
		0000000000014d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   14d64: 7100011f     	cmp	w8, #0x0
   14d68: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   14d6c: 91000108     	add	x8, x8, #0x0
		0000000000014d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   14d70: 9a891105     	csel	x5, x8, x9, ne
   14d74: f94006a3     	ldr	x3, [x21, #0x8]
   14d78: b94002a4     	ldr	w4, [x21]
   14d7c: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   14d80: 91000042     	add	x2, x2, #0x0
		0000000000014d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   14d84: aa1303e0     	mov	x0, x19
   14d88: 52820001     	mov	w1, #0x1000             // =4096
   14d8c: 94000000     	bl	0x14d8c <syna_testing_pt0a_zte+0x154>
		0000000000014d8c:  R_AARCH64_CALL26	scnprintf
   14d90: b9402fe8     	ldr	w8, [sp, #0x2c]
   14d94: 2a0003f6     	mov	w22, w0
   14d98: 340005c8     	cbz	w8, 0x14e50 <syna_testing_pt0a_zte+0x218>
   14d9c: b94022a8     	ldr	w8, [x21, #0x20]
   14da0: 34000588     	cbz	w8, 0x14e50 <syna_testing_pt0a_zte+0x218>
   14da4: f94013fa     	ldr	x26, [sp, #0x20]
   14da8: 2a1f03f9     	mov	w25, wzr
   14dac: 90000017     	adrp	x23, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   14db0: 910002f7     	add	x23, x23, #0x0
		0000000000014db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   14db4: 5282001b     	mov	w27, #0x1000            // =4096
   14db8: 90000018     	adrp	x24, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014db8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0ee
   14dbc: 91000318     	add	x24, x24, #0x0
		0000000000014dbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0ee
   14dc0: 1400000b     	b	0x14dec <syna_testing_pt0a_zte+0x1b4>
   14dc4: 2a1603e8     	mov	w8, w22
   14dc8: aa1703e2     	mov	x2, x23
   14dcc: cb080361     	sub	x1, x27, x8
   14dd0: 8b080260     	add	x0, x19, x8
   14dd4: 94000000     	bl	0x14dd4 <syna_testing_pt0a_zte+0x19c>
		0000000000014dd4:  R_AARCH64_CALL26	scnprintf
   14dd8: b94022a8     	ldr	w8, [x21, #0x20]
   14ddc: 11000739     	add	w25, w25, #0x1
   14de0: 0b160016     	add	w22, w0, w22
   14de4: 6b08033f     	cmp	w25, w8
   14de8: 54000342     	b.hs	0x14e50 <syna_testing_pt0a_zte+0x218>
   14dec: b94026a8     	ldr	w8, [x21, #0x24]
   14df0: 34fffea8     	cbz	w8, 0x14dc4 <syna_testing_pt0a_zte+0x18c>
   14df4: 2a1f03fc     	mov	w28, wzr
   14df8: f9400288     	ldr	x8, [x20]
   14dfc: 2a1603e9     	mov	w9, w22
   14e00: aa1803e2     	mov	x2, x24
   14e04: cb090361     	sub	x1, x27, x9
   14e08: 8b090260     	add	x0, x19, x9
   14e0c: b9402108     	ldr	w8, [x8, #0x20]
   14e10: 1b087328     	madd	w8, w25, w8, w28
   14e14: 78e85b43     	ldrsh	w3, [x26, w8, uxtw #1]
   14e18: 94000000     	bl	0x14e18 <syna_testing_pt0a_zte+0x1e0>
		0000000000014e18:  R_AARCH64_CALL26	scnprintf
   14e1c: b94026a8     	ldr	w8, [x21, #0x24]
   14e20: 1100079c     	add	w28, w28, #0x1
   14e24: 0b160016     	add	w22, w0, w22
   14e28: 6b08039f     	cmp	w28, w8
   14e2c: 54fffe63     	b.lo	0x14df8 <syna_testing_pt0a_zte+0x1c0>
   14e30: 17ffffe5     	b	0x14dc4 <syna_testing_pt0a_zte+0x18c>
   14e34: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   14e38: 91000042     	add	x2, x2, #0x0
		0000000000014e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   14e3c: aa1303e0     	mov	x0, x19
   14e40: 52820001     	mov	w1, #0x1000             // =4096
   14e44: 94000000     	bl	0x14e44 <syna_testing_pt0a_zte+0x20c>
		0000000000014e44:  R_AARCH64_CALL26	scnprintf
   14e48: 2a0003f6     	mov	w22, w0
   14e4c: 14000040     	b	0x14f4c <syna_testing_pt0a_zte+0x314>
   14e50: aa1303e0     	mov	x0, x19
   14e54: 94000000     	bl	0x14e54 <syna_testing_pt0a_zte+0x21c>
		0000000000014e54:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   14e58: 394183e2     	ldrb	w2, [sp, #0x60]
   14e5c: 350003a2     	cbnz	w2, 0x14ed0 <syna_testing_pt0a_zte+0x298>
   14e60: f94013f4     	ldr	x20, [sp, #0x20]
   14e64: 94000000     	bl	0x14e64 <syna_testing_pt0a_zte+0x22c>
		0000000000014e64:  R_AARCH64_CALL26	syna_request_managed_device
   14e68: b4000400     	cbz	x0, 0x14ee8 <syna_testing_pt0a_zte+0x2b0>
   14e6c: b4000074     	cbz	x20, 0x14e78 <syna_testing_pt0a_zte+0x240>
   14e70: aa1403e1     	mov	x1, x20
   14e74: 94000000     	bl	0x14e74 <syna_testing_pt0a_zte+0x23c>
		0000000000014e74:  R_AARCH64_CALL26	devm_kfree
   14e78: aa1303e0     	mov	x0, x19
   14e7c: f90017ff     	str	xzr, [sp, #0x28]
   14e80: 390183ff     	strb	wzr, [sp, #0x60]
   14e84: 94000000     	bl	0x14e84 <syna_testing_pt0a_zte+0x24c>
		0000000000014e84:  R_AARCH64_CALL26	kfree
   14e88: 14000031     	b	0x14f4c <syna_testing_pt0a_zte+0x314>
   14e8c: 90000002     	adrp	x2, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   14e90: 91000042     	add	x2, x2, #0x0
		0000000000014e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   14e94: aa1303e0     	mov	x0, x19
   14e98: 52820001     	mov	w1, #0x1000             // =4096
   14e9c: 52814003     	mov	w3, #0xa00              // =2560
   14ea0: 94000000     	bl	0x14ea0 <syna_testing_pt0a_zte+0x268>
		0000000000014ea0:  R_AARCH64_CALL26	scnprintf
   14ea4: 2a0003f6     	mov	w22, w0
   14ea8: 14000029     	b	0x14f4c <syna_testing_pt0a_zte+0x314>
   14eac: f94006a2     	ldr	x2, [x21, #0x8]
   14eb0: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   14eb4: 91000000     	add	x0, x0, #0x0
		0000000000014eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   14eb8: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d38
   14ebc: 91000021     	add	x1, x1, #0x0
		0000000000014ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d38
   14ec0: 94000000     	bl	0x14ec0 <syna_testing_pt0a_zte+0x288>
		0000000000014ec0:  R_AARCH64_CALL26	_printk
   14ec4: 90000005     	adrp	x5, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014ec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   14ec8: 910000a5     	add	x5, x5, #0x0
		0000000000014ec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   14ecc: 17ffffaa     	b	0x14d74 <syna_testing_pt0a_zte+0x13c>
   14ed0: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   14ed4: 91000000     	add	x0, x0, #0x0
		0000000000014ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   14ed8: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014ed8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   14edc: 91000021     	add	x1, x1, #0x0
		0000000000014edc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   14ee0: 94000000     	bl	0x14ee0 <syna_testing_pt0a_zte+0x2a8>
		0000000000014ee0:  R_AARCH64_CALL26	_printk
   14ee4: 17ffffdf     	b	0x14e60 <syna_testing_pt0a_zte+0x228>
   14ee8: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   14eec: 91000000     	add	x0, x0, #0x0
		0000000000014eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   14ef0: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   14ef4: 91000021     	add	x1, x1, #0x0
		0000000000014ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   14ef8: 94000000     	bl	0x14ef8 <syna_testing_pt0a_zte+0x2c0>
		0000000000014ef8:  R_AARCH64_CALL26	_printk
   14efc: 17ffffdf     	b	0x14e78 <syna_testing_pt0a_zte+0x240>
   14f00: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014f00:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x208
   14f04: 91000108     	add	x8, x8, #0x0
		0000000000014f04:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x208
   14f08: d5384115     	mrs	x21, SP_EL0
   14f0c: f9402ab6     	ldr	x22, [x21, #0x50]
   14f10: f9002aa8     	str	x8, [x21, #0x50]
   14f14: 90000008     	adrp	x8, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014f14:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   14f18: f9400100     	ldr	x0, [x8]
		0000000000014f18:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   14f1c: 5281b801     	mov	w1, #0xdc0              // =3520
   14f20: 52820002     	mov	w2, #0x1000             // =4096
   14f24: 94000000     	bl	0x14f24 <syna_testing_pt0a_zte+0x2ec>
		0000000000014f24:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   14f28: aa0003f3     	mov	x19, x0
   14f2c: f9002ab6     	str	x22, [x21, #0x50]
   14f30: b5ffebb3     	cbnz	x19, 0x14ca4 <syna_testing_pt0a_zte+0x6c>
   14f34: 90000000     	adrp	x0, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014f34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaf34
   14f38: 91000000     	add	x0, x0, #0x0
		0000000000014f38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaf34
   14f3c: 90000001     	adrp	x1, 0x14000 <syna_sysfs_info_show+0x2e8>
		0000000000014f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d38
   14f40: 91000021     	add	x1, x1, #0x0
		0000000000014f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d38
   14f44: 94000000     	bl	0x14f44 <syna_testing_pt0a_zte+0x30c>
		0000000000014f44:  R_AARCH64_CALL26	_printk
   14f48: 12800176     	mov	w22, #-0xc              // =-12
   14f4c: d5384108     	mrs	x8, SP_EL0
   14f50: f9438908     	ldr	x8, [x8, #0x710]
   14f54: f85f83a9     	ldur	x9, [x29, #-0x8]
   14f58: eb09011f     	cmp	x8, x9
   14f5c: 54000161     	b.ne	0x14f88 <syna_testing_pt0a_zte+0x350>
   14f60: 2a1603e0     	mov	w0, w22
   14f64: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   14f68: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   14f6c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   14f70: a94967fa     	ldp	x26, x25, [sp, #0x90]
   14f74: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   14f78: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   14f7c: 910343ff     	add	sp, sp, #0xd0
   14f80: d50323bf     	autiasp
   14f84: d65f03c0     	ret
   14f88: 94000000     	bl	0x14f88 <syna_testing_pt0a_zte+0x350>
		0000000000014f88:  R_AARCH64_CALL26	__stack_chk_fail
