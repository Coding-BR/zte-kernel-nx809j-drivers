
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c7c <goodixfp_init_drm_notifier>:
    1c7c: d503233f     	paciasp
    1c80: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1c84: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1c88: a90257f6     	stp	x22, x21, [sp, #0x20]
    1c8c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1c90: 910003fd     	mov	x29, sp
    1c94: aa0003f4     	mov	x20, x0
    1c98: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001c98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc
    1c9c: 91000000     	add	x0, x0, #0x0
		0000000000001c9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc
    1ca0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1ca4: 91000021     	add	x1, x1, #0x0
		0000000000001ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1ca8: 94000000     	bl	0x1ca8 <goodixfp_init_drm_notifier+0x2c>
		0000000000001ca8:  R_AARCH64_CALL26	_printk
    1cac: 385cb288     	ldurb	w8, [x20, #-0x35]
    1cb0: 340000e8     	cbz	w8, 0x1ccc <goodixfp_init_drm_notifier+0x50>
    1cb4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1cb8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1cbc: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1cc0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1cc4: d50323bf     	autiasp
    1cc8: d65f03c0     	ret
    1ccc: f8570288     	ldur	x8, [x20, #-0x90]
    1cd0: b4ffff28     	cbz	x8, 0x1cb4 <goodixfp_init_drm_notifier+0x38>
    1cd4: f9417d00     	ldr	x0, [x8, #0x2f8]
    1cd8: 52884817     	mov	w23, #0x4240            // =16960
    1cdc: d102a293     	sub	x19, x20, #0xa8
    1ce0: 72a001f7     	movk	w23, #0xf, lsl #16
    1ce4: 94000047     	bl	0x1e00 <goodixfp_drm_get_pannel>
    1ce8: 2a1f03f8     	mov	w24, wzr
    1cec: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3ec>
		0000000000001cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ec
    1cf0: 910002b5     	add	x21, x21, #0x0
		0000000000001cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ec
    1cf4: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3ec>
		0000000000001cf4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1cf8: 910002d6     	add	x22, x22, #0x0
		0000000000001cf8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1cfc: 14000004     	b	0x1d0c <goodixfp_init_drm_notifier+0x90>
    1d00: 11000718     	add	w24, w24, #0x1
    1d04: 7100671f     	cmp	w24, #0x19
    1d08: 540002a0     	b.eq	0x1d5c <goodixfp_init_drm_notifier+0xe0>
    1d0c: 34ffffa0     	cbz	w0, 0x1d00 <goodixfp_init_drm_notifier+0x84>
    1d10: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d14: 35fffd08     	cbnz	w8, 0x1cb4 <goodixfp_init_drm_notifier+0x38>
    1d18: aa1503e0     	mov	x0, x21
    1d1c: aa1603e1     	mov	x1, x22
    1d20: 94000000     	bl	0x1d20 <goodixfp_init_drm_notifier+0xa4>
		0000000000001d20:  R_AARCH64_CALL26	_printk
    1d24: 52884800     	mov	w0, #0x4240             // =16960
    1d28: 910fa2e1     	add	x1, x23, #0x3e8
    1d2c: 52800042     	mov	w2, #0x2                // =2
    1d30: 72a001e0     	movk	w0, #0xf, lsl #16
    1d34: 94000000     	bl	0x1d34 <goodixfp_init_drm_notifier+0xb8>
		0000000000001d34:  R_AARCH64_CALL26	usleep_range_state
    1d38: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d3c: 35fffbc8     	cbnz	w8, 0x1cb4 <goodixfp_init_drm_notifier+0x38>
    1d40: f8570288     	ldur	x8, [x20, #-0x90]
    1d44: f9417d00     	ldr	x0, [x8, #0x2f8]
    1d48: 9400002e     	bl	0x1e00 <goodixfp_drm_get_pannel>
    1d4c: 11000718     	add	w24, w24, #0x1
    1d50: 7100671f     	cmp	w24, #0x19
    1d54: 54fffdc1     	b.ne	0x1d0c <goodixfp_init_drm_notifier+0x90>
    1d58: 350001e0     	cbnz	w0, 0x1d94 <goodixfp_init_drm_notifier+0x118>
    1d5c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001d5c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1d60: 91000000     	add	x0, x0, #0x0
		0000000000001d60:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1d64: 94000000     	bl	0x1d64 <goodixfp_init_drm_notifier+0xe8>
		0000000000001d64:  R_AARCH64_CALL26	mutex_lock
    1d68: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d6c: 350000c8     	cbnz	w8, 0x1d84 <goodixfp_init_drm_notifier+0x108>
    1d70: f8570288     	ldur	x8, [x20, #-0x90]
    1d74: b4000088     	cbz	x8, 0x1d84 <goodixfp_init_drm_notifier+0x108>
    1d78: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3ec>
		0000000000001d78:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1d7c: f9400288     	ldr	x8, [x20]
		0000000000001d7c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1d80: b5000168     	cbnz	x8, 0x1dac <goodixfp_init_drm_notifier+0x130>
    1d84: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001d84:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1d88: 91000000     	add	x0, x0, #0x0
		0000000000001d88:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1d8c: 94000000     	bl	0x1d8c <goodixfp_init_drm_notifier+0x110>
		0000000000001d8c:  R_AARCH64_CALL26	mutex_unlock
    1d90: 17ffffc9     	b	0x1cb4 <goodixfp_init_drm_notifier+0x38>
    1d94: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001d94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1290
    1d98: 91000000     	add	x0, x0, #0x0
		0000000000001d98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1290
    1d9c: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001d9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1da0: 91000021     	add	x1, x1, #0x0
		0000000000001da0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1da4: 94000000     	bl	0x1da4 <goodixfp_init_drm_notifier+0x128>
		0000000000001da4:  R_AARCH64_CALL26	_printk
    1da8: 17ffffed     	b	0x1d5c <goodixfp_init_drm_notifier+0xe0>
    1dac: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1f
    1db0: 91000000     	add	x0, x0, #0x0
		0000000000001db0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1f
    1db4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1db8: 91000021     	add	x1, x1, #0x0
		0000000000001db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1dbc: 94000000     	bl	0x1dbc <goodixfp_init_drm_notifier+0x140>
		0000000000001dbc:  R_AARCH64_CALL26	_printk
    1dc0: f9400282     	ldr	x2, [x20]
		0000000000001dc0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1dc4: 90000003     	adrp	x3, 0x1000 <gf_ioctl+0x3ec>
		0000000000001dc4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1f54
    1dc8: 91000063     	add	x3, x3, #0x0
		0000000000001dc8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1f54
    1dcc: 52800020     	mov	w0, #0x1                // =1
    1dd0: 52800061     	mov	w1, #0x3                // =3
    1dd4: aa1303e4     	mov	x4, x19
    1dd8: 94000000     	bl	0x1dd8 <goodixfp_init_drm_notifier+0x15c>
		0000000000001dd8:  R_AARCH64_CALL26	panel_event_notifier_register
    1ddc: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3ec>
		0000000000001ddc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1de0: f9000100     	str	x0, [x8]
		0000000000001de0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1de4: b5fffd00     	cbnz	x0, 0x1d84 <goodixfp_init_drm_notifier+0x108>
    1de8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3ec>
		0000000000001de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a3
    1dec: 91000000     	add	x0, x0, #0x0
		0000000000001dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a3
    1df0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3ec>
		0000000000001df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1df4: 91000021     	add	x1, x1, #0x0
		0000000000001df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1df8: 94000000     	bl	0x1df8 <goodixfp_init_drm_notifier+0x17c>
		0000000000001df8:  R_AARCH64_CALL26	_printk
    1dfc: 17ffffe2     	b	0x1d84 <goodixfp_init_drm_notifier+0x108>
