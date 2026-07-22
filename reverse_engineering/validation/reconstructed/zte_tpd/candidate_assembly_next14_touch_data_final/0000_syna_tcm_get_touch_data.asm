
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001164c <syna_tcm_get_touch_data>:
   1164c: d503233f     	paciasp
   11650: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   11654: 910003fd     	mov	x29, sp
   11658: 51008468     	sub	w8, w3, #0x21
   1165c: 3100851f     	cmn	w8, #0x21
   11660: 54000529     	b.ls	0x11704 <syna_tcm_get_touch_data+0xb8>
   11664: b4000600     	cbz	x0, 0x11724 <syna_tcm_get_touch_data+0xd8>
   11668: 0b020068     	add	w8, w3, w2
   1166c: 6b010d1f     	cmp	w8, w1, lsl #3
   11670: 54000089     	b.ls	0x11680 <syna_tcm_get_touch_data+0x34>
   11674: 2a1f03e0     	mov	w0, wzr
   11678: b900009f     	str	wzr, [x4]
   1167c: 1400001f     	b	0x116f8 <syna_tcm_get_touch_data+0xac>
   11680: 2a0203e9     	mov	w9, w2
   11684: 1200084b     	and	w11, w2, #0x7
   11688: 52800108     	mov	w8, #0x8                // =8
   1168c: d343fd2c     	lsr	x12, x9, #3
   11690: 4b0b0109     	sub	w9, w8, w11
   11694: 52801fea     	mov	w10, #0xff              // =255
   11698: 6b03013f     	cmp	w9, w3
   1169c: 386c680d     	ldrb	w13, [x0, x12]
   116a0: 1a833129     	csel	w9, w9, w3, lo
   116a4: 4b09010e     	sub	w14, w8, w9
   116a8: 1acb25ad     	lsr	w13, w13, w11
   116ac: 1ace254e     	lsr	w14, w10, w14
   116b0: 6b09006b     	subs	w11, w3, w9
   116b4: 0a0e01a9     	and	w9, w13, w14
   116b8: 540001c0     	b.eq	0x116f0 <syna_tcm_get_touch_data+0xa4>
   116bc: 1100058c     	add	w12, w12, #0x1
   116c0: 7100217f     	cmp	w11, #0x8
   116c4: 386c480f     	ldrb	w15, [x0, w12, uxtw]
   116c8: 1100058c     	add	w12, w12, #0x1
   116cc: 1a88316d     	csel	w13, w11, w8, lo
   116d0: 4b0d010e     	sub	w14, w8, w13
   116d4: 1ace254e     	lsr	w14, w10, w14
   116d8: 0a0f01ce     	and	w14, w14, w15
   116dc: 4b0b006f     	sub	w15, w3, w11
   116e0: 6b0d016b     	subs	w11, w11, w13
   116e4: 1acf21ce     	lsl	w14, w14, w15
   116e8: 2a0901c9     	orr	w9, w14, w9
   116ec: 54fffea1     	b.ne	0x116c0 <syna_tcm_get_touch_data+0x74>
   116f0: 2a1f03e0     	mov	w0, wzr
   116f4: b9000089     	str	w9, [x4]
   116f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   116fc: d50323bf     	autiasp
   11700: d65f03c0     	ret
   11704: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_event_data+0x44>
		0000000000011704:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xeb9
   11708: 91000000     	add	x0, x0, #0x0
		0000000000011708:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xeb9
   1170c: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_event_data+0x44>
		000000000001170c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57c
   11710: 91000021     	add	x1, x1, #0x0
		0000000000011710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57c
   11714: 2a0303e2     	mov	w2, w3
   11718: 94000000     	bl	0x11718 <syna_tcm_get_touch_data+0xcc>
		0000000000011718:  R_AARCH64_CALL26	_printk
   1171c: 12801e00     	mov	w0, #-0xf1              // =-241
   11720: 17fffff6     	b	0x116f8 <syna_tcm_get_touch_data+0xac>
   11724: 90000000     	adrp	x0, 0x11000 <syna_tcm_get_event_data+0x44>
		0000000000011724:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2a39
   11728: 91000000     	add	x0, x0, #0x0
		0000000000011728:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2a39
   1172c: 90000001     	adrp	x1, 0x11000 <syna_tcm_get_event_data+0x44>
		000000000001172c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x57c
   11730: 91000021     	add	x1, x1, #0x0
		0000000000011730:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x57c
   11734: 94000000     	bl	0x11734 <syna_tcm_get_touch_data+0xe8>
		0000000000011734:  R_AARCH64_CALL26	_printk
   11738: 12801e00     	mov	w0, #-0xf1              // =-241
   1173c: 17ffffef     	b	0x116f8 <syna_tcm_get_touch_data+0xac>
