
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000106dc <syna_tcm_enable_predict_reading>:
   106dc: d503233f     	paciasp
   106e0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   106e4: 910003fd     	mov	x29, sp
   106e8: b5000100     	cbnz	x0, 0x10708 <syna_tcm_enable_predict_reading+0x2c>
   106ec: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x84>
		00000000000106ec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   106f0: 91000000     	add	x0, x0, #0x0
		00000000000106f0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   106f4: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x84>
		00000000000106f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39c3
   106f8: 91000021     	add	x1, x1, #0x0
		00000000000106f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39c3
   106fc: 94000000     	bl	0x106fc <syna_tcm_enable_predict_reading+0x20>
		00000000000106fc:  R_AARCH64_CALL26	_printk
   10700: 12801e00     	mov	w0, #-0xf1              // =-241
   10704: 1400000f     	b	0x10740 <syna_tcm_enable_predict_reading+0x64>
   10708: 72000028     	ands	w8, w1, #0x1
   1070c: 90000009     	adrp	x9, 0x10000 <syna_tcm_detect_device+0x84>
		000000000001070c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4602
   10710: 91000129     	add	x9, x9, #0x0
		0000000000010710:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4602
   10714: 390de808     	strb	w8, [x0, #0x37a]
   10718: 90000008     	adrp	x8, 0x10000 <syna_tcm_detect_device+0x84>
		0000000000010718:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41b9
   1071c: 91000108     	add	x8, x8, #0x0
		000000000001071c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41b9
   10720: b9037c1f     	str	wzr, [x0, #0x37c]
   10724: 9a891102     	csel	x2, x8, x9, ne
   10728: 90000000     	adrp	x0, 0x10000 <syna_tcm_detect_device+0x84>
		0000000000010728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1be6
   1072c: 91000000     	add	x0, x0, #0x0
		000000000001072c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1be6
   10730: 90000001     	adrp	x1, 0x10000 <syna_tcm_detect_device+0x84>
		0000000000010730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x39c3
   10734: 91000021     	add	x1, x1, #0x0
		0000000000010734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x39c3
   10738: 94000000     	bl	0x10738 <syna_tcm_enable_predict_reading+0x5c>
		0000000000010738:  R_AARCH64_CALL26	_printk
   1073c: 2a1f03e0     	mov	w0, wzr
   10740: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   10744: d50323bf     	autiasp
   10748: d65f03c0     	ret
