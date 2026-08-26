
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029c38 <syna_testing_pt01_show>:
   29c38: d503233f     	paciasp
   29c3c: d10283ff     	sub	sp, sp, #0xa0
   29c40: a9067bfd     	stp	x29, x30, [sp, #0x60]
   29c44: f9003bf7     	str	x23, [sp, #0x70]
   29c48: a90857f6     	stp	x22, x21, [sp, #0x80]
   29c4c: a9094ff4     	stp	x20, x19, [sp, #0x90]
   29c50: 910183fd     	add	x29, sp, #0x60
   29c54: d5384108     	mrs	x8, SP_EL0
   29c58: aa0203f3     	mov	x19, x2
   29c5c: f9438908     	ldr	x8, [x8, #0x710]
   29c60: f81f83a8     	stur	x8, [x29, #-0x8]
   29c64: f9400c08     	ldr	x8, [x0, #0x18]
   29c68: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29c6c: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29c70: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29c74: f9400d08     	ldr	x8, [x8, #0x18]
   29c78: f90007ff     	str	xzr, [sp, #0x8]
   29c7c: f90013ff     	str	xzr, [sp, #0x20]
   29c80: f9404d15     	ldr	x21, [x8, #0x98]
   29c84: 39560aa8     	ldrb	w8, [x21, #0x582]
   29c88: 36000a68     	tbz	w8, #0x0, 0x29dd4 <syna_testing_pt01_show+0x19c>
   29c8c: 94000000     	bl	0x29c8c <syna_testing_pt01_show+0x54>
		0000000000029c8c:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
   29c90: b4000ae0     	cbz	x0, 0x29dec <syna_testing_pt01_show+0x1b4>
   29c94: 910043f6     	add	x22, sp, #0x10
   29c98: aa0003f4     	mov	x20, x0
   29c9c: 90000001     	adrp	x1, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cedf
   29ca0: 91000021     	add	x1, x1, #0x0
		0000000000029ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cedf
   29ca4: 90000002     	adrp	x2, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029ca4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6426
   29ca8: 91000042     	add	x2, x2, #0x0
		0000000000029ca8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6426
   29cac: 910042c0     	add	x0, x22, #0x10
   29cb0: 390143ff     	strb	wzr, [sp, #0x50]
   29cb4: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   29cb8: 94000000     	bl	0x29cb8 <syna_testing_pt01_show+0x80>
		0000000000029cb8:  R_AARCH64_CALL26	__mutex_init
   29cbc: 90000008     	adrp	x8, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x22c70
   29cc0: 91000108     	add	x8, x8, #0x0
		0000000000029cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x22c70
   29cc4: 52800209     	mov	w9, #0x10               // =16
   29cc8: f90003e8     	str	x8, [sp]
   29ccc: 910003e8     	mov	x8, sp
   29cd0: aa1403e1     	mov	x1, x20
   29cd4: f9006e96     	str	x22, [x20, #0xd8]
   29cd8: 2a1f03e2     	mov	w2, wzr
   29cdc: b9000be9     	str	w9, [sp, #0x8]
   29ce0: f9001e88     	str	x8, [x20, #0x38]
   29ce4: f9400e88     	ldr	x8, [x20, #0x18]
   29ce8: f94002a0     	ldr	x0, [x21]
   29cec: b85fc110     	ldur	w16, [x8, #-0x4]
   29cf0: 72895251     	movk	w17, #0x4a92
   29cf4: 72b03811     	movk	w17, #0x81c0, lsl #16
   29cf8: 6b11021f     	cmp	w16, w17
   29cfc: 54000040     	b.eq	0x29d04 <syna_testing_pt01_show+0xcc>
   29d00: d4304500     	brk	#0x8228
   29d04: d63f0100     	blr	x8
   29d08: 37f80980     	tbnz	w0, #0x1f, 0x29e38 <syna_testing_pt01_show+0x200>
   29d0c: 39404288     	ldrb	w8, [x20, #0x10]
   29d10: 90000009     	adrp	x9, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2ba
   29d14: 91000129     	add	x9, x9, #0x0
		0000000000029d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2ba
   29d18: 7100011f     	cmp	w8, #0x0
   29d1c: 90000008     	adrp	x8, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd33
   29d20: 91000108     	add	x8, x8, #0x0
		0000000000029d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd33
   29d24: 9a891105     	csel	x5, x8, x9, ne
   29d28: f9400683     	ldr	x3, [x20, #0x8]
   29d2c: b9400284     	ldr	w4, [x20]
   29d30: 90000002     	adrp	x2, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029d30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18166
   29d34: 91000042     	add	x2, x2, #0x0
		0000000000029d34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18166
   29d38: aa1303e0     	mov	x0, x19
   29d3c: 52820001     	mov	w1, #0x1000             // =4096
   29d40: 94000000     	bl	0x29d40 <syna_testing_pt01_show+0x108>
		0000000000029d40:  R_AARCH64_CALL26	scnprintf
   29d44: b9401fe8     	ldr	w8, [sp, #0x1c]
   29d48: 2a0003f4     	mov	w20, w0
   29d4c: 34000308     	cbz	w8, 0x29dac <syna_testing_pt01_show+0x174>
   29d50: 2a1f03f6     	mov	w22, wzr
   29d54: 52820017     	mov	w23, #0x1000            // =4096
   29d58: 90000015     	adrp	x21, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029d58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd38
   29d5c: 910002b5     	add	x21, x21, #0x0
		0000000000029d5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd38
   29d60: f9400be8     	ldr	x8, [sp, #0x10]
   29d64: 2a1403e9     	mov	w9, w20
   29d68: aa1503e2     	mov	x2, x21
   29d6c: cb0902e1     	sub	x1, x23, x9
   29d70: 8b090260     	add	x0, x19, x9
   29d74: 3876c903     	ldrb	w3, [x8, w22, sxtw]
   29d78: 94000000     	bl	0x29d78 <syna_testing_pt01_show+0x140>
		0000000000029d78:  R_AARCH64_CALL26	scnprintf
   29d7c: b9401fe8     	ldr	w8, [sp, #0x1c]
   29d80: 110006d6     	add	w22, w22, #0x1
   29d84: 0b140014     	add	w20, w0, w20
   29d88: 6b0802df     	cmp	w22, w8
   29d8c: 54fffea3     	b.lo	0x29d60 <syna_testing_pt01_show+0x128>
   29d90: 52820008     	mov	w8, #0x1000             // =4096
   29d94: 90000002     	adrp	x2, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b612
   29d98: 91000042     	add	x2, x2, #0x0
		0000000000029d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b612
   29d9c: cb140101     	sub	x1, x8, x20
   29da0: 8b140260     	add	x0, x19, x20
   29da4: 94000000     	bl	0x29da4 <syna_testing_pt01_show+0x16c>
		0000000000029da4:  R_AARCH64_CALL26	scnprintf
   29da8: 0b140014     	add	w20, w0, w20
   29dac: 394143e2     	ldrb	w2, [sp, #0x50]
   29db0: 35000562     	cbnz	w2, 0x29e5c <syna_testing_pt01_show+0x224>
   29db4: f9400bf3     	ldr	x19, [sp, #0x10]
   29db8: 94000000     	bl	0x29db8 <syna_testing_pt01_show+0x180>
		0000000000029db8:  R_AARCH64_CALL26	syna_request_managed_device
   29dbc: b40005c0     	cbz	x0, 0x29e74 <syna_testing_pt01_show+0x23c>
   29dc0: b4000073     	cbz	x19, 0x29dcc <syna_testing_pt01_show+0x194>
   29dc4: aa1303e1     	mov	x1, x19
   29dc8: 94000000     	bl	0x29dc8 <syna_testing_pt01_show+0x190>
		0000000000029dc8:  R_AARCH64_CALL26	devm_kfree
   29dcc: 2a1403e0     	mov	w0, w20
   29dd0: 1400000e     	b	0x29e08 <syna_testing_pt01_show+0x1d0>
   29dd4: 90000002     	adrp	x2, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d86e
   29dd8: 91000042     	add	x2, x2, #0x0
		0000000000029dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d86e
   29ddc: aa1303e0     	mov	x0, x19
   29de0: 52820001     	mov	w1, #0x1000             // =4096
   29de4: 94000000     	bl	0x29de4 <syna_testing_pt01_show+0x1ac>
		0000000000029de4:  R_AARCH64_CALL26	scnprintf
   29de8: 14000007     	b	0x29e04 <syna_testing_pt01_show+0x1cc>
   29dec: 90000002     	adrp	x2, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccac
   29df0: 91000042     	add	x2, x2, #0x0
		0000000000029df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccac
   29df4: aa1303e0     	mov	x0, x19
   29df8: 52820001     	mov	w1, #0x1000             // =4096
   29dfc: 52802003     	mov	w3, #0x100              // =256
   29e00: 94000000     	bl	0x29e00 <syna_testing_pt01_show+0x1c8>
		0000000000029e00:  R_AARCH64_CALL26	scnprintf
   29e04: 93407c00     	sxtw	x0, w0
   29e08: d5384108     	mrs	x8, SP_EL0
   29e0c: f9438908     	ldr	x8, [x8, #0x710]
   29e10: f85f83a9     	ldur	x9, [x29, #-0x8]
   29e14: eb09011f     	cmp	x8, x9
   29e18: 540003a1     	b.ne	0x29e8c <syna_testing_pt01_show+0x254>
   29e1c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   29e20: f9403bf7     	ldr	x23, [sp, #0x70]
   29e24: a94857f6     	ldp	x22, x21, [sp, #0x80]
   29e28: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   29e2c: 910283ff     	add	sp, sp, #0xa0
   29e30: d50323bf     	autiasp
   29e34: d65f03c0     	ret
   29e38: f9400682     	ldr	x2, [x20, #0x8]
   29e3c: 90000000     	adrp	x0, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d84a
   29e40: 91000000     	add	x0, x0, #0x0
		0000000000029e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d84a
   29e44: 90000001     	adrp	x1, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19558
   29e48: 91000021     	add	x1, x1, #0x0
		0000000000029e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19558
   29e4c: 94000000     	bl	0x29e4c <syna_testing_pt01_show+0x214>
		0000000000029e4c:  R_AARCH64_CALL26	_printk
   29e50: 90000005     	adrp	x5, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2ba
   29e54: 910000a5     	add	x5, x5, #0x0
		0000000000029e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2ba
   29e58: 17ffffb4     	b	0x29d28 <syna_testing_pt01_show+0xf0>
   29e5c: 90000000     	adrp	x0, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e68
   29e60: 91000000     	add	x0, x0, #0x0
		0000000000029e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e68
   29e64: 90000001     	adrp	x1, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abfc
   29e68: 91000021     	add	x1, x1, #0x0
		0000000000029e68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abfc
   29e6c: 94000000     	bl	0x29e6c <syna_testing_pt01_show+0x234>
		0000000000029e6c:  R_AARCH64_CALL26	_printk
   29e70: 17ffffd1     	b	0x29db4 <syna_testing_pt01_show+0x17c>
   29e74: 90000000     	adrp	x0, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf02
   29e78: 91000000     	add	x0, x0, #0x0
		0000000000029e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf02
   29e7c: 90000001     	adrp	x1, 0x29000 <syna_spi_alloc_mem+0x12c>
		0000000000029e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8b1
   29e80: 91000021     	add	x1, x1, #0x0
		0000000000029e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8b1
   29e84: 94000000     	bl	0x29e84 <syna_testing_pt01_show+0x24c>
		0000000000029e84:  R_AARCH64_CALL26	_printk
   29e88: 17ffffd1     	b	0x29dcc <syna_testing_pt01_show+0x194>
   29e8c: 94000000     	bl	0x29e8c <syna_testing_pt01_show+0x254>
		0000000000029e8c:  R_AARCH64_CALL26	__stack_chk_fail
