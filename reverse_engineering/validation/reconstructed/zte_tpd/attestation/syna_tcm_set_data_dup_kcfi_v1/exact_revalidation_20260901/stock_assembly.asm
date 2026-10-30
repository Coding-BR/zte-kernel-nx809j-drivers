
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d84c <syna_tcm_set_data_duplicator>:
   1d84c: b40000e0     	cbz	x0, 0x1d868 <syna_tcm_set_data_duplicator+0x1c>
   1d850: aa0003e8     	mov	x8, x0
   1d854: 2a1f03e0     	mov	w0, wzr
   1d858: 8b211108     	add	x8, x8, w1, uxtb #4
   1d85c: f909f102     	str	x2, [x8, #0x13e0]
   1d860: f909ed03     	str	x3, [x8, #0x13d8]
   1d864: d65f03c0     	ret
   1d868: d503233f     	paciasp
   1d86c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1d870: 910003fd     	mov	x29, sp
   1d874: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d874:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d878: 91000000     	add	x0, x0, #0x0
		000000000001d878:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d87c: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d87c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xfab
   1d880: 91000021     	add	x1, x1, #0x0
		000000000001d880:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xfab
   1d884: 94000000     	bl	0x1d884 <syna_tcm_set_data_duplicator+0x38>
		000000000001d884:  R_AARCH64_CALL26	_printk
   1d888: 12801e00     	mov	w0, #-0xf1              // =-241
   1d88c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1d890: d50323bf     	autiasp
   1d894: d65f03c0     	ret
