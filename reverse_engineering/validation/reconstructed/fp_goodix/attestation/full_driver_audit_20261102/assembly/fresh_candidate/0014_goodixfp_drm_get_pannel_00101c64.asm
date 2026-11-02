
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d18 <goodixfp_drm_get_pannel>:
     d18: d503233f     	paciasp
     d1c: d10243ff     	sub	sp, sp, #0x90
     d20: a9067bfd     	stp	x29, x30, [sp, #0x60]
     d24: a90757f6     	stp	x22, x21, [sp, #0x70]
     d28: a9084ff4     	stp	x20, x19, [sp, #0x80]
     d2c: 910183fd     	add	x29, sp, #0x60
     d30: d5384108     	mrs	x8, SP_EL0
     d34: f9438908     	ldr	x8, [x8, #0x710]
     d38: f81f83a8     	stur	x8, [x29, #-0x8]
     d3c: b50000c0     	cbnz	x0, 0xd54 <goodixfp_drm_get_pannel+0x3c>
     d40: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x948
     d44: 91000000     	add	x0, x0, #0x0
		0000000000000d44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x948
     d48: 94000000     	bl	0xd48 <goodixfp_drm_get_pannel+0x30>
		0000000000000d48:  R_AARCH64_CALL26	_printk
     d4c: 12800253     	mov	w19, #-0x13             // =-19
     d50: 14000039     	b	0xe34 <goodixfp_drm_get_pannel+0x11c>
     d54: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
     d58: 91000021     	add	x1, x1, #0x0
		0000000000000d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
     d5c: aa1f03e2     	mov	x2, xzr
     d60: aa0003f4     	mov	x20, x0
     d64: 94000000     	bl	0xd64 <goodixfp_drm_get_pannel+0x4c>
		0000000000000d64:  R_AARCH64_CALL26	of_count_phandle_with_args
     d68: 2a0003f3     	mov	w19, w0
     d6c: 7100041f     	cmp	w0, #0x1
     d70: 5400008a     	b.ge	0xd80 <goodixfp_drm_get_pannel+0x68>
     d74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000d74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86a
     d78: 91000000     	add	x0, x0, #0x0
		0000000000000d78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86a
     d7c: 1400001b     	b	0xde8 <goodixfp_drm_get_pannel+0xd0>
     d80: 2a1f03f5     	mov	w21, wzr
     d84: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000d84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf63
     d88: 910002d6     	add	x22, x22, #0x0
		0000000000000d88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf63
     d8c: 910023e5     	add	x5, sp, #0x8
     d90: aa1403e0     	mov	x0, x20
     d94: aa1603e1     	mov	x1, x22
     d98: aa1f03e2     	mov	x2, xzr
     d9c: 2a1f03e3     	mov	w3, wzr
     da0: 2a1503e4     	mov	w4, w21
     da4: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     da8: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     dac: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     db0: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     db4: a900ffff     	stp	xzr, xzr, [sp, #0x8]
     db8: 94000000     	bl	0xdb8 <goodixfp_drm_get_pannel+0xa0>
		0000000000000db8:  R_AARCH64_CALL26	__of_parse_phandle_with_args
     dbc: f94007e8     	ldr	x8, [sp, #0x8]
     dc0: 7100001f     	cmp	w0, #0x0
     dc4: 9a9f0100     	csel	x0, x8, xzr, eq
     dc8: 94000000     	bl	0xdc8 <goodixfp_drm_get_pannel+0xb0>
		0000000000000dc8:  R_AARCH64_CALL26	of_drm_find_panel
     dcc: b140041f     	cmn	x0, #0x1, lsl #12       // =0x1000
     dd0: 54000149     	b.ls	0xdf8 <goodixfp_drm_get_pannel+0xe0>
     dd4: 110006b5     	add	w21, w21, #0x1
     dd8: 6b15027f     	cmp	w19, w21
     ddc: 54fffd81     	b.ne	0xd8c <goodixfp_drm_get_pannel+0x74>
     de0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x632
     de4: 91000000     	add	x0, x0, #0x0
		0000000000000de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x632
     de8: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
     dec: 91000021     	add	x1, x1, #0x0
		0000000000000dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
     df0: 94000000     	bl	0xdf0 <goodixfp_drm_get_pannel+0xd8>
		0000000000000df0:  R_AARCH64_CALL26	_printk
     df4: 14000010     	b	0xe34 <goodixfp_drm_get_pannel+0x11c>
     df8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x892
     dfc: 91000108     	add	x8, x8, #0x0
		0000000000000dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x892
     e00: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x23e
     e04: 91000273     	add	x19, x19, #0x0
		0000000000000e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x23e
     e08: aa0003f4     	mov	x20, x0
     e0c: aa0803e0     	mov	x0, x8
     e10: aa1303e1     	mov	x1, x19
     e14: 94000000     	bl	0xe14 <goodixfp_drm_get_pannel+0xfc>
		0000000000000e14:  R_AARCH64_CALL26	_printk
     e18: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000e18:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
     e1c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11a7
     e20: 91000000     	add	x0, x0, #0x0
		0000000000000e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11a7
     e24: aa1303e1     	mov	x1, x19
     e28: f9000114     	str	x20, [x8]
		0000000000000e28:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
     e2c: 94000000     	bl	0xe2c <goodixfp_drm_get_pannel+0x114>
		0000000000000e2c:  R_AARCH64_CALL26	_printk
     e30: 2a1f03f3     	mov	w19, wzr
     e34: d5384108     	mrs	x8, SP_EL0
     e38: f9438908     	ldr	x8, [x8, #0x710]
     e3c: f85f83a9     	ldur	x9, [x29, #-0x8]
     e40: eb09011f     	cmp	x8, x9
     e44: 54000101     	b.ne	0xe64 <goodixfp_drm_get_pannel+0x14c>
     e48: 2a1303e0     	mov	w0, w19
     e4c: a9484ff4     	ldp	x20, x19, [sp, #0x80]
     e50: a94757f6     	ldp	x22, x21, [sp, #0x70]
     e54: a9467bfd     	ldp	x29, x30, [sp, #0x60]
     e58: 910243ff     	add	sp, sp, #0x90
     e5c: d50323bf     	autiasp
     e60: d65f03c0     	ret
     e64: 94000000     	bl	0xe64 <goodixfp_drm_get_pannel+0x14c>
		0000000000000e64:  R_AARCH64_CALL26	__stack_chk_fail
