
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029af8 <syna_tcm_testing_noise>:
   29af8: d503233f     	paciasp
   29afc: d10243ff     	sub	sp, sp, #0x90
   29b00: a9057bfd     	stp	x29, x30, [sp, #0x50]
   29b04: f90033f7     	str	x23, [sp, #0x60]
   29b08: a90757f6     	stp	x22, x21, [sp, #0x70]
   29b0c: a9084ff4     	stp	x20, x19, [sp, #0x80]
   29b10: 910143fd     	add	x29, sp, #0x50
   29b14: d5384108     	mrs	x8, SP_EL0
   29b18: f9438908     	ldr	x8, [x8, #0x710]
   29b1c: f81f83a8     	stur	x8, [x29, #-0x8]
   29b20: 12801408     	mov	w8, #-0xa1              // =-161
   29b24: b4000040     	cbz	x0, 0x29b2c <syna_tcm_testing_noise+0x34>
   29b28: b50001c1     	cbnz	x1, 0x29b60 <syna_tcm_testing_noise+0x68>
   29b2c: d5384109     	mrs	x9, SP_EL0
   29b30: f9438929     	ldr	x9, [x9, #0x710]
   29b34: f85f83aa     	ldur	x10, [x29, #-0x8]
   29b38: eb0a013f     	cmp	x9, x10
   29b3c: 54000fc1     	b.ne	0x29d34 <syna_tcm_testing_noise+0x23c>
   29b40: 2a0803e0     	mov	w0, w8
   29b44: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   29b48: f94033f7     	ldr	x23, [sp, #0x60]
   29b4c: a94757f6     	ldp	x22, x21, [sp, #0x70]
   29b50: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   29b54: 910243ff     	add	sp, sp, #0x90
   29b58: d50323bf     	autiasp
   29b5c: d65f03c0     	ret
   29b60: 910003e8     	mov	x8, sp
   29b64: 2a0203f7     	mov	w23, w2
   29b68: aa0103f6     	mov	x22, x1
   29b6c: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029b6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf77
   29b70: 91000021     	add	x1, x1, #0x0
		0000000000029b70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf77
   29b74: 90000002     	adrp	x2, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029b74:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x6427
   29b78: 91000042     	add	x2, x2, #0x0
		0000000000029b78:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x6427
   29b7c: aa0003f5     	mov	x21, x0
   29b80: 91004100     	add	x0, x8, #0x10
   29b84: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   29b88: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29b8c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29b90: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   29b94: f90003ff     	str	xzr, [sp]
   29b98: 94000000     	bl	0x29b98 <syna_tcm_testing_noise+0xa0>
		0000000000029b98:  R_AARCH64_CALL26	__mutex_init
   29b9c: 2943ceb4     	ldp	w20, w19, [x21, #0x1c]
   29ba0: 910003e2     	mov	x2, sp
   29ba4: aa1503e0     	mov	x0, x21
   29ba8: 52800141     	mov	w1, #0xa                // =10
   29bac: 2a1f03e3     	mov	w3, wzr
   29bb0: 94000000     	bl	0x29bb0 <syna_tcm_testing_noise+0xb8>
		0000000000029bb0:  R_AARCH64_CALL26	syna_tcm_run_production_test
   29bb4: 36f80180     	tbz	w0, #0x1f, 0x29be4 <syna_tcm_testing_noise+0xec>
   29bb8: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cbed
   29bbc: 91000000     	add	x0, x0, #0x0
		0000000000029bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cbed
   29bc0: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bb2
   29bc4: 91000021     	add	x1, x1, #0x0
		0000000000029bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bb2
   29bc8: 52800142     	mov	w2, #0xa                // =10
   29bcc: 94000000     	bl	0x29bcc <syna_tcm_testing_noise+0xd4>
		0000000000029bcc:  R_AARCH64_CALL26	_printk
   29bd0: 390042df     	strb	wzr, [x22, #0x10]
   29bd4: 12801454     	mov	w20, #-0xa3             // =-163
   29bd8: 90000002     	adrp	x2, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029bd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184f6
   29bdc: 91000042     	add	x2, x2, #0x0
		0000000000029bdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184f6
   29be0: 1400003a     	b	0x29cc8 <syna_tcm_testing_noise+0x1d0>
   29be4: f9406ec8     	ldr	x8, [x22, #0xd8]
   29be8: aa1603e9     	mov	x9, x22
   29bec: b40000e8     	cbz	x8, 0x29c08 <syna_tcm_testing_noise+0x110>
   29bf0: 910003e1     	mov	x1, sp
   29bf4: 2a0003f5     	mov	w21, w0
   29bf8: aa0803e0     	mov	x0, x8
   29bfc: 9400004f     	bl	0x29d38 <syna_tcm_buf_copy>
   29c00: aa1603e9     	mov	x9, x22
   29c04: 2a1503e0     	mov	w0, w21
   29c08: 360000f7     	tbz	w23, #0x0, 0x29c24 <syna_tcm_testing_noise+0x12c>
   29c0c: 52800028     	mov	w8, #0x1                // =1
   29c10: 2a0003f4     	mov	w20, w0
   29c14: 90000002     	adrp	x2, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2f7
   29c18: 91000042     	add	x2, x2, #0x0
		0000000000029c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2f7
   29c1c: 39004128     	strb	w8, [x9, #0x10]
   29c20: 1400002a     	b	0x29cc8 <syna_tcm_testing_noise+0x1d0>
   29c24: f9401d28     	ldr	x8, [x9, #0x38]
   29c28: b5000088     	cbnz	x8, 0x29c38 <syna_tcm_testing_noise+0x140>
   29c2c: 2a0003f7     	mov	w23, w0
   29c30: 2a1f03f5     	mov	w21, wzr
   29c34: 1400000d     	b	0x29c68 <syna_tcm_testing_noise+0x170>
   29c38: 2a0003f7     	mov	w23, w0
   29c3c: f94003e0     	ldr	x0, [sp]
   29c40: b9400fe1     	ldr	w1, [sp, #0xc]
   29c44: f9400105     	ldr	x5, [x8]
   29c48: b9400906     	ldr	w6, [x8, #0x8]
   29c4c: 90000004     	adrp	x4, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029c4c:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_testing_0A00_check_upper_bound
   29c50: 91000084     	add	x4, x4, #0x0
		0000000000029c50:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_testing_0A00_check_upper_bound
   29c54: 2a1403e2     	mov	w2, w20
   29c58: 2a1303e3     	mov	w3, w19
   29c5c: 940000d7     	bl	0x29fb8 <syna_tcm_testing_check_frame_data>
   29c60: aa1603e9     	mov	x9, x22
   29c64: 2a0003f5     	mov	w21, w0
   29c68: f9402128     	ldr	x8, [x9, #0x40]
   29c6c: b5000068     	cbnz	x8, 0x29c78 <syna_tcm_testing_noise+0x180>
   29c70: 2a1f03e0     	mov	w0, wzr
   29c74: 1400000b     	b	0x29ca0 <syna_tcm_testing_noise+0x1a8>
   29c78: f94003e0     	ldr	x0, [sp]
   29c7c: b9400fe1     	ldr	w1, [sp, #0xc]
   29c80: 90000004     	adrp	x4, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029c80:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_testing_0A00_check_lower_bound
   29c84: 91000084     	add	x4, x4, #0x0
		0000000000029c84:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_testing_0A00_check_lower_bound
   29c88: f9400105     	ldr	x5, [x8]
   29c8c: b9400906     	ldr	w6, [x8, #0x8]
   29c90: 2a1403e2     	mov	w2, w20
   29c94: 2a1303e3     	mov	w3, w19
   29c98: 940000c8     	bl	0x29fb8 <syna_tcm_testing_check_frame_data>
   29c9c: aa1603e9     	mov	x9, x22
   29ca0: 0a0002a8     	and	w8, w21, w0
   29ca4: 1280142a     	mov	w10, #-0xa2             // =-162
   29ca8: 9000000b     	adrp	x11, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x184f6
   29cac: 9100016b     	add	x11, x11, #0x0
		0000000000029cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x184f6
   29cb0: 72000108     	ands	w8, w8, #0x1
   29cb4: 39004128     	strb	w8, [x9, #0x10]
   29cb8: 90000008     	adrp	x8, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b2f7
   29cbc: 91000108     	add	x8, x8, #0x0
		0000000000029cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b2f7
   29cc0: 1a8a12f4     	csel	w20, w23, w10, ne
   29cc4: 9a8b1102     	csel	x2, x8, x11, ne
   29cc8: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182b4
   29ccc: 91000000     	add	x0, x0, #0x0
		0000000000029ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182b4
   29cd0: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bb2
   29cd4: 91000021     	add	x1, x1, #0x0
		0000000000029cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bb2
   29cd8: 94000000     	bl	0x29cd8 <syna_tcm_testing_noise+0x1e0>
		0000000000029cd8:  R_AARCH64_CALL26	_printk
   29cdc: 394103e2     	ldrb	w2, [sp, #0x40]
   29ce0: 35000122     	cbnz	w2, 0x29d04 <syna_tcm_testing_noise+0x20c>
   29ce4: f94003f3     	ldr	x19, [sp]
   29ce8: 94000000     	bl	0x29ce8 <syna_tcm_testing_noise+0x1f0>
		0000000000029ce8:  R_AARCH64_CALL26	syna_request_managed_device
   29cec: b4000180     	cbz	x0, 0x29d1c <syna_tcm_testing_noise+0x224>
   29cf0: b4000073     	cbz	x19, 0x29cfc <syna_tcm_testing_noise+0x204>
   29cf4: aa1303e1     	mov	x1, x19
   29cf8: 94000000     	bl	0x29cf8 <syna_tcm_testing_noise+0x200>
		0000000000029cf8:  R_AARCH64_CALL26	devm_kfree
   29cfc: 2a1403e8     	mov	w8, w20
   29d00: 17ffff8b     	b	0x29b2c <syna_tcm_testing_noise+0x34>
   29d04: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18e68
   29d08: 91000000     	add	x0, x0, #0x0
		0000000000029d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18e68
   29d0c: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ac6e
   29d10: 91000021     	add	x1, x1, #0x0
		0000000000029d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ac6e
   29d14: 94000000     	bl	0x29d14 <syna_tcm_testing_noise+0x21c>
		0000000000029d14:  R_AARCH64_CALL26	_printk
   29d18: 17fffff3     	b	0x29ce4 <syna_tcm_testing_noise+0x1ec>
   29d1c: 90000000     	adrp	x0, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1cf9a
   29d20: 91000000     	add	x0, x0, #0x0
		0000000000029d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1cf9a
   29d24: 90000001     	adrp	x1, 0x29000 <syna_sysfs_info_show+0x24c>
		0000000000029d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c923
   29d28: 91000021     	add	x1, x1, #0x0
		0000000000029d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c923
   29d2c: 94000000     	bl	0x29d2c <syna_tcm_testing_noise+0x234>
		0000000000029d2c:  R_AARCH64_CALL26	_printk
   29d30: 17fffff3     	b	0x29cfc <syna_tcm_testing_noise+0x204>
   29d34: 94000000     	bl	0x29d34 <syna_tcm_testing_noise+0x23c>
		0000000000029d34:  R_AARCH64_CALL26	__stack_chk_fail
