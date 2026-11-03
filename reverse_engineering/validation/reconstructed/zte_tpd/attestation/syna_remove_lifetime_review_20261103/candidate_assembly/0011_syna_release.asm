
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000028524 <syna_release>:
   28524: d503233f     	paciasp
   28528: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   2852c: 910003fd     	mov	x29, sp
   28530: 90000000     	adrp	x0, 0x28000 <get_tp_noise_store+0x4c>
		0000000000028530:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x93ae
   28534: 91000000     	add	x0, x0, #0x0
		0000000000028534:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x93ae
   28538: 90000001     	adrp	x1, 0x28000 <get_tp_noise_store+0x4c>
		0000000000028538:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7da
   2853c: 91000021     	add	x1, x1, #0x0
		000000000002853c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7da
   28540: 94000000     	bl	0x28540 <syna_release+0x1c>
		0000000000028540:  R_AARCH64_CALL26	_printk
   28544: 2a1f03e0     	mov	w0, wzr
   28548: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   2854c: d50323bf     	autiasp
   28550: d65f03c0     	ret
