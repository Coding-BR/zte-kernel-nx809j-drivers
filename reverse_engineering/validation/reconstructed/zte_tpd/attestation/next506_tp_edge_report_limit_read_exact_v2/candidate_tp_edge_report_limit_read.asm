
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000207bc <tp_edge_report_limit_read>:
   207bc: d503233f     	paciasp
   207c0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   207c4: f9000bf9     	str	x25, [sp, #0x10]
   207c8: a9025ff8     	stp	x24, x23, [sp, #0x20]
   207cc: a90357f6     	stp	x22, x21, [sp, #0x30]
   207d0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   207d4: 910003fd     	mov	x29, sp
   207d8: f9400068     	ldr	x8, [x3]
   207dc: b4000068     	cbz	x8, 0x207e8 <tp_edge_report_limit_read+0x2c>
   207e0: aa1f03e0     	mov	x0, xzr
   207e4: 1400012c     	b	0x20c94 <tp_edge_report_limit_read+0x4d8>
   207e8: 90000008     	adrp	x8, 0x20000 <zte_touch_probe+0xbcc>
		00000000000207e8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   207ec: aa0103f5     	mov	x21, x1
   207f0: aa0203f4     	mov	x20, x2
   207f4: f9400117     	ldr	x23, [x8]
		00000000000207f4:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   207f8: aa0303f3     	mov	x19, x3
   207fc: d503201f     	nop
   20800: 90000008     	adrp	x8, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020800:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   20804: 5281b801     	mov	w1, #0xdc0              // =3520
   20808: 52820002     	mov	w2, #0x1000             // =4096
   2080c: f9400100     	ldr	x0, [x8]
		000000000002080c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   20810: 94000000     	bl	0x20810 <tp_edge_report_limit_read+0x54>
		0000000000020810:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   20814: aa0003f6     	mov	x22, x0
   20818: b4002676     	cbz	x22, 0x20ce4 <tp_edge_report_limit_read+0x528>
   2081c: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xbcc>
		000000000002081c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd63c
   20820: 91000021     	add	x1, x1, #0x0
		0000000000020820:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd63c
   20824: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020824:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd66d
   20828: 91000042     	add	x2, x2, #0x0
		0000000000020828:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd66d
   2082c: a9411423     	ldp	x3, x5, [x1, #0x10]
   20830: 90000004     	adrp	x4, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020830:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1184e
   20834: 91000084     	add	x4, x4, #0x0
		0000000000020834:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1184e
   20838: 9000000c     	adrp	x12, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020838:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10de2
   2083c: 9100018c     	add	x12, x12, #0x0
		000000000002083c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10de2
   20840: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020840:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1067f
   20844: 91000000     	add	x0, x0, #0x0
		0000000000020844:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1067f
   20848: a90616c3     	stp	x3, x5, [x22, #0x60]
   2084c: a9420c26     	ldp	x6, x3, [x1, #0x20]
   20850: a9400425     	ldp	x5, x1, [x1]
   20854: f9400010     	ldr	x16, [x0]
   20858: a941a18a     	ldp	x10, x8, [x12, #0x18]
   2085c: 5280014e     	mov	w14, #0xa               // =10
   20860: a9070ec6     	stp	x6, x3, [x22, #0x70]
   20864: a940a58b     	ldp	x11, x9, [x12, #0x8]
   20868: a90506c5     	stp	x5, x1, [x22, #0x50]
   2086c: a9428c41     	ldp	x1, x3, [x2, #0x28]
   20870: a940bc0d     	ldp	x13, x15, [x0, #0x8]
   20874: f940018c     	ldr	x12, [x12]
   20878: a9418011     	ldp	x17, x0, [x0, #0x18]
   2087c: a901a2ca     	stp	x10, x8, [x22, #0x18]
   20880: a90a8ec1     	stp	x1, x3, [x22, #0xa8]
   20884: a9400445     	ldp	x5, x1, [x2]
   20888: a9419843     	ldp	x3, x6, [x2, #0x18]
   2088c: 5281b198     	mov	w24, #0xd8c             // =3468
   20890: a900a6cb     	stp	x11, x9, [x22, #0x8]
   20894: a90806c5     	stp	x5, x1, [x22, #0x80]
   20898: f9400841     	ldr	x1, [x2, #0x10]
   2089c: a9099ac3     	stp	x3, x6, [x22, #0x98]
   208a0: f9004ac1     	str	x1, [x22, #0x90]
   208a4: a9408881     	ldp	x1, x2, [x4, #0x8]
   208a8: f90002cc     	str	x12, [x22]
   208ac: 39013ece     	strb	w14, [x22, #0x4f]
   208b0: f80c72c2     	stur	x2, [x22, #0xc7]
   208b4: f9400082     	ldr	x2, [x4]
   208b8: f80bf2c1     	stur	x1, [x22, #0xbf]
   208bc: f80b72c2     	stur	x2, [x22, #0xb7]
   208c0: a9428482     	ldp	x2, x1, [x4, #0x28]
   208c4: f802f2cd     	stur	x13, [x22, #0x2f]
   208c8: f80372cf     	stur	x15, [x22, #0x37]
   208cc: f80e72c1     	stur	x1, [x22, #0xe7]
   208d0: a9418483     	ldp	x3, x1, [x4, #0x18]
   208d4: 90000004     	adrp	x4, 0x20000 <zte_touch_probe+0xbcc>
		00000000000208d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe1fc
   208d8: 91000084     	add	x4, x4, #0x0
		00000000000208d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe1fc
   208dc: f80df2c2     	stur	x2, [x22, #0xdf]
   208e0: f803f2d1     	stur	x17, [x22, #0x3f]
   208e4: f80d72c1     	stur	x1, [x22, #0xd7]
   208e8: a9408482     	ldp	x2, x1, [x4, #0x8]
   208ec: f80cf2c3     	stur	x3, [x22, #0xcf]
   208f0: f9400083     	ldr	x3, [x4]
   208f4: f80472c0     	stur	x0, [x22, #0x47]
   208f8: f80ff2c1     	stur	x1, [x22, #0xff]
   208fc: aa1603e1     	mov	x1, x22
   20900: f80f72c2     	stur	x2, [x22, #0xf7]
   20904: f842d082     	ldur	x2, [x4, #0x2d]
   20908: f80efc23     	str	x3, [x1, #0xef]!
   2090c: f9401483     	ldr	x3, [x4, #0x28]
   20910: a9419085     	ldp	x5, x4, [x4, #0x18]
   20914: f802d022     	stur	x2, [x1, #0x2d]
   20918: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020918:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xccc3
   2091c: 91000042     	add	x2, x2, #0x0
		000000000002091c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xccc3
   20920: f80272d0     	stur	x16, [x22, #0x27]
   20924: 39088ece     	strb	w14, [x22, #0x223]
   20928: a9020c24     	stp	x4, x3, [x1, #0x20]
   2092c: a9400c44     	ldp	x4, x3, [x2]
   20930: f9000c25     	str	x5, [x1, #0x18]
   20934: 528d2da1     	mov	w1, #0x696d             // =26989
   20938: 910492c5     	add	x5, x22, #0x124
   2093c: 72a14e81     	movk	w1, #0xa74, lsl #16
   20940: b9015ec1     	str	w1, [x22, #0x15c]
   20944: a9000ca4     	stp	x4, x3, [x5]
   20948: a9428443     	ldp	x3, x1, [x2, #0x28]
   2094c: f9400844     	ldr	x4, [x2, #0x10]
   20950: a90284a3     	stp	x3, x1, [x5, #0x28]
   20954: a9418442     	ldp	x2, x1, [x2, #0x18]
   20958: 90000003     	adrp	x3, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020958:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11887
   2095c: 91000063     	add	x3, x3, #0x0
		000000000002095c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11887
   20960: f90008a4     	str	x4, [x5, #0x10]
   20964: a90184a2     	stp	x2, x1, [x5, #0x18]
   20968: a9410464     	ldp	x4, x1, [x3, #0x10]
   2096c: a91706c4     	stp	x4, x1, [x22, #0x170]
   20970: a9400861     	ldp	x1, x2, [x3]
   20974: a9160ac1     	stp	x1, x2, [x22, #0x160]
   20978: a9431062     	ldp	x2, x4, [x3, #0x30]
   2097c: a9420463     	ldp	x3, x1, [x3, #0x20]
   20980: a91912c2     	stp	x2, x4, [x22, #0x190]
   20984: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020984:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xef69
   20988: 91000042     	add	x2, x2, #0x0
		0000000000020988:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xef69
   2098c: a91806c3     	stp	x3, x1, [x22, #0x180]
   20990: a9400c44     	ldp	x4, x3, [x2]
   20994: 528e8d21     	mov	w1, #0x7469             // =29801
   20998: 72a00141     	movk	w1, #0xa, lsl #16
   2099c: b901dac1     	str	w1, [x22, #0x1d8]
   209a0: a91a0ec4     	stp	x4, x3, [x22, #0x1a0]
   209a4: a9428443     	ldp	x3, x1, [x2, #0x28]
   209a8: a91c86c3     	stp	x3, x1, [x22, #0x1c8]
   209ac: f9400841     	ldr	x1, [x2, #0x10]
   209b0: a9419042     	ldp	x2, x4, [x2, #0x18]
   209b4: f900dac1     	str	x1, [x22, #0x1b0]
   209b8: 90000001     	adrp	x1, 0x20000 <zte_touch_probe+0xbcc>
		00000000000209b8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x106a9
   209bc: 91000021     	add	x1, x1, #0x0
		00000000000209bc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x106a9
   209c0: a91b92c2     	stp	x2, x4, [x22, #0x1b8]
   209c4: a9410823     	ldp	x3, x2, [x1, #0x10]
   209c8: 91076ec4     	add	x4, x22, #0x1db
   209cc: a9010883     	stp	x3, x2, [x4, #0x10]
   209d0: a9401422     	ldp	x2, x5, [x1]
   209d4: a9001482     	stp	x2, x5, [x4]
   209d8: a9438c22     	ldp	x2, x3, [x1, #0x38]
   209dc: a9038c82     	stp	x2, x3, [x4, #0x38]
   209e0: f9401022     	ldr	x2, [x1, #0x20]
   209e4: a9429421     	ldp	x1, x5, [x1, #0x28]
   209e8: f9001082     	str	x2, [x4, #0x20]
   209ec: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		00000000000209ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xefa5
   209f0: 91000042     	add	x2, x2, #0x0
		00000000000209f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xefa5
   209f4: a9029481     	stp	x1, x5, [x4, #0x28]
   209f8: 910892c1     	add	x1, x22, #0x224
   209fc: a901a02a     	stp	x10, x8, [x1, #0x18]
   20a00: 91092ec8     	add	x8, x22, #0x24b
   20a04: a900a42b     	stp	x11, x9, [x1, #0x8]
   20a08: f900002c     	str	x12, [x1]
   20a0c: 5281b181     	mov	w1, #0xd8c              // =3468
   20a10: 7900510e     	strh	w14, [x8, #0x28]
   20a14: a901450f     	stp	x15, x17, [x8, #0x10]
   20a18: f9001100     	str	x0, [x8, #0x20]
   20a1c: 9109d2c0     	add	x0, x22, #0x274
   20a20: a9003510     	stp	x16, x13, [x8]
   20a24: 39406ee3     	ldrb	w3, [x23, #0x1b]
   20a28: 94000000     	bl	0x20a28 <tp_edge_report_limit_read+0x26c>
		0000000000020a28:  R_AARCH64_CALL26	snprintf
   20a2c: 93407c08     	sxtw	x8, w0
   20a30: 394092e3     	ldrb	w3, [x23, #0x24]
   20a34: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020a34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10284
   20a38: 91000042     	add	x2, x2, #0x0
		0000000000020a38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10284
   20a3c: 9109d119     	add	x25, x8, #0x274
   20a40: cb080301     	sub	x1, x24, x8
   20a44: 8b1902c0     	add	x0, x22, x25
   20a48: 94000000     	bl	0x20a48 <tp_edge_report_limit_read+0x28c>
		0000000000020a48:  R_AARCH64_CALL26	snprintf
   20a4c: 8b20c339     	add	x25, x25, w0, sxtw
   20a50: 52820018     	mov	w24, #0x1000            // =4096
   20a54: 79407ee3     	ldrh	w3, [x23, #0x3e]
   20a58: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020a58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb6b3
   20a5c: 91000042     	add	x2, x2, #0x0
		0000000000020a5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb6b3
   20a60: cb190301     	sub	x1, x24, x25
   20a64: 8b1902c0     	add	x0, x22, x25
   20a68: 94000000     	bl	0x20a68 <tp_edge_report_limit_read+0x2ac>
		0000000000020a68:  R_AARCH64_CALL26	snprintf
   20a6c: 8b20c339     	add	x25, x25, w0, sxtw
   20a70: 39409ae3     	ldrb	w3, [x23, #0x26]
   20a74: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020a74:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xebf6
   20a78: 91000042     	add	x2, x2, #0x0
		0000000000020a78:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xebf6
   20a7c: cb190301     	sub	x1, x24, x25
   20a80: 8b1902c0     	add	x0, x22, x25
   20a84: 94000000     	bl	0x20a84 <tp_edge_report_limit_read+0x2c8>
		0000000000020a84:  R_AARCH64_CALL26	snprintf
   20a88: 8b20c339     	add	x25, x25, w0, sxtw
   20a8c: 394096e3     	ldrb	w3, [x23, #0x25]
   20a90: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x11580
   20a94: 91000042     	add	x2, x2, #0x0
		0000000000020a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x11580
   20a98: cb190301     	sub	x1, x24, x25
   20a9c: 8b1902c0     	add	x0, x22, x25
   20aa0: 94000000     	bl	0x20aa0 <tp_edge_report_limit_read+0x2e4>
		0000000000020aa0:  R_AARCH64_CALL26	snprintf
   20aa4: 8b20c339     	add	x25, x25, w0, sxtw
   20aa8: 79407ae3     	ldrh	w3, [x23, #0x3c]
   20aac: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020aac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xe662
   20ab0: 91000042     	add	x2, x2, #0x0
		0000000000020ab0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xe662
   20ab4: cb190301     	sub	x1, x24, x25
   20ab8: 8b1902c0     	add	x0, x22, x25
   20abc: 94000000     	bl	0x20abc <tp_edge_report_limit_read+0x300>
		0000000000020abc:  R_AARCH64_CALL26	snprintf
   20ac0: 8b20c339     	add	x25, x25, w0, sxtw
   20ac4: 3940e2e3     	ldrb	w3, [x23, #0x38]
   20ac8: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020ac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd8c
   20acc: 91000042     	add	x2, x2, #0x0
		0000000000020acc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd8c
   20ad0: cb190301     	sub	x1, x24, x25
   20ad4: 8b1902c0     	add	x0, x22, x25
   20ad8: 94000000     	bl	0x20ad8 <tp_edge_report_limit_read+0x31c>
		0000000000020ad8:  R_AARCH64_CALL26	snprintf
   20adc: 8b20c339     	add	x25, x25, w0, sxtw
   20ae0: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd05d
   20ae4: 91000042     	add	x2, x2, #0x0
		0000000000020ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd05d
   20ae8: cb190301     	sub	x1, x24, x25
   20aec: 8b1902c0     	add	x0, x22, x25
   20af0: 94000000     	bl	0x20af0 <tp_edge_report_limit_read+0x334>
		0000000000020af0:  R_AARCH64_CALL26	snprintf
   20af4: 8b20c338     	add	x24, x25, w0, sxtw
   20af8: f13feb1f     	cmp	x24, #0xffa
   20afc: 540004e8     	b.hi	0x20b98 <tp_edge_report_limit_read+0x3dc>
   20b00: 52820008     	mov	w8, #0x1000             // =4096
   20b04: 39409ee3     	ldrb	w3, [x23, #0x27]
   20b08: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20b0c: 91000042     	add	x2, x2, #0x0
		0000000000020b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20b10: cb180101     	sub	x1, x8, x24
   20b14: 8b1802c0     	add	x0, x22, x24
   20b18: 94000000     	bl	0x20b18 <tp_edge_report_limit_read+0x35c>
		0000000000020b18:  R_AARCH64_CALL26	snprintf
   20b1c: 8b20c318     	add	x24, x24, w0, sxtw
   20b20: f13feb1f     	cmp	x24, #0xffa
   20b24: 540003a8     	b.hi	0x20b98 <tp_edge_report_limit_read+0x3dc>
   20b28: 52820008     	mov	w8, #0x1000             // =4096
   20b2c: 3940a2e3     	ldrb	w3, [x23, #0x28]
   20b30: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020b30:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20b34: 91000042     	add	x2, x2, #0x0
		0000000000020b34:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20b38: cb180101     	sub	x1, x8, x24
   20b3c: 8b1802c0     	add	x0, x22, x24
   20b40: 94000000     	bl	0x20b40 <tp_edge_report_limit_read+0x384>
		0000000000020b40:  R_AARCH64_CALL26	snprintf
   20b44: 8b20c318     	add	x24, x24, w0, sxtw
   20b48: f13feb1f     	cmp	x24, #0xffa
   20b4c: 54000268     	b.hi	0x20b98 <tp_edge_report_limit_read+0x3dc>
   20b50: 52820008     	mov	w8, #0x1000             // =4096
   20b54: 3940a6e3     	ldrb	w3, [x23, #0x29]
   20b58: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020b58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20b5c: 91000042     	add	x2, x2, #0x0
		0000000000020b5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20b60: cb180101     	sub	x1, x8, x24
   20b64: 8b1802c0     	add	x0, x22, x24
   20b68: 94000000     	bl	0x20b68 <tp_edge_report_limit_read+0x3ac>
		0000000000020b68:  R_AARCH64_CALL26	snprintf
   20b6c: 8b20c318     	add	x24, x24, w0, sxtw
   20b70: f13feb1f     	cmp	x24, #0xffa
   20b74: 54000128     	b.hi	0x20b98 <tp_edge_report_limit_read+0x3dc>
   20b78: 52820008     	mov	w8, #0x1000             // =4096
   20b7c: 3940aae3     	ldrb	w3, [x23, #0x2a]
   20b80: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20b84: 91000042     	add	x2, x2, #0x0
		0000000000020b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20b88: cb180101     	sub	x1, x8, x24
   20b8c: 8b1802c0     	add	x0, x22, x24
   20b90: 94000000     	bl	0x20b90 <tp_edge_report_limit_read+0x3d4>
		0000000000020b90:  R_AARCH64_CALL26	snprintf
   20b94: 8b20c318     	add	x24, x24, w0, sxtw
   20b98: 52820008     	mov	w8, #0x1000             // =4096
   20b9c: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfc65
   20ba0: 91000042     	add	x2, x2, #0x0
		0000000000020ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfc65
   20ba4: cb180101     	sub	x1, x8, x24
   20ba8: 8b1802c0     	add	x0, x22, x24
   20bac: 94000000     	bl	0x20bac <tp_edge_report_limit_read+0x3f0>
		0000000000020bac:  R_AARCH64_CALL26	snprintf
   20bb0: 8b20c318     	add	x24, x24, w0, sxtw
   20bb4: f13feb1f     	cmp	x24, #0xffa
   20bb8: 540004e8     	b.hi	0x20c54 <tp_edge_report_limit_read+0x498>
   20bbc: 52820008     	mov	w8, #0x1000             // =4096
   20bc0: 3940d2e3     	ldrb	w3, [x23, #0x34]
   20bc4: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020bc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20bc8: 91000042     	add	x2, x2, #0x0
		0000000000020bc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20bcc: cb180101     	sub	x1, x8, x24
   20bd0: 8b1802c0     	add	x0, x22, x24
   20bd4: 94000000     	bl	0x20bd4 <tp_edge_report_limit_read+0x418>
		0000000000020bd4:  R_AARCH64_CALL26	snprintf
   20bd8: 8b20c318     	add	x24, x24, w0, sxtw
   20bdc: f13feb1f     	cmp	x24, #0xffa
   20be0: 540003a8     	b.hi	0x20c54 <tp_edge_report_limit_read+0x498>
   20be4: 52820008     	mov	w8, #0x1000             // =4096
   20be8: 3940d6e3     	ldrb	w3, [x23, #0x35]
   20bec: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20bf0: 91000042     	add	x2, x2, #0x0
		0000000000020bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20bf4: cb180101     	sub	x1, x8, x24
   20bf8: 8b1802c0     	add	x0, x22, x24
   20bfc: 94000000     	bl	0x20bfc <tp_edge_report_limit_read+0x440>
		0000000000020bfc:  R_AARCH64_CALL26	snprintf
   20c00: 8b20c318     	add	x24, x24, w0, sxtw
   20c04: f13feb1f     	cmp	x24, #0xffa
   20c08: 54000268     	b.hi	0x20c54 <tp_edge_report_limit_read+0x498>
   20c0c: 52820008     	mov	w8, #0x1000             // =4096
   20c10: 3940dae3     	ldrb	w3, [x23, #0x36]
   20c14: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20c18: 91000042     	add	x2, x2, #0x0
		0000000000020c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20c1c: cb180101     	sub	x1, x8, x24
   20c20: 8b1802c0     	add	x0, x22, x24
   20c24: 94000000     	bl	0x20c24 <tp_edge_report_limit_read+0x468>
		0000000000020c24:  R_AARCH64_CALL26	snprintf
   20c28: 8b20c318     	add	x24, x24, w0, sxtw
   20c2c: f13feb1f     	cmp	x24, #0xffa
   20c30: 54000128     	b.hi	0x20c54 <tp_edge_report_limit_read+0x498>
   20c34: 52820008     	mov	w8, #0x1000             // =4096
   20c38: 3940dee3     	ldrb	w3, [x23, #0x37]
   20c3c: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xd070
   20c40: 91000042     	add	x2, x2, #0x0
		0000000000020c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xd070
   20c44: cb180101     	sub	x1, x8, x24
   20c48: 8b1802c0     	add	x0, x22, x24
   20c4c: 94000000     	bl	0x20c4c <tp_edge_report_limit_read+0x490>
		0000000000020c4c:  R_AARCH64_CALL26	snprintf
   20c50: 8b20c318     	add	x24, x24, w0, sxtw
   20c54: 52820008     	mov	w8, #0x1000             // =4096
   20c58: 90000002     	adrp	x2, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020c58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf070
   20c5c: 91000042     	add	x2, x2, #0x0
		0000000000020c5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf070
   20c60: cb180101     	sub	x1, x8, x24
   20c64: 8b1802c0     	add	x0, x22, x24
   20c68: 94000000     	bl	0x20c68 <tp_edge_report_limit_read+0x4ac>
		0000000000020c68:  R_AARCH64_CALL26	snprintf
   20c6c: 8b20c317     	add	x23, x24, w0, sxtw
   20c70: aa1503e0     	mov	x0, x21
   20c74: aa1403e1     	mov	x1, x20
   20c78: aa1303e2     	mov	x2, x19
   20c7c: aa1603e3     	mov	x3, x22
   20c80: aa1703e4     	mov	x4, x23
   20c84: 94000000     	bl	0x20c84 <tp_edge_report_limit_read+0x4c8>
		0000000000020c84:  R_AARCH64_CALL26	simple_read_from_buffer
   20c88: aa1603e0     	mov	x0, x22
   20c8c: 94000000     	bl	0x20c8c <tp_edge_report_limit_read+0x4d0>
		0000000000020c8c:  R_AARCH64_CALL26	kfree
   20c90: aa1703e0     	mov	x0, x23
   20c94: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   20c98: f9400bf9     	ldr	x25, [sp, #0x10]
   20c9c: a94357f6     	ldp	x22, x21, [sp, #0x30]
   20ca0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   20ca4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   20ca8: d50323bf     	autiasp
   20cac: d65f03c0     	ret
   20cb0: 90000008     	adrp	x8, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020cb0:  R_AARCH64_ADR_PREL_PG_HI21	tp_edge_report_limit_read._alloc_tag
   20cb4: 91000108     	add	x8, x8, #0x0
		0000000000020cb4:  R_AARCH64_ADD_ABS_LO12_NC	tp_edge_report_limit_read._alloc_tag
   20cb8: d5384118     	mrs	x24, SP_EL0
   20cbc: f9402b19     	ldr	x25, [x24, #0x50]
   20cc0: f9002b08     	str	x8, [x24, #0x50]
   20cc4: 90000008     	adrp	x8, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020cc4:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   20cc8: f9400100     	ldr	x0, [x8]
		0000000000020cc8:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   20ccc: 5281b801     	mov	w1, #0xdc0              // =3520
   20cd0: 52820002     	mov	w2, #0x1000             // =4096
   20cd4: 94000000     	bl	0x20cd4 <tp_edge_report_limit_read+0x518>
		0000000000020cd4:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   20cd8: aa0003f6     	mov	x22, x0
   20cdc: f9002b19     	str	x25, [x24, #0x50]
   20ce0: b5ffd9f6     	cbnz	x22, 0x2081c <tp_edge_report_limit_read+0x60>
   20ce4: 90000000     	adrp	x0, 0x20000 <zte_touch_probe+0xbcc>
		0000000000020ce4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc006
   20ce8: 91000000     	add	x0, x0, #0x0
		0000000000020ce8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc006
   20cec: 94000000     	bl	0x20cec <tp_edge_report_limit_read+0x530>
		0000000000020cec:  R_AARCH64_CALL26	_printk
   20cf0: 92800160     	mov	x0, #-0xc               // =-12
   20cf4: 17ffffe8     	b	0x20c94 <tp_edge_report_limit_read+0x4d8>
