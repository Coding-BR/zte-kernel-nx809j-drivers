
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001cb0 <goodixfp_init_drm_notifier>:
    1cb0: d503233f     	paciasp
    1cb4: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1cb8: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1cbc: a90257f6     	stp	x22, x21, [sp, #0x20]
    1cc0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1cc4: 910003fd     	mov	x29, sp
    1cc8: aa0003f4     	mov	x20, x0
    1ccc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbdc
    1cd0: 91000000     	add	x0, x0, #0x0
		0000000000001cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbdc
    1cd4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1cd8: 91000021     	add	x1, x1, #0x0
		0000000000001cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1cdc: 94000000     	bl	0x1cdc <goodixfp_init_drm_notifier+0x2c>
		0000000000001cdc:  R_AARCH64_CALL26	_printk
    1ce0: 385cb288     	ldurb	w8, [x20, #-0x35]
    1ce4: 340000e8     	cbz	w8, 0x1d00 <goodixfp_init_drm_notifier+0x50>
    1ce8: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1cec: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1cf0: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1cf4: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1cf8: d50323bf     	autiasp
    1cfc: d65f03c0     	ret
    1d00: f8570288     	ldur	x8, [x20, #-0x90]
    1d04: b4ffff28     	cbz	x8, 0x1ce8 <goodixfp_init_drm_notifier+0x38>
    1d08: f9417d00     	ldr	x0, [x8, #0x2f8]
    1d0c: 52884817     	mov	w23, #0x4240            // =16960
    1d10: d102a293     	sub	x19, x20, #0xa8
    1d14: 72a001f7     	movk	w23, #0xf, lsl #16
    1d18: 94000047     	bl	0x1e34 <goodixfp_drm_get_pannel>
    1d1c: 2a1f03f8     	mov	w24, wzr
    1d20: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3b8>
		0000000000001d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ec
    1d24: 910002b5     	add	x21, x21, #0x0
		0000000000001d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ec
    1d28: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3b8>
		0000000000001d28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1d2c: 910002d6     	add	x22, x22, #0x0
		0000000000001d2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1d30: 14000004     	b	0x1d40 <goodixfp_init_drm_notifier+0x90>
    1d34: 11000718     	add	w24, w24, #0x1
    1d38: 7100671f     	cmp	w24, #0x19
    1d3c: 540002a0     	b.eq	0x1d90 <goodixfp_init_drm_notifier+0xe0>
    1d40: 34ffffa0     	cbz	w0, 0x1d34 <goodixfp_init_drm_notifier+0x84>
    1d44: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d48: 35fffd08     	cbnz	w8, 0x1ce8 <goodixfp_init_drm_notifier+0x38>
    1d4c: aa1503e0     	mov	x0, x21
    1d50: aa1603e1     	mov	x1, x22
    1d54: 94000000     	bl	0x1d54 <goodixfp_init_drm_notifier+0xa4>
		0000000000001d54:  R_AARCH64_CALL26	_printk
    1d58: 52884800     	mov	w0, #0x4240             // =16960
    1d5c: 910fa2e1     	add	x1, x23, #0x3e8
    1d60: 52800042     	mov	w2, #0x2                // =2
    1d64: 72a001e0     	movk	w0, #0xf, lsl #16
    1d68: 94000000     	bl	0x1d68 <goodixfp_init_drm_notifier+0xb8>
		0000000000001d68:  R_AARCH64_CALL26	usleep_range_state
    1d6c: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d70: 35fffbc8     	cbnz	w8, 0x1ce8 <goodixfp_init_drm_notifier+0x38>
    1d74: f8570288     	ldur	x8, [x20, #-0x90]
    1d78: f9417d00     	ldr	x0, [x8, #0x2f8]
    1d7c: 9400002e     	bl	0x1e34 <goodixfp_drm_get_pannel>
    1d80: 11000718     	add	w24, w24, #0x1
    1d84: 7100671f     	cmp	w24, #0x19
    1d88: 54fffdc1     	b.ne	0x1d40 <goodixfp_init_drm_notifier+0x90>
    1d8c: 350001e0     	cbnz	w0, 0x1dc8 <goodixfp_init_drm_notifier+0x118>
    1d90: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001d90:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1d94: 91000000     	add	x0, x0, #0x0
		0000000000001d94:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1d98: 94000000     	bl	0x1d98 <goodixfp_init_drm_notifier+0xe8>
		0000000000001d98:  R_AARCH64_CALL26	mutex_lock
    1d9c: 385cb288     	ldurb	w8, [x20, #-0x35]
    1da0: 350000c8     	cbnz	w8, 0x1db8 <goodixfp_init_drm_notifier+0x108>
    1da4: f8570288     	ldur	x8, [x20, #-0x90]
    1da8: b4000088     	cbz	x8, 0x1db8 <goodixfp_init_drm_notifier+0x108>
    1dac: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3b8>
		0000000000001dac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1db0: f9400288     	ldr	x8, [x20]
		0000000000001db0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1db4: b5000168     	cbnz	x8, 0x1de0 <goodixfp_init_drm_notifier+0x130>
    1db8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001db8:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1dbc: 91000000     	add	x0, x0, #0x0
		0000000000001dbc:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1dc0: 94000000     	bl	0x1dc0 <goodixfp_init_drm_notifier+0x110>
		0000000000001dc0:  R_AARCH64_CALL26	mutex_unlock
    1dc4: 17ffffc9     	b	0x1ce8 <goodixfp_init_drm_notifier+0x38>
    1dc8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1290
    1dcc: 91000000     	add	x0, x0, #0x0
		0000000000001dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1290
    1dd0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001dd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1dd4: 91000021     	add	x1, x1, #0x0
		0000000000001dd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1dd8: 94000000     	bl	0x1dd8 <goodixfp_init_drm_notifier+0x128>
		0000000000001dd8:  R_AARCH64_CALL26	_printk
    1ddc: 17ffffed     	b	0x1d90 <goodixfp_init_drm_notifier+0xe0>
    1de0: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001de0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd1f
    1de4: 91000000     	add	x0, x0, #0x0
		0000000000001de4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd1f
    1de8: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1dec: 91000021     	add	x1, x1, #0x0
		0000000000001dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1df0: 94000000     	bl	0x1df0 <goodixfp_init_drm_notifier+0x140>
		0000000000001df0:  R_AARCH64_CALL26	_printk
    1df4: f9400282     	ldr	x2, [x20]
		0000000000001df4:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1df8: 90000003     	adrp	x3, 0x1000 <gf_ioctl+0x3b8>
		0000000000001df8:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1f88
    1dfc: 91000063     	add	x3, x3, #0x0
		0000000000001dfc:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1f88
    1e00: 52800020     	mov	w0, #0x1                // =1
    1e04: 52800061     	mov	w1, #0x3                // =3
    1e08: aa1303e4     	mov	x4, x19
    1e0c: 94000000     	bl	0x1e0c <goodixfp_init_drm_notifier+0x15c>
		0000000000001e0c:  R_AARCH64_CALL26	panel_event_notifier_register
    1e10: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3b8>
		0000000000001e10:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1e14: f9000100     	str	x0, [x8]
		0000000000001e14:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1e18: b5fffd00     	cbnz	x0, 0x1db8 <goodixfp_init_drm_notifier+0x108>
    1e1c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3b8>
		0000000000001e1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x14a3
    1e20: 91000000     	add	x0, x0, #0x0
		0000000000001e20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x14a3
    1e24: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3b8>
		0000000000001e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5d1
    1e28: 91000021     	add	x1, x1, #0x0
		0000000000001e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5d1
    1e2c: 94000000     	bl	0x1e2c <goodixfp_init_drm_notifier+0x17c>
		0000000000001e2c:  R_AARCH64_CALL26	_printk
    1e30: 17ffffe2     	b	0x1db8 <goodixfp_init_drm_notifier+0x108>
