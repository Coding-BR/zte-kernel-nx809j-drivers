
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e34 <goodixfp_drm_get_pannel>:
    1e34: d503233f     	paciasp
    1e38: d10243ff     	sub	sp, sp, #0x90
    1e3c: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1e40: a90757f6     	stp	x22, x21, [sp, #0x70]
    1e44: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1e48: 910183fd     	add	x29, sp, #0x60
    1e4c: d5384108     	mrs	x8, SP_EL0
    1e50: f9438908     	ldr	x8, [x8, #0x710]
    1e54: f81f83a8     	stur	x8, [x29, #-0x8]
    1e58: b50000c0     	cbnz	x0, 0x1e70 <goodixfp_drm_get_pannel+0x3c>
    1e5c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ff
    1e60: 91000000     	add	x0, x0, #0x0
		0000000000001e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ff
    1e64: 94000000     	bl	0x1e64 <goodixfp_drm_get_pannel+0x30>
		0000000000001e64:  R_AARCH64_CALL26	_printk
    1e68: 12800253     	mov	w19, #-0x13             // =-19
    1e6c: 14000039     	b	0x1f50 <goodixfp_drm_get_pannel+0x11c>
    1e70: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001e70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a5
    1e74: 91000021     	add	x1, x1, #0x0
		0000000000001e74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a5
    1e78: aa1f03e2     	mov	x2, xzr
    1e7c: aa0003f4     	mov	x20, x0
    1e80: 94000000     	bl	0x1e80 <goodixfp_drm_get_pannel+0x4c>
		0000000000001e80:  R_AARCH64_CALL26	of_count_phandle_with_args
    1e84: 2a0003f3     	mov	w19, w0
    1e88: 7100041f     	cmp	w0, #0x1
    1e8c: 5400008a     	b.ge	0x1e9c <goodixfp_drm_get_pannel+0x68>
    1e90: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001e90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13c1
    1e94: 91000000     	add	x0, x0, #0x0
		0000000000001e94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13c1
    1e98: 1400001b     	b	0x1f04 <goodixfp_drm_get_pannel+0xd0>
    1e9c: 2a1f03f5     	mov	w21, wzr
    1ea0: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3b8>
		0000000000001ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a5
    1ea4: 910002d6     	add	x22, x22, #0x0
		0000000000001ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a5
    1ea8: 910023e5     	add	x5, sp, #0x8
    1eac: aa1403e0     	mov	x0, x20
    1eb0: aa1603e1     	mov	x1, x22
    1eb4: aa1f03e2     	mov	x2, xzr
    1eb8: 2a1f03e3     	mov	w3, wzr
    1ebc: 2a1503e4     	mov	w4, w21
    1ec0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1ec4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1ec8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1ecc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1ed0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1ed4: 94000000     	bl	0x1ed4 <goodixfp_drm_get_pannel+0xa0>
		0000000000001ed4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1ed8: f94007e8     	ldr	x8, [sp, #0x8]
    1edc: 7100001f     	cmp	w0, #0x0
    1ee0: 9a9f0100     	csel	x0, x8, xzr, eq
    1ee4: 94000000     	bl	0x1ee4 <goodixfp_drm_get_pannel+0xb0>
		0000000000001ee4:  R_AARCH64_CALL26	of_drm_find_panel
    1ee8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1eec: 54000149     	b.ls	0x1f14 <goodixfp_drm_get_pannel+0xe0>
    1ef0: 110006b5     	add	w21, w21, #0x1
    1ef4: 6b15027f     	cmp	w19, w21
    1ef8: 54fffd81     	b.ne	0x1ea8 <goodixfp_drm_get_pannel+0x74>
    1efc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001efc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe08
    1f00: 91000000     	add	x0, x0, #0x0
		0000000000001f00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe08
    1f04: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46a
    1f08: 91000021     	add	x1, x1, #0x0
		0000000000001f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46a
    1f0c: 94000000     	bl	0x1f0c <goodixfp_drm_get_pannel+0xd8>
		0000000000001f0c:  R_AARCH64_CALL26	_printk
    1f10: 14000010     	b	0x1f50 <goodixfp_drm_get_pannel+0x11c>
    1f14: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001f14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7c
    1f18: 91000108     	add	x8, x8, #0x0
		0000000000001f18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7c
    1f1c: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3b8>
		0000000000001f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46a
    1f20: 91000273     	add	x19, x19, #0x0
		0000000000001f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46a
    1f24: aa0003f4     	mov	x20, x0
    1f28: aa0803e0     	mov	x0, x8
    1f2c: aa1303e1     	mov	x1, x19
    1f30: 94000000     	bl	0x1f30 <goodixfp_drm_get_pannel+0xfc>
		0000000000001f30:  R_AARCH64_CALL26	_printk
    1f34: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001f34:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1f38: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9
    1f3c: 91000000     	add	x0, x0, #0x0
		0000000000001f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9
    1f40: aa1303e1     	mov	x1, x19
    1f44: f9000114     	str	x20, [x8]
		0000000000001f44:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1f48: 94000000     	bl	0x1f48 <goodixfp_drm_get_pannel+0x114>
		0000000000001f48:  R_AARCH64_CALL26	_printk
    1f4c: 2a1f03f3     	mov	w19, wzr
    1f50: d5384108     	mrs	x8, SP_EL0
    1f54: f9438908     	ldr	x8, [x8, #0x710]
    1f58: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f5c: eb09011f     	cmp	x8, x9
    1f60: 54000101     	b.ne	0x1f80 <goodixfp_drm_get_pannel+0x14c>
    1f64: 2a1303e0     	mov	w0, w19
    1f68: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1f6c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1f70: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1f74: 910243ff     	add	sp, sp, #0x90
    1f78: d50323bf     	autiasp
    1f7c: d65f03c0     	ret
    1f80: 94000000     	bl	0x1f80 <goodixfp_drm_get_pannel+0x14c>
		0000000000001f80:  R_AARCH64_CALL26	__stack_chk_fail
