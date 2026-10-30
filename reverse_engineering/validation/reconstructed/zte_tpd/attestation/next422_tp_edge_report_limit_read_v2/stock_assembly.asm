
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000048c8 <tp_edge_report_limit_read>:
    48c8: d503233f     	paciasp
    48cc: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    48d0: f9000bf9     	str	x25, [sp, #0x10]
    48d4: a9025ff8     	stp	x24, x23, [sp, #0x20]
    48d8: a90357f6     	stp	x22, x21, [sp, #0x30]
    48dc: a9044ff4     	stp	x20, x19, [sp, #0x40]
    48e0: 910003fd     	mov	x29, sp
    48e4: f9400068     	ldr	x8, [x3]
    48e8: b4000068     	cbz	x8, 0x48f4 <tp_edge_report_limit_read+0x2c>
    48ec: aa1f03e0     	mov	x0, xzr
    48f0: 1400012c     	b	0x4da0 <tp_edge_report_limit_read+0x4d8>
    48f4: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		00000000000048f4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    48f8: aa0103f5     	mov	x21, x1
    48fc: aa0203f4     	mov	x20, x2
    4900: f9400117     	ldr	x23, [x8]
		0000000000004900:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    4904: aa0303f3     	mov	x19, x3
    4908: d503201f     	nop
    490c: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		000000000000490c:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    4910: 5281b801     	mov	w1, #0xdc0              // =3520
    4914: 52820002     	mov	w2, #0x1000             // =4096
    4918: f9400100     	ldr	x0, [x8]
		0000000000004918:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    491c: 94000000     	bl	0x491c <tp_edge_report_limit_read+0x54>
		000000000000491c:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    4920: aa0003f6     	mov	x22, x0
    4924: b4002676     	cbz	x22, 0x4df0 <tp_edge_report_limit_read+0x528>
    4928: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		0000000000004928:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x444c
    492c: 91000021     	add	x1, x1, #0x0
		000000000000492c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x444c
    4930: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004930:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x447d
    4934: 91000042     	add	x2, x2, #0x0
		0000000000004934:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x447d
    4938: a9411423     	ldp	x3, x5, [x1, #0x10]
    493c: 90000004     	adrp	x4, 0x4000 <display_rotation_show+0xc>
		000000000000493c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbebc
    4940: 91000084     	add	x4, x4, #0x0
		0000000000004940:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbebc
    4944: 9000000c     	adrp	x12, 0x4000 <display_rotation_show+0xc>
		0000000000004944:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xabbd
    4948: 9100018c     	add	x12, x12, #0x0
		0000000000004948:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xabbd
    494c: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		000000000000494c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9db7
    4950: 91000000     	add	x0, x0, #0x0
		0000000000004950:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9db7
    4954: a90616c3     	stp	x3, x5, [x22, #0x60]
    4958: a9420c26     	ldp	x6, x3, [x1, #0x20]
    495c: a9400425     	ldp	x5, x1, [x1]
    4960: f9400010     	ldr	x16, [x0]
    4964: a941a18a     	ldp	x10, x8, [x12, #0x18]
    4968: 5280014e     	mov	w14, #0xa               // =10
    496c: a9070ec6     	stp	x6, x3, [x22, #0x70]
    4970: a940a58b     	ldp	x11, x9, [x12, #0x8]
    4974: a90506c5     	stp	x5, x1, [x22, #0x50]
    4978: a9428c41     	ldp	x1, x3, [x2, #0x28]
    497c: a940bc0d     	ldp	x13, x15, [x0, #0x8]
    4980: f940018c     	ldr	x12, [x12]
    4984: a9418011     	ldp	x17, x0, [x0, #0x18]
    4988: a901a2ca     	stp	x10, x8, [x22, #0x18]
    498c: a90a8ec1     	stp	x1, x3, [x22, #0xa8]
    4990: a9400445     	ldp	x5, x1, [x2]
    4994: a9419843     	ldp	x3, x6, [x2, #0x18]
    4998: 5281b198     	mov	w24, #0xd8c             // =3468
    499c: a900a6cb     	stp	x11, x9, [x22, #0x8]
    49a0: a90806c5     	stp	x5, x1, [x22, #0x80]
    49a4: f9400841     	ldr	x1, [x2, #0x10]
    49a8: a9099ac3     	stp	x3, x6, [x22, #0x98]
    49ac: f9004ac1     	str	x1, [x22, #0x90]
    49b0: a9408881     	ldp	x1, x2, [x4, #0x8]
    49b4: f90002cc     	str	x12, [x22]
    49b8: 39013ece     	strb	w14, [x22, #0x4f]
    49bc: f80c72c2     	stur	x2, [x22, #0xc7]
    49c0: f9400082     	ldr	x2, [x4]
    49c4: f80bf2c1     	stur	x1, [x22, #0xbf]
    49c8: f80b72c2     	stur	x2, [x22, #0xb7]
    49cc: a9428482     	ldp	x2, x1, [x4, #0x28]
    49d0: f802f2cd     	stur	x13, [x22, #0x2f]
    49d4: f80372cf     	stur	x15, [x22, #0x37]
    49d8: f80e72c1     	stur	x1, [x22, #0xe7]
    49dc: a9418483     	ldp	x3, x1, [x4, #0x18]
    49e0: 90000004     	adrp	x4, 0x4000 <display_rotation_show+0xc>
		00000000000049e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ac8
    49e4: 91000084     	add	x4, x4, #0x0
		00000000000049e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ac8
    49e8: f80df2c2     	stur	x2, [x22, #0xdf]
    49ec: f803f2d1     	stur	x17, [x22, #0x3f]
    49f0: f80d72c1     	stur	x1, [x22, #0xd7]
    49f4: a9408482     	ldp	x2, x1, [x4, #0x8]
    49f8: f80cf2c3     	stur	x3, [x22, #0xcf]
    49fc: f9400083     	ldr	x3, [x4]
    4a00: f80472c0     	stur	x0, [x22, #0x47]
    4a04: f80ff2c1     	stur	x1, [x22, #0xff]
    4a08: aa1603e1     	mov	x1, x22
    4a0c: f80f72c2     	stur	x2, [x22, #0xf7]
    4a10: f842d082     	ldur	x2, [x4, #0x2d]
    4a14: f80efc23     	str	x3, [x1, #0xef]!
    4a18: f9401483     	ldr	x3, [x4, #0x28]
    4a1c: a9419085     	ldp	x5, x4, [x4, #0x18]
    4a20: f802d022     	stur	x2, [x1, #0x2d]
    4a24: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004a24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x313e
    4a28: 91000042     	add	x2, x2, #0x0
		0000000000004a28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x313e
    4a2c: f80272d0     	stur	x16, [x22, #0x27]
    4a30: 39088ece     	strb	w14, [x22, #0x223]
    4a34: a9020c24     	stp	x4, x3, [x1, #0x20]
    4a38: a9400c44     	ldp	x4, x3, [x2]
    4a3c: f9000c25     	str	x5, [x1, #0x18]
    4a40: 528d2da1     	mov	w1, #0x696d             // =26989
    4a44: 910492c5     	add	x5, x22, #0x124
    4a48: 72a14e81     	movk	w1, #0xa74, lsl #16
    4a4c: b9015ec1     	str	w1, [x22, #0x15c]
    4a50: a9000ca4     	stp	x4, x3, [x5]
    4a54: a9428443     	ldp	x3, x1, [x2, #0x28]
    4a58: f9400844     	ldr	x4, [x2, #0x10]
    4a5c: a90284a3     	stp	x3, x1, [x5, #0x28]
    4a60: a9418442     	ldp	x2, x1, [x2, #0x18]
    4a64: 90000003     	adrp	x3, 0x4000 <display_rotation_show+0xc>
		0000000000004a64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbef5
    4a68: 91000063     	add	x3, x3, #0x0
		0000000000004a68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbef5
    4a6c: f90008a4     	str	x4, [x5, #0x10]
    4a70: a90184a2     	stp	x2, x1, [x5, #0x18]
    4a74: a9410464     	ldp	x4, x1, [x3, #0x10]
    4a78: a91706c4     	stp	x4, x1, [x22, #0x170]
    4a7c: a9400861     	ldp	x1, x2, [x3]
    4a80: a9160ac1     	stp	x1, x2, [x22, #0x160]
    4a84: a9431062     	ldp	x2, x4, [x3, #0x30]
    4a88: a9420463     	ldp	x3, x1, [x3, #0x20]
    4a8c: a91912c2     	stp	x2, x4, [x22, #0x190]
    4a90: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004a90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x743e
    4a94: 91000042     	add	x2, x2, #0x0
		0000000000004a94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x743e
    4a98: a91806c3     	stp	x3, x1, [x22, #0x180]
    4a9c: a9400c44     	ldp	x4, x3, [x2]
    4aa0: 528e8d21     	mov	w1, #0x7469             // =29801
    4aa4: 72a00141     	movk	w1, #0xa, lsl #16
    4aa8: b901dac1     	str	w1, [x22, #0x1d8]
    4aac: a91a0ec4     	stp	x4, x3, [x22, #0x1a0]
    4ab0: a9428443     	ldp	x3, x1, [x2, #0x28]
    4ab4: a91c86c3     	stp	x3, x1, [x22, #0x1c8]
    4ab8: f9400841     	ldr	x1, [x2, #0x10]
    4abc: a9419042     	ldp	x2, x4, [x2, #0x18]
    4ac0: f900dac1     	str	x1, [x22, #0x1b0]
    4ac4: 90000001     	adrp	x1, 0x4000 <display_rotation_show+0xc>
		0000000000004ac4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9de1
    4ac8: 91000021     	add	x1, x1, #0x0
		0000000000004ac8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9de1
    4acc: a91b92c2     	stp	x2, x4, [x22, #0x1b8]
    4ad0: a9410823     	ldp	x3, x2, [x1, #0x10]
    4ad4: 91076ec4     	add	x4, x22, #0x1db
    4ad8: a9010883     	stp	x3, x2, [x4, #0x10]
    4adc: a9401422     	ldp	x2, x5, [x1]
    4ae0: a9001482     	stp	x2, x5, [x4]
    4ae4: a9438c22     	ldp	x2, x3, [x1, #0x38]
    4ae8: a9038c82     	stp	x2, x3, [x4, #0x38]
    4aec: f9401022     	ldr	x2, [x1, #0x20]
    4af0: a9429421     	ldp	x1, x5, [x1, #0x28]
    4af4: f9001082     	str	x2, [x4, #0x20]
    4af8: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004af8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x747a
    4afc: 91000042     	add	x2, x2, #0x0
		0000000000004afc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x747a
    4b00: a9029481     	stp	x1, x5, [x4, #0x28]
    4b04: 910892c1     	add	x1, x22, #0x224
    4b08: a901a02a     	stp	x10, x8, [x1, #0x18]
    4b0c: 91092ec8     	add	x8, x22, #0x24b
    4b10: a900a42b     	stp	x11, x9, [x1, #0x8]
    4b14: f900002c     	str	x12, [x1]
    4b18: 5281b181     	mov	w1, #0xd8c              // =3468
    4b1c: 7900510e     	strh	w14, [x8, #0x28]
    4b20: a901450f     	stp	x15, x17, [x8, #0x10]
    4b24: f9001100     	str	x0, [x8, #0x20]
    4b28: 9109d2c0     	add	x0, x22, #0x274
    4b2c: a9003510     	stp	x16, x13, [x8]
    4b30: 39406ee3     	ldrb	w3, [x23, #0x1b]
    4b34: 94000000     	bl	0x4b34 <tp_edge_report_limit_read+0x26c>
		0000000000004b34:  R_AARCH64_CALL26	snprintf
    4b38: 93407c08     	sxtw	x8, w0
    4b3c: 394092e3     	ldrb	w3, [x23, #0x24]
    4b40: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004b40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9546
    4b44: 91000042     	add	x2, x2, #0x0
		0000000000004b44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9546
    4b48: 9109d119     	add	x25, x8, #0x274
    4b4c: cb080301     	sub	x1, x24, x8
    4b50: 8b1902c0     	add	x0, x22, x25
    4b54: 94000000     	bl	0x4b54 <tp_edge_report_limit_read+0x28c>
		0000000000004b54:  R_AARCH64_CALL26	snprintf
    4b58: 8b20c339     	add	x25, x25, w0, sxtw
    4b5c: 52820018     	mov	w24, #0x1000            // =4096
    4b60: 79407ee3     	ldrh	w3, [x23, #0x3e]
    4b64: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004b64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc61
    4b68: 91000042     	add	x2, x2, #0x0
		0000000000004b68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc61
    4b6c: cb190301     	sub	x1, x24, x25
    4b70: 8b1902c0     	add	x0, x22, x25
    4b74: 94000000     	bl	0x4b74 <tp_edge_report_limit_read+0x2ac>
		0000000000004b74:  R_AARCH64_CALL26	snprintf
    4b78: 8b20c339     	add	x25, x25, w0, sxtw
    4b7c: 39409ae3     	ldrb	w3, [x23, #0x26]
    4b80: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004b80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6d76
    4b84: 91000042     	add	x2, x2, #0x0
		0000000000004b84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6d76
    4b88: cb190301     	sub	x1, x24, x25
    4b8c: 8b1902c0     	add	x0, x22, x25
    4b90: 94000000     	bl	0x4b90 <tp_edge_report_limit_read+0x2c8>
		0000000000004b90:  R_AARCH64_CALL26	snprintf
    4b94: 8b20c339     	add	x25, x25, w0, sxtw
    4b98: 394096e3     	ldrb	w3, [x23, #0x25]
    4b9c: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004b9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb96d
    4ba0: 91000042     	add	x2, x2, #0x0
		0000000000004ba0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb96d
    4ba4: cb190301     	sub	x1, x24, x25
    4ba8: 8b1902c0     	add	x0, x22, x25
    4bac: 94000000     	bl	0x4bac <tp_edge_report_limit_read+0x2e4>
		0000000000004bac:  R_AARCH64_CALL26	snprintf
    4bb0: 8b20c339     	add	x25, x25, w0, sxtw
    4bb4: 79407ae3     	ldrh	w3, [x23, #0x3c]
    4bb8: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004bb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x6123
    4bbc: 91000042     	add	x2, x2, #0x0
		0000000000004bbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x6123
    4bc0: cb190301     	sub	x1, x24, x25
    4bc4: 8b1902c0     	add	x0, x22, x25
    4bc8: 94000000     	bl	0x4bc8 <tp_edge_report_limit_read+0x300>
		0000000000004bc8:  R_AARCH64_CALL26	snprintf
    4bcc: 8b20c339     	add	x25, x25, w0, sxtw
    4bd0: 3940e2e3     	ldrb	w3, [x23, #0x38]
    4bd4: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004bd4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17f3
    4bd8: 91000042     	add	x2, x2, #0x0
		0000000000004bd8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17f3
    4bdc: cb190301     	sub	x1, x24, x25
    4be0: 8b1902c0     	add	x0, x22, x25
    4be4: 94000000     	bl	0x4be4 <tp_edge_report_limit_read+0x31c>
		0000000000004be4:  R_AARCH64_CALL26	snprintf
    4be8: 8b20c339     	add	x25, x25, w0, sxtw
    4bec: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004bec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37c9
    4bf0: 91000042     	add	x2, x2, #0x0
		0000000000004bf0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37c9
    4bf4: cb190301     	sub	x1, x24, x25
    4bf8: 8b1902c0     	add	x0, x22, x25
    4bfc: 94000000     	bl	0x4bfc <tp_edge_report_limit_read+0x334>
		0000000000004bfc:  R_AARCH64_CALL26	snprintf
    4c00: 8b20c338     	add	x24, x25, w0, sxtw
    4c04: f13feb1f     	cmp	x24, #0xffa
    4c08: 540004e8     	b.hi	0x4ca4 <tp_edge_report_limit_read+0x3dc>
    4c0c: 52820008     	mov	w8, #0x1000             // =4096
    4c10: 39409ee3     	ldrb	w3, [x23, #0x27]
    4c14: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4c18: 91000042     	add	x2, x2, #0x0
		0000000000004c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4c1c: cb180101     	sub	x1, x8, x24
    4c20: 8b1802c0     	add	x0, x22, x24
    4c24: 94000000     	bl	0x4c24 <tp_edge_report_limit_read+0x35c>
		0000000000004c24:  R_AARCH64_CALL26	snprintf
    4c28: 8b20c318     	add	x24, x24, w0, sxtw
    4c2c: f13feb1f     	cmp	x24, #0xffa
    4c30: 540003a8     	b.hi	0x4ca4 <tp_edge_report_limit_read+0x3dc>
    4c34: 52820008     	mov	w8, #0x1000             // =4096
    4c38: 3940a2e3     	ldrb	w3, [x23, #0x28]
    4c3c: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4c40: 91000042     	add	x2, x2, #0x0
		0000000000004c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4c44: cb180101     	sub	x1, x8, x24
    4c48: 8b1802c0     	add	x0, x22, x24
    4c4c: 94000000     	bl	0x4c4c <tp_edge_report_limit_read+0x384>
		0000000000004c4c:  R_AARCH64_CALL26	snprintf
    4c50: 8b20c318     	add	x24, x24, w0, sxtw
    4c54: f13feb1f     	cmp	x24, #0xffa
    4c58: 54000268     	b.hi	0x4ca4 <tp_edge_report_limit_read+0x3dc>
    4c5c: 52820008     	mov	w8, #0x1000             // =4096
    4c60: 3940a6e3     	ldrb	w3, [x23, #0x29]
    4c64: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004c64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4c68: 91000042     	add	x2, x2, #0x0
		0000000000004c68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4c6c: cb180101     	sub	x1, x8, x24
    4c70: 8b1802c0     	add	x0, x22, x24
    4c74: 94000000     	bl	0x4c74 <tp_edge_report_limit_read+0x3ac>
		0000000000004c74:  R_AARCH64_CALL26	snprintf
    4c78: 8b20c318     	add	x24, x24, w0, sxtw
    4c7c: f13feb1f     	cmp	x24, #0xffa
    4c80: 54000128     	b.hi	0x4ca4 <tp_edge_report_limit_read+0x3dc>
    4c84: 52820008     	mov	w8, #0x1000             // =4096
    4c88: 3940aae3     	ldrb	w3, [x23, #0x2a]
    4c8c: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004c8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4c90: 91000042     	add	x2, x2, #0x0
		0000000000004c90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4c94: cb180101     	sub	x1, x8, x24
    4c98: 8b1802c0     	add	x0, x22, x24
    4c9c: 94000000     	bl	0x4c9c <tp_edge_report_limit_read+0x3d4>
		0000000000004c9c:  R_AARCH64_CALL26	snprintf
    4ca0: 8b20c318     	add	x24, x24, w0, sxtw
    4ca4: 52820008     	mov	w8, #0x1000             // =4096
    4ca8: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004ca8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8ab7
    4cac: 91000042     	add	x2, x2, #0x0
		0000000000004cac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8ab7
    4cb0: cb180101     	sub	x1, x8, x24
    4cb4: 8b1802c0     	add	x0, x22, x24
    4cb8: 94000000     	bl	0x4cb8 <tp_edge_report_limit_read+0x3f0>
		0000000000004cb8:  R_AARCH64_CALL26	snprintf
    4cbc: 8b20c318     	add	x24, x24, w0, sxtw
    4cc0: f13feb1f     	cmp	x24, #0xffa
    4cc4: 540004e8     	b.hi	0x4d60 <tp_edge_report_limit_read+0x498>
    4cc8: 52820008     	mov	w8, #0x1000             // =4096
    4ccc: 3940d2e3     	ldrb	w3, [x23, #0x34]
    4cd0: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004cd0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4cd4: 91000042     	add	x2, x2, #0x0
		0000000000004cd4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4cd8: cb180101     	sub	x1, x8, x24
    4cdc: 8b1802c0     	add	x0, x22, x24
    4ce0: 94000000     	bl	0x4ce0 <tp_edge_report_limit_read+0x418>
		0000000000004ce0:  R_AARCH64_CALL26	snprintf
    4ce4: 8b20c318     	add	x24, x24, w0, sxtw
    4ce8: f13feb1f     	cmp	x24, #0xffa
    4cec: 540003a8     	b.hi	0x4d60 <tp_edge_report_limit_read+0x498>
    4cf0: 52820008     	mov	w8, #0x1000             // =4096
    4cf4: 3940d6e3     	ldrb	w3, [x23, #0x35]
    4cf8: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004cf8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4cfc: 91000042     	add	x2, x2, #0x0
		0000000000004cfc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4d00: cb180101     	sub	x1, x8, x24
    4d04: 8b1802c0     	add	x0, x22, x24
    4d08: 94000000     	bl	0x4d08 <tp_edge_report_limit_read+0x440>
		0000000000004d08:  R_AARCH64_CALL26	snprintf
    4d0c: 8b20c318     	add	x24, x24, w0, sxtw
    4d10: f13feb1f     	cmp	x24, #0xffa
    4d14: 54000268     	b.hi	0x4d60 <tp_edge_report_limit_read+0x498>
    4d18: 52820008     	mov	w8, #0x1000             // =4096
    4d1c: 3940dae3     	ldrb	w3, [x23, #0x36]
    4d20: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004d20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4d24: 91000042     	add	x2, x2, #0x0
		0000000000004d24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4d28: cb180101     	sub	x1, x8, x24
    4d2c: 8b1802c0     	add	x0, x22, x24
    4d30: 94000000     	bl	0x4d30 <tp_edge_report_limit_read+0x468>
		0000000000004d30:  R_AARCH64_CALL26	snprintf
    4d34: 8b20c318     	add	x24, x24, w0, sxtw
    4d38: f13feb1f     	cmp	x24, #0xffa
    4d3c: 54000128     	b.hi	0x4d60 <tp_edge_report_limit_read+0x498>
    4d40: 52820008     	mov	w8, #0x1000             // =4096
    4d44: 3940dee3     	ldrb	w3, [x23, #0x37]
    4d48: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004d48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x37dc
    4d4c: 91000042     	add	x2, x2, #0x0
		0000000000004d4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x37dc
    4d50: cb180101     	sub	x1, x8, x24
    4d54: 8b1802c0     	add	x0, x22, x24
    4d58: 94000000     	bl	0x4d58 <tp_edge_report_limit_read+0x490>
		0000000000004d58:  R_AARCH64_CALL26	snprintf
    4d5c: 8b20c318     	add	x24, x24, w0, sxtw
    4d60: 52820008     	mov	w8, #0x1000             // =4096
    4d64: 90000002     	adrp	x2, 0x4000 <display_rotation_show+0xc>
		0000000000004d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a13
    4d68: 91000042     	add	x2, x2, #0x0
		0000000000004d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a13
    4d6c: cb180101     	sub	x1, x8, x24
    4d70: 8b1802c0     	add	x0, x22, x24
    4d74: 94000000     	bl	0x4d74 <tp_edge_report_limit_read+0x4ac>
		0000000000004d74:  R_AARCH64_CALL26	snprintf
    4d78: 8b20c317     	add	x23, x24, w0, sxtw
    4d7c: aa1503e0     	mov	x0, x21
    4d80: aa1403e1     	mov	x1, x20
    4d84: aa1303e2     	mov	x2, x19
    4d88: aa1603e3     	mov	x3, x22
    4d8c: aa1703e4     	mov	x4, x23
    4d90: 94000000     	bl	0x4d90 <tp_edge_report_limit_read+0x4c8>
		0000000000004d90:  R_AARCH64_CALL26	simple_read_from_buffer
    4d94: aa1603e0     	mov	x0, x22
    4d98: 94000000     	bl	0x4d98 <tp_edge_report_limit_read+0x4d0>
		0000000000004d98:  R_AARCH64_CALL26	kfree
    4d9c: aa1703e0     	mov	x0, x23
    4da0: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    4da4: f9400bf9     	ldr	x25, [sp, #0x10]
    4da8: a94357f6     	ldp	x22, x21, [sp, #0x30]
    4dac: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    4db0: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    4db4: d50323bf     	autiasp
    4db8: d65f03c0     	ret
    4dbc: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004dbc:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0xc8
    4dc0: 91000108     	add	x8, x8, #0x0
		0000000000004dc0:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0xc8
    4dc4: d5384118     	mrs	x24, SP_EL0
    4dc8: f9402b19     	ldr	x25, [x24, #0x50]
    4dcc: f9002b08     	str	x8, [x24, #0x50]
    4dd0: 90000008     	adrp	x8, 0x4000 <display_rotation_show+0xc>
		0000000000004dd0:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    4dd4: f9400100     	ldr	x0, [x8]
		0000000000004dd4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    4dd8: 5281b801     	mov	w1, #0xdc0              // =3520
    4ddc: 52820002     	mov	w2, #0x1000             // =4096
    4de0: 94000000     	bl	0x4de0 <tp_edge_report_limit_read+0x518>
		0000000000004de0:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    4de4: aa0003f6     	mov	x22, x0
    4de8: f9002b19     	str	x25, [x24, #0x50]
    4dec: b5ffd9f6     	cbnz	x22, 0x4928 <tp_edge_report_limit_read+0x60>
    4df0: 90000000     	adrp	x0, 0x4000 <display_rotation_show+0xc>
		0000000000004df0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1dff
    4df4: 91000000     	add	x0, x0, #0x0
		0000000000004df4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1dff
    4df8: 94000000     	bl	0x4df8 <tp_edge_report_limit_read+0x530>
		0000000000004df8:  R_AARCH64_CALL26	_printk
    4dfc: 92800160     	mov	x0, #-0xc               // =-12
    4e00: 17ffffe8     	b	0x4da0 <tp_edge_report_limit_read+0x4d8>
