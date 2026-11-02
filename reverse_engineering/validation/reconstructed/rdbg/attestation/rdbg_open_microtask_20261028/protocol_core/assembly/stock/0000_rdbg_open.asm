
/input/rdbg.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a24 <rdbg_open>:
     a24: d503233f     	paciasp
     a28: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
     a2c: a90167fa     	stp	x26, x25, [sp, #0x10]
     a30: a9025ff8     	stp	x24, x23, [sp, #0x20]
     a34: a90357f6     	stp	x22, x21, [sp, #0x30]
     a38: a9044ff4     	stp	x20, x19, [sp, #0x40]
     a3c: 910003fd     	mov	x29, sp
     a40: b4001ca0     	cbz	x0, 0xdd4 <rdbg_open+0x3b0>
     a44: 90000018     	adrp	x24, 0x0 <.text>
		0000000000000a44:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x98
     a48: f9400308     	ldr	x8, [x24]
		0000000000000a48:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
     a4c: b4001c48     	cbz	x8, 0xdd4 <rdbg_open+0x3b0>
     a50: b9404c09     	ldr	w9, [x0, #0x4c]
     a54: 92404d34     	and	x20, x9, #0xfffff
     a58: 52803909     	mov	w9, #0x1c8              // =456
     a5c: 9ba92297     	umaddl	x23, w20, w9, x8
     a60: 394182e8     	ldrb	w8, [x23, #0x60]
     a64: 7100051f     	cmp	w8, #0x1
     a68: 54001c00     	b.eq	0xde8 <rdbg_open+0x3c4>
     a6c: 7100429f     	cmp	w20, #0x10
     a70: 540024e2     	b.hs	0xf0c <rdbg_open+0x4e8>
     a74: 52800308     	mov	w8, #0x18               // =24
     a78: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x4f0
     a7c: 91000129     	add	x9, x9, #0x0
		0000000000000a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x4f0
     a80: 9ba82699     	umaddl	x25, w20, w8, x9
     a84: aa1703f5     	mov	x21, x23
     a88: f9400b28     	ldr	x8, [x25, #0x10]
     a8c: f8070ea8     	str	x8, [x21, #0x70]!
     a90: b4001bc8     	cbz	x8, 0xe08 <rdbg_open+0x3e4>
     a94: b9400b36     	ldr	w22, [x25, #0x8]
     a98: aa0103f3     	mov	x19, x1
     a9c: 12800000     	mov	w0, #-0x1               // =-1
     aa0: aa1503e2     	mov	x2, x21
     aa4: 2a1603e1     	mov	w1, w22
     aa8: 94000000     	bl	0xaa8 <rdbg_open+0x84>
		0000000000000aa8:  R_AARCH64_CALL26	qcom_smem_get
     aac: b13ffc1f     	cmn	x0, #0xfff
     ab0: f90036e0     	str	x0, [x23, #0x68]
     ab4: 54001b82     	b.hs	0xe24 <rdbg_open+0x400>
     ab8: b4001ce0     	cbz	x0, 0xe54 <rdbg_open+0x430>
     abc: f94002a8     	ldr	x8, [x21]
     ac0: 91002409     	add	x9, x0, #0x9
     ac4: d341fd0a     	lsr	x10, x8, #1
     ac8: 927df128     	and	x8, x9, #0xfffffffffffffff8
     acc: 4b080009     	sub	w9, w0, w8
     ad0: 0b0a0129     	add	w9, w9, w10
     ad4: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     ad8: 93407d29     	sxtw	x9, w9
     adc: f29e1e2a     	movk	x10, #0xf0f1
     ae0: d1008129     	sub	x9, x9, #0x20
     ae4: 9bca7d29     	umulh	x9, x9, x10
     ae8: d347fd29     	lsr	x9, x9, #7
     aec: 7100053f     	cmp	w9, #0x1
     af0: 54001d0b     	b.lt	0xe90 <rdbg_open+0x46c>
     af4: 5319612a     	lsl	w10, w9, #7
     af8: d37e7929     	ubfiz	x9, x9, #2, #31
     afc: 32089ff5     	mov	w21, #-0xff0100         // =-16711936
     b00: 8b2ac108     	add	x8, x8, w10, sxtw
     b04: 8b090108     	add	x8, x8, x9
     b08: 321f02a9     	orr	w9, w21, #0x2
     b0c: b9401108     	ldr	w8, [x8, #0x10]
     b10: 6b09011f     	cmp	w8, w9
     b14: 54001b41     	b.ne	0xe7c <rdbg_open+0x458>
     b18: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9
     b1c: 91000021     	add	x1, x1, #0x0
		0000000000000b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9
     b20: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b20:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x1
     b24: 91000042     	add	x2, x2, #0x0
		0000000000000b24:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x1
     b28: 910042e0     	add	x0, x23, #0x10
     b2c: b9000aff     	str	wzr, [x23, #0x8]
     b30: 94000000     	bl	0xb30 <rdbg_open+0x10c>
		0000000000000b30:  R_AARCH64_CALL26	__init_swait_queue_head
     b34: 52803908     	mov	w8, #0x1c8              // =456
     b38: f9400309     	ldr	x9, [x24]
		0000000000000b38:  R_AARCH64_LDST64_ABS_LO12_NC	.data+0x98
     b3c: b9402ee0     	ldr	w0, [x23, #0x2c]
     b40: 9ba82685     	umaddl	x5, w20, w8, x9
     b44: f9400324     	ldr	x4, [x25]
     b48: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b48:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x1158
     b4c: 91000042     	add	x2, x2, #0x0
		0000000000000b4c:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x1158
     b50: aa1f03e1     	mov	x1, xzr
     b54: 52840063     	mov	w3, #0x2003             // =8195
     b58: 94000000     	bl	0xb58 <rdbg_open+0x134>
		0000000000000b58:  R_AARCH64_CALL26	request_threaded_irq
     b5c: 35001b20     	cbnz	w0, 0xec0 <rdbg_open+0x49c>
     b60: 910462f4     	add	x20, x23, #0x118
     b64: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x135
     b68: 91000021     	add	x1, x1, #0x0
		0000000000000b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x135
     b6c: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000b6c:  R_AARCH64_ADR_PREL_PG_HI21	.bss
     b70: 91000042     	add	x2, x2, #0x0
		0000000000000b70:  R_AARCH64_ADD_ABS_LO12_NC	.bss
     b74: aa1403e0     	mov	x0, x20
     b78: 94000000     	bl	0xb78 <rdbg_open+0x154>
		0000000000000b78:  R_AARCH64_CALL26	__mutex_init
     b7c: b940aae8     	ldr	w8, [x23, #0xa8]
     b80: 6b15011f     	cmp	w8, w21
     b84: 54001dc0     	b.eq	0xf3c <rdbg_open+0x518>
     b88: f94036f6     	ldr	x22, [x23, #0x68]
     b8c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000b8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336
     b90: 91000021     	add	x1, x1, #0x0
		0000000000000b90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336
     b94: b4001d96     	cbz	x22, 0xf44 <rdbg_open+0x520>
     b98: f9403ae8     	ldr	x8, [x23, #0x70]
     b9c: 927f7d09     	and	x9, x8, #0x1fffffffe
     ba0: b4001d29     	cbz	x9, 0xf44 <rdbg_open+0x520>
     ba4: d341fd18     	lsr	x24, x8, #1
     ba8: 910026c8     	add	x8, x22, #0x9
     bac: b204cfea     	mov	x10, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     bb0: 927df108     	and	x8, x8, #0xfffffffffffffff8
     bb4: f29e1e2a     	movk	x10, #0xf0f1
     bb8: f90052f4     	str	x20, [x23, #0xa0]
     bbc: 0b160309     	add	w9, w24, w22
     bc0: f9003ef6     	str	x22, [x23, #0x78]
     bc4: 4b080129     	sub	w9, w9, w8
     bc8: 93407d29     	sxtw	x9, w9
     bcc: d1008129     	sub	x9, x9, #0x20
     bd0: 9bca7d29     	umulh	x9, x9, x10
     bd4: d347fd29     	lsr	x9, x9, #7
     bd8: 7100053f     	cmp	w9, #0x1
     bdc: 54001b4b     	b.lt	0xf44 <rdbg_open+0x520>
     be0: 5319612a     	lsl	w10, w9, #7
     be4: f9004ae8     	str	x8, [x23, #0x90]
     be8: d37e792b     	ubfiz	x11, x9, #2, #31
     bec: b9009ae9     	str	w9, [x23, #0x98]
     bf0: 52800029     	mov	w9, #0x1                // =1
     bf4: 8b2ac108     	add	x8, x8, w10, sxtw
     bf8: b900c2e9     	str	w9, [x23, #0xc0]
     bfc: 8b0b010a     	add	x10, x8, x11
     c00: 9100414a     	add	x10, x10, #0x10
     c04: a9082ae8     	stp	x8, x10, [x23, #0x80]
     c08: 390002c9     	strb	w9, [x22]
     c0c: b9409ae8     	ldr	w8, [x23, #0x98]
     c10: 340019a8     	cbz	w8, 0xf44 <rdbg_open+0x520>
     c14: aa1f03e8     	mov	x8, xzr
     c18: 52800209     	mov	w9, #0x10               // =16
     c1c: 529fffea     	mov	w10, #0xffff            // =65535
     c20: f94042eb     	ldr	x11, [x23, #0x80]
     c24: 91000508     	add	x8, x8, #0x1
     c28: 7829696a     	strh	w10, [x11, x9]
     c2c: 91001129     	add	x9, x9, #0x4
     c30: b9409af4     	ldr	w20, [x23, #0x98]
     c34: eb14011f     	cmp	x8, x20
     c38: 54ffff43     	b.lo	0xc20 <rdbg_open+0x1fc>
     c3c: 71000a9f     	cmp	w20, #0x2
     c40: 540017e3     	b.lo	0xf3c <rdbg_open+0x518>
     c44: d503201f     	nop
     c48: aa1403e0     	mov	x0, x20
     c4c: 5281b801     	mov	w1, #0xdc0              // =3520
     c50: 94000000     	bl	0xc50 <rdbg_open+0x22c>
		0000000000000c50:  R_AARCH64_CALL26	__kmalloc_noprof
     c54: f9005ee0     	str	x0, [x23, #0xb8]
     c58: b4001720     	cbz	x0, 0xf3c <rdbg_open+0x518>
     c5c: 51000688     	sub	w8, w20, #0x1
     c60: 2a1f03e1     	mov	w1, wzr
     c64: aa1403e2     	mov	x2, x20
     c68: b900b6e8     	str	w8, [x23, #0xb4]
     c6c: 94000000     	bl	0xc6c <rdbg_open+0x248>
		0000000000000c6c:  R_AARCH64_CALL26	memset
     c70: f94042e8     	ldr	x8, [x23, #0x80]
     c74: b900b2ff     	str	wzr, [x23, #0xb0]
     c78: 110006a9     	add	w9, w21, #0x1
     c7c: b900091f     	str	wzr, [x8, #0x8]
     c80: f94042e8     	ldr	x8, [x23, #0x80]
     c84: b9000d1f     	str	wzr, [x8, #0xc]
     c88: f94042e8     	ldr	x8, [x23, #0x80]
     c8c: b940010a     	ldr	w10, [x8]
     c90: 6b09015f     	cmp	w10, w9
     c94: 540000a1     	b.ne	0xca8 <rdbg_open+0x284>
     c98: b9400509     	ldr	w9, [x8, #0x4]
     c9c: 11000529     	add	w9, w9, #0x1
     ca0: b9000509     	str	w9, [x8, #0x4]
     ca4: 14000005     	b	0xcb8 <rdbg_open+0x294>
     ca8: 5280002a     	mov	w10, #0x1               // =1
     cac: b900050a     	str	w10, [x8, #0x4]
     cb0: f94042e8     	ldr	x8, [x23, #0x80]
     cb4: b9000109     	str	w9, [x8]
     cb8: b940fae8     	ldr	w8, [x23, #0xf8]
     cbc: b900aaf5     	str	w21, [x23, #0xa8]
     cc0: 6b15011f     	cmp	w8, w21
     cc4: 540011e0     	b.eq	0xf00 <rdbg_open+0x4dc>
     cc8: 8b1802c8     	add	x8, x22, x24
     ccc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ccc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x362
     cd0: 91000021     	add	x1, x1, #0x0
		0000000000000cd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x362
     cd4: b4001388     	cbz	x8, 0xf44 <rdbg_open+0x520>
     cd8: f9403ae9     	ldr	x9, [x23, #0x70]
     cdc: 927f7d2a     	and	x10, x9, #0x1fffffffe
     ce0: b400132a     	cbz	x10, 0xf44 <rdbg_open+0x520>
     ce4: 9100250a     	add	x10, x8, #0x9
     ce8: d341fd2b     	lsr	x11, x9, #1
     cec: f90066e8     	str	x8, [x23, #0xc8]
     cf0: 927df149     	and	x9, x10, #0xfffffffffffffff8
     cf4: 4b09010a     	sub	w10, w8, w9
     cf8: 0b0b014a     	add	w10, w10, w11
     cfc: b204cfeb     	mov	x11, #-0xf0f0f0f0f0f0f10 // =-1085102592571150096
     d00: 93407d4a     	sxtw	x10, w10
     d04: f29e1e2b     	movk	x11, #0xf0f1
     d08: d100814a     	sub	x10, x10, #0x20
     d0c: 9bcb7d4a     	umulh	x10, x10, x11
     d10: d347fd4a     	lsr	x10, x10, #7
     d14: 7100055f     	cmp	w10, #0x1
     d18: 5400116b     	b.lt	0xf44 <rdbg_open+0x520>
     d1c: 5319614b     	lsl	w11, w10, #7
     d20: f90072e9     	str	x9, [x23, #0xe0]
     d24: d37e794c     	ubfiz	x12, x10, #2, #31
     d28: b900eaea     	str	w10, [x23, #0xe8]
     d2c: 5280004a     	mov	w10, #0x2               // =2
     d30: 8b2bc129     	add	x9, x9, w11, sxtw
     d34: b90112ea     	str	w10, [x23, #0x110]
     d38: 8b0c012a     	add	x10, x9, x12
     d3c: 9100414a     	add	x10, x10, #0x10
     d40: a90d2ae9     	stp	x9, x10, [x23, #0xd0]
     d44: 52800029     	mov	w9, #0x1                // =1
     d48: 39000509     	strb	w9, [x8, #0x1]
     d4c: b940eae8     	ldr	w8, [x23, #0xe8]
     d50: 34000168     	cbz	w8, 0xd7c <rdbg_open+0x358>
     d54: aa1f03e8     	mov	x8, xzr
     d58: 52800209     	mov	w9, #0x10               // =16
     d5c: 529fffea     	mov	w10, #0xffff            // =65535
     d60: f9406eeb     	ldr	x11, [x23, #0xd8]
     d64: 91000508     	add	x8, x8, #0x1
     d68: 7829696a     	strh	w10, [x11, x9]
     d6c: 91001129     	add	x9, x9, #0x4
     d70: b940eaeb     	ldr	w11, [x23, #0xe8]
     d74: eb0b011f     	cmp	x8, x11
     d78: 54ffff43     	b.lo	0xd60 <rdbg_open+0x33c>
     d7c: f9406ee8     	ldr	x8, [x23, #0xd8]
     d80: 110006aa     	add	w10, w21, #0x1
     d84: b900091f     	str	wzr, [x8, #0x8]
     d88: f9406ee8     	ldr	x8, [x23, #0xd8]
     d8c: b9000d1f     	str	wzr, [x8, #0xc]
     d90: f9406ae9     	ldr	x9, [x23, #0xd0]
     d94: b9400128     	ldr	w8, [x9]
     d98: 6b0a011f     	cmp	w8, w10
     d9c: 2a1f03e8     	mov	w8, wzr
     da0: 54000041     	b.ne	0xda8 <rdbg_open+0x384>
     da4: b9400528     	ldr	w8, [x9, #0x4]
     da8: f9406ee9     	ldr	x9, [x23, #0xd8]
     dac: 2a1f03e0     	mov	w0, wzr
     db0: b9000528     	str	w8, [x9, #0x4]
     db4: 11000aa9     	add	w9, w21, #0x2
     db8: f9406ee8     	ldr	x8, [x23, #0xd8]
     dbc: b9000109     	str	w9, [x8]
     dc0: 52800028     	mov	w8, #0x1                // =1
     dc4: b900faf5     	str	w21, [x23, #0xf8]
     dc8: 390182e8     	strb	w8, [x23, #0x60]
     dcc: f9001277     	str	x23, [x19, #0x20]
     dd0: 1400008d     	b	0x1004 <rdbg_open+0x5e0>
     dd4: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000dd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
     dd8: 91000000     	add	x0, x0, #0x0
		0000000000000dd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
     ddc: 94000000     	bl	0xddc <rdbg_open+0x3b8>
		0000000000000ddc:  R_AARCH64_CALL26	_printk
     de0: 12800240     	mov	w0, #-0x13              // =-19
     de4: 14000088     	b	0x1004 <rdbg_open+0x5e0>
     de8: f94002e0     	ldr	x0, [x23]
     dec: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000dec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x21b
     df0: 91000021     	add	x1, x1, #0x0
		0000000000000df0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x21b
     df4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     df8: 91000042     	add	x2, x2, #0x0
		0000000000000df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     dfc: 94000000     	bl	0xdfc <rdbg_open+0x3d8>
		0000000000000dfc:  R_AARCH64_CALL26	_dev_err
     e00: 12800200     	mov	w0, #-0x11              // =-17
     e04: 14000080     	b	0x1004 <rdbg_open+0x5e0>
     e08: f94002e0     	ldr	x0, [x23]
     e0c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x386
     e10: 91000021     	add	x1, x1, #0x0
		0000000000000e10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x386
     e14: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     e18: 91000042     	add	x2, x2, #0x0
		0000000000000e18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     e1c: 94000000     	bl	0xe1c <rdbg_open+0x3f8>
		0000000000000e1c:  R_AARCH64_CALL26	_dev_err
     e20: 14000078     	b	0x1000 <rdbg_open+0x5dc>
     e24: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9c
     e28: 91000000     	add	x0, x0, #0x0
		0000000000000e28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9c
     e2c: 94000000     	bl	0xe2c <rdbg_open+0x408>
		0000000000000e2c:  R_AARCH64_CALL26	_printk
     e30: f94036e0     	ldr	x0, [x23, #0x68]
     e34: b100081f     	cmn	x0, #0x2
     e38: 54ffe401     	b.ne	0xab8 <rdbg_open+0x94>
     e3c: 2a1403e0     	mov	w0, w20
     e40: 2a1603e1     	mov	w1, w22
     e44: aa1503e2     	mov	x2, x21
     e48: 94000000     	bl	0xe48 <rdbg_open+0x424>
		0000000000000e48:  R_AARCH64_CALL26	qcom_smem_get
     e4c: f90036e0     	str	x0, [x23, #0x68]
     e50: 17ffff1a     	b	0xab8 <rdbg_open+0x94>
     e54: f94002e0     	ldr	x0, [x23]
     e58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x16b
     e5c: 91000021     	add	x1, x1, #0x0
		0000000000000e5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x16b
     e60: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000e60:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     e64: 91000042     	add	x2, x2, #0x0
		0000000000000e64:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     e68: 94000000     	bl	0xe68 <rdbg_open+0x444>
		0000000000000e68:  R_AARCH64_CALL26	_dev_err
     e6c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44
     e70: 91000000     	add	x0, x0, #0x0
		0000000000000e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44
     e74: 94000000     	bl	0xe74 <rdbg_open+0x450>
		0000000000000e74:  R_AARCH64_CALL26	_printk
     e78: 14000062     	b	0x1000 <rdbg_open+0x5dc>
     e7c: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000e7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x257
     e80: 91000000     	add	x0, x0, #0x0
		0000000000000e80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x257
     e84: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a0
     e88: 91000021     	add	x1, x1, #0x0
		0000000000000e88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a0
     e8c: 94000000     	bl	0xe8c <rdbg_open+0x468>
		0000000000000e8c:  R_AARCH64_CALL26	_printk
     e90: f94002e0     	ldr	x0, [x23]
     e94: f9400323     	ldr	x3, [x25]
     e98: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x28f
     e9c: 91000021     	add	x1, x1, #0x0
		0000000000000e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x28f
     ea0: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ea0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     ea4: 91000042     	add	x2, x2, #0x0
		0000000000000ea4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     ea8: 94000000     	bl	0xea8 <rdbg_open+0x484>
		0000000000000ea8:  R_AARCH64_CALL26	_dev_err
     eac: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000eac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x419
     eb0: 91000000     	add	x0, x0, #0x0
		0000000000000eb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x419
     eb4: 94000000     	bl	0xeb4 <rdbg_open+0x490>
		0000000000000eb4:  R_AARCH64_CALL26	_printk
     eb8: 128008a0     	mov	w0, #-0x46              // =-70
     ebc: 14000052     	b	0x1004 <rdbg_open+0x5e0>
     ec0: f94002e8     	ldr	x8, [x23]
     ec4: b9402ee4     	ldr	w4, [x23, #0x2c]
     ec8: 2a0003f3     	mov	w19, w0
     ecc: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000ecc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x102
     ed0: 91000021     	add	x1, x1, #0x0
		0000000000000ed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x102
     ed4: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000ed4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3a
     ed8: 91000042     	add	x2, x2, #0x0
		0000000000000ed8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3a
     edc: aa0803e0     	mov	x0, x8
     ee0: 2a1303e3     	mov	w3, w19
     ee4: 94000000     	bl	0xee4 <rdbg_open+0x4c0>
		0000000000000ee4:  R_AARCH64_CALL26	_dev_err
     ee8: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000ee8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f
     eec: 91000000     	add	x0, x0, #0x0
		0000000000000eec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f
     ef0: 2a1303e1     	mov	w1, w19
     ef4: 94000000     	bl	0xef4 <rdbg_open+0x4d0>
		0000000000000ef4:  R_AARCH64_CALL26	_printk
     ef8: 2a1303e0     	mov	w0, w19
     efc: 14000042     	b	0x1004 <rdbg_open+0x5e0>
     f00: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x362
     f04: 91000021     	add	x1, x1, #0x0
		0000000000000f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x362
     f08: 1400000f     	b	0xf44 <rdbg_open+0x520>
     f0c: d42aa240     	brk	#0x5512
     f10: d5384119     	mrs	x25, SP_EL0
     f14: f9402b3a     	ldr	x26, [x25, #0x50]
     f18: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f18:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x50
     f1c: 91000108     	add	x8, x8, #0x0
		0000000000000f1c:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x50
     f20: aa1403e0     	mov	x0, x20
     f24: 5281b801     	mov	w1, #0xdc0              // =3520
     f28: f9002b28     	str	x8, [x25, #0x50]
     f2c: 94000000     	bl	0xf2c <rdbg_open+0x508>
		0000000000000f2c:  R_AARCH64_CALL26	__kmalloc_noprof
     f30: f9002b3a     	str	x26, [x25, #0x50]
     f34: f9005ee0     	str	x0, [x23, #0xb8]
     f38: b5ffe920     	cbnz	x0, 0xc5c <rdbg_open+0x238>
     f3c: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336
     f40: 91000021     	add	x1, x1, #0x0
		0000000000000f40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336
     f44: f94002e0     	ldr	x0, [x23]
     f48: 90000002     	adrp	x2, 0x0 <.text>
		0000000000000f48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2de
     f4c: 91000042     	add	x2, x2, #0x0
		0000000000000f4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2de
     f50: 94000000     	bl	0xf50 <rdbg_open+0x52c>
		0000000000000f50:  R_AARCH64_CALL26	_dev_err
     f54: f94002e0     	ldr	x0, [x23]
     f58: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2be
     f5c: 91000021     	add	x1, x1, #0x0
		0000000000000f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2be
     f60: 12800162     	mov	w2, #-0xc               // =-12
     f64: 94000000     	bl	0xf64 <rdbg_open+0x540>
		0000000000000f64:  R_AARCH64_CALL26	_dev_err
     f68: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000f68:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x48a
     f6c: 91000000     	add	x0, x0, #0x0
		0000000000000f6c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x48a
     f70: 12800161     	mov	w1, #-0xc               // =-12
     f74: 94000000     	bl	0xf74 <rdbg_open+0x550>
		0000000000000f74:  R_AARCH64_CALL26	_printk
     f78: b940aae8     	ldr	w8, [x23, #0xa8]
     f7c: 6b15011f     	cmp	w8, w21
     f80: 540001e1     	b.ne	0xfbc <rdbg_open+0x598>
     f84: b940c2e8     	ldr	w8, [x23, #0xc0]
     f88: 7100091f     	cmp	w8, #0x2
     f8c: 54000120     	b.eq	0xfb0 <rdbg_open+0x58c>
     f90: 7100051f     	cmp	w8, #0x1
     f94: 54000121     	b.ne	0xfb8 <rdbg_open+0x594>
     f98: f94042e8     	ldr	x8, [x23, #0x80]
     f9c: b900011f     	str	wzr, [x8]
     fa0: f9405ee0     	ldr	x0, [x23, #0xb8]
     fa4: 94000000     	bl	0xfa4 <rdbg_open+0x580>
		0000000000000fa4:  R_AARCH64_CALL26	kfree
     fa8: f9005eff     	str	xzr, [x23, #0xb8]
     fac: 14000003     	b	0xfb8 <rdbg_open+0x594>
     fb0: f94046e8     	ldr	x8, [x23, #0x88]
     fb4: b900011f     	str	wzr, [x8]
     fb8: b900aaff     	str	wzr, [x23, #0xa8]
     fbc: b940fae8     	ldr	w8, [x23, #0xf8]
     fc0: 6b15011f     	cmp	w8, w21
     fc4: 540001e1     	b.ne	0x1000 <rdbg_open+0x5dc>
     fc8: b94112e8     	ldr	w8, [x23, #0x110]
     fcc: 7100091f     	cmp	w8, #0x2
     fd0: 54000120     	b.eq	0xff4 <rdbg_open+0x5d0>
     fd4: 7100051f     	cmp	w8, #0x1
     fd8: 54000121     	b.ne	0xffc <rdbg_open+0x5d8>
     fdc: f9406ae8     	ldr	x8, [x23, #0xd0]
     fe0: b900011f     	str	wzr, [x8]
     fe4: f94086e0     	ldr	x0, [x23, #0x108]
     fe8: 94000000     	bl	0xfe8 <rdbg_open+0x5c4>
		0000000000000fe8:  R_AARCH64_CALL26	kfree
     fec: f90086ff     	str	xzr, [x23, #0x108]
     ff0: 14000003     	b	0xffc <rdbg_open+0x5d8>
     ff4: f9406ee8     	ldr	x8, [x23, #0xd8]
     ff8: b900011f     	str	wzr, [x8]
     ffc: b900faff     	str	wzr, [x23, #0xf8]
    1000: 12800160     	mov	w0, #-0xc               // =-12
    1004: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1008: a94357f6     	ldp	x22, x21, [sp, #0x30]
    100c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1010: a94167fa     	ldp	x26, x25, [sp, #0x10]
    1014: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1018: d50323bf     	autiasp
    101c: d65f03c0     	ret
