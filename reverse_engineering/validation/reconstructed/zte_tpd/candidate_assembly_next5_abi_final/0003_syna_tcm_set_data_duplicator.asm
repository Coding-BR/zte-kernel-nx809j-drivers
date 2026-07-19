
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000016280 <syna_tcm_set_data_duplicator>:
   16280: b40000e0     	cbz	x0, 0x1629c <syna_tcm_set_data_duplicator+0x1c>
   16284: aa0003e8     	mov	x8, x0
   16288: 2a1f03e0     	mov	w0, wzr
   1628c: 8b211108     	add	x8, x8, w1, uxtb #4
   16290: f909f102     	str	x2, [x8, #0x13e0]
   16294: f909ed03     	str	x3, [x8, #0x13d8]
   16298: d65f03c0     	ret
   1629c: d503233f     	paciasp
   162a0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   162a4: 910003fd     	mov	x29, sp
   162a8: 90000000     	adrp	x0, 0x16000 <syna_tcm_send_command+0x44>
		00000000000162a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda8
   162ac: 91000000     	add	x0, x0, #0x0
		00000000000162ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda8
   162b0: 90000001     	adrp	x1, 0x16000 <syna_tcm_send_command+0x44>
		00000000000162b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x653
   162b4: 91000021     	add	x1, x1, #0x0
		00000000000162b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x653
   162b8: 94000000     	bl	0x162b8 <syna_tcm_set_data_duplicator+0x38>
		00000000000162b8:  R_AARCH64_CALL26	_printk
   162bc: 12801e00     	mov	w0, #-0xf1              // =-241
   162c0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   162c4: d50323bf     	autiasp
   162c8: d65f03c0     	ret
