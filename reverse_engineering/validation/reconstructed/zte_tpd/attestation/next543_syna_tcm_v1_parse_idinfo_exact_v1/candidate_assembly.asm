
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000020234 <syna_tcm_v1_parse_idinfo>:
   20234: d503233f     	paciasp
   20238: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   2023c: f9000bf3     	str	x19, [sp, #0x10]
   20240: 910003fd     	mov	x29, sp
   20244: b40002e1     	cbz	x1, 0x202a0 <syna_tcm_v1_parse_idinfo+0x6c>
   20248: 340002c3     	cbz	w3, 0x202a0 <syna_tcm_v1_parse_idinfo+0x6c>
   2024c: 7100c07f     	cmp	w3, #0x30
   20250: 52800608     	mov	w8, #0x30               // =48
   20254: 1a883064     	csel	w4, w3, w8, lo
   20258: 6b02009f     	cmp	w4, w2
   2025c: 54000308     	b.hi	0x202bc <syna_tcm_v1_parse_idinfo+0x88>
   20260: aa0003f3     	mov	x19, x0
   20264: 91020000     	add	x0, x0, #0x80
   20268: aa0403e2     	mov	x2, x4
   2026c: 94000000     	bl	0x2026c <syna_tcm_v1_parse_idinfo+0x38>
		000000000002026c:  R_AARCH64_CALL26	memcpy
   20270: b8492268     	ldur	w8, [x19, #0x92]
   20274: b9400e69     	ldr	w9, [x19, #0xc]
   20278: 6b08013f     	cmp	w9, w8
   2027c: 54000040     	b.eq	0x20284 <syna_tcm_v1_parse_idinfo+0x50>
   20280: b9000e68     	str	w8, [x19, #0xc]
   20284: 39420668     	ldrb	w8, [x19, #0x81]
   20288: 2a1f03e0     	mov	w0, wzr
   2028c: 39002668     	strb	w8, [x19, #0x9]
   20290: f9400bf3     	ldr	x19, [sp, #0x10]
   20294: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   20298: d50323bf     	autiasp
   2029c: d65f03c0     	ret
   202a0: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x5f0>
		00000000000202a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1507a
   202a4: 91000000     	add	x0, x0, #0x0
		00000000000202a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1507a
   202a8: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x5f0>
		00000000000202a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10bc4
   202ac: 91000021     	add	x1, x1, #0x0
		00000000000202ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10bc4
   202b0: 94000000     	bl	0x202b0 <syna_tcm_v1_parse_idinfo+0x7c>
		00000000000202b0:  R_AARCH64_CALL26	_printk
   202b4: 12801e00     	mov	w0, #-0xf1              // =-241
   202b8: 17fffff6     	b	0x20290 <syna_tcm_v1_parse_idinfo+0x5c>
   202bc: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x5f0>
		00000000000202bc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x130d2
   202c0: 91000000     	add	x0, x0, #0x0
		00000000000202c0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x130d2
   202c4: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x5f0>
		00000000000202c4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc770
   202c8: 91000021     	add	x1, x1, #0x0
		00000000000202c8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc770
   202cc: 52800603     	mov	w3, #0x30               // =48
   202d0: 94000000     	bl	0x202d0 <syna_tcm_v1_parse_idinfo+0x9c>
		00000000000202d0:  R_AARCH64_CALL26	_printk
   202d4: 90000000     	adrp	x0, 0x20000 <syna_tcm_v1_write_message+0x5f0>
		00000000000202d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb662
   202d8: 91000000     	add	x0, x0, #0x0
		00000000000202d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb662
   202dc: 90000001     	adrp	x1, 0x20000 <syna_tcm_v1_write_message+0x5f0>
		00000000000202dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x10bc4
   202e0: 91000021     	add	x1, x1, #0x0
		00000000000202e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x10bc4
   202e4: 94000000     	bl	0x202e4 <syna_tcm_v1_parse_idinfo+0xb0>
		00000000000202e4:  R_AARCH64_CALL26	_printk
   202e8: 128002a0     	mov	w0, #-0x16              // =-22
   202ec: 17ffffe9     	b	0x20290 <syna_tcm_v1_parse_idinfo+0x5c>
