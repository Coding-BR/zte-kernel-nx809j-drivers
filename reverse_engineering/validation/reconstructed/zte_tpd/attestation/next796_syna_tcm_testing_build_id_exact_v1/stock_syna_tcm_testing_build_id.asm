
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016ab4 <syna_tcm_testing_build_id>:
   16ab4: d503233f     	paciasp
   16ab8: d10203ff     	sub	sp, sp, #0x80
   16abc: a9047bfd     	stp	x29, x30, [sp, #0x40]
   16ac0: f9002bf7     	str	x23, [sp, #0x50]
   16ac4: a90657f6     	stp	x22, x21, [sp, #0x60]
   16ac8: a9074ff4     	stp	x20, x19, [sp, #0x70]
   16acc: 910103fd     	add	x29, sp, #0x40
   16ad0: d5384108     	mrs	x8, SP_EL0
   16ad4: f9438908     	ldr	x8, [x8, #0x710]
   16ad8: f81f83a8     	stur	x8, [x29, #-0x8]
   16adc: 12801408     	mov	w8, #-0xa1              // =-161
   16ae0: b4000040     	cbz	x0, 0x16ae8 <syna_tcm_testing_build_id+0x34>
   16ae4: b50001c1     	cbnz	x1, 0x16b1c <syna_tcm_testing_build_id+0x68>
   16ae8: d5384109     	mrs	x9, SP_EL0
   16aec: f9438929     	ldr	x9, [x9, #0x710]
   16af0: f85f83aa     	ldur	x10, [x29, #-0x8]
   16af4: eb0a013f     	cmp	x9, x10
   16af8: 54001081     	b.ne	0x16d08 <syna_tcm_testing_build_id+0x254>
   16afc: 2a0803e0     	mov	w0, w8
   16b00: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   16b04: f9402bf7     	ldr	x23, [sp, #0x50]
   16b08: a94657f6     	ldp	x22, x21, [sp, #0x60]
   16b0c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   16b10: 910203ff     	add	sp, sp, #0x80
   16b14: d50323bf     	autiasp
   16b18: d65f03c0     	ret
   16b1c: 2a0203f6     	mov	w22, w2
   16b20: aa0103f4     	mov	x20, x1
   16b24: 910023e1     	add	x1, sp, #0x8
   16b28: 2a1f03e2     	mov	w2, wzr
   16b2c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   16b30: 910023f5     	add	x21, sp, #0x8
   16b34: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   16b38: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   16b3c: b90007ff     	str	wzr, [sp, #0x4]
   16b40: 94000000     	bl	0x16b40 <syna_tcm_testing_build_id+0x8c>
		0000000000016b40:  R_AARCH64_CALL26	syna_tcm_identify
   16b44: 36f80160     	tbz	w0, #0x1f, 0x16b70 <syna_tcm_testing_build_id+0xbc>
   16b48: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016b48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf48
   16b4c: 91000000     	add	x0, x0, #0x0
		0000000000016b4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf48
   16b50: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016b50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6522
   16b54: 91000021     	add	x1, x1, #0x0
		0000000000016b54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6522
   16b58: 94000000     	bl	0x16b58 <syna_tcm_testing_build_id+0xa4>
		0000000000016b58:  R_AARCH64_CALL26	_printk
   16b5c: 3900429f     	strb	wzr, [x20, #0x10]
   16b60: 12801453     	mov	w19, #-0xa3             // =-163
   16b64: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   16b68: 91000042     	add	x2, x2, #0x0
		0000000000016b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   16b6c: 14000055     	b	0x16cc0 <syna_tcm_testing_build_id+0x20c>
   16b70: b841a3ea     	ldur	w10, [sp, #0x1a]
   16b74: f9406e88     	ldr	x8, [x20, #0xd8]
   16b78: aa1403e9     	mov	x9, x20
   16b7c: 2a0003f3     	mov	w19, w0
   16b80: b90007ea     	str	w10, [sp, #0x4]
   16b84: b4000288     	cbz	x8, 0x16bd4 <syna_tcm_testing_build_id+0x120>
   16b88: aa0803e0     	mov	x0, x8
   16b8c: 52800081     	mov	w1, #0x4                // =4
   16b90: 52800097     	mov	w23, #0x4               // =4
   16b94: 9400005e     	bl	0x16d0c <syna_tcm_buf_alloc>
   16b98: aa1403e9     	mov	x9, x20
   16b9c: 2a0003e8     	mov	w8, w0
   16ba0: 2a1303e0     	mov	w0, w19
   16ba4: 37f80188     	tbnz	w8, #0x1f, 0x16bd4 <syna_tcm_testing_build_id+0x120>
   16ba8: f9406d28     	ldr	x8, [x9, #0xd8]
   16bac: 910013e2     	add	x2, sp, #0x4
   16bb0: 52800083     	mov	w3, #0x4                // =4
   16bb4: 52800084     	mov	w4, #0x4                // =4
   16bb8: f9400100     	ldr	x0, [x8]
   16bbc: b9400901     	ldr	w1, [x8, #0x8]
   16bc0: 9400008d     	bl	0x16df4 <syna_pal_mem_cpy>
   16bc4: f9406e88     	ldr	x8, [x20, #0xd8]
   16bc8: aa1403e9     	mov	x9, x20
   16bcc: 2a1303e0     	mov	w0, w19
   16bd0: b9000d17     	str	w23, [x8, #0xc]
   16bd4: f9407128     	ldr	x8, [x9, #0xe0]
   16bd8: b4000288     	cbz	x8, 0x16c28 <syna_tcm_testing_build_id+0x174>
   16bdc: aa0803e0     	mov	x0, x8
   16be0: 52800201     	mov	w1, #0x10               // =16
   16be4: 52800217     	mov	w23, #0x10              // =16
   16be8: 94000049     	bl	0x16d0c <syna_tcm_buf_alloc>
   16bec: aa1403e9     	mov	x9, x20
   16bf0: 2a0003e8     	mov	w8, w0
   16bf4: 2a1303e0     	mov	w0, w19
   16bf8: 37f80188     	tbnz	w8, #0x1f, 0x16c28 <syna_tcm_testing_build_id+0x174>
   16bfc: f9407128     	ldr	x8, [x9, #0xe0]
   16c00: b27f02a2     	orr	x2, x21, #0x2
   16c04: 52800203     	mov	w3, #0x10               // =16
   16c08: 52800204     	mov	w4, #0x10               // =16
   16c0c: f9400100     	ldr	x0, [x8]
   16c10: b9400901     	ldr	w1, [x8, #0x8]
   16c14: 94000078     	bl	0x16df4 <syna_pal_mem_cpy>
   16c18: f9407288     	ldr	x8, [x20, #0xe0]
   16c1c: aa1403e9     	mov	x9, x20
   16c20: 2a1303e0     	mov	w0, w19
   16c24: b9000d17     	str	w23, [x8, #0xc]
   16c28: 360000d6     	tbz	w22, #0x0, 0x16c40 <syna_tcm_testing_build_id+0x18c>
   16c2c: 52800028     	mov	w8, #0x1                // =1
   16c30: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   16c34: 91000042     	add	x2, x2, #0x0
		0000000000016c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   16c38: 39004128     	strb	w8, [x9, #0x10]
   16c3c: 14000021     	b	0x16cc0 <syna_tcm_testing_build_id+0x20c>
   16c40: f9401d28     	ldr	x8, [x9, #0x38]
   16c44: b4000128     	cbz	x8, 0x16c68 <syna_tcm_testing_build_id+0x1b4>
   16c48: b940090a     	ldr	w10, [x8, #0x8]
   16c4c: 7100115f     	cmp	w10, #0x4
   16c50: 540000c3     	b.lo	0x16c68 <syna_tcm_testing_build_id+0x1b4>
   16c54: f9400108     	ldr	x8, [x8]
   16c58: b94007e2     	ldr	w2, [sp, #0x4]
   16c5c: b9400103     	ldr	w3, [x8]
   16c60: 6b02007f     	cmp	w3, w2
   16c64: 540003c1     	b.ne	0x16cdc <syna_tcm_testing_build_id+0x228>
   16c68: 52800036     	mov	w22, #0x1               // =1
   16c6c: f9402128     	ldr	x8, [x9, #0x40]
   16c70: b4000068     	cbz	x8, 0x16c7c <syna_tcm_testing_build_id+0x1c8>
   16c74: b9400902     	ldr	w2, [x8, #0x8]
   16c78: 35000062     	cbnz	w2, 0x16c84 <syna_tcm_testing_build_id+0x1d0>
   16c7c: 52800028     	mov	w8, #0x1                // =1
   16c80: 14000007     	b	0x16c9c <syna_tcm_testing_build_id+0x1e8>
   16c84: f9400101     	ldr	x1, [x8]
   16c88: b27f02a0     	orr	x0, x21, #0x2
   16c8c: 94000074     	bl	0x16e5c <syna_tcm_testing_0001_check_device_id>
   16c90: aa1403e9     	mov	x9, x20
   16c94: 2a0003e8     	mov	w8, w0
   16c98: 2a1303e0     	mov	w0, w19
   16c9c: 6a0802c8     	ands	w8, w22, w8
   16ca0: 1280142a     	mov	w10, #-0xa2             // =-162
   16ca4: 9000000b     	adrp	x11, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016ca4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   16ca8: 9100016b     	add	x11, x11, #0x0
		0000000000016ca8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   16cac: 39004128     	strb	w8, [x9, #0x10]
   16cb0: 90000008     	adrp	x8, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   16cb4: 91000108     	add	x8, x8, #0x0
		0000000000016cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   16cb8: 1a8a1013     	csel	w19, w0, w10, ne
   16cbc: 9a8b1102     	csel	x2, x8, x11, ne
   16cc0: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0a
   16cc4: 91000000     	add	x0, x0, #0x0
		0000000000016cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0a
   16cc8: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016cc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6522
   16ccc: 91000021     	add	x1, x1, #0x0
		0000000000016ccc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6522
   16cd0: 94000000     	bl	0x16cd0 <syna_tcm_testing_build_id+0x21c>
		0000000000016cd0:  R_AARCH64_CALL26	_printk
   16cd4: 2a1303e8     	mov	w8, w19
   16cd8: 17ffff84     	b	0x16ae8 <syna_tcm_testing_build_id+0x34>
   16cdc: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x345c
   16ce0: 91000000     	add	x0, x0, #0x0
		0000000000016ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x345c
   16ce4: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x223b
   16ce8: 91000021     	add	x1, x1, #0x0
		0000000000016ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x223b
   16cec: 94000000     	bl	0x16cec <syna_tcm_testing_build_id+0x238>
		0000000000016cec:  R_AARCH64_CALL26	_printk
   16cf0: aa1403e9     	mov	x9, x20
   16cf4: 2a1303e0     	mov	w0, w19
   16cf8: 2a1f03f6     	mov	w22, wzr
   16cfc: f9402128     	ldr	x8, [x9, #0x40]
   16d00: b5fffba8     	cbnz	x8, 0x16c74 <syna_tcm_testing_build_id+0x1c0>
   16d04: 17ffffde     	b	0x16c7c <syna_tcm_testing_build_id+0x1c8>
   16d08: 94000000     	bl	0x16d08 <syna_tcm_testing_build_id+0x254>
		0000000000016d08:  R_AARCH64_CALL26	__stack_chk_fail
