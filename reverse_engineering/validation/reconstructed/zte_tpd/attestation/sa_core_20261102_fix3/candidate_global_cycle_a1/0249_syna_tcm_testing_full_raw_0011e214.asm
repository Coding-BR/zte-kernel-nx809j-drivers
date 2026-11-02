
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000008c64 <syna_tcm_testing_full_raw>:
    8c64: d503233f     	paciasp
    8c68: d10243ff     	sub	sp, sp, #0x90
    8c6c: a9057bfd     	stp	x29, x30, [sp, #0x50]
    8c70: f90033f7     	str	x23, [sp, #0x60]
    8c74: a90757f6     	stp	x22, x21, [sp, #0x70]
    8c78: a9084ff4     	stp	x20, x19, [sp, #0x80]
    8c7c: 910143fd     	add	x29, sp, #0x50
    8c80: d5384108     	mrs	x8, SP_EL0
    8c84: f9438908     	ldr	x8, [x8, #0x710]
    8c88: f81f83a8     	stur	x8, [x29, #-0x8]
    8c8c: 12801408     	mov	w8, #-0xa1              // =-161
    8c90: b4000040     	cbz	x0, 0x8c98 <syna_tcm_testing_full_raw+0x34>
    8c94: b50001c1     	cbnz	x1, 0x8ccc <syna_tcm_testing_full_raw+0x68>
    8c98: d5384109     	mrs	x9, SP_EL0
    8c9c: f9438929     	ldr	x9, [x9, #0x710]
    8ca0: f85f83aa     	ldur	x10, [x29, #-0x8]
    8ca4: eb0a013f     	cmp	x9, x10
    8ca8: 54000fc1     	b.ne	0x8ea0 <syna_tcm_testing_full_raw+0x23c>
    8cac: 2a0803e0     	mov	w0, w8
    8cb0: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    8cb4: f94033f7     	ldr	x23, [sp, #0x60]
    8cb8: a94757f6     	ldp	x22, x21, [sp, #0x70]
    8cbc: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    8cc0: 910243ff     	add	sp, sp, #0x90
    8cc4: d50323bf     	autiasp
    8cc8: d65f03c0     	ret
    8ccc: 910003e8     	mov	x8, sp
    8cd0: 2a0203f7     	mov	w23, w2
    8cd4: aa0103f6     	mov	x22, x1
    8cd8: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb000
    8cdc: 91000021     	add	x1, x1, #0x0
		0000000000008cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb000
    8ce0: 90000002     	adrp	x2, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008ce0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x961
    8ce4: 91000042     	add	x2, x2, #0x0
		0000000000008ce4:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x961
    8ce8: aa0003f5     	mov	x21, x0
    8cec: 91004100     	add	x0, x8, #0x10
    8cf0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    8cf4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    8cf8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    8cfc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    8d00: f90003ff     	str	xzr, [sp]
    8d04: 94000000     	bl	0x8d04 <syna_tcm_testing_full_raw+0xa0>
		0000000000008d04:  R_AARCH64_CALL26	__mutex_init
    8d08: 2943ceb4     	ldp	w20, w19, [x21, #0x1c]
    8d0c: 910003e2     	mov	x2, sp
    8d10: aa1503e0     	mov	x0, x21
    8d14: 528000a1     	mov	w1, #0x5                // =5
    8d18: 2a1f03e3     	mov	w3, wzr
    8d1c: 94000000     	bl	0x8d1c <syna_tcm_testing_full_raw+0xb8>
		0000000000008d1c:  R_AARCH64_CALL26	syna_tcm_run_production_test
    8d20: 36f80180     	tbz	w0, #0x1f, 0x8d50 <syna_tcm_testing_full_raw+0xec>
    8d24: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa374
    8d28: 91000000     	add	x0, x0, #0x0
		0000000000008d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa374
    8d2c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66d4
    8d30: 91000021     	add	x1, x1, #0x0
		0000000000008d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66d4
    8d34: 528000a2     	mov	w2, #0x5                // =5
    8d38: 94000000     	bl	0x8d38 <syna_tcm_testing_full_raw+0xd4>
		0000000000008d38:  R_AARCH64_CALL26	_printk
    8d3c: 390042df     	strb	wzr, [x22, #0x10]
    8d40: 12801454     	mov	w20, #-0xa3             // =-163
    8d44: 90000002     	adrp	x2, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2278
    8d48: 91000042     	add	x2, x2, #0x0
		0000000000008d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2278
    8d4c: 1400003a     	b	0x8e34 <syna_tcm_testing_full_raw+0x1d0>
    8d50: f9406ec8     	ldr	x8, [x22, #0xd8]
    8d54: aa1603e9     	mov	x9, x22
    8d58: b40000e8     	cbz	x8, 0x8d74 <syna_tcm_testing_full_raw+0x110>
    8d5c: 910003e1     	mov	x1, sp
    8d60: 2a0003f5     	mov	w21, w0
    8d64: aa0803e0     	mov	x0, x8
    8d68: 9400004f     	bl	0x8ea4 <syna_tcm_testing_full_raw+0x240>
		0000000000008d68:  R_AARCH64_CALL26	syna_tcm_buf_copy
    8d6c: aa1603e9     	mov	x9, x22
    8d70: 2a1503e0     	mov	w0, w21
    8d74: 360000f7     	tbz	w23, #0x0, 0x8d90 <syna_tcm_testing_full_raw+0x12c>
    8d78: 52800028     	mov	w8, #0x1                // =1
    8d7c: 2a0003f4     	mov	w20, w0
    8d80: 90000002     	adrp	x2, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x793e
    8d84: 91000042     	add	x2, x2, #0x0
		0000000000008d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x793e
    8d88: 39004128     	strb	w8, [x9, #0x10]
    8d8c: 1400002a     	b	0x8e34 <syna_tcm_testing_full_raw+0x1d0>
    8d90: f9401d28     	ldr	x8, [x9, #0x38]
    8d94: b5000088     	cbnz	x8, 0x8da4 <syna_tcm_testing_full_raw+0x140>
    8d98: 2a0003f7     	mov	w23, w0
    8d9c: 2a1f03f5     	mov	w21, wzr
    8da0: 1400000d     	b	0x8dd4 <syna_tcm_testing_full_raw+0x170>
    8da4: 2a0003f7     	mov	w23, w0
    8da8: f94003e0     	ldr	x0, [sp]
    8dac: b9400fe1     	ldr	w1, [sp, #0xc]
    8db0: f9400105     	ldr	x5, [x8]
    8db4: b9400906     	ldr	w6, [x8, #0x8]
    8db8: 90000004     	adrp	x4, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008db8:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_testing_0500_check_upper_bound
    8dbc: 91000084     	add	x4, x4, #0x0
		0000000000008dbc:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_testing_0500_check_upper_bound
    8dc0: 2a1403e2     	mov	w2, w20
    8dc4: 2a1303e3     	mov	w3, w19
    8dc8: 940000d7     	bl	0x9124 <_inline_copy_from_user+0x94>
		0000000000008dc8:  R_AARCH64_CALL26	syna_tcm_testing_check_frame_data
    8dcc: aa1603e9     	mov	x9, x22
    8dd0: 2a0003f5     	mov	w21, w0
    8dd4: f9402128     	ldr	x8, [x9, #0x40]
    8dd8: b5000068     	cbnz	x8, 0x8de4 <syna_tcm_testing_full_raw+0x180>
    8ddc: 2a1f03e0     	mov	w0, wzr
    8de0: 1400000b     	b	0x8e0c <syna_tcm_testing_full_raw+0x1a8>
    8de4: f94003e0     	ldr	x0, [sp]
    8de8: b9400fe1     	ldr	w1, [sp, #0xc]
    8dec: 90000004     	adrp	x4, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008dec:  R_AARCH64_ADR_PREL_PG_HI21	syna_tcm_testing_0500_check_lower_bound
    8df0: 91000084     	add	x4, x4, #0x0
		0000000000008df0:  R_AARCH64_ADD_ABS_LO12_NC	syna_tcm_testing_0500_check_lower_bound
    8df4: f9400105     	ldr	x5, [x8]
    8df8: b9400906     	ldr	w6, [x8, #0x8]
    8dfc: 2a1403e2     	mov	w2, w20
    8e00: 2a1303e3     	mov	w3, w19
    8e04: 940000c8     	bl	0x9124 <_inline_copy_from_user+0x94>
		0000000000008e04:  R_AARCH64_CALL26	syna_tcm_testing_check_frame_data
    8e08: aa1603e9     	mov	x9, x22
    8e0c: 0a0002a8     	and	w8, w21, w0
    8e10: 1280142a     	mov	w10, #-0xa2             // =-162
    8e14: 9000000b     	adrp	x11, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2278
    8e18: 9100016b     	add	x11, x11, #0x0
		0000000000008e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2278
    8e1c: 72000108     	ands	w8, w8, #0x1
    8e20: 39004128     	strb	w8, [x9, #0x10]
    8e24: 90000008     	adrp	x8, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x793e
    8e28: 91000108     	add	x8, x8, #0x0
		0000000000008e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x793e
    8e2c: 1a8a12f4     	csel	w20, w23, w10, ne
    8e30: 9a8b1102     	csel	x2, x8, x11, ne
    8e34: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6a
    8e38: 91000000     	add	x0, x0, #0x0
		0000000000008e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6a
    8e3c: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x66d4
    8e40: 91000021     	add	x1, x1, #0x0
		0000000000008e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x66d4
    8e44: 94000000     	bl	0x8e44 <syna_tcm_testing_full_raw+0x1e0>
		0000000000008e44:  R_AARCH64_CALL26	_printk
    8e48: 394103e2     	ldrb	w2, [sp, #0x40]
    8e4c: 35000122     	cbnz	w2, 0x8e70 <syna_tcm_testing_full_raw+0x20c>
    8e50: f94003f3     	ldr	x19, [sp]
    8e54: 94000000     	bl	0x8e54 <syna_tcm_testing_full_raw+0x1f0>
		0000000000008e54:  R_AARCH64_CALL26	syna_request_managed_device
    8e58: b4000180     	cbz	x0, 0x8e88 <syna_tcm_testing_full_raw+0x224>
    8e5c: b4000073     	cbz	x19, 0x8e68 <syna_tcm_testing_full_raw+0x204>
    8e60: aa1303e1     	mov	x1, x19
    8e64: 94000000     	bl	0x8e64 <syna_tcm_testing_full_raw+0x200>
		0000000000008e64:  R_AARCH64_CALL26	devm_kfree
    8e68: 2a1403e8     	mov	w8, w20
    8e6c: 17ffff8b     	b	0x8c98 <syna_tcm_testing_full_raw+0x34>
    8e70: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x33ce
    8e74: 91000000     	add	x0, x0, #0x0
		0000000000008e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x33ce
    8e78: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6bf0
    8e7c: 91000021     	add	x1, x1, #0x0
		0000000000008e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6bf0
    8e80: 94000000     	bl	0x8e80 <syna_tcm_testing_full_raw+0x21c>
		0000000000008e80:  R_AARCH64_CALL26	_printk
    8e84: 17fffff3     	b	0x8e50 <syna_tcm_testing_full_raw+0x1ec>
    8e88: 90000000     	adrp	x0, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xafda
    8e8c: 91000000     	add	x0, x0, #0x0
		0000000000008e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xafda
    8e90: 90000001     	adrp	x1, 0x8000 <syna_tcm_parse_touch_report+0x13ac>
		0000000000008e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa22c
    8e94: 91000021     	add	x1, x1, #0x0
		0000000000008e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa22c
    8e98: 94000000     	bl	0x8e98 <syna_tcm_testing_full_raw+0x234>
		0000000000008e98:  R_AARCH64_CALL26	_printk
    8e9c: 17fffff3     	b	0x8e68 <syna_tcm_testing_full_raw+0x204>
    8ea0: 94000000     	bl	0x8ea0 <syna_tcm_testing_full_raw+0x23c>
		0000000000008ea0:  R_AARCH64_CALL26	__stack_chk_fail
