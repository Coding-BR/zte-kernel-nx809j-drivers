
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d718 <syna_tcm_enable_predict_reading>:
   1d718: d503233f     	paciasp
   1d71c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1d720: 910003fd     	mov	x29, sp
   1d724: b5000100     	cbnz	x0, 0x1d744 <syna_tcm_enable_predict_reading+0x2c>
   1d728: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d728:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d72c: 91000000     	add	x0, x0, #0x0
		000000000001d72c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d730: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d730:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9314
   1d734: 91000021     	add	x1, x1, #0x0
		000000000001d734:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9314
   1d738: 94000000     	bl	0x1d738 <syna_tcm_enable_predict_reading+0x20>
		000000000001d738:  R_AARCH64_CALL26	_printk
   1d73c: 12801e00     	mov	w0, #-0xf1              // =-241
   1d740: 1400000f     	b	0x1d77c <syna_tcm_enable_predict_reading+0x64>
   1d744: 72000028     	ands	w8, w1, #0x1
   1d748: 90000009     	adrp	x9, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d748:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbd47
   1d74c: 91000129     	add	x9, x9, #0x0
		000000000001d74c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbd47
   1d750: 390de808     	strb	w8, [x0, #0x37a]
   1d754: 90000008     	adrp	x8, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d754:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb089
   1d758: 91000108     	add	x8, x8, #0x0
		000000000001d758:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb089
   1d75c: b9037c1f     	str	wzr, [x0, #0x37c]
   1d760: 9a891102     	csel	x2, x8, x9, ne
   1d764: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d764:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x41e4
   1d768: 91000000     	add	x0, x0, #0x0
		000000000001d768:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x41e4
   1d76c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d76c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x9314
   1d770: 91000021     	add	x1, x1, #0x0
		000000000001d770:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x9314
   1d774: 94000000     	bl	0x1d774 <syna_tcm_enable_predict_reading+0x5c>
		000000000001d774:  R_AARCH64_CALL26	_printk
   1d778: 2a1f03e0     	mov	w0, wzr
   1d77c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1d780: d50323bf     	autiasp
   1d784: d65f03c0     	ret
