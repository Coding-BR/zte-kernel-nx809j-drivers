
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001de4 <goodixfp_drm_get_pannel>:
    1de4: d503233f     	paciasp
    1de8: d10243ff     	sub	sp, sp, #0x90
    1dec: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1df0: a90757f6     	stp	x22, x21, [sp, #0x70]
    1df4: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1df8: 910183fd     	add	x29, sp, #0x60
    1dfc: d5384108     	mrs	x8, SP_EL0
    1e00: f9438908     	ldr	x8, [x8, #0x710]
    1e04: f81f83a8     	stur	x8, [x29, #-0x8]
    1e08: b5000080     	cbnz	x0, 0x1e18 <goodixfp_drm_get_pannel+0x34>
    1e0c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x32
    1e10: 91000000     	add	x0, x0, #0x0
		0000000000001e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x32
    1e14: 1400003f     	b	0x1f10 <goodixfp_drm_get_pannel+0x12c>
    1e18: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcdf
    1e1c: 91000021     	add	x1, x1, #0x0
		0000000000001e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcdf
    1e20: aa1f03e2     	mov	x2, xzr
    1e24: aa0003f3     	mov	x19, x0
    1e28: 94000000     	bl	0x1e28 <goodixfp_drm_get_pannel+0x44>
		0000000000001e28:  R_AARCH64_CALL26	of_count_phandle_with_args
    1e2c: 7100001f     	cmp	w0, #0x0
    1e30: 5400008c     	b.gt	0x1e40 <goodixfp_drm_get_pannel+0x5c>
    1e34: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001e34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x893
    1e38: 91000000     	add	x0, x0, #0x0
		0000000000001e38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x893
    1e3c: 14000035     	b	0x1f10 <goodixfp_drm_get_pannel+0x12c>
    1e40: 2a0003f4     	mov	w20, w0
    1e44: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1047
    1e48: 91000000     	add	x0, x0, #0x0
		0000000000001e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1047
    1e4c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001e4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6
    1e50: 91000021     	add	x1, x1, #0x0
		0000000000001e50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6
    1e54: 2a1403e2     	mov	w2, w20
    1e58: 94000000     	bl	0x1e58 <goodixfp_drm_get_pannel+0x74>
		0000000000001e58:  R_AARCH64_CALL26	_printk
    1e5c: 2a1f03f5     	mov	w21, wzr
    1e60: 90000016     	adrp	x22, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcdf
    1e64: 910002d6     	add	x22, x22, #0x0
		0000000000001e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcdf
    1e68: 14000004     	b	0x1e78 <goodixfp_drm_get_pannel+0x94>
    1e6c: 110006b5     	add	w21, w21, #0x1
    1e70: 6b15029f     	cmp	w20, w21
    1e74: 540004a0     	b.eq	0x1f08 <goodixfp_drm_get_pannel+0x124>
    1e78: 910023e5     	add	x5, sp, #0x8
    1e7c: aa1303e0     	mov	x0, x19
    1e80: aa1603e1     	mov	x1, x22
    1e84: aa1f03e2     	mov	x2, xzr
    1e88: 2a1f03e3     	mov	w3, wzr
    1e8c: 2a1503e4     	mov	w4, w21
    1e90: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1e94: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1e98: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1e9c: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1ea0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1ea4: 94000000     	bl	0x1ea4 <goodixfp_drm_get_pannel+0xc0>
		0000000000001ea4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1ea8: 35fffe20     	cbnz	w0, 0x1e6c <goodixfp_drm_get_pannel+0x88>
    1eac: f94007e0     	ldr	x0, [sp, #0x8]
    1eb0: b4fffde0     	cbz	x0, 0x1e6c <goodixfp_drm_get_pannel+0x88>
    1eb4: 94000000     	bl	0x1eb4 <goodixfp_drm_get_pannel+0xd0>
		0000000000001eb4:  R_AARCH64_CALL26	of_drm_find_panel
    1eb8: b4fffda0     	cbz	x0, 0x1e6c <goodixfp_drm_get_pannel+0x88>
    1ebc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1ec0: 54fffd68     	b.hi	0x1e6c <goodixfp_drm_get_pannel+0x88>
    1ec4: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001ec4:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1ec8: 90000013     	adrp	x19, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6
    1ecc: 91000273     	add	x19, x19, #0x0
		0000000000001ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6
    1ed0: f9000100     	str	x0, [x8]
		0000000000001ed0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1ed4: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73f
    1ed8: 91000108     	add	x8, x8, #0x0
		0000000000001ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73f
    1edc: aa0003f4     	mov	x20, x0
    1ee0: aa0803e0     	mov	x0, x8
    1ee4: aa1303e1     	mov	x1, x19
    1ee8: 94000000     	bl	0x1ee8 <goodixfp_drm_get_pannel+0x104>
		0000000000001ee8:  R_AARCH64_CALL26	_printk
    1eec: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001eec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f3
    1ef0: 91000000     	add	x0, x0, #0x0
		0000000000001ef0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f3
    1ef4: aa1303e1     	mov	x1, x19
    1ef8: aa1403e2     	mov	x2, x20
    1efc: 94000000     	bl	0x1efc <goodixfp_drm_get_pannel+0x118>
		0000000000001efc:  R_AARCH64_CALL26	_printk
    1f00: 2a1f03e0     	mov	w0, wzr
    1f04: 14000007     	b	0x1f20 <goodixfp_drm_get_pannel+0x13c>
    1f08: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7
    1f0c: 91000000     	add	x0, x0, #0x0
		0000000000001f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7
    1f10: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001f10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6
    1f14: 91000021     	add	x1, x1, #0x0
		0000000000001f14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6
    1f18: 94000000     	bl	0x1f18 <goodixfp_drm_get_pannel+0x134>
		0000000000001f18:  R_AARCH64_CALL26	_printk
    1f1c: 12800240     	mov	w0, #-0x13              // =-19
    1f20: d5384108     	mrs	x8, SP_EL0
    1f24: f9438908     	ldr	x8, [x8, #0x710]
    1f28: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f2c: eb09011f     	cmp	x8, x9
    1f30: 540000e1     	b.ne	0x1f4c <goodixfp_drm_get_pannel+0x168>
    1f34: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1f38: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1f3c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1f40: 910243ff     	add	sp, sp, #0x90
    1f44: d50323bf     	autiasp
    1f48: d65f03c0     	ret
    1f4c: 94000000     	bl	0x1f4c <goodixfp_drm_get_pannel+0x168>
		0000000000001f4c:  R_AARCH64_CALL26	__stack_chk_fail
