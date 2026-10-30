
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021c8c <syna_tcm_get_touch_data>:
   21c8c: d503233f     	paciasp
   21c90: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   21c94: 910003fd     	mov	x29, sp
   21c98: 51008468     	sub	w8, w3, #0x21
   21c9c: 3100851f     	cmn	w8, #0x21
   21ca0: 54000529     	b.ls	0x21d44 <syna_tcm_get_touch_data+0xb8>
   21ca4: b4000600     	cbz	x0, 0x21d64 <syna_tcm_get_touch_data+0xd8>
   21ca8: 0b020068     	add	w8, w3, w2
   21cac: 6b010d1f     	cmp	w8, w1, lsl #3
   21cb0: 54000089     	b.ls	0x21cc0 <syna_tcm_get_touch_data+0x34>
   21cb4: 2a1f03e0     	mov	w0, wzr
   21cb8: b900009f     	str	wzr, [x4]
   21cbc: 1400001f     	b	0x21d38 <syna_tcm_get_touch_data+0xac>
   21cc0: 2a0203e9     	mov	w9, w2
   21cc4: 1200084b     	and	w11, w2, #0x7
   21cc8: 52800108     	mov	w8, #0x8                // =8
   21ccc: d343fd2c     	lsr	x12, x9, #3
   21cd0: 4b0b0109     	sub	w9, w8, w11
   21cd4: 52801fea     	mov	w10, #0xff              // =255
   21cd8: 6b03013f     	cmp	w9, w3
   21cdc: 386c680d     	ldrb	w13, [x0, x12]
   21ce0: 1a833129     	csel	w9, w9, w3, lo
   21ce4: 4b09010e     	sub	w14, w8, w9
   21ce8: 1acb25ad     	lsr	w13, w13, w11
   21cec: 1ace254e     	lsr	w14, w10, w14
   21cf0: 6b09006b     	subs	w11, w3, w9
   21cf4: 0a0e01a9     	and	w9, w13, w14
   21cf8: 540001c0     	b.eq	0x21d30 <syna_tcm_get_touch_data+0xa4>
   21cfc: 1100058c     	add	w12, w12, #0x1
   21d00: 7100217f     	cmp	w11, #0x8
   21d04: 386c480f     	ldrb	w15, [x0, w12, uxtw]
   21d08: 1100058c     	add	w12, w12, #0x1
   21d0c: 1a88316d     	csel	w13, w11, w8, lo
   21d10: 4b0d010e     	sub	w14, w8, w13
   21d14: 1ace254e     	lsr	w14, w10, w14
   21d18: 0a0f01ce     	and	w14, w14, w15
   21d1c: 4b0b006f     	sub	w15, w3, w11
   21d20: 6b0d016b     	subs	w11, w11, w13
   21d24: 1acf21ce     	lsl	w14, w14, w15
   21d28: 2a0901c9     	orr	w9, w14, w9
   21d2c: 54fffea1     	b.ne	0x21d00 <syna_tcm_get_touch_data+0x74>
   21d30: 2a1f03e0     	mov	w0, wzr
   21d34: b9000089     	str	w9, [x4]
   21d38: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   21d3c: d50323bf     	autiasp
   21d40: d65f03c0     	ret
   21d44: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021d44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2398
   21d48: 91000000     	add	x0, x0, #0x0
		0000000000021d48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2398
   21d4c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021d4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   21d50: 91000021     	add	x1, x1, #0x0
		0000000000021d50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   21d54: 2a0303e2     	mov	w2, w3
   21d58: 94000000     	bl	0x21d58 <syna_tcm_get_touch_data+0xcc>
		0000000000021d58:  R_AARCH64_CALL26	_printk
   21d5c: 12801e00     	mov	w0, #-0xf1              // =-241
   21d60: 17fffff6     	b	0x21d38 <syna_tcm_get_touch_data+0xac>
   21d64: 90000000     	adrp	x0, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021d64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5f4a
   21d68: 91000000     	add	x0, x0, #0x0
		0000000000021d68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5f4a
   21d6c: 90000001     	adrp	x1, 0x21000 <syna_tcm_read_cs_data+0x8c>
		0000000000021d6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a
   21d70: 91000021     	add	x1, x1, #0x0
		0000000000021d70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a
   21d74: 94000000     	bl	0x21d74 <syna_tcm_get_touch_data+0xe8>
		0000000000021d74:  R_AARCH64_CALL26	_printk
   21d78: 12801e00     	mov	w0, #-0xf1              // =-241
   21d7c: 17ffffef     	b	0x21d38 <syna_tcm_get_touch_data+0xac>
