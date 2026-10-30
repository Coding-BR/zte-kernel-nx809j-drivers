
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006b5c <syna_tcm_get_touch_data>:
    6b5c: d503233f     	paciasp
    6b60: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    6b64: 910003fd     	mov	x29, sp
    6b68: 51008468     	sub	w8, w3, #0x21
    6b6c: 3100851f     	cmn	w8, #0x21
    6b70: 54000529     	b.ls	0x6c14 <syna_tcm_get_touch_data+0xb8>
    6b74: b4000600     	cbz	x0, 0x6c34 <syna_tcm_get_touch_data+0xd8>
    6b78: 0b020068     	add	w8, w3, w2
    6b7c: 6b010d1f     	cmp	w8, w1, lsl #3
    6b80: 54000089     	b.ls	0x6b90 <syna_tcm_get_touch_data+0x34>
    6b84: 2a1f03e0     	mov	w0, wzr
    6b88: b900009f     	str	wzr, [x4]
    6b8c: 1400001f     	b	0x6c08 <syna_tcm_get_touch_data+0xac>
    6b90: 2a0203e9     	mov	w9, w2
    6b94: 1200084b     	and	w11, w2, #0x7
    6b98: 52800108     	mov	w8, #0x8                // =8
    6b9c: d343fd2c     	lsr	x12, x9, #3
    6ba0: 4b0b0109     	sub	w9, w8, w11
    6ba4: 52801fea     	mov	w10, #0xff              // =255
    6ba8: 6b03013f     	cmp	w9, w3
    6bac: 386c680d     	ldrb	w13, [x0, x12]
    6bb0: 1a833129     	csel	w9, w9, w3, lo
    6bb4: 4b09010e     	sub	w14, w8, w9
    6bb8: 1acb25ad     	lsr	w13, w13, w11
    6bbc: 1ace254e     	lsr	w14, w10, w14
    6bc0: 6b09006b     	subs	w11, w3, w9
    6bc4: 0a0e01a9     	and	w9, w13, w14
    6bc8: 540001c0     	b.eq	0x6c00 <syna_tcm_get_touch_data+0xa4>
    6bcc: 1100058c     	add	w12, w12, #0x1
    6bd0: 7100217f     	cmp	w11, #0x8
    6bd4: 386c480f     	ldrb	w15, [x0, w12, uxtw]
    6bd8: 1100058c     	add	w12, w12, #0x1
    6bdc: 1a88316d     	csel	w13, w11, w8, lo
    6be0: 4b0d010e     	sub	w14, w8, w13
    6be4: 1ace254e     	lsr	w14, w10, w14
    6be8: 0a0f01ce     	and	w14, w14, w15
    6bec: 4b0b006f     	sub	w15, w3, w11
    6bf0: 6b0d016b     	subs	w11, w11, w13
    6bf4: 1acf21ce     	lsl	w14, w14, w15
    6bf8: 2a0901c9     	orr	w9, w14, w9
    6bfc: 54fffea1     	b.ne	0x6bd0 <syna_tcm_get_touch_data+0x74>
    6c00: 2a1f03e0     	mov	w0, wzr
    6c04: b9000089     	str	w9, [x4]
    6c08: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    6c0c: d50323bf     	autiasp
    6c10: d65f03c0     	ret
    6c14: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006c14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2418
    6c18: 91000000     	add	x0, x0, #0x0
		0000000000006c18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2418
    6c1c: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006c1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    6c20: 91000021     	add	x1, x1, #0x0
		0000000000006c20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    6c24: 2a0303e2     	mov	w2, w3
    6c28: 94000000     	bl	0x6c28 <syna_tcm_get_touch_data+0xcc>
		0000000000006c28:  R_AARCH64_CALL26	_printk
    6c2c: 12801e00     	mov	w0, #-0xf1              // =-241
    6c30: 17fffff6     	b	0x6c08 <syna_tcm_get_touch_data+0xac>
    6c34: 90000000     	adrp	x0, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006c34:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x60a4
    6c38: 91000000     	add	x0, x0, #0x0
		0000000000006c38:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x60a4
    6c3c: 90000001     	adrp	x1, 0x6000 <syna_tcm_read_mtp_data+0x178>
		0000000000006c3c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa90
    6c40: 91000021     	add	x1, x1, #0x0
		0000000000006c40:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa90
    6c44: 94000000     	bl	0x6c44 <syna_tcm_get_touch_data+0xe8>
		0000000000006c44:  R_AARCH64_CALL26	_printk
    6c48: 12801e00     	mov	w0, #-0xf1              // =-241
    6c4c: 17ffffef     	b	0x6c08 <syna_tcm_get_touch_data+0xac>
