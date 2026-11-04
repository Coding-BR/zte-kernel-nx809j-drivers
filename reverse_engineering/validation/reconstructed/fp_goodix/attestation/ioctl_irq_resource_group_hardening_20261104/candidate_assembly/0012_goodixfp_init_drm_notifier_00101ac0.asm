
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000d98 <goodixfp_init_drm_notifier>:
     d98: d503233f     	paciasp
     d9c: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     da0: f9000bf7     	str	x23, [sp, #0x10]
     da4: a90257f6     	stp	x22, x21, [sp, #0x20]
     da8: a9034ff4     	stp	x20, x19, [sp, #0x30]
     dac: 910003fd     	mov	x29, sp
     db0: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2
     db4: 91000294     	add	x20, x20, #0x0
		0000000000000db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2
     db8: aa0003f3     	mov	x19, x0
     dbc: 52884816     	mov	w22, #0x4240            // =16960
     dc0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe79
     dc4: 91000000     	add	x0, x0, #0x0
		0000000000000dc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe79
     dc8: aa1403e1     	mov	x1, x20
     dcc: 72a001f6     	movk	w22, #0xf, lsl #16
     dd0: 94000000     	bl	0xdd0 <goodixfp_init_drm_notifier+0x38>
		0000000000000dd0:  R_AARCH64_CALL26	_printk
     dd4: f8570268     	ldur	x8, [x19, #-0x90]
     dd8: f9417d00     	ldr	x0, [x8, #0x2f8]
     ddc: 94000056     	bl	0xf34 <goodixfp_drm_get_pannel>
     de0: 2a1f03f7     	mov	w23, wzr
     de4: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000de4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd28
     de8: 910002b5     	add	x21, x21, #0x0
		0000000000000de8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd28
     dec: 1400000f     	b	0xe28 <goodixfp_init_drm_notifier+0x90>
     df0: aa1503e0     	mov	x0, x21
     df4: aa1403e1     	mov	x1, x20
     df8: 94000000     	bl	0xdf8 <goodixfp_init_drm_notifier+0x60>
		0000000000000df8:  R_AARCH64_CALL26	_printk
     dfc: 52884800     	mov	w0, #0x4240             // =16960
     e00: 910fa2c1     	add	x1, x22, #0x3e8
     e04: 52800042     	mov	w2, #0x2                // =2
     e08: 72a001e0     	movk	w0, #0xf, lsl #16
     e0c: 94000000     	bl	0xe0c <goodixfp_init_drm_notifier+0x74>
		0000000000000e0c:  R_AARCH64_CALL26	usleep_range_state
     e10: f8570268     	ldur	x8, [x19, #-0x90]
     e14: f9417d00     	ldr	x0, [x8, #0x2f8]
     e18: 94000047     	bl	0xf34 <goodixfp_drm_get_pannel>
     e1c: 110006f7     	add	w23, w23, #0x1
     e20: 710066ff     	cmp	w23, #0x19
     e24: 540001c0     	b.eq	0xe5c <goodixfp_init_drm_notifier+0xc4>
     e28: 35fffe40     	cbnz	w0, 0xdf0 <goodixfp_init_drm_notifier+0x58>
     e2c: 110006f7     	add	w23, w23, #0x1
     e30: 710066ff     	cmp	w23, #0x19
     e34: 54ffffa1     	b.ne	0xe28 <goodixfp_init_drm_notifier+0x90>
     e38: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000e38:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
     e3c: f9400288     	ldr	x8, [x20]
		0000000000000e3c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
     e40: b50001c8     	cbnz	x8, 0xe78 <goodixfp_init_drm_notifier+0xe0>
     e44: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     e48: f9400bf7     	ldr	x23, [sp, #0x10]
     e4c: a94257f6     	ldp	x22, x21, [sp, #0x20]
     e50: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     e54: d50323bf     	autiasp
     e58: d65f03c0     	ret
     e5c: 34fffee0     	cbz	w0, 0xe38 <goodixfp_init_drm_notifier+0xa0>
     e60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe92
     e64: 91000000     	add	x0, x0, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe92
     e68: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2
     e6c: 91000021     	add	x1, x1, #0x0
		0000000000000e6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2
     e70: 94000000     	bl	0xe70 <goodixfp_init_drm_notifier+0xd8>
		0000000000000e70:  R_AARCH64_CALL26	_printk
     e74: 17fffff1     	b	0xe38 <goodixfp_init_drm_notifier+0xa0>
     e78: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1040
     e7c: 91000000     	add	x0, x0, #0x0
		0000000000000e7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1040
     e80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2
     e84: 91000021     	add	x1, x1, #0x0
		0000000000000e84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2
     e88: d102a273     	sub	x19, x19, #0xa8
     e8c: 94000000     	bl	0xe8c <goodixfp_init_drm_notifier+0xf4>
		0000000000000e8c:  R_AARCH64_CALL26	_printk
     e90: f9400282     	ldr	x2, [x20]
		0000000000000e90:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
     e94: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000e94:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1088
     e98: 91000063     	add	x3, x3, #0x0
		0000000000000e98:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1088
     e9c: 52800020     	mov	w0, #0x1                // =1
     ea0: 52800061     	mov	w1, #0x3                // =3
     ea4: aa1303e4     	mov	x4, x19
     ea8: 94000000     	bl	0xea8 <goodixfp_init_drm_notifier+0x110>
		0000000000000ea8:  R_AARCH64_CALL26	panel_event_notifier_register
     eac: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000eac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     eb0: f9000100     	str	x0, [x8]
		0000000000000eb0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     eb4: b5fffc80     	cbnz	x0, 0xe44 <goodixfp_init_drm_notifier+0xac>
     eb8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x441
     ebc: 91000000     	add	x0, x0, #0x0
		0000000000000ebc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x441
     ec0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3e2
     ec4: 91000021     	add	x1, x1, #0x0
		0000000000000ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3e2
     ec8: 94000000     	bl	0xec8 <goodixfp_init_drm_notifier+0x130>
		0000000000000ec8:  R_AARCH64_CALL26	_printk
     ecc: 17ffffde     	b	0xe44 <goodixfp_init_drm_notifier+0xac>
