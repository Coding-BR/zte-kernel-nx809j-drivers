
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023db4 <syna_testing_pt01_show>:
   23db4: d503233f     	paciasp
   23db8: d10283ff     	sub	sp, sp, #0xa0
   23dbc: a9067bfd     	stp	x29, x30, [sp, #0x60]
   23dc0: f9003bf7     	str	x23, [sp, #0x70]
   23dc4: a90857f6     	stp	x22, x21, [sp, #0x80]
   23dc8: a9094ff4     	stp	x20, x19, [sp, #0x90]
   23dcc: 910183fd     	add	x29, sp, #0x60
   23dd0: d5384108     	mrs	x8, SP_EL0
   23dd4: aa0203f3     	mov	x19, x2
   23dd8: f9438908     	ldr	x8, [x8, #0x710]
   23ddc: f81f83a8     	stur	x8, [x29, #-0x8]
   23de0: f9400c08     	ldr	x8, [x0, #0x18]
   23de4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   23de8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   23dec: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   23df0: f9400d08     	ldr	x8, [x8, #0x18]
   23df4: f90007ff     	str	xzr, [sp, #0x8]
   23df8: f90013ff     	str	xzr, [sp, #0x20]
   23dfc: f9404d15     	ldr	x21, [x8, #0x98]
   23e00: 39560aa8     	ldrb	w8, [x21, #0x582]
   23e04: 36000a68     	tbz	w8, #0x0, 0x23f50 <syna_testing_pt01_show+0x19c>
   23e08: 94000000     	bl	0x23e08 <syna_testing_pt01_show+0x54>
		0000000000023e08:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
   23e0c: b4000ae0     	cbz	x0, 0x23f68 <syna_testing_pt01_show+0x1b4>
   23e10: 910043f6     	add	x22, sp, #0x10
   23e14: aa0003f4     	mov	x20, x0
   23e18: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   23e1c: 91000021     	add	x1, x1, #0x0
		0000000000023e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   23e20: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023e20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x641a
   23e24: 91000042     	add	x2, x2, #0x0
		0000000000023e24:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x641a
   23e28: 910042c0     	add	x0, x22, #0x10
   23e2c: 390143ff     	strb	wzr, [sp, #0x50]
   23e30: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   23e34: 94000000     	bl	0x23e34 <syna_testing_pt01_show+0x80>
		0000000000023e34:  R_AARCH64_CALL26	__mutex_init
   23e38: 90000008     	adrp	x8, 0x23000 <syna_spi_power_on+0x218>
		0000000000023e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x22c70
   23e3c: 91000108     	add	x8, x8, #0x0
		0000000000023e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x22c70
   23e40: 52800209     	mov	w9, #0x10               // =16
   23e44: f90003e8     	str	x8, [sp]
   23e48: 910003e8     	mov	x8, sp
   23e4c: aa1403e1     	mov	x1, x20
   23e50: f9006e96     	str	x22, [x20, #0xd8]
   23e54: 2a1f03e2     	mov	w2, wzr
   23e58: b9000be9     	str	w9, [sp, #0x8]
   23e5c: f9001e88     	str	x8, [x20, #0x38]
   23e60: f9400e88     	ldr	x8, [x20, #0x18]
   23e64: f94002a0     	ldr	x0, [x21]
   23e68: b85fc110     	ldur	w16, [x8, #-0x4]
   23e6c: 72895251     	movk	w17, #0x4a92
   23e70: 72b03811     	movk	w17, #0x81c0, lsl #16
   23e74: 6b11021f     	cmp	w16, w17
   23e78: 54000040     	b.eq	0x23e80 <syna_testing_pt01_show+0xcc>
   23e7c: d4304500     	brk	#0x8228
   23e80: d63f0100     	blr	x8
   23e84: 37f80980     	tbnz	w0, #0x1f, 0x23fb4 <syna_testing_pt01_show+0x200>
   23e88: 39404288     	ldrb	w8, [x20, #0x10]
   23e8c: 90000009     	adrp	x9, 0x23000 <syna_spi_power_on+0x218>
		0000000000023e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   23e90: 91000129     	add	x9, x9, #0x0
		0000000000023e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   23e94: 7100011f     	cmp	w8, #0x0
   23e98: 90000008     	adrp	x8, 0x23000 <syna_spi_power_on+0x218>
		0000000000023e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af66
   23e9c: 91000108     	add	x8, x8, #0x0
		0000000000023e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af66
   23ea0: 9a891105     	csel	x5, x8, x9, ne
   23ea4: f9400683     	ldr	x3, [x20, #0x8]
   23ea8: b9400284     	ldr	w4, [x20]
   23eac: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17eac
   23eb0: 91000042     	add	x2, x2, #0x0
		0000000000023eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17eac
   23eb4: aa1303e0     	mov	x0, x19
   23eb8: 52820001     	mov	w1, #0x1000             // =4096
   23ebc: 94000000     	bl	0x23ebc <syna_testing_pt01_show+0x108>
		0000000000023ebc:  R_AARCH64_CALL26	scnprintf
   23ec0: b9401fe8     	ldr	w8, [sp, #0x1c]
   23ec4: 2a0003f4     	mov	w20, w0
   23ec8: 34000308     	cbz	w8, 0x23f28 <syna_testing_pt01_show+0x174>
   23ecc: 2a1f03f6     	mov	w22, wzr
   23ed0: 52820017     	mov	w23, #0x1000            // =4096
   23ed4: 90000015     	adrp	x21, 0x23000 <syna_spi_power_on+0x218>
		0000000000023ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af6b
   23ed8: 910002b5     	add	x21, x21, #0x0
		0000000000023ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af6b
   23edc: f9400be8     	ldr	x8, [sp, #0x10]
   23ee0: 2a1403e9     	mov	w9, w20
   23ee4: aa1503e2     	mov	x2, x21
   23ee8: cb0902e1     	sub	x1, x23, x9
   23eec: 8b090260     	add	x0, x19, x9
   23ef0: 3876c903     	ldrb	w3, [x8, w22, sxtw]
   23ef4: 94000000     	bl	0x23ef4 <syna_testing_pt01_show+0x140>
		0000000000023ef4:  R_AARCH64_CALL26	scnprintf
   23ef8: b9401fe8     	ldr	w8, [sp, #0x1c]
   23efc: 110006d6     	add	w22, w22, #0x1
   23f00: 0b140014     	add	w20, w0, w20
   23f04: 6b0802df     	cmp	w22, w8
   23f08: 54fffea3     	b.lo	0x23edc <syna_testing_pt01_show+0x128>
   23f0c: 52820008     	mov	w8, #0x1000             // =4096
   23f10: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   23f14: 91000042     	add	x2, x2, #0x0
		0000000000023f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   23f18: cb140101     	sub	x1, x8, x20
   23f1c: 8b140260     	add	x0, x19, x20
   23f20: 94000000     	bl	0x23f20 <syna_testing_pt01_show+0x16c>
		0000000000023f20:  R_AARCH64_CALL26	scnprintf
   23f24: 0b140014     	add	w20, w0, w20
   23f28: 394143e2     	ldrb	w2, [sp, #0x50]
   23f2c: 35000562     	cbnz	w2, 0x23fd8 <syna_testing_pt01_show+0x224>
   23f30: f9400bf3     	ldr	x19, [sp, #0x10]
   23f34: 94000000     	bl	0x23f34 <syna_testing_pt01_show+0x180>
		0000000000023f34:  R_AARCH64_CALL26	syna_request_managed_device
   23f38: b40005c0     	cbz	x0, 0x23ff0 <syna_testing_pt01_show+0x23c>
   23f3c: b4000073     	cbz	x19, 0x23f48 <syna_testing_pt01_show+0x194>
   23f40: aa1303e1     	mov	x1, x19
   23f44: 94000000     	bl	0x23f44 <syna_testing_pt01_show+0x190>
		0000000000023f44:  R_AARCH64_CALL26	devm_kfree
   23f48: 2a1403e0     	mov	w0, w20
   23f4c: 1400000e     	b	0x23f84 <syna_testing_pt01_show+0x1d0>
   23f50: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   23f54: 91000042     	add	x2, x2, #0x0
		0000000000023f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   23f58: aa1303e0     	mov	x0, x19
   23f5c: 52820001     	mov	w1, #0x1000             // =4096
   23f60: 94000000     	bl	0x23f60 <syna_testing_pt01_show+0x1ac>
		0000000000023f60:  R_AARCH64_CALL26	scnprintf
   23f64: 14000007     	b	0x23f80 <syna_testing_pt01_show+0x1cc>
   23f68: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcf7
   23f6c: 91000042     	add	x2, x2, #0x0
		0000000000023f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcf7
   23f70: aa1303e0     	mov	x0, x19
   23f74: 52820001     	mov	w1, #0x1000             // =4096
   23f78: 52802003     	mov	w3, #0x100              // =256
   23f7c: 94000000     	bl	0x23f7c <syna_testing_pt01_show+0x1c8>
		0000000000023f7c:  R_AARCH64_CALL26	scnprintf
   23f80: 93407c00     	sxtw	x0, w0
   23f84: d5384108     	mrs	x8, SP_EL0
   23f88: f9438908     	ldr	x8, [x8, #0x710]
   23f8c: f85f83a9     	ldur	x9, [x29, #-0x8]
   23f90: eb09011f     	cmp	x8, x9
   23f94: 540003a1     	b.ne	0x24008 <syna_testing_pt01_show+0x254>
   23f98: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   23f9c: f9403bf7     	ldr	x23, [sp, #0x70]
   23fa0: a94857f6     	ldp	x22, x21, [sp, #0x80]
   23fa4: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   23fa8: 910283ff     	add	sp, sp, #0xa0
   23fac: d50323bf     	autiasp
   23fb0: d65f03c0     	ret
   23fb4: f9400682     	ldr	x2, [x20, #0x8]
   23fb8: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023fb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c71d
   23fbc: 91000000     	add	x0, x0, #0x0
		0000000000023fbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c71d
   23fc0: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023fc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18ea8
   23fc4: 91000021     	add	x1, x1, #0x0
		0000000000023fc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18ea8
   23fc8: 94000000     	bl	0x23fc8 <syna_testing_pt01_show+0x214>
		0000000000023fc8:  R_AARCH64_CALL26	_printk
   23fcc: 90000005     	adrp	x5, 0x23000 <syna_spi_power_on+0x218>
		0000000000023fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   23fd0: 910000a5     	add	x5, x5, #0x0
		0000000000023fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   23fd4: 17ffffb4     	b	0x23ea4 <syna_testing_pt01_show+0xf0>
   23fd8: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   23fdc: 91000000     	add	x0, x0, #0x0
		0000000000023fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   23fe0: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023fe0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   23fe4: 91000021     	add	x1, x1, #0x0
		0000000000023fe4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   23fe8: 94000000     	bl	0x23fe8 <syna_testing_pt01_show+0x234>
		0000000000023fe8:  R_AARCH64_CALL26	_printk
   23fec: 17ffffd1     	b	0x23f30 <syna_testing_pt01_show+0x17c>
   23ff0: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23ff4: 91000000     	add	x0, x0, #0x0
		0000000000023ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23ff8: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023ff8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   23ffc: 91000021     	add	x1, x1, #0x0
		0000000000023ffc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   24000: 94000000     	bl	0x24000 <syna_testing_pt01_show+0x24c>
		0000000000024000:  R_AARCH64_CALL26	_printk
   24004: 17ffffd1     	b	0x23f48 <syna_testing_pt01_show+0x194>
   24008: 94000000     	bl	0x24008 <syna_testing_pt01_show+0x254>
		0000000000024008:  R_AARCH64_CALL26	__stack_chk_fail
