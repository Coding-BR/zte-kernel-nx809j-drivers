
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c40 <goodixfp_init_drm_notifier>:
    1c40: d503233f     	paciasp
    1c44: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1c48: f9000bf7     	str	x23, [sp, #0x10]
    1c4c: a90257f6     	stp	x22, x21, [sp, #0x20]
    1c50: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1c54: 910003fd     	mov	x29, sp
    1c58: aa0003f3     	mov	x19, x0
    1c5c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001c5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x664
    1c60: 91000000     	add	x0, x0, #0x0
		0000000000001c60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x664
    1c64: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
    1c68: 91000021     	add	x1, x1, #0x0
		0000000000001c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
    1c6c: 94000000     	bl	0x1c6c <goodixfp_init_drm_notifier+0x2c>
		0000000000001c6c:  R_AARCH64_CALL26	_printk
    1c70: f8570268     	ldur	x8, [x19, #-0x90]
    1c74: f9417d00     	ldr	x0, [x8, #0x2f8]
    1c78: 9400005b     	bl	0x1de4 <goodixfp_drm_get_pannel>
    1c7c: 340003a0     	cbz	w0, 0x1cf0 <goodixfp_init_drm_notifier+0xb0>
    1c80: 52884817     	mov	w23, #0x4240            // =16960
    1c84: 2a1f03f6     	mov	w22, wzr
    1c88: 90000014     	adrp	x20, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001c88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb7
    1c8c: 91000294     	add	x20, x20, #0x0
		0000000000001c8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb7
    1c90: 72a001f7     	movk	w23, #0xf, lsl #16
    1c94: 90000015     	adrp	x21, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
    1c98: 910002b5     	add	x21, x21, #0x0
		0000000000001c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
    1c9c: aa1403e0     	mov	x0, x20
    1ca0: aa1503e1     	mov	x1, x21
    1ca4: 94000000     	bl	0x1ca4 <goodixfp_init_drm_notifier+0x64>
		0000000000001ca4:  R_AARCH64_CALL26	_printk
    1ca8: 52884800     	mov	w0, #0x4240             // =16960
    1cac: 910fa2e1     	add	x1, x23, #0x3e8
    1cb0: 52800042     	mov	w2, #0x2                // =2
    1cb4: 72a001e0     	movk	w0, #0xf, lsl #16
    1cb8: 94000000     	bl	0x1cb8 <goodixfp_init_drm_notifier+0x78>
		0000000000001cb8:  R_AARCH64_CALL26	usleep_range_state
    1cbc: f8570268     	ldur	x8, [x19, #-0x90]
    1cc0: f9417d00     	ldr	x0, [x8, #0x2f8]
    1cc4: 94000048     	bl	0x1de4 <goodixfp_drm_get_pannel>
    1cc8: 71005edf     	cmp	w22, #0x17
    1ccc: 54000068     	b.hi	0x1cd8 <goodixfp_init_drm_notifier+0x98>
    1cd0: 110006d6     	add	w22, w22, #0x1
    1cd4: 35fffe40     	cbnz	w0, 0x1c9c <goodixfp_init_drm_notifier+0x5c>
    1cd8: 340000c0     	cbz	w0, 0x1cf0 <goodixfp_init_drm_notifier+0xb0>
    1cdc: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaab
    1ce0: 91000000     	add	x0, x0, #0x0
		0000000000001ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaab
    1ce4: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
    1ce8: 91000021     	add	x1, x1, #0x0
		0000000000001ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
    1cec: 94000000     	bl	0x1cec <goodixfp_init_drm_notifier+0xac>
		0000000000001cec:  R_AARCH64_CALL26	_printk
    1cf0: 90000014     	adrp	x20, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001cf0:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f8
    1cf4: f9400288     	ldr	x8, [x20]
		0000000000001cf4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1cf8: b50000e8     	cbnz	x8, 0x1d14 <goodixfp_init_drm_notifier+0xd4>
    1cfc: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001cfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x872
    1d00: 91000000     	add	x0, x0, #0x0
		0000000000001d00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x872
    1d04: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
    1d08: 91000021     	add	x1, x1, #0x0
		0000000000001d08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
    1d0c: 94000000     	bl	0x1d0c <goodixfp_init_drm_notifier+0xcc>
		0000000000001d0c:  R_AARCH64_CALL26	_printk
    1d10: 14000011     	b	0x1d54 <goodixfp_init_drm_notifier+0x114>
    1d14: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb0e
    1d18: 91000000     	add	x0, x0, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb0e
    1d1c: 90000001     	adrp	x1, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a2
    1d20: 91000021     	add	x1, x1, #0x0
		0000000000001d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a2
    1d24: d102a273     	sub	x19, x19, #0xa8
    1d28: 94000000     	bl	0x1d28 <goodixfp_init_drm_notifier+0xe8>
		0000000000001d28:  R_AARCH64_CALL26	_printk
    1d2c: f9400282     	ldr	x2, [x20]
		0000000000001d2c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f8
    1d30: 90000003     	adrp	x3, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d30:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1f54
    1d34: 91000063     	add	x3, x3, #0x0
		0000000000001d34:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1f54
    1d38: 2a1f03e0     	mov	w0, wzr
    1d3c: 52800041     	mov	w1, #0x2                // =2
    1d40: aa1303e4     	mov	x4, x19
    1d44: 94000000     	bl	0x1d44 <goodixfp_init_drm_notifier+0x104>
		0000000000001d44:  R_AARCH64_CALL26	panel_event_notifier_register
    1d48: 90000008     	adrp	x8, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d48:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x200
    1d4c: f9000100     	str	x0, [x8]
		0000000000001d4c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x200
    1d50: b40000e0     	cbz	x0, 0x1d6c <goodixfp_init_drm_notifier+0x12c>
    1d54: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1d58: f9400bf7     	ldr	x23, [sp, #0x10]
    1d5c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1d60: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1d64: d50323bf     	autiasp
    1d68: d65f03c0     	ret
    1d6c: 90000000     	adrp	x0, 0x1000 <_inline_copy_from_user+0x20>
		0000000000001d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10c
    1d70: 91000000     	add	x0, x0, #0x0
		0000000000001d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10c
    1d74: 17ffffe4     	b	0x1d04 <goodixfp_init_drm_notifier+0xc4>
