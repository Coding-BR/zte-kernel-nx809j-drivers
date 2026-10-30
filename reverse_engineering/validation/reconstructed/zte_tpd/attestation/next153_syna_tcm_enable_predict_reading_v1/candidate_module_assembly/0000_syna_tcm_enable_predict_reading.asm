
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ffb4 <syna_tcm_enable_predict_reading>:
    ffb4: d503233f     	paciasp
    ffb8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    ffbc: 910003fd     	mov	x29, sp
    ffc0: b5000100     	cbnz	x0, 0xffe0 <syna_tcm_enable_predict_reading+0x2c>
    ffc4: 90000000     	adrp	x0, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000ffc4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1072
    ffc8: 91000000     	add	x0, x0, #0x0
		000000000000ffc8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1072
    ffcc: 90000001     	adrp	x1, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000ffcc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4467
    ffd0: 91000021     	add	x1, x1, #0x0
		000000000000ffd0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4467
    ffd4: 94000000     	bl	0xffd4 <syna_tcm_enable_predict_reading+0x20>
		000000000000ffd4:  R_AARCH64_CALL26	_printk
    ffd8: 12801e00     	mov	w0, #-0xf1              // =-241
    ffdc: 1400000f     	b	0x10018 <syna_tcm_enable_predict_reading+0x64>
    ffe0: 72000028     	ands	w8, w1, #0x1
    ffe4: 90000009     	adrp	x9, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000ffe4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56cb
    ffe8: 91000129     	add	x9, x9, #0x0
		000000000000ffe8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56cb
    ffec: 390de808     	strb	w8, [x0, #0x37a]
    fff0: 90000008     	adrp	x8, 0xf000 <syna_tcm_buf_copy_0+0x1c4>
		000000000000fff0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5103
    fff4: 91000108     	add	x8, x8, #0x0
		000000000000fff4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5103
    fff8: b9037c1f     	str	wzr, [x0, #0x37c]
    fffc: 9a891102     	csel	x2, x8, x9, ne
   10000: 90000000     	adrp	x0, 0x10000 <syna_tcm_enable_predict_reading+0x4c>
		0000000000010000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x206b
   10004: 91000000     	add	x0, x0, #0x0
		0000000000010004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x206b
   10008: 90000001     	adrp	x1, 0x10000 <syna_tcm_enable_predict_reading+0x4c>
		0000000000010008:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4467
   1000c: 91000021     	add	x1, x1, #0x0
		000000000001000c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4467
   10010: 94000000     	bl	0x10010 <syna_tcm_enable_predict_reading+0x5c>
		0000000000010010:  R_AARCH64_CALL26	_printk
   10014: 2a1f03e0     	mov	w0, wzr
   10018: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1001c: d50323bf     	autiasp
   10020: d65f03c0     	ret
