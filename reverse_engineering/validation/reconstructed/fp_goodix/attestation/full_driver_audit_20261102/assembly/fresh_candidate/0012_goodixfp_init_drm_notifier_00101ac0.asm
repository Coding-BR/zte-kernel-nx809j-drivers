
/input/fp_goodix.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b74 <goodixfp_init_drm_notifier>:
     b74: d503233f     	paciasp
     b78: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
     b7c: f9000bf7     	str	x23, [sp, #0x10]
     b80: a90257f6     	stp	x22, x21, [sp, #0x20]
     b84: a9034ff4     	stp	x20, x19, [sp, #0x30]
     b88: 910003fd     	mov	x29, sp
     b8c: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     b90: 91000294     	add	x20, x20, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     b94: aa0003f3     	mov	x19, x0
     b98: 52884816     	mov	w22, #0x4240            // =16960
     b9c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xee2
     ba0: 91000000     	add	x0, x0, #0x0
		0000000000000ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xee2
     ba4: aa1403e1     	mov	x1, x20
     ba8: 72a001f6     	movk	w22, #0xf, lsl #16
     bac: 94000000     	bl	0xbac <goodixfp_init_drm_notifier+0x38>
		0000000000000bac:  R_AARCH64_CALL26	_printk
     bb0: f8570268     	ldur	x8, [x19, #-0x90]
     bb4: f9417d00     	ldr	x0, [x8, #0x2f8]
     bb8: 94000058     	bl	0xd18 <goodixfp_drm_get_pannel>
     bbc: 2a1f03f7     	mov	w23, wzr
     bc0: 90000015     	adrp	x21, 0x0 <.text>
		0000000000000bc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xdcc
     bc4: 910002b5     	add	x21, x21, #0x0
		0000000000000bc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xdcc
     bc8: 1400000f     	b	0xc04 <goodixfp_init_drm_notifier+0x90>
     bcc: aa1503e0     	mov	x0, x21
     bd0: aa1403e1     	mov	x1, x20
     bd4: 94000000     	bl	0xbd4 <goodixfp_init_drm_notifier+0x60>
		0000000000000bd4:  R_AARCH64_CALL26	_printk
     bd8: 52884800     	mov	w0, #0x4240             // =16960
     bdc: 910fa2c1     	add	x1, x22, #0x3e8
     be0: 52800042     	mov	w2, #0x2                // =2
     be4: 72a001e0     	movk	w0, #0xf, lsl #16
     be8: 94000000     	bl	0xbe8 <goodixfp_init_drm_notifier+0x74>
		0000000000000be8:  R_AARCH64_CALL26	usleep_range_state
     bec: f8570268     	ldur	x8, [x19, #-0x90]
     bf0: f9417d00     	ldr	x0, [x8, #0x2f8]
     bf4: 94000049     	bl	0xd18 <goodixfp_drm_get_pannel>
     bf8: 110006f7     	add	w23, w23, #0x1
     bfc: 710066ff     	cmp	w23, #0x19
     c00: 540001c0     	b.eq	0xc38 <goodixfp_init_drm_notifier+0xc4>
     c04: 35fffe40     	cbnz	w0, 0xbcc <goodixfp_init_drm_notifier+0x58>
     c08: 110006f7     	add	w23, w23, #0x1
     c0c: 710066ff     	cmp	w23, #0x19
     c10: 54ffffa1     	b.ne	0xc04 <goodixfp_init_drm_notifier+0x90>
     c14: 90000014     	adrp	x20, 0x0 <.text>
		0000000000000c14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
     c18: f9400288     	ldr	x8, [x20]
		0000000000000c18:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
     c1c: b50001c8     	cbnz	x8, 0xc54 <goodixfp_init_drm_notifier+0xe0>
     c20: a9434ff4     	ldp	x20, x19, [sp, #0x30]
     c24: f9400bf7     	ldr	x23, [sp, #0x10]
     c28: a94257f6     	ldp	x22, x21, [sp, #0x20]
     c2c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
     c30: d50323bf     	autiasp
     c34: d65f03c0     	ret
     c38: 34fffee0     	cbz	w0, 0xc14 <goodixfp_init_drm_notifier+0xa0>
     c3c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xefb
     c40: 91000000     	add	x0, x0, #0x0
		0000000000000c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xefb
     c44: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c48: 91000021     	add	x1, x1, #0x0
		0000000000000c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     c4c: 94000000     	bl	0xc4c <goodixfp_init_drm_notifier+0xd8>
		0000000000000c4c:  R_AARCH64_CALL26	_printk
     c50: 17fffff1     	b	0xc14 <goodixfp_init_drm_notifier+0xa0>
     c54: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10a9
     c58: 91000000     	add	x0, x0, #0x0
		0000000000000c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10a9
     c5c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     c60: 91000021     	add	x1, x1, #0x0
		0000000000000c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     c64: d102a273     	sub	x19, x19, #0xa8
     c68: 94000000     	bl	0xc68 <goodixfp_init_drm_notifier+0xf4>
		0000000000000c68:  R_AARCH64_CALL26	_printk
     c6c: f9400282     	ldr	x2, [x20]
		0000000000000c6c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
     c70: 90000003     	adrp	x3, 0x0 <.text>
		0000000000000c70:  R_AARCH64_ADR_PREL_PG_HI21	.text+0xe6c
     c74: 91000063     	add	x3, x3, #0x0
		0000000000000c74:  R_AARCH64_ADD_ABS_LO12_NC	.text+0xe6c
     c78: 52800020     	mov	w0, #0x1                // =1
     c7c: 52800061     	mov	w1, #0x3                // =3
     c80: aa1303e4     	mov	x4, x19
     c84: 94000000     	bl	0xc84 <goodixfp_init_drm_notifier+0x110>
		0000000000000c84:  R_AARCH64_CALL26	panel_event_notifier_register
     c88: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000c88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
     c8c: f9000100     	str	x0, [x8]
		0000000000000c8c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
     c90: b5fffc80     	cbnz	x0, 0xc20 <goodixfp_init_drm_notifier+0xac>
     c94: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x468
     c98: 91000000     	add	x0, x0, #0x0
		0000000000000c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x468
     c9c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x409
     ca0: 91000021     	add	x1, x1, #0x0
		0000000000000ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x409
     ca4: 94000000     	bl	0xca4 <goodixfp_init_drm_notifier+0x130>
		0000000000000ca4:  R_AARCH64_CALL26	_printk
     ca8: 17ffffde     	b	0xc20 <goodixfp_init_drm_notifier+0xac>
