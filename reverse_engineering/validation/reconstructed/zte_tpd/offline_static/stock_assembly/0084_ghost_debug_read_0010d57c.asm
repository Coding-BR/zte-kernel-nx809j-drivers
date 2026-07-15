
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006cf4 <ghost_debug_read>:
    6cf4: d503233f     	paciasp
    6cf8: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    6cfc: f9000bf9     	str	x25, [sp, #0x10]
    6d00: a9025ff8     	stp	x24, x23, [sp, #0x20]
    6d04: a90357f6     	stp	x22, x21, [sp, #0x30]
    6d08: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6d0c: 910003fd     	mov	x29, sp
    6d10: f9400068     	ldr	x8, [x3]
    6d14: b4000128     	cbz	x8, 0x6d38 <ghost_debug_read+0x44>
    6d18: aa1f03e0     	mov	x0, xzr
    6d1c: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6d20: f9400bf9     	ldr	x25, [sp, #0x10]
    6d24: a94357f6     	ldp	x22, x21, [sp, #0x30]
    6d28: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    6d2c: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    6d30: d50323bf     	autiasp
    6d34: d65f03c0     	ret
    6d38: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006d38:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    6d3c: aa0103f5     	mov	x21, x1
    6d40: aa0203f4     	mov	x20, x2
    6d44: f9400117     	ldr	x23, [x8]
		0000000000006d44:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    6d48: aa0303f3     	mov	x19, x3
    6d4c: d503201f     	nop
    6d50: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006d50:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    6d54: 5281b801     	mov	w1, #0xdc0              // =3520
    6d58: 52820002     	mov	w2, #0x1000             // =4096
    6d5c: f9400100     	ldr	x0, [x8]
		0000000000006d5c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    6d60: 94000000     	bl	0x6d60 <ghost_debug_read+0x6c>
		0000000000006d60:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    6d64: b5000240     	cbnz	x0, 0x6dac <ghost_debug_read+0xb8>
    6d68: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006d68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dff
    6d6c: 91000000     	add	x0, x0, #0x0
		0000000000006d6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dff
    6d70: 94000000     	bl	0x6d70 <ghost_debug_read+0x7c>
		0000000000006d70:  R_AARCH64_CALL26	_printk
    6d74: 92800160     	mov	x0, #-0xc               // =-12
    6d78: 17ffffe9     	b	0x6d1c <ghost_debug_read+0x28>
    6d7c: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006d7c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x118
    6d80: 91000108     	add	x8, x8, #0x0
		0000000000006d80:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x118
    6d84: d5384116     	mrs	x22, SP_EL0
    6d88: f9402ad8     	ldr	x24, [x22, #0x50]
    6d8c: f9002ac8     	str	x8, [x22, #0x50]
    6d90: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006d90:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    6d94: f9400100     	ldr	x0, [x8]
		0000000000006d94:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    6d98: 5281b801     	mov	w1, #0xdc0              // =3520
    6d9c: 52820002     	mov	w2, #0x1000             // =4096
    6da0: 94000000     	bl	0x6da0 <ghost_debug_read+0xac>
		0000000000006da0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    6da4: f9002ad8     	str	x24, [x22, #0x50]
    6da8: b4fffe00     	cbz	x0, 0x6d68 <ghost_debug_read+0x74>
    6dac: 395246e1     	ldrb	w1, [x23, #0x491]
    6db0: 90000008     	adrp	x8, 0x6000 <tp_pen_only_write+0x70>
		0000000000006db0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1db4
    6db4: 91000108     	add	x8, x8, #0x0
		0000000000006db4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1db4
    6db8: aa0003f6     	mov	x22, x0
    6dbc: aa0803e0     	mov	x0, x8
    6dc0: 94000000     	bl	0x6dc0 <ghost_debug_read+0xcc>
		0000000000006dc0:  R_AARCH64_CALL26	_printk
    6dc4: 39524ae1     	ldrb	w1, [x23, #0x492]
    6dc8: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x49a0
    6dcc: 91000000     	add	x0, x0, #0x0
		0000000000006dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x49a0
    6dd0: 94000000     	bl	0x6dd0 <ghost_debug_read+0xdc>
		0000000000006dd0:  R_AARCH64_CALL26	_printk
    6dd4: 39524ee1     	ldrb	w1, [x23, #0x493]
    6dd8: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006dd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dd9
    6ddc: 91000000     	add	x0, x0, #0x0
		0000000000006ddc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dd9
    6de0: 94000000     	bl	0x6de0 <ghost_debug_read+0xec>
		0000000000006de0:  R_AARCH64_CALL26	_printk
    6de4: 395252e1     	ldrb	w1, [x23, #0x494]
    6de8: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006de8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x248a
    6dec: 91000000     	add	x0, x0, #0x0
		0000000000006dec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x248a
    6df0: 94000000     	bl	0x6df0 <ghost_debug_read+0xfc>
		0000000000006df0:  R_AARCH64_CALL26	_printk
    6df4: 395256e1     	ldrb	w1, [x23, #0x495]
    6df8: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006df8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8498
    6dfc: 91000000     	add	x0, x0, #0x0
		0000000000006dfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8498
    6e00: 94000000     	bl	0x6e00 <ghost_debug_read+0x10c>
		0000000000006e00:  R_AARCH64_CALL26	_printk
    6e04: b9449ae1     	ldr	w1, [x23, #0x498]
    6e08: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x79a1
    6e0c: 91000000     	add	x0, x0, #0x0
		0000000000006e0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x79a1
    6e10: 94000000     	bl	0x6e10 <ghost_debug_read+0x11c>
		0000000000006e10:  R_AARCH64_CALL26	_printk
    6e14: b9449ee1     	ldr	w1, [x23, #0x49c]
    6e18: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508d
    6e1c: 91000000     	add	x0, x0, #0x0
		0000000000006e1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508d
    6e20: 94000000     	bl	0x6e20 <ghost_debug_read+0x12c>
		0000000000006e20:  R_AARCH64_CALL26	_printk
    6e24: b944a2e1     	ldr	w1, [x23, #0x4a0]
    6e28: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60e
    6e2c: 91000000     	add	x0, x0, #0x0
		0000000000006e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60e
    6e30: 94000000     	bl	0x6e30 <ghost_debug_read+0x13c>
		0000000000006e30:  R_AARCH64_CALL26	_printk
    6e34: b944a6e1     	ldr	w1, [x23, #0x4a4]
    6e38: 90000000     	adrp	x0, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x24af
    6e3c: 91000000     	add	x0, x0, #0x0
		0000000000006e3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x24af
    6e40: 94000000     	bl	0x6e40 <ghost_debug_read+0x14c>
		0000000000006e40:  R_AARCH64_CALL26	_printk
    6e44: 90000009     	adrp	x9, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x55a2
    6e48: 91000129     	add	x9, x9, #0x0
		0000000000006e48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x55a2
    6e4c: 52800148     	mov	w8, #0xa                // =10
    6e50: a945b12b     	ldp	x11, x12, [x9, #0x58]
    6e54: 790052c8     	strh	w8, [x22, #0x28]
    6e58: a940352a     	ldp	x10, x13, [x9]
    6e5c: f9400930     	ldr	x16, [x9, #0x10]
    6e60: 9000000f     	adrp	x15, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9db7
    6e64: 910001ef     	add	x15, x15, #0x0
		0000000000006e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9db7
    6e68: 7901a2c8     	strh	w8, [x22, #0xd0]
    6e6c: f80812cb     	stur	x11, [x22, #0x81]
    6e70: f940352b     	ldr	x11, [x9, #0x68]
    6e74: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006e74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8514
    6e78: 91000042     	add	x2, x2, #0x0
		0000000000006e78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8514
    6e7c: f80892cc     	stur	x12, [x22, #0x89]
    6e80: 9103eac0     	add	x0, x22, #0xfa
    6e84: f80912cb     	stur	x11, [x22, #0x91]
    6e88: a943ad2c     	ldp	x12, x11, [x9, #0x38]
    6e8c: f80292ca     	stur	x10, [x22, #0x29]
    6e90: 52820001     	mov	w1, #0x1000             // =4096
    6e94: 52820018     	mov	w24, #0x1000            // =4096
    6e98: f80312cd     	stur	x13, [x22, #0x31]
    6e9c: f80612cc     	stur	x12, [x22, #0x61]
    6ea0: a944a92c     	ldp	x12, x10, [x9, #0x48]
    6ea4: f80692cb     	stur	x11, [x22, #0x69]
    6ea8: f80392d0     	stur	x16, [x22, #0x39]
    6eac: f80792ca     	stur	x10, [x22, #0x79]
    6eb0: a941a92b     	ldp	x11, x10, [x9, #0x18]
    6eb4: f80712cc     	stur	x12, [x22, #0x71]
    6eb8: 780f92c8     	sturh	w8, [x22, #0xf9]
    6ebc: f80412cb     	stur	x11, [x22, #0x41]
    6ec0: a942b92b     	ldp	x11, x14, [x9, #0x28]
    6ec4: f846f129     	ldur	x9, [x9, #0x6f]
    6ec8: f80492ca     	stur	x10, [x22, #0x49]
    6ecc: a94129ec     	ldp	x12, x10, [x15, #0x10]
    6ed0: f80512cb     	stur	x11, [x22, #0x51]
    6ed4: 9000000b     	adrp	x11, 0x6000 <tp_pen_only_write+0x70>
		0000000000006ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x749b
    6ed8: 9100016b     	add	x11, x11, #0x0
		0000000000006ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x749b
    6edc: f80592ce     	stur	x14, [x22, #0x59]
    6ee0: a941b96d     	ldp	x13, x14, [x11, #0x18]
    6ee4: f9401570     	ldr	x16, [x11, #0x28]
    6ee8: a9012acc     	stp	x12, x10, [x22, #0x10]
    6eec: f80e12cc     	stur	x12, [x22, #0xe1]
    6ef0: a90bbacd     	stp	x13, x14, [x22, #0xb8]
    6ef4: f94011ee     	ldr	x14, [x15, #0x20]
    6ef8: f90066d0     	str	x16, [x22, #0xc8]
    6efc: a940416d     	ldp	x13, x16, [x11]
    6f00: f940096b     	ldr	x11, [x11, #0x10]
    6f04: f90012ce     	str	x14, [x22, #0x20]
    6f08: f80e92ca     	stur	x10, [x22, #0xe9]
    6f0c: a909b6c9     	stp	x9, x13, [x22, #0x98]
    6f10: a94025ed     	ldp	x13, x9, [x15]
    6f14: a90aaed0     	stp	x16, x11, [x22, #0xa8]
    6f18: f80f12ce     	stur	x14, [x22, #0xf1]
    6f1c: a90026cd     	stp	x13, x9, [x22]
    6f20: f80d92c9     	stur	x9, [x22, #0xd9]
    6f24: f80d12cd     	stur	x13, [x22, #0xd1]
    6f28: 395246e3     	ldrb	w3, [x23, #0x491]
    6f2c: 94000000     	bl	0x6f2c <ghost_debug_read+0x238>
		0000000000006f2c:  R_AARCH64_CALL26	snprintf
    6f30: 93407c08     	sxtw	x8, w0
    6f34: 5281e0c9     	mov	w9, #0xf06              // =3846
    6f38: 39524ae3     	ldrb	w3, [x23, #0x492]
    6f3c: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8533
    6f40: 91000042     	add	x2, x2, #0x0
		0000000000006f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8533
    6f44: 9103e919     	add	x25, x8, #0xfa
    6f48: cb080121     	sub	x1, x9, x8
    6f4c: 8b1902c0     	add	x0, x22, x25
    6f50: 94000000     	bl	0x6f50 <ghost_debug_read+0x25c>
		0000000000006f50:  R_AARCH64_CALL26	snprintf
    6f54: 8b20c339     	add	x25, x25, w0, sxtw
    6f58: 39524ee3     	ldrb	w3, [x23, #0x493]
    6f5c: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006f5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1276
    6f60: 91000042     	add	x2, x2, #0x0
		0000000000006f60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1276
    6f64: cb190301     	sub	x1, x24, x25
    6f68: 8b1902c0     	add	x0, x22, x25
    6f6c: 94000000     	bl	0x6f6c <ghost_debug_read+0x278>
		0000000000006f6c:  R_AARCH64_CALL26	snprintf
    6f70: 8b20c339     	add	x25, x25, w0, sxtw
    6f74: 395252e3     	ldrb	w3, [x23, #0x494]
    6f78: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e75
    6f7c: 91000042     	add	x2, x2, #0x0
		0000000000006f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e75
    6f80: cb190301     	sub	x1, x24, x25
    6f84: 8b1902c0     	add	x0, x22, x25
    6f88: 94000000     	bl	0x6f88 <ghost_debug_read+0x294>
		0000000000006f88:  R_AARCH64_CALL26	snprintf
    6f8c: 8b20c339     	add	x25, x25, w0, sxtw
    6f90: 395256e3     	ldrb	w3, [x23, #0x495]
    6f94: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9577
    6f98: 91000042     	add	x2, x2, #0x0
		0000000000006f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9577
    6f9c: cb190301     	sub	x1, x24, x25
    6fa0: 8b1902c0     	add	x0, x22, x25
    6fa4: 94000000     	bl	0x6fa4 <ghost_debug_read+0x2b0>
		0000000000006fa4:  R_AARCH64_CALL26	snprintf
    6fa8: 8b20c339     	add	x25, x25, w0, sxtw
    6fac: b9449ae3     	ldr	w3, [x23, #0x498]
    6fb0: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa55e
    6fb4: 91000042     	add	x2, x2, #0x0
		0000000000006fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa55e
    6fb8: cb190301     	sub	x1, x24, x25
    6fbc: 8b1902c0     	add	x0, x22, x25
    6fc0: 94000000     	bl	0x6fc0 <ghost_debug_read+0x2cc>
		0000000000006fc0:  R_AARCH64_CALL26	snprintf
    6fc4: 8b20c339     	add	x25, x25, w0, sxtw
    6fc8: b9449ee3     	ldr	w3, [x23, #0x49c]
    6fcc: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006fcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb9d1
    6fd0: 91000042     	add	x2, x2, #0x0
		0000000000006fd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb9d1
    6fd4: cb190301     	sub	x1, x24, x25
    6fd8: 8b1902c0     	add	x0, x22, x25
    6fdc: 94000000     	bl	0x6fdc <ghost_debug_read+0x2e8>
		0000000000006fdc:  R_AARCH64_CALL26	snprintf
    6fe0: 8b20c339     	add	x25, x25, w0, sxtw
    6fe4: b944a2e3     	ldr	w3, [x23, #0x4a0]
    6fe8: 90000002     	adrp	x2, 0x6000 <tp_pen_only_write+0x70>
		0000000000006fe8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e94
    6fec: 91000042     	add	x2, x2, #0x0
		0000000000006fec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e94
    6ff0: cb190301     	sub	x1, x24, x25
    6ff4: 8b1902c0     	add	x0, x22, x25
    6ff8: 94000000     	bl	0x6ff8 <ghost_debug_read+0x304>
		0000000000006ff8:  R_AARCH64_CALL26	snprintf
    6ffc: 8b20c339     	add	x25, x25, w0, sxtw
    7000: b944a6e3     	ldr	w3, [x23, #0x4a4]
    7004: 90000002     	adrp	x2, 0x7000 <ghost_debug_read+0x30c>
		0000000000007004:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbf94
    7008: 91000042     	add	x2, x2, #0x0
		0000000000007008:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbf94
    700c: cb190301     	sub	x1, x24, x25
    7010: 8b1902c0     	add	x0, x22, x25
    7014: 94000000     	bl	0x7014 <ghost_debug_read+0x320>
		0000000000007014:  R_AARCH64_CALL26	snprintf
    7018: 8b20c337     	add	x23, x25, w0, sxtw
    701c: aa1503e0     	mov	x0, x21
    7020: aa1403e1     	mov	x1, x20
    7024: aa1303e2     	mov	x2, x19
    7028: aa1603e3     	mov	x3, x22
    702c: aa1703e4     	mov	x4, x23
    7030: 94000000     	bl	0x7030 <ghost_debug_read+0x33c>
		0000000000007030:  R_AARCH64_CALL26	simple_read_from_buffer
    7034: aa1603e0     	mov	x0, x22
    7038: 94000000     	bl	0x7038 <ghost_debug_read+0x344>
		0000000000007038:  R_AARCH64_CALL26	kfree
    703c: aa1703e0     	mov	x0, x23
    7040: 17ffff37     	b	0x6d1c <ghost_debug_read+0x28>
