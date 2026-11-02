
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014bd0 <tp_edge_report_limit_read>:
   14bd0: d503233f     	paciasp
   14bd4: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   14bd8: f9000bf9     	str	x25, [sp, #0x10]
   14bdc: a9025ff8     	stp	x24, x23, [sp, #0x20]
   14be0: a90357f6     	stp	x22, x21, [sp, #0x30]
   14be4: a9044ff4     	stp	x20, x19, [sp, #0x40]
   14be8: 910003fd     	mov	x29, sp
   14bec: f9400068     	ldr	x8, [x3]
   14bf0: b4000068     	cbz	x8, 0x14bfc <tp_edge_report_limit_read+0x2c>
   14bf4: aa1f03e0     	mov	x0, xzr
   14bf8: 1400012c     	b	0x150a8 <tp_edge_report_limit_read+0x4d8>
   14bfc: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014bfc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   14c00: aa0103f5     	mov	x21, x1
   14c04: aa0203f4     	mov	x20, x2
   14c08: f9400117     	ldr	x23, [x8]
		0000000000014c08:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   14c0c: aa0303f3     	mov	x19, x3
   14c10: d503201f     	nop
   14c14: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0x138>
		0000000000014c14:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   14c18: 5281b801     	mov	w1, #0xdc0              // =3520
   14c1c: 52820002     	mov	w2, #0x1000             // =4096
   14c20: f9400100     	ldr	x0, [x8]
		0000000000014c20:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   14c24: 94000000     	bl	0x14c24 <tp_edge_report_limit_read+0x54>
		0000000000014c24:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   14c28: aa0003f6     	mov	x22, x0
   14c2c: b4002676     	cbz	x22, 0x150f8 <tp_edge_report_limit_read+0x528>
   14c30: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014c30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19226
   14c34: 91000021     	add	x1, x1, #0x0
		0000000000014c34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19226
   14c38: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014c38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19257
   14c3c: 91000042     	add	x2, x2, #0x0
		0000000000014c3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19257
   14c40: a9411423     	ldp	x3, x5, [x1, #0x10]
   14c44: 90000004     	adrp	x4, 0x14000 <syna_tcm_reset+0x138>
		0000000000014c44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c789
   14c48: 91000084     	add	x4, x4, #0x0
		0000000000014c48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c789
   14c4c: 9000000c     	adrp	x12, 0x14000 <syna_tcm_reset+0x138>
		0000000000014c4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c04d
   14c50: 9100018c     	add	x12, x12, #0x0
		0000000000014c50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c04d
   14c54: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0x138>
		0000000000014c54:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba0e
   14c58: 91000000     	add	x0, x0, #0x0
		0000000000014c58:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba0e
   14c5c: a90616c3     	stp	x3, x5, [x22, #0x60]
   14c60: a9420c26     	ldp	x6, x3, [x1, #0x20]
   14c64: a9400425     	ldp	x5, x1, [x1]
   14c68: f9400010     	ldr	x16, [x0]
   14c6c: a941a18a     	ldp	x10, x8, [x12, #0x18]
   14c70: 5280014e     	mov	w14, #0xa               // =10
   14c74: a9070ec6     	stp	x6, x3, [x22, #0x70]
   14c78: a940a58b     	ldp	x11, x9, [x12, #0x8]
   14c7c: a90506c5     	stp	x5, x1, [x22, #0x50]
   14c80: a9428c41     	ldp	x1, x3, [x2, #0x28]
   14c84: a940bc0d     	ldp	x13, x15, [x0, #0x8]
   14c88: f940018c     	ldr	x12, [x12]
   14c8c: a9418011     	ldp	x17, x0, [x0, #0x18]
   14c90: a901a2ca     	stp	x10, x8, [x22, #0x18]
   14c94: a90a8ec1     	stp	x1, x3, [x22, #0xa8]
   14c98: a9400445     	ldp	x5, x1, [x2]
   14c9c: a9419843     	ldp	x3, x6, [x2, #0x18]
   14ca0: 5281b198     	mov	w24, #0xd8c             // =3468
   14ca4: a900a6cb     	stp	x11, x9, [x22, #0x8]
   14ca8: a90806c5     	stp	x5, x1, [x22, #0x80]
   14cac: f9400841     	ldr	x1, [x2, #0x10]
   14cb0: a9099ac3     	stp	x3, x6, [x22, #0x98]
   14cb4: f9004ac1     	str	x1, [x22, #0x90]
   14cb8: a9408881     	ldp	x1, x2, [x4, #0x8]
   14cbc: f90002cc     	str	x12, [x22]
   14cc0: 39013ece     	strb	w14, [x22, #0x4f]
   14cc4: f80c72c2     	stur	x2, [x22, #0xc7]
   14cc8: f9400082     	ldr	x2, [x4]
   14ccc: f80bf2c1     	stur	x1, [x22, #0xbf]
   14cd0: f80b72c2     	stur	x2, [x22, #0xb7]
   14cd4: a9428482     	ldp	x2, x1, [x4, #0x28]
   14cd8: f802f2cd     	stur	x13, [x22, #0x2f]
   14cdc: f80372cf     	stur	x15, [x22, #0x37]
   14ce0: f80e72c1     	stur	x1, [x22, #0xe7]
   14ce4: a9418483     	ldp	x3, x1, [x4, #0x18]
   14ce8: 90000004     	adrp	x4, 0x14000 <syna_tcm_reset+0x138>
		0000000000014ce8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bed
   14cec: 91000084     	add	x4, x4, #0x0
		0000000000014cec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bed
   14cf0: f80df2c2     	stur	x2, [x22, #0xdf]
   14cf4: f803f2d1     	stur	x17, [x22, #0x3f]
   14cf8: f80d72c1     	stur	x1, [x22, #0xd7]
   14cfc: a9408482     	ldp	x2, x1, [x4, #0x8]
   14d00: f80cf2c3     	stur	x3, [x22, #0xcf]
   14d04: f9400083     	ldr	x3, [x4]
   14d08: f80472c0     	stur	x0, [x22, #0x47]
   14d0c: f80ff2c1     	stur	x1, [x22, #0xff]
   14d10: aa1603e1     	mov	x1, x22
   14d14: f80f72c2     	stur	x2, [x22, #0xf7]
   14d18: f842d082     	ldur	x2, [x4, #0x2d]
   14d1c: f80efc23     	str	x3, [x1, #0xef]!
   14d20: f9401483     	ldr	x3, [x4, #0x28]
   14d24: a9419085     	ldp	x5, x4, [x4, #0x18]
   14d28: f802d022     	stur	x2, [x1, #0x2d]
   14d2c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014d2c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b26
   14d30: 91000042     	add	x2, x2, #0x0
		0000000000014d30:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b26
   14d34: f80272d0     	stur	x16, [x22, #0x27]
   14d38: 39088ece     	strb	w14, [x22, #0x223]
   14d3c: a9020c24     	stp	x4, x3, [x1, #0x20]
   14d40: a9400c44     	ldp	x4, x3, [x2]
   14d44: f9000c25     	str	x5, [x1, #0x18]
   14d48: 528d2da1     	mov	w1, #0x696d             // =26989
   14d4c: 910492c5     	add	x5, x22, #0x124
   14d50: 72a14e81     	movk	w1, #0xa74, lsl #16
   14d54: b9015ec1     	str	w1, [x22, #0x15c]
   14d58: a9000ca4     	stp	x4, x3, [x5]
   14d5c: a9428443     	ldp	x3, x1, [x2, #0x28]
   14d60: f9400844     	ldr	x4, [x2, #0x10]
   14d64: a90284a3     	stp	x3, x1, [x5, #0x28]
   14d68: a9418442     	ldp	x2, x1, [x2, #0x18]
   14d6c: 90000003     	adrp	x3, 0x14000 <syna_tcm_reset+0x138>
		0000000000014d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7c2
   14d70: 91000063     	add	x3, x3, #0x0
		0000000000014d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7c2
   14d74: f90008a4     	str	x4, [x5, #0x10]
   14d78: a90184a2     	stp	x2, x1, [x5, #0x18]
   14d7c: a9410464     	ldp	x4, x1, [x3, #0x10]
   14d80: a91706c4     	stp	x4, x1, [x22, #0x170]
   14d84: a9400861     	ldp	x1, x2, [x3]
   14d88: a9160ac1     	stp	x1, x2, [x22, #0x160]
   14d8c: a9431062     	ldp	x2, x4, [x3, #0x30]
   14d90: a9420463     	ldp	x3, x1, [x3, #0x20]
   14d94: a91912c2     	stp	x2, x4, [x22, #0x190]
   14d98: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014d98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a817
   14d9c: 91000042     	add	x2, x2, #0x0
		0000000000014d9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a817
   14da0: a91806c3     	stp	x3, x1, [x22, #0x180]
   14da4: a9400c44     	ldp	x4, x3, [x2]
   14da8: 528e8d21     	mov	w1, #0x7469             // =29801
   14dac: 72a00141     	movk	w1, #0xa, lsl #16
   14db0: b901dac1     	str	w1, [x22, #0x1d8]
   14db4: a91a0ec4     	stp	x4, x3, [x22, #0x1a0]
   14db8: a9428443     	ldp	x3, x1, [x2, #0x28]
   14dbc: a91c86c3     	stp	x3, x1, [x22, #0x1c8]
   14dc0: f9400841     	ldr	x1, [x2, #0x10]
   14dc4: a9419042     	ldp	x2, x4, [x2, #0x18]
   14dc8: f900dac1     	str	x1, [x22, #0x1b0]
   14dcc: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0x138>
		0000000000014dcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba38
   14dd0: 91000021     	add	x1, x1, #0x0
		0000000000014dd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba38
   14dd4: a91b92c2     	stp	x2, x4, [x22, #0x1b8]
   14dd8: a9410823     	ldp	x3, x2, [x1, #0x10]
   14ddc: 91076ec4     	add	x4, x22, #0x1db
   14de0: a9010883     	stp	x3, x2, [x4, #0x10]
   14de4: a9401422     	ldp	x2, x5, [x1]
   14de8: a9001482     	stp	x2, x5, [x4]
   14dec: a9438c22     	ldp	x2, x3, [x1, #0x38]
   14df0: a9038c82     	stp	x2, x3, [x4, #0x38]
   14df4: f9401022     	ldr	x2, [x1, #0x20]
   14df8: a9429421     	ldp	x1, x5, [x1, #0x28]
   14dfc: f9001082     	str	x2, [x4, #0x20]
   14e00: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014e00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a853
   14e04: 91000042     	add	x2, x2, #0x0
		0000000000014e04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a853
   14e08: a9029481     	stp	x1, x5, [x4, #0x28]
   14e0c: 910892c1     	add	x1, x22, #0x224
   14e10: a901a02a     	stp	x10, x8, [x1, #0x18]
   14e14: 91092ec8     	add	x8, x22, #0x24b
   14e18: a900a42b     	stp	x11, x9, [x1, #0x8]
   14e1c: f900002c     	str	x12, [x1]
   14e20: 5281b181     	mov	w1, #0xd8c              // =3468
   14e24: 7900510e     	strh	w14, [x8, #0x28]
   14e28: a901450f     	stp	x15, x17, [x8, #0x10]
   14e2c: f9001100     	str	x0, [x8, #0x20]
   14e30: 9109d2c0     	add	x0, x22, #0x274
   14e34: a9003510     	stp	x16, x13, [x8]
   14e38: 39406ee3     	ldrb	w3, [x23, #0x1b]
   14e3c: 94000000     	bl	0x14e3c <tp_edge_report_limit_read+0x26c>
		0000000000014e3c:  R_AARCH64_CALL26	snprintf
   14e40: 93407c08     	sxtw	x8, w0
   14e44: 394092e3     	ldrb	w3, [x23, #0x24]
   14e48: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014e48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6df
   14e4c: 91000042     	add	x2, x2, #0x0
		0000000000014e4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6df
   14e50: 9109d119     	add	x25, x8, #0x274
   14e54: cb080301     	sub	x1, x24, x8
   14e58: 8b1902c0     	add	x0, x22, x25
   14e5c: 94000000     	bl	0x14e5c <tp_edge_report_limit_read+0x28c>
		0000000000014e5c:  R_AARCH64_CALL26	snprintf
   14e60: 8b20c339     	add	x25, x25, w0, sxtw
   14e64: 52820018     	mov	w24, #0x1000            // =4096
   14e68: 79407ee3     	ldrh	w3, [x23, #0x3e]
   14e6c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014e6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1793b
   14e70: 91000042     	add	x2, x2, #0x0
		0000000000014e70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1793b
   14e74: cb190301     	sub	x1, x24, x25
   14e78: 8b1902c0     	add	x0, x22, x25
   14e7c: 94000000     	bl	0x14e7c <tp_edge_report_limit_read+0x2ac>
		0000000000014e7c:  R_AARCH64_CALL26	snprintf
   14e80: 8b20c339     	add	x25, x25, w0, sxtw
   14e84: 39409ae3     	ldrb	w3, [x23, #0x26]
   14e88: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014e88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4c6
   14e8c: 91000042     	add	x2, x2, #0x0
		0000000000014e8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4c6
   14e90: cb190301     	sub	x1, x24, x25
   14e94: 8b1902c0     	add	x0, x22, x25
   14e98: 94000000     	bl	0x14e98 <tp_edge_report_limit_read+0x2c8>
		0000000000014e98:  R_AARCH64_CALL26	snprintf
   14e9c: 8b20c339     	add	x25, x25, w0, sxtw
   14ea0: 394096e3     	ldrb	w3, [x23, #0x25]
   14ea4: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c594
   14ea8: 91000042     	add	x2, x2, #0x0
		0000000000014ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c594
   14eac: cb190301     	sub	x1, x24, x25
   14eb0: 8b1902c0     	add	x0, x22, x25
   14eb4: 94000000     	bl	0x14eb4 <tp_edge_report_limit_read+0x2e4>
		0000000000014eb4:  R_AARCH64_CALL26	snprintf
   14eb8: 8b20c339     	add	x25, x25, w0, sxtw
   14ebc: 79407ae3     	ldrh	w3, [x23, #0x3c]
   14ec0: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014ec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e8f
   14ec4: 91000042     	add	x2, x2, #0x0
		0000000000014ec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e8f
   14ec8: cb190301     	sub	x1, x24, x25
   14ecc: 8b1902c0     	add	x0, x22, x25
   14ed0: 94000000     	bl	0x14ed0 <tp_edge_report_limit_read+0x300>
		0000000000014ed0:  R_AARCH64_CALL26	snprintf
   14ed4: 8b20c339     	add	x25, x25, w0, sxtw
   14ed8: 3940e2e3     	ldrb	w3, [x23, #0x38]
   14edc: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014edc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fda
   14ee0: 91000042     	add	x2, x2, #0x0
		0000000000014ee0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fda
   14ee4: cb190301     	sub	x1, x24, x25
   14ee8: 8b1902c0     	add	x0, x22, x25
   14eec: 94000000     	bl	0x14eec <tp_edge_report_limit_read+0x31c>
		0000000000014eec:  R_AARCH64_CALL26	snprintf
   14ef0: 8b20c339     	add	x25, x25, w0, sxtw
   14ef4: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014ef4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18cf2
   14ef8: 91000042     	add	x2, x2, #0x0
		0000000000014ef8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18cf2
   14efc: cb190301     	sub	x1, x24, x25
   14f00: 8b1902c0     	add	x0, x22, x25
   14f04: 94000000     	bl	0x14f04 <tp_edge_report_limit_read+0x334>
		0000000000014f04:  R_AARCH64_CALL26	snprintf
   14f08: 8b20c338     	add	x24, x25, w0, sxtw
   14f0c: f13feb1f     	cmp	x24, #0xffa
   14f10: 540004e8     	b.hi	0x14fac <tp_edge_report_limit_read+0x3dc>
   14f14: 52820008     	mov	w8, #0x1000             // =4096
   14f18: 39409ee3     	ldrb	w3, [x23, #0x27]
   14f1c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14f20: 91000042     	add	x2, x2, #0x0
		0000000000014f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14f24: cb180101     	sub	x1, x8, x24
   14f28: 8b1802c0     	add	x0, x22, x24
   14f2c: 94000000     	bl	0x14f2c <tp_edge_report_limit_read+0x35c>
		0000000000014f2c:  R_AARCH64_CALL26	snprintf
   14f30: 8b20c318     	add	x24, x24, w0, sxtw
   14f34: f13feb1f     	cmp	x24, #0xffa
   14f38: 540003a8     	b.hi	0x14fac <tp_edge_report_limit_read+0x3dc>
   14f3c: 52820008     	mov	w8, #0x1000             // =4096
   14f40: 3940a2e3     	ldrb	w3, [x23, #0x28]
   14f44: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014f44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14f48: 91000042     	add	x2, x2, #0x0
		0000000000014f48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14f4c: cb180101     	sub	x1, x8, x24
   14f50: 8b1802c0     	add	x0, x22, x24
   14f54: 94000000     	bl	0x14f54 <tp_edge_report_limit_read+0x384>
		0000000000014f54:  R_AARCH64_CALL26	snprintf
   14f58: 8b20c318     	add	x24, x24, w0, sxtw
   14f5c: f13feb1f     	cmp	x24, #0xffa
   14f60: 54000268     	b.hi	0x14fac <tp_edge_report_limit_read+0x3dc>
   14f64: 52820008     	mov	w8, #0x1000             // =4096
   14f68: 3940a6e3     	ldrb	w3, [x23, #0x29]
   14f6c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014f6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14f70: 91000042     	add	x2, x2, #0x0
		0000000000014f70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14f74: cb180101     	sub	x1, x8, x24
   14f78: 8b1802c0     	add	x0, x22, x24
   14f7c: 94000000     	bl	0x14f7c <tp_edge_report_limit_read+0x3ac>
		0000000000014f7c:  R_AARCH64_CALL26	snprintf
   14f80: 8b20c318     	add	x24, x24, w0, sxtw
   14f84: f13feb1f     	cmp	x24, #0xffa
   14f88: 54000128     	b.hi	0x14fac <tp_edge_report_limit_read+0x3dc>
   14f8c: 52820008     	mov	w8, #0x1000             // =4096
   14f90: 3940aae3     	ldrb	w3, [x23, #0x2a]
   14f94: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014f94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14f98: 91000042     	add	x2, x2, #0x0
		0000000000014f98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14f9c: cb180101     	sub	x1, x8, x24
   14fa0: 8b1802c0     	add	x0, x22, x24
   14fa4: 94000000     	bl	0x14fa4 <tp_edge_report_limit_read+0x3d4>
		0000000000014fa4:  R_AARCH64_CALL26	snprintf
   14fa8: 8b20c318     	add	x24, x24, w0, sxtw
   14fac: 52820008     	mov	w8, #0x1000             // =4096
   14fb0: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014fb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b242
   14fb4: 91000042     	add	x2, x2, #0x0
		0000000000014fb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b242
   14fb8: cb180101     	sub	x1, x8, x24
   14fbc: 8b1802c0     	add	x0, x22, x24
   14fc0: 94000000     	bl	0x14fc0 <tp_edge_report_limit_read+0x3f0>
		0000000000014fc0:  R_AARCH64_CALL26	snprintf
   14fc4: 8b20c318     	add	x24, x24, w0, sxtw
   14fc8: f13feb1f     	cmp	x24, #0xffa
   14fcc: 540004e8     	b.hi	0x15068 <tp_edge_report_limit_read+0x498>
   14fd0: 52820008     	mov	w8, #0x1000             // =4096
   14fd4: 3940d2e3     	ldrb	w3, [x23, #0x34]
   14fd8: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0x138>
		0000000000014fd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14fdc: 91000042     	add	x2, x2, #0x0
		0000000000014fdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14fe0: cb180101     	sub	x1, x8, x24
   14fe4: 8b1802c0     	add	x0, x22, x24
   14fe8: 94000000     	bl	0x14fe8 <tp_edge_report_limit_read+0x418>
		0000000000014fe8:  R_AARCH64_CALL26	snprintf
   14fec: 8b20c318     	add	x24, x24, w0, sxtw
   14ff0: f13feb1f     	cmp	x24, #0xffa
   14ff4: 540003a8     	b.hi	0x15068 <tp_edge_report_limit_read+0x498>
   14ff8: 52820008     	mov	w8, #0x1000             // =4096
   14ffc: 3940d6e3     	ldrb	w3, [x23, #0x35]
   15000: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   15004: 91000042     	add	x2, x2, #0x0
		0000000000015004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   15008: cb180101     	sub	x1, x8, x24
   1500c: 8b1802c0     	add	x0, x22, x24
   15010: 94000000     	bl	0x15010 <tp_edge_report_limit_read+0x440>
		0000000000015010:  R_AARCH64_CALL26	snprintf
   15014: 8b20c318     	add	x24, x24, w0, sxtw
   15018: f13feb1f     	cmp	x24, #0xffa
   1501c: 54000268     	b.hi	0x15068 <tp_edge_report_limit_read+0x498>
   15020: 52820008     	mov	w8, #0x1000             // =4096
   15024: 3940dae3     	ldrb	w3, [x23, #0x36]
   15028: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015028:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   1502c: 91000042     	add	x2, x2, #0x0
		000000000001502c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   15030: cb180101     	sub	x1, x8, x24
   15034: 8b1802c0     	add	x0, x22, x24
   15038: 94000000     	bl	0x15038 <tp_edge_report_limit_read+0x468>
		0000000000015038:  R_AARCH64_CALL26	snprintf
   1503c: 8b20c318     	add	x24, x24, w0, sxtw
   15040: f13feb1f     	cmp	x24, #0xffa
   15044: 54000128     	b.hi	0x15068 <tp_edge_report_limit_read+0x498>
   15048: 52820008     	mov	w8, #0x1000             // =4096
   1504c: 3940dee3     	ldrb	w3, [x23, #0x37]
   15050: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		0000000000015050:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   15054: 91000042     	add	x2, x2, #0x0
		0000000000015054:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   15058: cb180101     	sub	x1, x8, x24
   1505c: 8b1802c0     	add	x0, x22, x24
   15060: 94000000     	bl	0x15060 <tp_edge_report_limit_read+0x490>
		0000000000015060:  R_AARCH64_CALL26	snprintf
   15064: 8b20c318     	add	x24, x24, w0, sxtw
   15068: 52820008     	mov	w8, #0x1000             // =4096
   1506c: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x430>
		000000000001506c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   15070: 91000042     	add	x2, x2, #0x0
		0000000000015070:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   15074: cb180101     	sub	x1, x8, x24
   15078: 8b1802c0     	add	x0, x22, x24
   1507c: 94000000     	bl	0x1507c <tp_edge_report_limit_read+0x4ac>
		000000000001507c:  R_AARCH64_CALL26	snprintf
   15080: 8b20c317     	add	x23, x24, w0, sxtw
   15084: aa1503e0     	mov	x0, x21
   15088: aa1403e1     	mov	x1, x20
   1508c: aa1303e2     	mov	x2, x19
   15090: aa1603e3     	mov	x3, x22
   15094: aa1703e4     	mov	x4, x23
   15098: 94000000     	bl	0x15098 <tp_edge_report_limit_read+0x4c8>
		0000000000015098:  R_AARCH64_CALL26	simple_read_from_buffer
   1509c: aa1603e0     	mov	x0, x22
   150a0: 94000000     	bl	0x150a0 <tp_edge_report_limit_read+0x4d0>
		00000000000150a0:  R_AARCH64_CALL26	kfree
   150a4: aa1703e0     	mov	x0, x23
   150a8: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   150ac: f9400bf9     	ldr	x25, [sp, #0x10]
   150b0: a94357f6     	ldp	x22, x21, [sp, #0x30]
   150b4: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   150b8: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   150bc: d50323bf     	autiasp
   150c0: d65f03c0     	ret
   150c4: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000150c4:  R_AARCH64_ADR_PREL_PG_HI21	tp_edge_report_limit_read._alloc_tag
   150c8: 91000108     	add	x8, x8, #0x0
		00000000000150c8:  R_AARCH64_ADD_ABS_LO12_NC	tp_edge_report_limit_read._alloc_tag
   150cc: d5384118     	mrs	x24, SP_EL0
   150d0: f9402b19     	ldr	x25, [x24, #0x50]
   150d4: f9002b08     	str	x8, [x24, #0x50]
   150d8: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000150d8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   150dc: f9400100     	ldr	x0, [x8]
		00000000000150dc:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   150e0: 5281b801     	mov	w1, #0xdc0              // =3520
   150e4: 52820002     	mov	w2, #0x1000             // =4096
   150e8: 94000000     	bl	0x150e8 <tp_edge_report_limit_read+0x518>
		00000000000150e8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   150ec: aa0003f6     	mov	x22, x0
   150f0: f9002b19     	str	x25, [x24, #0x50]
   150f4: b5ffd9f6     	cbnz	x22, 0x14c30 <tp_edge_report_limit_read+0x60>
   150f8: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x430>
		00000000000150f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181d4
   150fc: 91000000     	add	x0, x0, #0x0
		00000000000150fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181d4
   15100: 94000000     	bl	0x15100 <tp_edge_report_limit_read+0x530>
		0000000000015100:  R_AARCH64_CALL26	_printk
   15104: 92800160     	mov	x0, #-0xc               // =-12
   15108: 17ffffe8     	b	0x150a8 <tp_edge_report_limit_read+0x4d8>
