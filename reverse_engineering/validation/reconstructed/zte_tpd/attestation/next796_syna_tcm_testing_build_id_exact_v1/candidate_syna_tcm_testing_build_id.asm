
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000029cb4 <syna_tcm_testing_build_id>:
   29cb4: d503233f     	paciasp
   29cb8: d10203ff     	sub	sp, sp, #0x80
   29cbc: a9047bfd     	stp	x29, x30, [sp, #0x40]
   29cc0: f9002bf7     	str	x23, [sp, #0x50]
   29cc4: a90657f6     	stp	x22, x21, [sp, #0x60]
   29cc8: a9074ff4     	stp	x20, x19, [sp, #0x70]
   29ccc: 910103fd     	add	x29, sp, #0x40
   29cd0: d5384108     	mrs	x8, SP_EL0
   29cd4: f9438908     	ldr	x8, [x8, #0x710]
   29cd8: f81f83a8     	stur	x8, [x29, #-0x8]
   29cdc: 12801408     	mov	w8, #-0xa1              // =-161
   29ce0: b4000040     	cbz	x0, 0x29ce8 <syna_tcm_testing_build_id+0x34>
   29ce4: b50001c1     	cbnz	x1, 0x29d1c <syna_tcm_testing_build_id+0x68>
   29ce8: d5384109     	mrs	x9, SP_EL0
   29cec: f9438929     	ldr	x9, [x9, #0x710]
   29cf0: f85f83aa     	ldur	x10, [x29, #-0x8]
   29cf4: eb0a013f     	cmp	x9, x10
   29cf8: 54001081     	b.ne	0x29f08 <syna_tcm_testing_build_id+0x254>
   29cfc: 2a0803e0     	mov	w0, w8
   29d00: a9474ff4     	ldp	x20, x19, [sp, #0x70]
   29d04: f9402bf7     	ldr	x23, [sp, #0x50]
   29d08: a94657f6     	ldp	x22, x21, [sp, #0x60]
   29d0c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   29d10: 910203ff     	add	sp, sp, #0x80
   29d14: d50323bf     	autiasp
   29d18: d65f03c0     	ret
   29d1c: 2a0203f6     	mov	w22, w2
   29d20: aa0103f4     	mov	x20, x1
   29d24: 910023e1     	add	x1, sp, #0x8
   29d28: 2a1f03e2     	mov	w2, wzr
   29d2c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   29d30: 910023f5     	add	x21, sp, #0x8
   29d34: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   29d38: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   29d3c: b90007ff     	str	wzr, [sp, #0x4]
   29d40: 94000000     	bl	0x29d40 <syna_tcm_testing_build_id+0x8c>
		0000000000029d40:  R_AARCH64_CALL26	syna_tcm_identify
   29d44: 36f80160     	tbz	w0, #0x1f, 0x29d70 <syna_tcm_testing_build_id+0xbc>
   29d48: 90000000     	adrp	x0, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17ce6
   29d4c: 91000000     	add	x0, x0, #0x0
		0000000000029d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17ce6
   29d50: 90000001     	adrp	x1, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1acb8
   29d54: 91000021     	add	x1, x1, #0x0
		0000000000029d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1acb8
   29d58: 94000000     	bl	0x29d58 <syna_tcm_testing_build_id+0xa4>
		0000000000029d58:  R_AARCH64_CALL26	_printk
   29d5c: 3900429f     	strb	wzr, [x20, #0x10]
   29d60: 12801453     	mov	w19, #-0xa3             // =-163
   29d64: 90000002     	adrp	x2, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18605
   29d68: 91000042     	add	x2, x2, #0x0
		0000000000029d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18605
   29d6c: 14000055     	b	0x29ec0 <syna_tcm_testing_build_id+0x20c>
   29d70: b841a3ea     	ldur	w10, [sp, #0x1a]
   29d74: f9406e88     	ldr	x8, [x20, #0xd8]
   29d78: aa1403e9     	mov	x9, x20
   29d7c: 2a0003f3     	mov	w19, w0
   29d80: b90007ea     	str	w10, [sp, #0x4]
   29d84: b4000288     	cbz	x8, 0x29dd4 <syna_tcm_testing_build_id+0x120>
   29d88: aa0803e0     	mov	x0, x8
   29d8c: 52800081     	mov	w1, #0x4                // =4
   29d90: 52800097     	mov	w23, #0x4               // =4
   29d94: 9400005e     	bl	0x29f0c <syna_tcm_buf_alloc>
   29d98: aa1403e9     	mov	x9, x20
   29d9c: 2a0003e8     	mov	w8, w0
   29da0: 2a1303e0     	mov	w0, w19
   29da4: 37f80188     	tbnz	w8, #0x1f, 0x29dd4 <syna_tcm_testing_build_id+0x120>
   29da8: f9406d28     	ldr	x8, [x9, #0xd8]
   29dac: 910013e2     	add	x2, sp, #0x4
   29db0: 52800083     	mov	w3, #0x4                // =4
   29db4: 52800084     	mov	w4, #0x4                // =4
   29db8: f9400100     	ldr	x0, [x8]
   29dbc: b9400901     	ldr	w1, [x8, #0x8]
   29dc0: 9400008d     	bl	0x29ff4 <syna_pal_mem_cpy>
   29dc4: f9406e88     	ldr	x8, [x20, #0xd8]
   29dc8: aa1403e9     	mov	x9, x20
   29dcc: 2a1303e0     	mov	w0, w19
   29dd0: b9000d17     	str	w23, [x8, #0xc]
   29dd4: f9407128     	ldr	x8, [x9, #0xe0]
   29dd8: b4000288     	cbz	x8, 0x29e28 <syna_tcm_testing_build_id+0x174>
   29ddc: aa0803e0     	mov	x0, x8
   29de0: 52800201     	mov	w1, #0x10               // =16
   29de4: 52800217     	mov	w23, #0x10              // =16
   29de8: 94000049     	bl	0x29f0c <syna_tcm_buf_alloc>
   29dec: aa1403e9     	mov	x9, x20
   29df0: 2a0003e8     	mov	w8, w0
   29df4: 2a1303e0     	mov	w0, w19
   29df8: 37f80188     	tbnz	w8, #0x1f, 0x29e28 <syna_tcm_testing_build_id+0x174>
   29dfc: f9407128     	ldr	x8, [x9, #0xe0]
   29e00: b27f02a2     	orr	x2, x21, #0x2
   29e04: 52800203     	mov	w3, #0x10               // =16
   29e08: 52800204     	mov	w4, #0x10               // =16
   29e0c: f9400100     	ldr	x0, [x8]
   29e10: b9400901     	ldr	w1, [x8, #0x8]
   29e14: 94000078     	bl	0x29ff4 <syna_pal_mem_cpy>
   29e18: f9407288     	ldr	x8, [x20, #0xe0]
   29e1c: aa1403e9     	mov	x9, x20
   29e20: 2a1303e0     	mov	w0, w19
   29e24: b9000d17     	str	w23, [x8, #0xc]
   29e28: 360000d6     	tbz	w22, #0x0, 0x29e40 <syna_tcm_testing_build_id+0x18c>
   29e2c: 52800028     	mov	w8, #0x1                // =1
   29e30: 90000002     	adrp	x2, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029e30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b510
   29e34: 91000042     	add	x2, x2, #0x0
		0000000000029e34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b510
   29e38: 39004128     	strb	w8, [x9, #0x10]
   29e3c: 14000021     	b	0x29ec0 <syna_tcm_testing_build_id+0x20c>
   29e40: f9401d28     	ldr	x8, [x9, #0x38]
   29e44: b4000128     	cbz	x8, 0x29e68 <syna_tcm_testing_build_id+0x1b4>
   29e48: b940090a     	ldr	w10, [x8, #0x8]
   29e4c: 7100115f     	cmp	w10, #0x4
   29e50: 540000c3     	b.lo	0x29e68 <syna_tcm_testing_build_id+0x1b4>
   29e54: f9400108     	ldr	x8, [x8]
   29e58: b94007e2     	ldr	w2, [sp, #0x4]
   29e5c: b9400103     	ldr	w3, [x8]
   29e60: 6b02007f     	cmp	w3, w2
   29e64: 540003c1     	b.ne	0x29edc <syna_tcm_testing_build_id+0x228>
   29e68: 52800036     	mov	w22, #0x1               // =1
   29e6c: f9402128     	ldr	x8, [x9, #0x40]
   29e70: b4000068     	cbz	x8, 0x29e7c <syna_tcm_testing_build_id+0x1c8>
   29e74: b9400902     	ldr	w2, [x8, #0x8]
   29e78: 35000062     	cbnz	w2, 0x29e84 <syna_tcm_testing_build_id+0x1d0>
   29e7c: 52800028     	mov	w8, #0x1                // =1
   29e80: 14000007     	b	0x29e9c <syna_tcm_testing_build_id+0x1e8>
   29e84: f9400101     	ldr	x1, [x8]
   29e88: b27f02a0     	orr	x0, x21, #0x2
   29e8c: 94000074     	bl	0x2a05c <syna_tcm_testing_0001_check_device_id>
   29e90: aa1403e9     	mov	x9, x20
   29e94: 2a0003e8     	mov	w8, w0
   29e98: 2a1303e0     	mov	w0, w19
   29e9c: 6a0802c8     	ands	w8, w22, w8
   29ea0: 1280142a     	mov	w10, #-0xa2             // =-162
   29ea4: 9000000b     	adrp	x11, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18605
   29ea8: 9100016b     	add	x11, x11, #0x0
		0000000000029ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18605
   29eac: 39004128     	strb	w8, [x9, #0x10]
   29eb0: 90000008     	adrp	x8, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029eb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b510
   29eb4: 91000108     	add	x8, x8, #0x0
		0000000000029eb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b510
   29eb8: 1a8a1013     	csel	w19, w0, w10, ne
   29ebc: 9a8b1102     	csel	x2, x8, x11, ne
   29ec0: 90000000     	adrp	x0, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x182de
   29ec4: 91000000     	add	x0, x0, #0x0
		0000000000029ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x182de
   29ec8: 90000001     	adrp	x1, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1acb8
   29ecc: 91000021     	add	x1, x1, #0x0
		0000000000029ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1acb8
   29ed0: 94000000     	bl	0x29ed0 <syna_tcm_testing_build_id+0x21c>
		0000000000029ed0:  R_AARCH64_CALL26	_printk
   29ed4: 2a1303e8     	mov	w8, w19
   29ed8: 17ffff84     	b	0x29ce8 <syna_tcm_testing_build_id+0x34>
   29edc: 90000000     	adrp	x0, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19257
   29ee0: 91000000     	add	x0, x0, #0x0
		0000000000029ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19257
   29ee4: 90000001     	adrp	x1, 0x29000 <syna_sysfs_get_delta_show+0x2c0>
		0000000000029ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x187d0
   29ee8: 91000021     	add	x1, x1, #0x0
		0000000000029ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x187d0
   29eec: 94000000     	bl	0x29eec <syna_tcm_testing_build_id+0x238>
		0000000000029eec:  R_AARCH64_CALL26	_printk
   29ef0: aa1403e9     	mov	x9, x20
   29ef4: 2a1303e0     	mov	w0, w19
   29ef8: 2a1f03f6     	mov	w22, wzr
   29efc: f9402128     	ldr	x8, [x9, #0x40]
   29f00: b5fffba8     	cbnz	x8, 0x29e74 <syna_tcm_testing_build_id+0x1c0>
   29f04: 17ffffde     	b	0x29e7c <syna_tcm_testing_build_id+0x1c8>
   29f08: 94000000     	bl	0x29f08 <syna_tcm_testing_build_id+0x254>
		0000000000029f08:  R_AARCH64_CALL26	__stack_chk_fail
