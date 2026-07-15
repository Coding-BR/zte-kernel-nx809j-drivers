
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016a3c <syna_tcm_testing_0A00_check_lower_bound>:
   16a3c: d503233f     	paciasp
   16a40: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   16a44: a9014ff4     	stp	x20, x19, [sp, #0x10]
   16a48: 910003fd     	mov	x29, sp
   16a4c: 79c00013     	ldrsh	w19, [x0]
   16a50: 79c00034     	ldrsh	w20, [x1]
   16a54: 6b14027f     	cmp	w19, w20
   16a58: 540000eb     	b.lt	0x16a74 <syna_tcm_testing_0A00_check_lower_bound+0x38>
   16a5c: 6b14027f     	cmp	w19, w20
   16a60: 1a9fb7e0     	cset	w0, ge
   16a64: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   16a68: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   16a6c: d50323bf     	autiasp
   16a70: d65f03c0     	ret
   16a74: 2a0203e8     	mov	w8, w2
   16a78: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016a78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2da9
   16a7c: 91000000     	add	x0, x0, #0x0
		0000000000016a7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2da9
   16a80: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016a80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8354
   16a84: 91000021     	add	x1, x1, #0x0
		0000000000016a84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8354
   16a88: 2a0303e2     	mov	w2, w3
   16a8c: 2a0803e3     	mov	w3, w8
   16a90: 2a1303e4     	mov	w4, w19
   16a94: 2a1403e5     	mov	w5, w20
   16a98: 94000000     	bl	0x16a98 <syna_tcm_testing_0A00_check_lower_bound+0x5c>
		0000000000016a98:  R_AARCH64_CALL26	_printk
   16a9c: 17fffff0     	b	0x16a5c <syna_tcm_testing_0A00_check_lower_bound+0x20>
