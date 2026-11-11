
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e20 <goodixfp_drm_get_pannel>:
    1e20: d503233f     	paciasp
    1e24: d10243ff     	sub	sp, sp, #0x90
    1e28: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1e2c: a90757f6     	stp	x22, x21, [sp, #0x70]
    1e30: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1e34: 910183fd     	add	x29, sp, #0x60
    1e38: d5384108     	mrs	x8, SP_EL0
    1e3c: f9438908     	ldr	x8, [x8, #0x710]
    1e40: f81f83a8     	stur	x8, [x29, #-0x8]
    1e44: b50000c0     	cbnz	x0, 0x1e5c <goodixfp_drm_get_pannel+0x3c>
    1e48: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x15ff
    1e4c: 91000000     	add	x0, x0, #0x0
		0000000000001e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x15ff
    1e50: 94000000     	bl	0x1e50 <goodixfp_drm_get_pannel+0x30>
		0000000000001e50:  R_AARCH64_CALL26	_printk
    1e54: 12800253     	mov	w19, #-0x13             // =-19
    1e58: 14000039     	b	0x1f3c <goodixfp_drm_get_pannel+0x11c>
    1e5c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a5
    1e60: 91000021     	add	x1, x1, #0x0
		0000000000001e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a5
    1e64: aa1f03e2     	mov	x2, xzr
    1e68: aa0003f4     	mov	x20, x0
    1e6c: 94000000     	bl	0x1e6c <goodixfp_drm_get_pannel+0x4c>
		0000000000001e6c:  R_AARCH64_CALL26	of_count_phandle_with_args
    1e70: 2a0003f3     	mov	w19, w0
    1e74: 7100041f     	cmp	w0, #0x1
    1e78: 5400008a     	b.ge	0x1e88 <goodixfp_drm_get_pannel+0x68>
    1e7c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13c1
    1e80: 91000000     	add	x0, x0, #0x0
		0000000000001e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13c1
    1e84: 1400001b     	b	0x1ef0 <goodixfp_drm_get_pannel+0xd0>
    1e88: 2a1f03f5     	mov	w21, wzr
    1e8c: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3cc>
		0000000000001e8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12a5
    1e90: 910002d6     	add	x22, x22, #0x0
		0000000000001e90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12a5
    1e94: 910023e5     	add	x5, sp, #0x8
    1e98: aa1403e0     	mov	x0, x20
    1e9c: aa1603e1     	mov	x1, x22
    1ea0: aa1f03e2     	mov	x2, xzr
    1ea4: 2a1f03e3     	mov	w3, wzr
    1ea8: 2a1503e4     	mov	w4, w21
    1eac: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1eb0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1eb4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1eb8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1ebc: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1ec0: 94000000     	bl	0x1ec0 <goodixfp_drm_get_pannel+0xa0>
		0000000000001ec0:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1ec4: f94007e8     	ldr	x8, [sp, #0x8]
    1ec8: 7100001f     	cmp	w0, #0x0
    1ecc: 9a9f0100     	csel	x0, x8, xzr, eq
    1ed0: 94000000     	bl	0x1ed0 <goodixfp_drm_get_pannel+0xb0>
		0000000000001ed0:  R_AARCH64_CALL26	of_drm_find_panel
    1ed4: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1ed8: 54000149     	b.ls	0x1f00 <goodixfp_drm_get_pannel+0xe0>
    1edc: 110006b5     	add	w21, w21, #0x1
    1ee0: 6b15027f     	cmp	w19, w21
    1ee4: 54fffd81     	b.ne	0x1e94 <goodixfp_drm_get_pannel+0x74>
    1ee8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe08
    1eec: 91000000     	add	x0, x0, #0x0
		0000000000001eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe08
    1ef0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001ef0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46a
    1ef4: 91000021     	add	x1, x1, #0x0
		0000000000001ef4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46a
    1ef8: 94000000     	bl	0x1ef8 <goodixfp_drm_get_pannel+0xd8>
		0000000000001ef8:  R_AARCH64_CALL26	_printk
    1efc: 14000010     	b	0x1f3c <goodixfp_drm_get_pannel+0x11c>
    1f00: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7c
    1f04: 91000108     	add	x8, x8, #0x0
		0000000000001f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7c
    1f08: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3cc>
		0000000000001f08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x46a
    1f0c: 91000273     	add	x19, x19, #0x0
		0000000000001f0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x46a
    1f10: aa0003f4     	mov	x20, x0
    1f14: aa0803e0     	mov	x0, x8
    1f18: aa1303e1     	mov	x1, x19
    1f1c: 94000000     	bl	0x1f1c <goodixfp_drm_get_pannel+0xfc>
		0000000000001f1c:  R_AARCH64_CALL26	_printk
    1f20: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001f20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1f24: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001f24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xae9
    1f28: 91000000     	add	x0, x0, #0x0
		0000000000001f28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xae9
    1f2c: aa1303e1     	mov	x1, x19
    1f30: f9000114     	str	x20, [x8]
		0000000000001f30:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1f34: 94000000     	bl	0x1f34 <goodixfp_drm_get_pannel+0x114>
		0000000000001f34:  R_AARCH64_CALL26	_printk
    1f38: 2a1f03f3     	mov	w19, wzr
    1f3c: d5384108     	mrs	x8, SP_EL0
    1f40: f9438908     	ldr	x8, [x8, #0x710]
    1f44: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f48: eb09011f     	cmp	x8, x9
    1f4c: 54000101     	b.ne	0x1f6c <goodixfp_drm_get_pannel+0x14c>
    1f50: 2a1303e0     	mov	w0, w19
    1f54: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1f58: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1f5c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1f60: 910243ff     	add	sp, sp, #0x90
    1f64: d50323bf     	autiasp
    1f68: d65f03c0     	ret
    1f6c: 94000000     	bl	0x1f6c <goodixfp_drm_get_pannel+0x14c>
		0000000000001f6c:  R_AARCH64_CALL26	__stack_chk_fail
