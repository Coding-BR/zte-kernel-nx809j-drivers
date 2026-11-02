
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f068 <syna_tcm_testing_config_id>:
    f068: d503233f     	paciasp
    f06c: d101c3ff     	sub	sp, sp, #0x70
    f070: a9047bfd     	stp	x29, x30, [sp, #0x40]
    f074: a90557f6     	stp	x22, x21, [sp, #0x50]
    f078: a9064ff4     	stp	x20, x19, [sp, #0x60]
    f07c: 910103fd     	add	x29, sp, #0x40
    f080: d5384108     	mrs	x8, SP_EL0
    f084: f9438908     	ldr	x8, [x8, #0x710]
    f088: f81f83a8     	stur	x8, [x29, #-0x8]
    f08c: 12801408     	mov	w8, #-0xa1              // =-161
    f090: b4000040     	cbz	x0, 0xf098 <syna_tcm_testing_config_id+0x30>
    f094: b50001a1     	cbnz	x1, 0xf0c8 <syna_tcm_testing_config_id+0x60>
    f098: d5384109     	mrs	x9, SP_EL0
    f09c: f9438929     	ldr	x9, [x9, #0x710]
    f0a0: f85f83aa     	ldur	x10, [x29, #-0x8]
    f0a4: eb0a013f     	cmp	x9, x10
    f0a8: 54000a81     	b.ne	0xf1f8 <syna_tcm_testing_config_id+0x190>
    f0ac: 2a0803e0     	mov	w0, w8
    f0b0: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    f0b4: a94557f6     	ldp	x22, x21, [sp, #0x50]
    f0b8: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    f0bc: 9101c3ff     	add	sp, sp, #0x70
    f0c0: d50323bf     	autiasp
    f0c4: d65f03c0     	ret
    f0c8: 2a0203f5     	mov	w21, w2
    f0cc: aa0103f3     	mov	x19, x1
    f0d0: 910023e1     	add	x1, sp, #0x8
    f0d4: 2a1f03e2     	mov	w2, wzr
    f0d8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    f0dc: 910023f4     	add	x20, sp, #0x8
    f0e0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    f0e4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    f0e8: 94000000     	bl	0xf0e8 <syna_tcm_testing_config_id+0x80>
		000000000000f0e8:  R_AARCH64_CALL26	syna_tcm_get_app_info
    f0ec: 36f80160     	tbz	w0, #0x1f, 0xf118 <syna_tcm_testing_config_id+0xb0>
    f0f0: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f0f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c6b
    f0f4: 91000000     	add	x0, x0, #0x0
		000000000000f0f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c6b
    f0f8: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17920
    f0fc: 91000021     	add	x1, x1, #0x0
		000000000000f0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17920
    f100: 94000000     	bl	0xf100 <syna_tcm_testing_config_id+0x98>
		000000000000f100:  R_AARCH64_CALL26	_printk
    f104: 3900427f     	strb	wzr, [x19, #0x10]
    f108: 12801453     	mov	w19, #-0xa3             // =-163
    f10c: 90000002     	adrp	x2, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f10c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
    f110: 91000042     	add	x2, x2, #0x0
		000000000000f110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
    f114: 14000032     	b	0xf1dc <syna_tcm_testing_config_id+0x174>
    f118: f9406e68     	ldr	x8, [x19, #0xd8]
    f11c: aa1303e9     	mov	x9, x19
    f120: b4000248     	cbz	x8, 0xf168 <syna_tcm_testing_config_id+0x100>
    f124: 2a0003f6     	mov	w22, w0
    f128: aa0803e0     	mov	x0, x8
    f12c: 94000000     	bl	0xf12c <syna_tcm_testing_config_id+0xc4>
		000000000000f12c:  R_AARCH64_CALL26	syna_tcm_buf_alloc
    f130: aa1303e9     	mov	x9, x19
    f134: 2a0003e8     	mov	w8, w0
    f138: 2a1603e0     	mov	w0, w22
    f13c: 37f80168     	tbnz	w8, #0x1f, 0xf168 <syna_tcm_testing_config_id+0x100>
    f140: f9406d28     	ldr	x8, [x9, #0xd8]
    f144: 91004282     	add	x2, x20, #0x10
    f148: f9400100     	ldr	x0, [x8]
    f14c: b9400901     	ldr	w1, [x8, #0x8]
    f150: 94000000     	bl	0xf150 <syna_tcm_testing_config_id+0xe8>
		000000000000f150:  R_AARCH64_CALL26	syna_pal_mem_cpy
    f154: f9406e68     	ldr	x8, [x19, #0xd8]
    f158: aa1303e9     	mov	x9, x19
    f15c: 2a1603e0     	mov	w0, w22
    f160: 5280020a     	mov	w10, #0x10              // =16
    f164: b9000d0a     	str	w10, [x8, #0xc]
    f168: 360000f5     	tbz	w21, #0x0, 0xf184 <syna_tcm_testing_config_id+0x11c>
    f16c: 52800028     	mov	w8, #0x1                // =1
    f170: 2a0003f3     	mov	w19, w0
    f174: 90000002     	adrp	x2, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
    f178: 91000042     	add	x2, x2, #0x0
		000000000000f178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
    f17c: 39004128     	strb	w8, [x9, #0x10]
    f180: 14000017     	b	0xf1dc <syna_tcm_testing_config_id+0x174>
    f184: f9401d28     	ldr	x8, [x9, #0x38]
    f188: b4000188     	cbz	x8, 0xf1b8 <syna_tcm_testing_config_id+0x150>
    f18c: b9400902     	ldr	w2, [x8, #0x8]
    f190: 34000142     	cbz	w2, 0xf1b8 <syna_tcm_testing_config_id+0x150>
    f194: f9400101     	ldr	x1, [x8]
    f198: 2a0003f5     	mov	w21, w0
    f19c: 91004280     	add	x0, x20, #0x10
    f1a0: 94000000     	bl	0xf1a0 <syna_tcm_testing_config_id+0x138>
		000000000000f1a0:  R_AARCH64_CALL26	syna_tcm_testing_0002_check_config_id
    f1a4: 2a0003e8     	mov	w8, w0
    f1a8: aa1303e9     	mov	x9, x19
    f1ac: 2a1503e0     	mov	w0, w21
    f1b0: 12000108     	and	w8, w8, #0x1
    f1b4: 39004268     	strb	w8, [x19, #0x10]
    f1b8: 39404128     	ldrb	w8, [x9, #0x10]
    f1bc: 12801429     	mov	w9, #-0xa2              // =-162
    f1c0: 7100011f     	cmp	w8, #0x0
    f1c4: 90000008     	adrp	x8, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f1c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
    f1c8: 91000108     	add	x8, x8, #0x0
		000000000000f1c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
    f1cc: 1a891013     	csel	w19, w0, w9, ne
    f1d0: 90000009     	adrp	x9, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f1d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
    f1d4: 91000129     	add	x9, x9, #0x0
		000000000000f1d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
    f1d8: 9a881122     	csel	x2, x9, x8, ne
    f1dc: 90000000     	adrp	x0, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f1dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fbf
    f1e0: 91000000     	add	x0, x0, #0x0
		000000000000f1e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fbf
    f1e4: 90000001     	adrp	x1, 0xf000 <syna_dev_resume+0x5d8>
		000000000000f1e4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17920
    f1e8: 91000021     	add	x1, x1, #0x0
		000000000000f1e8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17920
    f1ec: 94000000     	bl	0xf1ec <syna_tcm_testing_config_id+0x184>
		000000000000f1ec:  R_AARCH64_CALL26	_printk
    f1f0: 2a1303e8     	mov	w8, w19
    f1f4: 17ffffa9     	b	0xf098 <syna_tcm_testing_config_id+0x30>
    f1f8: 94000000     	bl	0xf1f8 <syna_tcm_testing_config_id+0x190>
		000000000000f1f8:  R_AARCH64_CALL26	__stack_chk_fail
