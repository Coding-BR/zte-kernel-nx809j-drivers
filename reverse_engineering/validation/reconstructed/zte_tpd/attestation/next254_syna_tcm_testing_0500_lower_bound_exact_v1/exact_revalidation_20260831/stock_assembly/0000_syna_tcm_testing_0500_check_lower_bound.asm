
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000018024 <syna_tcm_testing_0500_check_lower_bound>:
   18024: d503233f     	paciasp
   18028: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1802c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   18030: 910003fd     	mov	x29, sp
   18034: 79400013     	ldrh	w19, [x0]
   18038: 79400034     	ldrh	w20, [x1]
   1803c: 6b14027f     	cmp	w19, w20
   18040: 540000e3     	b.lo	0x1805c <syna_tcm_testing_0500_check_lower_bound+0x38>
   18044: 6b14027f     	cmp	w19, w20
   18048: 1a9f37e0     	cset	w0, hs
   1804c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   18050: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   18054: d50323bf     	autiasp
   18058: d65f03c0     	ret
   1805c: 2a0203e8     	mov	w8, w2
   18060: 90000000     	adrp	x0, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2da9
   18064: 91000000     	add	x0, x0, #0x0
		0000000000018064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2da9
   18068: 90000001     	adrp	x1, 0x18000 <syna_tcm_testing_0500_check_upper_bound+0x44>
		0000000000018068:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b25
   1806c: 91000021     	add	x1, x1, #0x0
		000000000001806c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b25
   18070: 2a0303e2     	mov	w2, w3
   18074: 2a0803e3     	mov	w3, w8
   18078: 2a1303e4     	mov	w4, w19
   1807c: 2a1403e5     	mov	w5, w20
   18080: 94000000     	bl	0x18080 <syna_tcm_testing_0500_check_lower_bound+0x5c>
		0000000000018080:  R_AARCH64_CALL26	_printk
   18084: 17fffff0     	b	0x18044 <syna_tcm_testing_0500_check_lower_bound+0x20>
