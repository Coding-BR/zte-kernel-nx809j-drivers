
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000169d4 <syna_tcm_testing_0A00_check_upper_bound>:
   169d4: d503233f     	paciasp
   169d8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   169dc: a9014ff4     	stp	x20, x19, [sp, #0x10]
   169e0: 910003fd     	mov	x29, sp
   169e4: 79c00013     	ldrsh	w19, [x0]
   169e8: 79c00034     	ldrsh	w20, [x1]
   169ec: 6b14027f     	cmp	w19, w20
   169f0: 540000ec     	b.gt	0x16a0c <syna_tcm_testing_0A00_check_upper_bound+0x38>
   169f4: 6b14027f     	cmp	w19, w20
   169f8: 1a9fc7e0     	cset	w0, le
   169fc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   16a00: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   16a04: d50323bf     	autiasp
   16a08: d65f03c0     	ret
   16a0c: 2a0203e8     	mov	w8, w2
   16a10: 90000000     	adrp	x0, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016a10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xb532
   16a14: 91000000     	add	x0, x0, #0x0
		0000000000016a14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xb532
   16a18: 90000001     	adrp	x1, 0x16000 <syna_testing_pt05_show+0x21c>
		0000000000016a18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4795
   16a1c: 91000021     	add	x1, x1, #0x0
		0000000000016a1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4795
   16a20: 2a0303e2     	mov	w2, w3
   16a24: 2a0803e3     	mov	w3, w8
   16a28: 2a1303e4     	mov	w4, w19
   16a2c: 2a1403e5     	mov	w5, w20
   16a30: 94000000     	bl	0x16a30 <syna_tcm_testing_0A00_check_upper_bound+0x5c>
		0000000000016a30:  R_AARCH64_CALL26	_printk
   16a34: 17fffff0     	b	0x169f4 <syna_tcm_testing_0A00_check_upper_bound+0x20>
