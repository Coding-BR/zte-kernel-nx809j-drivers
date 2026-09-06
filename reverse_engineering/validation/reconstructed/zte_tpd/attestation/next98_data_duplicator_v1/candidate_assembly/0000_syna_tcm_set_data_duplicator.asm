
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000162a4 <syna_tcm_set_data_duplicator>:
   162a4: b40000e0     	cbz	x0, 0x162c0 <syna_tcm_set_data_duplicator+0x1c>
   162a8: aa0003e8     	mov	x8, x0
   162ac: 2a1f03e0     	mov	w0, wzr
   162b0: 8b211108     	add	x8, x8, w1, uxtb #4
   162b4: f909f102     	str	x2, [x8, #0x13e0]
   162b8: f909ed03     	str	x3, [x8, #0x13d8]
   162bc: d65f03c0     	ret
   162c0: d503233f     	paciasp
   162c4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   162c8: 910003fd     	mov	x29, sp
   162cc: 90000000     	adrp	x0, 0x16000 <syna_tcm_reset+0x120>
		00000000000162cc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xedb
   162d0: 91000000     	add	x0, x0, #0x0
		00000000000162d0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xedb
   162d4: 90000001     	adrp	x1, 0x16000 <syna_tcm_reset+0x120>
		00000000000162d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x633
   162d8: 91000021     	add	x1, x1, #0x0
		00000000000162d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x633
   162dc: 94000000     	bl	0x162dc <syna_tcm_set_data_duplicator+0x38>
		00000000000162dc:  R_AARCH64_CALL26	_printk
   162e0: 12801e00     	mov	w0, #-0xf1              // =-241
   162e4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   162e8: d50323bf     	autiasp
   162ec: d65f03c0     	ret
