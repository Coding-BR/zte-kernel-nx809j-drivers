
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000b5f0 <syna_tcm_enable_predict_reading>:
    b5f0: d503233f     	paciasp
    b5f4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    b5f8: 910003fd     	mov	x29, sp
    b5fc: b5000100     	cbnz	x0, 0xb61c <syna_tcm_enable_predict_reading+0x2c>
    b600: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b600:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    b604: 91000000     	add	x0, x0, #0x0
		000000000000b604:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    b608: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b608:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3e9
    b60c: 91000021     	add	x1, x1, #0x0
		000000000000b60c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3e9
    b610: 94000000     	bl	0xb610 <syna_tcm_enable_predict_reading+0x20>
		000000000000b610:  R_AARCH64_CALL26	_printk
    b614: 12801e00     	mov	w0, #-0xf1              // =-241
    b618: 1400000f     	b	0xb654 <syna_tcm_enable_predict_reading+0x64>
    b61c: 72000028     	ands	w8, w1, #0x1
    b620: 90000009     	adrp	x9, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b620:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c48a
    b624: 91000129     	add	x9, x9, #0x0
		000000000000b624:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c48a
    b628: 390de808     	strb	w8, [x0, #0x37a]
    b62c: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b62c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf7e
    b630: 91000108     	add	x8, x8, #0x0
		000000000000b630:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf7e
    b634: b9037c1f     	str	wzr, [x0, #0x37c]
    b638: 9a891102     	csel	x2, x8, x9, ne
    b63c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b63c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18f36
    b640: 91000000     	add	x0, x0, #0x0
		000000000000b640:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18f36
    b644: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000b644:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b3e9
    b648: 91000021     	add	x1, x1, #0x0
		000000000000b648:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b3e9
    b64c: 94000000     	bl	0xb64c <syna_tcm_enable_predict_reading+0x5c>
		000000000000b64c:  R_AARCH64_CALL26	_printk
    b650: 2a1f03e0     	mov	w0, wzr
    b654: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    b658: d50323bf     	autiasp
    b65c: d65f03c0     	ret
