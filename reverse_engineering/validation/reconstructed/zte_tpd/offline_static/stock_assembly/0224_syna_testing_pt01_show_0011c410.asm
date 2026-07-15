
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000015b88 <syna_testing_pt01_show>:
   15b88: d503233f     	paciasp
   15b8c: d10283ff     	sub	sp, sp, #0xa0
   15b90: a9067bfd     	stp	x29, x30, [sp, #0x60]
   15b94: f9003bf7     	str	x23, [sp, #0x70]
   15b98: a90857f6     	stp	x22, x21, [sp, #0x80]
   15b9c: a9094ff4     	stp	x20, x19, [sp, #0x90]
   15ba0: 910183fd     	add	x29, sp, #0x60
   15ba4: d5384108     	mrs	x8, SP_EL0
   15ba8: aa0203f3     	mov	x19, x2
   15bac: f9438908     	ldr	x8, [x8, #0x710]
   15bb0: f81f83a8     	stur	x8, [x29, #-0x8]
   15bb4: f9400c08     	ldr	x8, [x0, #0x18]
   15bb8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   15bbc: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   15bc0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   15bc4: f9400d08     	ldr	x8, [x8, #0x18]
   15bc8: f90007ff     	str	xzr, [sp, #0x8]
   15bcc: f90013ff     	str	xzr, [sp, #0x20]
   15bd0: f9404d15     	ldr	x21, [x8, #0x98]
   15bd4: 39560aa8     	ldrb	w8, [x21, #0x582]
   15bd8: 36000a68     	tbz	w8, #0x0, 0x15d24 <syna_testing_pt01_show+0x19c>
   15bdc: 94000000     	bl	0x15bdc <syna_testing_pt01_show+0x54>
		0000000000015bdc:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
   15be0: b4000ae0     	cbz	x0, 0x15d3c <syna_testing_pt01_show+0x1b4>
   15be4: 910043f6     	add	x22, sp, #0x10
   15be8: aa0003f4     	mov	x20, x0
   15bec: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   15bf0: 91000021     	add	x1, x1, #0x0
		0000000000015bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   15bf4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015bf4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x95e
   15bf8: 91000042     	add	x2, x2, #0x0
		0000000000015bf8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x95e
   15bfc: 910042c0     	add	x0, x22, #0x10
   15c00: 390143ff     	strb	wzr, [sp, #0x50]
   15c04: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   15c08: 94000000     	bl	0x15c08 <syna_testing_pt01_show+0x80>
		0000000000015c08:  R_AARCH64_CALL26	__mutex_init
   15c0c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015c0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x2cf8
   15c10: 91000108     	add	x8, x8, #0x0
		0000000000015c10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x2cf8
   15c14: 52800209     	mov	w9, #0x10               // =16
   15c18: f90003e8     	str	x8, [sp]
   15c1c: 910003e8     	mov	x8, sp
   15c20: aa1403e1     	mov	x1, x20
   15c24: f9006e96     	str	x22, [x20, #0xd8]
   15c28: 2a1f03e2     	mov	w2, wzr
   15c2c: b9000be9     	str	w9, [sp, #0x8]
   15c30: f9001e88     	str	x8, [x20, #0x38]
   15c34: f9400e88     	ldr	x8, [x20, #0x18]
   15c38: f94002a0     	ldr	x0, [x21]
   15c3c: b85fc110     	ldur	w16, [x8, #-0x4]
   15c40: 72895251     	movk	w17, #0x4a92
   15c44: 72b03811     	movk	w17, #0x81c0, lsl #16
   15c48: 6b11021f     	cmp	w16, w17
   15c4c: 54000040     	b.eq	0x15c54 <syna_testing_pt01_show+0xcc>
   15c50: d4304500     	brk	#0x8228
   15c54: d63f0100     	blr	x8
   15c58: 37f80980     	tbnz	w0, #0x1f, 0x15d88 <syna_testing_pt01_show+0x200>
   15c5c: 39404288     	ldrb	w8, [x20, #0x10]
   15c60: 90000009     	adrp	x9, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15c64: 91000129     	add	x9, x9, #0x0
		0000000000015c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15c68: 7100011f     	cmp	w8, #0x0
   15c6c: 90000008     	adrp	x8, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x87ff
   15c70: 91000108     	add	x8, x8, #0x0
		0000000000015c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x87ff
   15c74: 9a891105     	csel	x5, x8, x9, ne
   15c78: f9400683     	ldr	x3, [x20, #0x8]
   15c7c: b9400284     	ldr	w4, [x20]
   15c80: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015c80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af3
   15c84: 91000042     	add	x2, x2, #0x0
		0000000000015c84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af3
   15c88: aa1303e0     	mov	x0, x19
   15c8c: 52820001     	mov	w1, #0x1000             // =4096
   15c90: 94000000     	bl	0x15c90 <syna_testing_pt01_show+0x108>
		0000000000015c90:  R_AARCH64_CALL26	scnprintf
   15c94: b9401fe8     	ldr	w8, [sp, #0x1c]
   15c98: 2a0003f4     	mov	w20, w0
   15c9c: 34000308     	cbz	w8, 0x15cfc <syna_testing_pt01_show+0x174>
   15ca0: 2a1f03f6     	mov	w22, wzr
   15ca4: 52820017     	mov	w23, #0x1000            // =4096
   15ca8: 90000015     	adrp	x21, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8804
   15cac: 910002b5     	add	x21, x21, #0x0
		0000000000015cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8804
   15cb0: f9400be8     	ldr	x8, [sp, #0x10]
   15cb4: 2a1403e9     	mov	w9, w20
   15cb8: aa1503e2     	mov	x2, x21
   15cbc: cb0902e1     	sub	x1, x23, x9
   15cc0: 8b090260     	add	x0, x19, x9
   15cc4: 3876c903     	ldrb	w3, [x8, w22, sxtw]
   15cc8: 94000000     	bl	0x15cc8 <syna_testing_pt01_show+0x140>
		0000000000015cc8:  R_AARCH64_CALL26	scnprintf
   15ccc: b9401fe8     	ldr	w8, [sp, #0x1c]
   15cd0: 110006d6     	add	w22, w22, #0x1
   15cd4: 0b140014     	add	w20, w0, w20
   15cd8: 6b0802df     	cmp	w22, w8
   15cdc: 54fffea3     	b.lo	0x15cb0 <syna_testing_pt01_show+0x128>
   15ce0: 52820008     	mov	w8, #0x1000             // =4096
   15ce4: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
   15ce8: 91000042     	add	x2, x2, #0x0
		0000000000015ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
   15cec: cb140101     	sub	x1, x8, x20
   15cf0: 8b140260     	add	x0, x19, x20
   15cf4: 94000000     	bl	0x15cf4 <syna_testing_pt01_show+0x16c>
		0000000000015cf4:  R_AARCH64_CALL26	scnprintf
   15cf8: 0b140014     	add	w20, w0, w20
   15cfc: 394143e2     	ldrb	w2, [sp, #0x50]
   15d00: 35000562     	cbnz	w2, 0x15dac <syna_testing_pt01_show+0x224>
   15d04: f9400bf3     	ldr	x19, [sp, #0x10]
   15d08: 94000000     	bl	0x15d08 <syna_testing_pt01_show+0x180>
		0000000000015d08:  R_AARCH64_CALL26	syna_request_managed_device
   15d0c: b40005c0     	cbz	x0, 0x15dc4 <syna_testing_pt01_show+0x23c>
   15d10: b4000073     	cbz	x19, 0x15d1c <syna_testing_pt01_show+0x194>
   15d14: aa1303e1     	mov	x1, x19
   15d18: 94000000     	bl	0x15d18 <syna_testing_pt01_show+0x190>
		0000000000015d18:  R_AARCH64_CALL26	devm_kfree
   15d1c: 2a1403e0     	mov	w0, w20
   15d20: 1400000e     	b	0x15d58 <syna_testing_pt01_show+0x1d0>
   15d24: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc246
   15d28: 91000042     	add	x2, x2, #0x0
		0000000000015d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc246
   15d2c: aa1303e0     	mov	x0, x19
   15d30: 52820001     	mov	w1, #0x1000             // =4096
   15d34: 94000000     	bl	0x15d34 <syna_testing_pt01_show+0x1ac>
		0000000000015d34:  R_AARCH64_CALL26	scnprintf
   15d38: 14000007     	b	0x15d54 <syna_testing_pt01_show+0x1cc>
   15d3c: 90000002     	adrp	x2, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa791
   15d40: 91000042     	add	x2, x2, #0x0
		0000000000015d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa791
   15d44: aa1303e0     	mov	x0, x19
   15d48: 52820001     	mov	w1, #0x1000             // =4096
   15d4c: 52802003     	mov	w3, #0x100              // =256
   15d50: 94000000     	bl	0x15d50 <syna_testing_pt01_show+0x1c8>
		0000000000015d50:  R_AARCH64_CALL26	scnprintf
   15d54: 93407c00     	sxtw	x0, w0
   15d58: d5384108     	mrs	x8, SP_EL0
   15d5c: f9438908     	ldr	x8, [x8, #0x710]
   15d60: f85f83a9     	ldur	x9, [x29, #-0x8]
   15d64: eb09011f     	cmp	x8, x9
   15d68: 540003a1     	b.ne	0x15ddc <syna_testing_pt01_show+0x254>
   15d6c: a9494ff4     	ldp	x20, x19, [sp, #0x90]
   15d70: f9403bf7     	ldr	x23, [sp, #0x70]
   15d74: a94857f6     	ldp	x22, x21, [sp, #0x80]
   15d78: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   15d7c: 910283ff     	add	sp, sp, #0xa0
   15d80: d50323bf     	autiasp
   15d84: d65f03c0     	ret
   15d88: f9400682     	ldr	x2, [x20, #0x8]
   15d8c: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015d8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc281
   15d90: 91000000     	add	x0, x0, #0x0
		0000000000015d90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc281
   15d94: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a32
   15d98: 91000021     	add	x1, x1, #0x0
		0000000000015d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a32
   15d9c: 94000000     	bl	0x15d9c <syna_testing_pt01_show+0x214>
		0000000000015d9c:  R_AARCH64_CALL26	_printk
   15da0: 90000005     	adrp	x5, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7718
   15da4: 910000a5     	add	x5, x5, #0x0
		0000000000015da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7718
   15da8: 17ffffb4     	b	0x15c78 <syna_testing_pt01_show+0xf0>
   15dac: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   15db0: 91000000     	add	x0, x0, #0x0
		0000000000015db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   15db4: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   15db8: 91000021     	add	x1, x1, #0x0
		0000000000015db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   15dbc: 94000000     	bl	0x15dbc <syna_testing_pt01_show+0x234>
		0000000000015dbc:  R_AARCH64_CALL26	_printk
   15dc0: 17ffffd1     	b	0x15d04 <syna_testing_pt01_show+0x17c>
   15dc4: 90000000     	adrp	x0, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015dc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   15dc8: 91000000     	add	x0, x0, #0x0
		0000000000015dc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   15dcc: 90000001     	adrp	x1, 0x15000 <syna_testing_pt05_zte+0x70>
		0000000000015dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   15dd0: 91000021     	add	x1, x1, #0x0
		0000000000015dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   15dd4: 94000000     	bl	0x15dd4 <syna_testing_pt01_show+0x24c>
		0000000000015dd4:  R_AARCH64_CALL26	_printk
   15dd8: 17ffffd1     	b	0x15d1c <syna_testing_pt01_show+0x194>
   15ddc: 94000000     	bl	0x15ddc <syna_testing_pt01_show+0x254>
		0000000000015ddc:  R_AARCH64_CALL26	__stack_chk_fail
