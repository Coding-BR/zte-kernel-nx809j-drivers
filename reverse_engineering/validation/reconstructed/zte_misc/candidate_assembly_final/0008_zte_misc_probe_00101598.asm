
/input/zte_misc.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b48 <zte_misc_probe>:
     b48: d503233f     	paciasp
     b4c: d103c3ff     	sub	sp, sp, #0xf0
     b50: a9097bfd     	stp	x29, x30, [sp, #0x90]
     b54: a90a6ffc     	stp	x28, x27, [sp, #0xa0]
     b58: a90b67fa     	stp	x26, x25, [sp, #0xb0]
     b5c: a90c5ff8     	stp	x24, x23, [sp, #0xc0]
     b60: a90d57f6     	stp	x22, x21, [sp, #0xd0]
     b64: a90e4ff4     	stp	x20, x19, [sp, #0xe0]
     b68: 910243fd     	add	x29, sp, #0x90
     b6c: d5384108     	mrs	x8, SP_EL0
     b70: aa0003f3     	mov	x19, x0
     b74: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x397
     b78: 91000000     	add	x0, x0, #0x0
		0000000000000b78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x397
     b7c: f9438908     	ldr	x8, [x8, #0x710]
     b80: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     b84: 91000021     	add	x1, x1, #0x0
		0000000000000b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     b88: f81f83a8     	stur	x8, [x29, #-0x8]
     b8c: 94000000     	bl	0xb8c <zte_misc_probe+0x44>
		0000000000000b8c:  R_AARCH64_CALL26	_printk
     b90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000b90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x95
     b94: 91000000     	add	x0, x0, #0x0
		0000000000000b94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x95
     b98: aa1f03e1     	mov	x1, xzr
     b9c: a9007fff     	stp	xzr, xzr, [sp]
     ba0: a907ffff     	stp	xzr, xzr, [sp, #0x78]
     ba4: a906ffff     	stp	xzr, xzr, [sp, #0x68]
     ba8: a905ffff     	stp	xzr, xzr, [sp, #0x58]
     bac: a904ffff     	stp	xzr, xzr, [sp, #0x48]
     bb0: a903ffff     	stp	xzr, xzr, [sp, #0x38]
     bb4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
     bb8: a901ffff     	stp	xzr, xzr, [sp, #0x18]
     bbc: f9000bff     	str	xzr, [sp, #0x10]
     bc0: 94000000     	bl	0xbc0 <zte_misc_probe+0x78>
		0000000000000bc0:  R_AARCH64_CALL26	of_find_node_opts_by_path
     bc4: b5000080     	cbnz	x0, 0xbd4 <zte_misc_probe+0x8c>
     bc8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x200
     bcc: 91000000     	add	x0, x0, #0x0
		0000000000000bcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x200
     bd0: 14000008     	b	0xbf0 <zte_misc_probe+0xa8>
     bd4: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2b5
     bd8: 91000021     	add	x1, x1, #0x0
		0000000000000bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2b5
     bdc: 910003e2     	mov	x2, sp
     be0: 94000000     	bl	0xbe0 <zte_misc_probe+0x98>
		0000000000000be0:  R_AARCH64_CALL26	of_property_read_string
     be4: 36f80340     	tbz	w0, #0x1f, 0xc4c <zte_misc_probe+0x104>
     be8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000be8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x26a
     bec: 91000000     	add	x0, x0, #0x0
		0000000000000bec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x26a
     bf0: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000bf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x224
     bf4: 91000021     	add	x1, x1, #0x0
		0000000000000bf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x224
     bf8: 94000000     	bl	0xbf8 <zte_misc_probe+0xb0>
		0000000000000bf8:  R_AARCH64_CALL26	_printk
     bfc: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000bfc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x311
     c00: 91000000     	add	x0, x0, #0x0
		0000000000000c00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x311
     c04: 94000000     	bl	0xc04 <zte_misc_probe+0xbc>
		0000000000000c04:  R_AARCH64_CALL26	_printk
     c08: f9417e74     	ldr	x20, [x19, #0x2f8]
     c0c: b50005b4     	cbnz	x20, 0xcc0 <zte_misc_probe+0x178>
     c10: 12800240     	mov	w0, #-0x13              // =-19
     c14: d5384108     	mrs	x8, SP_EL0
     c18: f9438908     	ldr	x8, [x8, #0x710]
     c1c: f85f83a9     	ldur	x9, [x29, #-0x8]
     c20: eb09011f     	cmp	x8, x9
     c24: 54000d81     	b.ne	0xdd4 <zte_misc_probe+0x28c>
     c28: a94e4ff4     	ldp	x20, x19, [sp, #0xe0]
     c2c: a94d57f6     	ldp	x22, x21, [sp, #0xd0]
     c30: a94c5ff8     	ldp	x24, x23, [sp, #0xc0]
     c34: a94b67fa     	ldp	x26, x25, [sp, #0xb0]
     c38: a94a6ffc     	ldp	x28, x27, [sp, #0xa0]
     c3c: a9497bfd     	ldp	x29, x30, [sp, #0x90]
     c40: 9103c3ff     	add	sp, sp, #0xf0
     c44: d50323bf     	autiasp
     c48: d65f03c0     	ret
     c4c: f94003e0     	ldr	x0, [sp]
     c50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12c
     c54: 91000021     	add	x1, x1, #0x0
		0000000000000c54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12c
     c58: 94000000     	bl	0xc58 <zte_misc_probe+0x110>
		0000000000000c58:  R_AARCH64_CALL26	strstr
     c5c: b50000a0     	cbnz	x0, 0xc70 <zte_misc_probe+0x128>
     c60: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6
     c64: 91000000     	add	x0, x0, #0x0
		0000000000000c64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6
     c68: 94000000     	bl	0xc68 <zte_misc_probe+0x120>
		0000000000000c68:  R_AARCH64_CALL26	_printk
     c6c: 17ffffe4     	b	0xbfc <zte_misc_probe+0xb4>
     c70: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000c70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6a
     c74: 91000021     	add	x1, x1, #0x0
		0000000000000c74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6a
     c78: 910023e2     	add	x2, sp, #0x8
     c7c: 94000000     	bl	0xc7c <zte_misc_probe+0x134>
		0000000000000c7c:  R_AARCH64_CALL26	sscanf
     c80: b9400be8     	ldr	w8, [sp, #0x8]
     c84: 528d0c6a     	mov	w10, #0x6863            // =26723
     c88: b840b3e9     	ldur	w9, [sp, #0xb]
     c8c: 72ae4c2a     	movk	w10, #0x7261, lsl #16
     c90: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000c90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2be
     c94: 91000000     	add	x0, x0, #0x0
		0000000000000c94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2be
     c98: 6b0a011f     	cmp	w8, w10
     c9c: 528cee48     	mov	w8, #0x6772             // =26482
     ca0: 910023e2     	add	x2, sp, #0x8
     ca4: 72ae4ca8     	movk	w8, #0x7265, lsl #16
     ca8: 7a480120     	ccmp	w9, w8, #0x0, eq
     cac: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000cac:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     cb0: 1a9f17e1     	cset	w1, eq
     cb4: 39000101     	strb	w1, [x8]
		0000000000000cb4:  R_AARCH64_LDST8_ABS_LO12_NC	.bss+0x8
     cb8: 94000000     	bl	0xcb8 <zte_misc_probe+0x170>
		0000000000000cb8:  R_AARCH64_CALL26	_printk
     cbc: 17ffffd0     	b	0xbfc <zte_misc_probe+0xb4>
     cc0: aa1403e0     	mov	x0, x20
     cc4: aa1f03e1     	mov	x1, xzr
     cc8: 94000000     	bl	0xcc8 <zte_misc_probe+0x180>
		0000000000000cc8:  R_AARCH64_CALL26	of_get_next_child
     ccc: b4000740     	cbz	x0, 0xdb4 <zte_misc_probe+0x26c>
     cd0: aa0003f5     	mov	x21, x0
     cd4: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000cd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x264
     cd8: 910002d6     	add	x22, x22, #0x0
		0000000000000cd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x264
     cdc: 90000017     	adrp	x23, 0x0 <.text>
		0000000000000cdc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x13d
     ce0: 910002f7     	add	x23, x23, #0x0
		0000000000000ce0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x13d
     ce4: 9000001a     	adrp	x26, 0x0 <.text>
		0000000000000ce4:  R_AARCH64_ADR_PREL_PG_HI21	zte_gpios
     ce8: 9100035a     	add	x26, x26, #0x0
		0000000000000ce8:  R_AARCH64_ADD_ABS_LO12_NC	zte_gpios
     cec: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000cec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9d
     cf0: 91000318     	add	x24, x24, #0x0
		0000000000000cf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9d
     cf4: 1280001b     	mov	w27, #-0x1              // =-1
     cf8: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb
     cfc: 91000339     	add	x25, x25, #0x0
		0000000000000cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb
     d00: 14000009     	b	0xd24 <zte_misc_probe+0x1dc>
     d04: 91004260     	add	x0, x19, #0x10
     d08: aa1703e1     	mov	x1, x23
     d0c: 94000000     	bl	0xd0c <zte_misc_probe+0x1c4>
		0000000000000d0c:  R_AARCH64_CALL26	_dev_warn
     d10: aa1403e0     	mov	x0, x20
     d14: aa1503e1     	mov	x1, x21
     d18: 94000000     	bl	0xd18 <zte_misc_probe+0x1d0>
		0000000000000d18:  R_AARCH64_CALL26	of_get_next_child
     d1c: aa0003f5     	mov	x21, x0
     d20: b40004a0     	cbz	x0, 0xdb4 <zte_misc_probe+0x26c>
     d24: aa1503e0     	mov	x0, x21
     d28: aa1603e1     	mov	x1, x22
     d2c: aa1f03e2     	mov	x2, xzr
     d30: 94000000     	bl	0xd30 <zte_misc_probe+0x1e8>
		0000000000000d30:  R_AARCH64_CALL26	of_find_property
     d34: b4fffe80     	cbz	x0, 0xd04 <zte_misc_probe+0x1bc>
     d38: 71003f7f     	cmp	w27, #0xf
     d3c: 54000360     	b.eq	0xda8 <zte_misc_probe+0x260>
     d40: aa1503e0     	mov	x0, x21
     d44: aa1603e1     	mov	x1, x22
     d48: aa1f03e2     	mov	x2, xzr
     d4c: 1100077b     	add	w27, w27, #0x1
     d50: 94000000     	bl	0xd50 <zte_misc_probe+0x208>
		0000000000000d50:  R_AARCH64_CALL26	of_get_property
     d54: 52819801     	mov	w1, #0xcc0              // =3264
     d58: 94000000     	bl	0xd58 <zte_misc_probe+0x210>
		0000000000000d58:  R_AARCH64_CALL26	kstrdup
     d5c: 52800108     	mov	w8, #0x8                // =8
     d60: b37c7f68     	bfi	x8, x27, #4, #32
     d64: f104011f     	cmp	x8, #0x100
     d68: 54000348     	b.hi	0xdd0 <zte_misc_probe+0x288>
     d6c: d37c7f68     	ubfiz	x8, x27, #4, #32
     d70: aa1803e1     	mov	x1, x24
     d74: 2a1f03e2     	mov	w2, wzr
     d78: 8b08035c     	add	x28, x26, x8
     d7c: f9000780     	str	x0, [x28, #0x8]
     d80: aa1503e0     	mov	x0, x21
     d84: 94000000     	bl	0xd84 <zte_misc_probe+0x23c>
		0000000000000d84:  R_AARCH64_CALL26	of_get_named_gpio
     d88: 71003f7f     	cmp	w27, #0xf
     d8c: 54000228     	b.hi	0xdd0 <zte_misc_probe+0x288>
     d90: f9400782     	ldr	x2, [x28, #0x8]
     d94: 2a0003e1     	mov	w1, w0
     d98: b9000380     	str	w0, [x28]
     d9c: aa1903e0     	mov	x0, x25
     da0: 94000000     	bl	0xda0 <zte_misc_probe+0x258>
		0000000000000da0:  R_AARCH64_CALL26	_printk
     da4: 17ffffdb     	b	0xd10 <zte_misc_probe+0x1c8>
     da8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000da8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x34b
     dac: 91000000     	add	x0, x0, #0x0
		0000000000000dac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x34b
     db0: 94000000     	bl	0xdb0 <zte_misc_probe+0x268>
		0000000000000db0:  R_AARCH64_CALL26	_printk
     db4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000db4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2f3
     db8: 91000000     	add	x0, x0, #0x0
		0000000000000db8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2f3
     dbc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dbc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x38
     dc0: 91000021     	add	x1, x1, #0x0
		0000000000000dc0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x38
     dc4: 94000000     	bl	0xdc4 <zte_misc_probe+0x27c>
		0000000000000dc4:  R_AARCH64_CALL26	_printk
     dc8: 2a1f03e0     	mov	w0, wzr
     dcc: 17ffff92     	b	0xc14 <zte_misc_probe+0xcc>
     dd0: d4200020     	brk	#0x1
     dd4: 94000000     	bl	0xdd4 <zte_misc_probe+0x28c>
		0000000000000dd4:  R_AARCH64_CALL26	__stack_chk_fail
