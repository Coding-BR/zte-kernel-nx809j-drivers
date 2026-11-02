
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e18 <goodixfp_drm_get_pannel>:
    1e18: d503233f     	paciasp
    1e1c: d10243ff     	sub	sp, sp, #0x90
    1e20: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1e24: a90757f6     	stp	x22, x21, [sp, #0x70]
    1e28: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1e2c: 910183fd     	add	x29, sp, #0x60
    1e30: d5384108     	mrs	x8, SP_EL0
    1e34: f9438908     	ldr	x8, [x8, #0x710]
    1e38: f81f83a8     	stur	x8, [x29, #-0x8]
    1e3c: b50000c0     	cbnz	x0, 0x1e54 <goodixfp_drm_get_pannel+0x3c>
    1e40: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001e40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11f0
    1e44: 91000000     	add	x0, x0, #0x0
		0000000000001e44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11f0
    1e48: 94000000     	bl	0x1e48 <goodixfp_drm_get_pannel+0x30>
		0000000000001e48:  R_AARCH64_CALL26	_printk
    1e4c: 12800253     	mov	w19, #-0x13             // =-19
    1e50: 14000039     	b	0x1f34 <goodixfp_drm_get_pannel+0x11c>
    1e54: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001e54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7b
    1e58: 91000021     	add	x1, x1, #0x0
		0000000000001e58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7b
    1e5c: aa1f03e2     	mov	x2, xzr
    1e60: aa0003f4     	mov	x20, x0
    1e64: 94000000     	bl	0x1e64 <goodixfp_drm_get_pannel+0x4c>
		0000000000001e64:  R_AARCH64_CALL26	of_count_phandle_with_args
    1e68: 2a0003f3     	mov	w19, w0
    1e6c: 7100041f     	cmp	w0, #0x1
    1e70: 5400008a     	b.ge	0x1e80 <goodixfp_drm_get_pannel+0x68>
    1e74: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfe5
    1e78: 91000000     	add	x0, x0, #0x0
		0000000000001e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfe5
    1e7c: 1400001b     	b	0x1ee8 <goodixfp_drm_get_pannel+0xd0>
    1e80: 2a1f03f5     	mov	w21, wzr
    1e84: 90000016     	adrp	x22, 0x1000 <gf_release+0xd8>
		0000000000001e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe7b
    1e88: 910002d6     	add	x22, x22, #0x0
		0000000000001e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe7b
    1e8c: 910023e5     	add	x5, sp, #0x8
    1e90: aa1403e0     	mov	x0, x20
    1e94: aa1603e1     	mov	x1, x22
    1e98: aa1f03e2     	mov	x2, xzr
    1e9c: 2a1f03e3     	mov	w3, wzr
    1ea0: 2a1503e4     	mov	w4, w21
    1ea4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1ea8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1eac: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1eb0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1eb4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1eb8: 94000000     	bl	0x1eb8 <goodixfp_drm_get_pannel+0xa0>
		0000000000001eb8:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1ebc: f94007e8     	ldr	x8, [sp, #0x8]
    1ec0: 7100001f     	cmp	w0, #0x0
    1ec4: 9a9f0100     	csel	x0, x8, xzr, eq
    1ec8: 94000000     	bl	0x1ec8 <goodixfp_drm_get_pannel+0xb0>
		0000000000001ec8:  R_AARCH64_CALL26	of_drm_find_panel
    1ecc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1ed0: 54000149     	b.ls	0x1ef8 <goodixfp_drm_get_pannel+0xe0>
    1ed4: 110006b5     	add	w21, w21, #0x1
    1ed8: 6b15027f     	cmp	w19, w21
    1edc: 54fffd81     	b.ne	0x1e8c <goodixfp_drm_get_pannel+0x74>
    1ee0: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa51
    1ee4: 91000000     	add	x0, x0, #0x0
		0000000000001ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa51
    1ee8: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e3
    1eec: 91000021     	add	x1, x1, #0x0
		0000000000001eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e3
    1ef0: 94000000     	bl	0x1ef0 <goodixfp_drm_get_pannel+0xd8>
		0000000000001ef0:  R_AARCH64_CALL26	_printk
    1ef4: 14000010     	b	0x1f34 <goodixfp_drm_get_pannel+0x11c>
    1ef8: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001ef8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6f0
    1efc: 91000108     	add	x8, x8, #0x0
		0000000000001efc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6f0
    1f00: 90000013     	adrp	x19, 0x1000 <gf_release+0xd8>
		0000000000001f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e3
    1f04: 91000273     	add	x19, x19, #0x0
		0000000000001f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e3
    1f08: aa0003f4     	mov	x20, x0
    1f0c: aa0803e0     	mov	x0, x8
    1f10: aa1303e1     	mov	x1, x19
    1f14: 94000000     	bl	0x1f14 <goodixfp_drm_get_pannel+0xfc>
		0000000000001f14:  R_AARCH64_CALL26	_printk
    1f18: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001f18:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1f1c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x779
    1f20: 91000000     	add	x0, x0, #0x0
		0000000000001f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x779
    1f24: aa1303e1     	mov	x1, x19
    1f28: f9000114     	str	x20, [x8]
		0000000000001f28:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1f2c: 94000000     	bl	0x1f2c <goodixfp_drm_get_pannel+0x114>
		0000000000001f2c:  R_AARCH64_CALL26	_printk
    1f30: 2a1f03f3     	mov	w19, wzr
    1f34: d5384108     	mrs	x8, SP_EL0
    1f38: f9438908     	ldr	x8, [x8, #0x710]
    1f3c: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f40: eb09011f     	cmp	x8, x9
    1f44: 54000101     	b.ne	0x1f64 <goodixfp_drm_get_pannel+0x14c>
    1f48: 2a1303e0     	mov	w0, w19
    1f4c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1f50: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1f54: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1f58: 910243ff     	add	sp, sp, #0x90
    1f5c: d50323bf     	autiasp
    1f60: d65f03c0     	ret
    1f64: 94000000     	bl	0x1f64 <goodixfp_drm_get_pannel+0x14c>
		0000000000001f64:  R_AARCH64_CALL26	__stack_chk_fail
