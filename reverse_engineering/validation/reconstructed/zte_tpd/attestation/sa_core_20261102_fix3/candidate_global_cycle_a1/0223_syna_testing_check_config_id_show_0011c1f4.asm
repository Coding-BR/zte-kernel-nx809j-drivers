
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000023b98 <syna_testing_check_config_id_show>:
   23b98: d503233f     	paciasp
   23b9c: d10243ff     	sub	sp, sp, #0x90
   23ba0: a9067bfd     	stp	x29, x30, [sp, #0x60]
   23ba4: a90757f6     	stp	x22, x21, [sp, #0x70]
   23ba8: a9084ff4     	stp	x20, x19, [sp, #0x80]
   23bac: 910183fd     	add	x29, sp, #0x60
   23bb0: d5384108     	mrs	x8, SP_EL0
   23bb4: aa0203f3     	mov	x19, x2
   23bb8: f9438908     	ldr	x8, [x8, #0x710]
   23bbc: f81f83a8     	stur	x8, [x29, #-0x8]
   23bc0: f9400c08     	ldr	x8, [x0, #0x18]
   23bc4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
   23bc8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   23bcc: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   23bd0: f9400d08     	ldr	x8, [x8, #0x18]
   23bd4: f90007ff     	str	xzr, [sp, #0x8]
   23bd8: f90013ff     	str	xzr, [sp, #0x20]
   23bdc: f9404d15     	ldr	x21, [x8, #0x98]
   23be0: 39560aa8     	ldrb	w8, [x21, #0x582]
   23be4: 360008a8     	tbz	w8, #0x0, 0x23cf8 <syna_testing_check_config_id_show+0x160>
   23be8: 94000000     	bl	0x23be8 <syna_testing_check_config_id_show+0x50>
		0000000000023be8:  R_AARCH64_CALL26	syna_tcm_get_testing_0002
   23bec: b4000920     	cbz	x0, 0x23d10 <syna_testing_check_config_id_show+0x178>
   23bf0: 910043f6     	add	x22, sp, #0x10
   23bf4: aa0003f4     	mov	x20, x0
   23bf8: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023bf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
   23bfc: 91000021     	add	x1, x1, #0x0
		0000000000023bfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
   23c00: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023c00:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6419
   23c04: 91000042     	add	x2, x2, #0x0
		0000000000023c04:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6419
   23c08: 910042c0     	add	x0, x22, #0x10
   23c0c: 390143ff     	strb	wzr, [sp, #0x50]
   23c10: a9017fff     	stp	xzr, xzr, [sp, #0x10]
   23c14: 94000000     	bl	0x23c14 <syna_testing_check_config_id_show+0x7c>
		0000000000023c14:  R_AARCH64_CALL26	__mutex_init
   23c18: 90000008     	adrp	x8, 0x23000 <syna_spi_power_on+0x218>
		0000000000023c18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x1ff70
   23c1c: 91000108     	add	x8, x8, #0x0
		0000000000023c1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x1ff70
   23c20: 52800209     	mov	w9, #0x10               // =16
   23c24: f90003e8     	str	x8, [sp]
   23c28: 910003e8     	mov	x8, sp
   23c2c: aa1403e1     	mov	x1, x20
   23c30: f9006e96     	str	x22, [x20, #0xd8]
   23c34: 2a1f03e2     	mov	w2, wzr
   23c38: b9000be9     	str	w9, [sp, #0x8]
   23c3c: f9001e88     	str	x8, [x20, #0x38]
   23c40: f9400e88     	ldr	x8, [x20, #0x18]
   23c44: f94002a0     	ldr	x0, [x21]
   23c48: b85fc110     	ldur	w16, [x8, #-0x4]
   23c4c: 72895251     	movk	w17, #0x4a92
   23c50: 72b03811     	movk	w17, #0x81c0, lsl #16
   23c54: 6b11021f     	cmp	w16, w17
   23c58: 54000040     	b.eq	0x23c60 <syna_testing_check_config_id_show+0xc8>
   23c5c: d4304500     	brk	#0x8228
   23c60: d63f0100     	blr	x8
   23c64: 37f807a0     	tbnz	w0, #0x1f, 0x23d58 <syna_testing_check_config_id_show+0x1c0>
   23c68: 39404288     	ldrb	w8, [x20, #0x10]
   23c6c: 90000009     	adrp	x9, 0x23000 <syna_spi_power_on+0x218>
		0000000000023c6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   23c70: 91000129     	add	x9, x9, #0x0
		0000000000023c70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   23c74: 7100011f     	cmp	w8, #0x0
   23c78: 90000008     	adrp	x8, 0x23000 <syna_spi_power_on+0x218>
		0000000000023c78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af66
   23c7c: 91000108     	add	x8, x8, #0x0
		0000000000023c7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af66
   23c80: 9a891105     	csel	x5, x8, x9, ne
   23c84: f9400683     	ldr	x3, [x20, #0x8]
   23c88: b9400284     	ldr	w4, [x20]
   23c8c: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17eac
   23c90: 91000042     	add	x2, x2, #0x0
		0000000000023c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17eac
   23c94: aa1303e0     	mov	x0, x19
   23c98: 52820001     	mov	w1, #0x1000             // =4096
   23c9c: 94000000     	bl	0x23c9c <syna_testing_check_config_id_show+0x104>
		0000000000023c9c:  R_AARCH64_CALL26	scnprintf
   23ca0: b9401fe8     	ldr	w8, [sp, #0x1c]
   23ca4: 2a0003f4     	mov	w20, w0
   23ca8: 34000148     	cbz	w8, 0x23cd0 <syna_testing_check_config_id_show+0x138>
   23cac: 2a1403e8     	mov	w8, w20
   23cb0: 52820009     	mov	w9, #0x1000             // =4096
   23cb4: f9400be3     	ldr	x3, [sp, #0x10]
   23cb8: cb080121     	sub	x1, x9, x8
   23cbc: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023cbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c9bf
   23cc0: 91000042     	add	x2, x2, #0x0
		0000000000023cc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c9bf
   23cc4: 8b080260     	add	x0, x19, x8
   23cc8: 94000000     	bl	0x23cc8 <syna_testing_check_config_id_show+0x130>
		0000000000023cc8:  R_AARCH64_CALL26	scnprintf
   23ccc: 0b140014     	add	w20, w0, w20
   23cd0: 394143e2     	ldrb	w2, [sp, #0x50]
   23cd4: 35000542     	cbnz	w2, 0x23d7c <syna_testing_check_config_id_show+0x1e4>
   23cd8: f9400bf3     	ldr	x19, [sp, #0x10]
   23cdc: 94000000     	bl	0x23cdc <syna_testing_check_config_id_show+0x144>
		0000000000023cdc:  R_AARCH64_CALL26	syna_request_managed_device
   23ce0: b40005a0     	cbz	x0, 0x23d94 <syna_testing_check_config_id_show+0x1fc>
   23ce4: b4000073     	cbz	x19, 0x23cf0 <syna_testing_check_config_id_show+0x158>
   23ce8: aa1303e1     	mov	x1, x19
   23cec: 94000000     	bl	0x23cec <syna_testing_check_config_id_show+0x154>
		0000000000023cec:  R_AARCH64_CALL26	devm_kfree
   23cf0: 2a1403e0     	mov	w0, w20
   23cf4: 1400000e     	b	0x23d2c <syna_testing_check_config_id_show+0x194>
   23cf8: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c8ab
   23cfc: 91000042     	add	x2, x2, #0x0
		0000000000023cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c8ab
   23d00: aa1303e0     	mov	x0, x19
   23d04: 52820001     	mov	w1, #0x1000             // =4096
   23d08: 94000000     	bl	0x23d08 <syna_testing_check_config_id_show+0x170>
		0000000000023d08:  R_AARCH64_CALL26	scnprintf
   23d0c: 14000007     	b	0x23d28 <syna_testing_check_config_id_show+0x190>
   23d10: 90000002     	adrp	x2, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcf7
   23d14: 91000042     	add	x2, x2, #0x0
		0000000000023d14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcf7
   23d18: aa1303e0     	mov	x0, x19
   23d1c: 52820001     	mov	w1, #0x1000             // =4096
   23d20: 52800043     	mov	w3, #0x2                // =2
   23d24: 94000000     	bl	0x23d24 <syna_testing_check_config_id_show+0x18c>
		0000000000023d24:  R_AARCH64_CALL26	scnprintf
   23d28: 93407c00     	sxtw	x0, w0
   23d2c: d5384108     	mrs	x8, SP_EL0
   23d30: f9438908     	ldr	x8, [x8, #0x710]
   23d34: f85f83a9     	ldur	x9, [x29, #-0x8]
   23d38: eb09011f     	cmp	x8, x9
   23d3c: 54000381     	b.ne	0x23dac <syna_testing_check_config_id_show+0x214>
   23d40: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   23d44: a94757f6     	ldp	x22, x21, [sp, #0x70]
   23d48: a9467bfd     	ldp	x29, x30, [sp, #0x60]
   23d4c: 910243ff     	add	sp, sp, #0x90
   23d50: d50323bf     	autiasp
   23d54: d65f03c0     	ret
   23d58: f9400682     	ldr	x2, [x20, #0x8]
   23d5c: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c71d
   23d60: 91000000     	add	x0, x0, #0x0
		0000000000023d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c71d
   23d64: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19d2a
   23d68: 91000021     	add	x1, x1, #0x0
		0000000000023d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19d2a
   23d6c: 94000000     	bl	0x23d6c <syna_testing_check_config_id_show+0x1d4>
		0000000000023d6c:  R_AARCH64_CALL26	_printk
   23d70: 90000005     	adrp	x5, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
   23d74: 910000a5     	add	x5, x5, #0x0
		0000000000023d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
   23d78: 17ffffc3     	b	0x23c84 <syna_testing_check_config_id_show+0xec>
   23d7c: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
   23d80: 91000000     	add	x0, x0, #0x0
		0000000000023d80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
   23d84: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
   23d88: 91000021     	add	x1, x1, #0x0
		0000000000023d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
   23d8c: 94000000     	bl	0x23d8c <syna_testing_check_config_id_show+0x1f4>
		0000000000023d8c:  R_AARCH64_CALL26	_printk
   23d90: 17ffffd2     	b	0x23cd8 <syna_testing_check_config_id_show+0x140>
   23d94: 90000000     	adrp	x0, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
   23d98: 91000000     	add	x0, x0, #0x0
		0000000000023d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
   23d9c: 90000001     	adrp	x1, 0x23000 <syna_spi_power_on+0x218>
		0000000000023d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
   23da0: 91000021     	add	x1, x1, #0x0
		0000000000023da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
   23da4: 94000000     	bl	0x23da4 <syna_testing_check_config_id_show+0x20c>
		0000000000023da4:  R_AARCH64_CALL26	_printk
   23da8: 17ffffd2     	b	0x23cf0 <syna_testing_check_config_id_show+0x158>
   23dac: 94000000     	bl	0x23dac <syna_testing_check_config_id_show+0x214>
		0000000000023dac:  R_AARCH64_CALL26	__stack_chk_fail
