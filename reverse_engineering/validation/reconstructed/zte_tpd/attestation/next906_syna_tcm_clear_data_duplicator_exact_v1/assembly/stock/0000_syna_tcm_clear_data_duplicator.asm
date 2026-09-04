
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001d89c <syna_tcm_clear_data_duplicator>:
   1d89c: d503233f     	paciasp
   1d8a0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1d8a4: 910003fd     	mov	x29, sp
   1d8a8: b4000140     	cbz	x0, 0x1d8d0 <syna_tcm_clear_data_duplicator+0x34>
   1d8ac: 52827b08     	mov	w8, #0x13d8             // =5080
   1d8b0: 2a1f03e1     	mov	w1, wzr
   1d8b4: 52820002     	mov	w2, #0x1000             // =4096
   1d8b8: 8b080000     	add	x0, x0, x8
   1d8bc: 94000000     	bl	0x1d8bc <syna_tcm_clear_data_duplicator+0x20>
		000000000001d8bc:  R_AARCH64_CALL26	memset
   1d8c0: 2a1f03e0     	mov	w0, wzr
   1d8c4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1d8c8: d50323bf     	autiasp
   1d8cc: d65f03c0     	ret
   1d8d0: 90000000     	adrp	x0, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d8d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2055
   1d8d4: 91000000     	add	x0, x0, #0x0
		000000000001d8d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2055
   1d8d8: 90000001     	adrp	x1, 0x1d000 <syna_tcm_rezero+0x9c>
		000000000001d8d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ede
   1d8dc: 91000021     	add	x1, x1, #0x0
		000000000001d8dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ede
   1d8e0: 94000000     	bl	0x1d8e0 <syna_tcm_clear_data_duplicator+0x44>
		000000000001d8e0:  R_AARCH64_CALL26	_printk
   1d8e4: 12801e00     	mov	w0, #-0xf1              // =-241
   1d8e8: 17fffff7     	b	0x1d8c4 <syna_tcm_clear_data_duplicator+0x28>
