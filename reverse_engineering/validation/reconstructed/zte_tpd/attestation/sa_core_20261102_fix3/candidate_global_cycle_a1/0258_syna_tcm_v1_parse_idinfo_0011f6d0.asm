
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000010968 <syna_tcm_v1_parse_idinfo>:
   10968: d503233f     	paciasp
   1096c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   10970: f9000bf3     	str	x19, [sp, #0x10]
   10974: 910003fd     	mov	x29, sp
   10978: b40002e1     	cbz	x1, 0x109d4 <syna_tcm_v1_parse_idinfo+0x6c>
   1097c: 340002c3     	cbz	w3, 0x109d4 <syna_tcm_v1_parse_idinfo+0x6c>
   10980: 7100c07f     	cmp	w3, #0x30
   10984: 52800608     	mov	w8, #0x30               // =48
   10988: 1a883064     	csel	w4, w3, w8, lo
   1098c: 6b02009f     	cmp	w4, w2
   10990: 54000308     	b.hi	0x109f0 <syna_tcm_v1_parse_idinfo+0x88>
   10994: aa0003f3     	mov	x19, x0
   10998: 91020000     	add	x0, x0, #0x80
   1099c: aa0403e2     	mov	x2, x4
   109a0: 94000000     	bl	0x109a0 <syna_tcm_v1_parse_idinfo+0x38>
		00000000000109a0:  R_AARCH64_CALL26	memcpy
   109a4: b8492268     	ldur	w8, [x19, #0x92]
   109a8: b9400e69     	ldr	w9, [x19, #0xc]
   109ac: 6b08013f     	cmp	w9, w8
   109b0: 54000040     	b.eq	0x109b8 <syna_tcm_v1_parse_idinfo+0x50>
   109b4: b9000e68     	str	w8, [x19, #0xc]
   109b8: 39420668     	ldrb	w8, [x19, #0x81]
   109bc: 2a1f03e0     	mov	w0, wzr
   109c0: 39002668     	strb	w8, [x19, #0x9]
   109c4: f9400bf3     	ldr	x19, [sp, #0x10]
   109c8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   109cc: d50323bf     	autiasp
   109d0: d65f03c0     	ret
   109d4: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000109d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa3ce
   109d8: 91000000     	add	x0, x0, #0x0
		00000000000109d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa3ce
   109dc: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000109dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ef2
   109e0: 91000021     	add	x1, x1, #0x0
		00000000000109e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ef2
   109e4: 94000000     	bl	0x109e4 <syna_tcm_v1_parse_idinfo+0x7c>
		00000000000109e4:  R_AARCH64_CALL26	_printk
   109e8: 12801e00     	mov	w0, #-0xf1              // =-241
   109ec: 17fffff6     	b	0x109c4 <syna_tcm_v1_parse_idinfo+0x5c>
   109f0: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000109f0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8406
   109f4: 91000000     	add	x0, x0, #0x0
		00000000000109f4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8406
   109f8: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		00000000000109f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a80
   109fc: 91000021     	add	x1, x1, #0x0
		00000000000109fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a80
   10a00: 52800603     	mov	w3, #0x30               // =48
   10a04: 94000000     	bl	0x10a04 <syna_tcm_v1_parse_idinfo+0x9c>
		0000000000010a04:  R_AARCH64_CALL26	_printk
   10a08: 90000000     	adrp	x0, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010a08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x98e
   10a0c: 91000000     	add	x0, x0, #0x0
		0000000000010a0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x98e
   10a10: 90000001     	adrp	x1, 0x10000 <syna_tcm_v1_detect+0x394>
		0000000000010a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5ef2
   10a14: 91000021     	add	x1, x1, #0x0
		0000000000010a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5ef2
   10a18: 94000000     	bl	0x10a18 <syna_tcm_v1_parse_idinfo+0xb0>
		0000000000010a18:  R_AARCH64_CALL26	_printk
   10a1c: 128002a0     	mov	w0, #-0x16              // =-22
   10a20: 17ffffe9     	b	0x109c4 <syna_tcm_v1_parse_idinfo+0x5c>
