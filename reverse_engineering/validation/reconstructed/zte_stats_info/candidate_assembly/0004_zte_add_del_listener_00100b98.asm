
/input/zte_stats_info.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b08 <zte_add_del_listener>:
     b08: d503233f     	paciasp
     b0c: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     b10: a9016ffc     	stp	x28, x27, [sp, #0x10]
     b14: a90267fa     	stp	x26, x25, [sp, #0x20]
     b18: a9035ff8     	stp	x24, x23, [sp, #0x30]
     b1c: a90457f6     	stp	x22, x21, [sp, #0x40]
     b20: a9054ff4     	stp	x20, x19, [sp, #0x50]
     b24: 910003fd     	mov	x29, sp
     b28: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b28:  R_AARCH64_ADR_PREL_PG_HI21	__cpu_possible_mask
     b2c: b9400029     	ldr	w9, [x1]
     b30: b9400108     	ldr	w8, [x8]
		0000000000000b30:  R_AARCH64_LDST32_ABS_LO12_NC	__cpu_possible_mask
     b34: 6a28013f     	bics	wzr, w9, w8
     b38: 54000161     	b.ne	0xb64 <zte_add_del_listener+0x5c>
     b3c: 2a0003f4     	mov	w20, w0
     b40: d5384115     	mrs	x21, SP_EL0
     b44: aa1503e0     	mov	x0, x21
     b48: aa0103f3     	mov	x19, x1
     b4c: 2a0203f6     	mov	w22, w2
     b50: 94000000     	bl	0xb50 <zte_add_del_listener+0x48>
		0000000000000b50:  R_AARCH64_CALL26	task_active_pid_ns
     b54: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b54:  R_AARCH64_ADR_PREL_PG_HI21	init_pid_ns
     b58: 91000108     	add	x8, x8, #0x0
		0000000000000b58:  R_AARCH64_ADD_ABS_LO12_NC	init_pid_ns
     b5c: eb08001f     	cmp	x0, x8
     b60: 54000160     	b.eq	0xb8c <zte_add_del_listener+0x84>
     b64: 128002b6     	mov	w22, #-0x16             // =-22
     b68: 2a1603e0     	mov	w0, w22
     b6c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     b70: a94457f6     	ldp	x22, x21, [sp, #0x40]
     b74: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     b78: a94267fa     	ldp	x26, x25, [sp, #0x20]
     b7c: a9416ffc     	ldp	x28, x27, [sp, #0x10]
     b80: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     b84: d50323bf     	autiasp
     b88: d65f03c0     	ret
     b8c: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	__per_cpu_offset
     b90: 91000318     	add	x24, x24, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	__per_cpu_offset
     b94: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000b94:  R_AARCH64_ADR_PREL_PG_HI21	.data..percpu+0x28
     b98: 91000339     	add	x25, x25, #0x0
		0000000000000b98:  R_AARCH64_ADD_ABS_LO12_NC	.data..percpu+0x28
     b9c: 34000076     	cbz	w22, 0xba8 <zte_add_del_listener+0xa0>
     ba0: 2a1f03f6     	mov	w22, wzr
     ba4: 1400004c     	b	0xcd4 <zte_add_del_listener+0x1cc>
     ba8: aa1f03e8     	mov	x8, xzr
     bac: 9280001a     	mov	x26, #-0x1              // =-1
     bb0: 9000001b     	adrp	x27, 0x0 <.text>
		0000000000000bb0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x28
     bb4: 1400000c     	b	0xbe4 <zte_add_del_listener+0xdc>
     bb8: aa1603e0     	mov	x0, x22
     bbc: 94000000     	bl	0xbbc <zte_add_del_listener+0xb4>
		0000000000000bbc:  R_AARCH64_CALL26	__list_add_valid_or_report
     bc0: aa1f03f6     	mov	x22, xzr
     bc4: aa1703e0     	mov	x0, x23
     bc8: 94000000     	bl	0xbc8 <zte_add_del_listener+0xc0>
		0000000000000bc8:  R_AARCH64_CALL26	up_write
     bcc: aa1603e0     	mov	x0, x22
     bd0: 94000000     	bl	0xbd0 <zte_add_del_listener+0xc8>
		0000000000000bd0:  R_AARCH64_CALL26	kfree
     bd4: 2a1f03f6     	mov	w22, wzr
     bd8: f1007b9f     	cmp	x28, #0x1e
     bdc: 91000788     	add	x8, x28, #0x1
     be0: 54fffc48     	b.hi	0xb68 <zte_add_del_listener+0x60>
     be4: b9400269     	ldr	w9, [x19]
     be8: 9ac82348     	lsl	x8, x26, x8
     bec: 6a090117     	ands	w23, w8, w9
     bf0: 54000cc0     	b.eq	0xd88 <zte_add_del_listener+0x280>
     bf4: d503201f     	nop
     bf8: f9400360     	ldr	x0, [x27]
		0000000000000bf8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     bfc: 52819801     	mov	w1, #0xcc0              // =3264
     c00: 2a1f03e2     	mov	w2, wzr
     c04: 52800303     	mov	w3, #0x18               // =24
     c08: 94000000     	bl	0xc08 <zte_add_del_listener+0x100>
		0000000000000c08:  R_AARCH64_CALL26	__kmalloc_cache_node_noprof
     c0c: aa0003f6     	mov	x22, x0
     c10: b4000616     	cbz	x22, 0xcd0 <zte_add_del_listener+0x1c8>
     c14: dac002e8     	rbit	x8, x23
     c18: 52800029     	mov	w9, #0x1                // =1
     c1c: b90012d4     	str	w20, [x22, #0x10]
     c20: 390052c9     	strb	w9, [x22, #0x14]
     c24: dac0111c     	clz	x28, x8
     c28: f87c7b08     	ldr	x8, [x24, x28, lsl #3]
     c2c: 8b190117     	add	x23, x8, x25
     c30: aa1703e0     	mov	x0, x23
     c34: 94000000     	bl	0xc34 <zte_add_del_listener+0x12c>
		0000000000000c34:  R_AARCH64_CALL26	down_write
     c38: aa1703e1     	mov	x1, x23
     c3c: f8440c22     	ldr	x2, [x1, #0x40]!
     c40: eb01005f     	cmp	x2, x1
     c44: 54000180     	b.eq	0xc74 <zte_add_del_listener+0x16c>
     c48: aa0203e8     	mov	x8, x2
     c4c: 14000004     	b	0xc5c <zte_add_del_listener+0x154>
     c50: f9400108     	ldr	x8, [x8]
     c54: eb01011f     	cmp	x8, x1
     c58: 540000e0     	b.eq	0xc74 <zte_add_del_listener+0x16c>
     c5c: b9401109     	ldr	w9, [x8, #0x10]
     c60: 6b14013f     	cmp	w9, w20
     c64: 54ffff61     	b.ne	0xc50 <zte_add_del_listener+0x148>
     c68: 39405109     	ldrb	w9, [x8, #0x14]
     c6c: 34ffff29     	cbz	w9, 0xc50 <zte_add_del_listener+0x148>
     c70: 17ffffd5     	b	0xbc4 <zte_add_del_listener+0xbc>
     c74: f9400448     	ldr	x8, [x2, #0x8]
     c78: eb01011f     	cmp	x8, x1
     c7c: 54fff9e1     	b.ne	0xbb8 <zte_add_del_listener+0xb0>
     c80: eb0102df     	cmp	x22, x1
     c84: 54fff9a0     	b.eq	0xbb8 <zte_add_del_listener+0xb0>
     c88: eb16005f     	cmp	x2, x22
     c8c: 54fff960     	b.eq	0xbb8 <zte_add_del_listener+0xb0>
     c90: f9000456     	str	x22, [x2, #0x8]
     c94: a90006c2     	stp	x2, x1, [x22]
     c98: f9000036     	str	x22, [x1]
     c9c: 17ffffc9     	b	0xbc0 <zte_add_del_listener+0xb8>
     ca0: f9400360     	ldr	x0, [x27]
		0000000000000ca0:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x28
     ca4: f9402abc     	ldr	x28, [x21, #0x50]
     ca8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ca8:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
     cac: 91000108     	add	x8, x8, #0x0
		0000000000000cac:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
     cb0: 52819801     	mov	w1, #0xcc0              // =3264
     cb4: 2a1f03e2     	mov	w2, wzr
     cb8: 52800303     	mov	w3, #0x18               // =24
     cbc: f9002aa8     	str	x8, [x21, #0x50]
     cc0: 94000000     	bl	0xcc0 <zte_add_del_listener+0x1b8>
		0000000000000cc0:  R_AARCH64_CALL26	__kmalloc_cache_node_noprof
     cc4: aa0003f6     	mov	x22, x0
     cc8: f9002abc     	str	x28, [x21, #0x50]
     ccc: b5fffa56     	cbnz	x22, 0xc14 <zte_add_del_listener+0x10c>
     cd0: 12800176     	mov	w22, #-0xc              // =-12
     cd4: d2802017     	mov	x23, #0x100             // =256
     cd8: aa1f03e8     	mov	x8, xzr
     cdc: 9280001a     	mov	x26, #-0x1              // =-1
     ce0: f2fbd5b7     	movk	x23, #0xdead, lsl #48
     ce4: 1400000c     	b	0xd14 <zte_add_del_listener+0x20c>
     ce8: aa0003e9     	mov	x9, x0
     cec: 94000000     	bl	0xcec <zte_add_del_listener+0x1e4>
		0000000000000cec:  R_AARCH64_CALL26	__list_del_entry_valid_or_report
     cf0: aa0903e0     	mov	x0, x9
     cf4: 91008ae8     	add	x8, x23, #0x22
     cf8: a9002017     	stp	x23, x8, [x0]
     cfc: 94000000     	bl	0xcfc <zte_add_del_listener+0x1f4>
		0000000000000cfc:  R_AARCH64_CALL26	kfree
     d00: aa1503e0     	mov	x0, x21
     d04: 94000000     	bl	0xd04 <zte_add_del_listener+0x1fc>
		0000000000000d04:  R_AARCH64_CALL26	up_write
     d08: f1007f7f     	cmp	x27, #0x1f
     d0c: 91000768     	add	x8, x27, #0x1
     d10: 54fff2c2     	b.hs	0xb68 <zte_add_del_listener+0x60>
     d14: b9400269     	ldr	w9, [x19]
     d18: 9ac82348     	lsl	x8, x26, x8
     d1c: 6a090108     	ands	w8, w8, w9
     d20: 54fff240     	b.eq	0xb68 <zte_add_del_listener+0x60>
     d24: dac00108     	rbit	x8, x8
     d28: dac0111b     	clz	x27, x8
     d2c: f87b7b08     	ldr	x8, [x24, x27, lsl #3]
     d30: 8b190115     	add	x21, x8, x25
     d34: aa1503e0     	mov	x0, x21
     d38: 94000000     	bl	0xd38 <zte_add_del_listener+0x230>
		0000000000000d38:  R_AARCH64_CALL26	down_write
     d3c: aa1503e9     	mov	x9, x21
     d40: f8440d28     	ldr	x8, [x9, #0x40]!
     d44: eb09011f     	cmp	x8, x9
     d48: 54fffdc0     	b.eq	0xd00 <zte_add_del_listener+0x1f8>
     d4c: b940110a     	ldr	w10, [x8, #0x10]
     d50: aa0803e0     	mov	x0, x8
     d54: f9400108     	ldr	x8, [x8]
     d58: 6b14015f     	cmp	w10, w20
     d5c: 54ffff41     	b.ne	0xd44 <zte_add_del_listener+0x23c>
     d60: f9400409     	ldr	x9, [x0, #0x8]
     d64: f940012a     	ldr	x10, [x9]
     d68: eb00015f     	cmp	x10, x0
     d6c: 54fffbe1     	b.ne	0xce8 <zte_add_del_listener+0x1e0>
     d70: f940050a     	ldr	x10, [x8, #0x8]
     d74: eb00015f     	cmp	x10, x0
     d78: 54fffb81     	b.ne	0xce8 <zte_add_del_listener+0x1e0>
     d7c: f9000509     	str	x9, [x8, #0x8]
     d80: f9000128     	str	x8, [x9]
     d84: 17ffffdc     	b	0xcf4 <zte_add_del_listener+0x1ec>
     d88: 2a1f03f6     	mov	w22, wzr
     d8c: 17ffff77     	b	0xb68 <zte_add_del_listener+0x60>
