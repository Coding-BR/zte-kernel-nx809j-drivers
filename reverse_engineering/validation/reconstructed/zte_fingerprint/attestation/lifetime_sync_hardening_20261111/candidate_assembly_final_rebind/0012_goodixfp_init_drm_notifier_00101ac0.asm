
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001c9c <goodixfp_init_drm_notifier>:
    1c9c: d503233f     	paciasp
    1ca0: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1ca4: a9015ff8     	stp	x24, x23, [sp, #0x10]
    1ca8: a90257f6     	stp	x22, x21, [sp, #0x20]
    1cac: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1cb0: 910003fd     	mov	x29, sp
    1cb4: aa0003f4     	mov	x20, x0
    1cb8: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001cb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbaa
    1cbc: 91000000     	add	x0, x0, #0x0
		0000000000001cbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbaa
    1cc0: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001cc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f
    1cc4: 91000021     	add	x1, x1, #0x0
		0000000000001cc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f
    1cc8: 94000000     	bl	0x1cc8 <goodixfp_init_drm_notifier+0x2c>
		0000000000001cc8:  R_AARCH64_CALL26	_printk
    1ccc: 385cb288     	ldurb	w8, [x20, #-0x35]
    1cd0: 340000e8     	cbz	w8, 0x1cec <goodixfp_init_drm_notifier+0x50>
    1cd4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1cd8: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1cdc: a9415ff8     	ldp	x24, x23, [sp, #0x10]
    1ce0: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1ce4: d50323bf     	autiasp
    1ce8: d65f03c0     	ret
    1cec: f8570288     	ldur	x8, [x20, #-0x90]
    1cf0: b4ffff28     	cbz	x8, 0x1cd4 <goodixfp_init_drm_notifier+0x38>
    1cf4: f9417d00     	ldr	x0, [x8, #0x2f8]
    1cf8: 52884817     	mov	w23, #0x4240            // =16960
    1cfc: d102a293     	sub	x19, x20, #0xa8
    1d00: 72a001f7     	movk	w23, #0xf, lsl #16
    1d04: 94000047     	bl	0x1e20 <goodixfp_drm_get_pannel>
    1d08: 2a1f03f8     	mov	w24, wzr
    1d0c: 90000015     	adrp	x21, 0x1000 <gf_ioctl+0x3cc>
		0000000000001d0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ba
    1d10: 910002b5     	add	x21, x21, #0x0
		0000000000001d10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ba
    1d14: 90000016     	adrp	x22, 0x1000 <gf_ioctl+0x3cc>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f
    1d18: 910002d6     	add	x22, x22, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f
    1d1c: 14000004     	b	0x1d2c <goodixfp_init_drm_notifier+0x90>
    1d20: 11000718     	add	w24, w24, #0x1
    1d24: 7100671f     	cmp	w24, #0x19
    1d28: 540002a0     	b.eq	0x1d7c <goodixfp_init_drm_notifier+0xe0>
    1d2c: 34ffffa0     	cbz	w0, 0x1d20 <goodixfp_init_drm_notifier+0x84>
    1d30: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d34: 35fffd08     	cbnz	w8, 0x1cd4 <goodixfp_init_drm_notifier+0x38>
    1d38: aa1503e0     	mov	x0, x21
    1d3c: aa1603e1     	mov	x1, x22
    1d40: 94000000     	bl	0x1d40 <goodixfp_init_drm_notifier+0xa4>
		0000000000001d40:  R_AARCH64_CALL26	_printk
    1d44: 52884800     	mov	w0, #0x4240             // =16960
    1d48: 910fa2e1     	add	x1, x23, #0x3e8
    1d4c: 52800042     	mov	w2, #0x2                // =2
    1d50: 72a001e0     	movk	w0, #0xf, lsl #16
    1d54: 94000000     	bl	0x1d54 <goodixfp_init_drm_notifier+0xb8>
		0000000000001d54:  R_AARCH64_CALL26	usleep_range_state
    1d58: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d5c: 35fffbc8     	cbnz	w8, 0x1cd4 <goodixfp_init_drm_notifier+0x38>
    1d60: f8570288     	ldur	x8, [x20, #-0x90]
    1d64: f9417d00     	ldr	x0, [x8, #0x2f8]
    1d68: 9400002e     	bl	0x1e20 <goodixfp_drm_get_pannel>
    1d6c: 11000718     	add	w24, w24, #0x1
    1d70: 7100671f     	cmp	w24, #0x19
    1d74: 54fffdc1     	b.ne	0x1d2c <goodixfp_init_drm_notifier+0x90>
    1d78: 350001e0     	cbnz	w0, 0x1db4 <goodixfp_init_drm_notifier+0x118>
    1d7c: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001d7c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1d80: 91000000     	add	x0, x0, #0x0
		0000000000001d80:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1d84: 94000000     	bl	0x1d84 <goodixfp_init_drm_notifier+0xe8>
		0000000000001d84:  R_AARCH64_CALL26	mutex_lock
    1d88: 385cb288     	ldurb	w8, [x20, #-0x35]
    1d8c: 350000c8     	cbnz	w8, 0x1da4 <goodixfp_init_drm_notifier+0x108>
    1d90: f8570288     	ldur	x8, [x20, #-0x90]
    1d94: b4000088     	cbz	x8, 0x1da4 <goodixfp_init_drm_notifier+0x108>
    1d98: 90000014     	adrp	x20, 0x1000 <gf_ioctl+0x3cc>
		0000000000001d98:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1f0
    1d9c: f9400288     	ldr	x8, [x20]
		0000000000001d9c:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1da0: b5000168     	cbnz	x8, 0x1dcc <goodixfp_init_drm_notifier+0x130>
    1da4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001da4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x168
    1da8: 91000000     	add	x0, x0, #0x0
		0000000000001da8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x168
    1dac: 94000000     	bl	0x1dac <goodixfp_init_drm_notifier+0x110>
		0000000000001dac:  R_AARCH64_CALL26	mutex_unlock
    1db0: 17ffffc9     	b	0x1cd4 <goodixfp_init_drm_notifier+0x38>
    1db4: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x125e
    1db8: 91000000     	add	x0, x0, #0x0
		0000000000001db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x125e
    1dbc: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f
    1dc0: 91000021     	add	x1, x1, #0x0
		0000000000001dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f
    1dc4: 94000000     	bl	0x1dc4 <goodixfp_init_drm_notifier+0x128>
		0000000000001dc4:  R_AARCH64_CALL26	_printk
    1dc8: 17ffffed     	b	0x1d7c <goodixfp_init_drm_notifier+0xe0>
    1dcc: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xced
    1dd0: 91000000     	add	x0, x0, #0x0
		0000000000001dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xced
    1dd4: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f
    1dd8: 91000021     	add	x1, x1, #0x0
		0000000000001dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f
    1ddc: 94000000     	bl	0x1ddc <goodixfp_init_drm_notifier+0x140>
		0000000000001ddc:  R_AARCH64_CALL26	_printk
    1de0: f9400282     	ldr	x2, [x20]
		0000000000001de0:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1f0
    1de4: 90000003     	adrp	x3, 0x1000 <gf_ioctl+0x3cc>
		0000000000001de4:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1f74
    1de8: 91000063     	add	x3, x3, #0x0
		0000000000001de8:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1f74
    1dec: 52800020     	mov	w0, #0x1                // =1
    1df0: 52800061     	mov	w1, #0x3                // =3
    1df4: aa1303e4     	mov	x4, x19
    1df8: 94000000     	bl	0x1df8 <goodixfp_init_drm_notifier+0x15c>
		0000000000001df8:  R_AARCH64_CALL26	panel_event_notifier_register
    1dfc: 90000008     	adrp	x8, 0x1000 <gf_ioctl+0x3cc>
		0000000000001dfc:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1e8
    1e00: f9000100     	str	x0, [x8]
		0000000000001e00:  R_AARCH64_LDST64_ABS_LO12_NC	.bss+0x1e8
    1e04: b5fffd00     	cbnz	x0, 0x1da4 <goodixfp_init_drm_notifier+0x108>
    1e08: 90000000     	adrp	x0, 0x1000 <gf_ioctl+0x3cc>
		0000000000001e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1471
    1e0c: 91000000     	add	x0, x0, #0x0
		0000000000001e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1471
    1e10: 90000001     	adrp	x1, 0x1000 <gf_ioctl+0x3cc>
		0000000000001e10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x59f
    1e14: 91000021     	add	x1, x1, #0x0
		0000000000001e14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x59f
    1e18: 94000000     	bl	0x1e18 <goodixfp_init_drm_notifier+0x17c>
		0000000000001e18:  R_AARCH64_CALL26	_printk
    1e1c: 17ffffe2     	b	0x1da4 <goodixfp_init_drm_notifier+0x108>
