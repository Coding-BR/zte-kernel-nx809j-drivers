
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b70 <goodixfp_init_drm_notifier>:
     b70: d503233f     	paciasp
     b74: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     b78: f9000bf7     	str	x23, [sp, #0x10]
     b7c: a90257f6     	stp	x22, x21, [sp, #0x20]
     b80: a9034ff4     	stp	x20, x19, [sp, #0x30]
     b84: 910003fd     	mov	x29, sp
     b88: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000b88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     b8c: 91000294     	add	x20, x20, #0x0
		0000000000000b8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     b90: aa0003f3     	mov	x19, x0
     b94: 52884816     	mov	w22, #0x4240            // =16960
     b98: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee2
     b9c: 91000000     	add	x0, x0, #0x0
		0000000000000b9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee2
     ba0: aa1403e1     	mov	x1, x20
     ba4: 72a001f6     	movk	w22, #0xf, lsl #16
     ba8: 94000000     	bl	0xba8 <goodixfp_init_drm_notifier+0x38>
		0000000000000ba8:  R_AARCH64_CALL26	_printk
     bac: f8570268     	ldur	x8, [x19, #-0x90]
     bb0: f9417d00     	ldr	x0, [x8, #0x2f8]
     bb4: 94000058     	bl	0xd14 <goodixfp_drm_get_pannel>
     bb8: 2a1f03f7     	mov	w23, wzr
     bbc: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000bbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcc
     bc0: 910002b5     	add	x21, x21, #0x0
		0000000000000bc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcc
     bc4: 1400000f     	b	0xc00 <goodixfp_init_drm_notifier+0x90>
     bc8: aa1503e0     	mov	x0, x21
     bcc: aa1403e1     	mov	x1, x20
     bd0: 94000000     	bl	0xbd0 <goodixfp_init_drm_notifier+0x60>
		0000000000000bd0:  R_AARCH64_CALL26	_printk
     bd4: 52884800     	mov	w0, #0x4240             // =16960
     bd8: 910fa2c1     	add	x1, x22, #0x3e8
     bdc: 52800042     	mov	w2, #0x2                // =2
     be0: 72a001e0     	movk	w0, #0xf, lsl #16
     be4: 94000000     	bl	0xbe4 <goodixfp_init_drm_notifier+0x74>
		0000000000000be4:  R_AARCH64_CALL26	usleep_range_state
     be8: f8570268     	ldur	x8, [x19, #-0x90]
     bec: f9417d00     	ldr	x0, [x8, #0x2f8]
     bf0: 94000049     	bl	0xd14 <goodixfp_drm_get_pannel>
     bf4: 110006f7     	add	w23, w23, #0x1
     bf8: 710066ff     	cmp	w23, #0x19
     bfc: 540001c0     	b.eq	0xc34 <goodixfp_init_drm_notifier+0xc4>
     c00: 35fffe40     	cbnz	w0, 0xbc8 <goodixfp_init_drm_notifier+0x58>
     c04: 110006f7     	add	w23, w23, #0x1
     c08: 710066ff     	cmp	w23, #0x19
     c0c: 54ffffa1     	b.ne	0xc00 <goodixfp_init_drm_notifier+0x90>
     c10: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000c10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
     c14: f9400288     	ldr	x8, [x20]
		0000000000000c14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
     c18: b50001c8     	cbnz	x8, 0xc50 <goodixfp_init_drm_notifier+0xe0>
     c1c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     c20: f9400bf7     	ldr	x23, [sp, #0x10]
     c24: a94257f6     	ldp	x22, x21, [sp, #0x20]
     c28: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     c2c: d50323bf     	autiasp
     c30: d65f03c0     	ret
     c34: 34fffee0     	cbz	w0, 0xc10 <goodixfp_init_drm_notifier+0xa0>
     c38: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xefb
     c3c: 91000000     	add	x0, x0, #0x0
		0000000000000c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xefb
     c40: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c44: 91000021     	add	x1, x1, #0x0
		0000000000000c44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     c48: 94000000     	bl	0xc48 <goodixfp_init_drm_notifier+0xd8>
		0000000000000c48:  R_AARCH64_CALL26	_printk
     c4c: 17fffff1     	b	0xc10 <goodixfp_init_drm_notifier+0xa0>
     c50: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a9
     c54: 91000000     	add	x0, x0, #0x0
		0000000000000c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a9
     c58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c5c: 91000021     	add	x1, x1, #0x0
		0000000000000c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     c60: d102a273     	sub	x19, x19, #0xa8
     c64: 94000000     	bl	0xc64 <goodixfp_init_drm_notifier+0xf4>
		0000000000000c64:  R_AARCH64_CALL26	_printk
     c68: f9400282     	ldr	x2, [x20]
		0000000000000c68:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
     c6c: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c6c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe68
     c70: 91000063     	add	x3, x3, #0x0
		0000000000000c70:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe68
     c74: 52800020     	mov	w0, #0x1                // =1
     c78: 52800061     	mov	w1, #0x3                // =3
     c7c: aa1303e4     	mov	x4, x19
     c80: 94000000     	bl	0xc80 <goodixfp_init_drm_notifier+0x110>
		0000000000000c80:  R_AARCH64_CALL26	panel_event_notifier_register
     c84: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c84:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     c88: f9000100     	str	x0, [x8]
		0000000000000c88:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     c8c: b5fffc80     	cbnz	x0, 0xc1c <goodixfp_init_drm_notifier+0xac>
     c90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468
     c94: 91000000     	add	x0, x0, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468
     c98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c9c: 91000021     	add	x1, x1, #0x0
		0000000000000c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     ca0: 94000000     	bl	0xca0 <goodixfp_init_drm_notifier+0x130>
		0000000000000ca0:  R_AARCH64_CALL26	_printk
     ca4: 17ffffde     	b	0xc1c <goodixfp_init_drm_notifier+0xac>
