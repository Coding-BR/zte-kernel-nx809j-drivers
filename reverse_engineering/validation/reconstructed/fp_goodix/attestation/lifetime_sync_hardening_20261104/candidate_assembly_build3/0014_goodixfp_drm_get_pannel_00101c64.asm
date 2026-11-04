
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d14 <goodixfp_drm_get_pannel>:
     d14: d503233f     	paciasp
     d18: d10243ff     	sub	sp, sp, #0x90
     d1c: a9067bfd     	stp	x29, x30, [sp, #0x60]
     d20: a90757f6     	stp	x22, x21, [sp, #0x70]
     d24: a9084ff4     	stp	x20, x19, [sp, #0x80]
     d28: 910183fd     	add	x29, sp, #0x60
     d2c: d5384108     	mrs	x8, SP_EL0
     d30: f9438908     	ldr	x8, [x8, #0x710]
     d34: f81f83a8     	stur	x8, [x29, #-0x8]
     d38: b50000c0     	cbnz	x0, 0xd50 <goodixfp_drm_get_pannel+0x3c>
     d3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x948
     d40: 91000000     	add	x0, x0, #0x0
		0000000000000d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x948
     d44: 94000000     	bl	0xd44 <goodixfp_drm_get_pannel+0x30>
		0000000000000d44:  R_AARCH64_CALL26	_printk
     d48: 12800253     	mov	w19, #-0x13             // =-19
     d4c: 14000039     	b	0xe30 <goodixfp_drm_get_pannel+0x11c>
     d50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
     d54: 91000021     	add	x1, x1, #0x0
		0000000000000d54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
     d58: aa1f03e2     	mov	x2, xzr
     d5c: aa0003f4     	mov	x20, x0
     d60: 94000000     	bl	0xd60 <goodixfp_drm_get_pannel+0x4c>
		0000000000000d60:  R_AARCH64_CALL26	of_count_phandle_with_args
     d64: 2a0003f3     	mov	w19, w0
     d68: 7100041f     	cmp	w0, #0x1
     d6c: 5400008a     	b.ge	0xd7c <goodixfp_drm_get_pannel+0x68>
     d70: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86a
     d74: 91000000     	add	x0, x0, #0x0
		0000000000000d74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86a
     d78: 1400001b     	b	0xde4 <goodixfp_drm_get_pannel+0xd0>
     d7c: 2a1f03f5     	mov	w21, wzr
     d80: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000d80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
     d84: 910002d6     	add	x22, x22, #0x0
		0000000000000d84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
     d88: 910023e5     	add	x5, sp, #0x8
     d8c: aa1403e0     	mov	x0, x20
     d90: aa1603e1     	mov	x1, x22
     d94: aa1f03e2     	mov	x2, xzr
     d98: 2a1f03e3     	mov	w3, wzr
     d9c: 2a1503e4     	mov	w4, w21
     da0: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     da4: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     da8: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     dac: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     db0: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     db4: 94000000     	bl	0xdb4 <goodixfp_drm_get_pannel+0xa0>
		0000000000000db4:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     db8: f94007e8     	ldr	x8, [sp, #0x8]
     dbc: 7100001f     	cmp	w0, #0x0
     dc0: 9a9f0100     	csel	x0, x8, xzr, eq
     dc4: 94000000     	bl	0xdc4 <goodixfp_drm_get_pannel+0xb0>
		0000000000000dc4:  R_AARCH64_CALL26	of_drm_find_panel
     dc8: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     dcc: 54000149     	b.ls	0xdf4 <goodixfp_drm_get_pannel+0xe0>
     dd0: 110006b5     	add	w21, w21, #0x1
     dd4: 6b15027f     	cmp	w19, w21
     dd8: 54fffd81     	b.ne	0xd88 <goodixfp_drm_get_pannel+0x74>
     ddc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ddc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x632
     de0: 91000000     	add	x0, x0, #0x0
		0000000000000de0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x632
     de4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
     de8: 91000021     	add	x1, x1, #0x0
		0000000000000de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
     dec: 94000000     	bl	0xdec <goodixfp_drm_get_pannel+0xd8>
		0000000000000dec:  R_AARCH64_CALL26	_printk
     df0: 14000010     	b	0xe30 <goodixfp_drm_get_pannel+0x11c>
     df4: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x892
     df8: 91000108     	add	x8, x8, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x892
     dfc: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000dfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
     e00: 91000273     	add	x19, x19, #0x0
		0000000000000e00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
     e04: aa0003f4     	mov	x20, x0
     e08: aa0803e0     	mov	x0, x8
     e0c: aa1303e1     	mov	x1, x19
     e10: 94000000     	bl	0xe10 <goodixfp_drm_get_pannel+0xfc>
		0000000000000e10:  R_AARCH64_CALL26	_printk
     e14: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
     e18: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a7
     e1c: 91000000     	add	x0, x0, #0x0
		0000000000000e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a7
     e20: aa1303e1     	mov	x1, x19
     e24: f9000114     	str	x20, [x8]
		0000000000000e24:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
     e28: 94000000     	bl	0xe28 <goodixfp_drm_get_pannel+0x114>
		0000000000000e28:  R_AARCH64_CALL26	_printk
     e2c: 2a1f03f3     	mov	w19, wzr
     e30: d5384108     	mrs	x8, SP_EL0
     e34: f9438908     	ldr	x8, [x8, #0x710]
     e38: f85f83a9     	ldur	x9, [x29, #-0x8]
     e3c: eb09011f     	cmp	x8, x9
     e40: 54000101     	b.ne	0xe60 <goodixfp_drm_get_pannel+0x14c>
     e44: 2a1303e0     	mov	w0, w19
     e48: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     e4c: a94757f6     	ldp	x22, x21, [sp, #0x70]
     e50: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     e54: 910243ff     	add	sp, sp, #0x90
     e58: d50323bf     	autiasp
     e5c: d65f03c0     	ret
     e60: 94000000     	bl	0xe60 <goodixfp_drm_get_pannel+0x14c>
		0000000000000e60:  R_AARCH64_CALL26	__stack_chk_fail
