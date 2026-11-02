
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000014c2c <tp_edge_report_limit_read>:
   14c2c: d503233f     	paciasp
   14c30: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   14c34: f9000bf9     	str	x25, [sp, #0x10]
   14c38: a9025ff8     	stp	x24, x23, [sp, #0x20]
   14c3c: a90357f6     	stp	x22, x21, [sp, #0x30]
   14c40: a9044ff4     	stp	x20, x19, [sp, #0x40]
   14c44: 910003fd     	mov	x29, sp
   14c48: f9400068     	ldr	x8, [x3]
   14c4c: b4000068     	cbz	x8, 0x14c58 <tp_edge_report_limit_read+0x2c>
   14c50: aa1f03e0     	mov	x0, xzr
   14c54: 1400012c     	b	0x15104 <tp_edge_report_limit_read+0x4d8>
   14c58: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014c58:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   14c5c: aa0103f5     	mov	x21, x1
   14c60: aa0203f4     	mov	x20, x2
   14c64: f9400117     	ldr	x23, [x8]
		0000000000014c64:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   14c68: aa0303f3     	mov	x19, x3
   14c6c: d503201f     	nop
   14c70: 90000008     	adrp	x8, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014c70:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   14c74: 5281b801     	mov	w1, #0xdc0              // =3520
   14c78: 52820002     	mov	w2, #0x1000             // =4096
   14c7c: f9400100     	ldr	x0, [x8]
		0000000000014c7c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   14c80: 94000000     	bl	0x14c80 <tp_edge_report_limit_read+0x54>
		0000000000014c80:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   14c84: aa0003f6     	mov	x22, x0
   14c88: b4002676     	cbz	x22, 0x15154 <tp_edge_report_limit_read+0x528>
   14c8c: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19226
   14c90: 91000021     	add	x1, x1, #0x0
		0000000000014c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19226
   14c94: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014c94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19257
   14c98: 91000042     	add	x2, x2, #0x0
		0000000000014c98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19257
   14c9c: a9411423     	ldp	x3, x5, [x1, #0x10]
   14ca0: 90000004     	adrp	x4, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ca0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7a2
   14ca4: 91000084     	add	x4, x4, #0x0
		0000000000014ca4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7a2
   14ca8: 9000000c     	adrp	x12, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c04d
   14cac: 9100018c     	add	x12, x12, #0x0
		0000000000014cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c04d
   14cb0: 90000000     	adrp	x0, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014cb0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba0e
   14cb4: 91000000     	add	x0, x0, #0x0
		0000000000014cb4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba0e
   14cb8: a90616c3     	stp	x3, x5, [x22, #0x60]
   14cbc: a9420c26     	ldp	x6, x3, [x1, #0x20]
   14cc0: a9400425     	ldp	x5, x1, [x1]
   14cc4: f9400010     	ldr	x16, [x0]
   14cc8: a941a18a     	ldp	x10, x8, [x12, #0x18]
   14ccc: 5280014e     	mov	w14, #0xa               // =10
   14cd0: a9070ec6     	stp	x6, x3, [x22, #0x70]
   14cd4: a940a58b     	ldp	x11, x9, [x12, #0x8]
   14cd8: a90506c5     	stp	x5, x1, [x22, #0x50]
   14cdc: a9428c41     	ldp	x1, x3, [x2, #0x28]
   14ce0: a940bc0d     	ldp	x13, x15, [x0, #0x8]
   14ce4: f940018c     	ldr	x12, [x12]
   14ce8: a9418011     	ldp	x17, x0, [x0, #0x18]
   14cec: a901a2ca     	stp	x10, x8, [x22, #0x18]
   14cf0: a90a8ec1     	stp	x1, x3, [x22, #0xa8]
   14cf4: a9400445     	ldp	x5, x1, [x2]
   14cf8: a9419843     	ldp	x3, x6, [x2, #0x18]
   14cfc: 5281b198     	mov	w24, #0xd8c             // =3468
   14d00: a900a6cb     	stp	x11, x9, [x22, #0x8]
   14d04: a90806c5     	stp	x5, x1, [x22, #0x80]
   14d08: f9400841     	ldr	x1, [x2, #0x10]
   14d0c: a9099ac3     	stp	x3, x6, [x22, #0x98]
   14d10: f9004ac1     	str	x1, [x22, #0x90]
   14d14: a9408881     	ldp	x1, x2, [x4, #0x8]
   14d18: f90002cc     	str	x12, [x22]
   14d1c: 39013ece     	strb	w14, [x22, #0x4f]
   14d20: f80c72c2     	stur	x2, [x22, #0xc7]
   14d24: f9400082     	ldr	x2, [x4]
   14d28: f80bf2c1     	stur	x1, [x22, #0xbf]
   14d2c: f80b72c2     	stur	x2, [x22, #0xb7]
   14d30: a9428482     	ldp	x2, x1, [x4, #0x28]
   14d34: f802f2cd     	stur	x13, [x22, #0x2f]
   14d38: f80372cf     	stur	x15, [x22, #0x37]
   14d3c: f80e72c1     	stur	x1, [x22, #0xe7]
   14d40: a9418483     	ldp	x3, x1, [x4, #0x18]
   14d44: 90000004     	adrp	x4, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19bed
   14d48: 91000084     	add	x4, x4, #0x0
		0000000000014d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19bed
   14d4c: f80df2c2     	stur	x2, [x22, #0xdf]
   14d50: f803f2d1     	stur	x17, [x22, #0x3f]
   14d54: f80d72c1     	stur	x1, [x22, #0xd7]
   14d58: a9408482     	ldp	x2, x1, [x4, #0x8]
   14d5c: f80cf2c3     	stur	x3, [x22, #0xcf]
   14d60: f9400083     	ldr	x3, [x4]
   14d64: f80472c0     	stur	x0, [x22, #0x47]
   14d68: f80ff2c1     	stur	x1, [x22, #0xff]
   14d6c: aa1603e1     	mov	x1, x22
   14d70: f80f72c2     	stur	x2, [x22, #0xf7]
   14d74: f842d082     	ldur	x2, [x4, #0x2d]
   14d78: f80efc23     	str	x3, [x1, #0xef]!
   14d7c: f9401483     	ldr	x3, [x4, #0x28]
   14d80: a9419085     	ldp	x5, x4, [x4, #0x18]
   14d84: f802d022     	stur	x2, [x1, #0x2d]
   14d88: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014d88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18b26
   14d8c: 91000042     	add	x2, x2, #0x0
		0000000000014d8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18b26
   14d90: f80272d0     	stur	x16, [x22, #0x27]
   14d94: 39088ece     	strb	w14, [x22, #0x223]
   14d98: a9020c24     	stp	x4, x3, [x1, #0x20]
   14d9c: a9400c44     	ldp	x4, x3, [x2]
   14da0: f9000c25     	str	x5, [x1, #0x18]
   14da4: 528d2da1     	mov	w1, #0x696d             // =26989
   14da8: 910492c5     	add	x5, x22, #0x124
   14dac: 72a14e81     	movk	w1, #0xa74, lsl #16
   14db0: b9015ec1     	str	w1, [x22, #0x15c]
   14db4: a9000ca4     	stp	x4, x3, [x5]
   14db8: a9428443     	ldp	x3, x1, [x2, #0x28]
   14dbc: f9400844     	ldr	x4, [x2, #0x10]
   14dc0: a90284a3     	stp	x3, x1, [x5, #0x28]
   14dc4: a9418442     	ldp	x2, x1, [x2, #0x18]
   14dc8: 90000003     	adrp	x3, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014dc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c7db
   14dcc: 91000063     	add	x3, x3, #0x0
		0000000000014dcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c7db
   14dd0: f90008a4     	str	x4, [x5, #0x10]
   14dd4: a90184a2     	stp	x2, x1, [x5, #0x18]
   14dd8: a9410464     	ldp	x4, x1, [x3, #0x10]
   14ddc: a91706c4     	stp	x4, x1, [x22, #0x170]
   14de0: a9400861     	ldp	x1, x2, [x3]
   14de4: a9160ac1     	stp	x1, x2, [x22, #0x160]
   14de8: a9431062     	ldp	x2, x4, [x3, #0x30]
   14dec: a9420463     	ldp	x3, x1, [x3, #0x20]
   14df0: a91912c2     	stp	x2, x4, [x22, #0x190]
   14df4: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014df4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a817
   14df8: 91000042     	add	x2, x2, #0x0
		0000000000014df8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a817
   14dfc: a91806c3     	stp	x3, x1, [x22, #0x180]
   14e00: a9400c44     	ldp	x4, x3, [x2]
   14e04: 528e8d21     	mov	w1, #0x7469             // =29801
   14e08: 72a00141     	movk	w1, #0xa, lsl #16
   14e0c: b901dac1     	str	w1, [x22, #0x1d8]
   14e10: a91a0ec4     	stp	x4, x3, [x22, #0x1a0]
   14e14: a9428443     	ldp	x3, x1, [x2, #0x28]
   14e18: a91c86c3     	stp	x3, x1, [x22, #0x1c8]
   14e1c: f9400841     	ldr	x1, [x2, #0x10]
   14e20: a9419042     	ldp	x2, x4, [x2, #0x18]
   14e24: f900dac1     	str	x1, [x22, #0x1b0]
   14e28: 90000001     	adrp	x1, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014e28:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba38
   14e2c: 91000021     	add	x1, x1, #0x0
		0000000000014e2c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba38
   14e30: a91b92c2     	stp	x2, x4, [x22, #0x1b8]
   14e34: a9410823     	ldp	x3, x2, [x1, #0x10]
   14e38: 91076ec4     	add	x4, x22, #0x1db
   14e3c: a9010883     	stp	x3, x2, [x4, #0x10]
   14e40: a9401422     	ldp	x2, x5, [x1]
   14e44: a9001482     	stp	x2, x5, [x4]
   14e48: a9438c22     	ldp	x2, x3, [x1, #0x38]
   14e4c: a9038c82     	stp	x2, x3, [x4, #0x38]
   14e50: f9401022     	ldr	x2, [x1, #0x20]
   14e54: a9429421     	ldp	x1, x5, [x1, #0x28]
   14e58: f9001082     	str	x2, [x4, #0x20]
   14e5c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014e5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a853
   14e60: 91000042     	add	x2, x2, #0x0
		0000000000014e60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a853
   14e64: a9029481     	stp	x1, x5, [x4, #0x28]
   14e68: 910892c1     	add	x1, x22, #0x224
   14e6c: a901a02a     	stp	x10, x8, [x1, #0x18]
   14e70: 91092ec8     	add	x8, x22, #0x24b
   14e74: a900a42b     	stp	x11, x9, [x1, #0x8]
   14e78: f900002c     	str	x12, [x1]
   14e7c: 5281b181     	mov	w1, #0xd8c              // =3468
   14e80: 7900510e     	strh	w14, [x8, #0x28]
   14e84: a901450f     	stp	x15, x17, [x8, #0x10]
   14e88: f9001100     	str	x0, [x8, #0x20]
   14e8c: 9109d2c0     	add	x0, x22, #0x274
   14e90: a9003510     	stp	x16, x13, [x8]
   14e94: 39406ee3     	ldrb	w3, [x23, #0x1b]
   14e98: 94000000     	bl	0x14e98 <tp_edge_report_limit_read+0x26c>
		0000000000014e98:  R_AARCH64_CALL26	snprintf
   14e9c: 93407c08     	sxtw	x8, w0
   14ea0: 394092e3     	ldrb	w3, [x23, #0x24]
   14ea4: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ea4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b6df
   14ea8: 91000042     	add	x2, x2, #0x0
		0000000000014ea8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b6df
   14eac: 9109d119     	add	x25, x8, #0x274
   14eb0: cb080301     	sub	x1, x24, x8
   14eb4: 8b1902c0     	add	x0, x22, x25
   14eb8: 94000000     	bl	0x14eb8 <tp_edge_report_limit_read+0x28c>
		0000000000014eb8:  R_AARCH64_CALL26	snprintf
   14ebc: 8b20c339     	add	x25, x25, w0, sxtw
   14ec0: 52820018     	mov	w24, #0x1000            // =4096
   14ec4: 79407ee3     	ldrh	w3, [x23, #0x3e]
   14ec8: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ec8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1793b
   14ecc: 91000042     	add	x2, x2, #0x0
		0000000000014ecc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1793b
   14ed0: cb190301     	sub	x1, x24, x25
   14ed4: 8b1902c0     	add	x0, x22, x25
   14ed8: 94000000     	bl	0x14ed8 <tp_edge_report_limit_read+0x2ac>
		0000000000014ed8:  R_AARCH64_CALL26	snprintf
   14edc: 8b20c339     	add	x25, x25, w0, sxtw
   14ee0: 39409ae3     	ldrb	w3, [x23, #0x26]
   14ee4: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ee4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a4c6
   14ee8: 91000042     	add	x2, x2, #0x0
		0000000000014ee8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a4c6
   14eec: cb190301     	sub	x1, x24, x25
   14ef0: 8b1902c0     	add	x0, x22, x25
   14ef4: 94000000     	bl	0x14ef4 <tp_edge_report_limit_read+0x2c8>
		0000000000014ef4:  R_AARCH64_CALL26	snprintf
   14ef8: 8b20c339     	add	x25, x25, w0, sxtw
   14efc: 394096e3     	ldrb	w3, [x23, #0x25]
   14f00: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014f00:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c5ad
   14f04: 91000042     	add	x2, x2, #0x0
		0000000000014f04:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c5ad
   14f08: cb190301     	sub	x1, x24, x25
   14f0c: 8b1902c0     	add	x0, x22, x25
   14f10: 94000000     	bl	0x14f10 <tp_edge_report_limit_read+0x2e4>
		0000000000014f10:  R_AARCH64_CALL26	snprintf
   14f14: 8b20c339     	add	x25, x25, w0, sxtw
   14f18: 79407ae3     	ldrh	w3, [x23, #0x3c]
   14f1c: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014f1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19e8f
   14f20: 91000042     	add	x2, x2, #0x0
		0000000000014f20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19e8f
   14f24: cb190301     	sub	x1, x24, x25
   14f28: 8b1902c0     	add	x0, x22, x25
   14f2c: 94000000     	bl	0x14f2c <tp_edge_report_limit_read+0x300>
		0000000000014f2c:  R_AARCH64_CALL26	snprintf
   14f30: 8b20c339     	add	x25, x25, w0, sxtw
   14f34: 3940e2e3     	ldrb	w3, [x23, #0x38]
   14f38: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014f38:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17fda
   14f3c: 91000042     	add	x2, x2, #0x0
		0000000000014f3c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17fda
   14f40: cb190301     	sub	x1, x24, x25
   14f44: 8b1902c0     	add	x0, x22, x25
   14f48: 94000000     	bl	0x14f48 <tp_edge_report_limit_read+0x31c>
		0000000000014f48:  R_AARCH64_CALL26	snprintf
   14f4c: 8b20c339     	add	x25, x25, w0, sxtw
   14f50: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014f50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18cf2
   14f54: 91000042     	add	x2, x2, #0x0
		0000000000014f54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18cf2
   14f58: cb190301     	sub	x1, x24, x25
   14f5c: 8b1902c0     	add	x0, x22, x25
   14f60: 94000000     	bl	0x14f60 <tp_edge_report_limit_read+0x334>
		0000000000014f60:  R_AARCH64_CALL26	snprintf
   14f64: 8b20c338     	add	x24, x25, w0, sxtw
   14f68: f13feb1f     	cmp	x24, #0xffa
   14f6c: 540004e8     	b.hi	0x15008 <tp_edge_report_limit_read+0x3dc>
   14f70: 52820008     	mov	w8, #0x1000             // =4096
   14f74: 39409ee3     	ldrb	w3, [x23, #0x27]
   14f78: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014f78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14f7c: 91000042     	add	x2, x2, #0x0
		0000000000014f7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14f80: cb180101     	sub	x1, x8, x24
   14f84: 8b1802c0     	add	x0, x22, x24
   14f88: 94000000     	bl	0x14f88 <tp_edge_report_limit_read+0x35c>
		0000000000014f88:  R_AARCH64_CALL26	snprintf
   14f8c: 8b20c318     	add	x24, x24, w0, sxtw
   14f90: f13feb1f     	cmp	x24, #0xffa
   14f94: 540003a8     	b.hi	0x15008 <tp_edge_report_limit_read+0x3dc>
   14f98: 52820008     	mov	w8, #0x1000             // =4096
   14f9c: 3940a2e3     	ldrb	w3, [x23, #0x28]
   14fa0: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14fa4: 91000042     	add	x2, x2, #0x0
		0000000000014fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14fa8: cb180101     	sub	x1, x8, x24
   14fac: 8b1802c0     	add	x0, x22, x24
   14fb0: 94000000     	bl	0x14fb0 <tp_edge_report_limit_read+0x384>
		0000000000014fb0:  R_AARCH64_CALL26	snprintf
   14fb4: 8b20c318     	add	x24, x24, w0, sxtw
   14fb8: f13feb1f     	cmp	x24, #0xffa
   14fbc: 54000268     	b.hi	0x15008 <tp_edge_report_limit_read+0x3dc>
   14fc0: 52820008     	mov	w8, #0x1000             // =4096
   14fc4: 3940a6e3     	ldrb	w3, [x23, #0x29]
   14fc8: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014fc8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14fcc: 91000042     	add	x2, x2, #0x0
		0000000000014fcc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14fd0: cb180101     	sub	x1, x8, x24
   14fd4: 8b1802c0     	add	x0, x22, x24
   14fd8: 94000000     	bl	0x14fd8 <tp_edge_report_limit_read+0x3ac>
		0000000000014fd8:  R_AARCH64_CALL26	snprintf
   14fdc: 8b20c318     	add	x24, x24, w0, sxtw
   14fe0: f13feb1f     	cmp	x24, #0xffa
   14fe4: 54000128     	b.hi	0x15008 <tp_edge_report_limit_read+0x3dc>
   14fe8: 52820008     	mov	w8, #0x1000             // =4096
   14fec: 3940aae3     	ldrb	w3, [x23, #0x2a]
   14ff0: 90000002     	adrp	x2, 0x14000 <syna_tcm_reset+0xdc>
		0000000000014ff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   14ff4: 91000042     	add	x2, x2, #0x0
		0000000000014ff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   14ff8: cb180101     	sub	x1, x8, x24
   14ffc: 8b1802c0     	add	x0, x22, x24
   15000: 94000000     	bl	0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015000:  R_AARCH64_CALL26	snprintf
   15004: 8b20c318     	add	x24, x24, w0, sxtw
   15008: 52820008     	mov	w8, #0x1000             // =4096
   1500c: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		000000000001500c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b242
   15010: 91000042     	add	x2, x2, #0x0
		0000000000015010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b242
   15014: cb180101     	sub	x1, x8, x24
   15018: 8b1802c0     	add	x0, x22, x24
   1501c: 94000000     	bl	0x1501c <tp_edge_report_limit_read+0x3f0>
		000000000001501c:  R_AARCH64_CALL26	snprintf
   15020: 8b20c318     	add	x24, x24, w0, sxtw
   15024: f13feb1f     	cmp	x24, #0xffa
   15028: 540004e8     	b.hi	0x150c4 <tp_edge_report_limit_read+0x498>
   1502c: 52820008     	mov	w8, #0x1000             // =4096
   15030: 3940d2e3     	ldrb	w3, [x23, #0x34]
   15034: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015034:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   15038: 91000042     	add	x2, x2, #0x0
		0000000000015038:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   1503c: cb180101     	sub	x1, x8, x24
   15040: 8b1802c0     	add	x0, x22, x24
   15044: 94000000     	bl	0x15044 <tp_edge_report_limit_read+0x418>
		0000000000015044:  R_AARCH64_CALL26	snprintf
   15048: 8b20c318     	add	x24, x24, w0, sxtw
   1504c: f13feb1f     	cmp	x24, #0xffa
   15050: 540003a8     	b.hi	0x150c4 <tp_edge_report_limit_read+0x498>
   15054: 52820008     	mov	w8, #0x1000             // =4096
   15058: 3940d6e3     	ldrb	w3, [x23, #0x35]
   1505c: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		000000000001505c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   15060: 91000042     	add	x2, x2, #0x0
		0000000000015060:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   15064: cb180101     	sub	x1, x8, x24
   15068: 8b1802c0     	add	x0, x22, x24
   1506c: 94000000     	bl	0x1506c <tp_edge_report_limit_read+0x440>
		000000000001506c:  R_AARCH64_CALL26	snprintf
   15070: 8b20c318     	add	x24, x24, w0, sxtw
   15074: f13feb1f     	cmp	x24, #0xffa
   15078: 54000268     	b.hi	0x150c4 <tp_edge_report_limit_read+0x498>
   1507c: 52820008     	mov	w8, #0x1000             // =4096
   15080: 3940dae3     	ldrb	w3, [x23, #0x36]
   15084: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015084:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   15088: 91000042     	add	x2, x2, #0x0
		0000000000015088:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   1508c: cb180101     	sub	x1, x8, x24
   15090: 8b1802c0     	add	x0, x22, x24
   15094: 94000000     	bl	0x15094 <tp_edge_report_limit_read+0x468>
		0000000000015094:  R_AARCH64_CALL26	snprintf
   15098: 8b20c318     	add	x24, x24, w0, sxtw
   1509c: f13feb1f     	cmp	x24, #0xffa
   150a0: 54000128     	b.hi	0x150c4 <tp_edge_report_limit_read+0x498>
   150a4: 52820008     	mov	w8, #0x1000             // =4096
   150a8: 3940dee3     	ldrb	w3, [x23, #0x37]
   150ac: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000150ac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18d05
   150b0: 91000042     	add	x2, x2, #0x0
		00000000000150b0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18d05
   150b4: cb180101     	sub	x1, x8, x24
   150b8: 8b1802c0     	add	x0, x22, x24
   150bc: 94000000     	bl	0x150bc <tp_edge_report_limit_read+0x490>
		00000000000150bc:  R_AARCH64_CALL26	snprintf
   150c0: 8b20c318     	add	x24, x24, w0, sxtw
   150c4: 52820008     	mov	w8, #0x1000             // =4096
   150c8: 90000002     	adrp	x2, 0x15000 <tp_edge_report_limit_read+0x3d4>
		00000000000150c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
   150cc: 91000042     	add	x2, x2, #0x0
		00000000000150cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
   150d0: cb180101     	sub	x1, x8, x24
   150d4: 8b1802c0     	add	x0, x22, x24
   150d8: 94000000     	bl	0x150d8 <tp_edge_report_limit_read+0x4ac>
		00000000000150d8:  R_AARCH64_CALL26	snprintf
   150dc: 8b20c317     	add	x23, x24, w0, sxtw
   150e0: aa1503e0     	mov	x0, x21
   150e4: aa1403e1     	mov	x1, x20
   150e8: aa1303e2     	mov	x2, x19
   150ec: aa1603e3     	mov	x3, x22
   150f0: aa1703e4     	mov	x4, x23
   150f4: 94000000     	bl	0x150f4 <tp_edge_report_limit_read+0x4c8>
		00000000000150f4:  R_AARCH64_CALL26	simple_read_from_buffer
   150f8: aa1603e0     	mov	x0, x22
   150fc: 94000000     	bl	0x150fc <tp_edge_report_limit_read+0x4d0>
		00000000000150fc:  R_AARCH64_CALL26	kfree
   15100: aa1703e0     	mov	x0, x23
   15104: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   15108: f9400bf9     	ldr	x25, [sp, #0x10]
   1510c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   15110: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   15114: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   15118: d50323bf     	autiasp
   1511c: d65f03c0     	ret
   15120: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015120:  R_AARCH64_ADR_PREL_PG_HI21	tp_edge_report_limit_read._alloc_tag
   15124: 91000108     	add	x8, x8, #0x0
		0000000000015124:  R_AARCH64_ADD_ABS_LO12_NC	tp_edge_report_limit_read._alloc_tag
   15128: d5384118     	mrs	x24, SP_EL0
   1512c: f9402b19     	ldr	x25, [x24, #0x50]
   15130: f9002b08     	str	x8, [x24, #0x50]
   15134: 90000008     	adrp	x8, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015134:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   15138: f9400100     	ldr	x0, [x8]
		0000000000015138:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1513c: 5281b801     	mov	w1, #0xdc0              // =3520
   15140: 52820002     	mov	w2, #0x1000             // =4096
   15144: 94000000     	bl	0x15144 <tp_edge_report_limit_read+0x518>
		0000000000015144:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   15148: aa0003f6     	mov	x22, x0
   1514c: f9002b19     	str	x25, [x24, #0x50]
   15150: b5ffd9f6     	cbnz	x22, 0x14c8c <tp_edge_report_limit_read+0x60>
   15154: 90000000     	adrp	x0, 0x15000 <tp_edge_report_limit_read+0x3d4>
		0000000000015154:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x181d4
   15158: 91000000     	add	x0, x0, #0x0
		0000000000015158:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x181d4
   1515c: 94000000     	bl	0x1515c <tp_edge_report_limit_read+0x530>
		000000000001515c:  R_AARCH64_CALL26	_printk
   15160: 92800160     	mov	x0, #-0xc               // =-12
   15164: 17ffffe8     	b	0x15104 <tp_edge_report_limit_read+0x4d8>
