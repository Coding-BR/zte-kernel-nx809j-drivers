
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000f34 <goodixfp_drm_get_pannel>:
     f34: d503233f     	paciasp
     f38: d10243ff     	sub	sp, sp, #0x90
     f3c: a9067bfd     	stp	x29, x30, [sp, #0x60]
     f40: a90757f6     	stp	x22, x21, [sp, #0x70]
     f44: a9084ff4     	stp	x20, x19, [sp, #0x80]
     f48: 910183fd     	add	x29, sp, #0x60
     f4c: d5384108     	mrs	x8, SP_EL0
     f50: f9438908     	ldr	x8, [x8, #0x710]
     f54: f81f83a8     	stur	x8, [x29, #-0x8]
     f58: b50000c0     	cbnz	x0, 0xf70 <goodixfp_drm_get_pannel+0x3c>
     f5c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8d9
     f60: 91000000     	add	x0, x0, #0x0
		0000000000000f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8d9
     f64: 94000000     	bl	0xf64 <goodixfp_drm_get_pannel+0x30>
		0000000000000f64:  R_AARCH64_CALL26	_printk
     f68: 12800253     	mov	w19, #-0x13             // =-19
     f6c: 14000039     	b	0x1050 <goodixfp_drm_get_pannel+0x11c>
     f70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeff
     f74: 91000021     	add	x1, x1, #0x0
		0000000000000f74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeff
     f78: aa1f03e2     	mov	x2, xzr
     f7c: aa0003f4     	mov	x20, x0
     f80: 94000000     	bl	0xf80 <goodixfp_drm_get_pannel+0x4c>
		0000000000000f80:  R_AARCH64_CALL26	of_count_phandle_with_args
     f84: 2a0003f3     	mov	w19, w0
     f88: 7100041f     	cmp	w0, #0x1
     f8c: 5400008a     	b.ge	0xf9c <goodixfp_drm_get_pannel+0x68>
     f90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7fb
     f94: 91000000     	add	x0, x0, #0x0
		0000000000000f94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7fb
     f98: 1400001b     	b	0x1004 <goodixfp_drm_get_pannel+0xd0>
     f9c: 2a1f03f5     	mov	w21, wzr
     fa0: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeff
     fa4: 910002d6     	add	x22, x22, #0x0
		0000000000000fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeff
     fa8: 910023e5     	add	x5, sp, #0x8
     fac: aa1403e0     	mov	x0, x20
     fb0: aa1603e1     	mov	x1, x22
     fb4: aa1f03e2     	mov	x2, xzr
     fb8: 2a1f03e3     	mov	w3, wzr
     fbc: 2a1503e4     	mov	w4, w21
     fc0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     fc4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     fc8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     fcc: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     fd0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     fd4: 94000000     	bl	0xfd4 <goodixfp_drm_get_pannel+0xa0>
		0000000000000fd4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     fd8: f94007e8     	ldr	x8, [sp, #0x8]
     fdc: 7100001f     	cmp	w0, #0x0
     fe0: 9a9f0100     	csel	x0, x8, xzr, eq
     fe4: 94000000     	bl	0xfe4 <goodixfp_drm_get_pannel+0xb0>
		0000000000000fe4:  R_AARCH64_CALL26	of_drm_find_panel
     fe8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     fec: 54000149     	b.ls	0x1014 <goodixfp_drm_get_pannel+0xe0>
     ff0: 110006b5     	add	w21, w21, #0x1
     ff4: 6b15027f     	cmp	w19, w21
     ff8: 54fffd81     	b.ne	0xfa8 <goodixfp_drm_get_pannel+0x74>
     ffc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60f
    1000: 91000000     	add	x0, x0, #0x0
		0000000000001000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60f
    1004: 90000001     	adrp	x1, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
    1008: 91000021     	add	x1, x1, #0x0
		0000000000001008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
    100c: 94000000     	bl	0x100c <goodixfp_drm_get_pannel+0xd8>
		000000000000100c:  R_AARCH64_CALL26	_printk
    1010: 14000010     	b	0x1050 <goodixfp_drm_get_pannel+0x11c>
    1014: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x823
    1018: 91000108     	add	x8, x8, #0x0
		0000000000001018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x823
    101c: 90000013     	adrp	x19, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		000000000000101c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x217
    1020: 91000273     	add	x19, x19, #0x0
		0000000000001020:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x217
    1024: aa0003f4     	mov	x20, x0
    1028: aa0803e0     	mov	x0, x8
    102c: aa1303e1     	mov	x1, x19
    1030: 94000000     	bl	0x1030 <goodixfp_drm_get_pannel+0xfc>
		0000000000001030:  R_AARCH64_CALL26	_printk
    1034: 90000008     	adrp	x8, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001034:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1038: 90000000     	adrp	x0, 0x1000 <goodixfp_drm_get_pannel+0xcc>
		0000000000001038:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x116f
    103c: 91000000     	add	x0, x0, #0x0
		000000000000103c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x116f
    1040: aa1303e1     	mov	x1, x19
    1044: f9000114     	str	x20, [x8]
		0000000000001044:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1048: 94000000     	bl	0x1048 <goodixfp_drm_get_pannel+0x114>
		0000000000001048:  R_AARCH64_CALL26	_printk
    104c: 2a1f03f3     	mov	w19, wzr
    1050: d5384108     	mrs	x8, SP_EL0
    1054: f9438908     	ldr	x8, [x8, #0x710]
    1058: f85f83a9     	ldur	x9, [x29, #-0x8]
    105c: eb09011f     	cmp	x8, x9
    1060: 54000101     	b.ne	0x1080 <goodixfp_drm_get_pannel+0x14c>
    1064: 2a1303e0     	mov	w0, w19
    1068: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    106c: a94757f6     	ldp	x22, x21, [sp, #0x70]
    1070: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    1074: 910243ff     	add	sp, sp, #0x90
    1078: d50323bf     	autiasp
    107c: d65f03c0     	ret
    1080: 94000000     	bl	0x1080 <goodixfp_drm_get_pannel+0x14c>
		0000000000001080:  R_AARCH64_CALL26	__stack_chk_fail
