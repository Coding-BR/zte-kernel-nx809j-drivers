
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000027b04 <syna_testing_pt0a_zte>:
   27b04: d503233f     	paciasp
   27b08: d10343ff     	sub	sp, sp, #0xd0
   27b0c: a9077bfd     	stp	x29, x30, [sp, #0x70]
   27b10: a9086ffc     	stp	x28, x27, [sp, #0x80]
   27b14: a90967fa     	stp	x26, x25, [sp, #0x90]
   27b18: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
   27b1c: a90b57f6     	stp	x22, x21, [sp, #0xb0]
   27b20: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
   27b24: 9101c3fd     	add	x29, sp, #0x70
   27b28: d5384108     	mrs	x8, SP_EL0
   27b2c: aa0003f4     	mov	x20, x0
   27b30: f9438908     	ldr	x8, [x8, #0x710]
   27b34: f81f83a8     	stur	x8, [x29, #-0x8]
   27b38: f9000fff     	str	xzr, [sp, #0x18]
   27b3c: f90007ff     	str	xzr, [sp, #0x8]
   27b40: a905ffff     	stp	xzr, xzr, [sp, #0x58]
   27b44: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   27b48: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   27b4c: f9001bff     	str	xzr, [sp, #0x30]
   27b50: d503201f     	nop
   27b54: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027b54:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   27b58: 5281b801     	mov	w1, #0xdc0              // =3520
   27b5c: 52820002     	mov	w2, #0x1000             // =4096
   27b60: f9400100     	ldr	x0, [x8]
		0000000000027b60:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   27b64: 94000000     	bl	0x27b64 <syna_testing_pt0a_zte+0x60>
		0000000000027b64:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   27b68: aa0003f3     	mov	x19, x0
   27b6c: b40014b3     	cbz	x19, 0x27e00 <syna_testing_pt0a_zte+0x2fc>
   27b70: 39560a88     	ldrb	w8, [x20, #0x582]
   27b74: 36000c68     	tbz	w8, #0x0, 0x27d00 <syna_testing_pt0a_zte+0x1fc>
   27b78: 94000000     	bl	0x27b78 <syna_testing_pt0a_zte+0x74>
		0000000000027b78:  R_AARCH64_CALL26	syna_tcm_get_testing_0A00
   27b7c: b4000ee0     	cbz	x0, 0x27d58 <syna_testing_pt0a_zte+0x254>
   27b80: f9400288     	ldr	x8, [x20]
   27b84: 910083f6     	add	x22, sp, #0x20
   27b88: aa0003f5     	mov	x21, x0
   27b8c: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
   27b90: 91000021     	add	x1, x1, #0x0
		0000000000027b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
   27b94: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027b94:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x9224
   27b98: 91000042     	add	x2, x2, #0x0
		0000000000027b98:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x9224
   27b9c: b9402108     	ldr	w8, [x8, #0x20]
   27ba0: a9027fff     	stp	xzr, xzr, [sp, #0x20]
   27ba4: b9002408     	str	w8, [x0, #0x24]
   27ba8: f9400288     	ldr	x8, [x20]
   27bac: b9401d08     	ldr	w8, [x8, #0x1c]
   27bb0: b9002008     	str	w8, [x0, #0x20]
   27bb4: 910042c0     	add	x0, x22, #0x10
   27bb8: 390183ff     	strb	wzr, [sp, #0x60]
   27bbc: 94000000     	bl	0x27bbc <syna_testing_pt0a_zte+0xb8>
		0000000000027bbc:  R_AARCH64_CALL26	__mutex_init
   27bc0: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027bc0:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_hi_limits
   27bc4: 91000108     	add	x8, x8, #0x0
		0000000000027bc4:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_hi_limits
   27bc8: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027bc8:  R_AARCH64_ADR_PREL_PG_HI21	pt0a_lo_limits
   27bcc: 91000129     	add	x9, x9, #0x0
		0000000000027bcc:  R_AARCH64_ADD_ABS_LO12_NC	pt0a_lo_limits
   27bd0: f9000be8     	str	x8, [sp, #0x10]
   27bd4: 52819008     	mov	w8, #0xc80              // =3200
   27bd8: b9001be8     	str	w8, [sp, #0x18]
   27bdc: aa1503e1     	mov	x1, x21
   27be0: 2a1f03e2     	mov	w2, wzr
   27be4: f90003e9     	str	x9, [sp]
   27be8: 910043e9     	add	x9, sp, #0x10
   27bec: b9000be8     	str	w8, [sp, #0x8]
   27bf0: 910003e8     	mov	x8, sp
   27bf4: f9006eb6     	str	x22, [x21, #0xd8]
   27bf8: a903a2a9     	stp	x9, x8, [x21, #0x38]
   27bfc: f9400ea8     	ldr	x8, [x21, #0x18]
   27c00: f9400280     	ldr	x0, [x20]
   27c04: b85fc110     	ldur	w16, [x8, #-0x4]
   27c08: 72895251     	movk	w17, #0x4a92
   27c0c: 72b03811     	movk	w17, #0x81c0, lsl #16
   27c10: 6b11021f     	cmp	w16, w17
   27c14: 54000040     	b.eq	0x27c1c <syna_testing_pt0a_zte+0x118>
   27c18: d4304500     	brk	#0x8228
   27c1c: d63f0100     	blr	x8
   27c20: 37f80ac0     	tbnz	w0, #0x1f, 0x27d78 <syna_testing_pt0a_zte+0x274>
   27c24: 394042a8     	ldrb	w8, [x21, #0x10]
   27c28: 90000009     	adrp	x9, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027c28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27c2c: 91000129     	add	x9, x9, #0x0
		0000000000027c2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27c30: 7100011f     	cmp	w8, #0x0
   27c34: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8a28
   27c38: 91000108     	add	x8, x8, #0x0
		0000000000027c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8a28
   27c3c: 9a891105     	csel	x5, x8, x9, ne
   27c40: f94006a3     	ldr	x3, [x21, #0x8]
   27c44: b94002a4     	ldr	w4, [x21]
   27c48: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027c48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b52
   27c4c: 91000042     	add	x2, x2, #0x0
		0000000000027c4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b52
   27c50: aa1303e0     	mov	x0, x19
   27c54: 52820001     	mov	w1, #0x1000             // =4096
   27c58: 94000000     	bl	0x27c58 <syna_testing_pt0a_zte+0x154>
		0000000000027c58:  R_AARCH64_CALL26	scnprintf
   27c5c: b9402fe8     	ldr	w8, [sp, #0x2c]
   27c60: 2a0003f6     	mov	w22, w0
   27c64: 340005c8     	cbz	w8, 0x27d1c <syna_testing_pt0a_zte+0x218>
   27c68: b94022a8     	ldr	w8, [x21, #0x20]
   27c6c: 34000588     	cbz	w8, 0x27d1c <syna_testing_pt0a_zte+0x218>
   27c70: f94013fa     	ldr	x26, [sp, #0x20]
   27c74: 2a1f03f9     	mov	w25, wzr
   27c78: 90000017     	adrp	x23, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7c00
   27c7c: 910002f7     	add	x23, x23, #0x0
		0000000000027c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7c00
   27c80: 5282001b     	mov	w27, #0x1000            // =4096
   27c84: 90000018     	adrp	x24, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027c84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa370
   27c88: 91000318     	add	x24, x24, #0x0
		0000000000027c88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa370
   27c8c: 1400000b     	b	0x27cb8 <syna_testing_pt0a_zte+0x1b4>
   27c90: 2a1603e8     	mov	w8, w22
   27c94: aa1703e2     	mov	x2, x23
   27c98: cb080361     	sub	x1, x27, x8
   27c9c: 8b080260     	add	x0, x19, x8
   27ca0: 94000000     	bl	0x27ca0 <syna_testing_pt0a_zte+0x19c>
		0000000000027ca0:  R_AARCH64_CALL26	scnprintf
   27ca4: b94022a8     	ldr	w8, [x21, #0x20]
   27ca8: 11000739     	add	w25, w25, #0x1
   27cac: 0b160016     	add	w22, w0, w22
   27cb0: 6b08033f     	cmp	w25, w8
   27cb4: 54000342     	b.hs	0x27d1c <syna_testing_pt0a_zte+0x218>
   27cb8: b94026a8     	ldr	w8, [x21, #0x24]
   27cbc: 34fffea8     	cbz	w8, 0x27c90 <syna_testing_pt0a_zte+0x18c>
   27cc0: 2a1f03fc     	mov	w28, wzr
   27cc4: f9400288     	ldr	x8, [x20]
   27cc8: 2a1603e9     	mov	w9, w22
   27ccc: aa1803e2     	mov	x2, x24
   27cd0: cb090361     	sub	x1, x27, x9
   27cd4: 8b090260     	add	x0, x19, x9
   27cd8: b9402108     	ldr	w8, [x8, #0x20]
   27cdc: 1b087328     	madd	w8, w25, w8, w28
   27ce0: 78e85b43     	ldrsh	w3, [x26, w8, uxtw #1]
   27ce4: 94000000     	bl	0x27ce4 <syna_testing_pt0a_zte+0x1e0>
		0000000000027ce4:  R_AARCH64_CALL26	scnprintf
   27ce8: b94026a8     	ldr	w8, [x21, #0x24]
   27cec: 1100079c     	add	w28, w28, #0x1
   27cf0: 0b160016     	add	w22, w0, w22
   27cf4: 6b08039f     	cmp	w28, w8
   27cf8: 54fffe63     	b.lo	0x27cc4 <syna_testing_pt0a_zte+0x1c0>
   27cfc: 17ffffe5     	b	0x27c90 <syna_testing_pt0a_zte+0x18c>
   27d00: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027d00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc538
   27d04: 91000042     	add	x2, x2, #0x0
		0000000000027d04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc538
   27d08: aa1303e0     	mov	x0, x19
   27d0c: 52820001     	mov	w1, #0x1000             // =4096
   27d10: 94000000     	bl	0x27d10 <syna_testing_pt0a_zte+0x20c>
		0000000000027d10:  R_AARCH64_CALL26	scnprintf
   27d14: 2a0003f6     	mov	w22, w0
   27d18: 14000040     	b	0x27e18 <syna_testing_pt0a_zte+0x314>
   27d1c: aa1303e0     	mov	x0, x19
   27d20: 94000000     	bl	0x27d20 <syna_testing_pt0a_zte+0x21c>
		0000000000027d20:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
   27d24: 394183e2     	ldrb	w2, [sp, #0x60]
   27d28: 350003a2     	cbnz	w2, 0x27d9c <syna_testing_pt0a_zte+0x298>
   27d2c: f94013f4     	ldr	x20, [sp, #0x20]
   27d30: 94000000     	bl	0x27d30 <syna_testing_pt0a_zte+0x22c>
		0000000000027d30:  R_AARCH64_CALL26	syna_request_managed_device
   27d34: b4000400     	cbz	x0, 0x27db4 <syna_testing_pt0a_zte+0x2b0>
   27d38: b4000074     	cbz	x20, 0x27d44 <syna_testing_pt0a_zte+0x240>
   27d3c: aa1403e1     	mov	x1, x20
   27d40: 94000000     	bl	0x27d40 <syna_testing_pt0a_zte+0x23c>
		0000000000027d40:  R_AARCH64_CALL26	devm_kfree
   27d44: aa1303e0     	mov	x0, x19
   27d48: f90017ff     	str	xzr, [sp, #0x28]
   27d4c: 390183ff     	strb	wzr, [sp, #0x60]
   27d50: 94000000     	bl	0x27d50 <syna_testing_pt0a_zte+0x24c>
		0000000000027d50:  R_AARCH64_CALL26	kfree
   27d54: 14000031     	b	0x27e18 <syna_testing_pt0a_zte+0x314>
   27d58: 90000002     	adrp	x2, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaa26
   27d5c: 91000042     	add	x2, x2, #0x0
		0000000000027d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaa26
   27d60: aa1303e0     	mov	x0, x19
   27d64: 52820001     	mov	w1, #0x1000             // =4096
   27d68: 52814003     	mov	w3, #0xa00              // =2560
   27d6c: 94000000     	bl	0x27d6c <syna_testing_pt0a_zte+0x268>
		0000000000027d6c:  R_AARCH64_CALL26	scnprintf
   27d70: 2a0003f6     	mov	w22, w0
   27d74: 14000029     	b	0x27e18 <syna_testing_pt0a_zte+0x314>
   27d78: f94006a2     	ldr	x2, [x21, #0x8]
   27d7c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc574
   27d80: 91000000     	add	x0, x0, #0x0
		0000000000027d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc574
   27d84: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dde
   27d88: 91000021     	add	x1, x1, #0x0
		0000000000027d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dde
   27d8c: 94000000     	bl	0x27d8c <syna_testing_pt0a_zte+0x288>
		0000000000027d8c:  R_AARCH64_CALL26	_printk
   27d90: 90000005     	adrp	x5, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027d90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x78f8
   27d94: 910000a5     	add	x5, x5, #0x0
		0000000000027d94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x78f8
   27d98: 17ffffaa     	b	0x27c40 <syna_testing_pt0a_zte+0x13c>
   27d9c: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
   27da0: 91000000     	add	x0, x0, #0x0
		0000000000027da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
   27da4: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027da4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
   27da8: 91000021     	add	x1, x1, #0x0
		0000000000027da8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
   27dac: 94000000     	bl	0x27dac <syna_testing_pt0a_zte+0x2a8>
		0000000000027dac:  R_AARCH64_CALL26	_printk
   27db0: 17ffffdf     	b	0x27d2c <syna_testing_pt0a_zte+0x228>
   27db4: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
   27db8: 91000000     	add	x0, x0, #0x0
		0000000000027db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
   27dbc: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
   27dc0: 91000021     	add	x1, x1, #0x0
		0000000000027dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
   27dc4: 94000000     	bl	0x27dc4 <syna_testing_pt0a_zte+0x2c0>
		0000000000027dc4:  R_AARCH64_CALL26	_printk
   27dc8: 17ffffdf     	b	0x27d44 <syna_testing_pt0a_zte+0x240>
   27dcc: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027dcc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x13e0
   27dd0: 91000108     	add	x8, x8, #0x0
		0000000000027dd0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x13e0
   27dd4: d5384115     	mrs	x21, SP_EL0
   27dd8: f9402ab6     	ldr	x22, [x21, #0x50]
   27ddc: f9002aa8     	str	x8, [x21, #0x50]
   27de0: 90000008     	adrp	x8, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027de0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   27de4: f9400100     	ldr	x0, [x8]
		0000000000027de4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   27de8: 5281b801     	mov	w1, #0xdc0              // =3520
   27dec: 52820002     	mov	w2, #0x1000             // =4096
   27df0: 94000000     	bl	0x27df0 <syna_testing_pt0a_zte+0x2ec>
		0000000000027df0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   27df4: aa0003f3     	mov	x19, x0
   27df8: f9002ab6     	str	x22, [x21, #0x50]
   27dfc: b5ffebb3     	cbnz	x19, 0x27b70 <syna_testing_pt0a_zte+0x6c>
   27e00: 90000000     	adrp	x0, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1e2
   27e04: 91000000     	add	x0, x0, #0x0
		0000000000027e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1e2
   27e08: 90000001     	adrp	x1, 0x27000 <syna_tcm_remove_device+0x78>
		0000000000027e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2dde
   27e0c: 91000021     	add	x1, x1, #0x0
		0000000000027e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2dde
   27e10: 94000000     	bl	0x27e10 <syna_testing_pt0a_zte+0x30c>
		0000000000027e10:  R_AARCH64_CALL26	_printk
   27e14: 12800176     	mov	w22, #-0xc              // =-12
   27e18: d5384108     	mrs	x8, SP_EL0
   27e1c: f9438908     	ldr	x8, [x8, #0x710]
   27e20: f85f83a9     	ldur	x9, [x29, #-0x8]
   27e24: eb09011f     	cmp	x8, x9
   27e28: 54000161     	b.ne	0x27e54 <syna_testing_pt0a_zte+0x350>
   27e2c: 2a1603e0     	mov	w0, w22
   27e30: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
   27e34: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
   27e38: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
   27e3c: a94967fa     	ldp	x26, x25, [sp, #0x90]
   27e40: a9486ffc     	ldp	x28, x27, [sp, #0x80]
   27e44: a9477bfd     	ldp	x29, x30, [sp, #0x70]
   27e48: 910343ff     	add	sp, sp, #0xd0
   27e4c: d50323bf     	autiasp
   27e50: d65f03c0     	ret
   27e54: 94000000     	bl	0x27e54 <syna_testing_pt0a_zte+0x350>
		0000000000027e54:  R_AARCH64_CALL26	__stack_chk_fail
