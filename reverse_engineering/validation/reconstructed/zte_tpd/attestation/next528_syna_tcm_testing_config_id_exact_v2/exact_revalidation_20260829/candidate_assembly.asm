
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000f00c <syna_tcm_testing_config_id>:
    f00c: d503233f     	paciasp
    f010: d101c3ff     	sub	sp, sp, #0x70
    f014: a9047bfd     	stp	x29, x30, [sp, #0x40]
    f018: a90557f6     	stp	x22, x21, [sp, #0x50]
    f01c: a9064ff4     	stp	x20, x19, [sp, #0x60]
    f020: 910103fd     	add	x29, sp, #0x40
    f024: d5384108     	mrs	x8, SP_EL0
    f028: f9438908     	ldr	x8, [x8, #0x710]
    f02c: f81f83a8     	stur	x8, [x29, #-0x8]
    f030: 12801408     	mov	w8, #-0xa1              // =-161
    f034: b4000040     	cbz	x0, 0xf03c <syna_tcm_testing_config_id+0x30>
    f038: b50001a1     	cbnz	x1, 0xf06c <syna_tcm_testing_config_id+0x60>
    f03c: d5384109     	mrs	x9, SP_EL0
    f040: f9438929     	ldr	x9, [x9, #0x710]
    f044: f85f83aa     	ldur	x10, [x29, #-0x8]
    f048: eb0a013f     	cmp	x9, x10
    f04c: 54000a81     	b.ne	0xf19c <syna_tcm_testing_config_id+0x190>
    f050: 2a0803e0     	mov	w0, w8
    f054: a9464ff4     	ldp	x20, x19, [sp, #0x60]
    f058: a94557f6     	ldp	x22, x21, [sp, #0x50]
    f05c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
    f060: 9101c3ff     	add	sp, sp, #0x70
    f064: d50323bf     	autiasp
    f068: d65f03c0     	ret
    f06c: 2a0203f5     	mov	w21, w2
    f070: aa0103f3     	mov	x19, x1
    f074: 910023e1     	add	x1, sp, #0x8
    f078: 2a1f03e2     	mov	w2, wzr
    f07c: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    f080: 910023f4     	add	x20, sp, #0x8
    f084: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    f088: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    f08c: 94000000     	bl	0xf08c <syna_tcm_testing_config_id+0x80>
		000000000000f08c:  R_AARCH64_CALL26	syna_tcm_get_app_info
    f090: 36f80160     	tbz	w0, #0x1f, 0xf0bc <syna_tcm_testing_config_id+0xb0>
    f094: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f094:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17c6b
    f098: 91000000     	add	x0, x0, #0x0
		000000000000f098:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17c6b
    f09c: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f09c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17920
    f0a0: 91000021     	add	x1, x1, #0x0
		000000000000f0a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17920
    f0a4: 94000000     	bl	0xf0a4 <syna_tcm_testing_config_id+0x98>
		000000000000f0a4:  R_AARCH64_CALL26	_printk
    f0a8: 3900427f     	strb	wzr, [x19, #0x10]
    f0ac: 12801453     	mov	w19, #-0xa3             // =-163
    f0b0: 90000002     	adrp	x2, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f0b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
    f0b4: 91000042     	add	x2, x2, #0x0
		000000000000f0b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
    f0b8: 14000032     	b	0xf180 <syna_tcm_testing_config_id+0x174>
    f0bc: f9406e68     	ldr	x8, [x19, #0xd8]
    f0c0: aa1303e9     	mov	x9, x19
    f0c4: b4000248     	cbz	x8, 0xf10c <syna_tcm_testing_config_id+0x100>
    f0c8: 2a0003f6     	mov	w22, w0
    f0cc: aa0803e0     	mov	x0, x8
    f0d0: 94000000     	bl	0xf0d0 <syna_tcm_testing_config_id+0xc4>
		000000000000f0d0:  R_AARCH64_CALL26	syna_tcm_buf_alloc
    f0d4: aa1303e9     	mov	x9, x19
    f0d8: 2a0003e8     	mov	w8, w0
    f0dc: 2a1603e0     	mov	w0, w22
    f0e0: 37f80168     	tbnz	w8, #0x1f, 0xf10c <syna_tcm_testing_config_id+0x100>
    f0e4: f9406d28     	ldr	x8, [x9, #0xd8]
    f0e8: 91004282     	add	x2, x20, #0x10
    f0ec: f9400100     	ldr	x0, [x8]
    f0f0: b9400901     	ldr	w1, [x8, #0x8]
    f0f4: 94000000     	bl	0xf0f4 <syna_tcm_testing_config_id+0xe8>
		000000000000f0f4:  R_AARCH64_CALL26	syna_pal_mem_cpy
    f0f8: f9406e68     	ldr	x8, [x19, #0xd8]
    f0fc: aa1303e9     	mov	x9, x19
    f100: 2a1603e0     	mov	w0, w22
    f104: 5280020a     	mov	w10, #0x10              // =16
    f108: b9000d0a     	str	w10, [x8, #0xc]
    f10c: 360000f5     	tbz	w21, #0x0, 0xf128 <syna_tcm_testing_config_id+0x11c>
    f110: 52800028     	mov	w8, #0x1                // =1
    f114: 2a0003f3     	mov	w19, w0
    f118: 90000002     	adrp	x2, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f118:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
    f11c: 91000042     	add	x2, x2, #0x0
		000000000000f11c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
    f120: 39004128     	strb	w8, [x9, #0x10]
    f124: 14000017     	b	0xf180 <syna_tcm_testing_config_id+0x174>
    f128: f9401d28     	ldr	x8, [x9, #0x38]
    f12c: b4000188     	cbz	x8, 0xf15c <syna_tcm_testing_config_id+0x150>
    f130: b9400902     	ldr	w2, [x8, #0x8]
    f134: 34000142     	cbz	w2, 0xf15c <syna_tcm_testing_config_id+0x150>
    f138: f9400101     	ldr	x1, [x8]
    f13c: 2a0003f5     	mov	w21, w0
    f140: 91004280     	add	x0, x20, #0x10
    f144: 94000000     	bl	0xf144 <syna_tcm_testing_config_id+0x138>
		000000000000f144:  R_AARCH64_CALL26	syna_tcm_testing_0002_check_config_id
    f148: 2a0003e8     	mov	w8, w0
    f14c: aa1303e9     	mov	x9, x19
    f150: 2a1503e0     	mov	w0, w21
    f154: 12000108     	and	w8, w8, #0x1
    f158: 39004268     	strb	w8, [x19, #0x10]
    f15c: 39404128     	ldrb	w8, [x9, #0x10]
    f160: 12801429     	mov	w9, #-0xa2              // =-162
    f164: 7100011f     	cmp	w8, #0x0
    f168: 90000008     	adrp	x8, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f168:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1821e
    f16c: 91000108     	add	x8, x8, #0x0
		000000000000f16c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1821e
    f170: 1a891013     	csel	w19, w0, w9, ne
    f174: 90000009     	adrp	x9, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f174:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a7ff
    f178: 91000129     	add	x9, x9, #0x0
		000000000000f178:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a7ff
    f17c: 9a881122     	csel	x2, x9, x8, ne
    f180: 90000000     	adrp	x0, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f180:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fbf
    f184: 91000000     	add	x0, x0, #0x0
		000000000000f184:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fbf
    f188: 90000001     	adrp	x1, 0xf000 <syna_tcm_get_testing_0002+0x4>
		000000000000f188:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17920
    f18c: 91000021     	add	x1, x1, #0x0
		000000000000f18c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17920
    f190: 94000000     	bl	0xf190 <syna_tcm_testing_config_id+0x184>
		000000000000f190:  R_AARCH64_CALL26	_printk
    f194: 2a1303e8     	mov	w8, w19
    f198: 17ffffa9     	b	0xf03c <syna_tcm_testing_config_id+0x30>
    f19c: 94000000     	bl	0xf19c <syna_tcm_testing_config_id+0x190>
		000000000000f19c:  R_AARCH64_CALL26	__stack_chk_fail
