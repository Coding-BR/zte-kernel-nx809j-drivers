
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001798c <syna_tcm_testing_full_raw>:
   1798c: d503233f     	paciasp
   17990: d10243ff     	sub	sp, sp, #0x90
   17994: a9057bfd     	stp	x29, x30, [sp, #0x50]
   17998: f90033f7     	str	x23, [sp, #0x60]
   1799c: a90757f6     	stp	x22, x21, [sp, #0x70]
   179a0: a9084ff4     	stp	x20, x19, [sp, #0x80]
   179a4: 910143fd     	add	x29, sp, #0x50
   179a8: d5384108     	mrs	x8, SP_EL0
   179ac: f9438908     	ldr	x8, [x8, #0x710]
   179b0: f81f83a8     	stur	x8, [x29, #-0x8]
   179b4: 12801408     	mov	w8, #-0xa1              // =-161
   179b8: b4000040     	cbz	x0, 0x179c0 <syna_tcm_testing_full_raw+0x34>
   179bc: b50001c1     	cbnz	x1, 0x179f4 <syna_tcm_testing_full_raw+0x68>
   179c0: d5384109     	mrs	x9, SP_EL0
   179c4: f9438929     	ldr	x9, [x9, #0x710]
   179c8: f85f83aa     	ldur	x10, [x29, #-0x8]
   179cc: eb0a013f     	cmp	x9, x10
   179d0: 54000fc1     	b.ne	0x17bc8 <syna_tcm_testing_full_raw+0x23c>
   179d4: 2a0803e0     	mov	w0, w8
   179d8: a9484ff4     	ldp	x20, x19, [sp, #0x80]
   179dc: f94033f7     	ldr	x23, [sp, #0x60]
   179e0: a94757f6     	ldp	x22, x21, [sp, #0x70]
   179e4: a9457bfd     	ldp	x29, x30, [sp, #0x50]
   179e8: 910243ff     	add	sp, sp, #0x90
   179ec: d50323bf     	autiasp
   179f0: d65f03c0     	ret
   179f4: 910003e8     	mov	x8, sp
   179f8: 2a0203f7     	mov	w23, w2
   179fc: aa0103f6     	mov	x22, x1
   17a00: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017a00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad58
   17a04: 91000021     	add	x1, x1, #0x0
		0000000000017a04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad58
   17a08: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017a08:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x961
   17a0c: 91000042     	add	x2, x2, #0x0
		0000000000017a0c:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x961
   17a10: aa0003f5     	mov	x21, x0
   17a14: 91004100     	add	x0, x8, #0x10
   17a18: a903ffff     	stp	xzr, xzr, [sp, #0x38]
   17a1c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   17a20: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   17a24: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   17a28: f90003ff     	str	xzr, [sp]
   17a2c: 94000000     	bl	0x17a2c <syna_tcm_testing_full_raw+0xa0>
		0000000000017a2c:  R_AARCH64_CALL26	__mutex_init
   17a30: 2943ceb4     	ldp	w20, w19, [x21, #0x1c]
   17a34: 910003e2     	mov	x2, sp
   17a38: aa1503e0     	mov	x0, x21
   17a3c: 528000a1     	mov	w1, #0x5                // =5
   17a40: 2a1f03e3     	mov	w3, wzr
   17a44: 94000000     	bl	0x17a44 <syna_tcm_testing_full_raw+0xb8>
		0000000000017a44:  R_AARCH64_CALL26	syna_tcm_run_production_test
   17a48: 36f80180     	tbz	w0, #0x1f, 0x17a78 <syna_tcm_testing_full_raw+0xec>
   17a4c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017a4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa0f2
   17a50: 91000000     	add	x0, x0, #0x0
		0000000000017a50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa0f2
   17a54: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017a54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x653c
   17a58: 91000021     	add	x1, x1, #0x0
		0000000000017a58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x653c
   17a5c: 528000a2     	mov	w2, #0x5                // =5
   17a60: 94000000     	bl	0x17a60 <syna_tcm_testing_full_raw+0xd4>
		0000000000017a60:  R_AARCH64_CALL26	_printk
   17a64: 390042df     	strb	wzr, [x22, #0x10]
   17a68: 12801454     	mov	w20, #-0xa3             // =-163
   17a6c: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017a6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   17a70: 91000042     	add	x2, x2, #0x0
		0000000000017a70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   17a74: 1400003a     	b	0x17b5c <syna_tcm_testing_full_raw+0x1d0>
   17a78: f9406ec8     	ldr	x8, [x22, #0xd8]
   17a7c: aa1603e9     	mov	x9, x22
   17a80: b40000e8     	cbz	x8, 0x17a9c <syna_tcm_testing_full_raw+0x110>
   17a84: 910003e1     	mov	x1, sp
   17a88: 2a0003f5     	mov	w21, w0
   17a8c: aa0803e0     	mov	x0, x8
   17a90: 9400004f     	bl	0x17bcc <syna_tcm_buf_copy>
   17a94: aa1603e9     	mov	x9, x22
   17a98: 2a1503e0     	mov	w0, w21
   17a9c: 360000f7     	tbz	w23, #0x0, 0x17ab8 <syna_tcm_testing_full_raw+0x12c>
   17aa0: 52800028     	mov	w8, #0x1                // =1
   17aa4: 2a0003f4     	mov	w20, w0
   17aa8: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017aa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   17aac: 91000042     	add	x2, x2, #0x0
		0000000000017aac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   17ab0: 39004128     	strb	w8, [x9, #0x10]
   17ab4: 1400002a     	b	0x17b5c <syna_tcm_testing_full_raw+0x1d0>
   17ab8: f9401d28     	ldr	x8, [x9, #0x38]
   17abc: b5000088     	cbnz	x8, 0x17acc <syna_tcm_testing_full_raw+0x140>
   17ac0: 2a0003f7     	mov	w23, w0
   17ac4: 2a1f03f5     	mov	w21, wzr
   17ac8: 1400000d     	b	0x17afc <syna_tcm_testing_full_raw+0x170>
   17acc: 2a0003f7     	mov	w23, w0
   17ad0: f94003e0     	ldr	x0, [sp]
   17ad4: b9400fe1     	ldr	w1, [sp, #0xc]
   17ad8: f9400105     	ldr	x5, [x8]
   17adc: b9400906     	ldr	w6, [x8, #0x8]
   17ae0: 90000004     	adrp	x4, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017ae0:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x17fbc
   17ae4: 91000084     	add	x4, x4, #0x0
		0000000000017ae4:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x17fbc
   17ae8: 2a1403e2     	mov	w2, w20
   17aec: 2a1303e3     	mov	w3, w19
   17af0: 940000d7     	bl	0x17e4c <syna_tcm_testing_check_frame_data>
   17af4: aa1603e9     	mov	x9, x22
   17af8: 2a0003f5     	mov	w21, w0
   17afc: f9402128     	ldr	x8, [x9, #0x40]
   17b00: b5000068     	cbnz	x8, 0x17b0c <syna_tcm_testing_full_raw+0x180>
   17b04: 2a1f03e0     	mov	w0, wzr
   17b08: 1400000b     	b	0x17b34 <syna_tcm_testing_full_raw+0x1a8>
   17b0c: f94003e0     	ldr	x0, [sp]
   17b10: b9400fe1     	ldr	w1, [sp, #0xc]
   17b14: 90000004     	adrp	x4, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017b14:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x18024
   17b18: 91000084     	add	x4, x4, #0x0
		0000000000017b18:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x18024
   17b1c: f9400105     	ldr	x5, [x8]
   17b20: b9400906     	ldr	w6, [x8, #0x8]
   17b24: 2a1403e2     	mov	w2, w20
   17b28: 2a1303e3     	mov	w3, w19
   17b2c: 940000c8     	bl	0x17e4c <syna_tcm_testing_check_frame_data>
   17b30: aa1603e9     	mov	x9, x22
   17b34: 0a0002a8     	and	w8, w21, w0
   17b38: 1280142a     	mov	w10, #-0xa2             // =-162
   17b3c: 9000000b     	adrp	x11, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017b3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   17b40: 9100016b     	add	x11, x11, #0x0
		0000000000017b40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   17b44: 72000108     	ands	w8, w8, #0x1
   17b48: 39004128     	strb	w8, [x9, #0x10]
   17b4c: 90000008     	adrp	x8, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017b4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   17b50: 91000108     	add	x8, x8, #0x0
		0000000000017b50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   17b54: 1a8a12f4     	csel	w20, w23, w10, ne
   17b58: 9a8b1102     	csel	x2, x8, x11, ne
   17b5c: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017b5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0a
   17b60: 91000000     	add	x0, x0, #0x0
		0000000000017b60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0a
   17b64: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x653c
   17b68: 91000021     	add	x1, x1, #0x0
		0000000000017b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x653c
   17b6c: 94000000     	bl	0x17b6c <syna_tcm_testing_full_raw+0x1e0>
		0000000000017b6c:  R_AARCH64_CALL26	_printk
   17b70: 394103e2     	ldrb	w2, [sp, #0x40]
   17b74: 35000122     	cbnz	w2, 0x17b98 <syna_tcm_testing_full_raw+0x20c>
   17b78: f94003f3     	ldr	x19, [sp]
   17b7c: 94000000     	bl	0x17b7c <syna_tcm_testing_full_raw+0x1f0>
		0000000000017b7c:  R_AARCH64_CALL26	syna_request_managed_device
   17b80: b4000180     	cbz	x0, 0x17bb0 <syna_tcm_testing_full_raw+0x224>
   17b84: b4000073     	cbz	x19, 0x17b90 <syna_tcm_testing_full_raw+0x204>
   17b88: aa1303e1     	mov	x1, x19
   17b8c: 94000000     	bl	0x17b8c <syna_tcm_testing_full_raw+0x200>
		0000000000017b8c:  R_AARCH64_CALL26	devm_kfree
   17b90: 2a1403e8     	mov	w8, w20
   17b94: 17ffff8b     	b	0x179c0 <syna_tcm_testing_full_raw+0x34>
   17b98: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3313
   17b9c: 91000000     	add	x0, x0, #0x0
		0000000000017b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3313
   17ba0: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017ba0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a45
   17ba4: 91000021     	add	x1, x1, #0x0
		0000000000017ba4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a45
   17ba8: 94000000     	bl	0x17ba8 <syna_tcm_testing_full_raw+0x21c>
		0000000000017ba8:  R_AARCH64_CALL26	_printk
   17bac: 17fffff3     	b	0x17b78 <syna_tcm_testing_full_raw+0x1ec>
   17bb0: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017bb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xad32
   17bb4: 91000000     	add	x0, x0, #0x0
		0000000000017bb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xad32
   17bb8: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9fae
   17bbc: 91000021     	add	x1, x1, #0x0
		0000000000017bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9fae
   17bc0: 94000000     	bl	0x17bc0 <syna_tcm_testing_full_raw+0x234>
		0000000000017bc0:  R_AARCH64_CALL26	_printk
   17bc4: 17fffff3     	b	0x17b90 <syna_tcm_testing_full_raw+0x204>
   17bc8: 94000000     	bl	0x17bc8 <syna_tcm_testing_full_raw+0x23c>
		0000000000017bc8:  R_AARCH64_CALL26	__stack_chk_fail
