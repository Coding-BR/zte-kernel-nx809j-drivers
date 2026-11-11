
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001e00 <goodixfp_drm_get_pannel>:
    1e00: d503233f     	paciasp
    1e04: d10243ff     	sub	sp, sp, #0x90
    1e08: a9067bfd     	stp	x29, x30, [sp, #0x60]
    1e0c: a90757f6     	stp	x22, x21, [sp, #0x70]
    1e10: a9084ff4     	stp	x20, x19, [sp, #0x80]
    1e14: 910183fd     	add	x29, sp, #0x60
    1e18: d5384108     	mrs	x8, SP_EL0
    1e1c: f9438908     	ldr	x8, [x8, #0x710]
    1e20: f81f83a8     	stur	x8, [x29, #-0x8]
    1e24: b50000c0     	cbnz	x0, 0x1e3c <goodixfp_drm_get_pannel+0x3c>
    1e28: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1631
    1e2c: 91000000     	add	x0, x0, #0x0
		0000000000001e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1631
    1e30: 94000000     	bl	0x1e30 <goodixfp_drm_get_pannel+0x30>
		0000000000001e30:  R_AARCH64_CALL26	_printk
    1e34: 12800253     	mov	w19, #-0x13             // =-19
    1e38: 14000039     	b	0x1f1c <goodixfp_drm_get_pannel+0x11c>
    1e3c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001e3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d7
    1e40: 91000021     	add	x1, x1, #0x0
		0000000000001e40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d7
    1e44: aa1f03e2     	mov	x2, xzr
    1e48: aa0003f4     	mov	x20, x0
    1e4c: 94000000     	bl	0x1e4c <goodixfp_drm_get_pannel+0x4c>
		0000000000001e4c:  R_AARCH64_CALL26	of_count_phandle_with_args
    1e50: 2a0003f3     	mov	w19, w0
    1e54: 7100041f     	cmp	w0, #0x1
    1e58: 5400008a     	b.ge	0x1e68 <goodixfp_drm_get_pannel+0x68>
    1e5c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13f3
    1e60: 91000000     	add	x0, x0, #0x0
		0000000000001e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13f3
    1e64: 1400001b     	b	0x1ed0 <goodixfp_drm_get_pannel+0xd0>
    1e68: 2a1f03f5     	mov	w21, wzr
    1e6c: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3ec>
		0000000000001e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12d7
    1e70: 910002d6     	add	x22, x22, #0x0
		0000000000001e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12d7
    1e74: 910023e5     	add	x5, sp, #0x8
    1e78: aa1403e0     	mov	x0, x20
    1e7c: aa1603e1     	mov	x1, x22
    1e80: aa1f03e2     	mov	x2, xzr
    1e84: 2a1f03e3     	mov	w3, wzr
    1e88: 2a1503e4     	mov	w4, w21
    1e8c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    1e90: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    1e94: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    1e98: a901ffff     	stp	xzr, xzr, [sp, #0x18]
    1e9c: a900ffff     	stp	xzr, xzr, [sp, #0x8]
    1ea0: 94000000     	bl	0x1ea0 <goodixfp_drm_get_pannel+0xa0>
		0000000000001ea0:  R_AARCH64_CALL26	__of_parse_phandle_with_args
    1ea4: f94007e8     	ldr	x8, [sp, #0x8]
    1ea8: 7100001f     	cmp	w0, #0x0
    1eac: 9a9f0100     	csel	x0, x8, xzr, eq
    1eb0: 94000000     	bl	0x1eb0 <goodixfp_drm_get_pannel+0xb0>
		0000000000001eb0:  R_AARCH64_CALL26	of_drm_find_panel
    1eb4: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
    1eb8: 54000149     	b.ls	0x1ee0 <goodixfp_drm_get_pannel+0xe0>
    1ebc: 110006b5     	add	w21, w21, #0x1
    1ec0: 6b15027f     	cmp	w19, w21
    1ec4: 54fffd81     	b.ne	0x1e74 <goodixfp_drm_get_pannel+0x74>
    1ec8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe3a
    1ecc: 91000000     	add	x0, x0, #0x0
		0000000000001ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe3a
    1ed0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ed0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49c
    1ed4: 91000021     	add	x1, x1, #0x0
		0000000000001ed4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49c
    1ed8: 94000000     	bl	0x1ed8 <goodixfp_drm_get_pannel+0xd8>
		0000000000001ed8:  R_AARCH64_CALL26	_printk
    1edc: 14000010     	b	0x1f1c <goodixfp_drm_get_pannel+0x11c>
    1ee0: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaae
    1ee4: 91000108     	add	x8, x8, #0x0
		0000000000001ee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaae
    1ee8: 90000013     	adrp	x19, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49c
    1eec: 91000273     	add	x19, x19, #0x0
		0000000000001eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49c
    1ef0: aa0003f4     	mov	x20, x0
    1ef4: aa0803e0     	mov	x0, x8
    1ef8: aa1303e1     	mov	x1, x19
    1efc: 94000000     	bl	0x1efc <goodixfp_drm_get_pannel+0xfc>
		0000000000001efc:  R_AARCH64_CALL26	_printk
    1f00: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001f00:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1f04: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001f04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb1b
    1f08: 91000000     	add	x0, x0, #0x0
		0000000000001f08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb1b
    1f0c: aa1303e1     	mov	x1, x19
    1f10: f9000114     	str	x20, [x8]
		0000000000001f10:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1f14: 94000000     	bl	0x1f14 <goodixfp_drm_get_pannel+0x114>
		0000000000001f14:  R_AARCH64_CALL26	_printk
    1f18: 2a1f03f3     	mov	w19, wzr
    1f1c: d5384108     	mrs	x8, SP_EL0
    1f20: f9438908     	ldr	x8, [x8, #0x710]
    1f24: f85f83a9     	ldur	x9, [x29, #-0x8]
    1f28: eb09011f     	cmp	x8, x9
    1f2c: 54000101     	b.ne	0x1f4c <goodixfp_drm_get_pannel+0x14c>
    1f30: 2a1303e0     	mov	w0, w19
    1f34: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    1f38: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1f3c: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1f40: 910243ff     	add	sp, sp, #0x90
    1f44: d50323bf     	autiasp
    1f48: d65f03c0     	ret
    1f4c: 94000000     	bl	0x1f4c <goodixfp_drm_get_pannel+0x14c>
		0000000000001f4c:  R_AARCH64_CALL26	__stack_chk_fail
