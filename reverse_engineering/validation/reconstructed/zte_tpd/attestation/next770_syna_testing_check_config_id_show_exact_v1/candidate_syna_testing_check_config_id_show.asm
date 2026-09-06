
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029c7c <syna_testing_check_config_id_show>:
   29c7c: d503233f     	paciasp
   29c80: d10243ff     	sub	sp, sp, #0x90
   29c84: a9067bfd     	stp	x29, x30, [sp, #0x60]
   29c88: a90757f6     	stp	x22, x21, [sp, #0x70]
   29c8c: a9084ff4     	stp	x20, x19, [sp, #0x80]
   29c90: 910183fd     	add	x29, sp, #0x60
   29c94: d5384108     	mrs	x8, SP_EL0
   29c98: aa0203f3     	mov	x19, x2
   29c9c: f9438908     	ldr	x8, [x8, #0x710]
   29ca0: f81f83a8     	stur	x8, [x29, #-0x8]
   29ca4: f9400c08     	ldr	x8, [x0, #0x18]
   29ca8: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   29cac: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29cb0: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29cb4: f9400d08     	ldr	x8, [x8, #0x18]
   29cb8: f90007ff     	str	xzr, [sp, #0x8]
   29cbc: f90013ff     	str	xzr, [sp, #0x20]
   29cc0: f9404d15     	ldr	x21, [x8, #0x98]
   29cc4: 39560aa8     	ldrb	w8, [x21, #0x582]
   29cc8: 360008a8     	tbz	w8, #0x0, 0x29ddc <syna_testing_check_config_id_show+0x160>
   29ccc: 94000000     	bl	0x29ccc <syna_testing_check_config_id_show+0x50>
		0000000000029ccc:  R_AARCH64_CALL26	syna_tcm_get_testing_0002
   29cd0: b4000920     	cbz	x0, 0x29df4 <syna_testing_check_config_id_show+0x178>
   29cd4: 910043f6     	add	x22, sp, #0x10
   29cd8: aa0003f4     	mov	x20, x0
   29cdc: 90000001     	adrp	x1, 0x29000 <syna_spi_power_on+0x134>
		0000000000029cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cedf
   29ce0: 91000021     	add	x1, x1, #0x0
		0000000000029ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cedf
   29ce4: 90000002     	adrp	x2, 0x29000 <syna_spi_power_on+0x134>
		0000000000029ce4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6425
   29ce8: 91000042     	add	x2, x2, #0x0
		0000000000029ce8:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6425
   29cec: 910042c0     	add	x0, x22, #0x10
   29cf0: 390143ff     	strb	wzr, [sp, #0x50]
   29cf4: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   29cf8: 94000000     	bl	0x29cf8 <syna_testing_check_config_id_show+0x7c>
		0000000000029cf8:  R_AARCH64_CALL26	__mutex_init
   29cfc: 90000008     	adrp	x8, 0x29000 <syna_spi_power_on+0x134>
		0000000000029cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1ff70
   29d00: 91000108     	add	x8, x8, #0x0
		0000000000029d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1ff70
   29d04: 52800209     	mov	w9, #0x10               // =16
   29d08: f90003e8     	str	x8, [sp]
   29d0c: 910003e8     	mov	x8, sp
   29d10: aa1403e1     	mov	x1, x20
   29d14: f9006e96     	str	x22, [x20, #0xd8]
   29d18: 2a1f03e2     	mov	w2, wzr
   29d1c: b9000be9     	str	w9, [sp, #0x8]
   29d20: f9001e88     	str	x8, [x20, #0x38]
   29d24: f9400e88     	ldr	x8, [x20, #0x18]
   29d28: f94002a0     	ldr	x0, [x21]
   29d2c: b85fc110     	ldur	w16, [x8, #-0x4]
   29d30: 72895251     	movk	w17, #0x4a92
   29d34: 72b03811     	movk	w17, #0x81c0, lsl #16
   29d38: 6b11021f     	cmp	w16, w17
   29d3c: 54000040     	b.eq	0x29d44 <syna_testing_check_config_id_show+0xc8>
   29d40: d4304500     	brk	#0x8228
   29d44: d63f0100     	blr	x8
   29d48: 37f807a0     	tbnz	w0, #0x1f, 0x29e3c <syna_testing_check_config_id_show+0x1c0>
   29d4c: 39404288     	ldrb	w8, [x20, #0x10]
   29d50: 90000009     	adrp	x9, 0x29000 <syna_spi_power_on+0x134>
		0000000000029d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2ba
   29d54: 91000129     	add	x9, x9, #0x0
		0000000000029d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2ba
   29d58: 7100011f     	cmp	w8, #0x0
   29d5c: 90000008     	adrp	x8, 0x29000 <syna_spi_power_on+0x134>
		0000000000029d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bd33
   29d60: 91000108     	add	x8, x8, #0x0
		0000000000029d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bd33
   29d64: 9a891105     	csel	x5, x8, x9, ne
   29d68: f9400683     	ldr	x3, [x20, #0x8]
   29d6c: b9400284     	ldr	w4, [x20]
   29d70: 90000002     	adrp	x2, 0x29000 <syna_spi_power_on+0x134>
		0000000000029d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18166
   29d74: 91000042     	add	x2, x2, #0x0
		0000000000029d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18166
   29d78: aa1303e0     	mov	x0, x19
   29d7c: 52820001     	mov	w1, #0x1000             // =4096
   29d80: 94000000     	bl	0x29d80 <syna_testing_check_config_id_show+0x104>
		0000000000029d80:  R_AARCH64_CALL26	scnprintf
   29d84: b9401fe8     	ldr	w8, [sp, #0x1c]
   29d88: 2a0003f4     	mov	w20, w0
   29d8c: 34000148     	cbz	w8, 0x29db4 <syna_testing_check_config_id_show+0x138>
   29d90: 2a1403e8     	mov	w8, w20
   29d94: 52820009     	mov	w9, #0x1000             // =4096
   29d98: f9400be3     	ldr	x3, [sp, #0x10]
   29d9c: cb080121     	sub	x1, x9, x8
   29da0: 90000002     	adrp	x2, 0x29000 <syna_spi_power_on+0x134>
		0000000000029da0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db68
   29da4: 91000042     	add	x2, x2, #0x0
		0000000000029da4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db68
   29da8: 8b080260     	add	x0, x19, x8
   29dac: 94000000     	bl	0x29dac <syna_testing_check_config_id_show+0x130>
		0000000000029dac:  R_AARCH64_CALL26	scnprintf
   29db0: 0b140014     	add	w20, w0, w20
   29db4: 394143e2     	ldrb	w2, [sp, #0x50]
   29db8: 35000542     	cbnz	w2, 0x29e60 <syna_testing_check_config_id_show+0x1e4>
   29dbc: f9400bf3     	ldr	x19, [sp, #0x10]
   29dc0: 94000000     	bl	0x29dc0 <syna_testing_check_config_id_show+0x144>
		0000000000029dc0:  R_AARCH64_CALL26	syna_request_managed_device
   29dc4: b40005a0     	cbz	x0, 0x29e78 <syna_testing_check_config_id_show+0x1fc>
   29dc8: b4000073     	cbz	x19, 0x29dd4 <syna_testing_check_config_id_show+0x158>
   29dcc: aa1303e1     	mov	x1, x19
   29dd0: 94000000     	bl	0x29dd0 <syna_testing_check_config_id_show+0x154>
		0000000000029dd0:  R_AARCH64_CALL26	devm_kfree
   29dd4: 2a1403e0     	mov	w0, w20
   29dd8: 1400000e     	b	0x29e10 <syna_testing_check_config_id_show+0x194>
   29ddc: 90000002     	adrp	x2, 0x29000 <syna_spi_power_on+0x134>
		0000000000029ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d86e
   29de0: 91000042     	add	x2, x2, #0x0
		0000000000029de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d86e
   29de4: aa1303e0     	mov	x0, x19
   29de8: 52820001     	mov	w1, #0x1000             // =4096
   29dec: 94000000     	bl	0x29dec <syna_testing_check_config_id_show+0x170>
		0000000000029dec:  R_AARCH64_CALL26	scnprintf
   29df0: 14000007     	b	0x29e0c <syna_testing_check_config_id_show+0x190>
   29df4: 90000002     	adrp	x2, 0x29000 <syna_spi_power_on+0x134>
		0000000000029df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ccac
   29df8: 91000042     	add	x2, x2, #0x0
		0000000000029df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ccac
   29dfc: aa1303e0     	mov	x0, x19
   29e00: 52820001     	mov	w1, #0x1000             // =4096
   29e04: 52800043     	mov	w3, #0x2                // =2
   29e08: 94000000     	bl	0x29e08 <syna_testing_check_config_id_show+0x18c>
		0000000000029e08:  R_AARCH64_CALL26	scnprintf
   29e0c: 93407c00     	sxtw	x0, w0
   29e10: d5384108     	mrs	x8, SP_EL0
   29e14: f9438908     	ldr	x8, [x8, #0x710]
   29e18: f85f83a9     	ldur	x9, [x29, #-0x8]
   29e1c: eb09011f     	cmp	x8, x9
   29e20: 54000381     	b.ne	0x29e90 <syna_testing_check_config_id_show+0x214>
   29e24: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   29e28: a94757f6     	ldp	x22, x21, [sp, #0x70]
   29e2c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   29e30: 910243ff     	add	sp, sp, #0x90
   29e34: d50323bf     	autiasp
   29e38: d65f03c0     	ret
   29e3c: f9400682     	ldr	x2, [x20, #0x8]
   29e40: 90000000     	adrp	x0, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1d84a
   29e44: 91000000     	add	x0, x0, #0x0
		0000000000029e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1d84a
   29e48: 90000001     	adrp	x1, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a788
   29e4c: 91000021     	add	x1, x1, #0x0
		0000000000029e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a788
   29e50: 94000000     	bl	0x29e50 <syna_testing_check_config_id_show+0x1d4>
		0000000000029e50:  R_AARCH64_CALL26	_printk
   29e54: 90000005     	adrp	x5, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2ba
   29e58: 910000a5     	add	x5, x5, #0x0
		0000000000029e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2ba
   29e5c: 17ffffc3     	b	0x29d68 <syna_testing_check_config_id_show+0xec>
   29e60: 90000000     	adrp	x0, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e68
   29e64: 91000000     	add	x0, x0, #0x0
		0000000000029e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e68
   29e68: 90000001     	adrp	x1, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1abfc
   29e6c: 91000021     	add	x1, x1, #0x0
		0000000000029e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1abfc
   29e70: 94000000     	bl	0x29e70 <syna_testing_check_config_id_show+0x1f4>
		0000000000029e70:  R_AARCH64_CALL26	_printk
   29e74: 17ffffd2     	b	0x29dbc <syna_testing_check_config_id_show+0x140>
   29e78: 90000000     	adrp	x0, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf02
   29e7c: 91000000     	add	x0, x0, #0x0
		0000000000029e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf02
   29e80: 90000001     	adrp	x1, 0x29000 <syna_spi_power_on+0x134>
		0000000000029e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8b1
   29e84: 91000021     	add	x1, x1, #0x0
		0000000000029e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8b1
   29e88: 94000000     	bl	0x29e88 <syna_testing_check_config_id_show+0x20c>
		0000000000029e88:  R_AARCH64_CALL26	_printk
   29e8c: 17ffffd2     	b	0x29dd4 <syna_testing_check_config_id_show+0x158>
   29e90: 94000000     	bl	0x29e90 <syna_testing_check_config_id_show+0x214>
		0000000000029e90:  R_AARCH64_CALL26	__stack_chk_fail
