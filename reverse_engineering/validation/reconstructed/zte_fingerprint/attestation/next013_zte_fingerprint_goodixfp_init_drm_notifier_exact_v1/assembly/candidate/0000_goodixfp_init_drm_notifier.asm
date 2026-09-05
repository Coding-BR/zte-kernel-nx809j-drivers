
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c74 <goodixfp_init_drm_notifier>:
    1c74: d503233f     	paciasp
    1c78: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1c7c: f9000bf7     	str	x23, [sp, #0x10]
    1c80: a90257f6     	stp	x22, x21, [sp, #0x20]
    1c84: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1c88: 910003fd     	mov	x29, sp
    1c8c: 90000014     	adrp	x20, 0x1000 <gf_release+0xd8>
		0000000000001c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d7
    1c90: 91000294     	add	x20, x20, #0x0
		0000000000001c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d7
    1c94: aa0003f3     	mov	x19, x0
    1c98: 52884816     	mov	w22, #0x4240            // =16960
    1c9c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001c9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x858
    1ca0: 91000000     	add	x0, x0, #0x0
		0000000000001ca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x858
    1ca4: aa1403e1     	mov	x1, x20
    1ca8: 72a001f6     	movk	w22, #0xf, lsl #16
    1cac: 94000000     	bl	0x1cac <goodixfp_init_drm_notifier+0x38>
		0000000000001cac:  R_AARCH64_CALL26	_printk
    1cb0: f8570268     	ldur	x8, [x19, #-0x90]
    1cb4: f9417d00     	ldr	x0, [x8, #0x2f8]
    1cb8: 94000058     	bl	0x1e18 <goodixfp_drm_get_pannel>
    1cbc: 2a1f03f7     	mov	w23, wzr
    1cc0: 90000015     	adrp	x21, 0x1000 <gf_release+0xd8>
		0000000000001cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f2
    1cc4: 910002b5     	add	x21, x21, #0x0
		0000000000001cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f2
    1cc8: 1400000f     	b	0x1d04 <goodixfp_init_drm_notifier+0x90>
    1ccc: aa1503e0     	mov	x0, x21
    1cd0: aa1403e1     	mov	x1, x20
    1cd4: 94000000     	bl	0x1cd4 <goodixfp_init_drm_notifier+0x60>
		0000000000001cd4:  R_AARCH64_CALL26	_printk
    1cd8: 52884800     	mov	w0, #0x4240             // =16960
    1cdc: 910fa2c1     	add	x1, x22, #0x3e8
    1ce0: 52800042     	mov	w2, #0x2                // =2
    1ce4: 72a001e0     	movk	w0, #0xf, lsl #16
    1ce8: 94000000     	bl	0x1ce8 <goodixfp_init_drm_notifier+0x74>
		0000000000001ce8:  R_AARCH64_CALL26	usleep_range_state
    1cec: f8570268     	ldur	x8, [x19, #-0x90]
    1cf0: f9417d00     	ldr	x0, [x8, #0x2f8]
    1cf4: 94000049     	bl	0x1e18 <goodixfp_drm_get_pannel>
    1cf8: 110006f7     	add	w23, w23, #0x1
    1cfc: 710066ff     	cmp	w23, #0x19
    1d00: 540001c0     	b.eq	0x1d38 <goodixfp_init_drm_notifier+0xc4>
    1d04: 35fffe40     	cbnz	w0, 0x1ccc <goodixfp_init_drm_notifier+0x58>
    1d08: 110006f7     	add	w23, w23, #0x1
    1d0c: 710066ff     	cmp	w23, #0x19
    1d10: 54ffffa1     	b.ne	0x1d04 <goodixfp_init_drm_notifier+0x90>
    1d14: 90000014     	adrp	x20, 0x1000 <gf_release+0xd8>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1d18: f9400288     	ldr	x8, [x20]
		0000000000001d18:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1d1c: b50001c8     	cbnz	x8, 0x1d54 <goodixfp_init_drm_notifier+0xe0>
    1d20: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1d24: f9400bf7     	ldr	x23, [sp, #0x10]
    1d28: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1d2c: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1d30: d50323bf     	autiasp
    1d34: d65f03c0     	ret
    1d38: 34fffee0     	cbz	w0, 0x1d14 <goodixfp_init_drm_notifier+0xa0>
    1d3c: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001d3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe29
    1d40: 91000000     	add	x0, x0, #0x0
		0000000000001d40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe29
    1d44: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d7
    1d48: 91000021     	add	x1, x1, #0x0
		0000000000001d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d7
    1d4c: 94000000     	bl	0x1d4c <goodixfp_init_drm_notifier+0xd8>
		0000000000001d4c:  R_AARCH64_CALL26	_printk
    1d50: 17fffff1     	b	0x1d14 <goodixfp_init_drm_notifier+0xa0>
    1d54: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001d54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95a
    1d58: 91000000     	add	x0, x0, #0x0
		0000000000001d58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95a
    1d5c: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001d5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d7
    1d60: 91000021     	add	x1, x1, #0x0
		0000000000001d60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d7
    1d64: d102a273     	sub	x19, x19, #0xa8
    1d68: 94000000     	bl	0x1d68 <goodixfp_init_drm_notifier+0xf4>
		0000000000001d68:  R_AARCH64_CALL26	_printk
    1d6c: f9400282     	ldr	x2, [x20]
		0000000000001d6c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1d70: 90000003     	adrp	x3, 0x1000 <gf_release+0xd8>
		0000000000001d70:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1f88
    1d74: 91000063     	add	x3, x3, #0x0
		0000000000001d74:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1f88
    1d78: 52800020     	mov	w0, #0x1                // =1
    1d7c: 52800061     	mov	w1, #0x3                // =3
    1d80: aa1303e4     	mov	x4, x19
    1d84: 94000000     	bl	0x1d84 <goodixfp_init_drm_notifier+0x110>
		0000000000001d84:  R_AARCH64_CALL26	panel_event_notifier_register
    1d88: 90000008     	adrp	x8, 0x1000 <gf_release+0xd8>
		0000000000001d88:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
    1d8c: f9000100     	str	x0, [x8]
		0000000000001d8c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x200
    1d90: b5fffc80     	cbnz	x0, 0x1d20 <goodixfp_init_drm_notifier+0xac>
    1d94: 90000000     	adrp	x0, 0x1000 <gf_release+0xd8>
		0000000000001d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1073
    1d98: 91000000     	add	x0, x0, #0x0
		0000000000001d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1073
    1d9c: 90000001     	adrp	x1, 0x1000 <gf_release+0xd8>
		0000000000001d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2d7
    1da0: 91000021     	add	x1, x1, #0x0
		0000000000001da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2d7
    1da4: 94000000     	bl	0x1da4 <goodixfp_init_drm_notifier+0x130>
		0000000000001da4:  R_AARCH64_CALL26	_printk
    1da8: 17ffffde     	b	0x1d20 <goodixfp_init_drm_notifier+0xac>
