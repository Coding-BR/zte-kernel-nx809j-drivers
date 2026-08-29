
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016f24 <syna_tcm_testing_config_id>:
   16f24: d503233f     	paciasp
   16f28: d101c3ff     	sub	sp, sp, #0x70
   16f2c: a9047bfd     	stp	x29, x30, [sp, #0x40]
   16f30: a90557f6     	stp	x22, x21, [sp, #0x50]
   16f34: a9064ff4     	stp	x20, x19, [sp, #0x60]
   16f38: 910103fd     	add	x29, sp, #0x40
   16f3c: d5384108     	mrs	x8, SP_EL0
   16f40: f9438908     	ldr	x8, [x8, #0x710]
   16f44: f81f83a8     	stur	x8, [x29, #-0x8]
   16f48: 12801408     	mov	w8, #-0xa1              // =-161
   16f4c: b4000040     	cbz	x0, 0x16f54 <syna_tcm_testing_config_id+0x30>
   16f50: b50001a1     	cbnz	x1, 0x16f84 <syna_tcm_testing_config_id+0x60>
   16f54: d5384109     	mrs	x9, SP_EL0
   16f58: f9438929     	ldr	x9, [x9, #0x710]
   16f5c: f85f83aa     	ldur	x10, [x29, #-0x8]
   16f60: eb0a013f     	cmp	x9, x10
   16f64: 54000a81     	b.ne	0x170b4 <syna_tcm_testing_config_id+0x190>
   16f68: 2a0803e0     	mov	w0, w8
   16f6c: a9464ff4     	ldp	x20, x19, [sp, #0x60]
   16f70: a94557f6     	ldp	x22, x21, [sp, #0x50]
   16f74: a9447bfd     	ldp	x29, x30, [sp, #0x40]
   16f78: 9101c3ff     	add	sp, sp, #0x70
   16f7c: d50323bf     	autiasp
   16f80: d65f03c0     	ret
   16f84: 2a0203f5     	mov	w21, w2
   16f88: aa0103f3     	mov	x19, x1
   16f8c: 910023e1     	add	x1, sp, #0x8
   16f90: 2a1f03e2     	mov	w2, wzr
   16f94: a902ffff     	stp	xzr, xzr, [sp, #0x28]
   16f98: 910023f4     	add	x20, sp, #0x8
   16f9c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
   16fa0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
   16fa4: 94000000     	bl	0x16fa4 <syna_tcm_testing_config_id+0x80>
		0000000000016fa4:  R_AARCH64_CALL26	syna_tcm_get_app_info
   16fa8: 36f80160     	tbz	w0, #0x1f, 0x16fd4 <syna_tcm_testing_config_id+0xb0>
   16fac: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016fac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c9
   16fb0: 91000000     	add	x0, x0, #0x0
		0000000000016fb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c9
   16fb4: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016fb4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf72
   16fb8: 91000021     	add	x1, x1, #0x0
		0000000000016fb8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf72
   16fbc: 94000000     	bl	0x16fbc <syna_tcm_testing_config_id+0x98>
		0000000000016fbc:  R_AARCH64_CALL26	_printk
   16fc0: 3900427f     	strb	wzr, [x19, #0x10]
   16fc4: 12801453     	mov	w19, #-0xa3             // =-163
   16fc8: 90000002     	adrp	x2, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   16fcc: 91000042     	add	x2, x2, #0x0
		0000000000016fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   16fd0: 14000032     	b	0x17098 <syna_tcm_testing_config_id+0x174>
   16fd4: f9406e68     	ldr	x8, [x19, #0xd8]
   16fd8: aa1303e9     	mov	x9, x19
   16fdc: b4000248     	cbz	x8, 0x17024 <syna_tcm_testing_config_id+0x100>
   16fe0: 2a0003f6     	mov	w22, w0
   16fe4: aa0803e0     	mov	x0, x8
   16fe8: 94000034     	bl	0x170b8 <syna_tcm_buf_alloc>
   16fec: aa1303e9     	mov	x9, x19
   16ff0: 2a0003e8     	mov	w8, w0
   16ff4: 2a1603e0     	mov	w0, w22
   16ff8: 37f80168     	tbnz	w8, #0x1f, 0x17024 <syna_tcm_testing_config_id+0x100>
   16ffc: f9406d28     	ldr	x8, [x9, #0xd8]
   17000: 91004282     	add	x2, x20, #0x10
   17004: f9400100     	ldr	x0, [x8]
   17008: b9400901     	ldr	w1, [x8, #0x8]
   1700c: 94000062     	bl	0x17194 <syna_pal_mem_cpy>
   17010: f9406e68     	ldr	x8, [x19, #0xd8]
   17014: aa1303e9     	mov	x9, x19
   17018: 2a1603e0     	mov	w0, w22
   1701c: 5280020a     	mov	w10, #0x10              // =16
   17020: b9000d0a     	str	w10, [x8, #0xc]
   17024: 360000f5     	tbz	w21, #0x0, 0x17040 <syna_tcm_testing_config_id+0x11c>
   17028: 52800028     	mov	w8, #0x1                // =1
   1702c: 2a0003f3     	mov	w19, w0
   17030: 90000002     	adrp	x2, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017030:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   17034: 91000042     	add	x2, x2, #0x0
		0000000000017034:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   17038: 39004128     	strb	w8, [x9, #0x10]
   1703c: 14000017     	b	0x17098 <syna_tcm_testing_config_id+0x174>
   17040: f9401d28     	ldr	x8, [x9, #0x38]
   17044: b4000188     	cbz	x8, 0x17074 <syna_tcm_testing_config_id+0x150>
   17048: b9400902     	ldr	w2, [x8, #0x8]
   1704c: 34000142     	cbz	w2, 0x17074 <syna_tcm_testing_config_id+0x150>
   17050: f9400101     	ldr	x1, [x8]
   17054: 2a0003f5     	mov	w21, w0
   17058: 91004280     	add	x0, x20, #0x10
   1705c: 94000063     	bl	0x171e8 <syna_tcm_testing_0002_check_config_id>
   17060: 2a0003e8     	mov	w8, w0
   17064: aa1303e9     	mov	x9, x19
   17068: 2a1503e0     	mov	w0, w21
   1706c: 12000108     	and	w8, w8, #0x1
   17070: 39004268     	strb	w8, [x19, #0x10]
   17074: 39404128     	ldrb	w8, [x9, #0x10]
   17078: 12801429     	mov	w9, #-0xa2              // =-162
   1707c: 7100011f     	cmp	w8, #0x0
   17080: 90000008     	adrp	x8, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2200
   17084: 91000108     	add	x8, x8, #0x0
		0000000000017084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2200
   17088: 1a891013     	csel	w19, w0, w9, ne
   1708c: 90000009     	adrp	x9, 0x17000 <syna_tcm_testing_config_id+0xdc>
		000000000001708c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x775d
   17090: 91000129     	add	x9, x9, #0x0
		0000000000017090:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x775d
   17094: 9a881122     	csel	x2, x9, x8, ne
   17098: 90000000     	adrp	x0, 0x17000 <syna_tcm_testing_config_id+0xdc>
		0000000000017098:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b0a
   1709c: 91000000     	add	x0, x0, #0x0
		000000000001709c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b0a
   170a0: 90000001     	adrp	x1, 0x17000 <syna_tcm_testing_config_id+0xdc>
		00000000000170a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf72
   170a4: 91000021     	add	x1, x1, #0x0
		00000000000170a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf72
   170a8: 94000000     	bl	0x170a8 <syna_tcm_testing_config_id+0x184>
		00000000000170a8:  R_AARCH64_CALL26	_printk
   170ac: 2a1303e8     	mov	w8, w19
   170b0: 17ffffa9     	b	0x16f54 <syna_tcm_testing_config_id+0x30>
   170b4: 94000000     	bl	0x170b4 <syna_tcm_testing_config_id+0x190>
		00000000000170b4:  R_AARCH64_CALL26	__stack_chk_fail
